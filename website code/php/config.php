<?php
$dbservername = "cloud-mafia-database.cthtlpokzi4f.us-east-1.rds.amazonaws.com";
$dbusername = "admin";
$dbpassword = "12345678";
$dbname="cancer_detection";
$conn = mysqli_connect($dbservername, $dbusername, $dbpassword,$dbname);


if ( !$conn ) {
    echo ( 'Did not connect: ' . mysqli_connect_error() ); 
}

?>
