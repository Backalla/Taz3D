<?php
if(isset($_POST['funct']) && !empty($_POST['funct']))
{
	if($_POST['funct'] == 'delete')  // function to delete a cws file. Called from recent.php
	{
		$delete_cws_id = $_POST['param'];
		$cws_files_xml = simplexml_load_file("cws_files.xml");
		$doc = new DOMDocument; 
		$doc->load('cws_files.xml');
		$matchingElements  = $doc->getElementsByTagName("print");
		$totalMatches     = $matchingElements->length;
		echo $totalMatches;
		$elementsToDelete = array();
		for ($i = 0; $i < $totalMatches; $i++){
			$nodes = $matchingElements->item($i)->getElementsByTagName("cws_id");
			print_r($nodes);
			foreach ($nodes as $node)
			{
				print_r($node);
				if($node->nodeValue == $delete_cws_id)
					$elementsToDelete[] = $matchingElements->item($i);
			}
		    // $elementsToDelete[] = $matchingElements->item($i);
		}

		foreach ( $elementsToDelete as $elementToDelete ) {
		    $elementToDelete->parentNode->removeChild($elementToDelete);
		}

		$doc->save("cws_files.xml");
	    exec("sudo rm -rf cws/".$cws_id."/");
	    exec("sudo rm cws/".$cws_id.".cws");
	}
	if($_POST['funct'] == 'print')
	{
		// echo "<script>alert('printing from allthefunstions')</script>";
		$print_cws_id = $_POST['param'];
		// $print_file = $_POST['param'];
		// $print_filename = $print_file['file'];
		// $print_cws_id = $print_file['cws_id'];
		$printer_xml = simplexml_load_file("printer.xml");
		$file_info_xml = simplexml_load_file("cws_files.xml");
		$state = $printer_xml->state;
		foreach ($file_info_xml->children() as $print)
		{
			if($print->cws_id == (string)$print_cws_id)
			{
				$total_slices = $print->slices;
				$total_time = $print->print_time;
				$filename = $print->filename;
				$original_filename = $print->original_name;
				$slice_height = $print->slice_height;
			}
		}
		// echo "<script>alert('printing from allthefunstions2')</script>";

		if($state=='1')  // check if machine is in ready state
		{
			$printer_xml->state='2';  // set machine to printing state
			$printer_xml->filename = $filename;
			$printer_xml->cws_id=$print_cws_id;
			$printer_xml->original_filename = $original_filename;
			$printer_xml->message="Printing ".$filename.".cws";
			$printer_xml->total_time = $total_time;
			$printer_xml->total_slices = $total_slices;
			$printer_xml->slice_height = $slice_height;
		}
		echo $printer_xml;
		$printer_xml->asXML('printer.xml');
	}
	if($_POST['funct'] == 'pause_resume')
	{
		// echo $_POST['param'];
		$printer_xml = simplexml_load_file("printer.xml");
		$state = $_POST['param'];
		if($state == '2')
		{
			$printer_xml->state='3';
		}
		if($state == '3')
		{
			$printer_xml->state='2';
		}
		$printer_xml->asXML('printer.xml');
	}
	if($_POST['funct'] == 'stop')
	{
		// echo $_POST['param'];
		$printer_xml = simplexml_load_file("printer.xml");
		$printer_xml->state = '1';
		$printer_xml->asXML('printer.xml');
	}

}
?>
