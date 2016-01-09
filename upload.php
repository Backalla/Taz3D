<script>
var main = function()
{
   $("#upload").on('submit',function(e)
                   {
    e.preventDefault();   
       $(this).ajaxSubmit(
       
           {
            beforeSend:function()
               {
                $("#prog").show();
                $("#prog").attr('style','width: 0%');
                   
               },
               uploadProgress:function(event,position,total,percentCompelete)
               {
                  $("#prog").attr('style','width: '+percentCompelete+'%'); 
                   $("#percent").html(percentCompelete+'%');
               },
               success:function(data)
               {
                   $("#here").html(data);
               }
           });
   });
};

$(document).ready(main);
$(document).ready(function()
{
  $("#cws_file").change(function()
  {
    $("#prog").attr('style','width: 0%');
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



<div id="here"></div>
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
                <form action="handle_upload.php" method="post" enctype="multipart/form-data" id="upload">
                    <span class="btn btn-success btn-file">
                        Browse <input type="file" name="cws_file" id="cws_file">
                    </span>
                    <button type="submit" class="btn btn-default disabled" id="submit_cws_upload">
                      <i class="fa fa-upload"></i> Upload
                    </button>
                    <p id="selected_filename"></p>
                </form>
                <div class="progress">
                  <div id = "prog" class="progress-bar" role="progressbar" style="width: 0%;">
                    <span class="sr-only">60% Complete</span>
                  </div>
                </div>
            </div>
        </div>
    </div>
</div>


