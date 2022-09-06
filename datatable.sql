-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 06, 2022 lúc 11:42 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `datatable`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `headers`
--

CREATE TABLE `headers` (
  `id` int(11) NOT NULL,
  `munber_style` varchar(255) NOT NULL,
  `my_img` varchar(191) NOT NULL,
  `my_color` varchar(255) NOT NULL,
  `my_about` varchar(191) NOT NULL,
  `my_title` varchar(191) NOT NULL,
  `bnt` varchar(191) NOT NULL,
  `my_background` varchar(191) NOT NULL,
  `bnt_video` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_croatian_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `headers`
--

INSERT INTO `headers` (`id`, `munber_style`, `my_img`, `my_color`, `my_about`, `my_title`, `bnt`, `my_background`, `bnt_video`, `created`, `modified`, `user_id`) VALUES
(9, 'header1', 'https://i.pinimg.com/originals/fd/c0/a3/fdc0a3cdbb3bae708b74fe9de540f44d.jpg', '#222222', 'Fédérateur. Personnalisé. Souple & adapté.', 'Avec z0 Gravity, découvrez la simplicité et la performance d’une gestion de projet collaborative.3', 'Découvrez z0 Gravity', '#0099FF', 'Voir la vidéo', '2022-09-06 10:12:06', '2022-09-06 10:12:06', 1),
(10, 'header5', 'https://i.pinimg.com/originals/cd/6b/98/cd6b98b5b445050a07a0f9079f07a44a.jpg', '#110000', 'Fédérateur. Personnalisé. Souple & adapté.4', 'Avec z0 Gravity, découvrez la simplicité et la performance d’une gestion de projet collaborative.4', 'Découvrez z0 Gravity', '#6699FF', 'Voir la vidéo', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3),
(11, 'header2', 'https://i.pinimg.com/originals/a0/7b/48/a07b48ca35d9ca59ce0b4464a250a9d0.jpg', '#777777', 'Fédérateur. Personnalisé. Souple & adapté.', 'Avec z0 Gravity, découvrez la simplicité et la performance d’une gestion de projet collaborative.', 'Découvrez z0 Gravity', '#CCFFFF', 'Voir la vidéo', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `i18n`
--

CREATE TABLE `i18n` (
  `id` int(11) NOT NULL,
  `locale` varchar(6) NOT NULL,
  `model` varchar(255) NOT NULL,
  `foreign_key` int(10) NOT NULL,
  `field` varchar(255) NOT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `i18n`
--

INSERT INTO `i18n` (`id`, `locale`, `model`, `foreign_key`, `field`, `content`) VALUES
(29, 'fr', 'Headers', 9, 'my_about', 'Federator. Personalized. Flexible & adapted.'),
(30, 'fr', 'Headers', 9, 'my_title', 'With z0 Gravity, discover the simplicity and performance of collaborative project management.'),
(31, 'es', 'Headers', 9, 'my_about', 'federador. Personalizado. Flexible y adaptado.'),
(32, 'es', 'Headers', 9, 'my_title', 'Con z0 Gravity, descubra la simplicidad y el rendimiento de la gestión colaborativa de proyectos.'),
(33, 'vi', 'Headers', 9, 'my_about', 'Người liên bang. Được cá nhân hóa. Linh hoạt và thích nghi.'),
(34, 'vi', 'Headers', 9, 'my_title', 'Với z0 Gravity, khám phá sự đơn giản và hiệu suất của quản lý dự án cộng tác.'),
(35, 'fr', 'Headers', 10, 'my_about', 'Federator. Personalized. Flexible & adapted.4'),
(36, 'fr', 'Headers', 10, 'my_title', 'With z0 Gravity, discover the simplicity and performance of collaborative project management.4'),
(37, 'es', 'Headers', 10, 'my_about', 'Z0 Gravity es un software de gestión de múltiples proyectos: cualquiera que sea su complejidad, usted gestiona fácilmente los cronogramas, los presupuestos y los recursos humanos de sus proyectos a través de un uso interfuncional y colaborativo.'),
(38, 'es', 'Headers', 10, 'my_title', 'Con z0 Gravity, descubra la simplicidad y el rendimiento de la gestión colaborativa de proyectos.4'),
(39, 'vi', 'Headers', 10, 'my_about', 'Z0 Gravity là một phần mềm quản lý đa dự án: bất kể độ phức tạp của chúng, bạn có thể dễ dàng quản lý lịch trình, ngân sách và nguồn nhân lực cho các dự án của mình thông qua việc sử dụng hợp tác và đa chức năng.'),
(40, 'vi', 'Headers', 10, 'my_title', 'Với z0 Gravity, khám phá sự đơn giản và hiệu suất của quản lý dự án cộng tác.4'),
(41, 'fr', 'Headers', 11, 'my_about', 'Federator. Personalized. Flexible & adapted.'),
(42, 'fr', 'Headers', 11, 'my_title', 'With z0 Gravity, discover the simplicity and performance of collaborative project management.6'),
(43, 'es', 'Headers', 11, 'my_about', 'federador. Personalizado. Flexible y adaptado.'),
(44, 'es', 'Headers', 11, 'my_title', 'Con z0 Gravity, descubra la simplicidad y el rendimiento de la gestión colaborativa de proyectos.6'),
(45, 'vi', 'Headers', 11, 'my_about', 'Người liên bang. Được cá nhân hóa. Linh hoạt và thích nghi.6'),
(46, 'vi', 'Headers', 11, 'my_title', 'Với z0 Gravity, khám phá sự đơn giản và hiệu suất của quản lý dự án cộng tác.6');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pours`
--

CREATE TABLE `pours` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `about` varchar(255) NOT NULL,
  `Notre_engagement` varchar(255) NOT NULL,
  `about_notre` varchar(255) NOT NULL,
  `layout_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `title2` varchar(255) NOT NULL,
  `about2` varchar(255) NOT NULL,
  `bnt` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `pours`
--

INSERT INTO `pours` (`id`, `title`, `logo`, `about`, `Notre_engagement`, `about_notre`, `layout_img`, `note`, `link`, `title2`, `about2`, `bnt`, `created`, `modified`, `user_id`) VALUES
(1, 'Z0 Gravity est un logiciel de gestion multi-projets : quelle que soit leur complexité, vous gérez facilement les plannings, les budgets et les ressources humaines de vos projets par un usage transversal et collaboratif.', 'POUR FAIRE COURT.', 'Z0 Gravity est un logiciel de gestion multi-projets : quelle que soit leur complexité, vous gérez facilement les plannings, les budgets et les ressources humaines de vos projets par un usage transversal et collaboratif.', 'Notre engagement:', 'Cest aider tout type doranisation á resaliser ses projest avec un seul mot dorder :', 'https://i.pinimg.com/originals/c5/c7/61/c5c7612e697598f23abc83f5dce1cd74.jpg', '  sim-pli-ci-té!', 'https://www.pinterest.com/pin/629307747908773084/', 'Découvrez l’univers z0 Gravity', 'Plannings, budgets, calendriers… En un clin dœil, vous avez une vision globale et stratégique de lavancée de vos projets en temps réel !', 'Découvrez z0 Gravity', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pours_i18n`
--

CREATE TABLE `pours_i18n` (
  `id` int(11) NOT NULL,
  `locale` varchar(6) NOT NULL,
  `model` varchar(255) NOT NULL,
  `foreign_key` int(10) NOT NULL,
  `field` varchar(255) NOT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `pours_i18n`
--

INSERT INTO `pours_i18n` (`id`, `locale`, `model`, `foreign_key`, `field`, `content`) VALUES
(4, 'fr', 'Pours', 1, 'about', 'Z0 Gravity is a multi-project management software: whatever their complexity, you easily manage the schedules, budgets and human resources of your projects through cross-functional and collaborative use.'),
(5, 'es', 'Pours', 1, 'about', 'Z0 Gravity es un software de gestión de múltiples proyectos: cualquiera que sea su complejidad, usted gestiona fácilmente los cronogramas, los presupuestos y los recursos humanos de sus proyectos a través de un uso interfuncional y colaborativo.'),
(6, 'vi', 'Pours', 1, 'about', 'Z0 Gravity là một phần mềm quản lý đa dự án: bất kể độ phức tạp của chúng, bạn có thể dễ dàng quản lý lịch trình, ngân sách và nguồn nhân lực cho các dự án của mình thông qua việc sử dụng hợp tác và đa chức năng.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pres`
--

CREATE TABLE `pres` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `about` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `dress` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `pres`
--

INSERT INTO `pres` (`id`, `title`, `logo`, `about`, `author`, `dress`, `link`, `created`, `modified`) VALUES
(8, 'FRESSE', 'https://i.pinimg.com/originals/73/d2/dc/73d2dc2ab7bad7c4ee3368b9b8b5edc2.jpg', 'Il y avait tout d’abord la sécurité, l’outil z0 Gravity a pu être rapidement validé par les équipes d’Orange Cyberdéfense.', 'Stéphane Touchet ', 'PMO service client Orange Sud-Ouest', 'https://i.pinimg.com/originals/73/d2/dc/73d2dc2ab7bad7c4ee3368b9b8b5edc2.jpg', '2022-09-06 04:43:54', '0000-00-00 00:00:00'),
(9, 'HBO', 'https://i.pinimg.com/originals/3c/bd/30/3cbd30fbdf522f9ef059877ec455c091.jpg', 'Il y avait tout d’abord la sécurité, l’outil z0 Gravity a pu être rapidement validé par les équipes d’Orange Cyberdéfense.', 'Stéphane Touchet ', 'https://i.pinimg.com/originals/3c/bd/30/3cbd30fbdf522f9ef059877ec455c091.jpg', 'https://i.pinimg.com/originals/3c/bd/30/3cbd30fbdf522f9ef059877ec455c091.jpg', '2022-09-06 09:04:08', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pres_i18n`
--

CREATE TABLE `pres_i18n` (
  `id` int(11) NOT NULL,
  `locale` varchar(6) NOT NULL,
  `model` varchar(255) NOT NULL,
  `foreign_key` int(10) NOT NULL,
  `field` varchar(255) NOT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `pres_i18n`
--

INSERT INTO `pres_i18n` (`id`, `locale`, `model`, `foreign_key`, `field`, `content`) VALUES
(15, 'fr', 'Pres', 8, 'about', 'First of all there was security, the z0 Gravity tool was quickly validated by the Orange Cyberdefense teams.'),
(16, 'es', 'Pres', 8, 'about', 'En primer lugar estaba la seguridad, la herramienta z0 Gravity fue rápidamente validada por los equipos de Orange Cyberdefense.'),
(17, 'vi', 'Pres', 8, 'about', 'Trước hết là vấn đề bảo mật, công cụ z0 Gravity đã nhanh chóng được xác nhận bởi nhóm Orange Cyberdefense.'),
(18, 'fr', 'Pres', 9, 'about', 'First of all there was security, the z0 Gravity tool was quickly validated by the Orange Cyberdefense teams.2'),
(19, 'es', 'Pres', 9, 'about', 'En primer lugar estaba la seguridad, la herramienta z0 Gravity fue rápidamente validada por los equipos de Orange Cyberdefense2'),
(20, 'vi', 'Pres', 9, 'about', 'Trước hết là vấn đề bảo mật, công cụ z0 Gravity đã nhanh chóng được xác nhận bởi nhóm Orange Cyberdefense.2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `created`, `modified`) VALUES
(3, 'xuananhgl@gmail.com', '$2y$10$t3hbonDHXPnWC2DzeyuKkeO..rxjf24K4OD.to/5zbcAfPj9dHq66', '2022-09-06 02:03:39', '2022-09-06 02:03:39');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `headers`
--
ALTER TABLE `headers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `munber_style` (`munber_style`);

--
-- Chỉ mục cho bảng `i18n`
--
ALTER TABLE `i18n`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `I18N_LOCALE_FIELD` (`locale`,`model`,`foreign_key`,`field`),
  ADD KEY `I18N_FIELD` (`model`,`foreign_key`,`field`);

--
-- Chỉ mục cho bảng `pours`
--
ALTER TABLE `pours`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pours_i18n`
--
ALTER TABLE `pours_i18n`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `POURS_I18N_LOCALE_FIELD` (`locale`,`model`,`foreign_key`,`field`),
  ADD KEY `POURS_I18N_FIELD` (`model`,`foreign_key`,`field`);

--
-- Chỉ mục cho bảng `pres`
--
ALTER TABLE `pres`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pres_i18n`
--
ALTER TABLE `pres_i18n`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `PRES_I18N_LOCALE_FIELD` (`locale`,`model`,`foreign_key`,`field`),
  ADD KEY `PRES_I18N_FIELD` (`model`,`foreign_key`,`field`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `headers`
--
ALTER TABLE `headers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `i18n`
--
ALTER TABLE `i18n`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `pours`
--
ALTER TABLE `pours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `pours_i18n`
--
ALTER TABLE `pours_i18n`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `pres`
--
ALTER TABLE `pres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `pres_i18n`
--
ALTER TABLE `pres_i18n`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
