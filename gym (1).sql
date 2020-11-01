-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 03-Dez-2019 às 22:56
-- Versão do servidor: 5.7.26
-- versão do PHP: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gym`
--
CREATE DATABASE IF NOT EXISTS `gym` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `gym`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `contract`
--

DROP TABLE IF EXISTS `contract`;
CREATE TABLE IF NOT EXISTS `contract` (
  `idcontract` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) DEFAULT NULL,
  `idtrainer` int(11) DEFAULT NULL,
  `idworkout` int(11) DEFAULT NULL,
  `admission` date DEFAULT NULL,
  PRIMARY KEY (`idcontract`),
  KEY `iduser` (`iduser`),
  KEY `idtrainer` (`idtrainer`),
  KEY `idworkout` (`idworkout`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `contract`
--

INSERT INTO `contract` (`idcontract`, `iduser`, `idtrainer`, `idworkout`, `admission`) VALUES
(31, 24, 15, 7, '2019-04-01'),
(32, 31, 8, 5, '2019-01-25'),
(33, 37, 8, 6, '2019-04-24'),
(34, 35, 3, 1, '2020-05-05'),
(35, 33, 3, 4, '2019-04-28'),
(36, 38, 20, 5, '2020-03-27'),
(37, 39, 11, 6, '2019-12-05'),
(38, 35, 3, 6, '2020-09-12'),
(39, 40, 5, 4, '2019-01-31'),
(40, 38, 20, 3, '2018-12-09'),
(41, 40, 5, 8, '2019-06-26'),
(42, 22, 15, 7, '2020-08-29'),
(43, 23, 13, 2, '2020-10-17'),
(44, 39, 11, 5, '2018-11-14'),
(45, 28, 12, 3, '2019-06-23'),
(46, 41, 21, 7, '2019-12-03'),
(47, 41, 21, 1, '2019-12-03');

-- --------------------------------------------------------

--
-- Estrutura da tabela `exercises`
--

DROP TABLE IF EXISTS `exercises`;
CREATE TABLE IF NOT EXISTS `exercises` (
  `idexercise` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `description` varchar(200) NOT NULL,
  `image` varchar(180) NOT NULL,
  PRIMARY KEY (`idexercise`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `exercises`
--

INSERT INTO `exercises` (`idexercise`, `name`, `description`, `image`) VALUES
(1, 'Puxada Alta com Braços Estendidos', 'sed, est. Nunc laoreet lectus', 'enim.mi@Aliquamultrices.net'),
(2, 'Puxada na Frente com Polia Alta', 'id magna et ipsum cursus vestibulum.', 'eget@semutcursus.edu'),
(3, 'Puxada na Frente com Triângulo e Polia Alta', 'vel turpis.', 'Aliquam@dolor.com'),
(4, 'Remada Unilateral', 'mauris, aliquam eu, accumsan sed, facilisis vitae, orci.', 'luctus.lobortis@In.edu'),
(5, 'Rosca Alternada', 'Pellentesque habitant morbi tristique senectus et netus et malesuada', 'eu.odio@aliquamiaculis.org'),
(6, 'Rosca Concentrada', 'amet, risus. Donec nibh', 'https://www.proteste.org.br/-/media/proteste/images/home/seus-direitos/direitos%20do%20consumidor/noticia/03%20academia.jpg?rev=fd888cfc-5779-4ed9-9a2e-486a0d425d62'),
(7, 'Rosca Direta', 'ipsum primis in faucibus orci luctus et', 'orci.lacus@Curabitur.org'),
(8, 'Agachamento de adutor com haltere', 'molestie. Sed id risus quis', 'https://www.gazetadopovo.com.br/viver-bem/wp-content/uploads/2018/09/exercicio-academia-nutricao-600x400.jpg'),
(9, 'Agachamento cossack', 'amet massa. Quisque porttitor eros nec', 'lorem.fringilla@varius.org'),
(10, 'Stepup com halteres', 'dis parturient montes, nascetur ridiculus mus. Donec', 'Nunc.ac.sem@Proinnisl.edu'),
(11, 'Avanço com halteres', 'turpis non enim. Mauris quis turpis vitae', 'elementum.dui@consequat.net'),
(12, 'Stepup', 'fermentum fermentum arcu. Vestibulum ante ipsum primis in', 'https://i2.wp.com/www.fitnessmag.co.za/wp-content/uploads/2018/05/isilda-step-workout.jpg?fit=850%2C452&ssl=1'),
(13, 'Agachamento livre', 'quis,', 'a.odio@imperdiet.com'),
(14, 'Cadeira Extensora', 'dui nec', 'sed@Maecenas.org'),
(15, 'Leg press', 'elit. Curabitur sed', 'arcu@Sed.com'),
(16, 'Stiff', 'ipsum. Curabitur consequat, lectus sit amet luctus', 'libero.Integer.in@eratnequenon.co.uk'),
(17, 'Abdominal', 'eget odio. Aliquam vulputate ullamcorper', 'Phasellus.dolor@Crasconvallis.edu'),
(18, 'Agachamento com barra', 'volutpat. Nulla dignissim. Maecenas ornare egestas ligula.', 'amet.consectetuer.adipiscing@dictummi.co.uk'),
(19, 'Orebound', 'abcdefghijklmnopqrstuvwxyz', 'asdasdasdasdasd');

-- --------------------------------------------------------

--
-- Estrutura da tabela `format`
--

DROP TABLE IF EXISTS `format`;
CREATE TABLE IF NOT EXISTS `format` (
  `idformat` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(80) NOT NULL,
  `idworkout` int(11) DEFAULT NULL,
  `idexercise` int(11) DEFAULT NULL,
  PRIMARY KEY (`idformat`),
  KEY `idworkout` (`idworkout`),
  KEY `idexercise` (`idexercise`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `format`
--

INSERT INTO `format` (`idformat`, `code`, `idworkout`, `idexercise`) VALUES
(1, '91', 4, 8),
(2, '92', 6, 12),
(3, '93', 2, 14),
(4, '94', 6, 3),
(5, '95', 10, 14),
(6, '96', 3, 16),
(7, '97', 1, 6),
(9, '99', 4, 7),
(10, '100', 5, 6),
(11, '1', 1, 12),
(12, '2', 9, 2),
(13, '3', 8, 11),
(14, '4', 7, 13),
(15, '5', 1, 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `guidance`
--

DROP TABLE IF EXISTS `guidance`;
CREATE TABLE IF NOT EXISTS `guidance` (
  `iduser` int(11) DEFAULT NULL,
  `idtrainer` int(11) DEFAULT NULL,
  `dateguidance` date DEFAULT NULL,
  `evaluation` decimal(3,1) DEFAULT NULL,
  KEY `iduser` (`iduser`),
  KEY `idtrainer` (`idtrainer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `guidance`
