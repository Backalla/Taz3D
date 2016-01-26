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
// $serial->sendMessage("G0 X50");
// // }
 
// echo "I've sended a message! \n\r";
// phpinfo();
$d=rand(0,100);
// exec('echo "G91" > /dev/ttyUSB0');
system("./printrun/pronsole.py");
system("help");
system('echo "G0 X'.$d.'" > /dev/ttyUSB0');
echo $d;
?>
