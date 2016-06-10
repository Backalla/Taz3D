
<script>
    $.post("allthefunctions.php",
            {
                'funct': "get_wifi_address",
                'param': ""
            },
            function(data, status){
                // alert(data);
                if(data != "\"\"")
                    $("#wifi_address").html(data.replace(/['"]+/g, ''));
            });
    $.post("allthefunctions.php",
            {
                'funct': "get_ethernet_address",
                'param': ""
            },
            function(data, status){
                // alert(data);
                if(data != "\"\"")
                $("#ethernet_address").html(data.replace(/['"]+/g, ''));
            });
    $.post("allthefunctions.php",
            {
                'funct': "get_wifi_list",
                'param': ""
            },
            function(data, status){
                // alert(data);
                if(data != "\"\"")
                $("#wifi_list").html(data.replace(/['"]+/g, ''));
            });
</script>
<div class="row">

    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
            <div class="x_title">
                <h3>Network Settings</h3>
                
                <div class="clearfix"></div>
            </div>
            <div class="x_content">
                <ul>
                    <h2><strong>IP Addresses</strong></h2>
                    <li>Ethernet address : <strong><span id="ethernet_address">No ethernet address</span></strong></li>
                    <li>WiFi address : <strong><span id="wifi_address">No WiFi address</span></strong></li>

                </ul>
                <span id="wifi_list"></span>
            </div>
        </div>
    </div>

    <br />
    <br />
    <br />

</div>