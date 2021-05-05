-- --------------------------------------------------------
-- Servidor:                     piglog.mysql.dbaas.com.br
-- Versão do servidor:           5.7.32-35-log - Percona Server (GPL), Release 35, Revision 5688520
-- OS do Servidor:               Linux
-- HeidiSQL Versão:              9.4.0.5144
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para piglog
CREATE DATABASE IF NOT EXISTS `piglog` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci */;
USE `piglog`;

-- Copiando estrutura para tabela piglog.acessos
CREATE TABLE IF NOT EXISTS `acessos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `sistema_operacional` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `navegador` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `longitude` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `data_acesso` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=606 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Copiando dados para a tabela piglog.acessos: 109 rows
/*!40000 ALTER TABLE `acessos` DISABLE KEYS */;
INSERT INTO `acessos` (`id`, `ip`, `sistema_operacional`, `navegador`, `latitude`, `longitude`, `data_acesso`) VALUES
	(605, '66.249.70.109', 'Linux', 'Google Chrome 89.0.4389.130', '0', '0', '2021-05-02 07:39:20'),
	(604, '187.45.116.150', 'Windows 10', 'Google Chrome 90.0.4430.93', '0', '0', '2021-04-27 08:13:51'),
	(603, '200.150.107.58', 'Windows 8.1', 'Google Chrome 89.0.4389.128', '0', '0', '2021-04-22 11:10:54'),
	(602, '66.249.70.107', 'Linux', 'Google Chrome 89.0.4389.127', '0', '0', '2021-04-18 09:09:08'),
	(601, '187.95.11.195', 'Windows 10', 'Google Chrome 89.0.4389.114', '0', '0', '2021-04-06 16:53:31'),
	(600, '191.190.253.80', 'Linux', 'Google Chrome 89.0.4389.105', '0', '0', '2021-03-26 10:06:06'),
	(599, '191.190.253.80', 'Linux', 'Google Chrome 89.0.4389.105', '0', '0', '2021-03-25 14:54:40'),
	(598, '191.190.253.80', 'Linux', 'Google Chrome 89.0.4389.105', '0', '0', '2021-03-25 14:51:00'),
	(597, '66.249.70.98', 'Robots - Google', 'Google Chrome 89.0.4389.93', '0', '0', '2021-03-21 02:04:45'),
	(596, '66.249.70.98', 'Linux', 'Google Chrome 88.0.4324.202', '0', '0', '2021-03-04 16:51:40'),
	(595, '66.249.70.117', 'Linux', 'Google Chrome 88.0.4324.175', '0', '0', '2021-02-24 10:04:48'),
	(594, '66.249.70.117', 'Robots - Google', 'Google Chrome 88.0.4324.175', '0', '0', '2021-02-24 10:04:46'),
	(593, '66.249.66.194', 'Robots - Google', 'Google Chrome 88.0.4324.143', '0', '0', '2021-02-09 03:14:05'),
	(592, '66.249.66.194', 'Linux', 'Google Chrome 88.0.4324.143', '0', '0', '2021-02-09 03:14:00'),
	(591, '66.249.66.199', 'Linux', 'Google Chrome 88.0.4324.143', '0', '0', '2021-02-05 10:40:34'),
	(590, '66.249.66.194', 'Robots - Google', 'Google Chrome 88.0.4324.114', '0', '0', '2021-02-04 14:48:27'),
	(589, '66.249.66.197', 'Linux', 'Google Chrome 88.0.4324.143', '0', '0', '2021-02-04 14:37:11'),
	(588, '66.249.66.194', 'Linux', 'Google Chrome 88.0.4324.114', '0', '0', '2021-02-03 23:51:39'),
	(587, '66.249.70.97', 'Linux', 'Google Chrome 88.0.4324.114', '0', '0', '2021-02-01 08:34:32'),
	(586, '66.249.70.97', 'Linux', 'Google Chrome 88.0.4324.114', '0', '0', '2021-01-31 13:40:26'),
	(585, '177.159.143.68', 'Mac OS X', 'Google Chrome 87.0.4280.141', '0', '0', '2021-01-21 20:04:19'),
	(584, '66.249.70.98', 'Linux', 'Google Chrome 87.0.4280.90', '0', '0', '2021-01-21 14:43:06'),
	(583, '66.249.70.98', 'Linux', 'Google Chrome 87.0.4280.90', '0', '0', '2021-01-15 19:52:25'),
	(582, '66.249.70.98', 'Linux', 'Google Chrome 87.0.4280.90', '0', '0', '2021-01-14 15:29:25'),
	(581, '66.249.70.98', 'Robots - Google', 'Google Chrome 87.0.4280.90', '0', '0', '2021-01-14 15:29:24'),
	(580, '66.249.70.98', 'Robots - Google', 'Google Chrome 87.0.4280.90', '0', '0', '2021-01-07 12:31:18'),
	(579, '66.249.70.98', 'Linux', 'Google Chrome 87.0.4280.90', '0', '0', '2021-01-07 11:52:49'),
	(578, '66.249.70.98', 'Robots - Google', 'Google Chrome 87.0.4280.90', '0', '0', '2020-12-28 04:09:09'),
	(577, '66.249.70.98', 'Robots - Google', 'Google Chrome 87.0.4280.90', '0', '0', '2020-12-23 17:40:37'),
	(576, '66.249.70.98', 'Linux', 'Google Chrome 87.0.4280.90', '0', '0', '2020-12-23 17:40:36'),
	(575, '66.249.70.99', 'Robots - Google', 'Google Chrome 87.0.4280.90', '0', '0', '2020-12-15 09:09:48'),
	(574, '186.194.154.205', 'Linux', 'Google Chrome 86.0.4240.198', '0', '0', '2020-12-08 22:27:21'),
	(573, '186.226.246.45', 'Linux', 'Google Chrome 86.0.4240.75', '0', '0', '2020-12-07 10:35:45'),
	(572, '186.226.246.1', 'Windows 10', 'Google Chrome 59.0.3071.115', '0', '0', '2017-07-03 07:45:33'),
	(571, '186.226.246.1', 'Windows 10', 'Google Chrome 59.0.3071.115', '0', '0', '2017-06-30 16:14:42'),
	(570, '189.18.147.227', 'Windows 7', 'Google Chrome 56.0.2924.87', '0', '0', '2017-03-13 13:34:36'),
	(569, '201.76.4.52', 'Windows 7', 'Google Chrome 56.0.2924.87', '0', '0', '2017-03-10 18:50:20'),
	(568, '186.226.246.45', 'Windows 10', 'Google Chrome 56.0.2924.87', '0', '0', '2017-03-10 09:44:04'),
	(567, '189.40.72.216', 'Linux', 'Google Chrome 55.0.2883.91', '0', '0', '2017-03-07 09:14:34'),
	(566, '177.201.242.201', 'Windows 7', 'Google Chrome 56.0.2924.87', '0', '0', '2017-03-01 11:56:15'),
	(565, '186.226.246.45', 'Windows 10', 'Google Chrome 56.0.2924.87', '0', '0', '2017-02-24 15:12:31'),
	(564, '186.226.246.45', 'Windows 10', 'Google Chrome 56.0.2924.87', '0', '0', '2017-02-23 13:12:29'),
	(563, '177.75.175.22', 'Windows 7', 'Google Chrome 56.0.2924.87', '0', '0', '2017-02-21 16:47:00'),
	(562, '187.94.128.234', 'Windows 7', 'Google Chrome 56.0.2924.87', '0', '0', '2017-02-21 13:27:57'),
	(561, '186.226.246.45', 'Windows 10', 'Google Chrome 56.0.2924.87', '0', '0', '2017-02-21 11:06:09'),
	(560, '186.226.246.45', 'Windows 10', 'Google Chrome 56.0.2924.87', '0', '0', '2017-02-21 08:03:49'),
	(559, '186.226.246.45', 'Windows 10', 'Google Chrome 56.0.2924.87', '0', '0', '2017-02-20 13:28:36'),
	(558, '186.226.246.45', 'Windows 10', 'Google Chrome 56.0.2924.87', '0', '0', '2017-02-13 11:42:10'),
	(557, '189.38.114.70', 'Windows 8.1', 'Google Chrome 53.0.2785.101', '0', '0', '2017-02-09 16:31:01'),
	(556, '186.226.246.45', 'Windows 10', 'Google Chrome 56.0.2924.87', '0', '0', '2017-02-09 15:11:48'),
	(555, '168.194.162.48', 'Windows 8.1', 'Google Chrome 56.0.2924.87', '0', '0', '2017-02-08 11:16:09'),
	(554, '177.7.153.15', 'Windows 7', 'Google Chrome 55.0.2883.87', '0', '0', '2017-02-02 15:38:09'),
	(553, '186.226.246.45', 'Windows 10', 'Google Chrome 55.0.2883.87', '0', '0', '2017-02-02 09:07:39'),
	(552, '186.226.246.45', 'Windows 10', 'Google Chrome 55.0.2883.87', '0', '0', '2017-02-01 16:57:09'),
	(551, '186.226.246.45', 'Windows 10', 'Google Chrome 55.0.2883.87', '0', '0', '2017-02-01 07:50:40'),
	(550, '186.226.246.45', 'Windows 10', 'Google Chrome 55.0.2883.87', '0', '0', '2017-01-30 10:58:32'),
	(549, '179.96.201.243', 'Windows 10', 'Google Chrome 55.0.2883.87', '0', '0', '2017-01-27 17:44:42'),
	(548, '186.226.246.45', 'Windows 10', 'Google Chrome 55.0.2883.87', '0', '0', '2017-01-26 09:36:03'),
	(547, '186.226.246.45', 'Windows 10', 'Google Chrome 55.0.2883.87', '0', '0', '2017-01-26 08:45:13'),
	(546, '186.226.246.45', 'Windows 10', 'Google Chrome 55.0.2883.87', '0', '0', '2017-01-25 13:28:25'),
	(545, '187.94.128.234', 'Windows 7', 'Google Chrome 47.0.2526.106', '0', '0', '2017-01-24 14:42:16'),
	(544, '186.226.246.45', 'Windows 10', 'Google Chrome 55.0.2883.87', '0', '0', '2017-01-23 09:15:47'),
	(543, '186.226.246.45', 'Windows 10', 'Google Chrome 55.0.2883.87', '0', '0', '2017-01-20 07:51:55'),
	(542, '177.156.112.147', 'Windows 7', 'Google Chrome 55.0.2883.87', '0', '0', '2017-01-19 10:32:18'),
	(541, '186.226.246.45', 'Windows 10', 'Google Chrome 55.0.2883.87', '0', '0', '2017-01-18 14:42:00'),
	(540, '186.226.246.45', 'Windows 10', 'Google Chrome 55.0.2883.87', '0', '0', '2017-01-18 14:35:29'),
	(539, '186.226.246.45', 'Mac OS X', 'Google Chrome 49.0.2623.112', '-24.550174', '-49.9209355', '2017-01-17 14:52:05'),
	(538, '177.75.175.22', 'Windows 7', 'Google Chrome 55.0.2883.87', '0', '0', '2017-01-17 10:35:20'),
	(537, '186.226.246.45', 'Windows 10', 'Google Chrome 55.0.2883.87', '0', '0', '2017-01-16 11:24:13'),
	(536, '179.107.18.178', 'Windows 10', 'Google Chrome 55.0.2883.87', '0', '0', '2017-01-12 19:43:53'),
	(535, '189.68.223.39', 'Linux', 'Google Chrome 50.0.2661.89', '0', '0', '2017-01-12 11:48:32'),
	(534, '186.226.246.45', 'Windows 10', 'Google Chrome 55.0.2883.87', '0', '0', '2017-01-04 16:57:34'),
	(533, '66.249.83.201', 'Linux', 'Google Chrome 38.0.1025.166', '0', '0', '2017-01-03 14:57:48'),
	(532, '66.102.8.219', 'Linux', 'Google Chrome 38.0.1025.166', '0', '0', '2017-01-03 14:57:48'),
	(531, '66.249.83.199', 'Linux', 'Google Chrome 38.0.1025.166', '0', '0', '2017-01-03 14:56:32'),
	(530, '66.249.83.201', 'Linux', 'Google Chrome 38.0.1025.166', '0', '0', '2017-01-03 14:56:32'),
	(529, '186.226.246.45', 'Windows 10', 'Google Chrome 55.0.2883.87', '0', '0', '2017-01-03 13:41:55'),
	(528, '186.226.246.45', 'Windows 10', 'Google Chrome 55.0.2883.87', '0', '0', '2017-01-02 16:28:19'),
	(527, '186.226.246.45', 'Windows 10', 'Google Chrome 55.0.2883.87', '0', '0', '2016-12-30 08:41:58'),
	(526, '186.226.246.45', 'Windows 10', 'Google Chrome 55.0.2883.87', '0', '0', '2016-12-13 13:59:47'),
	(525, '186.226.246.45', 'Windows 10', 'Google Chrome 55.0.2883.87', '0', '0', '2016-12-12 14:52:44'),
	(524, '186.226.246.45', 'Windows 10', 'Google Chrome 55.0.2883.75', '0', '0', '2016-12-12 07:58:01'),
	(523, '200.150.110.154', 'Windows 10', 'Google Chrome 54.0.2840.99', '0', '0', '2016-12-10 12:03:59'),
	(522, '186.226.246.45', 'Windows 10', 'Google Chrome 46.0.2486.0', '-22.8646', '-51.389', '2016-12-08 13:17:29'),
	(521, '186.226.246.45', 'Windows 10', 'Google Chrome 54.0.2840.99', '0', '0', '2016-12-08 12:11:17'),
	(520, '186.226.246.45', 'Windows 10', 'Google Chrome 54.0.2840.99', '0', '0', '2016-12-08 11:54:08'),
	(519, '186.226.246.45', 'Windows 10', 'Google Chrome 54.0.2840.99', '0', '0', '2016-12-08 11:52:37'),
	(518, '186.226.246.45', 'Windows 7', 'Google Chrome 54.0.2840.99', '0', '0', '2016-12-08 11:51:27'),
	(517, '186.226.246.45', 'Windows 10', 'Google Chrome 55.0.2883.75', '0', '0', '2016-12-08 07:58:10'),
	(516, '186.226.246.45', 'Windows 10', 'Google Chrome 55.0.2883.75', '0', '0', '2016-12-07 07:54:19'),
	(515, '186.226.246.45', 'Windows 10', 'Google Chrome 55.0.2883.75', '0', '0', '2016-12-06 12:09:07'),
	(514, '186.226.246.45', 'Windows 10', 'Google Chrome 55.0.2883.75', '0', '0', '2016-12-05 15:56:17'),
	(513, '186.226.246.45', 'Windows 10', 'Google Chrome 54.0.2840.99', '0', '0', '2016-12-02 15:54:52'),
	(512, '186.226.246.45', 'Linux', 'Google Chrome 54.0.2840.85', '0', '0', '2016-11-30 15:54:36'),
	(511, '186.226.246.45', 'Windows 10', 'Google Chrome 54.0.2840.99', '0', '0', '2016-11-30 09:06:34'),
	(510, '186.226.246.45', 'Windows 10', 'Google Chrome 54.0.2840.99', '0', '0', '2016-11-29 09:11:55'),
	(509, '179.107.18.178', 'Windows 10', 'Google Chrome 54.0.2840.99', '0', '0', '2016-11-28 20:09:06'),
	(508, '66.249.64.113', 'Robots - Google', '', '0', '0', '2016-11-28 14:18:14'),
	(507, '186.226.246.45', 'Windows 10', 'Google Chrome 54.0.2840.99', '0', '0', '2016-11-28 13:38:59'),
	(506, '186.226.246.45', 'Windows 10', 'Google Chrome 54.0.2840.99', '0', '0', '2016-11-28 07:49:18'),
	(505, '186.226.246.45', 'Windows 7', 'Google Chrome 54.0.2840.99', '0', '0', '2016-11-27 08:44:32'),
	(504, '186.226.246.45', 'Windows 10', 'Google Chrome 46.0.2486.0', '-22.8646', '-51.389', '2016-11-25 11:11:59'),
	(503, '186.226.246.45', 'Windows 10', 'Google Chrome 54.0.2840.99', '0', '0', '2016-11-25 10:50:36'),
	(502, '186.226.246.45', 'Windows 7', 'Google Chrome 54.0.2840.99', '0', '0', '2016-11-25 09:58:10'),
	(501, '186.226.246.45', 'Windows 10', 'Google Chrome 54.0.2840.99', '0', '0', '2016-11-25 07:43:03'),
	(500, '186.226.246.45', 'Windows 7', 'Google Chrome 54.0.2840.99', '0', '0', '2016-11-24 16:36:51'),
	(499, '186.226.246.45', 'Windows 10', 'Google Chrome 54.0.2840.99', '0', '0', '2016-11-24 16:25:32'),
	(498, '186.226.246.45', 'Windows 10', 'Google Chrome 54.0.2840.99', '0', '0', '2016-11-22 10:38:26'),
	(497, '186.226.246.45', 'Windows 10', 'Google Chrome 54.0.2840.87', '0', '0', '2016-11-11 09:01:14');
/*!40000 ALTER TABLE `acessos` ENABLE KEYS */;

-- Copiando estrutura para tabela piglog.banners
CREATE TABLE IF NOT EXISTS `banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(70) DEFAULT NULL,
  `link` varchar(120) DEFAULT NULL,
  `imagem` varchar(150) DEFAULT NULL,
  `ordem` int(11) DEFAULT '1',
  `ativo` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela piglog.banners: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
