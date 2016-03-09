<?php
header('Content-Type: application/json');
$printer_xml = simplexml_load_file("printer.xml");
if($printer_xml->state == '2')
{
	$elapsed_time = intval($printer_xml->elapsed_time);
	$printer_xml->elapsed_time = $elapsed_time + 1;
	$printer_xml->asXML('printer.xml');
}
$printer_xml = simplexml_load_file("printer.xml");

$json = json_encode($printer_xml);

echo $json;
?>