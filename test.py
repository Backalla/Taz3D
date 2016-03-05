import xml.etree.ElementTree as ET
xml=ET.parse('cws/3/manifest.xml')
root=xml.getroot()
slices = root.find('Slices').findall('Slice')

print slices[0].find('name').text

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
# import os, sys
# import Tkinter
# import Image, ImageTk
# import time

# def display_slice(image_path, layer_time):
#   root = Tkinter.Tk()
#   root.geometry('+%d+%d' % (100,100))
#   slice_image = Image.open(image_path)
#   w, h = root.winfo_screenwidth(), root.winfo_screenheight()
#   root.overrideredirect(1) 
#   root.geometry("%dx%d+0+0" % (slice_image.size[0], slice_image.size[1]))
#   tk_slice_image = ImageTk.PhotoImage(slice_image)
#   label_image = Tkinter.Label(root, image=tk_slice_image)
#   label_image.place(x=0,y=0,width=slice_image.size[0],height=slice_image.size[1])
#   root.after(layer_time, lambda: root.destroy())
#   root.mainloop()

# def get_time():
#   time_now = time.asctime( time.localtime(time.time()))
#   return time_now


# print get_time() 
# display_slice("cws/platetry 1/platetry10007.png",3000)
# print get_time()
# display_slice('blank.png',5000)
# display_slice("cws/platetry 1/platetry10176.png",3000)
# print get_time()
