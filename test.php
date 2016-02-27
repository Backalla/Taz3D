<?php
ini_set('display_errors', 'on');

// include("PhpSerial.php");
// $serial = new PhpSerial;
// $serial->deviceSet("/dev/ttyUSB0");
// $serial->confBaudRate(115200);
// $serial->confParity("none");
// $serial->confCharacterLength(8);
// $serial->confStopBits(1);
// $serial->confFlowControl("none");
 
// $serial->deviceOpen();
 
// // for (;1;)
// // {
// $serial->sendMessage("G0 X30");
// }
 
// echo "I've sended a message! \n\r";
// phpinfo();
// $d=rand(0,100);
if(isset($_GET['c']))
{
exec("sudo chmod 777 /dev/ttyUSB0");
exec("stty -F /dev/ttyUSB0 raw speed 115200 -echo -hupcl");
exec('echo "'.$_GET['c'].'" > /dev/ttyUSB0');

// $fp = fopen('/dev/ttyUSB0','w');
// sleep(5);
// fwrite($fp, "G0 X".$d);
echo $_GET['c'];
}
?>
<form action="test.php" method="get">
	<input type="text" name='c'>
	<input type = "submit" value="Send!">
</form>
