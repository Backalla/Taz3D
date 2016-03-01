<?php
if(isset($_POST['funct']) && !empty($_POST['funct']))
{
	if($_POST['funct'] == 'delete')  // function to delete a cws file. Called from recent.php
	{
		$delete_filename = $_POST['param'];

		$doc = new DOMDocument; 
		$doc->load('cws_files.xml');
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

		$doc->save("cws_files.xml");
	    exec("sudo rm -rf cws/".$delete_filename."/");
	    exec("sudo rm cws/".$delete_filename.".cws");
	}
	if($_POST['funct'] == 'print')
	{
		// echo "<script>alert('printing from allthefunstions')</script>";
		$print_filename = $_POST['param'];
		$printer_xml = simplexml_load_file("printer.xml");
		$file_info_xml = simplexml_load_file("cws_files.xml");
		$state = $printer_xml->state;
		// echo "<script>alert('printing from allthefunstions2')</script>";

		if($state=='1')  // check if machine is in ready state
		{
			$printer_xml->state='2';  // set machine to printing state
			$printer_xml->filename = $_POST['param'];
			$printer_xml->print_no = 1;
			foreach ($file_info_xml->children() as $cws_file)
			{
				if($cws_file->filename == $print_filename)
				{
					$printer_xml->total_time = $cws_file->print_time;
					$printer_xml->total_slices = $cws_file->slices;
					break;
				}
			}
			$printer_xml->message="Printing ".$print_filename.".cws";
		}
		$printer_xml->asXML('printer.xml');
	}

}
?>