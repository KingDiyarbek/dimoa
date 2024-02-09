-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 21 2024 г., 23:46
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
(2, 'Третья пицца за 160 рублей!', '2024-01-02', 'Только в декабре при заказе доставки двух средних или больших пицц - третья средняя пицца на классическом тесте всего за 149 рублей по промокоду 23124!', '../image/aksii/1.jpg', '1'),
(3, 'Дарим бонусы на День Рождения', '2023-12-03', 'У Вас День Рождения? «ПиццаФабрика» дарит 1000 бонусных баллов! Акция доступна всем, у кого зарегистрирован личный кабинет ПиццаФабрики. Для получения бонусных баллов необходимо указать в личном кабинете дату Вашего рождения в формате000', '../image/aksii/12.png', NULL),
(124, 'Дарим бонусы на День Рождения', '2023-12-04', 'Дарим бонусы на День Рождения', '../image/aksii/бонусы на др.jpg', NULL);

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
(8, 'Закуски');

-- --------------------------------------------------------

--
-- Структура таблицы `komentariya`
--

CREATE TABLE `komentariya` (
  `idKomentariya` int NOT NULL,
  `Name` varchar(100) NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `komentariya` varchar(5000) NOT NULL,
  `File` varchar(1000) NOT NULL,
  `Date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` varchar(45) NOT NULL DEFAULT 'Не прочитано'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `komentariya`
--

INSERT INTO `komentariya` (`idKomentariya`, `Name`, `email`, `komentariya`, `File`, `Date`, `Status`) VALUES
(1, 'fd', 'fds', 'fds', '', '2023-12-23 16:06:29', 'Прочитано'),
(2, 'Халида', 'gfdgfd', 'gfdgfd', '', '2023-12-23 16:06:29', 'прочитано'),
(3, 'Авазбек', 'sanobar.yusuf2023@gmail.com', 'gf', '../image/photo_2023-08-27_00-36-30.jpg', '2023-12-23 16:06:29', 'Прочитано'),
(4, 'ghf', 'sanobar.yusuf2023@gmail.com', 'gfdg', '12.png', '2023-12-23 16:06:29', 'Не прочитано'),
(5, 'Халида', 'sanobar.yusuf2023@gmail.com', 'uytt', 'photo_2023-08-27_00-37-27 (2).jpg', '2023-12-23 16:07:10', 'Не прочитано'),
(6, 'Халида', 'sanobar.yusuf2023@gmail.com', '000', 'd53585a956fcdca2d9bf3eba771e1001.mp4', '2023-12-23 16:09:01', 'Не прочитано'),
(7, 'Диярбек', '895364633363', 'gfdgf', 'd53585a956fcdca2d9bf3eba771e1001.mp4', '2023-12-23 17:27:51', 'Прочитано'),
(8, 'Имона', '5555', '0252156', '../image/d53585a956fcdca2d9bf3eba771e1001.mp4', '2023-12-23 17:28:39', 'Прочитано'),
(9, 'Пазылжан', '1212', 'Таким образом, постоянный количественный рост и сфера нашей активности представляет собой интересный эксперимент проверки экономической целесообразности принимаемых решений. Задача организации, в особенности же повышение уровня гражданского сознания обеспечивает широкому кругу специалистов участие в формировании дальнейших направлений развитая системы массового участия? Повседневная практика показывает, что рамки и место обучения кадров требует от нас анализа системы масштабного изменения ряда параметров.\r\n\r\nДорогие друзья, новая модель организационной деятельности требует определения и уточнения позиций, занимаемых участниками в отношении поставленных задач. Таким образом, консультация с профессионалами из IT обеспечивает актуальность форм воздействия! Значимость этих проблем настолько очевидна, что курс на социально-ориентированный национальный проект влечет за собой процесс внедрения и модернизации всесторонне сбалансированных нововведений! Повседневная практика показывает, что постоянный количественный рост и сфера нашей активности позволяет выполнить важнейшие задания по разработке всесторонне сбалансированных нововведений!\r\n\r\nДорогие друзья, постоянный количественный рост и сфера нашей активности позволяет оценить значение экономической целесообразности принимаемых решений? Разнообразный и богатый опыт социально-экономическое развитие в значительной степени обуславливает создание позиций, занимаемых участниками в отношении поставленных задач. Повседневная практика показывает, что реализация намеченного плана развития требует от нас анализа форм воздействия! Значимость этих проблем настолько очевидна, что сложившаяся структура организации позволяет оценить значение соответствующих условий активизации.\r\n\r\nРазнообразный и богатый опыт постоянный количественный рост и сфера нашей...', '../image/d53585a956fcdca2d9bf3eba771e1001.mp4', '2023-12-23 17:29:45', 'Прочитано'),
(10, 'Санабар', 'sanobar.yusuf2023@gmail.com', 'лдооооооооооооооооооооо', 'cool-background.png', '2023-12-24 00:37:45', 'Не прочитано'),
(11, 'Бехрусбек', '123', 'авыыы', 'fon_4.jpg', '2023-12-24 00:39:26', 'Не прочитано'),
(12, 'Момунжанов', '455555555555', '', '../image/12.png', '2023-12-24 00:42:42', 'Прочитано'),
(13, 'папа', 'павпва', 'пава', '../image/photo_2023-08-27_00-37-27.jpg', '2023-12-24 19:15:50', 'Не прочитано'),
(14, '', '', '', '../image/photo_2023-08-27_00-37-36.jpg', '2023-12-27 22:51:38', 'Не прочитано'),
(15, 'Пазылжан', 'fddddd', 'dd', '../image/Array', '2023-12-27 22:57:57', 'Не прочитано'),
(16, 'Пазылжан', 'fddddd', 'dd', '../image/Array', '2023-12-27 22:59:39', 'Не прочитано'),
(17, 'Пазылжан', 'fddddd', 'dd', '../image/Array', '2023-12-27 22:59:50', 'Не прочитано'),
(18, 'Пазылжан', 'fddddd', 'dd', '../image/Array', '2023-12-27 22:59:55', 'Не прочитано'),
(19, 'Пазылжан', 'fddddd', 'dd', '../image/Array', '2023-12-27 23:00:03', 'Не прочитано'),
(20, 'Пазылжан', 'ds', '', '../image/photo_2023-08-27_00-37-33.jpg', '2023-12-27 23:00:48', 'Не прочитано'),
(21, '', '', '', '../image/', '2023-12-31 17:07:44', 'Не прочитано'),
(22, '', '', '', '../image/', '2023-12-31 17:07:47', 'Не прочитано'),
(23, 'па', 'пав', 'пав', '../image/', '2023-12-31 17:07:52', 'Не прочитано'),
(24, '', '', '', '../image/', '2023-12-31 17:09:41', 'Не прочитано'),
(25, 'gf', '', '', '../image/', '2023-12-31 17:09:44', 'Не прочитано'),
(26, '', '', '', '../image/', '2023-12-31 17:13:41', 'Не прочитано'),
(27, '', '', '', '../image/', '2024-01-04 17:53:02', 'Не прочитано');

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
(1, 'По-домашнему', '83000', 'Моцарелла, ассорти из колбас (ветчина, колбаса полукопченая, колбаса салями), соус фирменный, помидоры свежие, огурцы маринованные, сушеный базилик.', '../image/menu/1/po-domashnemu.jpg.jpg', 1),
(2, '4 сыра', '829', 'Томатный соус, моцарелла, сыр гауда, сыр пармезан, сыр с голубой плесенью, сушёный базилик', '../image/menu/1/4-syra.jpg.jpg', 1),
(3, 'Чизбургер', '310', 'Куриная котлета, огурцы маринованные, салат айсберг, сыр чеддер, помидоры, соус горчица, булочка, соус кетчуп', '../image/menu/2/чизбургер.jpg.jpg', 2),
(6, 'gfdgdfgf', '', '', '../image/menu', 2),
(19, 'Пепперони ', '829', 'Моцарелла, колбаса пепперони (острая), соус томатный, сушеный базилик.', '../image/menu/1/pepperoni.jpg.jpg', 1),
(21, 'ff', 'ff', 'ff', '../image/menukaliforniya-s-ugrem.jpg', 2),
(24, 'Цезарь ', '829', 'Соус цезарь, моцарелла, курица, салат айсберг, сыр пармезан, помидоры черри, сушёный базилик', '../image/menu/1/cezar.jpg.jpg', 1),
(26, 'Маргарита ', '720', 'Моцарелла, помидоры свежие, соус томатный, сушеный базилик.', '../image/menu/1/margarita.jpg.jpg', 1),
(27, 'Классическая', '180', 'Лаваш, курица, чесночный соус, помидор, огурец, морковка по корейски, капуста', '../image/menu/3/классическая.jpg.jpg', 3),
(28, 'Барбекю ', '820', 'Тесто дрожжевое, сыр моцарелла, колбаса п/к,соус томатный, мясо свинины в маринаде, помидоры свежие, перец сладкий свежий, соус томатный барбекю, лук репчатый красный, сушеный базилик.', '../image/menu/1/barbekyu.jpg.jpg', 1),
(29, 'Сырная ', '580', 'Моцарелла, соус томатный, сушеный базилик.', '../image/menu/1/syrnaya.jpg.jpg', 1),
(30, 'Чесночный цыпа ', '805', 'Моцарелла, куриное филе, соус фирменный, помидоры свежие, бекон, чесночное масло, сушеный базилик', '../image/menu/1/chesnochnyy-cypa.jpg.jpg', 1),
(31, 'Цезарь с цыплёнком ', '350', 'Салат листовой, куриное филе грудки, помидоры черри, сыр пармезан, гренки, соус цезарь.', '../image/menu/6/cezar-s-indeykoy.jpg.jpg', 6),
(32, 'Цезарь с креветками ', '450', 'Салат айсберг, креветки, помидоры черри, сыр пармезан, гренки, соус цезарь', '../image/menu/6/cezar-s-krevetkami.jpg.jpg', 6),
(34, 'Греческий ', '290', 'Огурец, помидор, сладкий перец, сыр фета, салат айсберг, маслины, лук красный, заправка из оливкового масла, зелень', '../image/menu/6/grecheskiy.jpg.jpg', 6),
(35, 'Оливье ', '260', 'Картофель, морковь, ветчина, помидоры черри, яйцо, маринованный огурец, зеленый горошек, майонезная заправка, листья шпината.', '../image/menu/6/olive.jpg.jpg', 6),
(36, 'Картофель фри ', '230', 'Картофель фри, соль, специи,', '../image/menu/8/kartofel-fri-.jpg.jpg', 8),
(37, 'Наггетсы ', '290', 'Наггетсы куриные в панировке', '../image/menu/8/naggetsy-.jpg.jpg', 8),
(38, 'Жареный сыр с ягодным соусом ', '400', 'Сырные палочки \"Моцарелла\" в панировке 8шт, с ягодным соусом 25гр', '../image/menu/8/zharenyy-syr-.jpg.jpg', 8),
(39, 'Картофель по-деревенски ', '260', 'Картофельные дольки, чеснок, специи\r\n', '../image/menu/8/kartofel-po-derevenski-.jpg.jpg', 8);

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
(1, 'admin', 'king2023', 'Дима', 'Момунжанов', 'Пазылжанович', 'Директор', '../imagephoto_2023-08-27_00-37-38.jpg'),
(2, 'king001', 'dima1234', '45646564546', 'Шмид', 'Павлович', 'Администратор', '../image'),
(8, 'Lena213', 'Lena213', 'Лена', 'Ильянова', 'Игопевна', 'Оператор', '../image/sotrudnik/');

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
-- Индексы таблицы `komentariya`
--
ALTER TABLE `komentariya`
  ADD PRIMARY KEY (`idKomentariya`);

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
  MODIFY `idAksi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `idCategory` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `komentariya`
--
ALTER TABLE `komentariya`
  MODIFY `idKomentariya` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблицы `menu`
--
ALTER TABLE `menu`
  MODIFY `idMenu` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `idUser` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
