import serial
import time
 

s = serial.Serial('/dev/ttyUSB0',115200)
f = open('cube.gcode','r');
 

s.write("\r\n\r\n")
time.sleep(2)
s.flushInput()
for line in f:
    l = line.strip() # Strip all EOL characters for streaming
    if len(l) == 0:
        continue
    print 'Sending: ' + l,
    s.write(l + '\n') # Send g-code block to grbl
    grbl_out = s.readline() # Wait for grbl response with carriage return
    print ' : ' + grbl_out.strip()
 
# Wait here until grbl is finished to close serial port and file.
raw_input("  Press <Enter> to exit and disable grbl.")
 
# Close file and serial port
f.close()
s.close()
