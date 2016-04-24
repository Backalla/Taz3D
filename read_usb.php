<?php
header('Content-Type: application/json');
$request_path = $_POST["path"];
if(strpos(end($request_path),"/") !== false || end($request_path) == "..")
{
  array_pop($request_path);
  if(join("/",$request_path) != "media/usb0")
    array_pop($request_path);
}
$path = "/".join("/",$request_path);
$all_contents = scandir($path);
$filtered_contents = array();
foreach ($all_contents as $file)
{
  if($file == ".")
    continue;
  if($path == "/media/usb0" && $file == "..")
    continue;
  if(is_dir($path."/".$file))
  {
    $filtered_contents[$file] = "directory";
  }
  elseif (pathinfo($path."/".$file, PATHINFO_EXTENSION) == "cws")
  {
    $filtered_contents[$file] = "cws_file";
  }
}
$return = array("path"=>$request_path,"contents"=>$filtered_contents);
$json = json_encode($return);

echo $json;
?>