<script>

var n;
$('table').tablesorter();

current_path = ["media","usb0"];

function get_subdir_files(dirname)
{
  current_path.push(dirname);
  get_files(current_path);
}

function print_cws_file(cws_filename)
{
  var file_path = "/"+current_path.join("/")+"/"+cws_filename;
  // alert(file_path);
  $("#confirm_print_modal_dialogue").html("Are you sure you want to upload "+cws_filename+"?");
  $("#confirm_print_modal_yes").click(function(){
    $(".modal").modal("hide");
    $("#processing").show();
    $.post("allthefunctions.php",
    {
      'funct': "usb_upload",
      'param': file_path
    },
    function(data, status){
      if(data == "1")
        alert("File uploaded successfully");
      load_page("recent.php");
    });
  });

}
function get_files(path)
{
  $("#table_body").html("");
  $.ajax({ 
          type: 'POST', 
          url: 'read_usb.php', 
          data: {'path': path},
          dataType: 'json',
          success: function (ret_obj)
          {
            current_path = ret_obj["path"];
            files = ret_obj["contents"];
            $.each(files, function(name,type)
            {
              table_row="<tr>";
              if(type == "directory")
              {
                var glyphicon = ""
                if(name == "..")
                  glyphicon = "fa-reply"
                else
                  glyphicon = "fa-folder-open" 
                table_row += "<td onclick=\"get_subdir_files('"+name+"')\"><i class='fa "+glyphicon+" ' aria-hidden='true'></i> &nbsp; &nbsp;<strong><a href='#' onclick='return false;'>"+name+"</a></strong></td><td></td>";
              }
              if(type == "cws_file")
              {
                print_button = '<button type="button" data-toggle="modal" data-target=".confirm_print_modal" class="btn btn-success btn-sm" onclick="print_cws_file(\''+name+'\')"><i class="fa fa-upload"></i> Upload </button>';
                table_row += "<td><i class='fa fa-arrow-right' aria-hidden='true'></i> &nbsp; &nbsp;<strong><i>"+name+"</i></strong></td>";
                table_row += "<td>" + print_button  + "</td>";

              }
              table_row += "</tr>";
              $("#table_body").append(table_row);
            });
          }
      });
}

$(document).ready(function()
{
  $("#hidden_stuff").hide();
  $("#processing").hide();
  get_files(current_path);
});
</script>


<?php

$usb_port = shell_exec("ls /dev/sd*1");
if($usb_port == "")
  echo "<h3>No USB device found.</h3>";
else
{

?>
<div id="processing">
  <strong>Processing file..</strong>
  <img src="img/hourglass.svg" width="30px" height="30px">
</div>
<table id="example" class="tablesorter table jambo_table">

    <thead>
        <tr class="headings">
            <th class="col-md-10"><a href="#" onclick="return false;" style="color: #ffffff">Name &nbsp; &nbsp;<i class="fa fa-sort" aria-hidden="true"></i></a></th>
            <th class=" no-link last col-md-2"><span class="nobr">Action</span>
            </th>
        </tr>
    </thead>

    <tbody id="table_body">

    </tbody>

</table>

<div id="hidden_stuff">
  <div id="print_button">
    <button type="button" data-toggle="modal" data-target=".confirm_print_modal" class="btn btn-success btn-sm" ><i class="fa fa-bolt"></i> Print </button>
  </div>
  <div id="processing">
    <strong>Processing..</strong>
    <img src="img/hourglass.svg" width="30px" height="30px">
  </div>
</div>

<div class="modal fade confirm_print_modal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">

            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
                </button>
                <h4 class="modal-title" id="myModalLabel2">Confirm print</h4>
            </div>
            <div class="modal-body">
                <h4 id="confirm_print_modal_dialogue"></h4>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" >No</button>
                <button type="button" class="btn btn-primary" id="confirm_print_modal_yes">Yes</button>
            </div>

        </div>
    </div>
</div>
<?php
}
?>