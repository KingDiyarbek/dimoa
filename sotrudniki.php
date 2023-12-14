<?php
session_start();
require_once 'config/connect.php';
$result_sidebar = mysqli_query($connect, query:'SELECT * FROM `category`');
$result_pizza = mysqli_query($connect, query:"SELECT * FROM `menu`");
$result_aksii = mysqli_query($connect, query:'SELECT * FROM `aksi`');
$result_user = mysqli_query($connect, query:'SELECT * FROM `user`');
if (!isset($_SESSION['admin'])) {
    header('Location: admin.php');
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/sotrudnik.css">
    <title>Document</title>
</head>
<body>
<div class="user">
    <div class="user_content">
        <h2><?= $_SESSION['admin']['Name'] ?> <?= $_SESSION['admin']['Surname'] ?> <?= $_SESSION['admin']['Patronymic'] ?> </h2>
        <a class="btn_user" href="config/logout.php">ВЫХОД</a>
    </div>

</div>
<div class="sidebar_menu">
    <h2>DIMOA</h2>
    <div class="sidebar_content">
        <ul>
            <li><a href="">Сотрудники</a></li>
            <li><a href="profile.php">Акции</a></li>
        </ul>
            <?php
                while ($sidebar = mysqli_fetch_assoc($result_sidebar))
                {
                    ?>
                        <ul>
                            <button class="modal__close">&#10006;</button>  
                            <li><button class="modal__close">&#10006;</button><a href="tovar.php?id=<?= $sidebar['idCategory'] ?>"><?= $sidebar['Name']; ?></a></li>
                            
                        </ul>
                    <?php
                }
            ?>
        <button class="sidebar_create">+</button>
    </div>
</div>
<div class="tovar">
    <div class="container_tovar">
        <div class="aksi_card">
                <?php
                    while ($sotrudnik = mysqli_fetch_assoc($result_user))
                    {
                        ?>
                            <div class="card-container">
                                <img class="round" src="https://randomuser.me/api/portraits/women/79.jpg" alt="user" />
                                <h2><?= $sotrudnik['Surname'] ?> <?= $sotrudnik['Name'] ?> <?= $sotrudnik['Patronymic'] ?></h2>
                                <h3><?= $sotrudnik['Post']?></h3>
                                <div class="login">
                                    <h4>Логин:<?= $sotrudnik['login']?></h4>
                                    <h4>Пароль:<?= $sotrudnik['password']?></h4>
                                </div>
                                <div class="skills">
                                        <a class="primary" href="">Удалить</a>
                                        <a class="primary ghost" href="">Изменить</a>
                                </div>
                            </div>
                        
                        <?php
                    }
                ?>
                    <button class="user_create">+</button>
            </div>    
    </div>
    
</div>
<div class="create">
    <div class="container_create">
        <h1>Добавление категории</h1>
        <form action="config/create_category.php" method="post">
            <input type="text" name="Name" placeholder="Названия">
            <button type="submit">Добавить</button>
        </form>
        <button class="modal__close">&#10006;</button>
    </div>
</div>

<div class="create_user">
    <div class="container_create_user">
        <h1>Добавление сотрудника</h1>
        <div class="content_create_user"> 
            <form action="config/create_aksi.php" method="post"  enctype="multipart/form-data">
                <label for="Surname">Фамилия</label>
                <input type="text" name="Name">
                <label for="Name">Имя</label>
                <input type="text" name="Date">
                <label for="Patronymic">Очество</label>
                <input type="text" name="Patronymic">
                <label for="Image">Фотография</label>
                <input type="file" name="file">
                <label for="login">Логин</label>
                <input type="text" name="login">
                <label for="password">Пароль</label>
                <input type="text">
                <button type="submit">Добавить</button>
            </form>
            <button class="modal__close">&#10006;</button>
        </div>
        </div>
</div>
<script src="js/sotrudniki.js"></script>
</body>
</html>