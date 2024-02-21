<?php
session_start();
$orderData = json_decode(file_get_contents('php://input'), true);
require_once 'connect.php';
$NameProduct = $_POST['products'];
$Itogo = $_POST['phone'];
$Name = $_POST['fullName'];
$Adres = $_POST['address'];
mysqli_query($connect, query:"INSERT INTO `zakaz` (`Name`, `Adres`, `NameProduct`,`Itogo`) VALUES ('$Name', '$Adres', '$NameProduct','$Itogo')");
?>