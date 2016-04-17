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
                  if(percentCompelete == 100)
                    $("#processing").show();
                  else
                    $("#processing").hide();
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
  $("#processing").hide();
  $("#cws_file").change(function()
  {
    $("#prog").attr('style','width: 0%');
    var filename = $("#cws_file")[0].files[0].name;
    $("#modal_filename").html(filename);
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
<div class="row">
    <div class="clearfix"></div>

    <div class="row">

        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel" style="height:600px;">
                <div class="x_title">
                    <h3>Upload new CWS file</h3>
                    <div class="clearfix"></div>
                </div>
                <form action="handle_upload.php" method="post" enctype="multipart/form-data" id="upload">
                    <span class="btn btn-success btn-file">
                        Browse <input type="file" name="cws_file" id="cws_file">
                    </span>

                    <button type="button" data-toggle="modal" data-target=".confirm_upload_modal" class="btn btn-default disabled" id="submit_cws_upload">
                      <i class="fa fa-upload"></i> Upload
                    </button>
<!-- 
                    <button type="submit" class="btn btn-default disabled" id="submit_cws_upload">
                      <i class="fa fa-upload"></i> Upload
                    </button> -->
                    
                    <p id="selected_filename"></p>




                    <!-- Modal for print confirmation start-->

                    <div class="modal fade confirm_upload_modal" tabindex="-1" role="dialog" aria-hidden="true">
                        <div class="modal-dialog modal-sm">
                            <div class="modal-content">

                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
                                    </button>
                                    <h4 class="modal-title" id="myModalLabel2">Confirm upload</h4>
                                </div>
                                <div class="modal-body">
                                    <h4>Are you sure you want to upload <strong id="modal_filename">this cws</strong>?</h4>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal" >No</button>
                                    <button type="submit" class="btn btn-primary" onclick="$('.modal').modal('toggle')">Yes</button>
                                </div>

                            </div>
                        </div>
                    </div>
                    <!-- Modal for print confirmation end -->

                </form>
                <div class="progress">
                  <div id = "prog" class="progress-bar" role="progressbar" style="width: 0%;">
                    <span class="sr-only">60% Complete</span>
                  </div>
                </div>
                <br>
                <div id="processing">
                  <strong>Processing..</strong>
                  <img src="img/hourglass.svg" width="30px" height="30px">
                </div>
            </div>
        </div>
    </div>
</div>
