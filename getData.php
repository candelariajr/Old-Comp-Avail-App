<?php
/**
 * Created by PhpStorm.
 * User: Frayo
 * Date: 1/16/2017
 * Time: 8:27 PM
 */
require_once "dbauth.config";
$conn = new mysqli("localhost", $user, $password, $database);
if($conn->connect_error){
    die("Connection Failed!");
}

if(isset($_GET['floor']) && isset($_GET['name'])){
    GLOBAL $conn;
    $floor = filter($_GET['floor']);
    $name = filter($_GET['name']);
    $sql = "
        SELECT
          id,
          computer_name,
          top_pos,
          left_pos,
          table_name,
          seat,
          floor,
          computer_type,
          is_public,
          is_excluded,
          is_dedicated,
          is_pilot
        from
          compstatus
        where
          computer_name = '$name'
          and floor = $floor";
    $result = $conn->query($sql);
    outputJSONData($result);
    $conn->close();
}

if(isset($_GET["id"])){
    GLOBAL $conn;
    $id = filter($_GET['id']);
    $sql = "SELECT id, computer_name, top_pos, left_pos, table_name, seat, floor, computer_type, is_public, is_excluded, is_dedicated, is_pilot  from compstatus where id = $id";
    $result = $conn->query($sql);
    outputJSONData($result);
    $conn->close();
}

if(isset($_GET["names"])){
    GLOBAL $conn;
    $sql = "Select id, computer_name from compstatus order by computer_name asc";
    $result = $conn->query($sql);
    outputJSONData($result);
    $conn->close();
}

function filter($inputString){
    return preg_replace("/[^a-zA-Z0-9-_ \"\n\"]/", "", $inputString);
}

function outputJSONData($result){
    if(get_class($result) == "mysqli_result"){
        $columns = array();
        $resultsOutput = array();
        while($property = mysqli_fetch_field($result)){
            $columns[] = $property->name;
        }
        while($row = $result->fetch_assoc()){
            $resultRow = array();
            for($i = 0; $i < sizeof($columns); $i++){
                $resultRow[$columns[$i]] = $row[$columns[$i]];
            }
            array_push($resultsOutput, $resultRow);
        }
        echo json_encode(array("data" => $resultsOutput));
    }
    else{
        echo json_encode(array("errorMessage" => "Not a valid MySQLi Object!"));
    }
}