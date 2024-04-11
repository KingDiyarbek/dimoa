<?php
session_start();
require_once 'connect.php';

// Получаем данные из POST-запроса
$NameProduct = json_encode($_POST['products']); // Преобразуем массив в строку JSON
$Itogo = $_POST['total']; // Получаем общую сумму заказа из скрытого поля
$Name = $_POST['fullName'];
$Adres = $_POST['address'];
$Phone = $_POST['phone'];

// Экранируем специальные символы в данных, чтобы избежать SQL-инъекций
$NameProduct = mysqli_real_escape_string($connect, $NameProduct);

// Выполняем запрос к базе данных для добавления заказа
$query = "INSERT INTO `zakaz1` (`idZakaz`, `idProduct`, `Quality`, `Summa`, `Itogo`, `Name`, `Adres`, `Phone`, `Komentariya`) VALUES (NULL, '21', 'в', 'в', 'в', 'в', 'в', 'в', 'в')";

// Выполняем запрос
$result = mysqli_query($connect, $query);
?>