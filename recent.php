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

    function print_file(cws_id)
    {
        alert("printing : "+cws_id);
        $.post("allthefunctions.php",
            {
                'funct': "print",
                'param': cws_id
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
                            
                            <td class=" " data-toggle="modal" data-target=".<?php echo $prints->cws_id?>_modal"><a href="#" onclick="return false;"><strong><?php echo $prints->filename; ?></strong></a></td>
                            <td class=" "><?php echo date("F j, Y, g:i a",intval($prints->uploaded)); ?></td>
                            <td class=" "><?php echo date("F j, Y, g:i a",intval($prints->last_printed)); ?></td>
                            <td class=" "><?php echo $prints->slices; ?></td>
                            <td class=" "><?php echo $prints->print_time ?></td>
                            <td class="a-right a-right ">
                            	<button type="button" class="btn btn-success btn-sm" onclick="print_file('<?php echo $prints->cws_id;  ?>')"><i class="fa fa-bolt"></i> Print </button>
                            	<button type="button" class="btn btn-danger btn-sm" onclick="delete_file('<?php echo $prints->cws_id;  ?>')"><i class="fa fa-trash"></i> Delete </button>
                                <!-- Modal for file info start -->
                                <div class="modal fade <?php echo $prints->cws_id?>_modal" tabindex="-1" role="dialog" aria-hidden="true">
                                    <div class="modal-dialog modal-sm">
                                        <div class="modal-content">

                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
                                                </button>
                                                <h4 class="modal-title" id="myModalLabel2"><strong><?php echo $prints->filename; ?></strong></h4>
                                            </div>
                                            <div class="modal-body">
                                                <div class="row"><strong>Uploaded on : </strong><?php echo date("F j, Y, g:i a",intval($prints->uploaded)); ?></div>
                                                <div class="row"><strong>Last printed on : </strong><?php echo date("F j, Y, g:i a",intval($prints->last_printed)); ?></div>
                                                <div class="row"><strong>Layer height : </strong><?php echo $prints->slice_height." microns"; ?></div>
                                                <div class="row"><strong>Expected print time : </strong><?php echo $prints->print_time ?></div>
                                                <div class="row"><strong>Resin : </strong><?php echo $prints->selected_resin ?></div>
                                                <div class="row"><strong>Number of slices : </strong><?php echo $prints->slices ?></div>
                                                <div class="row"><strong>Layer exposure time : </strong><?php echo $prints->layer_exposure." ms" ?></div>
                                                <div class="row"><strong>Bottom exposure time : </strong><?php echo $prints->bottom_exposure." ms" ?></div>
                                                <div class="row"><strong>Number of bottom layers : </strong><?php echo $prints->number_bottom_layers ?></div>

                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <!-- Modal for file info end -->
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
