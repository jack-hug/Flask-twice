-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-08-23 16:44:49
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flask-twice_dev`
--

-- --------------------------------------------------------

--
-- 表的结构 `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `body` text,
  `body_html` text,
  `timestamp` datetime DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `comments`
--

INSERT INTO `comments` (`id`, `body`, `body_html`, `timestamp`, `author_id`, `post_id`, `disabled`) VALUES
(1, '什么东西？', '什么东西？', '2019-08-23 03:07:37', 3, 139, 1),
(2, '什么东西？', '什么东西？', '2019-08-23 03:08:10', 3, 139, 1),
(3, 'COMMENT', 'COMMENT', '2019-08-23 03:08:17', 3, 139, NULL),
(4, '为什么修改', '为什么修改', '2019-08-23 03:08:49', 3, 139, NULL),
(5, '然而', '然而', '2019-08-23 03:08:58', 3, 139, NULL),
(6, '原来', '原来', '2019-08-23 03:09:13', 3, 139, NULL),
(7, '什么？', '什么？', '2019-08-23 03:09:20', 3, 139, NULL),
(8, '事情的经过就是这样', '事情的经过就是这样', '2019-08-23 03:17:24', 3, 139, NULL),
(9, '什么鬼', '什么鬼', '2019-08-23 03:20:34', 3, 140, 0),
(10, '这不要发这些无论的东西。', '这不要发这些无论的东西。', '2019-08-23 03:21:03', 1, 140, 0),
(11, '原来', '原来', '2019-08-23 03:24:56', 1, 140, 0),
(12, 'COMMENT', 'COMMENT', '2019-08-23 03:24:58', 1, 140, NULL),
(13, '什么东西？', '什么东西？', '2019-08-23 03:25:00', 1, 140, NULL),
(14, '然而', '然而', '2019-08-23 03:25:01', 1, 140, 0),
(15, 'COMMENT', 'COMMENT', '2019-08-23 03:25:03', 1, 140, NULL),
(16, '什么东西？', '什么东西？', '2019-08-23 03:25:05', 1, 140, 0),
(17, '什么东西？', '什么东西？', '2019-08-23 03:25:23', 1, 135, 1),
(18, '努力，奋斗！！！', '努力，奋斗！！！', '2019-08-23 03:25:41', 1, 129, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `ix_comments_timestamp` (`timestamp`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- 限制导出的表
--

--
-- 限制表 `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
