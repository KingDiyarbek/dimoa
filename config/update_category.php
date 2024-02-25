<?php
session_start();
require_once 'connect.php';
$id_category = $_POST['id_category'];
$Name = $_POST['Name'];
mysqli_query($connect, query:"UPDATE `category` SET `Name_category` = '$Name' WHERE `category`.`idCategory` = '$id_category'");

if ($_SESSION['user']['Post'] == 'Администратор') {
    // Если пользователь - администратор, перенаправляем его на страницу администратора
    header('Location: ../user/category.php');
} else {
    // Иначе, если пользователь - обычный пользователь, перенаправляем его на страницу пользователя
    header('Location: ../admin/category.php');
}

// Важно: после вызова header() следует прервать выполнение скрипта
exit;
?>