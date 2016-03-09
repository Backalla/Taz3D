<?php
$uploaded=0;
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
if(isset($_FILES) && !empty($_FILES) && $_FILES['cws_file']['size']>0)
{
  // echo "<script>alert('File uploaded')</script>";
  $file_number = 1;
  
  $upload_dir = "cws/";
  $file_extension =  strtolower(pathinfo($_FILES['cws_file']['name'],PATHINFO_EXTENSION));
  if($file_extension == "cws")
  {
    // echo "<script>alert('cws')</script>";
    $filename = basename("cws/".$_FILES['cws_file']['name'],".".$file_extension);
    $printer_xml = simplexml_load_file("printer.xml");
    $cws_id = ((int)$printer_xml->print_no)+1;
    $printer_xml->print_no = $cws_id;
    $printer_xml->asXML("printer.xml");
    while(check_file_exists(basename("cws/".$filename,".".$file_extension)))
    {
      $filename = basename($_FILES['cws_file']['name'],".".$file_extension).$file_number.".".$file_extension;
      $file_number = $file_number+1;
    }
    if(move_uploaded_file($_FILES['cws_file']['tmp_name'], $upload_dir.$cws_id.".cws"))
    {
        echo "<script>alert('File uploaded successfully');</script>";
        $uploaded =1;
        // echo "sudo chown pi:pi ".$file_upload_path;
        exec("mkdir cws/".$cws_id);
        // system("mv $file_upload_path cws/".$filename);
        exec("mv blank.png cws/".$cws_id);
        exec("sudo 7z e cws/".$cws_id.".cws -ocws/".$cws_id."/");
        $manifest_xml = simplexml_load_file("cws/".$cws_id."/manifest.xml");
        $slices_xml_element = $manifest_xml->Slices->children();
        $slices = count($slices_xml_element);

        $slicing_config_xml = simplexml_load_file("cws/".$cws_id."/Taz3D.slicing");
        $blank_time = $slicing_config_xml->BlankTime;
        $selected_resin = $slicing_config_xml->SelectedInk;
        foreach ($slicing_config_xml->{'InkConfig'} as $resin)
        {
          if((string)$resin->Name == $selected_resin)
          {
            $slice_height = (int)((float)$resin->SliceHeight * 1000);
            $layer_exposure = $resin->LayerTime;
            $bottom_exposure = $resin->FirstLayerTime;
            $number_bottom_layers = $resin->NumberofBottomLayers;
          }
        }
        $print_time = 10+(($bottom_exposure/1000)*$number_bottom_layers)+(($blank_time/1000)*$slices)+(($layer_exposure/1000)*($slices-$number_bottom_layers));
        $cws_files_xml = simplexml_load_file('cws_files.xml');
        $print = $cws_files_xml->addChild('print');
        $print->addChild('cws_id',$cws_id);        
        $print->addChild('filename', basename("cws/".$filename,".".$file_extension));
        $print->addChild('slices', $slices);
        $print->addChild('print_time', $print_time);
        $print->addChild('last_printed', time());
        $print->addChild('uploaded', time());
        $print->addChild('blank_time',$blank_time);
        $print->addChild('selected_resin',$selected_resin);
        $print->addChild('slice_height',$slice_height);
        $print->addChild('layer_exposure',$layer_exposure);
        $print->addChild('bottom_exposure',$bottom_exposure);
        $print->addChild('number_bottom_layers',$number_bottom_layers);
        $cws_files_xml->asXML("cws_files.xml");
    }
    else
      echo "<script>alert('File not uploaded')</script>";

  }
  else
    echo "<script>alert('Invalid file')</script>";
}


?>