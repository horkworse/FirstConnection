-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 01 2021 г., 09:11
-- Версия сервера: 5.7.20
-- Версия PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `fs`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Courses`
--

CREATE TABLE `Courses` (
  `Id` int(11) NOT NULL,
  `CourseName` varchar(20) DEFAULT NULL,
  `TeacherLastName` varchar(20) DEFAULT NULL,
  `AverageOverallRating` float DEFAULT NULL,
  `AverageParam1` float DEFAULT NULL,
  `AverageParam2` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Courses`
--

INSERT INTO `Courses` (`Id`, `CourseName`, `TeacherLastName`, `AverageOverallRating`, `AverageParam1`, `AverageParam2`) VALUES
(1, 'Матеша', 'Шапарь', 2, 2, 2),
(2, 'Физон', 'Говнов', 3.5, 3.5, 3.5);

-- --------------------------------------------------------

--
-- Структура таблицы `UsersRewiew`
--

CREATE TABLE `UsersRewiew` (
  `Id` int(11) NOT NULL,
  `AcademicGroup` varchar(20) DEFAULT NULL,
  `FirstName` varchar(20) DEFAULT NULL,
  `LastName` varchar(20) DEFAULT NULL,
  `CourseName` varchar(20) DEFAULT NULL,
  `TeacherLastName` varchar(20) DEFAULT NULL,
  `CourseId` tinyint(4) DEFAULT NULL,
  `OverallRating` tinyint(4) DEFAULT NULL,
  `TextRewiew` tinyint(4) DEFAULT NULL,
  `Param1` tinyint(4) DEFAULT NULL,
  `Param2` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `UsersRewiew`
--

INSERT INTO `UsersRewiew` (`Id`, `AcademicGroup`, `FirstName`, `LastName`, `CourseName`, `TeacherLastName`, `CourseId`, `OverallRating`, `TextRewiew`, `Param1`, `Param2`) VALUES
(1, 'РИ-100001', 'иванов', 'иван', 'Матеша', 'Шапарь', 1, NULL, NULL, 0, 0),
(2, 'РИ-100001', 'иванов', 'иван', 'Матеша', 'Шапарь', 1, NULL, NULL, 1, 1),
(3, 'РИ-100001', 'иванов', 'иван', 'Матеша', 'Шапарь', 1, NULL, NULL, 2, 2),
(4, 'РИ-100001', 'иванов', 'иван', 'Физон', 'Агафонов', 2, NULL, NULL, 3, 3),
(5, 'РИ-100001', 'иванов', 'иван', 'Физон', 'Агафонов', 2, NULL, NULL, 4, 4),
(6, 'РИ-100001', 'иванов', 'иван', 'Матеша', 'Шапарь', 1, NULL, NULL, 5, 5);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Courses`
--
ALTER TABLE `Courses`
  ADD PRIMARY KEY (`Id`);

--
-- Индексы таблицы `UsersRewiew`
--
ALTER TABLE `UsersRewiew`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Courses`
--
ALTER TABLE `Courses`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `UsersRewiew`
--
ALTER TABLE `UsersRewiew`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
