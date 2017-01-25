<?php 
if (isset($_GET["id"])) {
	$floor = $_GET["id"];
	switch ($floor)
    {
      case 0:
        $floor_name = "lower";
        $area_name = "Lower Level";
        break;
      case 1:
        $floor_name = "first";
        $area_name = "First Floor";
 
        break;
      case 2:
		$floor_name = "second";
        $area_name = "Second Floor";
        break;
      case 3:
		$floor_name = "third";
        $area_name = "Third Floor";
        break; 
      case 4:
		$floor_name = "fourth";
        $area_name = "Fourth Floor";
        break;      
      default:
	header("Location: http://$host$uri/$extra");
    }	
}
else {
	header("Location: http://$host$uri/$extra");
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;" />
<meta content="yes" name="apple-mobile-web-app-capable" />
<meta name="apple-touch-fullscreen" content="YES" />
<title>Computer Availability: 1st Floor</title>
<link rel="stylesheet" type="text/css" href="http://m.library.appstate.edu/mobilestyle.css"/>
<link href="map.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-122684-1']);
_gaq.push(['_setDomainName', '.library.appstate.edu']);
  _gaq.push(['_setAllowHash', false]);

  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;

    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';

    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
</head>

<body>
<div id="main">

    <h2>Computer Availability</h2>

    <div id="map_container_300">

    <h3 style="font-size:150%; margin-bottom:20px">Now Viewing: <?php echo $area_name; ?></h3>
<?php

require_once "dbauth.php";

    #connect to the database
$DB = mysql_connect('localhost', $user, $password);
  @mysql_select_db($database) or die("Unable to select database");
  
 $sql_all = "SELECT * FROM compstatus where is_excluded=0";
 $sql_floor = "SELECT * FROM compstatus where is_excluded = 0 and floor = ". $floor; 
 
 //   $result = mysql_query("SELECT * FROM compstatus where floor=1");
 $result_all = mysql_query($sql_all);
 $result_floor = mysql_query($sql_floor);

$total_pc_results = 0;
$avail_pc_results = 0;
$total_mac_results = 0;
$avail_mac_results = 0;
$floor0_pc_results = 0;
$floor0_mac_results = 0;
$floor1_pc_results = 0;
$floor1_mac_results = 0;
$floor2_pc_results = 0;
$floor2_mac_results = 0;
$floor3_pc_results = 0;
$floor3_mac_results = 0;
$floor4_pc_results = 0;
$floor4_mac_results = 0;

while ($row = mysql_fetch_assoc($result_all)) {
	//get all total and available
	if ($row['computer_type'] == "PC" && $row['floor'] == 0)
	{
		$total_pc_results++;
		if ($row['status'] == 0) 
		{
			$floor0_pc_results++;
		}


	}
	if ($row['computer_type'] == "Mac" && $row['floor'] == 0)
	{
		$total_mac_results++;
		if ($row['status'] == 0) 
		{
			$floor0_mac_results++;
		}
	}
	
	if ($row['computer_type'] == "PC" && $row['floor'] == 1)
	{
		$total_pc_results++;
		if ($row['status'] == 0) 
		{
			$floor1_pc_results++;
		}


	}
	if ($row['computer_type'] == "Mac" && $row['floor'] == 1)
	{
		$total_mac_results++;
		if ($row['status'] == 0) 
		{
			$floor1_mac_results++;
		}
	}
	
	if ($row['computer_type'] == "PC" && $row['floor'] == 2)
	{
		$total_pc_results++;
		if ($row['status'] == 0) 
		{
			$floor2_pc_results++;
		}


	}
	if ($row['computer_type'] == "Mac" && $row['floor'] == 2)
	{
		$total_mac_results++;
		if ($row['status'] == 0) 
		{
			$floor2_mac_results++;
		}
	}
	
	if ($row['computer_type'] == "PC" && $row['floor'] == 3)
	{
		$total_pc_results++;
		if ($row['status'] == 0) 
		{
			$floor3_pc_results++;
		}


	}
	if ($row['computer_type'] == "Mac" && $row['floor'] == 3)
	{
		$total_mac_results++;
		if ($row['status'] == 0) 
		{
			$floor3_mac_results++;
		}
	}
	
	if ($row['computer_type'] == "PC" && $row['floor'] == 4)
	{
		$total_pc_results++;
		if ($row['status'] == 0) 
		{
			$floor4_pc_results++;
		}


	}
	if ($row['computer_type'] == "Mac" && $row['floor'] == 4)
	{
		$total_mac_results++;
		if ($row['status'] == 0) 
		{
			$floor4_mac_results++;
		}
	}
	
}

	$avail_pc_results = $floor0_pc_results + $floor1_pc_results + $floor2_pc_results + $floor3_pc_results + $floor4_pc_results;
    $pcs = $avail_pc_results . '/' .$total_pc_results;

#get the textual data - total numbers and available numbers of MACs
	$avail_mac_results = $floor0_mac_results + $floor1_mac_results + $floor2_mac_results + $floor3_mac_results + $floor4_mac_results;
    $macs = $avail_mac_results . '/' . $total_mac_results;
    
    $total_available = $avail_mac_results + $avail_pc_results;

#get all the computer's row of data

  


?>
 
  <div id="summary">
<table>
<caption><?php echo $total_available; ?> Computers Available</caption>

<tr><th>Location</th><th>PCs</th><th>Macs</th></tr>
<tr><td><a href="index.php?id=0">Lower Level</a></td><td><?php echo $floor0_pc_results; ?></td><td><?php echo $floor0_mac_results; ?></td></tr>
<tr><td><a href="index.php?id=1">First Floor</a></td><td><?php echo $floor1_pc_results; ?></td><td><?php echo $floor1_mac_results; ?></td></tr>
<tr><td><a href="index.php?id=2">Second Floor</a></td><td><?php echo $floor2_pc_results; ?></td><td><?php echo $floor2_mac_results; ?></td></tr>
<tr><td><a href="index.php?id=3">Third Floor</a></td><td><?php echo $floor3_pc_results; ?></td><td><?php echo $floor3_mac_results; ?></td></tr>
</table>
</div>
 <div id="map_container_300"> 
  
  <div id="computer_map_<?php echo $floor_name; ?>_300">  
  
      <dl>  
            	 <?php
    /* fetch rows in order and loop through results*/
    for ($i = 0; $i < mysql_num_rows($result_floor) ; $i++) {

		    if (!($row = mysql_fetch_assoc($result_floor))) {
			            continue;
			}
		    	
		    if ($row['is_offline']==0) {
		    		if ($row['is_pilot']==1) {
		    			echo "<dt class=\"pilot_300 mapicon\" style=\"left: " . ($row['left_pos']) . "px;top:" . $row['top_pos'] . "px\">" . $row['computer_name'] . "</dt>";
	    			
		    		} 
		    		elseif ($row['is_dedicated']==1) {
		    			echo "<dt class=\"microfilm_300 mapicon\" style=\"left: " . ($row['left_pos']) . "px;top:" . $row['top_pos'] . "px\">" . $row['computer_name'] . "</dt>";    			
		    		}
		    		else {
		    			echo "<dt class=\"" . ($row['status']==0 ? 'avail' : 			 	 'busy') . "_" . (strcmp($row['computer_type'],'PC')==0 ? 'pc' : 'mac'). ($row['is_public']==1 ? '_public_' : '_'). "300 mapicon\" style=\"left: " . ($row['left_pos']) . "px;top:" . $row['top_pos']. "px\">" . $row['computer_name'] . "</dt>";

		    		}
		    		

		    }
		    else {
			    echo "<dt class=\"offline_300 mapicon\" style=\"left: " . ($row['left_pos']) . "px;top:" . $row['top_pos'] . "px\">" . $row['computer_name'] . "</dt>";

		    }
	}
	 mysql_free_result($result_floor);
	 mysql_free_result($result_all);
   	 ?>
 
      </dl>  
  </div>
  
   
<p>Map is updated every 30 seconds. Last updated: <?php echo date("h:i:s"); ?></p> 
   
</div> 
  
  <hr />

<div id="legend">
<table>
<tr><td><img src="../images/pc-available-10px.png" /></td><td>PC available</td></tr>
<tr><td><img src="../images/pc-unavailable-10px.png" /></td><td>PC busy</td></tr>
<tr><td><img src="../images/mac-available-10px.png" /></td><td>Mac available</td></tr>
<tr><td><img src="../images/mac-unavailable-10px.png" /></td><td>Mac busy</td></tr>
<tr><td><img src="../images/pc-available-public-10px.png" /></td><td>Public PC</td></tr>
<tr><td><img src="../images/pc-vm-10px.png" /></td><td>Pilot Machine</td></tr>
<tr><td><img src="../images/microfilm_10px.png" /></td><td>Dedicated Microfilm</td></tr>
<tr><td><img src="../images/maintenance-icon-10px.png" /></td><td>Under Maintenance</td></tr>
</table>
</div>

<hr />
  




  
    


</body>
<?php
mysql_close($DB);
?>
</html>
