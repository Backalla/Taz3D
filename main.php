<script>
clearInterval(interval);
var dlp_status_data;
var prev_dlp_status_data={};
// $(document).ready(function(){
//     $("#dashboard_content").html($("#printing_state").html());
// });



function update_dashboard()
{
    $.ajax({ 
            type: 'POST', 
            url: 'dlp_status.php',  
            dataType: 'json',
            success: function (data)
            {
                dlp_status_data = data;
                state = dlp_status_data['state'];
                if(state == "1")
                {
                    $("#dashboard_content").html("Ready to print");
                }
                else
                {
                    progress_percent_complete = parseInt((parseInt(dlp_status_data['completed_slices']) / parseInt(dlp_status_data['total_slices']))*100);
                    $("#dashboard_content").html($("#printing_state").html());
                    $("#dashboard_filename").html(dlp_status_data['filename']);
                    $("#dashboard_total_time").html(dlp_status_data['total_time']);
                    $("#dashboard_elapsed_time").html(dlp_status_data['elapsed_time']);
                    $("#dashboard_total_slices").html(dlp_status_data['total_slices']);
                    $("#dashboard_completed_slices").html(dlp_status_data['completed_slices']);
                    $("#dashboard_percent_complete").html(progress_percent_complete.toString()+"%");
                    $("#dashboard_progressbar").attr("style","width: "+progress_percent_complete.toString()+"%");
                    if(state == "2")
                    {
                        $("#btn_pause_resume").html("Pause");
                        $("#current_slice_image").attr("src","cws/"+dlp_status_data['cws_id']+"/"+ dlp_status_data['current_slice']);
                        console.log("cws/"+dlp_status_data['cws_id']+"/"+ dlp_status_data['current_slice']);
                        $("#btn_stop").addClass("disabled");
                    }
                    if(state == "3")
                    {
                        $("#btn_pause_resume").html("Resume");
                    }
                }
            }
        });
}
var interval=setInterval(update_dashboard,100);



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
<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
            <div class="x_title">
                <h3>Dashboard</h3>
                
                <div class="clearfix"></div>
            </div>
            <div class="x_content" id="dashboard_content" style="height:400px;">
            </div>
        </div>
    </div>

    <br />
    <br />
    <br />

</div>

<!-- All the divs of content for different states of machines.. -->
<!-- Hidden by default.. Show them using jQuery -->


<!-- Printing state start -->

<div id="printing_state" style="display: none">
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <h2><strong id="dashboard_percent_complete">60%</strong></h2>
            <div class="progress progress-striped">
                <div id ="dashboard_progressbar" class="progress-bar progress-bar-info" role="progressbar"  style="width: 0%">
                    <span class="sr-only">60% Complete</span>
                </div>
            </div>
            
        </div>
    </div>
    <br>
    <div class="row">
    <div class="col-md-4 col-sm-4 col-xs-12">
        <div class="x_panel tile">
            <div class="x_title">
                <h3>File info</h3>                
                <div class="clearfix"></div>
            </div>
            <div class="x_content" style="font-size:20px">
                Filename : <strong id="dashboard_filename">Somethn.cws</strong><br>
                Total time : <strong id="dashboard_total_time">02:15:00</strong><br>
                Elapsed time : <strong id="dashboard_elapsed_time">01:10:12</strong><br>
                Total slices : <strong id="dashboard_total_slices">542</strong><br>
                Completed slices : <strong id="dashboard_completed_slices">214</strong><br>
            </div>
        </div>
    </div>


    <div class="col-md-8 col-sm-8 col-xs-12">
        <div class="row">

            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <h3>Print process</h3>
                        <div class="clearfix"></div>
                    </div>
                    <div class="x_content">
                        <div class="col-md-6 col-sm-6 col-xs-6">
                            <h2>Controls</h2>
                            <button type="button" class="btn btn-primary" id="btn_pause_resume" onclick="pause_resume()">Pause/Resume</button>
                            <button type="button" class="btn btn-danger" id="btn_stop" onclick="stop()">Stop</button>
                        </div>
                        <div class="col-md-6 col-sm-6 col-xs-6">
                            <h2>Slice view</h2>
                            <img id="current_slice_image" src="" class="img-responsive" height="108px" width="192px">
                        </div>
                    </div>
                </div>
                
            </div>

        </div>
    </div>
    </div>
</div> 

<!-- Printing state end -->


