<?php
ini_set('display_errors', 1);
$xml = simplexml_load_file("printer.xml");
print_r($xml);
$filename = $xml->filename;
echo $filename;

$xml->state="1";
echo "<br>done<br>";

echo $xml->asXML('printer.xml');

?>