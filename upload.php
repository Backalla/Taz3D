
<?php
require_once("header.php");
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
      echo "<script>alert('File uploaded successfully')</script>";
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
<script>
$(document).ready(function()
{
  $("#cws_file").change(function()
  {
    var filename = $("#cws_file")[0].files[0].name;
    var extension = filename.substr((filename.lastIndexOf('.') +1)).toLowerCase();
    if(extension=="cws")
    {
      $("#selected_filename").html(filename);
      $("#submit_cws_upload").attr("class","btn btn-default");
    }
    else
    {
      $("#selected_filename").html("Selected file is not a CWS file. Please try again.");
      $("#submit_cws_upload").attr("class","btn btn-default disabled");
    }
  });
});
</script>
<div class="">
    <div class="page-title">
        <div class="title_left">
            <h3>File Manager</h3>
        </div>

    </div>
    <div class="clearfix"></div>

    <div class="row">

        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel" style="height:600px;">
                <div class="x_title">
                    <h2>Upload new CWS file</h2>
                    <div class="clearfix"></div>
                </div>
                <form action="upload.php" method="post" enctype="multipart/form-data">
                    <span class="btn btn-success btn-file">
                        Browse <input type="file" name="cws_file" id="cws_file">
                    </span>
                    <button type="submit" class="btn btn-default disabled" id="submit_cws_upload">
                      <i class="fa fa-upload"></i> Upload
                    </button>
                    <p id="selected_filename"></p>
                </form>
            </div>
        </div>
    </div>
</div>




<?php
require_once("footer.php");
?>