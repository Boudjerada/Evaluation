-- phpMyAdmin SQL Dump
-- version  5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3308
-- Généré le :  sam. 21 novembre 2020 à 12h11
-- Version du serveur :  8.0.21
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `Village_Green`
--
drop database if exists gescomperso;

create database gescomperso;

use gescomperso;



--
-- Structure de la table `countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `cou_id` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cou_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Primary KEY (`cou_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `cat_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(50) NOT NULL,
  `cat_parent_id` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`cat_id`),
  FOREIGN KEY (`cat_parent_id`) REFERENCES `categorie` (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



--
-- Structure de la table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `pos_id` int(10)  NOT NULL AUTO_INCREMENT,
  `pos_libelle` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`pos_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- Structure de la table `dept`
--

DROP TABLE IF EXISTS `dept`;
CREATE TABLE IF NOT EXISTS `dept` (
  `dep_id` tinyint(3)  NOT NULL AUTO_INCREMENT,
  `dep_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`dep_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



--
-- Structure de la table `shops`
--

DROP TABLE IF EXISTS `shops`;
CREATE TABLE IF NOT EXISTS `shops` (
  `sho_id` tinyint(3)  NOT NULL AUTO_INCREMENT,
  `sho_name` varchar(26) NOT NULL,
  `sho_address` varchar(100) NOT NULL,
  `sho_zipcode` varchar(5) NOT NULL,
  `sho_city` varchar(26) NOT NULL,
  PRIMARY KEY (`sho_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



--
-- Structure de la table `employe`
--

DROP TABLE IF EXISTS `employe`;
CREATE TABLE IF NOT EXISTS `employe` (
  `emp_id` int(10) NOT NULL AUTO_INCREMENT,
  `emp_superior_id`  int(10) DEFAULT NULL,
  `emp_pos_id` int(10)  NOT NULL,
  `emp_lastname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `emp_firstname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `emp_address` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `emp_zipcode` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `emp_city` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `emp_mail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `emp_phone` varchar(10) NOT NULL,
  `emp_salary` decimal(8,2) UNSIGNED DEFAULT NULL,
  `emp_enter_date` date NOT NULL,
  `emp_gender` char(1) NOT NULL,
  `emp_children` tinyint(2) NOT NULL,
  `emp_sho_id` tinyint(3) NOT NULL,
  `emp_dep_id` tinyint(3) NOT NULL,
  PRIMARY KEY (`emp_id`),
  FOREIGN KEY (`emp_superior_id`) REFERENCES `employe` (`emp_id`),
  FOREIGN KEY (`emp_pos_id`) REFERENCES  `posts` (`pos_id`),
  FOREIGN KEY (`emp_sho_id`) REFERENCES `shops` (`sho_id`),
  FOREIGN KEY (`emp_dep_id`) REFERENCES `dept` (`dep_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;


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
  `cus_phone` varchar(10) NOT NULL,
  `cus_password` varchar(60) NOT NULL,
  `cus_add_date` datetime NOT NULL,
  `cus_update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`cus_id`),
  FOREIGN KEY  (`cus_countries_id`) REFERENCES  `countries` (`cou_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;


--
-- Structure de la table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `ord_id` int(10)  NOT NULL AUTO_INCREMENT,
  `ord_order_date` date NOT NULL,
  `ord_payment_date` date DEFAULT NULL,
  `ord_status` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ord_cus_id` int(10) UNSIGNED NOT NULL,
  `ord_discount` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`ord_id`),
  Foreign KEY (`ord_cus_id`) REFERENCES  `customers`(`cus_id`) 
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;



--
-- Structure de la table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE IF NOT EXISTS `suppliers` (
  `sup_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sup_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sup_city` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sup_countries_id` char(2) NOT NULL,
  `sup_address` varchar(150) NOT NULL,
  `sup_zipcode` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sup_contact` varchar(100) NOT NULL,
  `sup_phone` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sup_mail` varchar(75) NOT NULL,
  PRIMARY KEY (`sup_id`),
  FOREIGN KEY  (`sup_countries_id`) REFERENCES  `countries` (`cou_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;


--
-- Structure de la table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `pro_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pro_cat_id` int(10) UNSIGNED NOT NULL,
  `pro_price` decimal(7,2) NOT NULL,
  `pro_ref` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pro_ean` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pro_stock` int(5) UNSIGNED NOT NULL,
  `pro_stock_alert` int(5) UNSIGNED NOT NULL,
  `pro_color` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pro_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pro_desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pro_publish` tinyint(1) NOT NULL,
  `pro_sup_id` int(10) UNSIGNED NOT NULL,
  `pro_add_date` datetime NOT NULL,
  `pro_update_date` datetime DEFAULT NULL,
  `pro_picture` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pro_id`),
  FOREIGN KEY (`pro_sup_id`) REFERENCES `suppliers` (`sup_id`),
  FOREIGN KEY (`pro_cat_id`) REFERENCES  `categorie` (`cat_id`) 
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;


--
-- Structure de la table `orders_details`
--

DROP TABLE IF EXISTS `orders_details`;
CREATE TABLE IF NOT EXISTS `orders_details` (
  `ode_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ode_unit_price` decimal(7,2) NOT NULL,
  `ode_quantity` int(5) NOT NULL,
  `ode_ord_id` int(10)  NOT NULL,
  `ode_pro_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`ode_id`),
  FOREIGN KEY (`ode_ord_id`) REFERENCES `orders` (`ord_id`) ,
  FOREIGN KEY (`ode_pro_id`) REFERENCES `products` (`pro_id`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



--
-- Structure de la table `ship`
--

DROP TABLE IF EXISTS `ship`;
CREATE TABLE IF NOT EXISTS `ship` (
  `shi_id` int(10)  NOT NULL AUTO_INCREMENT,
  `shi_ship_date` date NOT NULL,
  `shi_reception_date` date DEFAULT NULL,
  `shi_ord_id` int(10) UNIQUE NOT NULL,
  PRIMARY KEY (`shi_id`),
  FOREIGN KEY (`shi_ord_id`) REFERENCES `orders` (`ord_id`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




   
   




