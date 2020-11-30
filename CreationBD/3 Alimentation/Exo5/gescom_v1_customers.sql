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
-- Structure de la table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `cus_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cus_lastname` varchar(50) NOT NULL,
  `cus_firstname` varchar(50) NOT NULL,
  `cus_address` varchar(150) NOT NULL,
  `cus_zipcode` varchar(5) NOT NULL,
  `cus_city` varchar(50) NOT NULL,
  `cus_countries_id` char(2) NOT NULL,
  `cus_mail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cus_phone` int(10) UNSIGNED NOT NULL,
  `cus_password` varchar(60) NOT NULL,
  `cus_add_date` datetime NOT NULL,
  `cus_update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`cus_id`),
  KEY `ibfk_customers_countries` (`cus_countries_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `customers`
--

INSERT INTO `customers` (`cus_id`, `cus_lastname`, `cus_firstname`, `cus_address`, `cus_zipcode`, `cus_city`,`cus_countries_id`, `cus_mail`,`cus_phone`,`cus_password`,`cus_add_date`,`cus_update_date`) VALUES
(1,'ford','herve','15 rue du petit saint jean','76566','rennes','FR','client1@gmail.com',0698567843,'kgkb','2018-08-21 00:00:00',NULL),
(2,'renaud','fode','11 rue du parc vert','65799','manchester','GB','client2@gmail.gb',0687564534,'kjkhhou','2019-08-21 00:00:00',NULL),
(3,'renaiard','jean','19 rue du lac jaune','54322','venise','IT','client3@gmail.it',0654748594,'ljhu','2018-09-22 00:00:00',NULL),
(4,'germain','tintin','5 rue du rond point','56899','lyon','FR','client4@gmail.fr',0609786543,'kgugig','2018-06-21 00:00:00',NULL),
(5,'gerter','nicolas','12 rue du petit bonhomme','56777','lisbonne','PT','client5@gmail.pt',0609875634,'kgigbk','2017-05-27 00:00:00',NULL),
(6,'trinu','sebastien','10 rue du president kennedy','65899','nantes','FR','client6@gmail.fr',0656897654,'fytytf','2020-08-21 00:00:00','2020-09-26 00:00:00'),
(7,'humport','mickeal','15 rue du général foch','98765','varsovie','PL','client7@gmail.pl',0687563425,'uyfuy','2016-08-28 00:00:00',NULL),
(8,'fotron','john','15 rue du parc rond','34555','montpellier','FR','client8@gmail.fr',0654090865,'lhuh','2019-03-21 00:00:00',NULL),
(9,'distin','fantin','4 rue du praie bleu','56000','tunis','TN','client9@gmail.tn',0609876543,'kggggk','2020-04-21 00:00:00',NULL),
(10,'ropoin','nonou','14 boulevard magatin','54234','istanboul','TR','client10@gmail.tr',0687564323,'lhugiyg','2018-02-11 00:00:00',NULL),
(11,'rutru','yang','15 rue du roi paul','98000','nimes','FR','client11@gmail.fr',0766655494,'ihohougiyg','2018-08-21 00:00:00',NULL),
(12,'ripourier','ying','5 rue alexandre rigot','97777','nices','FR','client12@gmail.fr',0659877604,'lhugigiy','2018-07-21 00:00:00',NULL),
(13,'verce','alberto','4 route jules barni','59000','lille','FR','client13@gmail.fr',0698644694,'hfutfutfutf','2018-01-29 00:00:00',NULL),
(14,'foiton','fabrice','14 rue de la marquise','34566','londres','GB','client14@gmail.gb',0654778704,'lhhuggy','2018-06-21 00:00:00','2019-08-21 00:00:00'),
(15,'roubin','nodin','15 rue du blé','23455','lorient','FR','client15@gmail.fr',0786767994,'jkgggg','2020-02-21 00:00:00',NULL),
(16,'zitouni','chris','5 rue du renard','75000','paris','FR','client16@gmail.fr',0698979009,'ugiyfutd','2019-08-11 00:00:00',NULL),
(17,'furien','barack','1 rue du lapin','87888','tours','FR','client17@gmail.fr',0789654323,'gyfrytk','2020-08-21 00:00:00',NULL),
(18,'rouportier','mohamed','6 rue du foie violet','56665','tokyo','JP','client18@gmail.jp',0698768594,'gyrythl','2018-05-21 00:00:00','2019-08-21 00:00:00'),
(19,'zuvier','mamadou','767 rue du faubourg de gingin','78888','toulouse','FR','client19@gmail.fr',0663945894,'hfxxjhkh','2017-03-29 00:00:00',NULL),
(20,'fertilo','claude','67 rue du parc en pleine air','54555','rome','IT','client20@gmail.it',0654748594,'yuyfyduyg','2020-08-04 00:00:00',NULL);


-- -----------------------------------------------------------------------------------------
--
-- Contraintes pour la table `customers`
--

ALTER TABLE `customers`
  ADD CONSTRAINT `ibfk_customers_countries` FOREIGN KEY (`cus_countries_id`) REFERENCES `countries` (`cou_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
