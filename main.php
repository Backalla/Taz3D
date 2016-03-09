<script>
$("#dashboard_printing").hide();  

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
                    <div id="dashboard_printing">
                        Filename: <strong id="dashboard_filename"></strong><br>
                        Total slices: <strong id="dashboard_total_slices"></strong><br>
                        Slices completed: <strong id="dashboard_completed_slices"></strong><br>
                        Total time: <strong id="dashboard_total_time"></strong><br>
                        Time elapsed: <strong id="dashboard_elapsed_time"></strong><br>
                        Percentage complete: <strong id="dashboard_percentage"></strong><br>
                        Message: <strong id="dashboard_message"></strong>
                        <div id = "complete_progress_div" class="progress">
                          <div id ="complete_progress" class="progress-bar progress-bar-info" role="progressbar"  style="width: 0%">
                          </div>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
    </div>
</div>

