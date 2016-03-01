<?php
ini_set('display_errors', 1);
$filename="3";
$slices=321;
$slicing_config_xml = simplexml_load_file("cws/".$filename."/Voyager.slicing");
echo $blank_time = $slicing_config_xml->BlankTime;
echo $selected_resin = $slicing_config_xml->SelectedInk;
foreach ($slicing_config_xml->{'InkConfig'} as $resin)
{
	if((string)$resin->Name == $selected_resin)
	{
		echo $slice_height = (int)((float)$resin->SliceHeight * 1000);
		echo $layer_exposure = $resin->LayerTime;
		echo $bottom_exposure = $resin->FirstLayerTime;
		echo $number_bottom_layers = $resin->NumberofBottomLayers;
	}
}
echo "<br>Print time : ";
$print_time = 10+(($bottom_exposure/1000)*$number_bottom_layers)+(($blank_time/1000)*$slices)+(($layer_exposure/1000)*($slices-$number_bottom_layers));
echo gmdate("H:i:s",$print_time);
?>