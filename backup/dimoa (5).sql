-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 11 2024 г., 20:28
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
  `Image` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `aksi`
--

INSERT INTO `aksi` (`idAksi`, `Name`, `Data`, `Description`, `Image`) VALUES
(2, 'Третья пицца за 160 рублей!', '2025-01-02', 'Только в декабре при заказе доставки двух средних или больших пицц - третья средняя пицца на классическом тесте всего за 149 рублей по промокоду 23124!', '../image/aksii/1.jpg'),
(3, 'Дарим бонусы на День Рождения', '2023-12-03', 'У Вас День Рождения? «ПиццаФабрика» дарит 1000 бонусных баллов! Акция доступна всем, у кого зарегистрирован личный кабинет ПиццаФабрики. Для получения бонусных баллов необходимо указать в личном кабинете дату Вашего рождения в формате000', '../image/aksii/бонусы на др.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `idCategory` int NOT NULL,
  `Name_category` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Image` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`idCategory`, `Name_category`, `Image`) VALUES
(1, 'Пицца', '../image/menu/picca-main_cat_image-13-26278.jpg'),
(2, 'Бургер', '../image/menu/бургер.jpg'),
(3, 'Шаурма', '../image/menu/шаурма.jpg'),
(6, 'Салат', '../image/menu/салат.jpg'),
(7, 'Wok', '../image/menu/вок.jpg'),
(8, 'Закуска', '../image/menu/закуски.jpg'),
(13, 'Напитки', '../image/menu/напитки.jpg');

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
(2, 'Халида', 'gfdgfd', 'gfdgfd', '', '2023-12-23 16:06:29', 'Прочитано'),
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
(27, '', '', '', '../image/', '2024-01-04 17:53:02', 'Не прочитано'),
(28, 'в', 'в', 'в', '../image/photo_2023-08-27_00-37-09.jpg', '2024-02-25 23:44:13', 'Не прочитано'),
(29, 'г', 'г', 'г', '../image/d53585a956fcdca2d9bf3eba771e1001.mp4', '2024-02-25 23:45:12', 'Не прочитано'),
(30, 'Лидия', 'baikalcentr@gmail.com', 'ы', '../image/', '2024-02-25 23:47:11', 'Не прочитано'),
(31, 'ыы', 'ыыы', 'ы', '../image/', '2024-02-25 23:52:56', 'Не прочитано'),
(32, 'в', 'в', 'вв', '../image/', '2024-02-25 23:53:24', 'Не прочитано'),
(33, 'ы', 'ы', 'ы', '../image/d53585a956fcdca2d9bf3eba771e1001.mp4', '2024-02-25 23:53:50', 'Не прочитано'),
(34, 'мемати', '8951456', '123456', '../image/73Wm99dGMSI.jpg', '2024-02-25 23:59:37', 'Не прочитано'),
(35, 'мемати', '8951456', '123456', '../image/b5488a6cb5693855e77f17312b934fba.jpg', '2024-02-25 23:59:37', 'Не прочитано'),
(36, 'пп', 'пп', 'пп', '../image/d53585a956fcdca2d9bf3eba771e1001.mp4', '2024-02-26 00:00:31', 'Не прочитано'),
(37, 'пп', 'пп', 'пп', '../image/fuIWpFPlpGY.jpg', '2024-02-26 00:00:31', 'Не прочитано'),
(38, '7', '7', '7', '../image/d53585a956fcdca2d9bf3eba771e1001.mp4', '2024-02-26 00:02:49', 'Не прочитано'),
(39, '7', '7', '7', '../image/fuIWpFPlpGY.jpg', '2024-02-26 00:02:49', 'Не прочитано'),
(40, '6', '6', '6', '../image/b5488a6cb5693855e77f17312b934fba.jpg', '2024-02-26 00:06:03', 'Не прочитано'),
(41, '6', '6', '6', '../image/d53585a956fcdca2d9bf3eba771e1001.mp4', '2024-02-26 00:06:03', 'Не прочитано');

-- --------------------------------------------------------

--
-- Структура таблицы `menu`
--

CREATE TABLE `menu` (
  `idMenu` int NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Price` varchar(45) NOT NULL,
  `Description` varchar(5000) NOT NULL,
  `Sostav` varchar(10000) NOT NULL,
  `Image` varchar(1000) NOT NULL,
  `Category_idCategory` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `menu`
--

INSERT INTO `menu` (`idMenu`, `Name`, `Price`, `Description`, `Sostav`, `Image`, `Category_idCategory`) VALUES
(1, 'По-домашнему', '830', 'Моцарелла, ассорти из колбас (ветчина, колбаса полукопченая, колбаса салями), соус фирменный, помидоры свежие, огурцы маринованные, сушеный базилик.', '', '../image/menu/1/po-domashnemu.jpg.jpg', 1),
(2, '4 сыра', '800', 'Томатный соус, моцарелла, сыр гауда, сыр пармезан, сыр с голубой плесенью, сушёный базилик', '', '../image/menu/1/4-syra.jpg.jpg', 1),
(3, 'Чизбургер', '310', 'Куриная котлета, огурцы маринованные, салат айсберг, сыр чеддер, помидоры, соус горчица, булочка, соус кетчуп', '', '../image/menu/2/чизбургер.jpg.jpg', 2),
(6, 'gfdgdfgf', '', '', '', '../image/menu', 2),
(21, 'ff', 'ff', 'ff', '', '../image/menukaliforniya-s-ugrem.jpg', 2),
(24, 'Цезарь ', '500', 'Соус цезарь, моцарелла, курица, салат айсберг, сыр пармезан, помидоры черри, сушёный базилик', '', '../image/menu/1/cezar.jpg.jpg', 1),
(26, 'Маргарита ', '720', 'Моцарелла, помидоры свежие, соус томатный, сушеный базилик.', '', '../image/menu/1/margarita.jpg.jpg', 1),
(27, 'Классическая', '1800', 'Лаваш, курица, чесночный соус, помидор, огурец, морковка по корейски, капуста', '', '../image/menu/3/классическая.jpg.jpg', 3),
(28, 'Барбекю ', '820', 'Тесто дрожжевое, сыр моцарелла, колбаса п/к,соус томатный, мясо свинины в маринаде, помидоры свежие, перец сладкий свежий, соус томатный барбекю, лук репчатый красный, сушеный базилик.', '', '../image/menu/1/barbekyu.jpg.jpg', 1),
(29, 'Сырная ', '580', 'Моцарелла, соус томатный, сушеный базилик.', '', '../image/menu/1/syrnaya.jpg.jpg', 1),
(30, 'Чесночный цыпа ', '805', 'Моцарелла, куриное филе, соус фирменный, помидоры свежие, бекон, чесночное масло, сушеный базилик', '', '../image/menu/1/chesnochnyy-cypa.jpg.jpg', 1),
(31, 'Цезарь с цыплёнком ', '3500', 'Салат листовой, куриное филе грудки, помидоры черри, сыр пармезан, гренки, соус цезарь.', '', '../image/menu/6/cezar-s-indeykoy.jpg.jpg', 6),
(32, 'Цезарь с креветками ', '450', 'Салат айсберг, креветки, помидоры черри, сыр пармезан, гренки, соус цезарь', '', '../image/menu/6/cezar-s-krevetkami.jpg.jpg', 6),
(34, 'Греческий ', '290', 'Огурец, помидор, сладкий перец, сыр фета, салат айсберг, маслины, лук красный, заправка из оливкового масла, зелень', '', '../image/menu/6/grecheskiy.jpg.jpg', 6),
(35, 'Оливье ', '260', 'Картофель, морковь, ветчина, помидоры черри, яйцо, маринованный огурец, зеленый горошек, майонезная заправка, листья шпината.', '', '../image/menu/6/olive.jpg.jpg', 6),
(36, 'Картофель фри ', '230', 'Картофель фри, соль, специи,', '', '../image/menu/8/kartofel-fri-.jpg.jpg', 8),
(37, 'Наггетсы ', '290', 'Наггетсы куриные в панировке', '', '../image/menu/8/naggetsy-.jpg.jpg', 8),
(38, 'Жареный сыр с ягодным соусом ', '400', 'Сырные палочки \"Моцарелла\" в панировке 8шт, с ягодным соусом 25гр', '', '../image/menu/8/zharenyy-syr-.jpg.jpg', 8),
(39, 'Картофель по-деревенски ', '260', 'Картофельные дольки, чеснок, специи\r\n', '', '../image/menu/8/kartofel-po-derevenski-.jpg.jpg', 8),
(42, 'd', 'd', 'd', '', '../image/menu/1/photo_2023-08-27_00-37-33.jpg.jpg', 1);

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
(1, 'admin', 'king2023', 'Александр', 'Иванов', 'Викторович', 'Директор', '../imagephoto_2023-08-27_00-37-38.jpg'),
(2, 'king001', 'dima1234', 'Егор', 'Замэ', 'Игоревич', 'Администратор', '../images-NgVknlUCM.jpg'),
(8, 'Lena213', 'Lena2130', 'Лена', 'Ильянова', 'Михайловна', 'Оператор', '../image3e7efa8e33f24a9bbd73c68d7c2ae208-scaled.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `zakaz`
--

CREATE TABLE `zakaz` (
  `idZakaz` int NOT NULL,
  `Name` varchar(1000) NOT NULL,
  `Adres` varchar(100) NOT NULL,
  `Phone` varchar(100) NOT NULL,
  `NameProduct` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Itogo` varchar(100) NOT NULL,
  `Data` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Новый'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `zakaz`
--

INSERT INTO `zakaz` (`idZakaz`, `Name`, `Adres`, `Phone`, `NameProduct`, `Itogo`, `Data`, `Status`) VALUES
(1, 'Андрей', 'Лагерная 54', '453654', '', '540', '2024-02-25 17:14:56', 'Готово'),
(2, 'Илья', 'Ленина 23', '89536547851', '{\"30\":\"u0427u0435u0441u043du043eu0447u043du044bu0439 u0446u044bu043fu0430 |805|1\"}', '805', '2024-02-25 17:21:04', 'Готово'),
(3, 'Вова', 'Лагерная 21', '8953654521', '{\"2\":\"4 u0441u044bu0440u0430|829|1\"}', '829', '2024-02-25 18:29:04', 'Готово'),
(4, 'Антон', 'Пушкина 20', '89992301452', '{\"1\":\"u041fu043e-u0434u043eu043cu0430u0448u043du0435u043cu0443|830000|1\",\"2\":\"4 u0441u044bu0440u0430|829|1\",\"24\":\"u0426u0435u0437u0430u0440u044c |829|1\",\"29\":\"u0421u044bu0440u043du0430u044f |580|1\",\"30\":\"u0427u0435u0441u043du043eu0447u043du044bu0439 u0446u044bu043fu0430 |805|1\"}', '833043', '2024-02-25 18:30:07', 'Готово'),
(5, 'Вика', 'Островского 12', '899962305412', '{\"29\":\"u0421u044bu0440u043du0430u044f |580|1\"}', '580', '2024-02-25 23:32:34', 'Готово'),
(6, 'Егор', 'Магистральная 54', '526354', '{\"29\":\"\\u0421\\u044b\\u0440\\u043d\\u0430\\u044f |580|1\",\"30\":\"\\u0427\\u0435\\u0441\\u043d\\u043e\\u0447\\u043d\\u044b\\u0439 \\u0446\\u044b\\u043f\\u0430 |805|1\"}', '1385', '2024-02-25 23:35:11', 'Готово'),
(7, 'дима', 'момунжанов', '55241456', '{\"1\":\"\\u041f\\u043e-\\u0434\\u043e\\u043c\\u0430\\u0448\\u043d\\u0435\\u043c\\u0443|830000|1\",\"2\":\"4 \\u0441\\u044b\\u0440\\u0430|829|1\",\"24\":\"\\u0426\\u0435\\u0437\\u0430\\u0440\\u044c |829|1\",\"26\":\"\\u041c\\u0430\\u0440\\u0433\\u0430\\u0440\\u0438\\u0442\\u0430 |720|1\",\"28\":\"\\u0411\\u0430\\u0440\\u0431\\u0435\\u043a\\u044e |820|1\",\"29\":\"\\u0421\\u044b\\u0440\\u043d\\u0430\\u044f |580|1\",\"30\":\"\\u0427\\u0435\\u0441\\u043d\\u043e\\u0447\\u043d\\u044b\\u0439 \\u0446\\u044b\\u043f\\u0430 |805|1\"}', '834583', '2024-02-25 23:37:19', 'Новый'),
(8, 'Дима', 'Ленина 120', '89541236541', '{\"29\":\"\\u0421\\u044b\\u0440\\u043d\\u0430\\u044f |580|3\",\"30\":\"\\u0427\\u0435\\u0441\\u043d\\u043e\\u0447\\u043d\\u044b\\u0439 \\u0446\\u044b\\u043f\\u0430 |805|1\"}', '2545', '2024-02-25 23:40:39', 'Новый'),
(9, 'Лиза', 'Пушкина 20', '601254', '{\"29\":\"\\u0421\\u044b\\u0440\\u043d\\u0430\\u044f |580|2\",\"30\":\"\\u0427\\u0435\\u0441\\u043d\\u043e\\u0447\\u043d\\u044b\\u0439 \\u0446\\u044b\\u043f\\u0430 |805|1\"}', '1965', '2024-02-26 00:06:28', 'Новый'),
(10, 'Руслан', 'Боровая 8', '89501234567', '{\"3\":\"\\u0427\\u0438\\u0437\\u0431\\u0443\\u0440\\u0433\\u0435\\u0440|310|1\"}', '310', '2024-03-01 22:54:45', 'Новый'),
(11, 'павел', 'Лермонтова 21', '124563', 'null', '0', '2024-03-02 16:12:27', 'Новый'),
(12, 'Диярбек', 'ленина 15', '568974', '{\"1\":\"\\u041f\\u043e-\\u0434\\u043e\\u043c\\u0430\\u0448\\u043d\\u0435\\u043c\\u0443|830|1\",\"2\":\"4 \\u0441\\u044b\\u0440\\u0430|800|1\"}', '1630', '2024-03-03 18:57:30', 'Новый'),
(13, 'арсений', 'дальная 45', '442535', '{\"2\":\"4 \\u0441\\u044b\\u0440\\u0430|800|2\",\"24\":\"\\u0426\\u0435\\u0437\\u0430\\u0440\\u044c |500|2\"}', '2600', '2024-03-28 17:33:35', 'Новый'),
(14, 'Павел', 'ленина  7', '45212', '{\"2\":\"4 \\u0441\\u044b\\u0440\\u0430|800|1\",\"34\":\"\\u0413\\u0440\\u0435\\u0447\\u0435\\u0441\\u043a\\u0438\\u0439 |290|1\"}', '1090', '2024-04-09 01:26:14', 'Новый'),
(15, 'd', 'd', 'd', '{\"34\":\"\\u0413\\u0440\\u0435\\u0447\\u0435\\u0441\\u043a\\u0438\\u0439 |290|1\"}', '290', '2024-04-11 16:43:01', 'Новый');

-- --------------------------------------------------------

--
-- Структура таблицы `zakaz1`
--

CREATE TABLE `zakaz1` (
  `idZakaz` int NOT NULL,
  `idProduct` int DEFAULT NULL,
  `Name_product` varchar(100) NOT NULL,
  `Quality` varchar(100) NOT NULL,
  `Summa` varchar(100) NOT NULL,
  `Itogo` varchar(100) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Adres` varchar(1000) NOT NULL,
  `Phone` varchar(100) NOT NULL,
  `Komentariya` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `zakaz1`
--

INSERT INTO `zakaz1` (`idZakaz`, `idProduct`, `Name_product`, `Quality`, `Summa`, `Itogo`, `Name`, `Adres`, `Phone`, `Komentariya`) VALUES
(1, 26, '', '0', '0', '0', '', '', '', ''),
(20, 32, '', 'в', 'в', '3950', 'Полат Алендар', 'РОССИЯ, 156025, Костромская обл, г Кострома, ул Рабочая 9-я, Дом 2/88, кв. 3', '+79950726284', 'в');

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
  ADD KEY `fk_Menu_Category_idx` (`Category_idCategory`),
  ADD KEY `Name` (`Name`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUser`);

--
-- Индексы таблицы `zakaz`
--
ALTER TABLE `zakaz`
  ADD PRIMARY KEY (`idZakaz`);

--
-- Индексы таблицы `zakaz1`
--
ALTER TABLE `zakaz1`
  ADD PRIMARY KEY (`idZakaz`),
  ADD KEY `idProduct` (`idProduct`),
  ADD KEY `Name_product` (`Name_product`),
  ADD KEY `Name_product_2` (`Name_product`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `aksi`
--
ALTER TABLE `aksi`
  MODIFY `idAksi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `idCategory` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `komentariya`
--
ALTER TABLE `komentariya`
  MODIFY `idKomentariya` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT для таблицы `menu`
--
ALTER TABLE `menu`
  MODIFY `idMenu` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `idUser` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `zakaz`
--
ALTER TABLE `zakaz`
  MODIFY `idZakaz` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `zakaz1`
--
ALTER TABLE `zakaz1`
  MODIFY `idZakaz` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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