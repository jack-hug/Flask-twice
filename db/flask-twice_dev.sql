-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-08-15 17:11:03
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
-- 表的结构 `alembic_version`
--

CREATE TABLE `alembic_version` (
  `version_num` varchar(32) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- 转存表中的数据 `alembic_version`
--

INSERT INTO `alembic_version` (`version_num`) VALUES
('cf79b0bcd9db');

-- --------------------------------------------------------

--
-- 表的结构 `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text,
  `timestamp` datetime DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `posts`
--

INSERT INTO `posts` (`id`, `body`, `timestamp`, `author_id`) VALUES
(1, '这是第一篇文章', '2019-08-15 08:51:38', 1),
(2, '这是我写的第二篇', '2019-08-15 08:52:07', 2),
(3, '\r\n{% block page_content %}\r\n<div class="page-header">\r\n    <h1>Hello,\r\n        {% if current_user.is_authenticated %}{{ current_user.username }}!\r\n            <p><a href="{{ url_for(\'auth.change_password\') }}" style="font-size: 14px">修改密码</a></p>\r\n            <p><a href="{{ url_for(\'auth.change_email_request\') }}" style="font-size: 14px">修改邮箱</a></p>\r\n        {% else %}Stranger{% endif %}\r\n    </h1>\r\n</div>\r\n<div>', '2019-08-15 08:59:07', 2);

-- --------------------------------------------------------

--
-- 表的结构 `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `default` tinyint(1) DEFAULT NULL,
  `permissions` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `roles`
--

INSERT INTO `roles` (`id`, `name`, `default`, `permissions`) VALUES
(1, 'User', 1, 7),
(2, 'Moderator', 0, 15),
(3, 'Administrator', 0, 255);

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(64) DEFAULT NULL,
  `username` varchar(64) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `password_hash` varchar(128) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `location` varchar(64) DEFAULT NULL,
  `about_me` text,
  `last_seen` datetime DEFAULT NULL,
  `member_since` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `role_id`, `password_hash`, `confirmed`, `name`, `location`, `about_me`, `last_seen`, `member_since`) VALUES
(1, '15078843336@163.com', 'admi', 3, 'pbkdf2:sha256:150000$ioAEWO0b$e96544da90c570c466134ca46cc14d78c9cc54e09c8193b0ed5c83b30a91c5d5', 1, '免费领取人参五味子颗粒', '钦州', 'ddd', '2019-08-15 08:51:38', '2019-08-15 08:47:05'),
(2, '46361381@qq.com', 'jack', 1, 'pbkdf2:sha256:150000$UWSjdfzE$6ddb7c3f0377393e5893be9edde38d77e3ff50d82e8b5840f67305b0c2bdd537', 1, '梁增晃', '南宁', 'f', '2019-08-15 08:59:07', '2019-08-15 08:47:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alembic_version`
--
ALTER TABLE `alembic_version`
  ADD PRIMARY KEY (`version_num`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `ix_posts_timestamp` (`timestamp`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `ix_roles_default` (`default`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ix_users_username` (`username`),
  ADD UNIQUE KEY `ix_users_email` (`email`),
  ADD KEY `role_id` (`role_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 限制导出的表
--

--
-- 限制表 `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`);

--
-- 限制表 `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
