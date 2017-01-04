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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="Refresh" content="80; url=http://lion.library.appstate.edu:8096/frame.html">
<link href="map.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" media="screen" href="http://www.library.appstate.edu/css/2010_redesign.css" /> 


<meta name="Keywords" content="Appalachian State University Library and Information Commons, computers, computer lab, computer availability" />
<title>Computer Availability</title>
<script type="text/java_script">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-28864684-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/java_script'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
</head>
<body>
<div id="wrapper">
<div id="main">

<h2 style="font-size:200%; margin-bottom:20px">Computer Availability</h2>

 <div id="map_container_900"> 
 
 
 <h3 style="font-size:150%; margin-bottom:20px">Now Viewing: <?php echo $area_name; ?></h3><?php

require_once "dbauth.config";
	
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
 
  
  <div id="computer_map_<?php echo $floor_name; ?>_900">  
  
      <dl>  
            	 <?php
    /* fetch rows in order and loop through results*/
    for ($i = 0; $i < mysql_num_rows($result_floor) ; $i++) {

	       // if (!mysql_data_seek($result_floor, $i)) {
			//        echo "Cannot seek to row $i: " . mysql_error() . "\n";
			//	        continue;
			//	    }


		    //echo $i . ' ' .$row['computer_name'] . ' ' . $row['computer_type'] . "<br />\n";
		    if (!($row = mysql_fetch_assoc($result_floor))) {
			            continue;
				        }
		    if ($row['is_offline']==0) {

			    echo "<dt class=\"" . ($row['status']==0 ? 'avail' : 			 	 'busy') . "_" . (strcmp($row['computer_type'],'PC')==0 ? 'pc' : 'mac'). ($row['is_public']==1 ? '_public_' : '_'). "900 mapicon\" style=\"left: " . ($row['left_pos']*3) . "px;top:" . $row['top_pos']*3 . "px\">" . $row['computer_name'] . "</dt>";
		    }
		    	else {
			    echo "<dt class=\"offline_900 mapicon\" style=\"left: " . ($row['left_pos']*3) . "px;top:" . $row['top_pos']*3 . "px\">" . $row['computer_name'] . "</dt>";

		    }
	}
	 mysql_free_result($result_floor);
	 mysql_free_result($result_all);
   	 ?>
                                 
                
      </dl>  
  </div>
  
    
   
   
</div> 

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



<div id="legend">
<table>
<tr><td><img src="../images/pc-available-30px.png" /></td><td>PC available</td></tr>
<tr><td><img src="../images/pc-unavailable-30px.png" /></td><td>PC busy</td></tr>
<tr><td><img src="../images/mac-available-30px.png" /></td><td>Mac available</td></tr>
<tr><td><img src="../images/mac-unavailable-30px.png" /></td><td>Mac busy</td></tr>
<tr><td><img src="../images/pc-available-public-30px.png" /></td><td>Public PC</td></tr>
<tr><td><img src="../images/maintenance-icon-30px.png" /></td><td>Under Maintenance</td></tr>
</table>
</div>
 





</div>


</div>
</body>
<?php 
 mysql_close($DB);
?>
</html>