INSERT INTO `banners` (`id`, `titulo`, `link`, `imagem`, `ordem`, `ativo`) VALUES
	(5, 'com qualidade e dedicação', '', 'dcwa2cax64.jpg', 20, 1),
	(6, 'Conheça um pouco sobre a Pig Log Transportes', '', 'wda4x253b4.jpg', 18, 1),
	(7, 'Transportando Confiança!', '', 'zayax3zbza.jpg', 19, 1),
	(8, 'Bem Vindo ao nosso Website', '', '08bawd57db.png', 17, 1),
	(10, 'Piglog - Transportes', '', '8y8aydaaw5.jpg', 15, 1);
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;

-- Copiando estrutura para tabela piglog.conf_sistema
CREATE TABLE IF NOT EXISTS `conf_sistema` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logo` varchar(150) NOT NULL,
  `titulo` varchar(90) NOT NULL,
  `cor_layout` varchar(20) NOT NULL,
  `cor_menu` varchar(20) NOT NULL,
  `user` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user` (`user`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela piglog.conf_sistema: 1 rows
/*!40000 ALTER TABLE `conf_sistema` DISABLE KEYS */;
INSERT INTO `conf_sistema` (`id`, `logo`, `titulo`, `cor_layout`, `cor_menu`, `user`) VALUES
	(1, '', 'meu tema', '005da8', '9e9488', 3);
/*!40000 ALTER TABLE `conf_sistema` ENABLE KEYS */;

-- Copiando estrutura para tabela piglog.conf_whatts
CREATE TABLE IF NOT EXISTS `conf_whatts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ddi` int(11) DEFAULT NULL,
  `dd` varchar(50) DEFAULT NULL,
  `numero` varchar(50) DEFAULT NULL,
  `nome` varchar(90) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela piglog.conf_whatts: 1 rows
/*!40000 ALTER TABLE `conf_whatts` DISABLE KEYS */;
INSERT INTO `conf_whatts` (`id`, `ddi`, `dd`, `numero`, `nome`, `password`) VALUES
	(1, 55, '43', '84015095', 'Sistema', '1prtJWQXJl5BI8mYm+WmW0PiOSM=');
/*!40000 ALTER TABLE `conf_whatts` ENABLE KEYS */;

-- Copiando estrutura para tabela piglog.contatos
CREATE TABLE IF NOT EXISTS `contatos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(120) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `assunto` varchar(200) DEFAULT NULL,
  `param` int(11) DEFAULT NULL,
  `mensagem` text,
  `resposta` longtext NOT NULL,
  `visualizado` int(11) NOT NULL DEFAULT '0',
  `data_contato` datetime NOT NULL,
  `ip` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela piglog.contatos: 1 rows
/*!40000 ALTER TABLE `contatos` DISABLE KEYS */;
INSERT INTO `contatos` (`id`, `nome`, `email`, `telefone`, `assunto`, `param`, `mensagem`, `resposta`, `visualizado`, `data_contato`, `ip`) VALUES
	(9, 'Thiago Carlos Silvério', 'thiago@schoeler.com.br', '(43) 842-57131', 'Proposta de Compra de veículo', 5, 'Teste de Cotação', '', 1, '2016-09-23 11:18:35', '200.192.101.7, 172.68.28.131');
/*!40000 ALTER TABLE `contatos` ENABLE KEYS */;

-- Copiando estrutura para tabela piglog.cotacoes
CREATE TABLE IF NOT EXISTS `cotacoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(90) NOT NULL,
  `telefone` varchar(50) NOT NULL,
  `email` varchar(70) NOT NULL,
  `empresa` varchar(80) NOT NULL,
  `cnpj` varchar(30) NOT NULL,
  `ie` varchar(30) NOT NULL,
  `origem` varchar(90) DEFAULT NULL,
  `destino` varchar(90) DEFAULT NULL,
  `tipo_carga` varchar(80) DEFAULT NULL,
  `quantidade` float DEFAULT '0',
  `adicional` text NOT NULL,
  `resposta` text,
  `data_contato` datetime DEFAULT NULL,
  `visualizado` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela piglog.cotacoes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `cotacoes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cotacoes` ENABLE KEYS */;

-- Copiando estrutura para tabela piglog.erros
CREATE TABLE IF NOT EXISTS `erros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trace` text COLLATE utf8_unicode_ci,
  `parametros` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `mensagem` text COLLATE utf8_unicode_ci,
  `ip` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `parametros_acesso` text COLLATE utf8_unicode_ci,
  `data_execucao` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Copiando dados para a tabela piglog.erros: 0 rows
/*!40000 ALTER TABLE `erros` DISABLE KEYS */;
/*!40000 ALTER TABLE `erros` ENABLE KEYS */;

-- Copiando estrutura para tabela piglog.galerias
CREATE TABLE IF NOT EXISTS `galerias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(90) DEFAULT NULL,
  `operacao` int(11) DEFAULT NULL,
  `descricao` text,
  `ativo` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela piglog.galerias: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `galerias` DISABLE KEYS */;
INSERT INTO `galerias` (`id`, `nome`, `operacao`, `descricao`, `ativo`) VALUES
	(11, 'Abate', 2, '', 1),
	(12, 'Granel', 1, '', 1),
	(13, 'Marrãs', 2, '', 1);
/*!40000 ALTER TABLE `galerias` ENABLE KEYS */;

-- Copiando estrutura para tabela piglog.galeria_imagens
CREATE TABLE IF NOT EXISTS `galeria_imagens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `galeria` bigint(20) DEFAULT NULL,
  `imagem` varchar(150) DEFAULT NULL,
  `ordem` int(11) DEFAULT NULL,
  `capa` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `evento` (`galeria`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela piglog.galeria_imagens: ~19 rows (aproximadamente)
/*!40000 ALTER TABLE `galeria_imagens` DISABLE KEYS */;
INSERT INTO `galeria_imagens` (`id`, `galeria`, `imagem`, `ordem`, `capa`) VALUES
	(115, 11, 'wyd91wdz6b.jpg', 1, 0),
	(116, 11, 'z9b4cywy1z.jpg', 2, 0),
	(119, 11, '74d2y1yx06.jpg', 3, 1),
	(121, 11, 'w6b481x2da.jpeg', 4, 0),
	(122, 11, 'cdz2acz3y6.jpeg', 5, 0),
	(123, 11, '2ydab506da.jpg', 6, 0),
	(124, 11, 'w9w8z055z0.jpg', 7, 0),
	(125, 11, 'bybdazcy3y.jpg', 8, 0),
	(126, 11, '12w6yz13zc.jpg', 9, 0),
	(127, 11, 'w7w4xczd74.jpg', 10, 0),
	(128, 11, 'wzy93x3b4b.jpg', 11, 0),
	(129, 12, '6a9z95a126.jpg', 1, 0),
	(130, 12, 'd89wb4cy5x.jpg', 2, 0),
	(131, 12, 'c76465214b.jpg', 3, 0),
	(132, 12, 'yazcx2a381.jpg', 4, 0),
	(135, 13, 'w51c78d9cy.jpg', 2, 0),
	(136, 13, '3zd5619632.jpg', 3, 0),
	(137, 13, '73axx38bb3.jpg', 4, 0),
	(138, 13, 'bzzyd29zd9.jpg', 5, 1),
	(139, 11, 'bz4b5wzdww.jpg', 12, 0),
	(140, 11, 'c66a8zw6zw.jpg', 13, 0),
	(141, 11, 'a4bcd33bw4.jpg', 14, 0);
/*!40000 ALTER TABLE `galeria_imagens` ENABLE KEYS */;

-- Copiando estrutura para tabela piglog.institucional
CREATE TABLE IF NOT EXISTS `institucional` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url_tratada` varchar(60) NOT NULL DEFAULT '0',
  `pagina` varchar(50) DEFAULT NULL,
  `conteudo` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela piglog.institucional: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `institucional` DISABLE KEYS */;
INSERT INTO `institucional` (`id`, `url_tratada`, `pagina`, `conteudo`) VALUES
	(1, 'missao', 'Missão', '<p>Transportar com seguran&ccedil;a, responsabilidade e confiabilidade visando a satisfa&ccedil;&atilde;o dos nossos clientes internos e externos, crescimento e rentabilidade.</p>\r\n'),
	(2, 'visao', 'Visão', '<p>Ser reconhecido pela qualidade no transporte, com custos competitivos, confiabilidade e parceiros de longo prazo.</p>\r\n'),
	(3, 'valores', 'Valores', '<ul>\r\n	<li><a href="#">Seguran&ccedil;a</a></li>\r\n	<li><a href="#">Comprometimento</a></li>\r\n	<li><a href="#">Responsabilidade</a></li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><a href="#">Informa&ccedil;&atilde;o</a></li>\r\n	<li><a href="#">Satisfa&ccedil;&atilde;o do Cliente</a></li>\r\n	<li><a href="#">Confian&ccedil;a</a></li>\r\n	<li><a href="#">Honestidade</a></li>\r\n</ul>\r\n'),
	(4, 'sobre', 'Sobre', '<p><strong>HIST&Oacute;RIA</strong></p>\r\n\r\n<p>A Pig Log Transportes teve in&iacute;cio em janeiro de 2016, por&eacute;m suas atividades no ramo de transportes come&ccedil;aram muito antes.&nbsp; A empresa pertence ao grupo Schoeler, que est&aacute; no mercado h&aacute; 16 anos, e desde o in&iacute;cio de suas atividades teve sua frota pr&oacute;pria para o transporte de su&iacute;nos, ra&ccedil;&atilde;o e mat&eacute;ria prima.</p>\r\n\r\n<p>O empreendedorismo de seus gestores, junto com uma sucess&atilde;o de acontecimentos, levou a idealiza&ccedil;&atilde;o de uma empresa de transportes sustent&aacute;vel, rent&aacute;vel e que pudesse melhorar a atividade, surgindo ent&atilde;o a Pig Log &ndash;Transporte e Log&iacute;stica.</p>\r\n\r\n<p>A Pig Log, tem o objetivo de fortalecer a atua&ccedil;&atilde;o do neg&oacute;cio familiar em um segmento de transporte ofertando expertises diferenciadas para v&aacute;rios nichos e clientes.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>CONSOLIDA&Ccedil;&Atilde;O</strong></p>\r\n\r\n<p>Este novo neg&oacute;cio passa a fazer parte da vida da Schoeler Su&iacute;nos, partindo da percep&ccedil;&atilde;o de mais uma oportunidade de diferencia&ccedil;&atilde;o em um mercado altamente competitivo, a Pig Log surgiu como uma nova empresa focada no atendimento das necessidades de log&iacute;stica destas opera&ccedil;&otilde;es e seus respectivos clientes.</p>\r\n\r\n<p>Em pouco tempo, grandes parcerias foram firmadas, ganhando for&ccedil;a e foco. Hoje a Pig Log oferta em seu portf&oacute;lio os mais variados servi&ccedil;os e solu&ccedil;&otilde;es personalizadas no neg&oacute;cio de transporte. Conta hoje com uma frota com mais de 30 caminh&otilde;es rastreados e monitorados. A empresa possui uma oficina pr&oacute;pria priorizando pela manuten&ccedil;&atilde;o preventiva dos caminh&otilde;es. Mais uma vez, destaca-se uma opera&ccedil;&atilde;o com caracter&iacute;sticas pr&oacute;prias e diferenciadas, baseadas nos valores da empresa.</p>\r\n\r\n<p>Com um sistema de gest&atilde;o eficiente e um quadro de colaboradores com mais de 40 profissionais com vasta experi&ecirc;ncia em log&iacute;stica, a profissionaliza&ccedil;&atilde;o levou ao r&aacute;pido desenvolvimento.Assim podem ser resumidos os primeiros meses desta empresa.</p>\r\n\r\n<p>&nbsp;Uma hist&oacute;ria que certamente continuar&aacute; sendo trilhada com base nos nossos pilares: gente, gest&atilde;o, tecnologia e seguran&ccedil;a. Est&aacute; localizada na cidade de Pira&iacute; do Sul &ndash; PR e atende todo o territ&oacute;rio nacional com a presta&ccedil;&atilde;o de servi&ccedil;os de transporte de alta qualidade para garantir o m&aacute;ximo desempenho para os clientes, conforto e seguran&ccedil;a para os motoristas.</p>\r\n'),
	(5, 'bem-vindo', 'Bem Vindo', '<p>A Pig Log Transportes teve in&iacute;cio em janeiro de 2016, por&eacute;m suas atividades no ramo de transportes come&ccedil;aram muito antes.&nbsp; A empresa pertence ao grupo Schoeler, que est&aacute; no mercado h&aacute; 16 anos, e desde o in&iacute;cio de suas atividades teve sua frota pr&oacute;pria para o transporte de su&iacute;nos, ra&ccedil;&atilde;o e mat&eacute;ria prima.</p>\r\n');
/*!40000 ALTER TABLE `institucional` ENABLE KEYS */;

-- Copiando estrutura para tabela piglog.logs
CREATE TABLE IF NOT EXISTS `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(40) DEFAULT NULL,
  `controller` varchar(40) DEFAULT NULL,
  `action` varchar(40) DEFAULT NULL,
  `parametros` text,
  `ip` varchar(50) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user` (`user`),
  CONSTRAINT `FK_logs_usuarios` FOREIGN KEY (`user`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela piglog.logs: ~59 rows (aproximadamente)
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` (`id`, `module`, `controller`, `action`, `parametros`, `ip`, `data`, `user`) VALUES
	(20, 'admin', 'vendas', 'Adicionar', '{"module":"admin","controller":"vendas","action":"Adicionar","vinculo":"20160922171800","id":"","destaque":"1","modelo":"R164 GA 6x4 480","marca":"Scania","ano":"2004","cambio":"Manual","cor":"Azul","tipo":"1","km_rodados":"","descricao":"","valor":"100.000","MAX_FILE_SIZE":"209715200","capa":"1","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2016-09-22 14:18:59', 3),
	(21, 'admin', 'vendas', 'editar', '{"module":"admin","controller":"vendas","action":"editar","id":"5","vinculo":"20160922172247","destaque":"1","modelo":"R164 GA 6x4 480","marca":"Scania","ano":"2004","cambio":"Autom\\u00e1tico","cor":"Azul","tipo":"0","km_rodados":"0","descricao":"","valor":"100.000","MAX_FILE_SIZE":"209715200","capa":"1","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2016-09-22 14:23:56', 3),
	(22, 'admin', 'vendas', 'editar', '{"module":"admin","controller":"vendas","action":"editar","id":"5","vinculo":"20160922174130","destaque":"1","modelo":"R164 GA 6x4 480","marca":"Scania","ano":"2004","cambio":"Autom\\u00e1tico","cor":"Azul","tipo":"Cavalo Mec\\u00e2nico","km_rodados":"0","descricao":"","valor":"100.000","MAX_FILE_SIZE":"209715200","capa":"1","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2016-09-22 14:41:43', 3),
	(23, 'admin', 'institucional', 'index', '{"module":"admin","controller":"institucional","action":"index","item":"sobre","id":"4","pagina":"sobre","conteudo":"<p><strong>HIST&Oacute;RIA<\\/strong><\\/p>\\r\\n\\r\\n<p>A Pig Log Transportes teve in&iacute;cio em janeiro de 2016, por&eacute;m suas atividades no ramo de transportes come&ccedil;aram muito antes.&nbsp; A empresa pertence ao grupo Schoeler, que est&aacute; no mercado h&aacute; 16 anos, e desde o in&iacute;cio de suas atividades teve sua frota pr&oacute;pria para o transporte de su&iacute;nos, ra&ccedil;&atilde;o e mat&eacute;ria prima.<\\/p>\\r\\n\\r\\n<p>O empreendedorismo de seus gestores, junto com uma sucess&atilde;o de acontecimentos, levou a idealiza&ccedil;&atilde;o de uma empresa de transportes sustent&aacute;vel, rent&aacute;vel e que pudesse melhorar a atividade, surgindo ent&atilde;o a Pig Log &ndash;Transporte e Log&iacute;stica.<\\/p>\\r\\n\\r\\n<p>A Pig Log, tem o objetivo de fortalecer a atua&ccedil;&atilde;o do neg&oacute;cio familiar em um segmento de transporte ofertando expertises diferenciadas para v&aacute;rios nichos e clientes.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><strong>CONSOLIDA&Ccedil;&Atilde;O<\\/strong><\\/p>\\r\\n\\r\\n<p>Este novo neg&oacute;cio passa a fazer parte da vida da Schoeler Su&iacute;nos, partindo da percep&ccedil;&atilde;o de mais uma oportunidade de diferencia&ccedil;&atilde;o em um mercado altamente competitivo, a Pig Log surgiu como uma nova empresa focada no atendimento das necessidades de log&iacute;stica destas opera&ccedil;&otilde;es e seus respectivos clientes.<\\/p>\\r\\n\\r\\n<p>Em pouco tempo, grandes parcerias foram firmadas, ganhando for&ccedil;a e foco. Hoje a Pig Log oferta em seu portf&oacute;lio os mais variados servi&ccedil;os e solu&ccedil;&otilde;es personalizadas no neg&oacute;cio de transporte. Conta hoje com uma frota commais de 30 caminh&otilde;es rastreados e monitorados. A empresa possui uma oficina pr&oacute;pria priorizando pela manuten&ccedil;&atilde;o preventiva dos caminh&otilde;es. Mais uma vez, destaca-se uma opera&ccedil;&atilde;o com caracter&iacute;sticas pr&oacute;prias e diferenciadas, baseadas nos valores da empresa.<\\/p>\\r\\n\\r\\n<p>Com um sistema de gest&atilde;o eficiente e um quadro de colaboradores com mais de 40 profissionais com vasta experi&ecirc;ncia em log&iacute;stica, a profissionaliza&ccedil;&atilde;o levou ao r&aacute;pido desenvolvimento.Assim podem ser resumidos os primeiros meses desta empresa.<\\/p>\\r\\n\\r\\n<p>&nbsp;Uma hist&oacute;ria que certamente continuar&aacute; sendo trilhada com base nos nossos pilares: gente, gest&atilde;o, tecnologia e seguran&ccedil;a. Est&aacute; localizada na cidade de Pira&iacute; do Sul &ndash; PR e atende todo o territ&oacute;rio nacional com a presta&ccedil;&atilde;o de servi&ccedil;os de transporte de alta qualidade para garantir om&aacute;ximo desempenho para os clientes, conforto e seguran&ccedil;a para os motoristas.<\\/p>\\r\\n","Salvar":"Salvar"}', '200.192.101.7', '2016-09-23 08:11:14', 3),
	(24, 'admin', 'institucional', 'index', '{"module":"admin","controller":"institucional","action":"index","item":"bem-vindo","id":"5","pagina":"bem-vindo","conteudo":"<p>A Pig Log Transportes teve in&iacute;cio em janeiro de 2016, por&eacute;m suas atividades no ramo de transportes come&ccedil;aram muito antes.&nbsp; A empresa pertence ao grupo Schoeler, que est&aacute; no mercado h&aacute; 16 anos, e desde o in&iacute;cio de suas atividades teve sua frota pr&oacute;pria para o transporte de su&iacute;nos, ra&ccedil;&atilde;o e mat&eacute;ria prima.<\\/p>\\r\\n","Salvar":"Salvar"}', '200.192.101.7', '2016-09-23 08:11:53', 3),
	(25, 'admin', 'institucional', 'index', '{"module":"admin","controller":"institucional","action":"index","item":"missao","id":"1","pagina":"missao","conteudo":"<p>Transportar com seguran&ccedil;a, responsabilidade e confiabilidade visando a satisfa&ccedil;&atilde;o dos nossos clientes internos e externos, crescimento e rentabilidade.<\\/p>\\r\\n","Salvar":"Salvar"}', '200.192.101.7', '2016-09-23 08:12:34', 3),
	(26, 'admin', 'institucional', 'index', '{"module":"admin","controller":"institucional","action":"index","item":"visao","id":"2","pagina":"visao","conteudo":"<p>Ser reconhecido pela qualidade no transporte, com custos competitivos, confiabilidade e parceiros de longo prazo.<\\/p>\\r\\n","Salvar":"Salvar"}', '200.192.101.7', '2016-09-23 08:12:50', 3),
	(27, 'admin', 'institucional', 'index', '{"module":"admin","controller":"institucional","action":"index","item":"valores","id":"3","pagina":"valores","conteudo":"<ul>\\r\\n\\t<li><a href=\\"#\\">Seguran&ccedil;a<\\/a><\\/li>\\r\\n\\t<li><a href=\\"#\\">Comprometimento<\\/a><\\/li>\\r\\n\\t<li><a href=\\"#\\">Responsabilidade<\\/a><\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li><a href=\\"#\\">Informa&ccedil;&atilde;o<\\/a><\\/li>\\r\\n\\t<li><a href=\\"#\\">Satisfa&ccedil;&atilde;o do Cliente<\\/a><\\/li>\\r\\n\\t<li><a href=\\"#\\">Confian&ccedil;a<\\/a><\\/li>\\r\\n\\t<li><a href=\\"#\\">Honestidade<\\/a><\\/li>\\r\\n<\\/ul>\\r\\n","Salvar":"Salvar"}', '200.192.101.7', '2016-09-23 08:14:48', 3),
	(28, 'admin', 'institucional', 'index', '{"module":"admin","controller":"institucional","action":"index","item":"sobre","id":"4","pagina":"sobre","conteudo":"<p><strong>HIST&Oacute;RIA<\\/strong><\\/p>\\r\\n\\r\\n<p>A Pig Log Transportes teve in&iacute;cio em janeiro de 2016, por&eacute;m suas atividades no ramo de transportes come&ccedil;aram muito antes.&nbsp; A empresa pertence ao grupo Schoeler, que est&aacute; no mercado h&aacute; 16 anos, e desde o in&iacute;cio de suas atividades teve sua frota pr&oacute;pria para o transporte de su&iacute;nos, ra&ccedil;&atilde;o e mat&eacute;ria prima.<\\/p>\\r\\n\\r\\n<p>O empreendedorismo de seus gestores, junto com uma sucess&atilde;o de acontecimentos, levou a idealiza&ccedil;&atilde;o de uma empresa de transportes sustent&aacute;vel, rent&aacute;vel e que pudesse melhorar a atividade, surgindo ent&atilde;o a Pig Log &ndash;Transporte e Log&iacute;stica.<\\/p>\\r\\n\\r\\n<p>A Pig Log, tem o objetivo de fortalecer a atua&ccedil;&atilde;o do neg&oacute;cio familiar em um segmento de transporte ofertando expertises diferenciadas para v&aacute;rios nichos e clientes.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><strong>CONSOLIDA&Ccedil;&Atilde;O<\\/strong><\\/p>\\r\\n\\r\\n<p>Este novo neg&oacute;cio passa a fazer parte da vida da Schoeler Su&iacute;nos, partindo da percep&ccedil;&atilde;o de mais uma oportunidade de diferencia&ccedil;&atilde;o em um mercado altamente competitivo, a Pig Log surgiu como uma nova empresa focada no atendimento das necessidades de log&iacute;stica destas opera&ccedil;&otilde;es e seus respectivos clientes.<\\/p>\\r\\n\\r\\n<p>Em pouco tempo, grandes parcerias foram firmadas, ganhando for&ccedil;a e foco. Hoje a Pig Log oferta em seu portf&oacute;lio os mais variados servi&ccedil;os e solu&ccedil;&otilde;es personalizadas no neg&oacute;cio de transporte. Conta hoje com uma frota com mais de 30 caminh&otilde;es rastreados e monitorados. A empresa possui uma oficina pr&oacute;pria priorizando pela manuten&ccedil;&atilde;o preventiva dos caminh&otilde;es. Mais uma vez, destaca-se uma opera&ccedil;&atilde;o com caracter&iacute;sticas pr&oacute;prias e diferenciadas, baseadas nos valores da empresa.<\\/p>\\r\\n\\r\\n<p>Com um sistema de gest&atilde;o eficiente e um quadro de colaboradores com mais de 40 profissionais com vasta experi&ecirc;ncia em log&iacute;stica, a profissionaliza&ccedil;&atilde;o levou ao r&aacute;pido desenvolvimento.Assim podem ser resumidos os primeiros meses desta empresa.<\\/p>\\r\\n\\r\\n<p>&nbsp;Uma hist&oacute;ria que certamente continuar&aacute; sendo trilhada com base nos nossos pilares: gente, gest&atilde;o, tecnologia e seguran&ccedil;a. Est&aacute; localizada na cidade de Pira&iacute; do Sul &ndash; PR e atende todo o territ&oacute;rio nacional com a presta&ccedil;&atilde;o de servi&ccedil;os de transporte de alta qualidade para garantir o m&aacute;ximo desempenho para os clientes, conforto e seguran&ccedil;a para os motoristas.<\\/p>\\r\\n","Salvar":"Salvar"}', '200.192.101.7', '2016-09-23 08:38:11', 3),
	(29, 'admin', 'galerias', 'adicionar', '{"module":"admin","controller":"galerias","action":"adicionar","vinculo":"20160926083606","id":"","nome":"Su\\u00ednos","operacao":"2","descricao":"<p>teste de Galeria<\\/p>\\r\\n","MAX_FILE_SIZE":"209715200","ativo":"1","Salvar":"Salvar"}', '200.192.101.7', '2016-09-26 05:44:56', 3),
	(30, 'admin', 'galerias', 'adicionar', '{"module":"admin","controller":"galerias","action":"adicionar","vinculo":"20160926092822","id":"","nome":"Granel","operacao":"1","descricao":"<p>teste<\\/p>\\r\\n","MAX_FILE_SIZE":"209715200","ativo":"1","Salvar":"Salvar"}', '200.192.101.7', '2016-09-26 06:30:39', 3),
	(31, 'admin', 'banners', 'excluir', '{"module":"admin","controller":"banners","action":"excluir","id":"5"}', '200.192.101.7', '2016-09-26 07:52:21', 3),
	(32, 'admin', 'galerias', 'adicionar', '{"module":"admin","controller":"galerias","action":"adicionar","vinculo":"20160926133953","id":"","nome":"Su\\u00ednos","operacao":"2","descricao":"<p>teste<\\/p>\\r\\n","MAX_FILE_SIZE":"209715200","capa":"1","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2016-09-26 10:44:16', 3),
	(33, 'admin', 'galerias', 'editar', '{"module":"admin","controller":"galerias","action":"editar","id":"6","vinculo":"20160926134604","nome":"Su\\u00ednos","operacao":"2","descricao":"<p>teste de Galeria<\\/p>\\r\\n","MAX_FILE_SIZE":"209715200","capa":"1","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2016-09-26 10:49:18', 3),
	(34, 'admin', 'galerias', 'adicionar', '{"module":"admin","controller":"galerias","action":"adicionar","vinculo":"20160926135018","id":"","nome":"Porcadeiro","operacao":"2","descricao":"","MAX_FILE_SIZE":"209715200","capa":"1","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2016-09-26 10:51:52', 3),
	(35, 'admin', 'galerias', 'adicionar', '{"module":"admin","controller":"galerias","action":"adicionar","vinculo":"20160926135333","id":"","nome":"Bi Ca\\u00e7amba","operacao":"1","descricao":"","MAX_FILE_SIZE":"209715200","capa":"1","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2016-09-26 10:54:30', 3),
	(36, 'admin', 'galerias', 'adicionar', '{"module":"admin","controller":"galerias","action":"adicionar","vinculo":"20160926144031","id":"","nome":"Su\\u00ednos","operacao":"2","descricao":"<p>teste<\\/p>\\r\\n","MAX_FILE_SIZE":"209715200","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2016-09-26 11:42:45', 3),
	(37, 'admin', 'banners', 'adicionar', '{"module":"admin","controller":"banners","action":"adicionar","id":"","titulo":"Teste","link":"","MAX_FILE_SIZE":"209715200","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2016-09-27 10:44:28', 3),
	(38, 'admin', 'banners', 'excluir', '{"module":"admin","controller":"banners","action":"excluir","id":"7"}', '186.226.246.45', '2016-09-27 11:13:44', 3),
	(39, 'admin', 'banners', 'adicionar', '{"module":"admin","controller":"banners","action":"adicionar","id":"","titulo":"PIG LOG","link":"","MAX_FILE_SIZE":"209715200","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2016-09-27 11:14:17', 3),
	(40, 'admin', 'banners', 'excluir', '{"module":"admin","controller":"banners","action":"excluir","id":"8"}', '186.226.246.45', '2016-09-27 11:48:50', 3),
	(41, 'admin', 'banners', 'adicionar', '{"module":"admin","controller":"banners","action":"adicionar","id":"","titulo":"PIG LOG - TRANSPORTANDO CONFIAN\\u00c7A","link":"","MAX_FILE_SIZE":"209715200","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2016-09-27 11:49:30', 3),
	(42, 'admin', 'banners', 'excluir', '{"module":"admin","controller":"banners","action":"excluir","id":"9"}', '186.226.246.45', '2016-09-27 11:50:03', 3),
	(43, 'admin', 'galerias', 'editar', '{"module":"admin","controller":"galerias","action":"editar","id":"9","vinculo":"20160927145029","nome":"Porcadeiro","operacao":"2","descricao":"","MAX_FILE_SIZE":"209715200","capa":"1","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2016-09-27 11:51:15', 3),
	(44, 'admin', 'vendas', 'excluir', '{"module":"admin","controller":"vendas","action":"excluir","id":"5"}', '186.226.246.45', '2016-11-22 07:41:18', 3),
	(45, 'admin', 'banners', 'adicionar', '{"module":"admin","controller":"banners","action":"adicionar","id":"","titulo":"teste","link":"","MAX_FILE_SIZE":"52428800","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2016-11-22 07:44:53', 3),
	(46, 'admin', 'banners', 'editar', '{"module":"admin","controller":"banners","action":"editar","id":"5","titulo":"teste","link":"","MAX_FILE_SIZE":"52428800","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2016-11-22 08:12:04', 3),
	(47, 'admin', 'banners', 'editar', '{"module":"admin","controller":"banners","action":"editar","id":"5","titulo":"teste","link":"","MAX_FILE_SIZE":"52428800","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2016-11-23 05:01:20', 3),
	(48, 'admin', 'banners', 'editar', '{"module":"admin","controller":"banners","action":"editar","id":"5","titulo":"teste","link":"","MAX_FILE_SIZE":"52428800","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2016-11-23 05:03:31', 3),
	(49, 'admin', 'banners', 'adicionar', '{"module":"admin","controller":"banners","action":"adicionar","id":"","titulo":"teste2","link":"","MAX_FILE_SIZE":"52428800","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2016-11-23 05:06:41', 3),
	(50, 'admin', 'banners', 'editar', '{"module":"admin","controller":"banners","action":"editar","id":"6","titulo":"Bem Vindo!","link":"","MAX_FILE_SIZE":"52428800","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2016-11-23 05:07:54', 3),
	(51, 'admin', 'banners', 'excluir', '{"module":"admin","controller":"banners","action":"excluir","id":"4"}', '186.226.246.45', '2016-11-23 05:08:20', 3),
	(52, 'admin', 'banners', 'adicionar', '{"module":"admin","controller":"banners","action":"adicionar","id":"","titulo":"teste2","link":"","MAX_FILE_SIZE":"52428800","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2016-11-23 05:10:05', 3),
	(53, 'admin', 'banners', 'editar', '{"module":"admin","controller":"banners","action":"editar","id":"7","titulo":"ao nosso site!","link":"","MAX_FILE_SIZE":"52428800","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2016-11-23 05:11:17', 3),
	(54, 'admin', 'banners', 'editar', '{"module":"admin","controller":"banners","action":"editar","id":"5","titulo":"Conhe\\u00e7a nosso servi\\u00e7os!","link":"","MAX_FILE_SIZE":"52428800","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2016-11-23 05:11:35', 3),
	(55, 'admin', 'galerias', 'excluir', '{"module":"admin","controller":"galerias","action":"excluir","id":"7"}', '186.226.246.45', '2016-11-23 05:13:53', 3),
	(56, 'admin', 'configuracoes', 'email', '{"module":"admin","controller":"configuracoes","action":"email","id":"","smtp":"email-ssl.com.br","conta":"no_reply@piglog.com.br","senha":"piglog@2016","remetente":"no_reply@piglog.com.br","conexao":"ssl","porta":"465","Salvar":"Salvar"}', '186.226.246.45', '2016-11-25 07:34:57', 3),
	(57, 'admin', 'banners', 'excluir', '{"module":"admin","controller":"banners","action":"excluir","id":"2"}', '186.226.246.45', '2016-11-25 07:40:02', 3),
	(58, 'admin', 'galerias', 'editar', '{"module":"admin","controller":"galerias","action":"editar","id":"9","vinculo":"20161125113227","nome":"Scania P270 B","operacao":"2","descricao":"","MAX_FILE_SIZE":"52428800","capa":"1","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2016-11-25 08:32:38', 3),
	(59, 'admin', 'galerias', 'editar', '{"module":"admin","controller":"galerias","action":"editar","id":"8","vinculo":"20161125113251","nome":"Volkswagen Constellation ","operacao":"2","descricao":"<p>teste<\\/p>\\r\\n","MAX_FILE_SIZE":"52428800","capa":"1","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2016-11-25 08:34:06', 3),
	(60, 'admin', 'galerias', 'editar', '{"module":"admin","controller":"galerias","action":"editar","id":"6","vinculo":"20161125113533","nome":"Mercedes-Benz Atego 2426","operacao":"2","descricao":"<p>teste de Galeria<\\/p>\\r\\n","MAX_FILE_SIZE":"52428800","capa":"1","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2016-11-25 08:35:43', 3),
	(61, 'admin', 'galerias', 'editar', '{"module":"admin","controller":"galerias","action":"editar","id":"6","vinculo":"20161125113609","nome":"Mercedes-Benz Atego 2426","operacao":"2","descricao":"","MAX_FILE_SIZE":"52428800","capa":"1","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2016-11-25 08:36:14', 3),
	(62, 'admin', 'galerias', 'editar', '{"module":"admin","controller":"galerias","action":"editar","id":"8","vinculo":"20161125113618","nome":"Volkswagen Constellation ","operacao":"2","descricao":"","MAX_FILE_SIZE":"52428800","capa":"1","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2016-11-25 08:36:23', 3),
	(63, 'admin', 'banners', 'excluir', '{"module":"admin","controller":"banners","action":"excluir","id":"3"}', '186.226.246.45', '2016-11-28 10:44:25', 3),
	(64, 'admin', 'galerias', 'excluir', '{"module":"admin","controller":"galerias","action":"excluir","id":"10"}', '186.226.246.45', '2016-11-28 10:44:57', 3),
	(65, 'admin', 'banners', 'adicionar', '{"module":"admin","controller":"banners","action":"adicionar","id":"","titulo":"teste","link":"","MAX_FILE_SIZE":"52428800","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2016-11-28 13:17:42', 3),
	(66, 'admin', 'usuarios', 'adicionar', '{"module":"admin","controller":"usuarios","action":"adicionar","id":"","nome":"Marciano Koelln","login":"marciano","senha":"piglog@2016","email":"op.suinos@piglog.com.br","celular":"","perfil":"2","MAX_FILE_SIZE":"52428800","status":"1","Salvar":"Salvar"}', '186.226.246.45', '2016-12-02 13:02:08', 3),
	(67, 'admin', 'galerias', 'editar', '{"module":"admin","controller":"galerias","action":"editar","id":"11","vinculo":"20161202160336","nome":"Carreta","operacao":"2","descricao":"<p>teste<\\/p>\\r\\n","MAX_FILE_SIZE":"52428800","capa":"1","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2016-12-02 13:03:45', 3),
	(68, 'admin', 'banners', 'adicionar', '{"module":"admin","controller":"banners","action":"adicionar","id":"","titulo":"teste","link":"","MAX_FILE_SIZE":"52428800","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2016-12-06 11:30:33', 3),
	(69, 'admin', 'banners', 'editar', '{"module":"admin","controller":"banners","action":"editar","id":"9","titulo":"teste","link":"","MAX_FILE_SIZE":"52428800","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2016-12-06 11:35:32', 3),
	(70, 'admin', 'banners', 'editar', '{"module":"admin","controller":"banners","action":"editar","id":"9","titulo":"teste","link":"","MAX_FILE_SIZE":"52428800","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2016-12-06 11:47:30', 3),
	(71, 'admin', 'banners', 'editar', '{"module":"admin","controller":"banners","action":"editar","id":"9","titulo":"teste","link":"","MAX_FILE_SIZE":"52428800","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2016-12-06 11:57:25', 3),
	(72, 'admin', 'banners', 'editar', '{"module":"admin","controller":"banners","action":"editar","id":"9","titulo":"teste","link":"","MAX_FILE_SIZE":"52428800","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2016-12-06 12:04:16', 3),
	(73, 'admin', 'banners', 'editar', '{"module":"admin","controller":"banners","action":"editar","id":"9","titulo":"Bem Vindo!","link":"","MAX_FILE_SIZE":"52428800","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2016-12-08 05:00:18', 3),
	(74, 'admin', 'banners', 'editar', '{"module":"admin","controller":"banners","action":"editar","id":"9","titulo":" Bem vindos ao nosso site!","link":"","MAX_FILE_SIZE":"52428800","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2016-12-08 05:01:32', 3),
	(75, 'admin', 'banners', 'editar', '{"module":"admin","controller":"banners","action":"editar","id":"8","titulo":"Nele voc\\u00ea poder\\u00e1 conhecer um pouco da Pig Log Transportes","link":"","MAX_FILE_SIZE":"52428800","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2016-12-08 05:01:54', 3),
	(76, 'admin', 'banners', 'editar', '{"module":"admin","controller":"banners","action":"editar","id":"6","titulo":"A Pig Log esta aqui para resolver seus problemas","link":"","MAX_FILE_SIZE":"52428800","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2016-12-08 05:03:00', 3),
	(77, 'admin', 'banners', 'editar', '{"module":"admin","controller":"banners","action":"editar","id":"7","titulo":"Transportando seus sonhos!","link":"","MAX_FILE_SIZE":"52428800","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2016-12-08 05:03:55', 3),
	(78, 'admin', 'banners', 'editar', '{"module":"admin","controller":"banners","action":"editar","id":"5","titulo":"com qualidade e dedica\\u00e7\\u00e3o","link":"","MAX_FILE_SIZE":"52428800","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2016-12-08 05:09:49', 3),
	(79, 'admin', 'usuarios', 'adicionar', '{"module":"admin","controller":"usuarios","action":"adicionar","id":"","nome":"daniel","login":"daniel","senha":"dan123","email":"daniel@schoeler.com.br","celular":"","perfil":"2","MAX_FILE_SIZE":"52428800","status":"1","Salvar":"Salvar"}', '186.226.246.45', '2017-01-18 11:38:39', 3),
	(84, 'admin', 'galerias', 'editar', '{"module":"admin","controller":"galerias","action":"editar","id":"11","vinculo":"20170125133227","nome":"Marr\\u00e3s","operacao":"2","descricao":"<p>teste<\\/p>\\r\\n","MAX_FILE_SIZE":"52428800","capa":"1","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2017-01-25 10:32:36', 3),
	(85, 'admin', 'login', 'index', '{"module":"admin","controller":"login","action":"index","login":"thiago","senha":"123"}', '186.226.246.45', '2017-01-26 05:40:56', 3),
	(86, 'admin', 'galerias', 'editar', '{"module":"admin","controller":"galerias","action":"editar","id":"11","vinculo":"20170126084108","nome":"Abate","operacao":"2","descricao":"<p>teste<\\/p>\\r\\n","MAX_FILE_SIZE":"52428800","capa":"1","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2017-01-26 05:44:54', 3),
	(87, 'admin', 'galerias', 'adicionar', '{"module":"admin","controller":"galerias","action":"adicionar","vinculo":"20170126084522","id":"","nome":"Granel","operacao":"1","descricao":"","MAX_FILE_SIZE":"52428800","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2017-01-26 05:47:03', 3),
	(88, 'admin', 'galerias', 'adicionar', '{"module":"admin","controller":"galerias","action":"adicionar","vinculo":"20170126100846","id":"","nome":"Marr\\u00e3s","operacao":"2","descricao":"","MAX_FILE_SIZE":"52428800","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2017-01-26 07:10:52', 3),
	(89, 'admin', 'galerias', 'editar', '{"module":"admin","controller":"galerias","action":"editar","id":"11","vinculo":"20170126104241","nome":"Abate","operacao":"2","descricao":"","MAX_FILE_SIZE":"52428800","capa":"1","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2017-01-26 07:42:46', 3),
	(90, 'admin', 'usuarios', 'excluir', '{"module":"admin","controller":"usuarios","action":"excluir","id":"7"}', '186.226.246.45', '2017-02-01 05:19:33', 3),
	(91, 'admin', 'banners', 'adicionar', '{"module":"admin","controller":"banners","action":"adicionar","id":"","titulo":"Piglog - Transportes","link":"","MAX_FILE_SIZE":"52428800","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2017-02-13 08:54:48', 3),
	(92, 'admin', 'banners', 'excluir', '{"module":"admin","controller":"banners","action":"excluir","id":"9"}', '186.226.246.45', '2017-02-13 08:56:13', 3),
	(93, 'admin', 'banners', 'editar', '{"module":"admin","controller":"banners","action":"editar","id":"8","titulo":"Bem Vindo ao nosso Website","link":"","MAX_FILE_SIZE":"52428800","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2017-02-13 08:57:03', 3),
	(94, 'admin', 'banners', 'editar', '{"module":"admin","controller":"banners","action":"editar","id":"6","titulo":"Conhe\\u00e7a um pouco sobre a Pig Log Transportes","link":"","MAX_FILE_SIZE":"52428800","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2017-02-13 08:57:44', 3),
	(95, 'admin', 'banners', 'editar', '{"module":"admin","controller":"banners","action":"editar","id":"7","titulo":"Transportando Confian\\u00e7a!","link":"","MAX_FILE_SIZE":"52428800","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2017-02-13 08:58:16', 3),
	(96, 'admin', 'banners', 'editar', '{"module":"admin","controller":"banners","action":"editar","id":"10","titulo":"Piglog - Transportes","link":"","MAX_FILE_SIZE":"52428800","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2017-02-13 09:10:49', 3);
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;

-- Copiando estrutura para tabela piglog.menus
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pai` int(11) DEFAULT NULL,
  `nome` varchar(90) DEFAULT NULL,
  `descricao` mediumtext,
  `icone` varchar(180) DEFAULT NULL,
  `controller` varchar(80) NOT NULL,
  `action` varchar(80) NOT NULL,
  `ordem` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela piglog.menus: ~29 rows (aproximadamente)
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` (`id`, `pai`, `nome`, `descricao`, `icone`, `controller`, `action`, `ordem`, `status`) VALUES
	(4, NULL, 'Usuario', 'Gerenciamento de Usuarios', 'fa fa-user', 'usuarios', '', 9, 1),
	(13, NULL, 'contatos', 'Listagem de contatos', 'fa fa-envelope-o', 'contatos', '', 8, 1),
	(14, NULL, 'Itens de Menu', 'Gerenciamento de Menu', 'fa fa-external-link', 'menus', '', 11, 1),
	(15, 14, 'adicionar', 'Cadastro de Item de menu', 'fa fa-plus', 'menus', 'adicionar', NULL, 1),
	(18, 14, 'Listar', 'Listar Itens de Menu', 'fa fa-bars', 'menus', 'index', NULL, 1),
	(19, 4, 'adicionar', 'Cadastro de usuario', 'fa fa-plus', 'usuarios', 'adicionar', NULL, 1),
	(20, 4, 'Listar', 'Listar usuarios', 'fa fa-bars', 'usuarios', 'index', NULL, 1),
	(72, NULL, 'Configurações', 'Gerenciamento de Configurações', 'fa fa-gear', 'configuracoes', 'index', 10, 1),
	(73, 72, 'Email', 'Configuração de email', 'fa fa-envelope-o', 'configuracoes', 'email', NULL, 1),
	(89, 72, 'SEO', 'Otimização para Buscadores', 'fa fa-lightbulb-o', 'seo', 'index', NULL, 1),
	(91, 72, 'Whatsapp', 'Whatsapp', 'fa fa-comments-o', 'configuracoes', 'whats-app', NULL, 1),
	(104, NULL, 'Permissões', 'Gerenciamento de Permissões', 'fa fa-eye-slash', 'permissoes', 'index', 12, 1),
	(105, 104, 'Definir Permissão', 'Definição de permissão de Menu', 'fa fa-exclamation-circle', 'permissoes', 'index', NULL, 1),
	(106, 104, 'Atualizar Módulos', 'Atualização de Novos Módulos', 'fa fa-spinner', 'permissoes', 'atualizar', NULL, 1),
	(107, 104, 'Perfis', 'Gerenciamento de Perfis', 'fa fa-key', 'perfis', 'index', NULL, 1),
	(108, 104, 'Adicionar Perfil', 'Cadastro de Perfil', 'fa fa-plus-circle', 'perfis', 'adicionar', NULL, 1),
	(109, NULL, 'Sobre a Empresa', 'Sobre a Piglog', 'fa fa-pencil-square-o', 'institucional', 'index', 4, 1),
	(110, NULL, 'Banners', 'Gerenciamento de Banners', 'fa fa-certificate', 'banners', 'index', 0, 1),
	(111, 110, 'Adicionar', 'Cadastro de Banners', 'fa fa-plus-circle', 'banners', 'adicionar', NULL, 1),
	(112, 110, 'Listar', 'Lista de Banners', 'fa fa-bars', 'banners', 'index', NULL, 1),
	(117, NULL, 'Logs', 'Listagens de logs', 'fa fa-exclamation-circle', 'logs', '', 14, 1),
	(123, 72, 'Sistema', 'Configurações do Sistema', 'fa fa-cog', 'configuracoes', 'sistema', NULL, 1),
	(124, NULL, 'Galerias', 'Cadastro de Galeria', 'fa fa-camera-retro', 'galerias', '', 2, 1),
	(125, 124, 'Adicionar', 'Cadastro de Galeria', 'fa fa-plus-square-o', 'galerias', 'adicionar', NULL, 1),
	(126, 124, 'Listar', 'Lista de Eventos /Notícia', 'fa fa-bars', 'galerias', '', NULL, 1),
	(127, NULL, 'Vendas', 'Gerenciamento de Vendas', 'fa fa-legal', 'vendas', '', 1, 1),
	(128, 127, 'Adicionar', 'Cadastro de Venda', 'fa fa-plus-square-o', 'vendas', 'Adicionar', NULL, 1),
	(129, 127, 'Listar', 'Listagem de vendas', 'fa fa-bars', 'vendas', '', NULL, 1),
	(134, NULL, 'Cotações', 'Gerenciamento de Cotações', 'fa fa-bullhorn', 'cotacao', '', 6, 1);
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;

-- Copiando estrutura para tabela piglog.menus_perfil
CREATE TABLE IF NOT EXISTS `menus_perfil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `controlador` varchar(80) DEFAULT NULL,
  `acao` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela piglog.menus_perfil: ~92 rows (aproximadamente)
/*!40000 ALTER TABLE `menus_perfil` DISABLE KEYS */;
INSERT INTO `menus_perfil` (`id`, `controlador`, `acao`) VALUES
	(1, 'acessos', 'index'),
	(2, 'banners', 'index'),
	(3, 'banners', 'adicionar'),
	(4, 'banners', 'editar'),
	(5, 'banners', 'excluir'),
	(6, 'banners', 'ajaxordem'),
	(7, 'configuracoes', 'whatsapp'),
	(8, 'configuracoes', 'atualizarcode'),
	(9, 'configuracoes', 'enviamensagem'),
	(10, 'configuracoes', 'email'),
	(11, 'configuracoes', 'sistema'),
	(12, 'contatos', 'index'),
	(13, 'contatos', 'excluir'),
	(14, 'contatos', 'visualizar'),
	(15, 'contatos', 'whatts'),
	(16, 'contatos', 'enviawhatts'),
	(17, 'contatos', 'envia'),
	(18, 'error', 'error'),
	(19, 'eventos', 'index'),
	(20, 'eventos', 'adicionar'),
	(21, 'eventos', 'editar'),
	(22, 'eventos', 'excluir'),
	(23, 'eventos', 'ajaximagens'),
	(24, 'eventos', 'ajaxdeletaimagem'),
	(25, 'eventos', 'ajaxsetacapa'),
	(26, 'eventos', 'ajaxsetaorder'),
	(27, 'geral', 'topo'),
	(28, 'geral', 'menu'),
	(29, 'geral', 'menulateral'),
	(30, 'geral', 'rodape'),
	(31, 'index', 'index'),
	(32, 'index', 'ajaxordem'),
	(33, 'index', 'ajaxsesao'),
	(34, 'index', 'teste'),
	(35, 'institucional', 'index'),
	(36, 'login', 'index'),
	(37, 'login', 'logout'),
	(38, 'login', 'requerersenha'),
	(39, 'login', 'recuperarsenha'),
	(40, 'logs', 'index'),
	(41, 'menus', 'index'),
	(42, 'menus', 'adicionar'),
	(43, 'menus', 'editar'),
	(44, 'menus', 'excluir'),
	(45, 'notificacao', 'index'),
	(46, 'perfis', 'index'),
	(47, 'perfis', 'adicionar'),
	(48, 'perfis', 'editar'),
	(49, 'perfis', 'excluir'),
	(50, 'seo', 'index'),
	(51, 'seo', 'ajaxacoes'),
	(52, 'seo', 'ajaxpopulate'),
	(53, 'trabalheconosco', 'index'),
	(54, 'trabalheconosco', 'excluir'),
	(55, 'trabalheconosco', 'visualizar'),
	(56, 'unidades', 'index'),
	(57, 'unidades', 'adicionar'),
	(58, 'unidades', 'editar'),
	(59, 'unidades', 'excluir'),
	(60, 'unidades', 'ajaximagens'),
	(61, 'unidades', 'ajaxdeletaimagem'),
	(62, 'unidades', 'ajaxsetacapa'),
	(63, 'unidades', 'ajaxsetaorder'),
	(64, 'usuarios', 'index'),
	(65, 'usuarios', 'adicionar'),
	(66, 'usuarios', 'editar'),
	(67, 'usuarios', 'excluir'),
	(68, 'usuarios', 'perfil'),
	(69, 'usuarios', 'perfileditar'),
	(70, 'vagas', 'index'),
	(71, 'vagas', 'adicionar'),
	(72, 'vagas', 'editar'),
	(73, 'vagas', 'excluir'),
	(74, 'cotacao', 'index'),
	(75, 'cotacao', 'excluir'),
	(76, 'cotacao', 'visualizar'),
	(77, 'galerias', 'index'),
	(78, 'galerias', 'adicionar'),
	(79, 'galerias', 'editar'),
	(80, 'galerias', 'excluir'),
	(81, 'galerias', 'ajaximagens'),
	(82, 'galerias', 'ajaxdeletaimagem'),
	(83, 'galerias', 'ajaxsetacapa'),
	(84, 'galerias', 'ajaxsetaorder'),
	(85, 'vendas', 'index'),
	(86, 'vendas', 'adicionar'),
	(87, 'vendas', 'editar'),
	(88, 'vendas', 'excluir'),
	(89, 'vendas', 'ajaximagens'),
	(90, 'vendas', 'ajaxdeletaimagem'),
	(91, 'vendas', 'ajaxsetacapa'),
	(92, 'vendas', 'ajaxsetaorder');
/*!40000 ALTER TABLE `menus_perfil` ENABLE KEYS */;

-- Copiando estrutura para tabela piglog.menus_perfil_permissoes
CREATE TABLE IF NOT EXISTS `menus_perfil_permissoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu` int(11) NOT NULL,
  `perfil` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `menu` (`menu`),
  KEY `perfil` (`perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=265 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela piglog.menus_perfil_permissoes: ~262 rows (aproximadamente)
/*!40000 ALTER TABLE `menus_perfil_permissoes` DISABLE KEYS */;
INSERT INTO `menus_perfil_permissoes` (`id`, `menu`, `perfil`) VALUES
	(1, 1, 1),
	(2, 1, 2),
	(3, 1, 3),
	(4, 3, 1),
	(5, 3, 2),
	(6, 3, 3),
	(7, 6, 3),
	(8, 4, 3),
	(9, 4, 2),
	(10, 6, 2),
	(11, 6, 1),
	(12, 4, 1),
	(13, 5, 2),
	(14, 5, 3),
	(15, 2, 3),
	(16, 2, 2),
	(17, 2, 1),
	(18, 5, 1),
	(19, 11, 3),
	(20, 7, 3),
	(21, 9, 3),
	(22, 10, 3),
	(23, 8, 3),
	(24, 11, 1),
	(25, 11, 2),
	(27, 15, 3),
	(28, 14, 3),
	(29, 14, 2),
	(30, 14, 1),
	(31, 12, 1),
	(32, 12, 2),
	(33, 12, 3),
	(34, 13, 3),
	(35, 13, 2),
	(36, 13, 1),
	(37, 16, 3),
	(38, 17, 3),
	(39, 18, 1),
	(40, 18, 2),
	(41, 18, 3),
	(42, 20, 3),
	(43, 20, 2),
	(44, 20, 1),
	(45, 24, 1),
	(46, 24, 2),
	(47, 24, 3),
	(48, 23, 3),
	(49, 23, 2),
	(50, 23, 1),
	(51, 25, 1),
	(52, 25, 2),
	(53, 25, 3),
	(54, 26, 3),
	(55, 26, 2),
	(56, 26, 1),
	(57, 21, 1),
	(58, 21, 2),
	(59, 21, 3),
	(60, 22, 3),
	(61, 19, 3),
	(62, 19, 2),
	(63, 22, 2),
	(64, 22, 1),
	(65, 19, 1),
	(66, 70, 1),
	(67, 70, 2),
	(68, 70, 3),
	(69, 73, 3),
	(70, 73, 2),
	(71, 73, 1),
	(72, 72, 1),
	(73, 72, 2),
	(74, 72, 3),
	(75, 71, 3),
	(76, 71, 2),
	(77, 71, 1),
	(78, 65, 1),
	(79, 65, 2),
	(80, 65, 3),
	(81, 66, 3),
	(82, 66, 2),
	(83, 66, 1),
	(84, 67, 1),
	(85, 67, 2),
	(86, 67, 3),
	(87, 64, 3),
	(88, 68, 3),
	(89, 69, 3),
	(90, 69, 2),
	(91, 68, 2),
	(92, 68, 1),
	(93, 69, 1),
	(94, 64, 1),
	(95, 57, 1),
	(96, 57, 2),
	(97, 57, 3),
	(98, 61, 3),
	(99, 61, 2),
	(100, 61, 1),
	(101, 60, 1),
	(102, 60, 2),
	(103, 60, 3),
	(104, 62, 3),
	(105, 62, 2),
	(106, 62, 1),
	(107, 63, 1),
	(108, 63, 2),
	(109, 63, 3),
	(110, 58, 3),
	(111, 59, 3),
	(112, 56, 3),
	(113, 56, 2),
	(114, 59, 2),
	(115, 58, 2),
	(116, 58, 1),
	(117, 59, 1),
	(118, 56, 1),
	(119, 54, 1),
	(120, 53, 1),
	(121, 55, 1),
	(122, 55, 2),
	(123, 53, 2),
	(124, 54, 2),
	(125, 54, 3),
	(126, 53, 3),
	(127, 55, 3),
	(128, 51, 3),
	(129, 52, 3),
	(130, 50, 3),
	(131, 47, 3),
	(132, 48, 3),
	(133, 49, 3),
	(134, 46, 3),
	(135, 46, 2),
	(136, 46, 1),
	(137, 49, 1),
	(138, 49, 2),
	(139, 48, 2),
	(140, 48, 1),
	(141, 47, 1),
	(142, 47, 2),
	(143, 45, 1),
	(144, 45, 2),
	(145, 45, 3),
	(146, 42, 1),
	(147, 42, 2),
	(148, 42, 3),
	(149, 43, 3),
	(150, 44, 3),
	(151, 41, 3),
	(152, 41, 2),
	(153, 44, 2),
	(154, 43, 2),
	(155, 43, 1),
	(156, 44, 1),
	(157, 41, 1),
	(158, 40, 1),
	(159, 40, 2),
	(160, 40, 3),
	(161, 36, 1),
	(162, 36, 2),
	(163, 36, 3),
	(164, 37, 3),
	(165, 39, 3),
	(166, 38, 3),
	(167, 38, 2),
	(168, 39, 2),
	(169, 39, 1),
	(170, 38, 1),
	(171, 37, 2),
	(172, 37, 1),
	(173, 35, 1),
	(174, 35, 2),
	(175, 35, 3),
	(176, 32, 1),
	(177, 32, 2),
	(178, 32, 3),
	(179, 33, 3),
	(180, 33, 2),
	(181, 33, 1),
	(182, 31, 1),
	(183, 31, 2),
	(184, 31, 3),
	(185, 34, 3),
	(186, 34, 2),
	(187, 34, 1),
	(188, 28, 1),
	(189, 28, 2),
	(190, 29, 2),
	(191, 29, 1),
	(192, 30, 1),
	(193, 30, 2),
	(194, 27, 2),
	(195, 27, 1),
	(196, 30, 3),
	(197, 27, 3),
	(198, 29, 3),
	(199, 28, 3),
	(200, 17, 1),
	(201, 17, 2),
	(202, 16, 2),
	(203, 16, 1),
	(204, 75, 1),
	(205, 74, 1),
	(206, 74, 2),
	(207, 75, 2),
	(208, 75, 3),
	(209, 74, 3),
	(210, 76, 3),
	(211, 76, 2),
	(212, 76, 1),
	(213, 78, 1),
	(214, 78, 2),
	(215, 78, 3),
	(216, 82, 3),
	(217, 82, 1),
	(218, 82, 2),
	(219, 81, 1),
	(220, 81, 2),
	(221, 81, 3),
	(222, 83, 3),
	(223, 83, 2),
	(224, 83, 1),
	(225, 84, 1),
	(226, 84, 2),
	(227, 84, 3),
	(228, 79, 3),
	(229, 79, 2),
	(230, 79, 1),
	(231, 80, 1),
	(232, 80, 2),
	(233, 80, 3),
	(234, 77, 3),
	(235, 77, 2),
	(236, 77, 1),
	(237, 85, 1),
	(238, 85, 2),
	(239, 85, 3),
	(240, 88, 3),
	(241, 88, 2),
	(242, 88, 1),
	(243, 87, 1),
	(244, 87, 2),
	(245, 87, 3),
	(246, 92, 3),
	(247, 92, 2),
	(248, 92, 1),
	(249, 91, 1),
	(250, 91, 2),
	(251, 91, 3),
	(252, 89, 3),
	(253, 89, 2),
	(254, 89, 1),
	(255, 90, 1),
	(256, 90, 2),
	(257, 90, 3),
	(258, 86, 3),
	(259, 86, 2),
	(260, 86, 1),
	(262, 51, 2),
	(263, 52, 2),
	(264, 50, 2);
/*!40000 ALTER TABLE `menus_perfil_permissoes` ENABLE KEYS */;

-- Copiando estrutura para tabela piglog.menus_visualizacao
CREATE TABLE IF NOT EXISTS `menus_visualizacao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu` int(11) NOT NULL,
  `perfil` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu` (`menu`),
  KEY `perfil` (`perfil`),
  CONSTRAINT `FK_menus_visualizacao_menus` FOREIGN KEY (`menu`) REFERENCES `menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_menus_visualizacao_perfil` FOREIGN KEY (`perfil`) REFERENCES `perfil` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=427 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela piglog.menus_visualizacao: ~58 rows (aproximadamente)
/*!40000 ALTER TABLE `menus_visualizacao` DISABLE KEYS */;
INSERT INTO `menus_visualizacao` (`id`, `menu`, `perfil`) VALUES
	(6, 14, 3),
	(7, 18, 3),
	(8, 19, 2),
	(9, 19, 3),
	(10, 20, 2),
	(11, 20, 3),
	(24, 72, 2),
	(25, 72, 3),
	(133, 105, 2),
	(148, 14, 3),
	(167, 105, 2),
	(168, 105, 3),
	(173, 107, 2),
	(174, 107, 3),
	(175, 108, 2),
	(176, 108, 3),
	(181, 111, 2),
	(182, 111, 3),
	(185, 111, 2),
	(186, 111, 3),
	(191, 111, 2),
	(192, 111, 3),
	(193, 111, 2),
	(194, 111, 3),
	(205, 13, 2),
	(206, 13, 3),
	(216, 106, 3),
	(220, 15, 3),
	(221, 91, 3),
	(252, 117, 3),
	(253, 73, 3),
	(255, 4, 2),
	(256, 4, 3),
	(272, 104, 3),
	(373, 110, 2),
	(374, 110, 3),
	(375, 112, 2),
	(376, 112, 3),
	(405, 89, 3),
	(406, 123, 2),
	(407, 123, 3),
	(410, 124, 2),
	(411, 124, 3),
	(412, 125, 2),
	(413, 125, 3),
	(414, 126, 2),
	(415, 126, 3),
	(416, 127, 2),
	(417, 127, 3),
	(418, 128, 2),
	(419, 128, 3),
	(420, 129, 2),
	(421, 129, 3),
	(422, 109, 2),
	(423, 109, 3),
	(424, 134, 1),
	(425, 134, 2),
	(426, 134, 3);
/*!40000 ALTER TABLE `menus_visualizacao` ENABLE KEYS */;

-- Copiando estrutura para tabela piglog.perfil
CREATE TABLE IF NOT EXISTS `perfil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela piglog.perfil: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `perfil` DISABLE KEYS */;
INSERT INTO `perfil` (`id`, `nome`) VALUES
	(1, 'Usuario'),
	(2, 'Administrador'),
	(3, 'Master');
/*!40000 ALTER TABLE `perfil` ENABLE KEYS */;

-- Copiando estrutura para tabela piglog.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(50) NOT NULL DEFAULT '0',
  `nome` varchar(90) NOT NULL DEFAULT '0',
  `senha` varchar(100) NOT NULL DEFAULT '0',
  `chave` varchar(150) NOT NULL DEFAULT '0',
  `perfil` int(11) NOT NULL,
  `email` varchar(100) NOT NULL DEFAULT '0',
  `celular` varchar(50) NOT NULL DEFAULT '0',
  `imagem` varchar(100) DEFAULT '0',
  `ultimo_acesso` datetime DEFAULT NULL,
  `sessao` varchar(90) DEFAULT NULL,
  `ip` varchar(80) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_usuarios_permisoes` (`perfil`),
  CONSTRAINT `FK_usuarios_perfil` FOREIGN KEY (`perfil`) REFERENCES `perfil` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela piglog.usuarios: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`id`, `login`, `nome`, `senha`, `chave`, `perfil`, `email`, `celular`, `imagem`, `ultimo_acesso`, `sessao`, `ip`, `status`) VALUES
	(3, 'thiago', 'Thiago Carlos ', '202cb962ac59075b964b07152d234b70', '', 3, 'thiago@schoeler.com.br', '4384257131', '3a355z4d79.jpg', '2017-07-03 04:49:56', '3drhtats3926kl9pvr0egjvv02', '186.226.246.1', 1),
	(4, 'jessica', 'Jessica Betim', 'be7cbfc171603e06450e6b943fd019bc', '0', 2, 'jessicabetim@schoeler.com.br', '', NULL, '2016-09-14 14:25:31', 'i6rpn7nj9bk478pke2ji2kbbv0', '186.226.246.45', 1),
	(5, 'marcos', 'Marcos Martins', '456952f553b82e5ab0afdd8d3babe183', '0', 2, 'marcos@schoeler.com.br', '', NULL, '2016-09-19 14:44:46', '2avp1s5caffndfbi4o2qvg2gj2', '186.226.246.45', 1),
	(6, 'marciano', 'Marciano Koelln', '1eb61ab2fab536fce0966ecee1a3358d', '0', 2, 'op.suinos@piglog.com.br', '', 'z9czcc35az.jpg', NULL, NULL, NULL, 1);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

-- Copiando estrutura para tabela piglog.vendas
CREATE TABLE IF NOT EXISTS `vendas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modelo` varchar(90) NOT NULL,
  `marca` varchar(90) NOT NULL,
  `cambio` varchar(10) NOT NULL,
  `ano` varchar(90) NOT NULL,
  `cor` varchar(90) NOT NULL,
  `tipo` varchar(60) DEFAULT NULL,
  `km_rodados` float NOT NULL DEFAULT '0',
  `destaque` int(11) NOT NULL,
  `descricao` text NOT NULL,
  `valor` float NOT NULL DEFAULT '0',
  `data_cadastro` datetime NOT NULL,
  `visualizacoes` int(11) NOT NULL,
  `ativo` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela piglog.vendas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `vendas` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendas` ENABLE KEYS */;

-- Copiando estrutura para tabela piglog.venda_imagens
CREATE TABLE IF NOT EXISTS `venda_imagens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `venda` bigint(20) DEFAULT NULL,
  `imagem` varchar(150) DEFAULT NULL,
  `capa` int(11) DEFAULT '0',
  `ordem` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `unidade` (`venda`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela piglog.venda_imagens: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `venda_imagens` DISABLE KEYS */;
/*!40000 ALTER TABLE `venda_imagens` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
