# import xml.etree.ElementTree as ET
# tree = ET.parse('printer.xml')
# root = tree.getroot()
# print root.find("state").text==1


 
import serial
import time
 
# Open grbl serial port
s = serial.Serial('/dev/ttyUSB0',115200)
 
# Open g-code file
# f = open('somefile.gcode','r');
 
# Wake up grbl
s.write("\r\n\r\n")
time.sleep(2)   # Wait for grbl to initialize
s.flushInput()  # Flush startup text in serial input

while True:
    l=raw_input().strip()
    s.write(l + '\n') # Send g-code block to grbl
    grbl_out = s.readline() # Wait for grbl response with carriage return
    print ' : ' + grbl_out.strip()


# Stream g-code to grbl
# for line in f:
#     l = line.strip() # Strip all EOL characters for streaming
#     print 'Sending: ' + l,
#     s.write(l + '\n') # Send g-code block to grbl
#     grbl_out = s.readline() # Wait for grbl response with carriage return
#     print ' : ' + grbl_out.strip()
 
# Wait here until grbl is finished to close serial port and file.
raw_input("  Press <Enter> to exit and disable grbl.")
 
# Close file and serial port
f.close()
s.close()





# import serial
# import time
# import sys
# import xml.etree.ElementTree as ET
# time_now = time.asctime( time.localtime(time.time()))
# log_file=open('dlp.log','w')

# def log(s):
#     time_log = time_now+" : "+s+"\n"
#     log_file.write(time_log)


# def main():
#     while True:
#         time.sleep(0.5)
#         printer_xml = ET.parse('printer.xml') #parse printer.xml
#         printer_root = printer_xml.getroot()
#         if printer_root.find("state").text == '2':
#             cws_id = printer_root.find("cws_id").text
#             filename = printer_root.find("filename").text            
#             log("Printing "+filename)
#             filepath = "cws/"+cws_id+"/"+filename+".gcode"
#             s = serial.Serial('/dev/ttyUSB0',115200)
#             f = open(filepath,'r');            
#             s.write("\r\n\r\n")
#             time.sleep(2)
#             s.flushInput()
#             for line in f:
#                 l=line[:line.find(";")] # Remove comments from gcode
#                 l = l.strip() # Strip all EOL characters for streaming
#                 # print l
#                 if len(l) == 0:
#                     continue
#                 s.write(l + '\n') # Send g-code block to grbl
#                 grbl_out = s.readline() # Wait for grbl response with carriage return
#             f.close()
#             s.close()

# if __name__ == '__main__':
#     main()
#     log_file.close()

# log_file.close()