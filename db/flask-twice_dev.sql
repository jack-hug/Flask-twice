-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-08-16 17:12:32
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
('5daf8c7786a8');

-- --------------------------------------------------------

--
-- 表的结构 `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text,
  `timestamp` datetime DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `body_html` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `posts`
--

INSERT INTO `posts` (`id`, `body`, `timestamp`, `author_id`, `body_html`) VALUES
(1, '这是第一篇文章', '2019-08-15 08:51:38', 1, NULL),
(2, '这是我写的第二篇', '2019-08-15 08:52:07', 2, NULL),
(3, '\r\n{% block page_content %}\r\n<div class="page-header">\r\n    <h1>Hello,\r\n        {% if current_user.is_authenticated %}{{ current_user.username }}!\r\n            <p><a href="{{ url_for(\'auth.change_password\') }}" style="font-size: 14px">修改密码</a></p>\r\n            <p><a href="{{ url_for(\'auth.change_email_request\') }}" style="font-size: 14px">修改邮箱</a></p>\r\n        {% else %}Stranger{% endif %}\r\n    </h1>\r\n</div>\r\n<div>', '2019-08-15 08:59:07', 2, NULL),
(4, '啥东西', '2019-08-16 00:42:22', 3, NULL),
(5, '学习flask，使我快乐\r\n', '2019-08-16 01:05:31', 1, NULL),
(6, '什么时候才能真正掌握flask', '2019-08-16 01:05:54', 2, NULL),
(7, 'Vestibulum sed magna at nunc commodo placerat. Curabitur convallis.', '2019-08-08 00:00:00', 56, NULL),
(8, 'Nam dui. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Pellentesque eget nunc.', '2019-08-06 00:00:00', 47, NULL),
(9, 'Integer tincidunt ante vel ipsum. Nunc rhoncus dui vel sem. Maecenas tincidunt lacus at velit.', '2019-07-28 00:00:00', 94, NULL),
(10, 'Phasellus sit amet erat. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.', '2019-08-13 00:00:00', 55, NULL),
(11, 'Cras pellentesque volutpat dui. Nunc rhoncus dui vel sem.', '2019-08-02 00:00:00', 3, NULL),
(12, 'Aliquam sit amet diam in magna bibendum imperdiet. In hac habitasse platea dictumst. Sed sagittis.', '2019-08-11 00:00:00', 16, NULL),
(13, 'Donec ut mauris eget massa tempor convallis.', '2019-08-14 00:00:00', 84, NULL),
(14, 'Praesent lectus. Suspendisse ornare consequat lectus. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', '2019-08-05 00:00:00', 71, NULL),
(15, 'Sed vel enim sit amet nunc viverra dapibus.', '2019-07-29 00:00:00', 96, NULL),
(16, 'Nulla mollis molestie lorem. Aliquam quis turpis eget elit sodales scelerisque. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante.', '2019-08-14 00:00:00', 24, NULL),
(17, 'Aenean fermentum. Duis at velit eu est congue elementum.', '2019-08-11 00:00:00', 10, NULL),
(18, 'In hac habitasse platea dictumst.', '2019-08-11 00:00:00', 64, NULL),
(19, 'Praesent blandit. Maecenas pulvinar lobortis est.', '2019-08-13 00:00:00', 57, NULL),
(20, 'Aliquam sit amet diam in magna bibendum imperdiet. Ut at dolor quis odio consequat varius.', '2019-07-30 00:00:00', 72, NULL),
(21, 'Duis bibendum.', '2019-07-30 00:00:00', 5, NULL),
(22, 'Mauris lacinia sapien quis libero.', '2019-08-09 00:00:00', 15, NULL),
(23, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Curabitur convallis. Proin at turpis a pede posuere nonummy.', '2019-08-12 00:00:00', 88, NULL),
(24, 'Aliquam sit amet diam in magna bibendum imperdiet. Nullam molestie nibh in lectus.', '2019-08-05 00:00:00', 94, NULL),
(25, 'Pellentesque viverra pede ac diam. Suspendisse ornare consequat lectus.', '2019-08-10 00:00:00', 4, NULL),
(26, 'Nullam porttitor lacus at turpis. Aenean auctor gravida sem.', '2019-08-09 00:00:00', 88, NULL),
(27, 'Nulla ut erat id mauris vulputate elementum. Quisque porta volutpat erat. Ut at dolor quis odio consequat varius.', '2019-08-12 00:00:00', 6, NULL),
(28, 'Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam non mauris.', '2019-08-14 00:00:00', 21, NULL),
(29, 'Nam dui. Vivamus in felis eu sapien cursus vestibulum.', '2019-08-04 00:00:00', 15, NULL),
(30, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vivamus vestibulum sagittis sapien.', '2019-08-07 00:00:00', 11, NULL),
(31, 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nulla ac enim.', '2019-07-27 00:00:00', 64, NULL),
(32, 'Praesent id massa id nisl venenatis lacinia.', '2019-07-31 00:00:00', 82, NULL),
(33, 'Nam nulla. Phasellus sit amet erat.', '2019-08-10 00:00:00', 28, NULL),
(34, 'Vivamus vel nulla eget eros elementum pellentesque. Aenean sit amet justo.', '2019-08-07 00:00:00', 22, NULL),
(35, 'Donec vitae nisi. Aenean lectus. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.', '2019-08-15 00:00:00', 97, NULL),
(36, 'Suspendisse accumsan tortor quis turpis. Nunc nisl. Nulla justo.', '2019-08-08 00:00:00', 96, NULL),
(37, 'Etiam vel augue.', '2019-08-15 00:00:00', 56, NULL),
(38, 'Fusce posuere felis sed lacus. Donec dapibus. Proin eu mi.', '2019-08-06 00:00:00', 76, NULL),
(39, 'Vivamus vestibulum sagittis sapien. Fusce posuere felis sed lacus. Etiam faucibus cursus urna.', '2019-08-02 00:00:00', 102, NULL),
(40, 'Aliquam erat volutpat. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '2019-08-07 00:00:00', 14, NULL),
(41, 'In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis mattis egestas metus.', '2019-08-02 00:00:00', 89, NULL),
(42, 'Praesent blandit lacinia erat. Vivamus vestibulum sagittis sapien.', '2019-08-03 00:00:00', 88, NULL),
(43, 'Sed sagittis. Proin eu mi. Praesent lectus.', '2019-08-01 00:00:00', 14, NULL),
(44, 'Integer ac leo. Praesent blandit. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.', '2019-08-04 00:00:00', 66, NULL),
(45, 'Sed accumsan felis. Maecenas pulvinar lobortis est.', '2019-08-10 00:00:00', 60, NULL),
(46, 'Praesent blandit lacinia erat. Aliquam sit amet diam in magna bibendum imperdiet. Phasellus id sapien in sapien iaculis congue.', '2019-08-02 00:00:00', 19, NULL),
(47, 'Proin risus.', '2019-08-15 00:00:00', 54, NULL),
(48, 'Morbi a ipsum. Suspendisse potenti.', '2019-08-05 00:00:00', 54, NULL),
(49, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '2019-08-07 00:00:00', 1, NULL),
(50, 'Quisque id justo sit amet sapien dignissim vestibulum.', '2019-07-28 00:00:00', 16, NULL),
(51, 'Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nullam sit amet turpis elementum ligula vehicula consequat. In sagittis dui vel nisl.', '2019-07-30 00:00:00', 19, NULL),
(52, 'Nullam sit amet turpis elementum ligula vehicula consequat.', '2019-08-15 00:00:00', 81, NULL),
(53, 'Suspendisse accumsan tortor quis turpis. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', '2019-08-13 00:00:00', 13, NULL),
(54, 'Suspendisse accumsan tortor quis turpis. Nullam porttitor lacus at turpis. Integer a nibh.', '2019-08-15 00:00:00', 74, NULL),
(55, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Duis aliquam convallis nunc.', '2019-08-03 00:00:00', 59, NULL),
(56, 'Cras in purus eu magna vulputate luctus.', '2019-08-14 00:00:00', 57, NULL),
(57, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.', '2019-08-05 00:00:00', 21, NULL),
(58, 'Cras pellentesque volutpat dui.', '2019-08-06 00:00:00', 21, NULL),
(59, 'Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', '2019-07-29 00:00:00', 68, NULL),
(60, 'Mauris ullamcorper purus sit amet nulla. Donec dapibus. Nulla suscipit ligula in lacus.', '2019-08-14 00:00:00', 4, NULL),
(61, 'Etiam justo. Donec dapibus. Vivamus vel nulla eget eros elementum pellentesque.', '2019-08-06 00:00:00', 100, NULL),
(62, 'Pellentesque eget nunc.', '2019-08-05 00:00:00', 31, NULL),
(63, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Ut at dolor quis odio consequat varius. Nulla mollis molestie lorem.', '2019-07-28 00:00:00', 45, NULL),
(64, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2019-08-01 00:00:00', 81, NULL),
(65, 'Morbi porttitor lorem id ligula. Praesent lectus.', '2019-07-28 00:00:00', 56, NULL),
(66, 'Etiam justo.', '2019-07-27 00:00:00', 76, NULL),
(67, 'Curabitur at ipsum ac tellus semper interdum. Phasellus sit amet erat.', '2019-08-13 00:00:00', 17, NULL),
(68, 'Mauris lacinia sapien quis libero.', '2019-08-07 00:00:00', 50, NULL),
(69, 'Quisque porta volutpat erat.', '2019-08-02 00:00:00', 88, NULL),
(70, 'Nulla justo.', '2019-08-02 00:00:00', 53, NULL),
(71, 'Vivamus vel nulla eget eros elementum pellentesque. Maecenas rhoncus aliquam lacus. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.', '2019-08-02 00:00:00', 10, NULL),
(72, 'Pellentesque at nulla.', '2019-08-11 00:00:00', 23, NULL),
(73, 'Vestibulum sed magna at nunc commodo placerat. In hac habitasse platea dictumst. Nulla justo.', '2019-08-01 00:00:00', 25, NULL),
(74, 'Sed vel enim sit amet nunc viverra dapibus.', '2019-08-01 00:00:00', 8, NULL),
(75, 'Etiam justo. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Curabitur in libero ut massa volutpat convallis.', '2019-08-02 00:00:00', 89, NULL),
(76, 'Nulla tempus.', '2019-08-03 00:00:00', 77, NULL),
(77, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Donec vitae nisi.', '2019-07-31 00:00:00', 49, NULL),
(78, 'Donec vitae nisi.', '2019-08-07 00:00:00', 61, NULL),
(79, 'Nullam sit amet turpis elementum ligula vehicula consequat. Praesent blandit lacinia erat.', '2019-08-05 00:00:00', 21, NULL),
(80, 'Proin at turpis a pede posuere nonummy. In hac habitasse platea dictumst. Vivamus in felis eu sapien cursus vestibulum.', '2019-08-08 00:00:00', 33, NULL),
(81, 'Donec ut mauris eget massa tempor convallis. Donec quis orci eget orci vehicula condimentum. Morbi porttitor lorem id ligula.', '2019-08-03 00:00:00', 98, NULL),
(82, 'Duis at velit eu est congue elementum.', '2019-07-27 00:00:00', 69, NULL),
(83, 'Etiam justo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Ut at dolor quis odio consequat varius.', '2019-08-09 00:00:00', 32, NULL),
(84, 'Maecenas rhoncus aliquam lacus. Etiam pretium iaculis justo.', '2019-08-04 00:00:00', 23, NULL),
(85, 'Donec posuere metus vitae ipsum. Nulla tempus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.', '2019-08-01 00:00:00', 25, NULL),
(86, 'Aliquam non mauris.', '2019-07-28 00:00:00', 34, NULL),
(87, 'Suspendisse potenti. Nam nulla.', '2019-07-29 00:00:00', 45, NULL),
(88, 'Aliquam non mauris. Nulla tempus.', '2019-07-29 00:00:00', 46, NULL),
(89, 'Maecenas tincidunt lacus at velit. Vestibulum ac est lacinia nisi venenatis tristique. Nunc nisl.', '2019-07-30 00:00:00', 31, NULL),
(90, 'Fusce consequat.', '2019-07-29 00:00:00', 39, NULL),
(91, 'Nulla tellus.', '2019-08-05 00:00:00', 2, NULL),
(92, 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Proin eu mi. Sed ante.', '2019-08-11 00:00:00', 43, NULL),
(93, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '2019-07-31 00:00:00', 71, NULL),
(94, 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Donec vitae nisi. Maecenas ut massa quis augue luctus tincidunt.', '2019-08-04 00:00:00', 13, NULL),
(95, 'Vivamus vestibulum sagittis sapien. Integer a nibh. Praesent blandit.', '2019-08-13 00:00:00', 76, NULL),
(96, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. In est risus, auctor sed, tristique in, tempus sit amet, sem.', '2019-08-06 00:00:00', 93, NULL),
(97, 'Proin at turpis a pede posuere nonummy. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci.', '2019-08-09 00:00:00', 7, NULL),
(98, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.', '2019-07-31 00:00:00', 17, NULL),
(99, 'Curabitur in libero ut massa volutpat convallis. Aliquam quis turpis eget elit sodales scelerisque.', '2019-08-06 00:00:00', 54, NULL),
(100, 'Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante.', '2019-07-30 00:00:00', 69, NULL),
(101, 'Integer non velit. Nulla ut erat id mauris vulputate elementum. Nullam varius.', '2019-08-03 00:00:00', 66, NULL),
(102, 'Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. In hac habitasse platea dictumst.', '2019-08-11 00:00:00', 23, NULL),
(103, 'Duis bibendum.', '2019-08-04 00:00:00', 79, NULL),
(104, 'Nullam porttitor lacus at turpis. Donec vitae nisi.', '2019-08-12 00:00:00', 3, NULL),
(105, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.', '2019-08-05 00:00:00', 55, NULL),
(106, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.', '2019-08-04 00:00:00', 14, NULL),
(107, '努力，奋斗！！！', '2019-08-16 02:21:29', 2, NULL),
(108, '测试题', '2019-08-16 03:00:11', 2, NULL),
(109, '测试题', '2019-08-16 03:00:12', 2, NULL),
(110, '测试题', '2019-08-16 03:00:13', 2, NULL),
(111, '测试题', '2019-08-16 03:00:14', 2, NULL),
(112, '测试题', '2019-08-16 03:00:15', 2, NULL),
(113, '测试题', '2019-08-16 03:00:17', 2, NULL),
(114, '测试题', '2019-08-16 03:00:17', 2, NULL),
(115, '测试题', '2019-08-16 03:00:19', 2, NULL),
(116, '测试题', '2019-08-16 03:00:20', 2, NULL),
(117, '测试题测试题测试题', '2019-08-16 03:00:37', 2, NULL),
(118, '测试题测试题测试题测试题测试题', '2019-08-16 03:00:39', 2, NULL),
(119, 'FLASKY_POSTS_PER_PAGEFLASKY_POSTS_PER_PAGEFLASKY_POSTS_PER_PAGE', '2019-08-16 03:02:23', 2, NULL),
(120, 'FLASKY_POSTS_PER_PAGE', '2019-08-16 03:02:24', 2, NULL),
(121, 'FLASKY_POSTS_PER_PAGEFLASKY_POSTS_PER_PAGE', '2019-08-16 03:02:26', 2, NULL),
(122, 'FLASKY_POSTS_PER_PAGEFLASKY_POSTS_PER_PAGE', '2019-08-16 03:02:27', 2, NULL),
(123, 'FLASKY_POSTS_PER_PAGEFLASKY_POSTS_PER_PAGEFLASKY_POSTS_PER_PAGE', '2019-08-16 03:02:32', 2, NULL),
(124, 'FLASKY_POSTS_PER_PAGEFLASKY_POSTS_PER_PAGEFLASKY_POSTS_PER_PAGEFLASKY_POSTS_PER_PAGEFLASKY_POSTS_PER_PAGE', '2019-08-16 03:02:34', 2, NULL),
(125, 'FLASKY_POSTS_PER_PAGEFLASKY_POSTS_PER_PAGEFLASKY_POSTS_PER_PAGEFLASKY_POSTS_PER_PAGE', '2019-08-16 03:02:35', 2, NULL),
(126, '*这是一篇*拥有富文本能力**Markdown**的文章', '2019-08-16 03:37:41', 1, NULL),
(127, '#测试文章#', '2019-08-16 06:42:27', 1, '<h1>测试文章</h1>'),
(128, '#再试一次#', '2019-08-16 06:47:19', 1, '<h1>再试一次</h1>'),
(129, '#**努力，奋斗！！！**#', '2019-08-16 07:28:42', 1, '<h1><strong>努力，奋斗！！！</strong></h1>'),
(130, '#二三#', '2019-08-16 07:40:25', 1, '<h1>二三</h1>'),
(131, '**可以了**', '2019-08-16 07:50:49', 1, '<p><strong>可以了</strong></p>'),
(132, '**原来你真的在这里**，我还是不太明白这些意思', '2019-08-16 08:45:00', 2, '<p><strong>原来你真的在这里</strong>，我还是不太明白这些意思</p>'),
(133, '{% endblock %}{% endblock %}{% endblock %}{% endblock %}', '2019-08-16 09:00:47', 2, '<p>{% endblock %}{% endblock %}{% endblock %}{% endblock %}</p>'),
(134, '我们都不知道自己会去向哪里，有什么地方是永恒的？', '2019-08-16 09:02:47', 2, '<p>我们都不知道自己会去向哪里，有什么地方是永恒的？</p>'),
(135, '*这是一篇*拥有富文本能力**Markdown**的文章\r\n', '2019-08-16 09:11:34', 2, '<p><em>这是一篇</em>拥有富文本能力<strong>Markdown</strong>的文章</p>');

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
(1, '15078843336@163.com', 'admi', 3, 'pbkdf2:sha256:150000$ioAEWO0b$e96544da90c570c466134ca46cc14d78c9cc54e09c8193b0ed5c83b30a91c5d5', 1, '免费领取人参五味子颗粒', '钦州', 'ddd', '2019-08-16 07:50:49', '2019-08-15 08:47:05'),
(2, '46361381@qq.com', 'jack', 1, 'pbkdf2:sha256:150000$UWSjdfzE$6ddb7c3f0377393e5893be9edde38d77e3ff50d82e8b5840f67305b0c2bdd537', 1, '梁增晃', '南宁', 'f', '2019-08-16 09:11:34', '2019-08-15 08:47:55'),
(3, '328462177@qq.com', 'forlove', 1, 'pbkdf2:sha256:150000$TlZKEsyF$160d8ba10acfa8745fbb577a0de13d9e0759630169c342d549b2e49152cc3bc0', 1, NULL, NULL, NULL, '2019-08-16 00:42:22', '2019-08-16 00:40:51'),
(4, 'jesse@twinder.edu', 'tina69', 1, 'pbkdf2:sha256:150000$t42YxI1n$c994be5200625d0673e43535f746fda83bdc75d82fbc06b9506d4369de0781ab', 1, 'Betty Barnes', 'Monte Sereno', 'Quisque porta volutpat erat.', '2019-08-16 01:31:21', '2019-08-07 00:00:00'),
(5, 'irene@zoonoodle.net', 'maria66', 1, 'pbkdf2:sha256:150000$30MVDq3W$e080936cbe3945288a620c1c8c97444451bb53c2c3c52f6fae1e256e59a1ca45', 1, 'Lillian Gilbert', 'Newport Beach', 'Morbi non lectus.', '2019-08-16 01:31:22', '2019-07-28 00:00:00'),
(6, 'jacqueline@oozz.org', 'angela94', 1, 'pbkdf2:sha256:150000$w90GBZoN$a6ef4549ce86a96dd89eb0a1824a0584bab0fe5ee5f4a9c075dd732607958fc2', 1, 'Sara Cook', 'Richmond', 'Nunc purus.', '2019-08-16 01:31:22', '2019-08-07 00:00:00'),
(7, 'sara@kwinu.edu', 'angela67', 1, 'pbkdf2:sha256:150000$RUGDj2RP$e4436c651148778f98c9403de339407ec8a0c06340ae9a65cd51a6ef6dcbc897', 1, 'Tina Parker', 'South Lake Tahoe', 'Sed ante.', '2019-08-16 01:31:22', '2019-08-14 00:00:00'),
(8, 'jennifer@realpoint.info', 'janet78', 1, 'pbkdf2:sha256:150000$NLpDeEmD$623ad652e5b20d4d7e4602fc611278ee15e09978b47316cb32d78e807b95efd4', 1, 'Howard Griffin', 'Union City', 'Aliquam non mauris.', '2019-08-16 01:31:22', '2019-07-28 00:00:00'),
(9, 'norma@leexo.com', 'carol72', 1, 'pbkdf2:sha256:150000$ntz9OLNa$30cfc7667675d91242cf645579c9b842cde3567d59bbcea2902b48ca5e919270', 1, 'Amy Carter', 'Menifee', 'Sed vel enim sit amet nunc viverra dapibus.', '2019-08-16 01:31:22', '2019-08-11 00:00:00'),
(10, 'jennifer@brainlounge.edu', 'ashley87', 1, 'pbkdf2:sha256:150000$ijSJ15VZ$d8071f855a7da76aeb73d45bed279b60b360692c6d4e4b46b5715bb277fd6c81', 1, 'Marilyn Gilbert', 'Riverside', 'Donec quis orci eget orci vehicula condimentum.', '2019-08-16 01:31:23', '2019-07-30 00:00:00'),
(11, 'bonnie@aimbo.com', 'beverly88', 1, 'pbkdf2:sha256:150000$N6fsFCjn$93998615e79d3f835c18833a8fc791dc428298cc06e4085ac6b9b2e4f700273f', 1, 'Julia Reid', 'Hawthorne', 'Etiam pretium iaculis justo.', '2019-08-16 01:31:23', '2019-08-08 00:00:00'),
(12, 'paula@wikizz.edu', 'mary90', 1, 'pbkdf2:sha256:150000$4D9VGacs$d848a27773b28dba09f07fbbb3cef421902a3825e2241688a1109bedc5bba87b', 1, 'Tammy Bowman', 'Berkeley', 'In hac habitasse platea dictumst.', '2019-08-16 01:31:23', '2019-08-11 00:00:00'),
(13, 'lillian@blognation.mil', 'andrea89', 1, 'pbkdf2:sha256:150000$st29XTfv$ad76e7bb9cc29a87d058cbbb8fd88cd59fd4cc555363e0b7034039e2d450a72f', 1, 'Evelyn Frazier', 'Fort Jones', 'Integer ac leo.', '2019-08-16 01:31:23', '2019-07-30 00:00:00'),
(14, 'deborah@zooxo.net', 'rachel83', 1, 'pbkdf2:sha256:150000$dWajP0Wz$217237eba65cc42b04347f4660a776249ea7eab318b0553a5d26305ccdb5d96e', 1, 'Marilyn Murphy', 'Weed', 'Etiam justo.', '2019-08-16 01:31:23', '2019-07-29 00:00:00'),
(15, 'susan@topiclounge.com', 'anna78', 1, 'pbkdf2:sha256:150000$y2sdfRAQ$0808d13f7ebe35d573e8660233f5e31ccecbbf7fa0179a2eb63904c33453a57a', 1, 'Ruby Coleman', 'Dorris', 'Phasellus id sapien in sapien iaculis congue.', '2019-08-16 01:31:24', '2019-08-06 00:00:00'),
(16, 'edward@devbug.edu', 'emily74', 1, 'pbkdf2:sha256:150000$4qMoyPzL$551f32f036e860294a5e171f26efc9725b4dccc55a16d86c9f9db892e02bee0a', 1, 'Frances Welch', 'Redondo Beach', 'Ut tellus.', '2019-08-16 01:31:24', '2019-07-27 00:00:00'),
(17, 'ruby@skivee.org', 'jacqueline93', 1, 'pbkdf2:sha256:150000$OguCQUjw$d5eda51659c26396debc77bdc5036e8fc40facef3f690e7ba251113b8855d6c5', 1, 'Paula Matthews', 'Reedley', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla.', '2019-08-16 01:31:24', '2019-08-03 00:00:00'),
(18, 'robin@topicblab.name', 'jane83', 1, 'pbkdf2:sha256:150000$twbpzYiZ$73b9d0eb4e7ad5c90bab3d7f0a958d9e9b7e04518043ff58833f8ac88c7241b9', 1, 'Stephanie Holmes', 'Placerville', 'Nam nulla.', '2019-08-16 01:31:24', '2019-07-28 00:00:00'),
(19, 'katherine@browsebug.name', 'sara84', 1, 'pbkdf2:sha256:150000$OxTP8AHm$ccebac094d0212837d5b1b470482d7885e1cb74ae1720d2d9cbc12a38268277a', 1, 'Louise Lopez', 'Hercules', 'Maecenas tincidunt lacus at velit.', '2019-08-16 01:31:24', '2019-08-04 00:00:00'),
(20, 'rachel@photobug.edu', 'alice67', 1, 'pbkdf2:sha256:150000$UDZlMdvT$8fffcd8dd35b1ed746d438ad6c241b2e0d8083a8e6e0246c9d0d2cbbd0dce531', 1, 'Rose Richards', 'Camarillo', 'Suspendisse ornare consequat lectus.', '2019-08-16 01:31:25', '2019-08-01 00:00:00'),
(21, 'julie@thoughtstorm.name', 'gloria77', 1, 'pbkdf2:sha256:150000$El5VbNAd$9a17b3d961e4b9c42ddc28b8e5b91af8ac0393b157f5269628e3d6b136fbe43d', 1, 'Rose Hart', 'San Rafael', 'Proin risus.', '2019-08-16 01:31:25', '2019-08-05 00:00:00'),
(22, 'martha@yabox.net', 'susan67', 1, 'pbkdf2:sha256:150000$8Byirb9K$4fe85c0cbc088ef4a2c9969b213ff3295c1665ce3c809782f2d027d11c1f50ab', 1, 'Jennifer Dunn', 'Oxnard', 'Donec dapibus.', '2019-08-16 01:31:25', '2019-07-28 00:00:00'),
(23, 'pamela@cogilith.info', 'rose74', 1, 'pbkdf2:sha256:150000$PEWbv606$6520626388fb2cf427de84f154381dc95b76baffeb7376efe32dadb18ff0e6a2', 1, 'Mary Henry', 'Duarte', 'Suspendisse potenti.', '2019-08-16 01:31:25', '2019-08-04 00:00:00'),
(24, 'dorothy@kimia.biz', 'gloria92', 1, 'pbkdf2:sha256:150000$teJNsBNP$3bb021594a672cabd0a885ff0fc9c2d42a827bba0f90b887e5349d389944b43d', 1, 'Doris Lawson', 'Roseville', 'Pellentesque at nulla.', '2019-08-16 01:31:25', '2019-08-12 00:00:00'),
(25, 'lillian@aimbo.com', 'michelle85', 1, 'pbkdf2:sha256:150000$yqOUOpGl$e1814a612134f1f4fe82d8f01106e2af196026cc2af3de3a0c2e13945bbe7649', 1, 'Julie Gilbert', 'Loyalton', 'Donec dapibus.', '2019-08-16 01:31:26', '2019-08-12 00:00:00'),
(26, 'ruby@topicware.org', 'mildred93', 1, 'pbkdf2:sha256:150000$jaTBdgcg$dedc1f8d639138cc74620320af045b26601913ade4d7407a2bb3b5121a8fa48c', 1, 'Doris Stanley', 'Pasadena', 'Nunc purus.', '2019-08-16 01:31:26', '2019-08-01 00:00:00'),
(27, 'diana@edgepulse.edu', 'ruby70', 1, 'pbkdf2:sha256:150000$D69tEAl6$dca5ae1642dc8a76602a0c0141a1c683c08c775597a546813884ffba439642d4', 1, 'Doris Turner', 'San Bruno', 'Curabitur convallis.', '2019-08-16 01:31:26', '2019-08-04 00:00:00'),
(28, 'debra@dabz.name', 'katherine87', 1, 'pbkdf2:sha256:150000$7PdtSgCa$3bde6a45ec4c6bb0280755d719776bfa0a6c02618842603d9dbda40e45675387', 1, 'Jennifer Riley', 'Livermore', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla.', '2019-08-16 01:31:26', '2019-08-15 00:00:00'),
(29, 'anne@topiclounge.gov', 'judy89', 1, 'pbkdf2:sha256:150000$P7Gjub72$6cb87cb0509ab2df6eeeec48cf6a6aba600f677a3196e2d0233d85046f76b837', 1, 'Melissa Carr', 'Lodi', 'Etiam vel augue.', '2019-08-16 01:31:26', '2019-07-27 00:00:00'),
(30, 'jacqueline@layo.gov', 'nicole64', 1, 'pbkdf2:sha256:150000$njK0sjkm$cb9b515373c4eb528aee7db4159697749aa49529021964e267cfd371bfd63891', 1, 'Anne Stone', 'Delano', 'Nulla tempus.', '2019-08-16 01:31:27', '2019-07-28 00:00:00'),
(31, 'lori@zoombeat.com', 'tina75', 1, 'pbkdf2:sha256:150000$nsfzl1Ex$59a22eb8e69c6bf13e8081572e6d0861cfe465e3e3657a332d47d4c8fb71b9c8', 1, 'Diane Williams', 'Brea', 'Curabitur convallis.', '2019-08-16 01:31:27', '2019-08-02 00:00:00'),
(32, 'kelly@bubblemix.org', 'cheryl89', 1, 'pbkdf2:sha256:150000$naLv26LN$8a02393cd1d1b0c5a982afaabc3d8efddb4a72ae9a45446c0c7266f4d7dc1a3b', 1, 'Janet Wright', 'Colton', 'Morbi non lectus.', '2019-08-16 01:31:27', '2019-08-07 00:00:00'),
(33, 'carol@feedspan.gov', 'anne93', 1, 'pbkdf2:sha256:150000$o4VZHdRs$a78dae3ba8c5c6b5b8b22cca590c22b23f7ea3f1c06b8167ea7e92684fc9df58', 1, 'Cheryl Cole', 'Auburn', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.', '2019-08-16 01:31:27', '2019-08-02 00:00:00'),
(34, 'julia@youopia.edu', 'ashley91', 1, 'pbkdf2:sha256:150000$hj9k1WgH$e1f66f3abeee82bed1a63f9030e772ee7fc184891ecfa330eec9201aa03094a1', 1, 'Elizabeth Patterson', 'Dorris', 'In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', '2019-08-16 01:31:27', '2019-08-14 00:00:00'),
(35, 'nicole@thoughtmix.name', 'anne88', 1, 'pbkdf2:sha256:150000$2iAvb0yU$b5bea3236d95b5c8c8b636dff217c9c82fe4c83045961736b132b78cb0162cd2', 1, 'Judith Green', 'Sand City', 'Phasellus id sapien in sapien iaculis congue.', '2019-08-16 01:31:28', '2019-08-03 00:00:00'),
(36, 'martha@voomm.com', 'bonnie80', 1, 'pbkdf2:sha256:150000$JLoXaPnL$ec241212849ae50e5f4253a0be4e7d8bf4a7764f2fa30c5878be15f297d6c8f2', 1, 'Jacqueline Carroll', 'Hawaiian Gardens', 'In hac habitasse platea dictumst.', '2019-08-16 01:31:28', '2019-08-05 00:00:00'),
(37, 'barbara@voolia.edu', 'ashley70', 1, 'pbkdf2:sha256:150000$bUSkOHs3$2b368e8d4f1da12ef8fc11be45932de2ef3aa2a323656a4998ff780269ab922e', 1, 'Carolyn Ward', 'Yuba City', 'Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', '2019-08-16 01:31:28', '2019-07-29 00:00:00'),
(38, 'maria@skajo.info', 'norma72', 1, 'pbkdf2:sha256:150000$rmCcx0WS$2f207e3fdbf3afb57ed68751654d9cbb637535d04387a57ab76e3aa6919215c0', 1, 'Denise Long', 'Walnut Creek', 'Quisque ut erat.', '2019-08-16 01:31:28', '2019-08-14 00:00:00'),
(39, 'christine@kwimbee.gov', 'phyllis75', 1, 'pbkdf2:sha256:150000$eLEgYQne$1b9cf33df7a58e30d1daf1b2a0105c90df34691615beb26e5711efa3a0e85909', 1, 'Diana Walker', 'Reedley', 'Cras in purus eu magna vulputate luctus.', '2019-08-16 01:31:29', '2019-07-30 00:00:00'),
(40, 'andrea@skynoodle.name', 'julie92', 1, 'pbkdf2:sha256:150000$G63HNkzb$6ca2d70c960ebf1f0affaf4cf65e22c7d44f204ddf56c743f7d34d940566e573', 1, 'Diane Ellis', 'Auburn', 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.', '2019-08-16 01:31:29', '2019-08-05 00:00:00'),
(41, 'ann@flipopia.mil', 'roy72', 1, 'pbkdf2:sha256:150000$99p9dYMe$aa3bea9c7bf4ee5c5dcfd4ceefc9164f1cf296b4d57e4199acc1bdd0a2067cfd', 1, 'Helen Perez', 'La Puente', 'Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '2019-08-16 01:31:29', '2019-08-14 00:00:00'),
(42, 'cheryl@jaloo.edu', 'jane79', 1, 'pbkdf2:sha256:150000$U2oajhFG$41252dace54a973c620c5dbc13940891fcc1e7a70765843b4d8a37beb2bf8b0e', 1, 'Julie Mitchell', 'Novato', 'Suspendisse accumsan tortor quis turpis.', '2019-08-16 01:31:29', '2019-07-31 00:00:00'),
(43, 'ann@rhynoodle.net', 'betty73', 1, 'pbkdf2:sha256:150000$I6hPJ2qN$29f9b7ba515ca9f7b9472cf7b2a70ea52644b3553035c12443693c6ba1f993cd', 1, 'Karen Chapman', 'South San Francisco', 'Nunc nisl.', '2019-08-16 01:31:29', '2019-08-07 00:00:00'),
(44, 'susan@youspan.info', 'ruby74', 1, 'pbkdf2:sha256:150000$CF1BO0Gy$fc016859c89ef3bdc1815b464a0990ffd278ec86ff26e562648a33383bb7304d', 1, 'Denise Banks', 'Wasco', 'Suspendisse potenti.', '2019-08-16 01:31:30', '2019-08-11 00:00:00'),
(45, 'jean@lazz.gov', 'betty92', 1, 'pbkdf2:sha256:150000$Tq4OvNKH$73a6ee97b4e7eaf42a5066f5381b92ed8cae7d66d1e25492248a2a9636400b32', 1, 'Michelle Vasquez', 'Arcata', 'Aenean sit amet justo.', '2019-08-16 01:31:30', '2019-07-29 00:00:00'),
(46, 'jean@mydeo.mil', 'jane88', 1, 'pbkdf2:sha256:150000$s4kLWHE6$762cb75ae4ea1a8241d08435e418eb2a31b153f232ec17b0adf9004b9a596b53', 1, 'Kimberly Rose', 'Carpinteria', 'Nulla facilisi.', '2019-08-16 01:31:30', '2019-08-09 00:00:00'),
(47, 'diana@fivechat.biz', 'julie68', 1, 'pbkdf2:sha256:150000$MIeaBqzw$1e6fc570f74c23305f7600d089133a22ed6ecf46fd9f5f46078d180a78ae31f9', 1, 'Kimberly Johnson', 'Richmond', 'Nullam porttitor lacus at turpis.', '2019-08-16 01:31:30', '2019-08-15 00:00:00'),
(48, 'denise@kwinu.gov', 'teresa67', 1, 'pbkdf2:sha256:150000$L4J2yQQU$f24f5bce5440cbbba26ec3155d601f21062d142a7a7cefb89097b545252f9aaa', 1, 'Susan Willis', 'Calimesa', 'Proin interdum mauris non ligula pellentesque ultrices.', '2019-08-16 01:31:31', '2019-08-13 00:00:00'),
(49, 'carol@rhybox.biz', 'jacqueline69', 1, 'pbkdf2:sha256:150000$wKFqNe7L$0b8042291bda630306d4630999b2e1058c6b95d37ba56288716ecb8c30503ef5', 1, 'Cynthia Robinson', 'La Mesa', 'Sed accumsan felis.', '2019-08-16 01:31:31', '2019-08-11 00:00:00'),
(50, 'tammy@voolia.org', 'lisa82', 1, 'pbkdf2:sha256:150000$5d5f63QU$01403e18f66df50a731a7abb9570b757107d57b6df8e52ab69f57e86df93e363', 1, 'Melissa Murray', 'Monterey', 'Quisque porta volutpat erat.', '2019-08-16 01:31:31', '2019-08-05 00:00:00'),
(51, 'julia@skibox.name', 'phyllis89', 1, 'pbkdf2:sha256:150000$1ql28uA9$27b627a03f3e46afdce7895003c26ec4238aa5e7f9cedda2112708f9a65f03d7', 1, 'Louise Mendoza', 'Portola Valley', 'Donec ut mauris eget massa tempor convallis.', '2019-08-16 01:31:31', '2019-08-12 00:00:00'),
(52, 'diana@flashspan.org', 'tammy69', 1, 'pbkdf2:sha256:150000$bg9Co8Zk$e7d4812ee56598880ab585e80a6a657fda4597ad7e067a2c1f72ace19ecf159e', 1, 'Judith Rose', 'Livingston', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.', '2019-08-16 01:31:31', '2019-07-27 00:00:00'),
(53, 'carolyn@flashdog.edu', 'margaret78', 1, 'pbkdf2:sha256:150000$gdpuXnxT$40aab02cef75ce7cd50b6b8ffa10773ff4f5dcd42375895a99320dfeaf3c08ac', 1, 'Marie Washington', 'Pasadena', 'Donec ut dolor.', '2019-08-16 01:31:32', '2019-08-08 00:00:00'),
(54, 'judith@voolia.org', 'irene78', 1, 'pbkdf2:sha256:150000$aZQys4Xd$fb4e07e3085d017a5901db55489e3f4850b4c8e72b9c10e42e4f4d30d0faebc1', 1, 'Judy Daniels', 'Lemon Grove', 'Nulla mollis molestie lorem.', '2019-08-16 01:31:32', '2019-08-03 00:00:00'),
(55, 'jennifer@gabtune.net', 'mildred83', 1, 'pbkdf2:sha256:150000$3FTi2fCi$3fe992a3324604af1ab81c59537463bde289a4a8f86a47154627e462e916a766', 1, 'Julie Welch', 'Lawndale', 'Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '2019-08-16 01:31:32', '2019-08-09 00:00:00'),
(56, 'norma@devpoint.gov', 'louise63', 1, 'pbkdf2:sha256:150000$oJPCDfCo$c5483ff72ff41ec752009f8353c59752cd6dbbd0c0745b1a51cee6c8a282b390', 1, 'Jane Knight', 'Huntington Beach', 'Nullam molestie nibh in lectus.', '2019-08-16 01:31:32', '2019-08-03 00:00:00'),
(57, 'rachel@zooveo.com', 'lillian82', 1, 'pbkdf2:sha256:150000$uFOJ7YJR$ef0fe0cb99192fd972ed5095c191c8e1cd110c2efbcb72c5034c2622942efc9b', 1, 'Susan Wallace', 'City of Commerce', 'In eleifend quam a odio.', '2019-08-16 01:31:32', '2019-08-02 00:00:00'),
(58, 'paula@zoombeat.name', 'rachel77', 1, 'pbkdf2:sha256:150000$VFr0SC76$7479bbbd99e8d2182ef23fc9c5fc44f96a25210db3500a7b394042106affe784', 1, 'Robin Price', 'Goleta', 'Sed vel enim sit amet nunc viverra dapibus.', '2019-08-16 01:31:33', '2019-07-27 00:00:00'),
(59, 'cynthia@zoozzy.net', 'cynthia85', 1, 'pbkdf2:sha256:150000$72ZIve8d$c333e5afcf13ba9ff69d8cdd6bfee5deeca72a49e4f571a97a147d583881a5ca', 1, 'Jane Bradley', 'Hayward', 'Nam dui.', '2019-08-16 01:31:33', '2019-08-09 00:00:00'),
(60, 'betty@twitterwire.org', 'judith66', 1, 'pbkdf2:sha256:150000$PISonX0l$35774d106f1251985a45d58dce2e3220493aed95629b22fd8be734ed4554bb1d', 1, 'Theresa Griffin', 'Tehachapi', 'Cras in purus eu magna vulputate luctus.', '2019-08-16 01:31:33', '2019-07-30 00:00:00'),
(61, 'diana@avavee.net', 'julie83', 1, 'pbkdf2:sha256:150000$QjUyQU7Y$0fecca39f6f29812f8ac313e7336a1dbf66c0e84272be3c02c2d56d7b4c21a51', 1, 'Diane Reynolds', 'West Covina', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2019-08-16 01:31:33', '2019-08-06 00:00:00'),
(62, 'rebecca@twitterbridge.com', 'nancy88', 1, 'pbkdf2:sha256:150000$jX6j8cW7$3a288404a3f76c9235a1da23ddedf3ddd99029766f7899b855dd987bbcb5a046', 1, 'Brenda Parker', 'Shafter', 'Etiam pretium iaculis justo.', '2019-08-16 01:31:33', '2019-07-31 00:00:00'),
(63, 'carolyn@omba.mil', 'heather66', 1, 'pbkdf2:sha256:150000$bEYA2Uyp$b4dd4d293d3e7f84ada4eb9f9e5eadd280f139ebf356f042b682d935855e56e6', 1, 'Jennifer Black', 'Ceres', 'Integer a nibh.', '2019-08-16 01:31:34', '2019-08-12 00:00:00'),
(64, 'sharon@mynte.net', 'cynthia73', 1, 'pbkdf2:sha256:150000$2gLDpaZd$5ac52b5552b1e0346cf7db12858f9e4b2211900b85bd5274148ebe0c564efe07', 1, 'Alice Cunningham', 'City of Commerce', 'Donec dapibus.', '2019-08-16 01:31:34', '2019-08-14 00:00:00'),
(65, 'marie@twinte.edu', 'jacqueline70', 1, 'pbkdf2:sha256:150000$fwzN3NAW$0d52b490c5c30136487efe1b7637cb4a996cebc59054d8880d4c2a59c835e39e', 1, 'Amy Foster', 'Palm Springs', 'Sed ante.', '2019-08-16 01:31:34', '2019-08-11 00:00:00'),
(66, 'diane@leenti.com', 'amanda84', 1, 'pbkdf2:sha256:150000$967CGPS9$c816c7543a98719ea824b56fc40aa357f62b0793c1335dd55e474cec75461ddb', 1, 'Margaret Snyder', 'Santa Clarita', 'Quisque id justo sit amet sapien dignissim vestibulum.', '2019-08-16 01:31:34', '2019-07-27 00:00:00'),
(67, 'carolyn@quimba.biz', 'ruby76', 1, 'pbkdf2:sha256:150000$79k6QGtY$4ffc53fbf5d0a0cc4a1dcd11aab9a349331c186b459dcd36355ae129b1812c90', 1, 'Bonnie Andrews', 'Manteca', 'Maecenas pulvinar lobortis est.', '2019-08-16 01:31:35', '2019-08-05 00:00:00'),
(68, 'paula@jazzy.biz', 'susan92', 1, 'pbkdf2:sha256:150000$WF1SD4R7$d5b7e1ffb999d74419e2ed7a33c26454ff59ceded3aea4caf2bac53b78f9ebf4', 1, 'Patricia Hernandez', 'Santa Fe Springs', 'Fusce posuere felis sed lacus.', '2019-08-16 01:31:35', '2019-08-08 00:00:00'),
(69, 'michelle@tagfeed.com', 'rachel76', 1, 'pbkdf2:sha256:150000$LT4uIZfw$f2fa4a5e668c66fbbae9e76757492013c75c0efca44e6900e40109452f187fe9', 1, 'Nicole Gilbert', 'Red Bluff', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2019-08-16 01:31:35', '2019-08-14 00:00:00'),
(70, 'rachel@wordtune.net', 'norma65', 1, 'pbkdf2:sha256:150000$1miLho4b$9275ee03dd36a019b514d405f83790f4e4550357ff590f564108a7913787623b', 1, 'Virginia Robinson', 'Indian Wells', 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.', '2019-08-16 01:31:35', '2019-07-27 00:00:00'),
(71, 'lois@trudeo.gov', 'patricia69', 1, 'pbkdf2:sha256:150000$7bt1BBYT$1eb335a04d0700b614e70f78bb3a4e0224d5f15e82f180885c28643065cb270a', 1, 'Julia Gutierrez', 'Manteca', 'Quisque id justo sit amet sapien dignissim vestibulum.', '2019-08-16 01:31:35', '2019-07-27 00:00:00'),
(72, 'lisa@photospace.name', 'ashley78', 1, 'pbkdf2:sha256:150000$ttGOFNvF$d47466032c8660a838662e912a7a314c21cd05d8842e71571236d19ed179035f', 1, 'Marie Gomez', 'Salinas', 'Aenean auctor gravida sem.', '2019-08-16 01:31:36', '2019-08-15 00:00:00'),
(73, 'anna@yombu.edu', 'anna75', 1, 'pbkdf2:sha256:150000$ebuZT1Bx$24a05dd0b75dea42919eff4e251e4fe178560a2d6910ec50ef3cb0e8c57d53f0', 1, 'Rachel Carr', 'Walnut Creek', 'Duis aliquam convallis nunc.', '2019-08-16 01:31:36', '2019-08-07 00:00:00'),
(74, 'jessica@fivebridge.org', 'anne81', 1, 'pbkdf2:sha256:150000$WMvB0H5m$c21ffd743d63ee626ba961e7559809be3e5880fb6a9a199ca21b2b4403292dcf', 1, 'Susan Ramirez', 'Palmdale', 'Integer ac neque.', '2019-08-16 01:31:36', '2019-08-12 00:00:00'),
(75, 'lori@geba.edu', 'anne69', 1, 'pbkdf2:sha256:150000$Wb0Vur3l$6a2144ccc67a504e96e8aa4c1c35f671a38d3d63f52e6b4d063905cfd4a845e8', 1, 'Laura Kennedy', 'Rosemead', 'Fusce consequat.', '2019-08-16 01:31:36', '2019-08-04 00:00:00'),
(76, 'jessica@yabox.gov', 'elizabeth72', 1, 'pbkdf2:sha256:150000$jfIQ8Cus$796a91d1f15fb687bd29ef72e1923bc339f7a55adea85fd70a4a267b1ea8181d', 1, 'Jean Griffin', 'Sand City', 'Sed accumsan felis.', '2019-08-16 01:31:36', '2019-08-02 00:00:00'),
(77, 'lisa@eazzy.mil', 'emily66', 1, 'pbkdf2:sha256:150000$2d9nwd47$716ac32ebbc39833dab9c33a63497915666fd34d3344819711b45cb8f0bdbc4d', 1, 'Beverly Mills', 'Atascadero', 'Nulla facilisi.', '2019-08-16 01:31:37', '2019-08-05 00:00:00'),
(78, 'ann@skalith.biz', 'emily89', 1, 'pbkdf2:sha256:150000$FaO6rD6L$d8f772cd3ca2bb95cc1c6b9e6d7aaa3de2fe305e4aaaca7dc42f494c139f1d48', 1, 'Debra Lopez', 'Palm Desert', 'Aenean lectus.', '2019-08-16 01:31:37', '2019-08-01 00:00:00'),
(79, 'katherine@devpulse.net', 'alice82', 1, 'pbkdf2:sha256:150000$wHeJn4dy$ea2c3d847735fff39004fabae84b15c77a99d89c827c3ed3246a51e7ec73b4f3', 1, 'Susan Hudson', 'Lakeport', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla.', '2019-08-16 01:31:37', '2019-08-09 00:00:00'),
(80, 'lori@edgeclub.gov', 'lillian88', 1, 'pbkdf2:sha256:150000$E8cDsmWY$ec4abeb07830b3ced94b759e63bca07238d5919d9be9bfbe0b111999238f0602', 1, 'Rebecca Stewart', 'San Gabriel', 'Nam nulla.', '2019-08-16 01:31:37', '2019-08-13 00:00:00'),
(81, 'helen@thoughtsphere.edu', 'kimberly71', 1, 'pbkdf2:sha256:150000$6e02eXkG$2ea81e0135a932f07ac16ba67a063dad567c52c3677184dd0d479d6eedf425c8', 1, 'Jennifer Daniels', 'Mission Viejo', 'Nunc purus.', '2019-08-16 01:31:38', '2019-08-03 00:00:00'),
(82, 'judy@vitz.biz', 'theresa76', 1, 'pbkdf2:sha256:150000$WdsDrLXK$4f0285a3d9c9f0b66553cd678af3c44d3b530061f6aec2a8f365cc321dfee634', 1, 'Irene Ortiz', 'La Quinta', 'In hac habitasse platea dictumst.', '2019-08-16 01:31:38', '2019-07-29 00:00:00'),
(83, 'laura@blognation.edu', 'helen66', 1, 'pbkdf2:sha256:150000$Rg4fWDBe$a9dc683fe00d5bd4e608521ea21e48750e711ed5d9a527a295cd9e9a1fddf2f4', 1, 'Marilyn Shaw', 'Encinitas', 'Nulla suscipit ligula in lacus.', '2019-08-16 01:31:38', '2019-08-11 00:00:00'),
(84, 'lori@zoomlounge.edu', 'katherine81', 1, 'pbkdf2:sha256:150000$SVIsBK5u$41857abc4e49c21fb44567e7a0c4f1778e2b5fefe3f62ca39050912057f5fb74', 1, 'Katherine Perkins', 'La Habra', 'Donec ut mauris eget massa tempor convallis.', '2019-08-16 01:31:38', '2019-08-13 00:00:00'),
(85, 'janet@omba.com', 'virginia68', 1, 'pbkdf2:sha256:150000$1hw4qkM7$6d061a65bdddbab698f5e57b7de8aca6760ae5833f4f8c8cb6aeb607163f4216', 1, 'Sandra Foster', 'Manhattan Beach', 'Sed ante.', '2019-08-16 01:31:38', '2019-08-14 00:00:00'),
(87, 'melissa@aibox.edu', 'louise88', 1, 'pbkdf2:sha256:150000$ODCGA37Z$22a98c688049e5ec2ea05a17f49fd6b9c1342655d88b80b6b3a68a1fb8c98e77', 1, 'Judith Davis', 'Monrovia', 'Cras non velit nec nisi vulputate nonummy.', '2019-08-16 01:31:39', '2019-08-14 00:00:00'),
(88, 'cheryl@dazzlesphere.com', 'margaret71', 1, 'pbkdf2:sha256:150000$Msm22gha$7d1cc072a78a9864d0ea40dfd6c6f78ce45ce2049669ce58192f328652f9dee8', 1, 'Phyllis Palmer', 'Simi Valley', 'Suspendisse potenti.', '2019-08-16 01:31:39', '2019-08-04 00:00:00'),
(89, 'theresa@avaveo.net', 'catherine68', 1, 'pbkdf2:sha256:150000$3Tbq9qYz$42d9f5ccab99c3e6f8bcdc82b5de9870af066417985f64cfde9ab0c2e1230d5f', 1, 'Jacqueline Turner', 'El Monte', 'In quis justo.', '2019-08-16 01:31:39', '2019-08-03 00:00:00'),
(90, 'katherine@meezzy.name', 'christine81', 1, 'pbkdf2:sha256:150000$CYxCJ3wY$3e371a77cf8dc7369e07052b8f30f8aeed34f6acf17bbd9cb61bc7b6c11e7907', 1, 'Dorothy Fuller', 'Fontana', 'Integer ac leo.', '2019-08-16 01:31:39', '2019-08-09 00:00:00'),
(91, 'patricia@youbridge.gov', 'christina71', 1, 'pbkdf2:sha256:150000$yAG1CF1S$a740ced02bb24689f5c4c5e6eda924c13df228e968a8204cac05099ce0c021ef', 1, 'Laura Gomez', 'Huron', 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.', '2019-08-16 01:31:40', '2019-08-14 00:00:00'),
(92, 'deborah@jayo.gov', 'ruby91', 1, 'pbkdf2:sha256:150000$egthIpQi$573afb1f7a96595dc8728bd97a6c6e014deb6a45f1bbd000383cbc5fe8bcee0b', 1, 'Elizabeth Payne', 'Murrieta', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2019-08-16 01:31:40', '2019-08-11 00:00:00'),
(93, 'angela@thoughtsphere.gov', 'carolyn83', 1, 'pbkdf2:sha256:150000$mgwt6z4x$1b05635ace6e265ca6c41b4646e7e87bac977b3840bd6251d3137b1f8cef7094', 1, 'Susan Henry', 'Patterson', 'Cras in purus eu magna vulputate luctus.', '2019-08-16 01:31:40', '2019-08-11 00:00:00'),
(94, 'melissa@flipbug.biz', 'christina64', 1, 'pbkdf2:sha256:150000$1SspDf24$8a26af496430622ff06028681c4c0f125894ca6c00752bf62f771754a663d710', 1, 'Paula Harper', 'Ventura', 'Nullam sit amet turpis elementum ligula vehicula consequat.', '2019-08-16 01:31:40', '2019-08-01 00:00:00'),
(95, 'emily@blogtags.com', 'anne70', 1, 'pbkdf2:sha256:150000$5l2Ki5bg$0a80d74cb7126631fc3bc364b46d92b1c4a9352f2c730e9c9779c00a4c19da24', 1, 'Sandra Schmidt', 'Manhattan Beach', 'Suspendisse ornare consequat lectus.', '2019-08-16 01:31:40', '2019-08-03 00:00:00'),
(96, 'lillian@voonder.edu', 'irene82', 1, 'pbkdf2:sha256:150000$O8hl9DeA$170ed96b17348d7830240c9cc632a045e984248bc5c4f0eb922bbbc663f3d425', 1, 'Elizabeth Washington', 'Watsonville', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.', '2019-08-16 01:31:41', '2019-07-27 00:00:00'),
(97, 'deborah@photobug.mil', 'sarah86', 1, 'pbkdf2:sha256:150000$B7LfV3oT$fc00a17696c3fe0e43bafb87c8bbcedfb512606fc3dcbda26af297e479c931e0', 1, 'Gloria Ward', 'La Verne', 'In eleifend quam a odio.', '2019-08-16 01:31:41', '2019-07-28 00:00:00'),
(98, 'denise@trilith.edu', 'alice80', 1, 'pbkdf2:sha256:150000$TsZqPkDU$53aac9864252d3bd6613d5c091e4d56d0f8a2d0bac42c0e7a4cdae618ad18d78', 1, 'Evelyn Murray', 'San Diego', 'Integer a nibh.', '2019-08-16 01:31:41', '2019-08-14 00:00:00'),
(99, 'cheryl@zooveo.net', 'marilyn65', 1, 'pbkdf2:sha256:150000$qFz1gQ7G$dcf0066466c1b0393c880df784f0baf7845fbca6eb880a9b8d60ddca7c99a8cf', 1, 'Pamela Carroll', 'Villa Park', 'Duis aliquam convallis nunc.', '2019-08-16 01:31:41', '2019-08-11 00:00:00'),
(100, 'patricia@yakidoo.edu', 'annie81', 1, 'pbkdf2:sha256:150000$n5wfLjDq$289788f364ba6db25caf3c6e19c435a1bf4a29b2198e76b4ddd2132e33d9f588', 1, 'Marie Boyd', 'La Mesa', 'Nulla ut erat id mauris vulputate elementum.', '2019-08-16 01:31:42', '2019-07-28 00:00:00'),
(101, 'amanda@skaboo.net', 'jean88', 1, 'pbkdf2:sha256:150000$XihyJsRh$291df646b049a1e1c06038469f9ea67723dd04c0f352ef2c6ffae7710e247e46', 1, 'Laura James', 'Stockton', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.', '2019-08-16 01:31:42', '2019-08-08 00:00:00'),
(102, 'irene@gigabox.com', 'doris88', 1, 'pbkdf2:sha256:150000$NuwUHCEf$e6324102b7236d5b3902b32ad88215a5342e906fc2c185999e46cfbfe23f9c16', 1, 'Ruby George', 'Parlier', 'Donec ut dolor.', '2019-08-16 01:31:42', '2019-07-30 00:00:00'),
(103, 'rachel@zoonoodle.net', 'lori87', 1, 'pbkdf2:sha256:150000$ZvPWyNPo$4fb1d37327229d28a751d777217ac5dfc55464b674ea551709317c20f0ef3415', 1, 'Emily Green', 'Agoura Hills', 'Maecenas ut massa quis augue luctus tincidunt.', '2019-08-16 01:31:42', '2019-08-08 00:00:00');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;
--
-- 使用表AUTO_INCREMENT `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
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
