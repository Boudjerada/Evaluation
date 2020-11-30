-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3308
-- Généré le :  jeu. 20 août 2020 à 14:46
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
-- Base de données :  `gescomeval`
--

drop database if exists `gescomeval`;

create database `gescomeval`;

use `gescomeval`;
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
(2, 'Outillage manuel', NULL),
(3, 'Outillage mécanique', NULL),
(4, 'Plants et semis', NULL),
(5, 'Arbres et arbustes', NULL),
(6, 'Pots et accessoires', NULL),
(7, 'Mobilier de jardin', NULL),
(8, 'Matériaux', NULL),
(9, 'Tondeuses électriques', 3),
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

-- --------------------------------------------------------

--
-- Structure de la table `countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `cou_id` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cou_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  UNIQUE KEY `alpha2` (`cou_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `countries`
--

INSERT INTO `countries` (`cou_id`, `cou_name`) VALUES
('AD', 'Andorre'),
('AE', 'Émirats Arabes Unis'),
('AF', 'Afghanistan'),
('AG', 'Antigua-et-Barbuda'),
('AI', 'Anguilla'),
('AL', 'Albanie'),
('AM', 'Arménie'),
('AN', 'Antilles Néerlandaises'),
('AO', 'Angola'),
('AQ', 'Antarctique'),
('AR', 'Argentine'),
('AS', 'Samoa Américaines'),
('AT', 'Autriche'),
('AU', 'Australie'),
('AW', 'Aruba'),
('AX', 'Îles Åland'),
('AZ', 'Azerbaïdjan'),
('BA', 'Bosnie-Herzégovine'),
('BB', 'Barbade'),
('BD', 'Bangladesh'),
('BE', 'Belgique'),
('BF', 'Burkina Faso'),
('BG', 'Bulgarie'),
('BH', 'Bahreïn'),
('BI', 'Burundi'),
('BJ', 'Bénin'),
('BM', 'Bermudes'),
('BN', 'Brunéi Darussalam'),
('BO', 'Bolivie'),
('BR', 'Brésil'),
('BS', 'Bahamas'),
('BT', 'Bhoutan'),
('BV', 'Île Bouvet'),
('BW', 'Botswana'),
('BY', 'Bélarus'),
('BZ', 'Belize'),
('CA', 'Canada'),
('CC', 'Îles Cocos (Keeling)'),
('CD', 'République Démocratique du Congo'),
('CF', 'République Centrafricaine'),
('CG', 'République du Congo'),
('CH', 'Suisse'),
('CI', 'Côte d\'Ivoire'),
('CK', 'Îles Cook'),
('CL', 'Chili'),
('CM', 'Cameroun'),
('CN', 'Chine'),
('CO', 'Colombie'),
('CR', 'Costa Rica'),
('CS', 'Serbie-et-Monténégro'),
('CU', 'Cuba'),
('CV', 'Cap-vert'),
('CX', 'Île Christmas'),
('CY', 'Chypre'),
('CZ', 'République Tchèque'),
('DE', 'Allemagne'),
('DJ', 'Djibouti'),
('DK', 'Danemark'),
('DM', 'Dominique'),
('DO', 'République Dominicaine'),
('DZ', 'Algérie'),
('EC', 'Équateur'),
('EE', 'Estonie'),
('EG', 'Égypte'),
('EH', 'Sahara Occidental'),
('ER', 'Érythrée'),
('ES', 'Espagne'),
('ET', 'Éthiopie'),
('FI', 'Finlande'),
('FJ', 'Fidji'),
('FK', 'Îles (malvinas) Falkland'),
('FM', 'États Fédérés de Micronésie'),
('FO', 'Îles Féroé'),
('FR', 'France'),
('GA', 'Gabon'),
('GB', 'Royaume-Uni'),
('GD', 'Grenade'),
('GE', 'Géorgie'),
('GF', 'Guyane Française'),
('GH', 'Ghana'),
('GI', 'Gibraltar'),
('GL', 'Groenland'),
('GM', 'Gambie'),
('GN', 'Guinée'),
('GP', 'Guadeloupe'),
('GQ', 'Guinée Équatoriale'),
('GR', 'Grèce'),
('GS', 'Géorgie du Sud et les Îles Sandwich du Sud'),
('GT', 'Guatemala'),
('GU', 'Guam'),
('GW', 'Guinée-Bissau'),
('GY', 'Guyana'),
('HK', 'Hong-Kong'),
('HM', 'Îles Heard et Mcdonald'),
('HN', 'Honduras'),
('HR', 'Croatie'),
('HT', 'Haïti'),
('HU', 'Hongrie'),
('ID', 'Indonésie'),
('IE', 'Irlande'),
('IL', 'Israël'),
('IM', 'Île de Man'),
('IN', 'Inde'),
('IO', 'Territoire Britannique de l\'Océan Indien'),
('IQ', 'Iraq'),
('IR', 'République Islamique d\'Iran'),
('IS', 'Islande'),
('IT', 'Italie'),
('JM', 'Jamaïque'),
('JO', 'Jordanie'),
('JP', 'Japon'),
('KE', 'Kenya'),
('KG', 'Kirghizistan'),
('KH', 'Cambodge'),
('KI', 'Kiribati'),
('KM', 'Comores'),
('KN', 'Saint-Kitts-et-Nevis'),
('KP', 'République Populaire Démocratique de Corée'),
('KR', 'République de Corée'),
('KW', 'Koweït'),
('KY', 'Îles Caïmanes'),
('KZ', 'Kazakhstan'),
('LA', 'République Démocratique Populaire Lao'),
('LB', 'Liban'),
('LC', 'Sainte-Lucie'),
('LI', 'Liechtenstein'),
('LK', 'Sri Lanka'),
('LR', 'Libéria'),
('LS', 'Lesotho'),
('LT', 'Lituanie'),
('LU', 'Luxembourg'),
('LV', 'Lettonie'),
('LY', 'Jamahiriya Arabe Libyenne'),
('MA', 'Maroc'),
('MC', 'Monaco'),
('MD', 'République de Moldova'),
('MG', 'Madagascar'),
('MH', 'Îles Marshall'),
('MK', 'L\'ex-République Yougoslave de Macédoine'),
('ML', 'Mali'),
('MM', 'Myanmar'),
('MN', 'Mongolie'),
('MO', 'Macao'),
('MP', 'Îles Mariannes du Nord'),
('MQ', 'Martinique'),
('MR', 'Mauritanie'),
('MS', 'Montserrat'),
('MT', 'Malte'),
('MU', 'Maurice'),
('MV', 'Maldives'),
('MW', 'Malawi'),
('MX', 'Mexique'),
('MY', 'Malaisie'),
('MZ', 'Mozambique'),
('NA', 'Namibie'),
('NC', 'Nouvelle-Calédonie'),
('NE', 'Niger'),
('NF', 'Île Norfolk'),
('NG', 'Nigéria'),
('NI', 'Nicaragua'),
('NL', 'Pays-Bas'),
('NO', 'Norvège'),
('NP', 'Népal'),
('NR', 'Nauru'),
('NU', 'Niué'),
('NZ', 'Nouvelle-Zélande'),
('OM', 'Oman'),
('PA', 'Panama'),
('PE', 'Pérou'),
('PF', 'Polynésie Française'),
('PG', 'Papouasie-Nouvelle-Guinée'),
('PH', 'Philippines'),
('PK', 'Pakistan'),
('PL', 'Pologne'),
('PM', 'Saint-Pierre-et-Miquelon'),
('PN', 'Pitcairn'),
('PR', 'Porto Rico'),
('PS', 'Territoire Palestinien Occupé'),
('PT', 'Portugal'),
('PW', 'Palaos'),
('PY', 'Paraguay'),
('QA', 'Qatar'),
('RE', 'Réunion'),
('RO', 'Roumanie'),
('RU', 'Fédération de Russie'),
('RW', 'Rwanda'),
('SA', 'Arabie Saoudite'),
('SB', 'Îles Salomon'),
('SC', 'Seychelles'),
('SD', 'Soudan'),
('SE', 'Suède'),
('SG', 'Singapour'),
('SH', 'Sainte-Hélène'),
('SI', 'Slovénie'),
('SJ', 'Svalbard etÎle Jan Mayen'),
('SK', 'Slovaquie'),
('SL', 'Sierra Leone'),
('SM', 'Saint-Marin'),
('SN', 'Sénégal'),
('SO', 'Somalie'),
('SR', 'Suriname'),
('ST', 'Sao Tomé-et-Principe'),
('SV', 'El Salvador'),
('SY', 'République Arabe Syrienne'),
('SZ', 'Swaziland'),
('TC', 'Îles Turks et Caïques'),
('TD', 'Tchad'),
('TF', 'Terres Australes Françaises'),
('TG', 'Togo'),
('TH', 'Thaïlande'),
('TJ', 'Tadjikistan'),
('TK', 'Tokelau'),
('TL', 'Timor-Leste'),
('TM', 'Turkménistan'),
('TN', 'Tunisie'),
('TO', 'Tonga'),
('TR', 'Turquie'),
('TT', 'Trinité-et-Tobago'),
('TV', 'Tuvalu'),
('TW', 'Taïwan'),
('TZ', 'République-Unie de Tanzanie'),
('UA', 'Ukraine'),
('UG', 'Ouganda'),
('UM', 'Îles Mineures Éloignées des États-Unis'),
('US', 'États-Unis'),
('UY', 'Uruguay'),
('UZ', 'Ouzbékistan'),
('VA', 'Saint-Siège (état de la Cité du Vatican)'),
('VC', 'Saint-Vincent-et-les Grenadines'),
('VE', 'Venezuela'),
('VG', 'Îles Vierges Britanniques'),
('VI', 'Îles Vierges des États-Unis'),
('VN', 'Viet Nam'),
('VU', 'Vanuatu'),
('WF', 'Wallis et Futuna'),
('WS', 'Samoa'),
('YE', 'Yémen'),
('YT', 'Mayotte'),
('ZA', 'Afrique du Sud'),
('ZM', 'Zambie'),
('ZW', 'Zimbabwe');

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
  `cus_phone` varchar(10) NOT NULL,
  `cus_password` varchar(60) NOT NULL,
  `cus_add_date` datetime NOT NULL,
  `cus_update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`cus_id`),
  KEY `ibfk_customers_countries` (`cus_countries_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `customers`
--

