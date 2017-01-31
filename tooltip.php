<?php
$host = $_SERVER['HTTP_HOST'];
$uri = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
$extra = 'index.php?id=1';
$area_name = "";
$floor = "";
$floor_name = "";
if (isset($_GET["id"])){
	$floor = $_GET["id"];
	switch ($floor){
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
			$area_name = "";
	}
}
else{
	header("Location: http://$host$uri/$extra");
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<!--<meta http-equiv="Refresh" content="3"; url="tooltip.php?id=1">-->
	<link href="map.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" type="text/css" href="tooltip/style.css" />
	<link rel="stylesheet" type="text/css" href="CSS/jquery-ui.min.css">
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script type="text/javascript" src="JS/jquery-ui.min.js"></script>
	<script type="text/javascript" src="JS/JS.js"></script>
	<meta name="Keywords" content="Appalachian State University Library and Information Commons, computers, computer lab, computer availability" />
	<title>Computer Availability</title>
<body>
<div id="main">
	<h2>Computer Availability</h2>
	<button class="button" id="addButton">Add Computer</button>
	<div id="map_container_600">
		<h3>Now Viewing:
			<?php
			echo $area_name;
			?>
		</h3>
		<?php
		require_once "dbauth.php";
		#connect to the database
		$DB = mysqli_connect('localhost', $user, $password);
		@mysqli_select_db($DB, $database) or die("Unable to select database");
		$sql_all = "SELECT * FROM compstatus where is_excluded=0";
		$sql_floor = "SELECT * FROM compstatus where is_excluded = 0 and floor = ". $floor;
		//   $result = mysql_query("SELECT * FROM compstatus where floor=1");
		$result_all = mysqli_query($DB, $sql_all);
		$result_floor = mysqli_query($DB, $sql_floor);
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
		while ($row = mysqli_fetch_assoc($result_all)) {
			//You could have simply added the get variable to your query and done a simple switch statement.
			//This block is a mess.
			//get all total and available
			if ($row['computer_type'] == "PC" && $row['floor'] == 0 && $row['is_dedicated'] == 0){
				$total_pc_results++;
				if ($row['status'] == 0){
					$floor0_pc_results++;
				}
			}
			if ($row['computer_type'] == "Mac" && $row['floor'] == 0 && $row['is_dedicated'] == 0){
				$total_mac_results++;
				if ($row['status'] == 0){
					$floor0_mac_results++;
				}
			}
			if ($row['computer_type'] == "PC" && $row['floor'] == 1 && $row['is_dedicated'] == 0){
				$total_pc_results++;
				if ($row['status'] == 0){
					$floor1_pc_results++;
				}
			}
			if ($row['computer_type'] == "Mac" && $row['floor'] == 1 && $row['is_dedicated'] == 0){
				$total_mac_results++;
				if ($row['status'] == 0){
					$floor1_mac_results++;
				}
			}

			if ($row['computer_type'] == "PC" && $row['floor'] == 2 && $row['is_dedicated'] == 0){
				$total_pc_results++;
				if ($row['status'] == 0){
					$floor2_pc_results++;
				}
			}
			if ($row['computer_type'] == "Mac" && $row['floor'] == 2 && $row['is_dedicated'] == 0){
				$total_mac_results++;
				if ($row['status'] == 0){
					$floor2_mac_results++;
				}
			}

			if ($row['computer_type'] == "PC" && $row['floor'] == 3 && $row['is_dedicated'] == 0){
				$total_pc_results++;
				if ($row['status'] == 0){
					$floor3_pc_results++;
				}
			}
			if ($row['computer_type'] == "Mac" && $row['floor'] == 3 && $row['is_dedicated'] == 0){
				$total_mac_results++;
				if ($row['status'] == 0){
					$floor3_mac_results++;
				}
			}

			if ($row['computer_type'] == "PC" && $row['floor'] == 4 && $row['is_dedicated'] == 0){
				$total_pc_results++;
				if ($row['status'] == 0){
					$floor4_pc_results++;
				}
			}
			if ($row['computer_type'] == "Mac" && $row['floor'] == 4 && $row['is_dedicated'] == 0){
				$total_mac_results++;
				if ($row['status'] == 0){
					$floor4_mac_results++;
				}
			}
		}
		$avail_pc_results = $floor0_pc_results
			+ $floor1_pc_results
			+ $floor2_pc_results
			+ $floor3_pc_results
			+ $floor4_pc_results;
		$pcs = $avail_pc_results.'/'.$total_pc_results;
		#get the textual data - total numbers and available numbers of MACs
		$avail_mac_results = $floor0_mac_results + $floor1_mac_results + $floor2_mac_results + $floor3_mac_results + $floor4_mac_results;
		$macs = $avail_mac_results . '/' . $total_mac_results;
		$total_available = $avail_mac_results + $avail_pc_results;
		#get all the computer's row of data
		?>
		<div id="computer_map_<?php echo $floor_name; ?>_600">
			<dl>
				<?php
    			/* fetch rows in order and loop through results*/
    			for ($i = 0; $i < mysqli_num_rows($result_floor) ; $i++) {
					if (!($row = mysqli_fetch_assoc($result_floor))) {
			            continue;
					}
		    		if ($row['is_offline']==0){
		    			if ($row['is_pilot']==1){
		    				echo "<span class=\"hotspot\" onmouseover=\"tooltip.show('"
								.$row['computer_name'] . "');\" onmouseout=\"tooltip.hide();\">"
								."<dt class=\"pilot_600 mapicon\" style=\"left: "
								.($row['left_pos']*2)
								."px;top:"
								.$row['top_pos']*2
								."px\">" . $row['computer_name']
								."</dt></span>";
			    		}
		    			elseif ($row['is_dedicated']==1) {
		    				echo "<span class=\"hotspot\" onmouseover=\"tooltip.show('"
								.$row['computer_name'] . "');\" onmouseout=\"tooltip.hide();\">"
								."<dt class=\"microfilm_600 mapicon\" style=\"left: "
								.($row['left_pos']*2)
								."px;top:"
								.$row['top_pos']*2
								."px\">"
								.$row['computer_name']
								."</dt></span>";
		    			}
		    			else {
		    				echo "<span class=\"hotspot\" onmouseover=\"tooltip.show('"
								.$row['computer_name'] . "');\" onmouseout=\"tooltip.hide();\">".
								"<dt class=\""
								.($row['status']==0 ? 'avail':'busy')
								."_"
								.(strcmp($row['computer_type'],'PC')==0 ? 'pc' : 'mac')
								.($row['is_public']==1 ? '_public_' : '_')
								."600 mapicon\" style=\"left: "
								.($row['left_pos']*2)
								."px;top:"
								.$row['top_pos']*2
								."px\">"
								.$row['computer_name']
								."</dt></span>";
		    			}
					}
		    		else {
			    		echo "<span class=\"hotspot\" onmouseover=\"tooltip.show('"
							.$row['computer_name']
							."');\" onmouseout=\"tooltip.hide();\">"
							."<dt class=\"offline_600 mapicon\" style=\"left: "
							.($row['left_pos']*2)
							."px;top:"
							.$row['top_pos']*2
							."px\">"
							.$row['computer_name']
							."</dt></span>";
		  			}
				}
	 			mysqli_free_result($result_floor);
	 			mysqli_free_result($result_all);
   	 			?>
			</dl>
  		</div>
		<p>
			Map is updated every 30 seconds. Last updated: <?php echo date("h:i:s"); ?>
		</p>
	</div>
	<div id="editor">
		<table>
			<caption>
				Edit Parameters
			</caption>
			<tr>
				<td colspan="3">
					<span id="recordID"></span>
				</td>
			</tr>
			<tr>
				<td>
					Search by Tag:
				</td>
				<td>
					<button id="searchButton" class="button">Search</button>
				</td>
				<td> </td>
			</tr>
			<tr>
				<th>Param.</th>
				<th>Orig.</th>
				<th>New</th>
			</tr>
			<tr>
				<td>
					<label for="newName">Name</label>
				</td>
				<td>
					<span id="originalName"></span>
				</td>
				<td>
					<input id="newName" name="newName" type="text">
				</td>
			</tr>
			<tr>
				<td>
					<label for="newTop">Top</label>
				</td>
				<td>
					<span id="originalTop"></span>
				</td>
				<td>
					<input id="newTop" name="newTop" type="text">
				</td>
			</tr>
			<tr>
				<td>
					<label for="newRight">Right</label>
				</td>
				<td>
					<span id="originalRight"></span>
				</td>
				<td>
					<input id="newRight" name="newRight" type="text">
				</td>
			</tr>
			<tr>
				<td>
					<label for="newTableName">Table</label>
				</td>
				<td>
					<span id="originalTableName"></span>
				</td>
				<td>
					<input id="newTableName" name="newTableName" type="text">
				</td>
			</tr>
			<tr>
				<td>
					<label for="newSeat">Seat No</label>
				</td>
				<td>
					<span id="originalSeat"></span>
				</td>
				<td>
					<input id="newSeat" name="newSeat" type="text">
				</td>
			</tr>
			<tr>
				<td>
					<label for="newFloor">Floor No</label>
				</td>
				<td>
					<span id="originalFloor"></span>
				</td>
				<td>
					<select id="newFloor" name="newFloor" class="editorDropdown">
						<option value="null">Unchanged</option>
						<option value="0">Lower Level</option>
						<option value="1">First Floor</option>
						<option value="2">Second Floor</option>
						<option value="3">Third Floor</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>
					<label for="newType">Type</label>
				</td>
				<td>
					<span id="originalType"></span>
				</td>
				<td>
					<select id="newType" name="newType" class="editorDropdown">
						<option value="null">Unchanged</option>
						<option value="PC">PC</option>
						<option value="Mac">Mac</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>
					<label for="newPublic">Public?</label>
				</td>
				<td>
					<span id="originalPublic"></span>
				</td>
				<td>
					<select id="newPublic" name="newPublic" class="editorDropdown">
						<option value="null">Unchanged</option>
						<option value="1">Yes</option>
						<option value="0">No</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>
					<label for="newExcluded">Excluded?</label>
				</td>
				<td>
					<span id="originalExcluded"></span>
				</td>
				<td>
					<select id="newExcluded" name="newExcluded" class="editorDropdown">
						<option value="null">Unchanged</option>
						<option value="1">Yes</option>
						<option value="0">No</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>
					<label for="newDedicated">Dedicated?</label>
				</td>
				<td>
					<span id="originalDedicated"></span>
				</td>
				<td>
					<select id="newDedicated" name="newDedicated" class="editorDropdown">
						<option value="null">Unchanged</option>
						<option value="1">Yes</option>
						<option value="0">No</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>
					<label for="newPilot">Pilot?</label>
				</td>
				<td>
					<span id="originalPilot"></span>
				</td>
				<td>
					<select id="newPilot" name="newPilot" class="editorDropdown">
						<option value="null">Unchanged</option>
						<option value="1">Yes</option>
						<option value="0">No</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>
					<button class="button" onclick="submit()">Submit Changes</button>
				</td>
				<td>
					<span id="updateResults"> </span>
				</td>
				<td>

				</td>
			</tr>
		</table>
	</div>
	<div id="summary">
		<table>
			<caption>
				<?php echo $total_available; ?> Computers Available
			</caption>
			<tr>
				<th>Location</th>
				<th>PCs</th>
				<th>Macs</th>
			</tr>
			<tr>
				<td>
					<a href="tooltip.php?id=0">Lower Level</a>
				</td>
				<td>
					<?php echo $floor0_pc_results; ?>
				</td>
				<td>
					<?php echo $floor0_mac_results; ?>
				</td>
			</tr>
			<tr>
				<td>
					<a href="tooltip.php?id=1">First Floor</a>
				</td>
				<td>
					<?php echo $floor1_pc_results; ?>
				</td>
				<td>
					<?php echo $floor1_mac_results; ?>
				</td>
			</tr>
			<tr>
				<td>
					<a href="tooltip.php?id=2">Second Floor</a>
				</td>
				<td>
					<?php echo $floor2_pc_results; ?>
				</td>
				<td>
					<?php echo $floor2_mac_results; ?>
				</td>
			</tr>
			<tr>
				<td>
					<a href="tooltip.php?id=3">Third Floor</a>
				</td>
				<td>
					<?php echo $floor3_pc_results; ?>
				</td>
				<td>
					<?php echo $floor3_mac_results; ?>
				</td>
			</tr>
		</table>
	</div>
	<!--
        Divs were nested in tables and tables in divs. CSS was patched to accomidate this.
        DOM restructured. CSS fixed.
        -->
	<div id="legend" style="display: none">
		<table>
			<tr>
				<td>
					<img src="images/pc-available-20px.png" alt="PC Available"/>
				</td>
				<td>
					PC available
				</td>
			</tr>
			<tr>
				<td>
					<img src="images/pc-unavailable-20px.png" alt="PC Busy"/>
				</td>
				<td>
					PC busy
				</td>
			</tr>
			<tr>
				<td>
					<img src="images/mac-available-20px.png" alt="Mac Available"/>
				</td>
				<td>
					Mac available</td>
			</tr>
			<tr>
				<td>
					<img src="images/mac-unavailable-20px.png" alt="Mac Busy"/>
				</td>
				<td>
					Mac busy
				</td>
			</tr>
			<tr>
				<td>
					<img src="images/pc-available-public-20px.png" alt="Public PC"/>
				</td>
				<td>
					Public PC
				</td>
			</tr>
			<tr>
				<td>
					<img src="images/pc-vm-20px.png" alt="Pilot Machine"/>
				</td>
				<td>
					Pilot Machine
				</td>
			</tr>
			<tr>
				<td>
					<img src="images/microfilm_20px.png" alt="Dedicated Microfilm"/>
				</td>
				<td>
					Dedicated Microfilm
				</td>
			</tr>
			<tr>
				<td>
					<img src="images/maintenance-icon-20px.png" alt="Under Maintenance"/>
				</td>
				<td>
					Under Maintenance
				</td>
			</tr>
		</table>
	</div>
	<div id="dialog-message" title="Server Reply">
		<div id="messageContent"></div>
	</div>
	<div id="add-dialog-message" title="Add Machine Reply">
		<div id="addMessageContent"></div>
	</div>
</div>
<script type="text/javascript" language="javascript" src="tooltip/script.js"></script>
<div id="generic-dialog" title="Message" style="display:none">
	<div id="genericContent"></div>
</div>
<div id="dialog" title="Search By Tag" style="display:none">
	<br>
	<div class="ui-widget">
		<label for="combobox">Tag</label>
		<select id="combobox">
			<option value="">Select one...</option>
		</select>
	</div>
</div>
<div id="addMachineDialog" title="Add Machine" style="display:none">
	<div id="addForm">
		<table style="width: 270px">
			<caption>
				Input Parameters
			</caption>
			<tr>
				<td colspan="2">
					<span id="recordID"></span>
				</td>
			</tr>
			<tr>
				<th>Param.</th>
				<th>Value</th>
			</tr>
			<tr>
				<td>
					<label for="addName">Name</label>
				</td>
				<td>
					<input id="addName" name="newName" type="text">
				</td>
			</tr>
			<tr>
				<td>
					<label for="addTop">Top</label>
				</td>
				<td>
					<input id="addTop" name="addTop" type="text">
				</td>
			</tr>
			<tr>
				<td>
					<label for="addRight">Right</label>
				</td>
				<td>
					<input id="addRight" name="addRight" type="text">
				</td>
			</tr>
			<tr>
				<td>
					<label for="addTableName">Table</label>
				</td>
				<td>
					<input id="addTableName" name="addTableName" type="text">
				</td>
			</tr>
			<tr>
				<td>
					<label for="addSeat">Seat No</label>
				</td>
				<td>
					<input id="addSeat" name="addSeat" type="text">
				</td>
			</tr>
			<tr>
				<td>
					<label for="addFloor">Floor No</label>
				</td>
				<td>
					<select id="addFloor" name="addFloor" class="editorDropdown">
						<option value="0">Lower Level</option>
						<option value="1">First Floor</option>
						<option value="2">Second Floor</option>
						<option value="3">Third Floor</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>
					<label for="addType">Type</label>
				</td>
				<td>
					<select id="addType" name="addType" class="editorDropdown">
						<option value="PC">PC</option>
						<option value="Mac">Mac</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>
					<label for="addPublic">Public?</label>
				</td>
				<td>
					<select id="addPublic" name="newPublic" class="editorDropdown">
						<option value="0">No</option>
						<option value="1">Yes</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>
					<label for="addExcluded">Excluded?</label>
				</td>
				<td>
					<select id="addExcluded" name="newExcluded" class="editorDropdown">
						<option value="0">No</option>
						<option value="1">Yes</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>
					<label for="addDedicated">Dedicated?</label>
				</td>
				<td>
					<select id="addDedicated" name="addDedicated" class="editorDropdown">
						<option value="0">No</option>
						<option value="1">Yes</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>
					<label for="addPilot">Pilot?</label>
				</td>
				<td>
					<select id="addPilot" name="addPilot" class="editorDropdown">
						<option value="0">No</option>
						<option value="1">Yes</option>
					</select>
				</td>
			</tr>
		</table>
	</div>
</div>
</body>
<?php 
 mysqli_close($DB);
?>
</html>
