<?php
session_start();
require_once 'connect.php';

// Получаем данные из POST-запроса
$NameProduct = $_POST['products']; // Правильно получаем выбранные товары
$Itogo = $_POST['total']; // Здесь берем общую сумму заказа из скрытого поля
$Name = $_POST['fullName'];
$Adres = $_POST['address'];

// Выполняем запрос к базе данных для добавления заказа
mysqli_query($connect, "INSERT INTO `zakaz` (`idZakaz`, `Name`, `Adres`, `NameProduct`, `Itogo`) VALUES (NULL, '$Name', '$Adres', '$NameProduct', '$Itogo')");
?>