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
	    exec("sudo rm -rf cws/".$delete_cws_id."/");
	    exec("sudo rm cws/".$delete_cws_id.".cws");
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
			foreach ($file_info_xml->children() as $print)
			{
				if($print->cws_id == (string)$print_cws_id)
				{
					$print->last_printed = time();
					echo time();
				}
			}
			exec("sudo chmod -R 777 /var/www/html/cws/*");
		}
		echo $printer_xml;
		$printer_xml->asXML('printer.xml');
		$file_info_xml->asXML('cws_files.xml');
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
	if($_POST['funct'] == 'usb_upload')
	{
    $uploaded=0;
		$file_source = $_POST['param'];
    function check_file_exists($filename)
    {
      $check_file_xml = simplexml_load_file("cws_files.xml");
      foreach ($check_file_xml as $cws_file)
      {
        // echo $cws_file->filename;
        if((string)$cws_file->filename == $filename)
          return True;
      }
      return False;
    }
    $file_number = 1;    
    $upload_dir = "/var/www/html/cws/";
    $file_extension =  strtolower(pathinfo($file_source,PATHINFO_EXTENSION));
    if($file_extension == "cws")
    {
      $filename = basename($file_source,".".$file_extension);
      $printer_xml = simplexml_load_file("printer.xml");
      $cws_id = ((int)$printer_xml->print_no)+1;
      // Deal with this later
      $printer_xml->print_no = $cws_id;
      $printer_xml->asXML("printer.xml");
      while(check_file_exists(basename($file_source,".".$file_extension)))
      {
        $filename = basename($file_source,".".$file_extension)."_".$file_number.".".$file_extension;
        $file_number = $file_number+1;
      }

      exec("sudo cp \"".$file_source."\" /var/www/html/cws/".$cws_id.".cws");
      $uploaded =1;
      // echo "sudo chown pi:pi ".$file_upload_path;
      exec("mkdir cws/".$cws_id);
      // system("mv $file_upload_path cws/".$filename);
      exec("sudo 7z e cws/".$cws_id.".cws -ocws/".$cws_id."/");
      exec("sudo chmod -R 777 /var/www/html/cws/*");
      $manifest_xml = simplexml_load_file("cws/".$cws_id."/manifest.xml");
      $slices_xml_element = $manifest_xml->Slices->children();
      $slices = count($slices_xml_element);
      $original_name = pathinfo($manifest_xml->GCode->name,PATHINFO_FILENAME);
      // echo "<script>alert('name:".$original_name."')</script>";


      $slicing_config_xml = simplexml_load_file("cws/".$cws_id."/Taz3D.slicing");
      $blank_time = $slicing_config_xml->BlankTime;
      $selected_resin = $slicing_config_xml->SelectedInk;
      foreach ($slicing_config_xml->{'InkConfig'} as $resin)
      {
        if((string)$resin->Name == $selected_resin)
        {
          $slice_height = (int)round(((float)$resin->SliceHeight * 1000));
          $layer_exposure = $resin->LayerTime;
          $bottom_exposure = $resin->FirstLayerTime;
          $number_bottom_layers = $resin->NumberofBottomLayers;
        }
      }
      $print_time = 10+(($bottom_exposure/1000)*$number_bottom_layers)+(($blank_time/1000)*$slices)+(($layer_exposure/1000)*($slices-$number_bottom_layers));
      $cws_files_xml = simplexml_load_file('cws_files.xml');
      $print = $cws_files_xml->addChild('print');
      $print->addChild('cws_id',$cws_id);        
      $print->addChild('filename', basename("cws/".$filename,".".$file_extension));
      $print->addChild('slices', $slices);
      $print->addChild('original_name',$original_name);
      $print->addChild('print_time', gmdate("H:i:s", $print_time));
      $print->addChild('last_printed', 0);
      $print->addChild('uploaded', time());
      $print->addChild('blank_time',$blank_time);
      $print->addChild('selected_resin',$selected_resin);
      $print->addChild('slice_height',$slice_height);
      $print->addChild('layer_exposure',$layer_exposure);
      $print->addChild('bottom_exposure',$bottom_exposure);
      $print->addChild('number_bottom_layers',$number_bottom_layers);
      $cws_files_xml->asXML("cws_files.xml");


    }
    if($uploaded)
      echo "1";
    else
      echo "0";
	}

}
?>
