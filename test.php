<?php
ini_set('display_errors', 1);
$filename="5";
function check_file_exists($filename)
{
  $check_file_xml = simplexml_load_file("cws_files.xml");
  foreach ($check_file_xml as $cws_file)
  {
    // echo $cws_file->filename;
    if((string)$cws_file->filename == $filename)
      return True;
  }
  return False;
}
if(check_file_exists($filename))
	echo "Exists";
else
	echo "Does not";
?>