-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3308
-- Généré le :  mer. 20 mai 2020 à 15:52
-- Version du serveur :  8.0.18
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `afpa_gescom`
--
-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `ord_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ord_order_date` date NOT NULL,
  `ord_payment_date` date DEFAULT NULL,
  `ord_ship_date` date DEFAULT NULL,
  `ord_reception_date` date DEFAULT NULL,
  `ord_status` varchar(25) NOT NULL,
  `ord_cus_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`ord_id`),
  KEY `ord_cus_id` (`ord_cus_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`ord_id`, `ord_order_date`, `ord_payment_date`, `ord_ship_date`, `ord_reception_date`, `ord_status`,`ord_cus_id`) VALUES
(1, '2018-09-01', '2018-09-01','2018-09-10','2018-09-15', 'oui',4),
(2, '2020-11-01', NULL, NULL, NULL,'non',3),
(3, '2019-08-01', '2019-08-03', '2019-08-10', '2019-08-17', 'oui',5),
(4, '2020-07-01', '2020-07-01', '2020_07-09', '2020_07-16', 'oui',14),
(5, '2020-08-01', '2020-08-01', '2020-08-07', '2020-08-15', 'oui',13),
(6, '2020-06-01', '2020-06-03', '2020-06-12', '2020-06-19','oui', 9),
(7, '2016-08-01','2016-08-01', '2016-08-15', '2016-08-18','oui', 9),
(8, '2020-11-05', NULL, '2020-11-08', '2020-11-14','non',1),
(9, '2019-08-02', '2019-08-02','2019-08-06', '2019-08-11', 'oui', 6),
(10, '2018-05-01', '2018-05-01', '2018-05-05', '2018-05-10','oui', 12),
(11, '2018-03-01', '2018-03-01', '2018-03-07', '2018-03-18','oui', 15),
(12, '2020-10-01', '2020-10-05', '2020-10-13', '2020-10-20','oui', 8),
(13, '2020-08-12', '2020-08-14', '2020-08-19','2020-08-27','oui', 6),
(14, '2015-08-01', '2015-08-01', '2015-08-06', '2015-08-12','oui', 6),
(15, '2017-06-01', '2017-06-01', '2017-06-08', '2017-06-16','oui', 19),
(16, '2020-01-03', '2020-01-05', '2020-01-10', '2020-01-15','oui', 17),
(17, '2012-08-01', '2012-08-01', '2012-08-08', '2012-08-18','oui', 15),
(18, '2020-11-01', NULL,NULL,NULL,'non',3),
(19, '2013-09-01', '2013-09-04', '2013-09-13', '2013-09-19','oui', 2),
(20, '2020-05-20', '2020-05-23', '2020-05-28', '2020-06-03','oui', 2),
(21, '2018-09-01', '2018-09-01','2018-09-10', '2018-09-15', 'oui',8),
(22, '2020-11-01', NULL, NULL, NULL,'non',6),
(23, '2019-08-01', '2019-08-03', '2019-08-10', '2019-08-17', 'oui',12),
(24, '2020-07-01', '2020-07-01', '2020_07-09', '2020_07-16', 'oui',6),
(25, '2020-08-01', '2020-08-01', '2020-08-07', '2020-08-15', 'oui',14),
(26, '2020-06-01', '2020-06-03', '2020-06-12', '2020-06-19','oui',10),
(27, '2016-08-01','2016-08-01', '2016-08-15', '2016-08-18','oui',10),
(28, '2020-11-05', NULL, '2020-11-08', '2020-11-14','non',7),
(29, '2019-08-02', '2019-08-02','2019-08-06', '2019-08-11', 'oui', 5),
(30, '2018-05-01', '2018-05-01', '2018-05-05', '2018-05-10','oui', 16),
(31, '2018-03-01', '2018-03-01', '2018-03-07', '2018-03-18','oui', 1),
(32, '2020-10-01', '2020-10-05', '2020-10-13', '2020-10-20','oui', 1),
(33, '2020-08-12', '2020-08-14', '2020-08-19','2020-08-27','oui', 3),
(34, '2015-08-01', '2015-08-01', '2015-08-06', '2015-08-12','oui', 3),
(35, '2017-06-01', '2017-06-01', '2017-06-08', '2017-06-16','oui', 20),
(36, '2020-01-03', '2020-01-05', '2020-01-10', '2020-01-15','oui', 20),
(37, '2012-08-01', '2012-08-01', '2012-08-08', '2012-08-18','oui', 1),
(38, '2020-11-01', NULL,NULL,NULL,'non',6),
(39, '2013-09-01', '2013-09-04', '2013-09-13', '2013-09-19','oui', 3),
(40, '2020-05-20', '2020-05-23', '2020-05-28', '2020-06-03','oui', 3),
(41, '2018-09-01', '2018-09-01','2018-09-10', '2018-09-15', 'oui',19),
(42, '2020-11-01', NULL, NULL, NULL,'non',2),
(43, '2019-08-01', '2019-08-03', '2019-08-10', '2019-08-17', 'oui',11),
(44, '2020-07-01', '2020-07-01', '2020_07-09', '2020_07-16', 'oui',11),
(45, '2020-08-01', '2020-08-01', '2020-08-07', '2020-08-15', 'oui',1),
(46, '2020-06-01', '2020-06-03', '2020-06-12', '2020-06-19','oui',8),
(47, '2016-08-01','2016-08-01', '2016-08-15', '2016-08-18','oui', 6),
(48, '2020-11-05', NULL, '2020-11-08', '2020-11-14','non',6),
(49, '2019-08-02', '2019-08-02','2019-08-06', '2019-08-11', 'oui', 9),
(50, '2018-05-01', '2018-05-01', '2018-05-05', '2018-05-10','oui',9),
(51, '2018-03-01', '2018-03-01', '2018-03-07', '2018-03-18','oui', 17),
(52, '2020-10-01', '2020-10-05', '2020-10-13', '2020-10-20','oui', 4),
(53, '2020-08-12', '2020-08-14', '2020-08-19','2020-08-27','oui', 20),
(54, '2015-08-01', '2015-08-01', '2015-08-06', '2015-08-12','oui',20),
(55, '2017-06-01', '2017-06-01', '2017-06-08', '2017-06-16','oui', 1),
(56, '2020-01-03', '2020-01-05', '2020-01-10', '2020-01-15','oui', 2),
(57, '2012-08-01', '2012-08-01', '2012-08-08', '2012-08-18','oui', 3),
(58, '2020-11-01', NULL,NULL,NULL,'non',2),
(59, '2013-09-01', '2013-09-04', '2013-09-13', '2013-09-19','oui', 16),
(60, '2020-05-20', '2020-05-23', '2020-05-28', '2020-06-03','oui', 16),
(61, '2018-09-01', '2018-09-01','2018-09-10', '2018-09-15', 'oui',7),
(62, '2020-11-01', NULL, NULL, NULL,'non',11),
(63, '2019-08-01', '2019-08-03', '2019-08-10', '2019-08-17', 'oui',7),
(64, '2020-07-01', '2020-07-01', '2020_07-09', '2020_07-16', 'oui',8),
(65, '2020-08-01', '2020-08-01', '2020-08-07', '2020-08-15', 'oui',9),
(66, '2020-06-01', '2020-06-03', '2020-06-12', '2020-06-19','oui', 10),
(67, '2016-08-01','2016-08-01', '2016-08-15', '2016-08-18','oui', 10),
(68, '2020-11-05', NULL, '2020-11-08', '2020-11-14','non',18),
(69, '2019-08-02', '2019-08-02','2019-08-06', '2019-08-11', 'oui', 2),
(70, '2018-05-01', '2018-05-01', '2018-05-05', '2018-05-10','oui', 14),
(71, '2018-03-01', '2018-03-01', '2018-03-07', '2018-03-18','oui', 14),
(72, '2020-10-01', '2020-10-05', '2020-10-13', '2020-10-20','oui', 4),
(73, '2020-08-12', '2020-08-14', '2020-08-19','2020-08-27','oui', 18),
(74, '2015-08-01', '2015-08-01', '2015-08-06', '2015-08-12','oui', 20),
(75, '2017-06-01', '2017-06-01', '2017-06-08', '2017-06-16','oui', 6),
(76, '2020-01-03', '2020-01-05', '2020-01-10', '2020-01-15','oui', 6),
(77, '2012-08-01', '2012-08-01', '2012-08-08', '2012-08-18','oui', 4),
(78, '2020-11-01', NULL,NULL,NULL,'non',11),
(79, '2013-09-01', '2013-09-04', '2013-09-13', '2013-09-19','oui', 7),
(80, '2020-05-20', '2020-05-23', '2020-05-28', '2020-06-03','oui', 7),
(81, '2018-09-01', '2018-09-01','2018-09-10' ,'2018-09-15', 'oui',3),
(82, '2020-11-01', NULL, NULL, NULL,'non',4),
(83, '2019-08-01', '2019-08-03', '2019-08-10', '2019-08-17', 'oui',1),
(84, '2020-07-01', '2020-07-01', '2020_07-09', '2020_07-16', 'oui',19),
(85, '2020-08-01', '2020-08-01', '2020-08-07', '2020-08-15', 'oui',16),
(86, '2020-06-01', '2020-06-03', '2020-06-12', '2020-06-19','oui', 8),
(87, '2016-08-01','2016-08-01', '2016-08-15', '2016-08-18','oui',8),
(88, '2020-11-05', NULL, '2020-11-08', '2020-11-14','non',6),
(89, '2019-08-02', '2019-08-02','2019-08-06', '2019-08-11', 'oui', 5),
(90, '2018-05-01', '2018-05-01', '2018-05-05', '2018-05-10','oui',5),
(91, '2018-03-01', '2018-03-01', '2018-03-07', '2018-03-18','oui',5),
(92, '2020-10-01', '2020-10-05', '2020-10-13', '2020-10-20','oui',10),
(93, '2020-08-12', '2020-08-14', '2020-08-19','2020-08-27','oui',11),
(94, '2015-08-01', '2015-08-01', '2015-08-06', '2015-08-12','oui',11),
(95, '2017-06-01', '2017-06-01', '2017-06-08', '2017-06-16','oui',20),
(96, '2020-01-03', '2020-01-05', '2020-01-10', '2020-01-15','oui', 4),
(97, '2012-08-01', '2012-08-01', '2012-08-08', '2012-08-18','oui',3),
(98, '2020-11-01', NULL,NULL,NULL,'non',4),
(99, '2013-09-01', '2013-09-04', '2013-09-13', '2013-09-19','oui', 12),
(100, '2020-05-20', '2020-05-23', '2020-05-28', '2020-06-03','oui', 12);



--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`ord_cus_id`) REFERENCES `customers` (`cus_id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`ord_cus_id`) REFERENCES `customers` (`cus_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
