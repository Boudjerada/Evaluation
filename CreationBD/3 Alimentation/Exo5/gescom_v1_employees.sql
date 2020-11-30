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
-- Structure de la table `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE IF NOT EXISTS `employees` (
  `emp_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `emp_superior_id` int(10) UNSIGNED DEFAULT NULL,
  `emp_pos_id` int(10) UNSIGNED NOT NULL,
  `emp_lastname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `emp_firstname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `emp_address` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `emp_zipcode` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `emp_city` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `emp_mail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `emp_phone` int(10) UNSIGNED NOT NULL,
  `emp_salary` int(10) UNSIGNED DEFAULT NULL,
  `emp_enter_date` date NOT NULL,
  `emp_gender` char(1) NOT NULL,
  `emp_children` tinyint(2) NOT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `emp_superior_id` (`emp_superior_id`),
  KEY `emp_pos_id` (`emp_pos_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `employees`
--

INSERT INTO `employees` (`emp_id`, `emp_superior_id`, `emp_pos_id`, `emp_lastname`, `emp_firstname`, `emp_address`, `emp_zipcode`, `emp_city`, `emp_mail`, `emp_phone`, `emp_salary`, `emp_enter_date`, `emp_gender`, `emp_children`) VALUES
(1,NULL,10,'dupont','henry','15 rue du petit saint jean', '80450' ,'camon' ,'dupont.henry@gmail.com' ,0654748594, 3500 , '2018-08-01','M', 2),
(2,1,9,'dupuis','anne','11 rue du parc vert', '80000' ,'amiens' ,'dupuis.anne@hotmail.com' ,0663945894, 2500 , '2018-08-01','F', 3),
(3,1,5,'sylver','cris','19 rue du lac jaune', '81230' ,'rivery' ,'cris23@gmail.com' ,0698768594, 2500 , '2018-08-01','M', 0),
(4,1,5,'crunel','nicolas','5 rue du rond point', '80000' ,'amiens' ,'crunel98@yahoo.fr' ,0789654323, 2500 , '2019-08-01','M', 2),
(5,1,6,'coqueret','aline','12 rue du petit bonhomme', '80080' ,'amiens' ,'aline@gmail.com' ,0698979009, 2000 , '2018-08-01','F',4),
(6,1,7,'dubois','cyril','10 rue du président kennedy', '80450' ,'camon' ,'dubois543@gmail.com' ,0786767994, 1800 , '2019-06-03','M', 1),
(7,1,7,'thuram','nicolas','15 rue du général foch', '82200' ,'allonville' ,'thuram98@gmail.com' ,0654778704,1800 , '2018-08-01','M', 2),
(8,1,2,'cavani','anna','15 rue du parc rond', '80000' ,'amiens' ,'cavani543@gmail.com' ,0698644694, 1750 , '2018-08-01','F', 2),
(9,1,2,'roux','lucie','4 rue du praie bleu', '83000' ,'raineville' ,'roux0909@hotmail.fr' ,0659877604, 1750 , '2018-08-01','F', 2),
(10,1,4,'bravo','fabien','14 boulevard magatin', '80000' ,'amiens' ,'bravo.fabien@outlook.com' ,0766655494, 1600 , '2018-08-01','M', 0),
(11,1,4,'guerin','sylvie','15 rue du roi paul', '83200' ,'querrieu' ,'guerin999@gmail.com' ,0687564323, 1600 , '2019-08-01','F', 5),
(12,1,8,'ciriel','vanessa','5 rue alexandre rigot', '80000' ,'amiens' ,'vanessa.cirel@laposte.net' ,0609876543, 1600 , '2018-08-01','F', 2),
(13,1,11,'canel','sophie','4 route jules barni', '80000' ,'amiens' ,'canel.sophie@gmail.com' ,0654090865, 2000 , '2018-08-01','F', 1),
(14,5,3,'sechat','marc','14 rue de la marquise', '86700' ,'cardonette' ,'sechat.marc@gmail.com' ,0687563425, 1600 , '2018-08-01','M', 2),
(15,5,3,'ripon','sylvin','15 rue du blé', '80000' ,'amiens' ,'dupont.henry@gamil.com' ,0656897654, 1600 , '2018-08-01','M', 3),
(16,5,3,'altro','sebastien','5 rue du renard', '80450' ,'camon' ,'altro@gmail.com' ,0609875634, 1600 , '2018-10-01','M', 2),
(17,5,3,'fourbin','david','1 rue du lapin', '80090' ,'amiens' ,'fourbin.david@yahoo.com' ,0609786543, 1600 , '2019-08-01','M', 2),
(18,5,3,'engter','yoann','6 rue du foie violet', '80000' ,'amiens' ,'yoann9876@gmail.com' ,0654748594, 1600 , '2019-08-01','M', 6),
(19,5,1,'rosental','alfred','767 rue du faubourg de gingin', '80450' ,'petitcamon' ,'alfred985@gmail.com' ,0687564534, 1700 , '2018-08-01','M', 2),
(20,5,1,'dufour','cyril','67 rue du parc en pleine air', '80000' ,'amiens' ,'dufour.cyril@gmail.com' ,0698567843, 1700 , '2018-11-01','M', 0);




--
-- Contraintes pour la table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`emp_superior_id`) REFERENCES `employees` (`emp_id`),
  ADD CONSTRAINT `employees_ibfk_2` FOREIGN KEY (`emp_pos_id`) REFERENCES `posts` (`pos_id`),
  ADD CONSTRAINT `employees_ibfk_3` FOREIGN KEY (`emp_pos_id`) REFERENCES `posts` (`pos_id`);
COMMIT;