INSERT INTO `customers` (`cus_id`, `cus_lastname`, `cus_firstname`, `cus_address`, `cus_zipcode`, `cus_city`, `cus_countries_id`, `cus_mail`, `cus_phone`, `cus_password`, `cus_add_date`, `cus_update_date`) VALUES
(1, 'Riviere', 'Romain', '2301 boulevard Alsace-Lorraine', '80000', 'Amiens', 'FR', 'risus.morbi@laposte.net', '201583083', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2017-01-02 23:47:20', '2020-05-06 00:01:53'),
(2, 'Bailly', 'Lilou', 'Ap #125-483 Fusce Street', '80300', 'Birmingham', 'GB', 'sagittis.placerat@Aliquam.co.uk', '700966695', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2002-12-14 06:52:52', '2020-05-18 00:00:00'),
(3, 'Muller', 'Alexandre', 'P.O. Box 149, 6931 Nulla. Rd.', '80100', 'Abbeville', 'FR', 'mauris.Morbi@Lorem.co.uk', '167413271', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2015-08-19 01:35:44', NULL),
(4, 'Lefebvre', 'Élisa', 'Ap #850-6013 Suscipit, Av.', '62000', 'Arras', 'FR', 'laplusbelledu62g@gmail.com', '710601863', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2016-01-11 02:58:51', NULL),
(5, 'Andre', 'Maëlle', 'Ap #449-9035 Ac Street', '59133', 'Vieux-Genappe', 'FR', 'aliquam.adipiscing@fringilla.net', '296292567', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2018-03-24 17:09:33', NULL),
(6, 'Lemaire', 'Enzo', 'P.O. Box 771, 895 Libero Avenue', '31779', 'Sevastopol', 'FR', 'interdum.feugiat@a.edu', '395027964', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2017-08-16 15:18:39', NULL),
(7, 'Perez', 'Bienvenue', 'Ap #382-9259 Tincidunt, Rd.', '49960', 'Maastricht', 'FR', 'tempus.mauris@nonloremvitae.net', '735753221', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2006-02-19 12:25:51', NULL),
(8, 'Dumont', 'Emma', '299-2527 Blandit Road', '13011', 'Paternopoli', 'FR', 'tristique.ac@Sedmalesuadaaugue.com', '373682901', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2003-07-17 08:28:22', NULL),
(9, 'Riviere', 'Alice', 'P.O. Box 743, 4502 Dictum St.', '64066', 'Campbelltown', 'FR', 'fringilla.ornare.placerat@odioEtiam.edu', '962347562', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2018-06-26 23:05:17', NULL),
(10, 'Boucher', 'Noë', '865-7652 Nibh. Ave', '75197', 'Fermont', 'CA', 'facilisi.Sed.neque@eteuismodet.ca', '527427380', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2012-01-24 12:00:27', NULL),
(11, 'Masson', 'Aaron', '680-7022 Sollicitudin Avenue', '68058', 'Renfrew', 'FR', 'felis.Nulla@ligulaAeneangravida.net', '325055764', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2001-06-02 00:22:39', NULL),
(12, 'Nazdorovie', 'Sergueï', '592 Moskow road', '51769', 'Vladivostok', 'RU', 'serguei@nazdorovie.ru', '925855798', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2018-06-17 01:02:23', '2020-05-23 00:00:00'),
(13, 'Lemoine', 'Yasmine', '9317 Sodales Ave', '06190', 'Huntsville', 'FR', 'dolor.sit.amet@Seddiam.net', '857714507', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2016-08-29 21:44:14', NULL),
(14, 'Lopez', 'Marion', '292 Ligula. Road', '47589', 'Kota', 'FR', 'molestie.in@accumsannequeet.edu', '698455911', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2000-01-09 19:02:05', NULL),
(15, 'Blanchard', 'Émilie', 'Ap #923-6845 Commodo Street', '90846', 'Rodgau', 'FR', 'consectetuer.adipiscing@risusDuisa.co.uk', '471496791', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2018-06-24 12:06:59', NULL),
(16, 'Philippe', 'Léonard', '7315 Proin Street', '70095', 'Matamata', 'FR', 'sodales.elit.erat@Vivamusnibhdolor.org', '107172928', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2017-03-26 13:44:18', NULL),
(17, 'Girard', 'Kimberley', 'P.O. Box 184, 8937 Pretium Street', '30481', 'Kamalia', 'FR', 'Suspendisse.sed.dolor@enimNunc.org', '404189030', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2017-12-11 14:27:22', NULL),
(18, 'Morin', 'Élise', 'Ap #846-6229 Eu, St.', '27844', 'West Valley City', 'FR', 'Integer.vitae@lorem.edu', '254854268', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2000-04-28 23:38:36', NULL),
(19, 'Lefebvre', 'Zoé', '677-3832 Dis St.', '94571', 'Caruaru', 'FR', 'Sed@odioAliquamvulputate.net', '639577658', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2014-05-17 18:12:34', NULL),
(20, 'Renault', 'Lilian', '163 Sed Avenue', '36652', 'La Unión', 'FR', 'erat.semper@est.co.uk', '255166898', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2005-04-11 05:47:10', NULL),
(21, 'Remy', 'Dimitri', 'Ap #801-6517 Eros Avenue', '78009', 'Frigento', 'FR', 'amet.dapibus.id@placerat.ca', '396036245', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2016-12-18 03:53:15', NULL),
(22, 'Guillaume', 'Lena', '1064 Donec St.', '78387', 'Anchorage', 'US', 'varius.orci@fermentum.com', '953782036', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2017-11-15 06:58:24', NULL),
(23, 'Maillard', 'Charlotte', '738 Euismod Avenue', '17914', 'Losino-Petrovsky', 'RU', 'Maecenas.libero@nunc.com', '817015812', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2013-05-09 13:47:48', '2020-05-13 00:00:00'),
(24, 'Albert', 'Diego', 'Ap #332-8162 Proin Road', '83410', 'Trois-Rivières', 'CA', 'aliquam@vestibulum.edu', '255430951', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2013-10-08 11:56:34', NULL),
(25, 'Leclerc', 'Lauriane', 'Ap #661-6175 Turpis St.', '88100', 'Pékin', 'CN', 'non@auctorveliteget.org', '498920916', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2017-05-06 10:22:02', NULL),
(26, 'Poirier', 'Paul', 'Ap #784-932 Quis Rd.', '42399', 'Flushing', 'FR', 'lectus.sit@ligulaAliquamerat.net', '763446742', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2012-05-09 06:32:53', NULL),
(27, 'Hubert', 'Marianne', '8 cours javascript', '80090', 'Amiens', 'FR', 'vitae.purus@curae.org', '206792150', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2017-11-03 04:53:14', '2020-06-01 00:00:00'),
(28, 'Caron', 'Cédric', 'P.O. Box 643, 5476 Mi Rd.', '23735', 'Vanderhoof', 'FR', 'egestas.Duis.ac@eleifend.edu', '266232419', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2003-10-01 22:21:43', NULL),
(29, 'Fournier', 'Célia', 'P.O. Box 301, 1701 Neque. Street', '14711', 'Harrisburg', 'FR', 'ante.Nunc@porta.edu', '692615826', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2016-02-02 09:30:12', NULL),
(30, 'Hubert', 'Corentin', 'Ap #150-5696 Et, St.', '08762', 'Veldwezelt', 'FR', 'fringilla.euismod.enim@Namligula.ca', '539979021', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2000-10-08 04:53:40', NULL),
(31, 'Dupont', 'Macéo', 'P.O. Box 580, 927 Amet Ave', '32275', 'Karachi', 'FR', 'Sed.auctor.odio@velitPellentesque.net', '758036455', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2002-11-24 08:24:31', NULL),
(32, 'Fabre', 'Maelys', 'P.O. Box 347, 5390 Sit St.', '04549', 'Francavilla Fontana', 'FR', 'Duis.cursus@Pellentesquehabitantmorbi.ca', '253671958', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2018-09-26 18:10:38', NULL),
(33, 'Henry', 'Florentin', '4750 Molestie Rd.', '91323', 'Heusden-Zolder', 'FR', 'a.sollicitudin@adipiscingfringilla.ca', '726936785', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2007-07-04 00:37:24', NULL),
(34, 'Pons', 'Léonard', '6857 Scelerisque Ave', '52811', 'Antofagasta', 'FR', 'lectus@aliquet.edu', '941616307', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2013-08-10 13:20:15', NULL),
(35, 'Fleury', 'Solene', 'Ap #518-8977 Duis Street', '55043', 'Olmué', 'FR', 'mollis@laciniavitae.net', '808630903', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2000-09-05 16:06:49', NULL),
(36, 'Richard', 'Rémi', 'P.O. Box 480, 2248 Ac Road', '09509', 'Bilbo', 'FR', 'bibendum.sed@semvitaealiquam.ca', '943962068', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2003-11-03 12:40:42', NULL),
(37, 'Blanc', 'Sarah', 'P.O. Box 535, 8956 Ut, Avenue', '61210', 'Joliet', 'FR', 'rutrum@nibh.com', '805575004', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2012-06-27 03:01:40', NULL),
(38, 'Evrard', 'Paul', 'P.O. Box 909, 6072 Nullam St.', '79346', 'Raiganj', 'FR', 'arcu.Vestibulum@elitpellentesquea.org', '401905237', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2000-03-31 09:57:34', NULL),
(39, 'Legrand', 'Romane', 'P.O. Box 567, 3645 Eu Rd.', '41510', 'Vilvoorde', 'FR', 'nunc@faucibus.org', '963165937', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2005-11-21 09:09:09', NULL),
(40, 'Huet', 'Julien', '285-395 Est, Rd.', '22174', 'Eschwege', 'FR', 'amet@eudolor.edu', '240881253', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2005-06-11 22:34:48', NULL),
(41, 'Dubois', 'Lamia', '145-1564 Vestibulum Rd.', '86306', 'Valleyview', 'FR', 'Pellentesque.habitant.morbi@musAenean.ca', '682183873', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2016-06-20 16:12:22', NULL),
(42, 'Carpentier', 'Maïwenn', 'P.O. Box 181, 3727 Sem Road', '77351', 'Farrukhabad-cum-Fatehgarh', 'FR', 'sem.magna@sedorci.org', '715511479', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2017-02-18 17:34:11', NULL),
(43, 'Perez', 'Florentin', '2114 Nisi. St.', '75209', 'Trivandrum', 'FR', 'velit.justo.nec@MaurisnullaInteger.com', '870041920', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2007-03-02 07:07:47', NULL),
(44, 'Dupont', 'Chaïma', 'P.O. Box 576, 4207 Sociis Av.', '78616', 'Romeral', 'FR', 'lorem.ipsum@Praesenteunulla.edu', '399708266', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2004-08-26 02:39:06', NULL),
(45, 'Schneider', 'Alice', '548-7461 Nunc Av.', '18591', 'Marburg', 'FR', 'Aliquam.erat@eget.org', '297079661', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2014-07-05 07:36:55', NULL),
(46, 'Gautier', 'Rose', 'P.O. Box 705, 741 Integer Avenue', '73604', 'Kartaly', 'FR', 'ante@aliquet.com', '932461360', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2004-09-13 08:02:43', NULL),
(47, 'Guillot', 'Loevan', 'Ap #601-2284 Commodo Road', '54873', 'Gonnosfanadiga', 'FR', 'cursus.in@ultriciessem.ca', '314644035', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2020-11-19 14:41:00', NULL),
(48, 'Lefevre', 'Clémence', '476-8880 Suscipit, Rd.', '61563', 'Vöcklabruck', 'FR', 'ut@sollicitudinadipiscing.co.uk', '457752971', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2019-12-09 16:42:16', NULL),
(49, 'Bouvier', 'Clara', 'P.O. Box 282, 9786 Tellus Street', '07517', 'Wilskerke', 'FR', 'Fusce.fermentum.fermentum@adipiscingfringillaporttitor.co.uk', '432914963', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2010-12-21 23:10:13', NULL),
(50, 'Blanchard', 'Adam', 'P.O. Box 259, 7958 Sem, St.', '82728', 'Roosbeek', 'FR', 'elementum@atfringillapurus.edu', '139672737', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2004-08-13 16:41:09', NULL),
(51, 'Pikatchien', 'Jessica', '92 rue de la plage', '22190', 'Plérin', 'FR', 'jessica.pikatchien@plerin.fr', '278564042', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2013-06-22 04:55:34', '2020-05-18 07:26:24'),
(52, 'Bailly', 'Léo', '800-2734 Morbi Av.', '50231', 'Widooie', 'FR', 'ornare.lectus@hendreritDonec.edu', '734831721', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2016-02-01 18:54:35', NULL),
(53, 'Schneider', 'Florentin', 'P.O. Box 468, 4940 Cursus Rd.', '36508', 'Vaux-sur-Sure', 'FR', 'erat.vitae@aliquet.com', '821421997', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2016-03-16 09:28:03', NULL),
(54, 'Caron', 'Martin', '242-9793 Ipsum Road', '51877', 'Tain', 'FR', 'pharetra.sed@Etiambibendumfermentum.edu', '788393239', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2013-07-23 09:59:23', NULL),
(55, 'David', 'Lutécia', '665-963 Donec Road', '44664', 'Westkapelle', 'FR', 'lorem@felispurusac.net', '792783693', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2005-05-25 12:33:45', NULL),
(56, 'Robert', 'Agathe', '6737 Ut, Road', '05249', 'Sandy', 'FR', 'nunc.sed.pede@consectetueradipiscing.com', '634450159', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2007-01-30 21:14:24', NULL),
(57, 'Rodriguez', 'Macéo', 'P.O. Box 355, 2303 Vitae Street', '57821', 'Suncheon', 'FR', 'orci@ametornarelectus.org', '472684476', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2002-01-22 06:07:53', NULL),
(58, 'Humbert', 'Élouan', 'P.O. Box 452, 8712 Purus, Av.', '05252', 'Alix', 'FR', 'quam.dignissim.pharetra@ornare.org', '682265107', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2001-07-24 01:49:50', NULL),
(59, 'Charpentier', 'Lucie', '9957 Morbi Rd.', '24752', 'Aschersleben', 'FR', 'ac.nulla@ante.net', '441099805', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2014-07-15 19:33:57', NULL),
(60, 'Colin', 'Yanis', '804-4641 Nunc. Avenue', '16829', 'Alness', 'FR', 'sit.amet.orci@turpisnec.co.uk', '812254447', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2004-06-19 11:55:02', NULL),
(61, 'Robert', 'Élise', 'Ap #872-7281 Amet Street', '09693', 'Rocky Mountain House', 'FR', 'erat.nonummy.ultricies@sapienAenean.ca', '407007247', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2012-12-08 10:54:13', NULL),
(62, 'Lucas', 'Laura', '976-2480 Turpis Ave', '58690', 'Alanya', 'FR', 'vel.mauris@massarutrummagna.ca', '405524344', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2004-01-11 10:45:30', NULL),
(63, 'Laurent', 'Quentin', '489-9653 Fermentum Rd.', '65691', 'Fort Resolution', 'FR', 'porttitor.interdum@dictum.co.uk', '707373852', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2008-06-08 17:58:44', NULL),
(64, 'Giraud', 'Kimberley', '7411 Ut Rd.', '51814', 'Stroud', 'FR', 'nec@nectempus.com', '103884425', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2004-06-28 21:35:30', NULL),
(65, 'Bailly', 'Julien', 'Ap #182-3848 Nunc St.', '82181', 'Laramie', 'FR', 'Morbi@feugiatLorem.org', '274508650', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2017-05-01 14:27:23', NULL),
(66, 'Chevalier', 'Gaspard', '8464 Blandit Rd.', '03869', 'Glain', 'FR', 'elit.sed.consequat@ultricies.co.uk', '466809005', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2001-04-06 14:32:34', NULL),
(67, 'Francois', 'Tatiana', 'Ap #961-9752 Vestibulum Rd.', '77822', 'Cap-de-la-Madeleine', 'FR', 'dictum.mi.ac@ametconsectetueradipiscing.org', '200147301', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2001-01-26 19:17:52', NULL),
(68, 'Mercier', 'Constant', 'Ap #706-6920 Amet Rd.', '49458', 'Haut-Ittre', 'FR', 'tellus.imperdiet@variusorciin.org', '296096563', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2019-03-14 09:41:04', NULL),
(69, 'Gomez', 'Jérémy', '70 avenue des travailleurs', '80000', 'Amiens', 'FR', 'lacus.Etiam@nibhco.net', '967938363', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2012-12-15 13:46:02', '2020-06-01 00:00:00'),
(70, 'Leroy', 'Benjamin', 'P.O. Box 202, 4157 Et, Avenue', '41799', 'Eckernförde', 'FR', 'non.magna.Nam@ultriciesdignissim.com', '199309302', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2008-04-16 12:28:17', NULL),
(71, 'Rolland', 'Ethan', '907-4675 Pede Rd.', '32055', 'Enterprise', 'FR', 'dolor.Fusce.mi@dignissim.co.uk', '584704040', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2020-11-01 17:46:48', NULL),
(72, 'Meunier', 'Margaux', 'P.O. Box 461, 5531 In Rd.', '39165', 'Glimes', 'FR', 'morbi.tristique.senectus@Phasellusdolor.co.uk', '422001131', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2015-12-16 15:43:52', NULL),
(73, 'Roger', 'Thomas', 'P.O. Box 505, 6494 Vel Avenue', '06743', 'Fino Mornasco', 'FR', 'porttitor.vulputate@egetipsumSuspendisse.edu', '894398702', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2012-12-25 11:33:00', NULL),
(74, 'Renaud', 'Anaël', 'Ap #309-9136 Suspendisse St.', '45464', 'Westmount', 'FR', 'eget@ipsumcursusvestibulum.edu', '299244593', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2006-03-11 14:57:33', NULL),
(75, 'Morin', 'Yüna', '8089 Erat St.', '07900', 'Shenkursk', 'FR', 'Integer@lectuspedeultrices.org', '230162777', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2019-07-28 04:31:18', NULL),
(76, 'Joly', 'Eva', '479-8537 Ipsum Ave', '42231', 'Bhimavaram', 'FR', 'et.nunc.Quisque@odiotristique.com', '917398026', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2019-11-09 23:09:40', NULL),
(77, 'Garnier', 'Anaël', '4703 Fringilla, Street', '66625', 'Kobbegem', 'FR', 'at.arcu@vitaeodio.org', '173395243', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2001-10-20 09:29:18', NULL),
(78, 'Martinez', 'Lina', 'Ap #466-9700 Pede. Avenue', '46174', 'My', 'FR', 'nisi.nibh.lacinia@nunc.com', '497067354', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2006-05-24 09:07:41', NULL),
(79, 'Le gall', 'Nathan', 'P.O. Box 792, 625 Libero Rd.', '40854', 'Ancaster Town', 'FR', 'Sed.nunc@sitamet.ca', '676975310', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2013-09-25 11:13:28', NULL),
(80, 'Martinez', 'Fanny', 'Ap #677-8255 Et Avenue', '14981', 'Rodgau', 'FR', 'tortor@maurissitamet.co.uk', '893683553', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2004-12-11 22:25:30', NULL),
(81, 'Clement', 'Lucas', '694-5524 Sit St.', '92268', 'Branchon', 'FR', 'luctus@vitaeorci.org', '786695746', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2002-04-01 19:01:57', NULL),
(82, 'Marchal', 'Thomas', '200-3480 A Road', '11669', 'Saint-Honor�', 'FR', 'magna.Praesent.interdum@velit.edu', '225003361', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2016-01-15 06:06:53', NULL),
(83, 'Rey', 'Alicia', 'P.O. Box 606, 9603 Lorem Av.', '75377', 'l\'Escaillre', 'FR', 'Mauris.magna@est.co.uk', '413194483', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2007-09-23 11:03:28', NULL),
(84, 'Rey', 'Jeanne', 'P.O. Box 550, 3352 Vitae Avenue', '81795', 'Olmué', 'FR', 'auctor@sem.com', '585086153', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2020-09-11 17:17:01', NULL),
(85, 'Bouvier', 'Léonie', '116-5083 Tortor. Ave', '67639', 'Chieti', 'FR', 'Duis.risus.odio@a.com', '164663188', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2006-11-02 11:42:08', NULL),
(86, 'Paul', 'Marwane', '249-1253 Odio Street', '70886', 'Wimmertingen', 'FR', 'sociis.natoque.penatibus@suscipit.org', '702449373', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2014-02-25 04:13:58', NULL),
(87, 'Collin', 'Macéo', 'Ap #349-3573 Nibh St.', '04443', 'Terrance', 'FR', 'per@pellentesqueSed.ca', '197051563', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2015-05-23 08:50:39', NULL),
(88, 'Maillard', 'Maelys', '6013 Metus Avenue', '88526', 'Huancayo', 'FR', 'magnis@tristiquealiquet.net', '362978211', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2014-09-22 07:22:30', NULL),
(89, 'Maillard', 'Constant', 'Ap #403-2940 Egestas St.', '61695', 'Heidenheim', 'FR', 'parturient.montes.nascetur@luctussitamet.com', '301933055', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2007-03-16 17:11:53', NULL),
(90, 'Daniel', 'Félix', 'Ap #325-2095 Risus, Rd.', '12706', 'Chimay', 'FR', 'Donec.sollicitudin.adipiscing@Morbinon.net', '297199570', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2010-03-13 06:11:54', NULL),
(91, 'Bon', 'Jean', '30 rue de poulainville', '80080', 'Amiens', 'FR', 'adipiscing@gmail.com', '354213413', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2014-04-13 11:14:36', '2020-06-01 00:00:00'),
(92, 'Boulanger', 'Mathis', 'P.O. Box 595, 7563 Id Avenue', '92588', 'Bhatinda', 'FR', 'laoreet.ipsum@id.co.uk', '292792782', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2008-04-26 14:48:02', NULL),
(93, 'Boucher', 'Dorian', 'P.O. Box 795, 7040 Venenatis Ave', '82751', 'Jelenia Góra', 'FR', 'Curabitur@nonummy.com', '199164804', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2019-05-27 07:39:18', NULL),
(94, 'Bouvier', 'Marion', '1071 Molestie Ave', '38203', 'Limburg', 'FR', 'Suspendisse.aliquet@nibh.co.uk', '555750153', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2001-10-17 07:59:06', NULL),
(95, 'Maillard', 'Pauline', '4721 Nonummy Av.', '61225', 'Seilles', 'FR', 'magna.Praesent@pedeCum.edu', '743297591', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2019-08-28 15:49:08', NULL),
(96, 'Renaud', 'Rose', '7837 Hendrerit Rd.', '67206', 'Fremantle', 'FR', 'orci.in@ultriciesornareelit.edu', '817838763', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2014-07-17 14:27:43', NULL),
(97, 'Robert', 'Maelys', 'P.O. Box 393, 5911 Felis, St.', '06642', 'Casper', 'FR', 'malesuada.id.erat@velitCras.com', '643869652', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2003-10-29 11:53:49', NULL),
(98, 'Dupuis', 'Carla', 'Ap #874-1931 Iaculis Road', '69142', 'Virginia Plage', 'FR', 'nisi@neceuismod.ca', '913028975', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2012-05-06 03:59:39', NULL),
(99, 'Meunier', 'Angelina', 'Ap #784-906 Amet, Ave', '46591', 'Melle', 'FR', 'gravida.mauris@rutrumeu.edu', '797466269', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2013-10-20 11:20:59', NULL),
(100, 'Philippe', 'Maïwenn', '2585 In Street', '53983', 'Lumaco', 'FR', 'elit@Crassed.co.uk', '460749886', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2009-09-21 15:57:34', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `departments`
--

DROP TABLE IF EXISTS `departments`;
CREATE TABLE IF NOT EXISTS `departments` (
  `dep_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `dep_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`dep_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `departments`
--

INSERT INTO `departments` (`dep_id`, `dep_name`) VALUES
(1, 'Comptabilité'),
(2, 'Ressources Humaines'),
(3, 'Logistique'),
(4, 'Maintenance'),
(5, 'Marketing'),
(6, 'Distribution'),
(7, 'Achat'),
(8, 'Direction'),
(10, 'Direction des Systèmes d\'Information');

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
  `emp_phone` varchar(10) NOT NULL,
  `emp_salary` decimal(8,2) UNSIGNED DEFAULT NULL,
  `emp_enter_date` date NOT NULL,
  `emp_gender` char(1) NOT NULL,
  `emp_children` tinyint(2) NOT NULL,
  `emp_sho_id` tinyint(3) UNSIGNED NOT NULL,
  `emp_dep_id` tinyint(3) UNSIGNED NOT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `emp_superior_id` (`emp_superior_id`),
  KEY `emp_pos_id` (`emp_pos_id`),
  KEY `emp_shop_id` (`emp_sho_id`),
  KEY `emp_dep_id` (`emp_dep_id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `employees`
--

INSERT INTO `employees` (`emp_id`, `emp_superior_id`, `emp_pos_id`, `emp_lastname`, `emp_firstname`, `emp_address`, `emp_zipcode`, `emp_city`, `emp_mail`, `emp_phone`, `emp_salary`, `emp_enter_date`, `emp_gender`, `emp_children`, `emp_sho_id`, `emp_dep_id`) VALUES
(1, 17, 5, 'MOLETTE', 'Denis', '27 avenue Paul Lepoulpe', '80000', 'Amiens', 'dmolette@blabla.fr', '0102030405', '18473.00', '2020-05-05', 'M', 8, 1, 4),
(2, 3, 2, 'NAGER', 'Emma', '14 rue Tabaga', '80300', 'Albert', 'emmanager@laposte.net', '0102030405', '39576.00', '2015-03-27', 'F', 0, 1, 6),
(3, NULL, 1, 'LEBOSSE', 'Hugo', '28 mail Ludovic Cruchot', '75001', 'Paris', 'leboss@jarditou.com', '0102030405', '350000.78', '2000-01-01', 'M', 2, 1, 8),
(4, 17, 6, 'LAPAGE', 'Edith', '22 rue Stevy Boulay', '60300', 'Senlis', 'lapage60300@yahoo.fr', '0102030405', '18473.00', '2012-12-01', 'F', 1, 1, 6),
(5, 3, 35, 'DRESSAMERE', 'Yvan', '224 avenue Caumartin', '75009', 'Paris', 'yvan75009@outlook.com', '0102030405', '39576.00', '2007-11-04', 'M', 0, 1, 6),
(6, 5, 3, 'MERCE', 'Coco', '56 cours Loana', '02000', 'Laon', 'merce@wazaa.net', '0102030405', '30000.00', '2010-07-31', 'F', 2, 1, 6),
(7, 2, 3, 'AMAR', 'Yann', '4 rue du papillon de lumière', '62000', 'Arras', 'amar@azerty.com', '0102030405', '30000.00', '2008-05-28', 'M', 3, 2, 6),
(8, 14, 13, 'ASAP', 'Liliane', 'Appartement 202-3846 Suspendisse Chemin', 'FA46 ', 'Pekanbaru', 'convallis@Integer.com', '0102030405', '18473.00', '2007-03-20', 'F', 5, 3, 6),
(9, 17, 34, 'LAVISSE', 'Edouard', '131-3667 Arcu. Rd.', '80136', 'Rivery', 'nulla.magna@Proinvel.co.uk', '0102030405', '24000.00', '2016-12-17', 'M', 2, 1, 4),
(10, 17, 14, 'HILLARY', 'Dorian', '6824 Placerat. Route', '12787', 'Parramatta', 'mus@Morbi.co.uk', '0102030405', '20450.00', '2002-03-10', 'M', 2, 2, 6),
(11, 26, 27, 'POUTIN', 'Vladimir', '251-633 Convallis Impasse', '8373 ', 'Colchester', 'facilisis.vitae.orci@indolor.net', '0102030405', '29500.00', '2015-05-03', 'M', 4, 1, 10),
(12, 17, 7, 'DECLAN', 'Richard', 'Appartement 870-7677 Magna Av.', '42980', 'Dornbirn', 'Mauris@amet.ca', '0102030405', '51802.00', '2003-06-25', 'M', 2, 1, 5),
(13, 47, 14, 'ABRAHAM', 'François', '612-4178 Urna Chemin', '87784', 'Llanidloes', 'sodales@malesuadaInteger.com', '0102030405', '20450.00', '2012-09-08', 'M', 5, 3, 6),
(14, 22, 4, 'COOPER', 'Dale', '6954 Mauris Av.', '17543', 'Kalyan', 'Nunc.ullamcorper.velit@penatibuset.org', '0102030405', '39576.00', '2000-01-21', 'M', 4, 3, 6),
(15, 17, 8, 'FULLER', 'Christophe', '977-8389 Dui. Ave', '9229', 'Konstanz', 'semper@metus.edu', '0102030405', '18473.00', '2006-02-19', 'M', 1, 1, 2),
(16, 7, 17, 'TRON', 'Paul', '2323 Metus. Rue', '20403', 'Jumet', 'eu@gravidamauris.org', '0102030405', '51802.00', '2013-04-08', 'M', 1, 2, 6),
(17, 47, 14, 'HASZIC', 'Alec', '370-2193 Sed Rd.', '39132', 'Orangeville', 'cursus.Nunc@amet.edu', '0102030405', '20450.00', '2006-09-15', 'M', 4, 3, 6),
(18, 17, 10, 'VADENT', 'Sophie', 'CP 131, 8783 Nisi Impasse', '26972', 'Burnaby', 'a@vitaepurusgravida.org', '0102030405', '51802.00', '2014-06-26', 'F', 2, 1, 2),
(19, 47, 14, 'BALZAC', 'Jérémy', 'CP 630, 2906 Mollis Route', '0247', 'Colchester', 'penatibus.et@sempertellusid.net', '0102030405', '20450.00', '2009-07-29', 'M', 3, 3, 6),
(20, 17, 14, 'YETTA', 'Ahmed', '228-2670 Luctus. Route', '85726', 'Havillers', 'non@ac.edu', '0102030405', '20450.00', '2008-03-13', 'M', 0, 2, 6),
(21, 14, 3, 'CHERET', 'Philippe', '443 Non Rue', '58015', 'Dolcedo', 'placerat.augue.Sed@mi.net', '0102030405', '30000.00', '2002-06-30', 'M', 2, 3, 6),
(22, 5, 17, 'FERRIS', 'Anne', 'Appartement 172-7219 Ante Chemin', '5155 ', 'North Waziristan', 'Duis.risus.odio@at.com', '0102030405', '51802.00', '2015-05-21', 'F', 0, 3, 6),
(23, 34, 12, 'TERIEUR', 'Alex', 'Appartement 733-1291 Velit Av.', '60100', 'Creil', 'alex@integereu.edu', '0102030405', '30000.00', '2019-03-19', 'M', 3, 3, 6),
(24, 17, 4, 'JANA', 'Vincent', '1229 Laoreet Av.', '07789', 'Bad Ischl', 'lacus@iderat.org', '0102030405', '39576.00', '2008-06-06', 'M', 5, 2, 6),
(25, 4, 17, 'LABALLE', 'Willy', '113-6834 At Rd.', 'B4X 7', 'Labuissire', 'Suspendisse@nec.ca', '0102030405', '51802.00', '2004-03-06', 'M', 1, 1, 6),
(26, 17, 8, 'COCU', 'Stéphanie', 'CP 382, 9910 Massa. Avenue', '50718', 'Regina', 'ac.metus.vitae@quamquisdiam.net', '0102030405', '18473.00', '2013-07-11', 'F', 4, 2, 2),
(27, 17, 13, 'DELISLE', 'Stéphane', 'Appartement 406-5833 Facilisis, Av.', '26986', 'Sainte-Flavie', 'natoque.penatibus.et@utnullaCras.edu', '0102030405', '18473.00', '2002-09-01', 'M', 4, 1, 6),
(28, 17, 7, 'FULTON', 'Bernard', 'Appartement 896-3857 Sit Rue', '78933', 'Versailles', 'elit.elit@blanditNamnulla.ca', '0102030405', '51802.00', '2011-04-23', 'M', 1, 1, 8),
(29, 14, 13, 'KELSIE', 'Kirsten', '5586 Mus. Ave', 'C2W 9', 'Kumluca', 'pharetra.Quisque@Suspendisse.net', '0102030405', '18473.00', '2000-03-30', 'M', 4, 3, 6),
(30, 17, 19, 'RHONDA', 'Bradley', '7331 Pede. Rue', '01971', 'Pishin Valley', 'Nunc.lectus@leoMorbi.co.uk', '0102030405', '18473.00', '2013-10-18', 'M', 0, 1, 5),
(31, 34, 12, 'ASPEN', 'Casey', '7026 Orci Route', '13075', 'Impe', 'enim@ornareelitelit.co.uk', '0102030405', '30000.00', '2018-03-01', 'F', 4, 3, 6),
(32, 17, 8, 'KELSIE', 'Nadia', '723 Orci Rd.', '9989', 'Isola del Gran Sasso d\'Italia', 'amet.risus.Donec@bibendumDonec.ca', '0102030405', '18473.00', '2003-10-17', 'F', 2, 1, 2),
(33, 17, 18, 'DUMOULIN', 'Isabelle', 'Appartement 235-4026 Maecenas Chemin', '77-30', 'Glovertown', 'amet@habitant.edu', '0102030405', '51802.00', '2009-04-07', 'F', 4, 1, 5),
(34, 14, 11, 'DRAKE', 'Ray', '902-1314 Ut Route', '93131', 'Sorbo Serpico', 'sapien.cursus@Donec.com', '0102030405', '39576.00', '2019-12-10', 'M', 1, 3, 6),
(35, 17, 11, 'RICHARD', 'Destiny', '5004 Tellus Ave', '39013', 'Ambon', 'consectetuer@laciniaSedcongue.com', '0102030405', '39576.00', '2009-06-30', 'F', 2, 1, 6),
(36, 39, 12, 'DUFOURD', 'Steve', '356-7367 Nec, Impasse', '30661', 'Bonnert', 'in@Nunc.edu', '0102030405', '30000.00', '2013-08-19', 'M', 5, 3, 6),
(37, 7, 2, 'BECK', 'Carl', '9194 Nulla Ave', '87-14', 'Paris', 'tellus@et.ca', '0102030405', '39576.00', '2004-02-09', 'M', 1, 2, 6),
(38, 22, 14, 'SIMONE', 'George', '700-7880 Gravida Av.', '52439', 'Allentown', 'nostra@fringillaest.ca', '0102030405', '20450.00', '2000-04-07', 'M', 2, 3, 6),
(39, 14, 11, 'DORIAN', 'Zelda', 'CP 315, 4816 Dui. Chemin', '13801', 'Saravena', 'vehicula@turpis.org', '0102030405', '39576.00', '2000-08-12', 'F', 1, 3, 6),
(40, 17, 13, 'FARINI', 'Jana', 'CP 578, 8898 Purus Impasse', '91148', 'Wiener Neustadt', 'cursus.in.hendrerit@egetvariusultrices.ca', '0102030405', '18473.00', '2016-09-19', 'M', 0, 2, 6),
(41, 17, 12, 'GINGER', 'Tara', 'Appartement 254-6736 Sit Route', '74002', 'Amstelveen', 'iaculis@rutrum.org', '0102030405', '30000.00', '2001-05-31', 'F', 5, 2, 6),
(42, 17, 13, 'CHARLOT', 'Elijah', '725-5577 Dictum Chemin', '63145', 'Annan', 'luctus.et@Nunc.net', '0102030405', '18473.00', '2001-04-10', 'M', 3, 1, 6),
(43, 17, 12, 'DUPOND', 'Adrian', 'CP 919, 5276 Leo. Rue', '18974', 'Perquenco', 'Lorem.ipsum@amagnaLorem.net', '0102030405', '30000.00', '2010-10-19', 'M', 3, 2, 6),
(44, 17, 14, 'ISAAC', 'Christine', 'Appartement 717-2181 Et Impasse', '88779', 'Roux', 'lacus@Donecnonjusto.co.uk', '0102030405', '20450.00', '2016-01-09', 'F', 1, 2, 6),
(45, 22, 14, 'QUAMAR', 'Allistair', 'Appartement 223-3446 Mollis Rd.', '55469', 'Güssing', 'orci@ultricesiaculis.ca', '0102030405', '20450.00', '2016-10-30', 'M', 0, 3, 6),
(46, 17, 5, 'PRINCE', 'Laurent', '665 Nibh. Rd.', '75217', 'Driffield', 'Curae.Phasellus.ornare@quamdignissimpharetra.net', '0102030405', '18473.00', '2003-10-15', 'M', 2, 1, 4),
(47, 22, 2, 'DUMAS', 'Ingrid', '396-7762 Magna. Route', '50406', 'Frigento', 'in.molestie@anteipsumprimis.org', '0102030405', '39576.00', '2017-04-28', 'F', 1, 3, 6),
(48, 17, 19, 'RAMERY', 'Bruno', '863 Nec Ave', '21485', 'Sint-Kruis-Winkel', 'at.lacus.Quisque@maurisipsum.edu', '0102030405', '18473.00', '2000-06-14', 'M', 5, 1, 5),
(49, 17, 11, 'MALACHI', 'René', 'Appartement 165-7157 Auctor Impasse', '40583', 'Wambeek', 'tincidunt.orci@dolorvitae.co.uk', '0102030405', '39576.00', '2002-07-15', 'M', 1, 1, 6),
(50, 14, 13, 'RENSTER', 'Jeannette', 'CP 758, 4652 Mauris Chemin', '85874', 'Gelbressee', 'iaculis@elementumat.ca', '0102030405', '18473.00', '2007-06-22', 'F', 5, 3, 6),
(51, 17, 12, 'BERTAUX', 'Marc', '1664 Bibendum Avenue', '3274', 'Allein', 'mauris.blandit@temporarcuVestibulum.org', '0102030405', '30000.00', '2014-05-10', 'M', 5, 1, 6),
(52, 14, 11, 'RIGEL', 'Armand', 'CP 694, 2496 Eget Rue', '1104', 'Drachten', 'Aenean.eget.metus@orciin.com', '0102030405', '39576.00', '2013-05-11', 'M', 4, 3, 6),
(53, 17, 12, 'WYLIE', 'Jean-Michel', 'CP 725, 3993 Nec Av.', '97875', 'Maule', 'ac.turpis@maurissapiencursus.co.uk', '0102030405', '30000.00', '2014-12-21', 'M', 5, 2, 6),
(54, 26, 27, 'HONORA', 'Anita', '414-9179 Phasellus Rue', '6971', 'Werder', 'Suspendisse.commodo.tincidunt@quispede.org', '0102030405', '29500.00', '2009-06-18', 'F', 5, 1, 10),
(55, 17, 29, 'LANNOY', 'Julia', 'Appartement 111-9165 Metus. Rue', '0521 ', 'Mata de Plátano', 'Mauris.ut@urnajusto.co.uk', '0102030405', '18473.00', '2018-06-08', 'F', 0, 1, 5),
(56, 17, 19, 'RICHAUMONT', 'Kendall', '954-5221 Dictum Avenue', '45146', 'Gulfport', 'natoque.penatibus.et@ametconsectetueradipiscing.net', '0102030405', '18473.00', '2007-01-20', 'M', 1, 1, 5),
(57, 17, 14, 'MALIK', 'Keiko', 'Appartement 633-956 Quis, Rd.', '45000', 'Orléans', 'pede.ultrices.a@lacusEtiam.org', '0102030405', '20450.00', '2003-03-21', 'F', 2, 2, 6),
(58, 17, 6, 'HECTOR', 'Macaulay', '2095 In Ave', '52-91', 'Emarèse', 'sem.Nulla.interdum@lobortis.ca', '0102030405', '18473.00', '2007-12-26', 'M', 3, 2, 6),
(59, 4, 2, 'HANNAH', 'Amity', '537-1971 Vestibulum Rd.', '8203 ', 'Palagano', 'fermentum@quisturpisvitae.co.uk', '0102030405', '39576.00', '2013-08-01', 'M', 2, 2, 6),
(60, 17, 8, 'HEDY', 'Katell', 'CP 850, 1578 In Rue', '9661', 'Connah\'s Quay', 'lorem.sit.amet@pellentesque.co.uk', '0102030405', '18473.00', '2010-07-26', 'M', 0, 2, 2),
(61, 17, 8, 'BELL', 'Oleg', 'Appartement 679-9483 Fringilla Route', 'B4 6E', 'Parndorf', 'Aenean.massa.Integer@dui.org', '0102030405', '18473.00', '2012-03-25', 'M', 2, 2, 2),
(62, 17, 13, 'PAULA', 'Tasha', 'Appartement 193-7862 Mollis. Rue', '24446', 'McCallum', 'adipiscing.lobortis.risus@semmolestiesodales.com', '0102030405', '18473.00', '2018-02-03', 'F', 1, 2, 6),
(63, 17, 12, 'POPOV', 'Yuri', '6111 Risus. Ave', '60214', 'Compiègne', 'yuri@gmail.com', '0102030405', '30000.00', '2012-08-06', 'M', 5, 1, 6),
(64, 14, 6, 'DENIS', 'Jeanine', '8325 Ornare Avenue', '71414', 'Colico', 'Integer.id@blanditviverraDonec.edu', '0102030405', '18473.00', '2011-11-30', 'F', 4, 3, 6),
(65, 17, 20, 'KEELY', 'Nassim', '14 avenue Isabelle Herdhebaut', '94086', 'San Juan de Dios', 'n.keely@yahoo.fr', '0102030405', '27000.00', '2000-10-15', 'M', 4, 2, 1),
(66, 17, 22, 'FULTON', 'Michel', '245 avenue du Président Roosevelt', '80000', 'Amiens', 'faucibus@leoMorbi.org', '0102030405', '18473.00', '2001-02-16', 'M', 4, 1, 6),
(67, 22, 14, 'Cole', 'ALLISTAIR', '27 rue Denis Garnier', '58318', 'Sierning', 'vel@vitae.net', '0102030405', '20450.00', '2007-11-26', 'M', 3, 3, 6),
(68, 39, 12, 'JOEL', 'Rose', '855-6714 Metus. Rue', '00046', 'Lestizza', 'risus.a@odio.com', '0102030405', '39576.00', '2000-12-26', 'F', 2, 3, 6),
(69, 17, 5, 'PRAZART', 'Emmanuel', '8515 Nullam Av.', '80500', 'Montdidier', 'dolor.tempus@augueid.com', '0102030405', '18473.00', '2004-03-15', 'M', 0, 2, 6),
(70, 17, 23, 'GUERAFI', 'Hakim', '480-2381 Volutpat. Avenue', '41233', 'Porto Cesareo', 'hguerafi@laposte.net', '0102030405', '18473.00', '2017-04-16', 'M', 5, 1, 3),
(71, 17, 13, 'AIMEE', 'Germaine', '5466 Nec Avenue', '96176', 'Melipilla', 'lorem@sociis.edu', '0102030405', '18473.00', '2010-05-21', 'F', 2, 2, 6),
(72, 17, 23, 'CARTER', 'Robin', '497 Chemin Ante', '60195', 'Duncan', 'nisi@blandit.ca', '0102030405', '18473.00', '2012-01-20', 'M', 1, 2, 3),
(73, 7, 2, 'LIRMA', 'Hugues', '91 bis rue Jarno', '62000', 'Arras', 'hugues.lirma@jarditou.com', '0102030405', '39576.00', '2019-07-10', 'M', 5, 2, 6),
(74, 17, 22, 'FITZGERALD', 'Neil', 'CP 545, 2293 Aenean Rue', '4431', 'Algarrobo', 'Quisque.purus@Donectincidunt.org', '0102030405', '18473.00', '2014-06-25', 'M', 2, 2, 6),
(75, 17, 24, 'AINSLEY', 'Hayden', '633-8228 Et Av.', '6878', 'Güstrow', 'Etiam@Cumsociis.ca', '0102030405', '18473.00', '2003-05-25', 'M', 3, 1, 3),
(76, 17, 12, 'HILARY', 'Zia', '2945 Volutpat. Av.', 'T0X 3', 'Rabbi', 'ut.quam.vel@semut.net', '0102030405', '30000.00', '2006-04-17', 'F', 2, 1, 6),
(77, 47, 24, 'MADELINE', 'Jonas', 'Appartement 521-8237 Ligula. Chemin', 'Z4232', 'Noginsk', 'ac.metus@tellusloremeu.net', '0102030405', '18473.00', '2016-04-06', 'M', 2, 3, 3),
(78, 17, 14, 'TIMON', 'Alyssa', 'CP 503, 6759 Ultricies Avenue', '79444', 'Rockhampton', 'Sed.et.libero@necorci.org', '0102030405', '20450.00', '2005-03-25', 'F', 3, 1, 6),
(79, 47, 24, 'PETER', 'Carly', 'Appartement 792-2242 Semper Rd.', '29429', 'Greater Sudbury', 'Etiam.imperdiet@Cumsociisnatoque.ca', '0102030405', '18473.00', '2017-11-16', 'F', 5, 3, 3),
(80, 17, 21, 'TEEGAN', 'Benjamin', '915-3308 Morbi Avenue', '8258', 'Bottidda', 'habitant.morbi.tristique@tempor.com', '0102030405', '18473.00', '2015-05-16', 'M', 5, 1, 1),
(81, 17, 12, 'WILLA', 'Nina', 'CP 708, 8796 Proin Avenue', '6562', 'Innsbruck', 'eros@sem.edu', '0102030405', '30000.00', '2009-03-12', 'F', 0, 1, 6),
(82, 17, 11, 'CHANEY', 'Irma', '4854 Proin Chemin', '22235', 'Fort Providence', 'ultricies.sem.magna@non.com', '0102030405', '39576.00', '2006-01-31', 'F', 2, 1, 6),
(83, 17, 24, 'LAITH', 'Ariel', 'CP 298, 9838 Porttitor Rue', '40182', 'Wilmington', 'non.bibendum@penatibus.co.uk', '0102030405', '18473.00', '2016-01-17', 'F', 3, 1, 3),
(84, 52, 12, 'CALDWELL', 'Megan', 'CP 183, 6687 Vel Ave', '71913', 'Leerbeek', 'Proin.sed@tellusPhaselluselit.ca', '0102030405', '30000.00', '2012-01-05', 'M', 0, 3, 6),
(85, 47, 22, 'HERMAN', 'Alan', 'CP 248, 4557 Augue. Route', '03002', 'Bridgeport', 'Phasellus@molestietortor.org', '0102030405', '18473.00', '2010-04-16', 'M', 0, 3, 6),
(86, 2, 2, 'MICHAEL', 'Quinn', '777-2337 Pretium Chemin', '6350', 'Bilaspur', 'tellus@Uttinciduntvehicula.edu', '0102030405', '39576.00', '2002-09-26', 'M', 5, 1, 6),
(87, 17, 13, 'DOLLE-RAYMOND', 'Christian', '3578 Fermentum Avenue', '69961', 'Greenwich', 'lobortis.quis@Phasellus.net', '0102030405', '18473.00', '2018-12-25', 'M', 0, 1, 6),
(88, 17, 25, 'CALLUM', 'Howard', '7637 Nisi Av.', '16638', 'Gagliano del Capo', 'Aliquam@euligulaAenean.net', '0102030405', '33020.40', '2017-10-23', 'M', 2, 2, 6),
(89, 6, 3, 'KEANE', 'Ashton', '772-9554 Ipsum Av.', '4095 ', 'Khanpur', 'metus@eratvel.edu', '0102030405', '30000.00', '2005-09-07', 'M', 4, 1, 6),
(90, 17, 12, 'RANA', 'Charles-Henri', '2425 Aliquam Impasse', '10892', 'La Roche-sur-Yon', 'nisi.nibh@diamSeddiam.ca', '0102030405', '30000.00', '2007-01-29', 'f', 1, 2, 6),
(91, 22, 20, 'CARDON', 'Yvonne', '986-8855 Lacus. Ave', '1865', 'Corozal', 'Integer@metuseu.edu', '0102030405', '27000.00', '2000-10-31', 'F', 5, 3, 1),
(92, 47, 23, 'MASON', 'Martin', 'Appartement 397-5505 Leo, Avenue', '83701', 'General Lagos', 'a.facilisis@mollis.com', '0102030405', '18473.00', '2003-12-29', 'M', 1, 3, 3),
(93, 17, 25, 'ADENA', 'Dorothée', '5988 Varius Chemin', '1666', 'Bonvicino', 'sem.consequat.nec@sagittisDuis.co.uk', '0102030405', '33020.40', '2017-12-04', 'F', 5, 1, 6),
(94, 17, 19, 'ZELDA', 'Britney', '5 rue de la mine', '62300', 'Lens', 'pellentesque@neque.edu', '0102030405', '18473.00', '2018-07-15', 'F', 1, 2, 5),
(95, 52, 12, 'RENARD', 'Caroline', '142-9516 Sed Rd.', '5685', 'Ross-on-Wye', 'mauris.Integer@tristiquesenectuset.net', '0102030405', '39576.00', '2007-02-02', 'F', 1, 3, 6),
(96, 17, 34, 'GISELA', 'Guy', '440-6585 Risus. Route', '80800', 'Corbie', 'facilisis@nullamagnamalesuada.edu', '0102030405', '24000.00', '2009-11-29', 'M', 1, 1, 4),
(97, 17, 26, 'ROSOFT', 'Mike', '646-1281 Vestibulum, Route', '15948', 'Barranquilla', 'id.libero.Donec@idmagna.com', '0102030405', '28822.00', '2005-06-11', 'M', 2, 1, 10),
(98, 26, 28, 'MARAT', 'Hans', '8882 Sollicitudin Chemin', '45142', 'Solihull', 'ornare.sagittis@eleifendCras.net', '0102030405', '38459.27', '2009-08-14', 'M', 2, 2, 10),
(99, 26, 27, 'LEMAIRE', 'Pierre-Jean', 'CP 456, 6156 Orci Ave', '96335', 'Nottingham', 'nulla.at.sem@anteblandit.ca', '0102030405', '29500.00', '2008-05-21', 'M', 4, 1, 10),
(100, 26, 31, 'TRENET', 'Nathan', 'CP 286, 8977 Magna. Rue', '63661', 'Kasli', 'Lorem.ipsum.dolor@facilisis.ca', '0102030405', '20450.00', '2005-02-19', 'M', 2, 1, 10),
(101, 52, 12, 'MECHELLE', 'Leila', 'CP 295, 7493 Sit Avenue', '87341', 'Rosarno', 'mi@tempordiamdictum.org', '0102030405', '30000.00', '2001-02-26', 'M', 3, 3, 6),
(102, 26, 32, 'DEVIN', 'Timothée', 'Appartement 161-9249 Ac Rd.', '55053', 'Wismar', 'fringilla@orciDonec.ca', '0102030405', '24051.59', '2015-11-15', 'M', 4, 1, 10),
(103, 17, 14, 'PALMER', 'Mia', '1044 Vivamus Ave', 'K1K 9', 'Rajanpur', 'et@lectus.edu', '0102030405', '20450.00', '2015-10-05', 'M', 1, 2, 6),
(104, 17, 30, 'QUIN', 'Josiah', '1390 Sollicitudin Chemin', '07573', 'Kanpur Cantonment', 'tellus.imperdiet@cursuspurusNullam.org', '0102030405', '18473.00', '2010-10-07', 'M', 1, 1, 5),
(105, 17, 9, 'COHEN', 'David', '4687 Ullamcorper Avenue', '41-72', 'Augusta', 'faucibus.orci.luctus@faucibus.com', '0102030405', '51802.00', '2016-05-21', 'M', 5, 1, 1),
(106, 26, 32, 'XENOS', 'Illiana', '8543 Sed Impasse', '73070', 'Castelvecchio di Rocca Barbena', 'sem.mollis.dui@tinciduntadipiscingMauris.edu', '0102030405', '24051.59', '2001-10-05', 'M', 5, 1, 10),
(107, 26, 31, 'MANNICK', 'Sébastien', 'CP 797, 7428 At, Av.', '53215', 'Söderhamn', 'Donec@quamafelis.edu', '0102030405', '20450.00', '2013-02-14', 'M', 2, 1, 10);

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
  `ord_status` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ord_cus_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`ord_id`),
  KEY `ord_cus_id` (`ord_cus_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`ord_id`, `ord_order_date`, `ord_payment_date`, `ord_ship_date`, `ord_reception_date`, `ord_status`, `ord_cus_id`) VALUES
(1, '2008-08-20', '2018-12-01', '2019-08-29', '2000-04-17', NULL, 19),
(2, '2016-01-22', '2011-02-02', '2013-04-13', '2004-10-29', 'Commande urgente', 67),
(3, '2019-12-25', '2000-03-28', '2009-08-04', '2021-03-24', NULL, 85),
(4, '2016-08-18', '2004-02-06', '2014-12-29', '2008-07-26', 'Commande urgente', 88),
(5, '2009-06-19', '2012-10-07', '2017-08-30', '2010-09-20', NULL, 27),
(6, '2012-08-18', '2006-09-05', '2018-02-08', '2001-05-04', NULL, 95),
(7, '2010-09-01', '2016-02-02', '2006-11-24', '2016-10-19', NULL, 78),
(8, '2021-04-01', '2016-02-05', '2004-08-13', '2016-01-07', NULL, 34),
(9, '2012-08-14', '2013-01-28', '2009-07-29', '2003-07-31', NULL, 51),
(10, '2014-06-19', '2005-09-12', '2016-09-04', '2002-05-21', 'Commande urgente', 28),
(11, '2015-09-21', '2012-09-08', '2003-04-21', '2019-05-31', NULL, 59),
(12, '2008-05-02', '2001-01-10', '2006-02-26', '2002-10-22', NULL, 36),
(13, '2005-08-19', '2014-06-17', '2020-06-14', '2000-07-13', NULL, 96),
(14, '2016-05-16', '2020-12-10', '2009-06-23', '2006-10-04', NULL, 79),
(15, '2007-06-03', '2014-11-21', '2012-07-09', '2001-07-09', NULL, 56),
(16, '2019-06-14', '2000-07-30', '2014-05-16', '2006-03-01', 'Commande annulée', 81),
(17, '2020-07-13', '2008-10-12', '2014-06-10', '2005-01-27', NULL, 34),
(19, '2021-01-12', '2009-05-28', '2004-07-02', '2010-11-02', NULL, 98),
(20, '2000-08-15', '2017-01-06', '2020-06-17', '2016-02-24', NULL, 1),
(21, '2020-08-18', '2005-02-15', '2007-08-11', '2016-07-03', 'Commande urgente', 36),
(22, '2016-03-24', '2002-04-15', '2002-11-10', '2015-11-04', 'Commande urgente', 67),
(23, '2002-11-13', '2011-08-24', '2000-03-24', '2013-11-03', NULL, 34),
(24, '2004-04-06', '2016-01-12', '2018-04-16', '2013-04-22', NULL, 38),
(25, '2020-05-07', '2013-03-20', '2001-08-08', '2007-03-26', 'Commande annulée', 30),
(26, '2009-03-20', '2010-02-06', '2002-02-18', '2009-10-27', NULL, 90),
(27, '2012-09-18', '2014-06-12', '2017-11-22', '2018-06-06', NULL, 9),
(28, '2006-11-03', '2005-05-28', '2012-12-09', '2020-07-29', NULL, 1),
(29, '2010-06-25', '2000-08-18', '2001-04-25', '2005-03-07', NULL, 24),
(30, '2006-10-23', '2012-07-19', '2009-07-18', '2009-08-25', NULL, 67),
(31, '2002-06-24', '2002-07-08', '2015-02-16', '2019-02-05', NULL, 12),
(32, '2016-08-13', '2017-07-25', '2016-07-27', '2011-04-26', NULL, 27),
(33, '2009-10-11', '2019-10-16', '2010-01-18', '2016-07-10', NULL, 85),
(34, '2016-01-08', '2012-07-11', '2005-10-27', '2008-08-23', NULL, 43),
(35, '2002-09-03', '2005-02-10', '2009-07-05', '2006-12-04', NULL, 52),
(36, '2014-03-28', '2005-01-25', '2010-07-29', '2012-06-15', NULL, 69),
(37, '2007-08-21', '2020-08-29', '2014-04-07', '2010-10-23', NULL, 10),
(38, '2002-04-01', '2012-11-25', '2009-06-13', '2002-10-14', NULL, 91),
(39, '2009-02-16', '2017-11-30', '2002-08-22', '2018-08-02', NULL, 64),
(40, '2016-02-21', '2014-04-07', '2015-04-29', '2020-05-19', NULL, 19),
(41, '2007-11-12', '2002-08-28', '2010-11-06', '2016-12-28', NULL, 19),
(42, '2020-04-09', '2000-09-08', '2001-06-09', '2014-09-22', NULL, 6),
(43, '2020-02-02', '2000-02-14', '2000-12-04', '2012-10-13', NULL, 57),
(45, '2015-11-01', '2010-08-15', '2015-03-28', '2017-09-05', NULL, 56),
(46, '2000-08-01', '2000-01-14', '2020-11-22', '2011-02-01', NULL, 84),
(47, '2004-01-31', '2006-07-01', '2009-02-18', '2010-04-01', NULL, 93),
(48, '2000-07-07', '2007-08-14', '2020-03-01', '2000-02-19', NULL, 43),
(49, '2013-12-23', '2007-11-04', '2003-01-01', '2013-01-20', NULL, 8),
(50, '2004-05-26', '2011-11-05', '2006-08-16', '2017-03-05', NULL, 33),
(51, '2001-09-08', '2009-04-01', '2014-11-14', '2013-07-14', NULL, 81),
(52, '2013-06-24', '2017-09-14', '2021-04-01', '2014-01-26', NULL, 44),
(53, '2012-12-05', '2014-04-21', '2016-02-18', '2006-03-26', NULL, 5),
(54, '2005-08-03', '2015-10-19', '2017-11-10', '2012-10-20', NULL, 11),
(55, '2013-05-11', '2010-09-20', '2002-06-04', '2008-01-02', NULL, 1),
(56, '2020-04-18', '2012-06-06', '2017-09-04', '2020-11-08', NULL, 94),
(57, '2001-09-30', '2009-02-13', '2012-09-16', '2010-04-14', NULL, 70),
(58, '2003-01-12', '2006-08-29', '2008-05-29', '2016-07-21', NULL, 87),
(59, '2001-11-23', '2012-10-28', '2000-05-14', '2001-03-17', NULL, 59),
(60, '2015-01-16', '2017-01-27', '2013-09-01', '2018-04-29', NULL, 35),
(61, '2006-10-06', '2019-02-01', '2002-02-18', '2005-08-23', NULL, 81),
(62, '2019-09-02', '2005-10-17', '2017-06-20', '2013-10-30', NULL, 38),
(63, '2006-06-07', '2005-08-07', '2014-11-12', '2013-07-05', NULL, 28),
(64, '2005-01-01', '2018-04-21', '2021-01-02', '2006-04-26', NULL, 77),
(65, '2006-12-31', '2016-05-07', '2007-11-24', '2002-02-10', NULL, 54),
(66, '2014-05-30', '2014-03-31', '2012-10-25', '2018-12-10', NULL, 87),
(67, '2013-12-25', '2019-03-03', '2012-11-27', '2006-08-15', NULL, 10),
(68, '2003-11-09', '2018-04-14', '2012-08-26', '2011-06-18', NULL, 95),
(69, '2019-07-26', '2003-11-10', '2019-06-03', '2006-09-05', NULL, 31),
(70, '2020-03-12', '2006-05-14', '2003-11-23', '2013-10-17', NULL, 46),
(71, '2016-10-08', '2013-01-14', '2009-10-27', '2009-12-01', NULL, 99),
(72, '2013-06-01', '2020-12-02', '2010-03-13', '2013-04-01', NULL, 39),
(73, '2011-07-06', '2002-03-29', '2005-04-28', '2003-11-23', NULL, 67),
(74, '2018-08-29', '2016-01-31', '2016-09-08', '2012-09-23', NULL, 26),
(75, '2007-07-26', '2006-07-09', '2001-06-27', '2000-04-12', NULL, 13),
(76, '2015-06-22', '2014-07-12', '2019-11-22', '2018-04-30', NULL, 43),
(77, '2002-09-20', '2008-06-26', '2011-04-15', '2005-10-25', NULL, 70),
(78, '2015-04-25', '2003-05-05', '2006-06-26', '2015-08-16', NULL, 83),
(79, '2013-01-17', '2015-07-15', '2011-04-14', '2010-04-01', NULL, 60),
(80, '2008-07-11', '2019-09-06', '2013-07-17', '2020-05-26', NULL, 83),
(81, '2013-11-28', '2001-04-11', '2019-10-20', '2006-01-25', NULL, 72),
(82, '2001-07-23', '2002-09-02', '2008-06-10', '2009-11-04', NULL, 39),
(83, '2000-02-19', '2015-05-15', '2013-07-23', '2004-08-12', NULL, 14),
(84, '2016-07-05', '2021-01-13', '2010-12-01', '2010-10-05', NULL, 46),
(85, '2011-01-14', '2009-05-21', '2016-11-27', '2009-08-26', NULL, 27),
(86, '2010-04-05', '2017-12-02', '2020-12-29', '2007-02-16', NULL, 3),
(87, '2001-11-20', '2001-12-31', '2006-07-13', '2014-09-23', NULL, 9),
(88, '2004-08-06', '2013-02-16', '2000-08-25', '2019-07-11', NULL, 77),
(89, '2000-11-14', '2008-02-28', '2014-05-19', '2017-06-21', NULL, 19),
(90, '2013-06-01', '2014-04-15', '2011-06-18', '2007-03-29', NULL, 45),
(91, '2017-06-12', '2004-09-22', '2017-12-26', '2007-05-10', NULL, 66),
(92, '2004-06-07', '2010-08-27', '2020-01-17', '2001-07-30', NULL, 49),
(93, '2020-04-18', '2000-08-03', '2000-04-07', '2009-11-28', NULL, 23),
(94, '2000-08-17', '2002-05-09', '2012-02-29', '2004-11-13', NULL, 10),
(95, '2015-02-15', '2010-10-04', '2020-12-01', '2001-04-08', NULL, 37),
(96, '2017-09-01', '2014-02-02', '2016-07-30', '2006-11-02', NULL, 14),
(97, '2018-11-12', '2017-07-21', '2004-10-30', '2009-12-26', NULL, 37),
(98, '2009-03-23', '2011-11-20', '2018-10-13', '2009-09-15', NULL, 99),
(99, '2000-06-18', '2019-04-26', '2014-01-29', '2001-07-22', NULL, 88),
(100, '2002-06-02', '2000-06-03', '2004-02-26', '2010-07-18', NULL, 47);

-- --------------------------------------------------------

--
-- Structure de la table `orders_details`
--

DROP TABLE IF EXISTS `orders_details`;
CREATE TABLE IF NOT EXISTS `orders_details` (
  `ode_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ode_unit_price` decimal(7,2) NOT NULL,
  `ode_discount` decimal(4,2) DEFAULT NULL,
  `ode_quantity` int(5) NOT NULL,
  `ode_ord_id` int(10) UNSIGNED NOT NULL,
  `ode_pro_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`ode_id`),
  KEY `ode_ord_id` (`ode_ord_id`) USING BTREE,
  KEY `ode_pro_id` (`ode_pro_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `orders_details`
--

INSERT INTO `orders_details` (`ode_id`, `ode_unit_price`, `ode_discount`, `ode_quantity`, `ode_ord_id`, `ode_pro_id`) VALUES
(1, '14.99', '0.00', 1, 5, 10),
(2, '14.90', '0.00', 1, 53, 19),
(3, '499.99', '0.00', 1, 53, 22),
(4, '9.90', '0.00', 1, 17, 32),
(5, '88.00', '0.00', 1, 72, 12),
(6, '288.32', '0.00', 1, 20, 28),
(7, '32.50', '5.00', 1, 56, 29),
(8, '88.00', '0.00', 1, 74, 12),
(9, '110.00', '10.00', 1, 47, 7),
(10, '9.98', '0.00', 1, 16, 24),
(11, '157.00', '0.00', 1, 70, 25),
(12, '149.97', '0.00', 1, 37, 30),
(13, '49.00', '0.00', 1, 8, 13),
(14, '88.00', '0.00', 1, 32, 14),
(15, '245.00', '10.00', 1, 7, 31),
(16, '110.00', '10.00', 1, 75, 7),
(17, '245.00', '0.00', 1, 79, 31),
(18, '31.19', '0.00', 1, 29, 18),
(19, '149.97', '0.00', 1, 91, 30),
(20, '31.19', '0.00', 1, 54, 18),
(21, '88.00', '0.00', 1, 68, 12),
(22, '599.99', '0.00', 1, 35, 21),
(23, '49.00', '0.00', 1, 24, 13),
(24, '245.00', '0.00', 1, 78, 31),
(25, '299.40', '0.00', 1, 94, 26),
(26, '110.00', '10.00', 1, 35, 7),
(27, '135.90', '0.00', 1, 77, 11),
(28, '12.00', '0.00', 1, 83, 23),
(29, '157.00', '0.00', 1, 81, 25),
(30, '299.40', '0.00', 1, 48, 26),
(31, '288.32', '0.00', 1, 95, 28),
(32, '110.00', '10.00', 1, 75, 7),
(33, '49.00', '0.00', 1, 31, 13),
(34, '19.90', '0.00', 1, 97, 16),
(35, '49.00', '0.00', 1, 68, 13),
(36, '14.99', '0.00', 1, 47, 10),
(37, '245.00', '0.00', 1, 55, 31),
(38, '249.99', '0.00', 1, 63, 8),
(39, '49.00', '0.00', 1, 14, 13),
(40, '54.49', '0.00', 1, 40, 15),
(41, '49.00', '0.00', 1, 90, 13),
(42, '14.99', '0.00', 1, 63, 10),
(43, '245.00', '0.00', 1, 42, 31),
(44, '31.19', '0.00', 1, 66, 18),
(45, '89.00', '0.00', 1, 26, 27),
(46, '110.00', '10.00', 1, 87, 7),
(47, '9.90', '0.00', 1, 11, 32),
(48, '249.99', '0.00', 10, 9, 8),
(49, '599.99', '0.00', 1, 93, 21),
(50, '19.90', '0.00', 1, 81, 16),
(51, '135.90', '0.00', 1, 47, 11),
(52, '157.00', '10.00', 1, 70, 25),
(53, '110.00', '10.00', 1, 6, 7),
(54, '499.99', '0.00', 1, 61, 22),
(55, '32.50', '0.00', 1, 89, 29),
(56, '135.90', '0.00', 1, 67, 11),
(57, '49.00', '0.00', 1, 11, 13),
(58, '9.90', '0.00', 1, 96, 32),
(59, '157.00', '0.00', 1, 41, 25),
(60, '245.00', '0.00', 1, 60, 31),
(61, '19.90', '0.00', 1, 16, 16),
(62, '499.99', '0.00', 1, 8, 22),
(63, '249.99', '0.00', 1, 19, 8),
(64, '110.00', '10.00', 1, 54, 7),
(65, '299.40', '0.00', 1, 62, 26),
(66, '135.90', '0.00', 1, 56, 11),
(67, '149.97', '0.00', 1, 52, 30),
(68, '245.00', '0.00', 1, 53, 31),
(69, '19.90', '0.00', 1, 52, 16),
(70, '9.98', '50.00', 2, 21, 24),
(71, '9.90', '0.00', 1, 23, 32),
(72, '14.99', '0.00', 1, 37, 10),
(73, '149.97', '0.00', 1, 27, 30),
(74, '32.50', '0.00', 1, 60, 29),
(75, '32.50', '0.00', 1, 40, 29),
(76, '14.90', '0.00', 1, 54, 19),
(77, '88.00', '0.00', 1, 25, 14),
(78, '88.00', '0.00', 1, 85, 12),
(79, '599.99', '0.00', 1, 51, 21),
(80, '599.99', '0.00', 1, 2, 21),
(81, '14.99', '0.00', 1, 97, 10),
(82, '9.90', '0.00', 1, 37, 32),
(83, '9.98', '0.00', 1, 47, 24),
(84, '14.90', '0.00', 1, 70, 19),
(85, '49.00', '60.00', 1, 43, 13),
(86, '31.19', '25.00', 1, 56, 20),
(87, '19.90', '0.00', 1, 72, 16),
(88, '245.00', '0.00', 1, 20, 31),
(89, '31.19', '0.00', 1, 4, 20),
(90, '54.49', '0.00', 1, 86, 15),
(91, '24.90', '0.00', 1, 14, 17),
(92, '249.99', '0.00', 1, 67, 8),
(93, '288.32', '0.00', 1, 6, 28),
(94, '110.00', '10.00', 1, 58, 7),
(95, '110.00', '20.00', 2, 12, 7),
(96, '88.00', '0.00', 1, 100, 12),
(97, '88.00', '0.00', 1, 48, 12),
(98, '245.00', '0.00', 1, 17, 31),
(99, '88.00', '0.00', 1, 39, 12),
(100, '149.97', '0.00', 1, 15, 30);

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `pos_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pos_libelle` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`pos_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`pos_id`, `pos_libelle`) VALUES
(1, 'Président-Directeur Général'),
(2, 'Manager(/geuse)'),
(3, 'Commercial(e)'),
(4, 'Responsable des ventes'),
(5, 'Mécanicien(ne)'),
(6, 'Assistant(e) commercial(e)'),
(7, 'Acheteur(/teuse)'),
(8, 'Assistant(e) RH'),
(9, 'Directeur(/trice) financier'),
(10, 'Directeur(/trice) des Ressources Humaines'),
(11, 'Chef(fe) de rayon'),
(12, 'Vendeur/(euse)'),
(13, 'Hôte(/esse) de caisse'),
(14, 'Pépiniériste'),
(17, 'Directeur(/trice) de magasin'),
(18, 'Directeur(/trice) du marketing'),
(19, 'Assistant(e) marketing'),
(20, 'Comptable'),
(21, 'Assistant(e) comptable'),
(22, 'Vigile'),
(23, 'Cariste'),
(24, 'Préparateur(/trice) de commandes'),
(25, 'Formateur(/trice)'),
(26, 'Directeur(/trice) des systèmes d\'information'),
(27, 'Développeur(/peuse)'),
(28, 'Chef(/fe) de projet informatique'),
(29, 'Community manager'),
(30, 'Graphiste'),
(31, 'Technicien(/ne) réseau'),
(32, 'Technicien(/ne) support informatique'),
(33, 'Electricien(/ne)'),
(34, 'Technicien(/ne) de maintenance'),
(35, 'Directeur(/trice) commercial');

-- --------------------------------------------------------

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
  `pro_stock` int(5) UNSIGNED   NOT NULL,
  `pro_stock_alert` int(5) UNSIGNED  NOT NULL,
  `pro_color` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pro_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pro_desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pro_publish` tinyint(1) NOT NULL,
  `pro_sup_id` int(10) UNSIGNED NOT NULL,
  `pro_add_date` datetime NOT NULL,
  `pro_update_date` datetime DEFAULT NULL,
  `pro_picture` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pro_id`),
  KEY `pro_sup_id` (`pro_sup_id`) USING BTREE,
  KEY `pro_cat_id` (`pro_cat_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`pro_id`, `pro_cat_id`, `pro_price`, `pro_ref`, `pro_ean`, `pro_stock`, `pro_stock_alert`, `pro_color`, `pro_name`, `pro_desc`, `pro_publish`, `pro_sup_id`, `pro_add_date`, `pro_update_date`, `pro_picture`) VALUES
(7, 27, '110.00', 'barb001', NULL, 2, 5, 'Brun', 'Aramis ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In porttitor sit amet ipsum sit amet dapibus. Cras suscipit neque ac magna sagittis lobortis. Duis venenatis enim ac nisl luctus, a scelerisque velit porttitor. Integer nec massa quis urna mollis consectetur et et nisl. Nullam eget nunc vitae nisl convallis faucibus. Vestibulum dapibus, metus nec molestie lobortis, nunc sem mollis tortor, et auctor dolor nunc at nisi. Pellentesque sit amet turpis nisi. ', 0, 4, '2018-04-18 00:00:00', '2018-11-14 00:00:00', 'jpg'),
(8, 27, '249.99', 'barb002', NULL, 0, 5, 'Noir', 'Athos', 'Cu\'rabitur pellentesque posuere luctus. Sed et risus vel quam pharetra pretium non quis odio. Praesent varius risus vel orci ultrices tincidunt.', 0, 4, '2016-06-14 00:00:00', NULL, 'jpg'),
(10, 2, '14.99', 'SEC-B', NULL, 16, 5, 'Rouge', 'Red', 'Phasellus ac gravida lorem. Aliquam sed aliquam nisl. Etiam non ornare sapien. Aenean ut tellus non risus varius bibendum quis vel ligula.', 0, 3, '2018-08-05 00:00:00', NULL, 'jpg'),
(11, 27, '135.90', 'barb003', NULL, 10, 5, 'Chrome', 'Clatronic', 'Fusce rutrum odio sem, quis finibus nisl finibus a. Praesent dictum ex in lectus porta, vitae varius lacus eleifend. Sed sed lacinia mi, sed egestas odio. Integer a congue lectus.', 0, 4, '2017-10-18 00:00:00', '2018-08-23 00:00:00', 'jpg'),
(12, 27, '100.00', 'barb004', NULL, 5, 5, 'Noir', 'Camping', 'Phasellus auctor mattis justo, in semper urna congue eget. Nunc sit amet nunc sed dui fringilla scelerisque a eget sem. Aenean cursus eros vehicula arcu blandit, sit amet faucibus leo finibus. Duis pharetra felis eget viverra tempor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas', 1, 4, '2018-08-20 00:00:00', NULL, 'jpg'),
(13, 13, '49.00', 'brou001', NULL, 25, 5, 'Verte', 'Green', 'Fusce interdum ex justo, vel imperdiet erat volutpat non. Donec et maximus lacus. ', 0, 2, '2018-08-01 00:00:00', NULL, 'jpg'),
(14, 13, '88.00', 'brou002', NULL, 0, 5, 'Argent', 'Silver', 'Pellentesque ultrices vestibulum sagittis.', 1, 2, '2018-08-09 00:00:00', '2018-08-22 00:00:00', 'jpg'),
(15, 13, '54.49', 'brou003', NULL, 3, 5, 'Jaune', 'Yellow', 'Sed lobortis pulvinar orci, ut efficitur urna egestas eu.', 0, 2, '2018-08-12 00:00:00', NULL, 'jpg'),
(16, 2, '19.90', 'GA410', NULL, 50, 5, 'Gris', 'Bêche GA 410', 'Nulla at consequat orci.', 0, 2, '2018-08-13 00:00:00', NULL, 'png'),
(17, 2, '24.90', 'beche002', NULL, 1, 5, 'Argent', 'Bêche GA 388', 'Curabitur varius interdum nulla, sit amet consequat massa. Vestibulum rutrum leo lectus. Phasellus sit amet viverra velit.', 0, 2, '2018-03-15 00:00:00', NULL, 'png'),
(18, 2, '31.19', 'scm0555', NULL, 0, 5, 'Bleue', 'Scie à main SCM0555', 'Pellentesque fermentum ut est sagittis feugiat. Morbi in turpis augue. Maecenas dapibus ligula velit, ac gravida risus imperdiet in.', 0, 2, '2018-08-19 00:00:00', NULL, 'png'),
(19, 2, '14.90', 'scm559', NULL, 4, 5, 'Bleu', 'Scie couteau', 'raesent ante felis, iaculis vitae lectus sed, luctus laoreet metus. Aenean mattis egestas eleifend. Morbi dictum erat ut lorem porta, a volutpat nibh ultrices. Nunc ut tortor ac velit fringilla dictum at non nulla.', 0, 2, '2018-04-13 00:00:00', NULL, 'png'),
(20, 2, '31.19', 'h0662', NULL, 0, 5, 'Noir', 'Hache H062', 'Cras nec dapibus erat. Cras bibendum auctor dui quis tristique.', 0, 2, '2018-08-12 00:00:00', NULL, 'png'),
(21, 11, '599.99', 'DB0703', NULL, 4, 5, 'Bleue', 'Titan', 'Etiam eu sem ligula. Donec aliquet velit a condimentum sagittis. Nullam ipsum augue, porta non vestibulum cursus, eleifend tempor erat. Proin et turpis molestie augue mollis laoreet. Nulla lorem tellus, pellentesque nec hendrerit vehicula, consectetur non nisl. Maecenas eget accumsan lectus. Vivamus eleifend lorem scelerisque augue rutrum laoreet. ', 0, 3, '1999-08-26 00:00:00', NULL, 'png'),
(22, 11, '499.99', 'DB0755', NULL, 0, 5, 'Bleue', 'Attila', 'Là où passe Attila, l\'herbe ne repousse pas.', 0, 3, '2018-05-16 00:00:00', NULL, 'png'),
(23, 28, '12.00', 'LAM121', NULL, 0, 5, 'Rouge', 'Aquitaine', 'Integer aliquet accumsan eleifend. Pellentesque mauris tortor, ultricies a pulvinar ut, fringilla ac mi. Sed consequat, nibh at tempus porttitor, tellus nunc dictum nulla, sed finibus felis augue sed libero. Donec augue mi, mattis et orci ac, mollis feugiat elit.', 0, 2, '2018-03-17 00:00:00', NULL, 'jpg'),
(24, 28, '9.98', 'LAM233', NULL, 500, 5, 'Brun', 'Brown', 'Morbi porta ultricies nibh vel varius. Vestibulum nec rutrum ex, vel posuere nisi. Ut scelerisque sit amet ligula sed imperdiet. Morbi lacinia sapien in elementum iaculis. Vivamus a ultrices enim. ', 0, 2, '2018-03-17 00:00:00', NULL, 'jpg'),
(25, 25, '100.00', 'PRS-01C', NULL, 5, 5, 'Brun', 'Biarritz', 'Quisque fermentum, dui eu elementum sagittis, risus lorem placerat ipsum, vitae venenatis tellus sapien id nibh. Suspendisse et aliquet tellus, in suscipit magna.', 0, 2, '2018-08-19 00:00:00', NULL, 'jpg'),
(26, 25, '605.40', 'PRS-38A', NULL, 4, 5, 'Rose', 'Cannes', 'Curabitur sodales sem vitae ex commodo, in ullamcorper quam congue. Aliquam erat volutpat. Praesent mollis at velit eu molestie. Proin ac tellus a enim venenatis ultrices vitae sed libero. Vivamus at vulputate orci. Curabitur mattis ac turpis id tempus. Sed turpis enim, egestas ac arcu et, elementum luctus ante.', 0, 2, '2018-08-12 00:00:00', NULL, 'jpg'),
(27, 25, '179.97', 'PRS-87F', NULL, 21, 5, 'Rouge', 'Crotoy', 'Morbi porta ultricies nibh vel varius. Vestibulum nec rutrum ex, vel posuere nisi. Ut scelerisque sit amet ligula sed imperdiet. Morbi lacinia sapien in elementum iaculis.', 0, 2, '2018-04-12 00:00:00', '2018-08-21 00:00:00', 'jpg'),
(28, 21, '288.32', 'POT_001', NULL, 11, 5, 'Orange', 'Agave', '. Vivamus a ultrices enim. Etiam at viverra justo. Cras consectetur justo euismod mi maximus, ac tincidunt leo suscipit. Quisque fermentum, dui eu elementum sagittis, risus lorem placerat ipsum, vitae venenatis tellus sapien id nibh.', 0, 1, '2017-11-12 00:00:00', NULL, 'jpg'),
(29, 21, '32.50', 'POT-002', NULL, 45, 5, 'Noir', 'Dark', 'Curabitur sodales sem vitae ex commodo, in ullamcorper quam congue. Aliquam erat volutpat. Praesent mollis at velit eu molestie.', 0, 1, '2018-08-19 00:00:00', NULL, 'jpg'),
(30, 21, '149.97', 'POT_003', NULL, 0, 5, 'Rose', 'Fuschia', 'Vel porta orci convallis. Duis sodales vehicula porta. Etiam sit amet scelerisque massa. ', 0, 1, '2018-03-04 00:00:00', NULL, 'jpg'),
(31, 6, '245.00', 'POT-381', NULL, 10, 5, 'Marron', 'Iris', 'Praesent nunc dui, porta at leo eget, iaculis ultrices quam. Mauris vulputate metus in nisl aliquam, et sollicitudin nisl mollis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ', 0, 1, '2017-04-16 00:00:00', NULL, 'jpg'),
(32, 2, '9.90', 'SEC-A', NULL, 280, 5, 'Orange', 'Bahco', 'In hac habitasse platea dictumst. Quisque at sagittis nunc.', 0, 3, '2018-08-14 00:00:00', NULL, 'jpg'),
(34, 10, '335.00', 'ENH0335', NULL, 1, 5, 'Rouge', 'Einhell', 'Suspendisse congue nibh sed dui commodo sollicitudin. Vestibulum augue eros, accumsan vel vulputate ut, gravida id libero. Nullam sodales urna id nulla porta vestibulum. Aliquam lectus lacus, tincidunt nec metus.', 0, 4, '2018-05-17 00:00:00', NULL, 'jpg'),
(35, 10, '990.00', 'GRIZ_001', NULL, 1, 5, 'Chrome', 'Grizzly', 'luctus aliquet enim. Phasellus quis velit quis tellus pharetra aliquam in at urna. Cras vitae turpis erat. Phasellus libero arcu, fringilla sit amet tempus blandit, congue eu nulla. Morbi id efficitur tellus.', 0, 4, '2018-08-05 00:00:00', '2020-05-05 00:00:00', 'jpg'),
(36, 9, '75.00', 'HERO', NULL, 7, 5, 'Vert', 'Hero', '', 0, 4, '2018-08-13 00:00:00', NULL, 'jpg'),
(37, 9, '120.50', 'SL1280', NULL, 5, 5, 'Vert', 'SL 1280', 'Quisque nec nisi risus. Fusce eu est non velit mollis tristique a et magna. Proin sodales.', 0, 4, '2018-08-05 00:00:00', '2018-08-22 00:00:00', 'jpg'),
(38, 10, '348.00', '6cv', NULL, 2, 5, 'Rouge', 'Red 6CV ', 'uis vehicula risus in nibh lobortis euismod. In hac habitasse platea dictumst. Quisque at sagittis nunc. Phasellus ac gravida lorem. Aliquam sed aliquam nisl. Etiam non ornare sapien.', 0, 4, '2018-08-16 00:00:00', '2018-08-21 00:00:00', 'jpg'),
(39, 10, '497.00', 'TRIKE', NULL, 1, 5, 'Rouge', 'Trike', 'Aenean ut tellus non risus varius bibendum quis vel ligula. ', 0, 4, '2018-08-21 00:00:00', '2018-08-21 10:05:51', 'jpg'),
(41, 9, '49.80', 'ZOOM', NULL, 223, 5, 'Gris', 'Zoom', 'Nunc magna erat, ultrices et facilisis non, viverra in turpis. Nulla orci mi, maximus eu facilisis a, pretium sit amet ex.', 0, 4, '2018-08-13 00:00:00', NULL, 'jpg'),
(42, 16, '1.20', 'Pronto1', NULL, 123, 5, 'Verte', 'Pronto', 'Roquette Pronto. 1400 graines potagères.', 0, 2, '2020-07-21 00:00:00', NULL, 'jpg');

-- --------------------------------------------------------

--
-- Structure de la table `shops`
--

DROP TABLE IF EXISTS `shops`;
CREATE TABLE IF NOT EXISTS `shops` (
  `sho_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sho_name` varchar(26) NOT NULL,
  `sho_address` varchar(100) NOT NULL,
  `sho_zipcode` varchar(5) NOT NULL,
  `sho_city` varchar(26) NOT NULL,
  PRIMARY KEY (`sho_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `shops`
--

INSERT INTO `shops` (`sho_id`, `sho_name`, `sho_address`, `sho_zipcode`, `sho_city`) VALUES
(1, 'Jarditou Siège', '30 rue de Poulainville', '80080', 'Amiens'),
(2, 'JardiAll', '1 rue Marcel Amont', '62000', 'Arras'),
(3, 'Jarditou Compiègne', '789 rue de Picardie', '60200', 'Compiègne');

-- --------------------------------------------------------

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
  KEY `sup_countries_id` (`sup_countries_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `suppliers`
--

INSERT INTO `suppliers` (`sup_id`, `sup_name`, `sup_city`, `sup_countries_id`, `sup_address`, `sup_zipcode`, `sup_contact`, `sup_phone`, `sup_mail`) VALUES
(1, 'Plantage', 'Paris', 'FR', '1 avenue Cyril Hanouna', '75017', 'Nicolas Dujardin', '0102030405', 'contact@plantage.fr'),
(2, 'Jardi+', 'Amiens', 'FR', '200 boulevard Eve Angeli', '80090', 'Mike Anic', '0708091011', 'jardiplus@gmail.com'),
(3, 'Attila', 'Marseille', 'FR', '31 rue Nabilla Benattia', '13000', 'Elle Ephant', '0213141516', 'attila.tondeuses@laposte.net'),
(4, 'Barbeuc', 'Narbonne', 'FR', '56 avenue Donald Trump', '11000', 'Gérard Menfaim', '0512345678', 'sales@barbeuc.com'),
(5, 'FOURNIRIEN', 'Shangaï', 'CN', '112 rue de Pékin', '340', 'Chang Li', '0102030405', 'chang.li@fournirien.cn');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`cat_parent_id`) REFERENCES `categories` (`cat_id`);

--
-- Contraintes pour la table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `ibfk_customers_countries` FOREIGN KEY (`cus_countries_id`) REFERENCES `countries` (`cou_id`);

--
-- Contraintes pour la table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`emp_superior_id`) REFERENCES `employees` (`emp_id`),
  ADD CONSTRAINT `employees_ibfk_2` FOREIGN KEY (`emp_pos_id`) REFERENCES `posts` (`pos_id`),
  ADD CONSTRAINT `employees_ibfk_3` FOREIGN KEY (`emp_sho_id`) REFERENCES `shops` (`sho_id`),
  ADD CONSTRAINT `employees_ibfk_4` FOREIGN KEY (`emp_dep_id`) REFERENCES `departments` (`dep_id`);

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`ord_cus_id`) REFERENCES `customers` (`cus_id`);  

--
-- Contraintes pour la table `orders_details`
--
ALTER TABLE `orders_details`
  ADD CONSTRAINT `orders_details_ibfk_1` FOREIGN KEY (`ode_ord_id`) REFERENCES `orders` (`ord_id`),
  ADD CONSTRAINT `orders_details_ibfk_2` FOREIGN KEY (`ode_pro_id`) REFERENCES `products` (`pro_id`);

--
-- Contraintes pour la table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`pro_sup_id`) REFERENCES `suppliers` (`sup_id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`pro_cat_id`) REFERENCES `categories` (`cat_id`);

--
-- Contraintes pour la table `suppliers`
--
ALTER TABLE `suppliers`
  ADD CONSTRAINT `suppliers_ibfk_1` FOREIGN KEY (`sup_countries_id`) REFERENCES `countries` (`cou_id`);
COMMIT;

DROP TABLE IF EXISTS `commander_articles`;
CREATE TABLE IF NOT EXISTS `commander_articles` (
  `codart` int(10) NOT NULL,
  `qte` int(10) NOT NULL,
  `datec` Date NOT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
