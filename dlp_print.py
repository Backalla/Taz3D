import serial
import time
import sys
import xml.etree.ElementTree as ET
time_now = time.asctime( time.localtime(time.time()))
log_file=open('dlp.log','w')

def log(s):
    time_log = time_now+" : "+s+"\n"
    log_file.write(time_log)


def main():
    while True:
        time.sleep(0.5)
        printer_xml = ET.parse('printer.xml') #parse printer.xml
        printer_root = printer_xml.getroot()
        if printer_root.find("state").text == '2':
            cws_id = printer_root.find("cws_id").text
            filename = printer_root.find("filename").text            
            log("Printing "+filename)
            filepath = "cws/"+cws_id+"/"+filename+".gcode"
            s = serial.Serial('/dev/ttyUSB0',115200)
            f = open(filepath,'r');            
            s.write("\r\n\r\n")
            time.sleep(2)
            s.flushInput()
            for line in f:
                l=line[:line.find(";")] # Remove comments from gcode
                l = l.strip() # Strip all EOL characters for streaming
                # print l
                if len(l) == 0:
                    continue
                s.write(l + '\n') # Send g-code block to grbl
                grbl_out = s.readline() # Wait for grbl response with carriage return
            f.close()
            s.close()

if __name__ == '__main__':
    main()
    log_file.close()

log_file.close()