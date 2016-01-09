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
    }
    else
      echo "<script>alert('File not uploaded')</script>";
    $filename = basename($file_upload_path,".".$file_extension);
    // echo "sudo chown pi:pi ".$file_upload_path;
    system("mkdir cws/".$filename);
    // system("mv $file_upload_path cws/".$filename);
    system("mv blank.png cws/".$filename);
    exec("sudo 7z e cws/".$filename.".cws -ocws/".$filename."/");
  }
  else
    echo "<script>alert('Invalid file')</script>";
}
?>