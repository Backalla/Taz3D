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


def read_ser():
  while True:
    time.sleep(0.1)
    r = s.read(s.inWaiting())
    if len(r.strip()) > 0:
      return r

def send_gcode(gcode):
  gcode = gcode.strip()
  s.write(gcode+'\nM400\n')
  response=read_ser()

  # Send M400 to wait for current move to finish
  # s.write('M400\n')
  # s.readline()
  print len(response.strip()),
  return response
# Stream g-code to grbl
# for line in f:
while True:
  line=raw_input()
  l = line.strip() # Strip all EOL characters for streaming
  print 'Sending: ' + l,
 # Send g-code block to grbl
  grbl_out = send_gcode(l) # Wait for grbl response with carriage return
  print ' : ' + grbl_out.strip()
 
# Wait here until grbl is finished to close serial port and file.
raw_input("  Press <Enter> to exit and disable grbl.")
 
# Close file and serial port
f.close()
s.close()