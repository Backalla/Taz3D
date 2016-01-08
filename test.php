<?php
ini_set('display_errors', "1");
$delay = 3;
$no_of_slices = 412;
$filename = "et";
for ($i=0; $i <= $no_of_slices ; $i++)
{
	$slice_number = str_pad($i, 4,"0",STR_PAD_LEFT);
	// echo "sudo fbi -T 2 -noverbose cws/".$filename."/".$filename.$slice_number.".png";
	// echo "<br>";
	system("sudo fbi -T 2 -noverbose cws/".$filename."/".$filename.$slice_number.".png");
	sleep($delay);
	system("sudo fbi -T 2 -noverbose cws/".$filename."/blank.png");
	sleep($delay);
}
?>