<?php
$manifest_xml = simplexml_load_file("cws/1/manifest.xml");
$slices_xml_element = $manifest_xml->Slices->children();
$slices = count($slices_xml_element);
$original_name = pathinfo($manifest_xml->GCode->name,PATHINFO_FILENAME);
echo $original_name;
echo $slices;
echo $manifest_xml->GCode->name;
?>