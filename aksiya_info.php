<?
require_once 'config/connect.php';
$id_aksiya = $_GET['id'];
$aksiya_info = mysqli_query($connect, query:"SELECT * FROM `aksi` WHERE `idAksi` = '$id_aksiya'");
$aksiya_info = mysqli_fetch_assoc($aksiya_info);
print_r($aksiya_info);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../css/aksiya_1.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<header class="header" id="header">
    <div class="container">
        <div class="header_inner">
            <div class="logo">DiMoa</div>
        
            <nav>
                <a href="index.html" class="nav_link">Главная</a>
                <a href="#" class="nav_link">Меню</a>
                <a href="#" class="nav_link">Акции</a>
                <a href="#" class="nav_link"> О нас</a>
            </nav>
        
        
            <div class="corzina"></div>
                    
        </div>
    </div>
</header>

<div class="back_button">
    <a href="../aksii.html" class="back">Назад</a>
</div>

<div class="content">
    <div class="title"><h1><?= $aksiya_info['Name'] ?></h1></div>
    <img class="content_img" src="../image/aksii/1.jpg" alt="">
</div>

<div id="faq">
    <ul>
        <li>
        <input type="checkbox" checked>
        <i></i>
        <h2>Подробные условия акции</h2>
        <p><?= $aksiya_info['Description'] ?></p>
        </li>
    </ul>
</div>

</body> 
</html>