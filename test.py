import xml.etree.ElementTree as ET
tree = ET.parse('printer.xml')
root = tree.getroot()
print root.find("state").text==1