--

INSERT INTO `guidance` (`iduser`, `idtrainer`, `dateguidance`, `evaluation`) VALUES
(32, 15, '2017-04-15', '8.5'),
(33, 3, '2018-08-27', '4.0'),
(37, 8, '2019-05-23', '8.9'),
(28, 12, '2019-10-19', '1.6'),
(38, 20, '2019-07-02', '6.3'),
(31, 8, '2018-05-14', '1.0'),
(26, 14, '2018-07-28', '5.2'),
(24, 15, '2018-02-10', '5.7'),
(34, 13, '2017-06-12', '3.2'),
(39, 11, '2018-12-25', '7.7'),
(40, 5, '2018-04-04', '5.0'),
(30, 1, '2017-12-27', '4.4'),
(22, 15, '2017-04-27', '2.3'),
(35, 3, '2019-10-19', '2.0'),
(23, 13, '2017-06-30', '4.0'),
(41, 21, '2019-12-03', '10.0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `trainers`
--

DROP TABLE IF EXISTS `trainers`;
CREATE TABLE IF NOT EXISTS `trainers` (
  `idtrainer` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(80) NOT NULL,
  `password` varchar(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `birth` date NOT NULL,
  `gender` enum('M','F','O') NOT NULL,
  `nationality` varchar(80) DEFAULT NULL,
  `height` decimal(3,2) DEFAULT NULL,
  `weight` decimal(5,2) DEFAULT NULL,
  `objective` varchar(180) DEFAULT NULL,
  `avatar` varchar(180) DEFAULT NULL,
  `admission` date DEFAULT NULL,
  `phrase` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`idtrainer`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `trainers`
--

INSERT INTO `trainers` (`idtrainer`, `username`, `password`, `name`, `birth`, `gender`, `nationality`, `height`, `weight`, `objective`, `avatar`, `admission`, `phrase`) VALUES
(1, 'Litora Company', '2954', 'Matthew', '2018-06-11', 'M', NULL, '1.99', '200.13', 'semper et,', 'Nam.interdum.enim@etmagnis.com', '2020-07-05', NULL),
(2, 'Ultricies Adipiscing PC', '7446', 'Jeanette', '2018-01-06', 'F', NULL, '3.17', '287.72', 'Curabitur consequat, lectus sit amet', 'aliquet.magna@pellentesqueSed.edu', '2020-06-26', NULL),
(3, 'Tincidunt LLP', '5779', 'Blythe', '2019-03-09', 'O', NULL, '3.95', '181.37', 'Sed dictum. Proin', 'neque.tellus@inmolestie.org', '2020-10-14', NULL),
(4, 'Dolor LLC', '5991', 'Graham', '2019-11-01', 'O', NULL, '3.84', '165.58', 'Proin vel nisl. Quisque fringilla euismod enim. Etiam', 'auctor@Donecfelisorci.com', '2020-03-22', NULL),
(5, 'Per Inceptos Hymenaeos PC', '9888', 'Martha', '2019-03-29', 'F', NULL, '2.60', '274.38', 'placerat eget, venenatis a, magna. Lorem ipsum dolor sit', 'Nulla@venenatisa.co.uk', '2020-06-18', NULL),
(6, 'Dictum Augue Ltd', '2084', 'Colin', '2019-10-01', 'O', NULL, '3.02', '284.95', 'tempor erat neque non quam.', 'id.risus@Aenean.ca', '2019-01-28', NULL),
(7, 'Lacus Varius Et Industries', '6513', 'Eden', '2017-12-22', 'F', NULL, '4.29', '137.57', 'velit. Sed malesuada augue ut lacus.', 'tortor@id.co.uk', '2019-07-24', NULL),
(8, 'Fringilla Donec Incorporated', '1388', 'Aiko', '2019-02-15', 'F', NULL, '3.14', '50.95', 'sit amet massa. Quisque porttitor eros nec tellus.', 'vel@risusNunc.net', '2019-07-31', NULL),
(9, 'Libero Est PC', '4985', 'Reed', '2019-01-03', 'M', NULL, '2.13', '201.62', 'nunc nulla vulputate dui, nec tempus mauris erat eget', 'nunc.interdum.feugiat@arcuVestibulum.net', '2020-09-06', NULL),
(10, 'Lobortis Quis Pede LLC', '9898', 'Uriel', '2018-05-22', 'M', NULL, '2.86', '160.61', 'vitae mauris sit amet lorem semper', 'posuere@idanteNunc.edu', '2019-09-29', NULL),
(11, 'Conubia LLC', '5972', 'Beatrice', '2019-09-06', 'M', NULL, '2.14', '187.24', 'et libero. Proin mi. Aliquam gravida mauris ut mi. Duis', 'porttitor@Morbiquis.com', '2020-07-18', NULL),
(12, 'Amet Industries', '6597', 'Emerald', '2018-03-18', 'M', NULL, '1.32', '116.84', 'pede.', 'vel@dolorQuisque.co.uk', '2020-01-03', NULL),
(13, 'Ultrices Mauris Ipsum Institute', '9092', 'Henry', '2019-03-06', 'F', NULL, '1.64', '88.16', 'Suspendisse tristique neque venenatis lacus. Etiam', 'semper.erat.in@rhoncusDonec.co.uk', '2019-12-27', NULL),
(14, 'Cras Lorem Industries', '6032', 'Colt', '2019-07-20', 'O', NULL, '3.81', '73.64', 'dui augue', 'lacinia.vitae@DonecegestasDuis.co.uk', '2019-04-27', NULL),
(15, 'Ultrices Inc.', '2041', 'Uriel', '2018-07-22', 'M', NULL, '1.32', '160.27', 'Nunc mauris elit,', 'sit.amet.lorem@Vestibulumante.org', '2019-05-03', NULL),
(16, 'Risus A Ultricies LLP', '2229', 'Ruby', '2018-03-26', 'F', NULL, '3.07', '265.50', 'lorem ac risus. Morbi metus. Vivamus euismod urna.', 'ipsum@Morbinequetellus.co.uk', '2019-11-03', NULL),
(17, 'Viverra Maecenas Consulting', '1464', 'Elliott', '2018-07-26', 'M', NULL, '3.25', '243.69', 'nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing,', 'Cras@egestaslacinia.ca', '2019-11-18', NULL),
(18, 'Montes Nascetur Incorporated', '7582', 'Ashton', '2018-05-08', 'M', NULL, '4.16', '275.94', 'pharetra, felis eget varius ultrices, mauris ipsum porta', 'nec@luctusetultrices.ca', '2020-04-27', NULL),
(19, 'Arcu Vel Quam Foundation', '4282', 'Quemby', '2019-03-24', 'O', NULL, '3.66', '290.53', 'senectus et netus et', 'dolor.quam@penatibusetmagnis.ca', '2018-12-11', NULL),
(20, 'Eu Inc.', '2552', 'Olga', '2018-11-21', 'F', NULL, '1.48', '275.07', 'taciti sociosqu ad litora torquent per', 'eleifend.Cras.sed@sapiencursusin.co.uk', '2019-02-02', NULL),
(21, 'cBruno', '5555', 'Bruno Caboclo', '1999-02-14', 'M', NULL, '1.72', '80.00', 'Virar Monstro', 'https://cdn.dribbble.com/users/588874/screenshots/2249528/dribbble.png', '2019-12-03', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(80) NOT NULL,
  `password` varchar(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(180) DEFAULT NULL,
  `birth` date NOT NULL,
  `gender` enum('M','F','O') NOT NULL,
  `nationality` varchar(80) DEFAULT NULL,
  `height` decimal(3,2) DEFAULT NULL,
  `weight` decimal(5,2) DEFAULT NULL,
  `objective` varchar(180) DEFAULT NULL,
  `avatar` varchar(180) DEFAULT NULL,
  `admission` date DEFAULT NULL,
  PRIMARY KEY (`iduser`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`iduser`, `username`, `password`, `name`, `email`, `birth`, `gender`, `nationality`, `height`, `weight`, `objective`, `avatar`, `admission`) VALUES
(21, 'Wallace', '3944', 'Halla', NULL, '2018-06-26', 'O', NULL, '2.98', '194.42', 'sem. Nulla interdum. Curabitur dictum. Phasellus in', 'ullamcorper.velit.in@pretiumaliquetmetus.co.uk', '2020-05-27'),
(22, 'Donaldson', '6620', 'Urielle', NULL, '2019-03-27', 'O', NULL, '3.21', '135.41', 'tincidunt', 'enim@sollicitudinamalesuada.com', '2020-08-28'),
(23, 'Hensley', '4662', 'Ursa', NULL, '2018-05-18', 'F', NULL, '2.87', '69.99', 'ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit', 'Integer@sem.com', '2020-06-26'),
(24, 'Adams', '6070', 'Jared', NULL, '2018-06-04', 'O', NULL, '1.99', '274.75', 'dignissim tempor arcu.', 'vehicula.aliquet@nonbibendum.edu', '2020-08-25'),
(25, 'Flores', '8147', 'Camille', NULL, '2018-06-09', 'F', NULL, '2.34', '125.64', 'tempor', 'eu@inhendreritconsectetuer.ca', '2020-02-18'),
(26, 'Mcclain', '7415', 'Kyle', NULL, '2019-02-19', 'M', NULL, '3.01', '294.23', 'odio sagittis semper. Nam tempor diam dictum sapien.', 'urna.Vivamus@turpis.edu', '2020-07-21'),
(27, 'Adkins', '8233', 'Carl', NULL, '2018-10-05', 'O', NULL, '3.25', '222.07', 'id, mollis nec,', 'vel.convallis.in@nisiaodio.org', '2020-02-11'),
(28, 'Crosby', '5167', 'Jerry', NULL, '2018-11-23', 'F', NULL, '1.77', '273.12', 'lectus quis massa. Mauris', 'metus@semut.org', '2019-12-25'),
(29, 'Ellis', '2005', 'Carol', NULL, '2017-11-26', 'M', NULL, '1.78', '183.17', 'placerat eget, venenatis a, magna.', 'libero.Morbi.accumsan@vitae.com', '2019-11-30'),
(30, 'Martin', '1874', 'Irma', NULL, '2018-05-03', 'F', NULL, '4.08', '76.48', 'leo. Cras vehicula aliquet libero. Integer in magna. Phasellus', 'Maecenas@miAliquamgravida.co.uk', '2019-06-07'),
(31, 'Rich', '4928', 'Cole', NULL, '2019-04-21', 'M', NULL, '3.83', '137.84', 'luctus. Curabitur egestas nunc sed libero. Proin sed turpis', 'risus.quis.diam@eleifend.com', '2020-08-11'),
(32, 'Blanchard', '2424', 'Aurelia', NULL, '2019-01-23', 'O', NULL, '3.03', '141.20', 'tincidunt nibh.', 'fringilla@nequeIn.com', '2019-02-26'),
(33, 'Flowers', '8150', 'Eaton', NULL, '2018-06-26', 'M', NULL, '2.29', '179.54', 'velit', 'rhoncus.id@risusNunc.org', '2020-01-12'),
(34, 'Higgins', '6834', 'Sebastian', NULL, '2019-08-20', 'F', NULL, '3.76', '141.02', 'non, bibendum sed, est. Nunc', 'Integer.vitae@auctorodioa.com', '2019-08-07'),
(35, 'Mcdowell', '6513', 'Nyssa', NULL, '2018-07-25', 'O', NULL, '3.90', '292.73', 'Donec at arcu. Vestibulum ante ipsum', 'sit.amet.metus@parturientmontesnascetur.edu', '2018-12-24'),
(36, 'Clements', '4559', 'Brianna', NULL, '2018-09-03', 'M', NULL, '4.08', '269.33', 'suscipit nonummy. Fusce', 'ultrices@malesuadavel.org', '2019-02-23'),
(37, 'Fry', '5860', 'Barry', NULL, '2019-07-21', 'O', NULL, '1.31', '102.58', 'auctor non, feugiat nec,', 'sem@tellusfaucibusleo.net', '2020-08-14'),
(38, 'Alford', '3194', 'Grady', NULL, '2018-11-10', 'M', NULL, '3.58', '122.79', 'ipsum. Suspendisse sagittis. Nullam', 'ornare.facilisis.eget@molestie.co.uk', '2020-02-02'),
(39, 'Frost', '7253', 'Eagan', NULL, '2018-06-23', 'M', NULL, '3.35', '231.84', 'Vestibulum ut', 'nibh.Donec.est@vulputate.com', '2020-10-23'),
(40, 'Pierce', '8150', 'Xenos', NULL, '2019-01-02', 'O', NULL, '1.95', '53.57', 'Integer id magna', 'suscipit.nonummy.Fusce@est.org', '2019-04-16'),
(41, 'Rassan', '1922', 'Rafael Santana', 'rassant01@gmail.com', '1999-02-19', 'M', 'undefined', '1.82', '80.00', 'Virar Fit', 'https://avatarfiles.alphacoders.com/715/71560.jpg', '2019-12-03');

-- --------------------------------------------------------

--
-- Estrutura da tabela `workouts`
--

DROP TABLE IF EXISTS `workouts`;
CREATE TABLE IF NOT EXISTS `workouts` (
  `idworkout` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `datecreate` date DEFAULT NULL,
  PRIMARY KEY (`idworkout`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `workouts`
--

INSERT INTO `workouts` (`idworkout`, `name`, `datecreate`) VALUES
(1, 'Workout 10', '2018-12-28'),
(2, 'Workout 4', '2018-11-25'),
(3, 'Workout 3', '2019-06-07'),
(4, 'Workout 8', '2019-07-26'),
(5, 'Workout 2', '2020-02-14'),
(6, 'Workout 1', '2020-03-04'),
(7, 'Workout 5', '2020-01-29'),
(8, 'Workout 9', '2019-04-04'),
(9, 'Workout 6', '2020-06-27'),
(10, 'Workout 7', '2020-05-05');

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `contract`
--
ALTER TABLE `contract`
  ADD CONSTRAINT `contract_ibfk_1` FOREIGN KEY (`iduser`) REFERENCES `users` (`iduser`) ON DELETE CASCADE,
  ADD CONSTRAINT `contract_ibfk_2` FOREIGN KEY (`idtrainer`) REFERENCES `trainers` (`idtrainer`) ON DELETE CASCADE,
  ADD CONSTRAINT `contract_ibfk_3` FOREIGN KEY (`idworkout`) REFERENCES `workouts` (`idworkout`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `format`
--
ALTER TABLE `format`
  ADD CONSTRAINT `format_ibfk_1` FOREIGN KEY (`idworkout`) REFERENCES `workouts` (`idworkout`) ON DELETE CASCADE,
  ADD CONSTRAINT `format_ibfk_2` FOREIGN KEY (`idexercise`) REFERENCES `exercises` (`idexercise`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `guidance`
--
ALTER TABLE `guidance`
  ADD CONSTRAINT `guidance_ibfk_1` FOREIGN KEY (`iduser`) REFERENCES `users` (`iduser`) ON DELETE CASCADE,
  ADD CONSTRAINT `guidance_ibfk_2` FOREIGN KEY (`idtrainer`) REFERENCES `trainers` (`idtrainer`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
