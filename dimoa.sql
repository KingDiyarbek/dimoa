-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 18 2023 г., 19:46
-- Версия сервера: 8.0.24
-- Версия PHP: 8.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `dimoa`
--

-- --------------------------------------------------------

--
-- Структура таблицы `aksi`
--

CREATE TABLE `aksi` (
  `idAksi` int NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Data` date NOT NULL,
  `Description` varchar(4500) NOT NULL,
  `Image` varchar(1000) NOT NULL,
  `Active` enum('1','0') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `aksi`
--

INSERT INTO `aksi` (`idAksi`, `Name`, `Data`, `Description`, `Image`, `Active`) VALUES
(2, 'Третья пицца за 149 рублей!', '2023-12-02', 'Только в декабре при заказе доставки двух средних или больших пицц - третья средняя пицца на классическом тесте всего за 149 рублей по промокоду 23124!', '', '1'),
(3, 'Дарим бонусы на День Рождения', '2023-12-03', 'У Вас День Рождения? «ПиццаФабрика» дарит 1000 бонусных баллов! Акция доступна всем, у кого зарегистрирован личный кабинет ПиццаФабрики. Для получения бонусных баллов необходимо указать в личном кабинете дату Вашего рождения в формате дд.мм.гг.', 'бонусы на др.jpg', NULL),
(124, 'Дарим бонусы на День Рождения', '2023-12-04', 'Дарим бонусы на День Рождения', '../image/бонусы на др.jpg', NULL),
(125, 'fdfds', '2023-12-14', 'fdfd', '../image/fon_2.jpg', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `idCategory` int NOT NULL,
  `Name_category` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`idCategory`, `Name_category`) VALUES
(1, 'Пицца'),
(2, 'Бургер'),
(3, 'Шаурма'),
(4, 'Роллы'),
(6, 'Салат'),
(7, 'Wok'),
(8, 'Закуски'),
(12, 'Десерты');

-- --------------------------------------------------------

--
-- Структура таблицы `menu`
--

CREATE TABLE `menu` (
  `idMenu` int NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Price` varchar(45) NOT NULL,
  `Description` varchar(5000) NOT NULL,
  `Image` varchar(1000) NOT NULL,
  `Category_idCategory` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `menu`
--

INSERT INTO `menu` (`idMenu`, `Name`, `Price`, `Description`, `Image`, `Category_idCategory`) VALUES
(1, 'По-домашнему', '825', 'Самая уютная пицца: колбаса, огурчики и сыр', '../image/menu', 1),
(2, '5 сыра', '8020', 'Фантастически сырная четверка на томатном соусе', '../image/menu4-syra.jpg', 1),
(3, 'Чизбургер', '310', 'Куриная котлета, огурцы маринованные, салат айсберг, сыр чеддер, помидоры, соус горчица, булочка, соус кетчуп', '', 2),
(6, 'gfdgdfgf', '', '', '../image/menu', 2),
(17, 'fddf', 'dsfds', 'fdfdsfds45', '../image/menu', 1),
(19, 'hgg12134566', '550', '11', '../image/menupo-domashnemu.jpg', 1),
(20, '11', '11', '11', 'image/menucezar.jpg', 1),
(21, 'ff', 'ff', 'ff', '../image/menukaliforniya-s-ugrem.jpg', 2),
(22, '11', '44', '111', 'image/menubarbekyu.jpg', 2),
(24, 'fgf', 'gfgfd', 'gfdgdf', '../image/menubarbekyu.jpg', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `idUser` int NOT NULL,
  `login` varchar(45) DEFAULT NULL,
  `password` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Name` varchar(45) NOT NULL,
  `Surname` varchar(45) NOT NULL,
  `Patronymic` varchar(45) NOT NULL,
  `Post` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Image` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`idUser`, `login`, `password`, `Name`, `Surname`, `Patronymic`, `Post`, `Image`) VALUES
(1, 'admin', 'king2023', 'Дима', 'Момунжанов', 'Пазылжанович', 'Директор', '../imageIMG_20220806_130330.jpg'),
(2, 'king001', 'dima1234', 'Александ', 'Шмид', 'Павлович', 'Администратор', ''),
(3, 'liza', 'liza1234', 'Лиза', 'Павлова', 'Евгеньевна', 'Администратор', '../imageIMG_20220904_003901.jpg'),
(5, 'fdsf', 'dsfds', 'fdsfds', 'dsfd', 'fds', 'dsfds', 'imageIMG_20220806_130330.jpg');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `aksi`
--
ALTER TABLE `aksi`
  ADD PRIMARY KEY (`idAksi`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`idCategory`);

--
-- Индексы таблицы `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`idMenu`),
  ADD KEY `fk_Menu_Category_idx` (`Category_idCategory`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `aksi`
--
ALTER TABLE `aksi`
  MODIFY `idAksi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `idCategory` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `menu`
--
ALTER TABLE `menu`
  MODIFY `idMenu` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `idUser` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `fk_Menu_Category` FOREIGN KEY (`Category_idCategory`) REFERENCES `category` (`idCategory`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
