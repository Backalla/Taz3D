import serial
import time
import sys
import xml.etree.ElementTree as ET
import Tkinter
import Image, ImageTk
import re
from os import system
Z_HEIGHT = -165

def display_slice(image_path, layer_time):
  system("(sleep %d; kill $(pgrep fbi) ) &" %(layer_time/1000))
  system("fbi -noverbose '%s'" %(image_path))

def get_printer_info(field):
  printer_xml = ET.parse('printer.xml')
  printer_root = printer_xml.getroot()
  printer_field = printer_root.find(field).text
  return printer_field

def increment_current_z(slice_height):  #increment current_z by slice height at every layer
  set_printer_info('current_z',float(get_printer_info('current_z'))+(float(slice_height)/1000))


def increment_elapsed_time(seconds):
  set_printer_info('elapsed_time',float(get_printer_info('elapsed_time'))+float(seconds))


def log(s):
  log_file=open('dlp.log','a')
  time_now = time.asctime( time.localtime(time.time()))
  time_log = time_now+" : "+s+"\n"
  log_file.write(time_log)
  log_file.close()

def reset_printer():
  set_printer_info('state',1)
  set_printer_info('cws_id',0)
  set_printer_info('message','Ready to print.')
  set_printer_info('completed_slices',0)
  set_printer_info('elapsed_time',0)
  set_printer_info('print_started',0)
  set_printer_info('current_z',0)
  set_printer_info('total_time',0)
  set_printer_info('total_slices',0)
  set_printer_info('current_slice','')
  set_printer_info('filename','')
  set_printer_info('original_filename','')


def send_gcode(gcode):
  gcode = gcode.strip()
  dlp_serial.write(gcode+'\n')
  response=dlp_serial.readline()
  dlp_serial.write("M400\n")
  m400_response = dlp_serial.readline()
  return response


def set_printer_info(field,value):
  printer_xml = ET.parse('printer.xml')
  printer_root = printer_xml.getroot()
  printer_field = printer_root.find(field)
  printer_field.text=str(value)
  printer_xml.write("printer.xml",xml_declaration=True,encoding='utf-8',method="xml")

def shutter_close():
  send_gcode("G1 X-10 F500")

def shutter_open():
  send_gcode("G1 X10 F500")



# initialise all the files

# Also set the state to 1 at startup to deal with accidental shutdowns


# Open serial port to machine and initialise it
try:
  dlp_serial = serial.Serial('/dev/ttyACM0',115200)
  dlp_serial.write("\r\n\r\n")
  time.sleep(2)
  dlp_serial.flushInput()
except:
  set_printer_info('message','Printer USB not connected')
  log("Printer USB not connected")
  sys.exit()


def main():
  try:
    slice_height = get_printer_info("slice_height")
    print slice_height
    while True:
      time.sleep(0.5)
      # scan printer.xml for state of printer
      printer_state = get_printer_info('state')
      if printer_state=='2':
        set_printer_info('print_started',time.time())
        set_printer_info('print_started',int(time.time()))
        filename = get_printer_info('original_filename')
        cws_id = get_printer_info('cws_id')
        print filename,cws_id,printer_state
        gcode_file = open('cws/'+cws_id+'/'+filename+'.gcode','r')
        
        # make xml file by removing comments from gcode file
        gcode_xml = open('cws/'+cws_id+'/'+filename+'_gcode.xml','w')
        for line in gcode_file:
          l=line[:line.find(";")]
          # l=l.strip()
          if len(l) > 0:
            gcode_xml.write(l)
        gcode_xml.close()


        # Actual printing process
        manifest_xml = ET.parse('cws/'+cws_id+'/manifest.xml')
        manifest_root = manifest_xml.getroot()
        all_slice_names = manifest_root.find('Slices').findall('Slice')
        gcode_xml=ET.parse('cws/'+cws_id+'/'+filename+'_gcode.xml')
        gcode_root=gcode_xml.getroot()
        header=gcode_root.find('header').text
        header = header.split('\n')
        # send gcodes in header one by one
        for gcode in header:
          if len(gcode) > 0:
            print gcode
            send_gcode(gcode)
        increment_elapsed_time(10)
        set_printer_info('current_z',Z_HEIGHT)
        # Header ends here
        shutter_close()
        # Slices start
        all_slices = gcode_root.findall('slice')
        for cur_slice in all_slices:
          # Check if printer is in paused state
          printer_state = get_printer_info('state')
          

          cur_slice_no = int(cur_slice.get('no'))
          layer_time = int(cur_slice.find('layer_time').text)
          lift_gcode = cur_slice.find('lift_gcode').text
          blanktime = int(cur_slice.find('blanktime').text)
          cur_slice_name = all_slice_names[cur_slice_no].find('name').text
          print cur_slice_no, cur_slice_name,get_printer_info("current_z")
          set_printer_info('current_slice',cur_slice_name)
          set_printer_info('completed_slices',cur_slice_no+1)
          # Display the image here
          shutter_open()
          print time.time()
          display_slice('cws/'+cws_id+'/'+cur_slice_name,layer_time)
          print time.time()
          shutter_close()
          # Check if paused
          if printer_state == "3":
            z=get_printer_info('current_z')
            send_gcode("G28 Z0")
            while get_printer_info('state') == "3":
              # Wait here until resumed
              time.sleep(0.1)
              pass
            if get_printer_info('state') == "2":
              send_gcode("G1 Z"+str(z)+" F200")
            elif get_printer_info('state') == '1':
              reset_printer()
              break


          # Lift sequence start
          lift_gcode=lift_gcode.split('\n')
          for gcode in lift_gcode:
            if len(gcode)>0:
              print gcode
              send_gcode(gcode)
          increment_elapsed_time((float(layer_time)/1000)+(float(blanktime)/1000))
          increment_current_z(get_printer_info('slice_height')) 


        footer=gcode_root.find('footer').text
        footer = footer.split('\n')
        # send gcodes in Footer one by one
        for gcode in footer:
          if len(gcode) > 0:
            print gcode
            send_gcode(gcode)
        increment_elapsed_time(10)
        set_printer_info('current_z',0)
        # Footer ends          
          # Slices end
  except KeyboardInterrupt:
    log("Printing stopped..")
    print "Byee"
    reset_printer()




if __name__ == '__main__':
  reset_printer()
  main()
  k=raw_input()

