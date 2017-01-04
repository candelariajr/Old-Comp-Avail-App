<?php
#add your database username and password
$user="drupal";
$password="hf5549hf";
$database="computer_availability";

#unless the computers name was empty
if($_POST['workstation'] != ""){
    	$workstation = strtoupper($_POST['workstation']);
}
else{ #build the computer's name from the host

$host_domain = strstr($_POST['host'], '.');
    	$workstation = strtoupper(str_replace($host_domain, '', $_POST['host']));
}

#connect to the database
$DB = mysql_connect('localhost', $user, $password);
@mysql_select_db($database) or die("Unable to select database");

#get the computer's row based on it's name
$checkQuery = "SELECT computer_name FROM compstatus WHERE computer_name = '".$workstation."'";
$result = mysql_query($checkQuery);

#if we find a computer update it's status
if(mysql_numrows($result)>0){
    	$query="UPDATE `compstatus` SET status = '".$_POST['status']."' WHERE computer_name = '".$workstation."'";
    	mysql_query($query) or die(mysql_error());
    	#add entry in history table 
	$query="INSERT INTO history (computer_name, status) VALUES ('" . $workstation . "'," .  $_POST['status'] . ")";
    	mysql_query($query) or die(mysql_error());
}
else{
    	#add entry in exceptions table if a new incident
	$checkQuery = "SELECT computer_name FROM exceptions WHERE computer_name = '".$workstation."'";
	$result = mysql_query($checkQuery);
	if(mysql_numrows($result)== 0){
    		$query="INSERT INTO exceptions (computer_name) VALUES ('" . $workstation . "')";
    		mysql_query($query) or die(mysql_error());
		#email admin because there is a name mismatch
		#$to = 'estelbk@appstate.edu';
		#$from = 'no-reply@library.appstate.edu';

		#$subject = 'Computer Map Name Mismatch Detected';

    		#$message = 'Workstation named' . $workstation . ' was not found in computer_availability database';
		#mail($to, $subject, $message);
	}
}

mysql_close($DB);
?>
