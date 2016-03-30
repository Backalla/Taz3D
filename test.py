import serial
import time
 
# Open grbl serial port
s = serial.Serial('/dev/ttyUSB0',115200)
 
# Open g-code file
 
# Wake up grbl
s.write("\r\n\r\n")
time.sleep(2)   # Wait for grbl to initialize
s.flushInput()  # Flush startup text in serial input
 
# Stream g-code to grbl
while True:
	l = raw_input().strip() # Strip all EOL characters for streaming
	print 'Sending: ' + l,
	s.write(l + '\n') # Send g-code block to grbl
	grbl_out = s.readline() # Wait for grbl response with carriage return
	print ' : ' + grbl_out.strip()
 
# Wait here until grbl is finished to close serial port and file.
raw_input("  Press <Enter> to exit and disable grbl.")
 
# Close file and serial port
f.close()
s.close()