<?php
ini_set('display_errors', "1");
if(isset($_POST))
{
	$x = $_POST['page'];
	require_once($x);
}
else
	echo '<script>alert("Not")</script>';

?>

<!-- I am test page -->