<?php 
require_once("allthefunctions.php");
$xml = simplexml_load_file("cws_files.xml") or die("Something went wrong!! Try updating the software..");


?>
<script>

	function delete_file(file)
	{
		// alert(file);
		$.post("allthefunctions.php",
		    {
                'funct':'delete',
                'param':file
            },
		    function(data,status)
		    {
		    	// alert("Deleted successfully : "+file);
		    	load_page("recent.php");
		    
            });
	}

    function print_file(file)
    {
        alert("printing : "+file);
        $.post("allthefunctions.php",
            {
                'funct': "print",
                'param': file
            },
            function(data, status){
                load_page("main.php");
            });
    }
</script>
<div class="row">

    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
            <div class="x_title">
                <h2>Recent prints </h2>
                
                <div class="clearfix"></div>
            </div>
            <div class="x_content">
                <table id="example" class="table table-striped responsive-utilities jambo_table">
                    <thead>
                        <tr class="headings">
                            <th>Name </th>
                            <th>Uploaded on </th>
                            <th>Last printed on </th>
                            <th>Total slices </th>
                            <th>Expected print time </th>
                            <th class=" no-link last"><span class="nobr">Action</span>
                            </th>
                        </tr>
                    </thead>

                    <tbody>
                        <?php 
                        foreach ($xml->children() as $prints)
                        {
                        	
                        ?>
                        <tr class="odd pointer">
                            
                            <td class=" "><?php echo $prints->filename; ?></td>
                            <td class=" "><?php echo date("F j, Y, g:i a",intval($prints->uploaded)); ?></td>
                            <td class=" "><?php echo date("F j, Y, g:i a",intval($prints->last_printed)); ?></td>
                            <td class=" "><?php echo $prints->slices; ?></td>
                            <td class=" "><?php echo $prints->print_time ?> seconds</td>
                            <td class="a-right a-right ">
                            	<button type="button" class="btn btn-success btn-sm" onclick="print_file('<?php echo $prints->filename;  ?>')"><i class="fa fa-bolt"></i> Print </button>
                            	<button type="button" class="btn btn-danger btn-sm" onclick="delete_file('<?php echo $prints->filename;  ?>')"><i class="fa fa-trash"></i> Delete </button>
                            </td>
                            </td>
                        </tr>
                        <?php
                         }
                         ?>
                      
                    </tbody>

                </table>
            </div>
        </div>
    </div>

    <br />
    <br />
    <br />

</div>
