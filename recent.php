<?php 
$xml = simplexml_load_file("printer.xml") or die("Something went wrong!! Try updating the software..");

if(isset($_POST['d']) && !empty($_POST['d']))
{
	$delete_filename = $_POST['d'];

	$doc = new DOMDocument; 
	$doc->load('printer.xml');
	$matchingElements  = $doc->getElementsByTagName("print");
	$totalMatches     = $matchingElements->length;
	echo $totalMatches;
	$elementsToDelete = array();
	for ($i = 0; $i < $totalMatches; $i++){
		$nodes = $matchingElements->item($i)->getElementsByTagName("filename");
		print_r($nodes);
		foreach ($nodes as $node)
		{
			print_r($node);
			if($node->nodeValue == $delete_filename)
				$elementsToDelete[] = $matchingElements->item($i);
		}
	    // $elementsToDelete[] = $matchingElements->item($i);
	}

	foreach ( $elementsToDelete as $elementToDelete ) {
	    $elementToDelete->parentNode->removeChild($elementToDelete);
	}

	$doc->save("printer.xml");
    exec("sudo rm -rf cws/".$delete_filename."/");
    exec("sudo rm cws/".$delete_filename.".cws");
}
?>
<script>

	function delete_file(file)
	{
		// alert(file);
		$.ajax({
		    url : "recent.php",
		    type: "POST",
		    data : {'d':file},
		    success: function(data, textStatus, jqXHR)
		    {
		    	// alert("Deleted successfully : "+file);
		    	load_page("recent.php");
		    }
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
                            	<button type="button" class="btn btn-success btn-sm"><i class="fa fa-bolt"></i> Print </button>
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
