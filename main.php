<script>

var dlp_status_data;
clearInterval(interval);
function get_dlp_status()
{
        $.ajax({ 
        type: 'POST', 
        url: 'dlp_status.php',  
        dataType: 'json',
        success: function (data)
        {
            dlp_status_data = data;                 
        }
    });
        // alert(dlp_status_data);

}
var interval = setInterval(function(){
    get_dlp_status();
    $("#dashboard_status").html(dlp_status_data['message']);

        if(dlp_status_data['state'] == "1")  //If idle/ready to print state..
        {
            $("#dashboard_printing").hide();
            $("#complete_progress_div").hide(); 
            $("#btn_pause_resume").hide();
            $("#btn_stop").hide();
        }
        else
        {
            $("#btn_pause_resume").show();
            $("#dashboard_printing").show();
            // $("#dashboard_printing").css('visibility') = 'visible';  kk
            $("#complete_progress_div").show();
            $("#dashboard_filename").html(dlp_status_data['filename']);
            $('#dashboard_total_slices').html(dlp_status_data['total_slices']);
            $('#dashboard_completed_slices').html(dlp_status_data['completed_slices']);
            $('#dashboard_total_time').html(dlp_status_data['total_time']);
            $('#dashboard_elapsed_time').html(dlp_status_data['elapsed_time']);
            $('#dashboard_message').html(dlp_status_data['message']);
            $('#dashboard_percentage').html(parseInt((parseInt(dlp_status_data['completed_slices']) / parseInt(dlp_status_data['total_slices']))*100));
            $("#complete_progress").attr('style','width: '+(parseInt((parseInt(dlp_status_data['completed_slices']) / parseInt(dlp_status_data['total_slices']))*100))+'%'); 
            // $("#btn_pause_resume").html("Pause");
            if(dlp_status_data['state'] == "2")  //If printing state..
            {
                $("#btn_pause_resume").html("Pause");
                $("#btn_stop").hide();
            }
            if(dlp_status_data['state'] == "3")
            {
                $("#btn_pause_resume").html("Resume");
                $("#btn_stop").show();
            }
        }
},1000);

function pause_resume()
{
    $.post("allthefunctions.php",
        {
            'funct': "pause_resume",
            'param': dlp_status_data['state']
        },
        function(data, status){
            load_page("main.php");
        });
}  
function stop()
{
    $.post("allthefunctions.php",
        {
            'funct': "stop",
            'param': dlp_status_data['state']
        });
}


</script>
<div class="">
    <div class="page-title">
        <div class="title_left">
            <h3>Dashboard</h3>
        </div>
    </div>
    <div class="clearfix"></div>

    <div class="row">

        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel" style="height:600px;">
                <div class="x_title">
                    <h3 id="dashboard_status"></h3>
                    <div id="dashboard_printing" class="row" >
                        <div class="col-md-10">
                            Filename: <strong id="dashboard_filename"></strong><br>
                            Total slices: <strong id="dashboard_total_slices"></strong><br>
                            Slices completed: <strong id="dashboard_completed_slices"></strong><br>
                            Total time: <strong id="dashboard_total_time"></strong><br>
                            Time elapsed: <strong id="dashboard_elapsed_time"></strong><br>
                            Percentage complete: <strong id="dashboard_percentage"></strong><br>
                            Message: <strong id="dashboard_message"></strong>
                        </div>
                        <div class="col-md-2">
                            <div class="row">
                                <button type="button" class="btn btn-primary" id="btn_pause_resume" onclick="pause_resume()">Pause/Resume</button>
                                <button type="button" class="btn btn-danger" id="btn_stop" onclick="stop()">Stop</button>

                            </div>
                        </div>
                    </div>
                    <div id = "complete_progress_div" class="progress">
                      <div id ="complete_progress" class="progress-bar progress-bar-info" role="progressbar"  style="width: 0%">
                      </div>
                    </div>
                </div>
                
            </div>
        </div>
    </div>
</div>

