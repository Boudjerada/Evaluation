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
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(50) NOT NULL,
  `cat_parent_id` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `cat_parent_id` (`cat_parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_name`, `cat_parent_id`) VALUES
(1, 'Outillage', NULL),
(2, 'Outillage manuel', 1),
(3, 'Outillage mécanique', 2),
(4, 'Plants et semis', NULL),
(5, 'Arbres et arbustes', NULL),
(6, 'Pots et accessoires', NULL),
(7, 'Mobilier de jardin', NULL),
(8, 'Matériaux', NULL),
(9, 'Tondeuses éléctriques', 3),
(10, 'Tondeuses à moteur thermique', 3),
(11, 'Débroussailleuses', 3),
(12, 'Sécateurs', 2),
(13, 'Brouettes', 2),
(14, 'Tomates', 4),
(15, 'Poireaux', 4),
(16, 'Salade', 4),
(17, 'Haricots', 4),
(18, 'Thuyas', 5),
(19, 'Oliviers', 5),
(20, 'Pommiers', 5),
(21, 'Pots de fleurs', 6),
(22, 'Soucoupes', 6),
(23, 'Supports', 6),
(24, 'Transats', 7),
(25, 'Parasols', 7),
(26, 'Tonnelles', 7),
(27, 'Barbecues', 7),
(28, 'Lames de terrasse', 8),
(29, 'Grillages', 8),
(30, 'Panneaux de clôture', 8);


--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`cat_parent_id`) REFERENCES `categories` (`cat_id`);
COMMIT;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
