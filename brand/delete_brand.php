<?php 
session_start();
require '../db.php';

$id = $_GET['id'];

$delete = "DELETE FROM brands WHERE id=$id";
$delete_result  = mysqli_query($db_connect, $delete);

$_SESSION['del'] = "Brand Content Deleted!";
header('location:add_brand.php');

?>