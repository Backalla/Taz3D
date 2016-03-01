<script>
$("#dashboard_printing").hide();  
setInterval(function(){
    $.ajax({ 
    type: 'POST', 
    url: 'dlp_status.php',  
    dataType: 'json',
    success: function (data)
    {
        // alert(data.message);
        if(data['state'] == "1")  //If idle/ready to print state..
        {
            $("#dashboard_status").html("Ready to print.");
            $("#dashboard_printing").hide();
        }
        if(data['state'] == "2")  //If printing state..
        {
            $("#dashboard_status").html("Printing.");
            $("#dashboard_printing").show();
            $("#dashboard_filename").html(data['filename']);
            $('#dashboard_total_slices').html(data['total_slices']);
            $('#dashboard_completed_slices').html(data['completed_slices']);
            $('#dashboard_total_time').html(data['total_time']);
            $('#dashboard_remaining_time').html(data['remaining_time']);
            $('#dashboard_message').html(data['message']);
            $('#dashboard_percentage').html(parseInt((parseInt(data['completed_slices']) / parseInt(data['total_slices']))*100));


        }
        
    }
});
},1000);
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
                        Time remaining: <strong id="dashboard_remaining_time"></strong><br>
                        Percentage complete: <strong id="dashboard_percentage"></strong><br>
                        Message: <strong id="dashboard_message"></strong>

                    </div>

                </div>
            </div>
        </div>
    </div>
</div>

