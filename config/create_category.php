<?php
session_start();
require_once 'connect.php';
$Name = $_POST['Name'];
mysqli_query($connect, query:"INSERT INTO `category` (`Name_category`) VALUES ('$Name')");
header('Location: ' . $_SERVER['HTTP_REFERER']);
?>