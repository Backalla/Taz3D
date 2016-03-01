<?php
$uploaded=0;
if(isset($_FILES) && !empty($_FILES) && $_FILES['cws_file']['size']>0)
{
  // echo "<script>alert('File uploaded')</script>";
  $file_number = 1;
  
  $upload_dir = "cws/";
  $file_upload_path = $upload_dir.basename($_FILES['cws_file']['name']);
  $file_extension =  strtolower(pathinfo($file_upload_path,PATHINFO_EXTENSION));
  if($file_extension == "cws")
  {
    // echo "<script>alert('cws')</script>";
    while(file_exists($file_upload_path))
    {
      $file_upload_path = $upload_dir.basename($_FILES['cws_file']['name'],".".$file_extension).$file_number.".".$file_extension;
      $file_number = $file_number+1;
    }
    if(move_uploaded_file($_FILES['cws_file']['tmp_name'], $file_upload_path))
    {
        echo "<script>alert('File uploaded successfully');</script>";
        $uploaded =1;
        $filename = basename($file_upload_path,".".$file_extension);
        // echo "sudo chown pi:pi ".$file_upload_path;
        exec("mkdir cws/".$filename);
        // system("mv $file_upload_path cws/".$filename);
        exec("mv blank.png cws/".$filename);
        exec("sudo 7z e cws/".$filename.".cws -ocws/".$filename."/");
        $manifest_xml = simplexml_load_file("cws/".$filename."/manifest.xml");
        $slices_xml_element = $manifest_xml->Slices->children();
        $slices = count($slices_xml_element);

        $slicing_config_xml = simplexml_load_file("cws/".$filename."/Voyager.slicing");
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
        $xml = simplexml_load_file('cws_files.xml');
        $print = $xml->addChild('print');
        $print->addChild('filename', basename($_FILES['cws_file']['name'],".".$file_extension));
        $print->addChild('slices', $slices);
        $print->addChild('print_time', gmdate("H:i:s",$print_time));
        $print->addChild('last_printed', time());
        $print->addChild('uploaded', time());
        $print->addChild('blank_time',$blank_time);
        $print->addChild('selected_resin',$selected_resin);
        $print->addChild('slice_height',$slice_height);
        $print->addChild('layer_exposure',$layer_exposure);
        $print->addChild('bottom_exposure',$bottom_exposure);
        $print->addChild('number_bottom_layers',$number_bottom_layers);







        file_put_contents('cws_files.xml', $xml->asXML());
    }
    else
      echo "<script>alert('File not uploaded')</script>";

  }
  else
    echo "<script>alert('Invalid file')</script>";
}


?>