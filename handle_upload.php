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
        $fi = new FilesystemIterator("cws/".$filename."/", FilesystemIterator::SKIP_DOTS);
        $slices = iterator_count($fi)-5;
        $xml = simplexml_load_file('cws_files.xml');
        $print = $xml->addChild('print');
        $print->addChild('filename', basename($_FILES['cws_file']['name'],".".$file_extension));
        $print->addChild('slices', $slices);
        $print->addChild('print_time', $slices*4);
        $print->addChild('last_printed', time());
        $print->addChild('uploaded', time());


        file_put_contents('cws_files.xml', $xml->asXML());
    }
    else
      echo "<script>alert('File not uploaded')</script>";

  }
  else
    echo "<script>alert('Invalid file')</script>";
}


?>