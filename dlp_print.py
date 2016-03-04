import serial
import time
import sys
import xml.etree.ElementTree as ET
time_now = time.asctime( time.localtime(time.time()))
# initialise all the files
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

def send_gcode(gcode):
  gcode = gcode.strip()
  dlp_serial.write(gcode+'\n')
  response=dlp_serial.readline()
  return response


def log(s):
  time_log = time_now+" : "+s+"\n"
  log_file.write(time_log)


def main():
  # while True:

if __name__ == '__main__':
  main()

log_file.close()