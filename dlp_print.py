import serial
import time
import sys
import xml.etree.ElementTree as ET
import Tkinter
import Image, ImageTk
time_now = time.asctime( time.localtime(time.time()))
# initialise all the files

# Also set the state to 1 at startup to deal with accidental shutdowns

printer_xml = ET.parse('printer.xml')
printer_root = printer_xml.getroot()
printer_state = printer_root.find('state')
printer_state.text='1'
printer_xml.write("printer.xml")
log_file=open('dlp.log','w')

# Open serial port to machine and initialise it
dlp_serial = serial.Serial('/dev/ttyUSB0',115200)
dlp_serial.write("\r\n\r\n")
time.sleep(2)
dlp_serial.flushInput()


def display_slice(image_path, layer_time):
  root = Tkinter.Tk()
  root.geometry('+%d+%d' % (100,100))
  slice_image = Image.open(image_path)
  w, h = root.winfo_screenwidth(), root.winfo_screenheight()
  root.overrideredirect(1) 
  root.geometry("%dx%d+0+0" % (slice_image.size[0], slice_image.size[1]))
  tk_slice_image = ImageTk.PhotoImage(slice_image)
  label_image = Tkinter.Label(root, image=tk_slice_image)
  label_image.place(x=0,y=0,width=slice_image.size[0],height=slice_image.size[1])
  root.after(layer_time, lambda: root.destroy())
  root.mainloop()

def set_printer_info(field,value):
  printer_xml = ET.parse('printer.xml')
  printer_root = printer_xml.getroot()
  printer_field = printer_root.find(field)
  printer_field.text=value
  printer_xml.write("printer.xml")




def get_printer_info(field):
  printer_xml = ET.parse('printer.xml')
  printer_root = printer_xml.getroot()
  printer_field = printer_root.find(field).text
  return printer_field

def send_gcode(gcode):
  gcode = gcode.strip()
  dlp_serial.write(gcode+'\n')
  response=dlp_serial.readline()


  # Send M400 to wait for current move to finish
  dlp_serial.write('M400\n')
  dlp_serial.readline()
  return response


def log(s):
  time_log = time_now+" : "+s+"\n"
  log_file.write(time_log)


def main():

  while True:
    time.sleep(0.5)
    # scan printer.xml for state of printer
    printer_state = get_printer_info('state')
    if printer_state=='2':
      filename = get_printer_info('filename')
      cws_id = get_printer_info('cws_id')
      total_slices = get_printer_info('total_slices')
      print filename,cws_id,total_slices,printer_state
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
          send_gcode(gcode.strip())

      for cur_slice in gcode_root.findall('slice'):
        cur_slice_no = int(cur_slice.get('no'))
        layer_time = int(cur_slice.find('layer_time').text)
        lift_gcode = cur_slice.find('lift_gcode').text
        blanktime = int(cur_slice.find('blanktime').text)
        cur_slice_name = all_slice_names[cur_slice_no].find('name').text
        print cur_slice_no, cur_slice_name

        # time.sleep(1)
        # Display the image here
        display_slice('cws/'+cws_id+'/'+cur_slice_name,layer_time)
        # display_slice('blank.png',blanktime)
        lift_gcode=lift_gcode.split('\n')
        for gcode in lift_gcode:
          if len(gcode)>0:
            print gcode
            send_gcode(gcode.strip())



      set_printer_info('state','1')
      





if __name__ == '__main__':
  main()

log_file.close()