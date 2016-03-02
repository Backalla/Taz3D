<?php
if(isset($_POST['funct']) && !empty($_POST['funct']))
{
	if($_POST['funct'] == 'delete')  // function to delete a cws file. Called from recent.php
	{
		$delete_filename = $_POST['param'];
		$cws_files_xml = simplexml_load_file("cws_files.xml");
		foreach ($cws_files_xml as $cws_file)
		{
		  // echo $cws_file->filename;
		  if((string)$cws_file->filename == $delete_filename)
		  {
		  	$cws_id = $cws_file->cws_id;
		  	break;
		  }
		}
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
	    exec("sudo rm -rf cws/".$cws_id."/");
	    exec("sudo rm cws/".$cws_id.".cws");
	}
	if($_POST['funct'] == 'print')
	{
		// echo "<script>alert('printing from allthefunstions')</script>";
		$print_file = $_POST['param'];
		$print_filename = $print_file['file'];
		$print_cws_id = $print_file['cws_id'];
		$printer_xml = simplexml_load_file("printer.xml");
		$file_info_xml = simplexml_load_file("cws_files.xml");
		$state = $printer_xml->state;
		// echo "<script>alert('printing from allthefunstions2')</script>";

		if($state=='1')  // check if machine is in ready state
		{
			$printer_xml->state='2';  // set machine to printing state
			$printer_xml->filename = $print_filename;
			$printer_xml->cws_id=$print_cws_id;
			$printer_xml->message="Printing ".$print_filename.".cws";
		}
		$printer_xml->asXML('printer.xml');
	}

}
?>