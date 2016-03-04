# import serial
# import time
# import xml.etree.ElementTree as ET

# gcode_xml=ET.parse('cws/3/Pendant 1_gcode.xml')
# root=gcode_xml.getroot()
# header=root.find('header').text
# print header.split('\n')
# dlp_serial = serial.Serial('/dev/ttyUSB0',115200)
# dlp_serial.write("\r\n\r\n")
# time.sleep(2)
# dlp_serial.flushInput()

# def wait_gcode(l):
#     dlp_serial.write(l+'\n')
#     dlp_serial.readline()
#     dlp_serial.write('M400\n')
#     dlp_serial.readline()
#     # while True:
#     #     if dlp_serial.readline() == 'ok':
#     #         break


# while True:
#     print "ready"
#     l=raw_input().strip()
#     wait_gcode(l)
import os, sys
import Tkinter
import Image, ImageTk
import time

def button_click_exit_mainloop (event):
    event.widget.quit() # this will cause mainloop to unblock.

root = Tkinter.Tk()
# root.bind("<Button>", button_click_exit_mainloop)
root.geometry('+%d+%d' % (100,100))
image1 = Image.open('cws/3/Pendant 10005.png')
root.geometry('%dx%d' % (image1.size[0],image1.size[1]))
tkpi = ImageTk.PhotoImage(image1)
label_image = Tkinter.Label(root, image=tkpi)
label_image.place(x=0,y=0,width=image1.size[0],height=image1.size[1])
# root.title(f)
# if old_label_image is not None:
#     old_label_image.destroy()
# old_label_image = label_image
root.mainloop(200)
