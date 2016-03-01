<?php
header('Content-Type: application/json');
$printer_xml = simplexml_load_file("printer.xml");
$json = json_encode($printer_xml);

echo $json;
?>