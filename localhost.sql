-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Дек 10 2020 г., 07:30
-- Версия сервера: 10.3.22-MariaDB-log
-- Версия PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `1347489`
--
CREATE DATABASE IF NOT EXISTS `1347489` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `1347489`;

-- --------------------------------------------------------

--
-- Структура таблицы `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `entitytype` int(11) DEFAULT NULL,
  `entityid` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `address2` varchar(150) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `postcode` varchar(20) DEFAULT NULL,
  `comment` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `address`
--

INSERT INTO `address` (`id`, `entitytype`, `entityid`, `type`, `address`, `address2`, `city`, `postcode`, `comment`) VALUES
(1, 0, 1, 0, '77 Oak Street', '', 'Newark', '16411', ''),
(2, 0, 17, 0, '92 Maple Street', '', 'Odessa', '14562', ''),
(3, 0, 2, 0, '65 Main Road', '', 'Washington DC', '12345', ''),
(4, 0, 10, 0, '56 Maple Street', '', 'Newark', '16524', ''),
(5, 0, 5, 0, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `bin`
--

CREATE TABLE `bin` (
  `id` int(11) NOT NULL,
  `locationid` int(11) DEFAULT NULL,
  `zoneid` int(11) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `adjustment_bin` tinyint(4) DEFAULT 0,
  `bintype` int(11) DEFAULT NULL,
  `block_movement` tinyint(4) DEFAULT 0,
  `binranking` int(11) DEFAULT NULL,
  `maximum_cubage` decimal(10,3) DEFAULT NULL,
  `maximum_weight` decimal(10,3) DEFAULT NULL,
  `empty` tinyint(4) DEFAULT 0,
  `cross_docking_bin` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bin`
--

INSERT INTO `bin` (`id`, `locationid`, `zoneid`, `code`, `description`, `adjustment_bin`, `bintype`, `block_movement`, `binranking`, `maximum_cubage`, `maximum_weight`, `empty`, `cross_docking_bin`) VALUES
(1, 1, 1, 'A1', 'Place A1', 1, 5, 0, NULL, NULL, NULL, 0, 0),
(2, 1, 4, 'B-01-0001', '', 0, 2, 0, NULL, NULL, NULL, 0, 0),
(3, 1, 4, 'B-01-0002', '', 0, 3, 0, NULL, NULL, NULL, 0, 0),
(4, 1, 4, 'B-01-0003', '', 0, 3, 0, NULL, NULL, NULL, 0, 0),
(5, 1, 4, 'B-02-0001', '', 0, 3, 0, NULL, NULL, NULL, 0, 0),
(6, 1, 4, 'B-02-0002', '', 0, 3, 0, NULL, NULL, NULL, 0, 0),
(7, 1, 4, 'B-02-0003', '', 0, 3, 0, NULL, NULL, NULL, 0, 0),
(8, 1, 4, 'B-03-0001', '', 0, 3, 0, NULL, NULL, NULL, 0, 0),
(9, 1, 4, 'B-03-0002', '', 0, 3, 0, NULL, NULL, NULL, 0, 0),
(10, 1, 4, 'B-03-0003', '', 0, 3, 0, NULL, NULL, NULL, 0, 0),
(11, 1, 4, 'B-04-0001', '', 0, 2, 0, NULL, NULL, NULL, 0, 0),
(12, 1, 4, 'B-04-0002', '', 0, 2, 0, NULL, NULL, NULL, 0, 0),
(13, 1, 4, 'B-04-0003', '', 0, 2, 0, NULL, NULL, NULL, 0, 0),
(14, 1, 4, 'B-04-0004', '', 0, 2, 0, NULL, NULL, NULL, 0, 0),
(15, 1, 4, 'B-04-0005', '', 0, 2, 0, NULL, NULL, NULL, 0, 0),
(16, 1, 4, 'B-04-0006', '', 0, 2, 0, NULL, NULL, NULL, 0, 0),
(17, 1, 4, 'B-04-0007', '', 0, 2, 0, NULL, NULL, NULL, 0, 0),
(18, 1, 4, 'B-04-0008', '', 0, 2, 0, NULL, NULL, NULL, 0, 0),
(19, 1, 4, 'B-04-0009', '', 0, 2, 0, NULL, NULL, NULL, 0, 0),
(20, 1, 4, 'B-04-0010', '', 0, 2, 0, NULL, NULL, NULL, 0, 0),
(21, 1, 4, 'B-04-0011', '', 0, 2, 0, NULL, NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `bincontent`
--

CREATE TABLE `bincontent` (
  `id` int(11) NOT NULL,
  `locationid` int(11) DEFAULT NULL,
  `zoneid` int(11) DEFAULT NULL,
  `binid` int(11) DEFAULT NULL,
  `itemid` int(11) DEFAULT NULL,
  `quantity` decimal(10,0) DEFAULT NULL,
  `uom` int(11) DEFAULT NULL,
  `quantity_per_uom` decimal(10,0) DEFAULT NULL,
  `max_quantity` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bintypes`
--

CREATE TABLE `bintypes` (
  `id` int(11) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `receive` tinyint(4) DEFAULT 0,
  `ship` tinyint(4) DEFAULT 0,
  `put_away` tinyint(4) DEFAULT 0,
  `pick` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bintypes`
--

INSERT INTO `bintypes` (`id`, `code`, `description`, `receive`, `ship`, `put_away`, `pick`) VALUES
(1, 'PICK', 'Pick', 0, 0, 0, 1),
(2, 'PUT AWAY', 'Put Away type', 0, 0, 1, 0),
(3, 'PUTPICK', 'Put Away and Pick', 0, 0, 1, 1),
(4, 'QC', 'No type', 0, 0, 0, 0),
(5, 'RECEIVE', 'Receive type', 1, 0, 0, 0),
(6, 'SHIP', 'Ship type', 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `cause_of_absence`
--

CREATE TABLE `cause_of_absence` (
  `id` int(11) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cause_of_absence`
--

INSERT INTO `cause_of_absence` (`id`, `code`, `description`) VALUES
(1, 'DAYOFF', 'Day Off'),
(2, 'HOLIDAY', 'Holiday'),
(3, 'SICK', 'Sick');

-- --------------------------------------------------------

--
-- Структура таблицы `company_info`
--

CREATE TABLE `company_info` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `postcode` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `phone2` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `bank_name` varchar(45) DEFAULT NULL,
  `giro_no` varchar(45) DEFAULT NULL,
  `bank_branch_no` varchar(45) DEFAULT NULL,
  `bank_account_no` varchar(45) DEFAULT NULL,
  `payment_routing_no` varchar(45) DEFAULT NULL,
  `vat_registration_no` varchar(45) DEFAULT NULL,
  `ship_to_name` varchar(200) DEFAULT NULL,
  `ship_to_address` varchar(200) DEFAULT NULL,
  `ship_to_city` varchar(45) DEFAULT NULL,
  `ship_to_postcode` varchar(45) DEFAULT NULL,
  `iban` varchar(45) DEFAULT NULL,
  `swift_code` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `company_info`
--

INSERT INTO `company_info` (`id`, `name`, `address`, `city`, `postcode`, `phone`, `phone2`, `email`, `bank_name`, `giro_no`, `bank_branch_no`, `bank_account_no`, `payment_routing_no`, `vat_registration_no`, `ship_to_name`, `ship_to_address`, `ship_to_city`, `ship_to_postcode`, `iban`, `swift_code`) VALUES
(1, 'Example International LTD', '5 The Ring, Westminster', 'London', 'GB-W2 8HG', '0777-555-6666', '', 'contact@example.com', 'World Wide Bank', '888-9999', 'BG99999', '99-99-888', '99-99-999', 'GB777777777', 'Example International LTD', '5 The Ring, Westminster', 'London', 'GB-W2 8HG', 'GB 12 CPBK 08929965044991', '');

-- --------------------------------------------------------

--
-- Структура таблицы `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `intrastatcode` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `country`
--

INSERT INTO `country` (`id`, `name`, `code`, `intrastatcode`) VALUES
(1, 'Russia', 'RU', 'RU'),
(2, 'Kazakhstan', 'KZ', ''),
(3, 'USA', 'US', 'US'),
(4, 'Ukraine', 'UA', '');

-- --------------------------------------------------------

--
-- Структура таблицы `crm_contacts`
--

CREATE TABLE `crm_contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `company` int(11) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `address 2` varchar(200) DEFAULT NULL,
  `contact_type` int(11) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `vat_no` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `crm_contacts`
--

INSERT INTO `crm_contacts` (`id`, `name`, `company`, `phone`, `email`, `address`, `address 2`, `contact_type`, `comments`, `city`, `vat_no`) VALUES
(1, 'The Cannon Group PLC', 1, NULL, 'the.cannon.group.plc@example.net', '192 Market Square', '', 1, NULL, 'Birmingham', '789456278'),
(2, 'Selangorian Ltd.', 2, NULL, 'selangorian.ltd@example.net', '153 Thomas Drive', '', 1, NULL, 'Coventry', '254687456'),
(3, 'John Haddock Insurance Co.', 3, NULL, 'john.haddock.insurance.co@example.net', '10 High Tower Green', '', 1, NULL, 'Manchester', '533435789'),
(4, 'Deerfield Graphics Company', 4, NULL, 'deerfield.graphics.company@example.net', '10 Deerfield Road', '', 1, NULL, 'Gloucester', '733495789'),
(5, 'Guildford Water Department', 5, NULL, 'guildford.water.department@example.net', '25 Water Way', '', 1, NULL, 'Guildford', '582048936'),
(6, 'Spotsmeyer\'s Furnishings', 6, NULL, 'spotsmeyer\'s.furnishings@example.net', '612 South Sunset Drive', '', 1, NULL, 'Miami', ''),
(7, 'Progressive Home Furnishings', 7, NULL, 'progressive.home.furnishings@example.net', '3000 Roosevelt Blvd.', '', 1, NULL, 'Chicago', ''),
(8, 'New Concepts Furniture', 8, NULL, 'new.concepts.furniture@example.net', '705 West Peachtree Street', '', 1, NULL, 'Atlanta', ''),
(9, 'Candoxy Canada Inc.', 9, NULL, 'candoxy.canada.inc@example.net', '18 Cumberland Street', '', 1, NULL, 'Thunder Bay', ''),
(10, 'Elkhorn Airport', 10, NULL, 'elkhorn.airport@example.net', '105 Buffalo Dr.', '', 1, NULL, 'Elkhorn', ''),
(11, 'London Candoxy Storage Campus', 11, NULL, 'london.candoxy.storage.campus@example.net', '120 Wellington Rd.', '', 1, NULL, 'London', ''),
(12, 'Metatorad Malaysia Sdn Bhd', 12, NULL, 'metatorad.malaysia.sdn.bhd@example.net', 'No 16M Jalan SS22', 'Damansara Utama', 1, NULL, 'PETALING JAYA, Selangor', ''),
(13, 'Highlights Electronics Sdn Bhd', 13, NULL, 'highlights.electronics.sdn.bhd@example.net', '28 Ground Floor, 1 Jalan 3/26', 'Bandar Baru Sri Petalang', 1, NULL, 'KUALA LUMPUR', ''),
(14, 'TraxTonic Sdn Bhd', 14, NULL, 'traxtonic.sdn.bhd@example.net', 'Sama Jaya Free Industrial Zone', '', 1, NULL, 'KUCHING, Sarawak', ''),
(15, 'Somadis', 15, NULL, 'somadis@example.net', '37, Rue El Wahda', '', 1, NULL, 'AGDAL-RABAT', ''),
(16, 'Maronegoce', 16, NULL, 'maronegoce@example.net', '21, Boulevard de la Nation', '', 1, NULL, 'CASABLANCA', ''),
(17, 'ElectroMAROC', 17, NULL, 'electromaroc@example.net', '11, Avenue des FAR', '', 1, NULL, 'TEMARA', ''),
(18, 'Zanlan Corp.', 18, NULL, 'zanlan.corp@example.net', '2 Beta Street', '', 1, NULL, 'Carletonville', ''),
(19, 'Karoo Supermarkets', 19, NULL, 'karoo.supermarkets@example.net', '38 Voortrekker Street', '', 1, NULL, 'Bloemfontein', ''),
(20, 'Durbandit Fruit Exporters', 20, NULL, 'durbandit.fruit.exporters@example.net', '100 St. George\'s Mall', 'Westmead', 1, NULL, 'Durban', ''),
(21, 'Woonboulevard Kuitenbrouwer', 21, NULL, 'woonboulevard.kuitenbrouwer@example.net', 'Industrieweg 11', '', 1, NULL, 'Zutphen', '159753258B46'),
(22, 'Meersen Meubelen', 22, NULL, 'meersen.meubelen@example.net', 'Vijfpoortenweg 71', '', 1, NULL, 'Arnhem', '852122584B75'),
(23, 'Candoxy Nederland BV', 23, NULL, 'candoxy.nederland.bv@example.net', 'Westzijdewal 123', '', 1, NULL, 'Amsterdam', '456124966B25'),
(24, 'Nieuwe Zandpoort NV', 24, NULL, 'nieuwe.zandpoort.nv@example.net', 'Nieuwstraat 28', '', 1, NULL, 'Herentals', '456456456'),
(25, 'Antarcticopy', 25, NULL, 'antarcticopy@example.net', 'Katwilgweg 274', '', 1, NULL, 'Antwerpen', '778998789'),
(26, 'Lovaina Contractors', 26, NULL, 'lovaina.contractors@example.net', 'Vuurberg 137', '', 1, NULL, 'Leuven', '456123456'),
(27, 'Francematic', 27, NULL, 'francematic@example.net', '19 Boulevard Commanderie', '', 1, NULL, 'ISLES LES VILLENOY', ''),
(28, 'Parmentier Boutique', 28, NULL, 'parmentier.boutique@example.net', '34 Avenue Parmentier', '', 1, NULL, 'PARIS', ''),
(29, 'Livre Importants', 29, NULL, 'livre.importants@example.net', '46 Rue Orteaux', '', 1, NULL, 'ESBLY', ''),
(30, 'Libros S.A.', 30, NULL, 'libros.sa@example.net', 'Plaza Redonda 12', '', 1, NULL, 'Barcelona', '08208612T'),
(31, 'Corporacion Beta', 31, NULL, 'corporacion.beta@example.net', 'Avda. Europa 2', '', 1, NULL, 'Valencia', '46145456T'),
(32, 'Diseno industrial', 32, NULL, 'diseno.industrial@example.net', 'c/ Paz 5', '', 1, NULL, 'Madrid', '28012001T'),
(33, 'Bilabankinn', 33, NULL, 'bilabankinn@example.net', 'Skemmuvegur 4', '', 1, NULL, 'Kopavogur', ''),
(34, 'Gagn & Gaman', 34, NULL, 'gagn.gaman@example.net', 'Reykjavikurvegi 66', '', 1, NULL, 'Hafnafjordur', ''),
(35, 'Heimilisprydi', 35, NULL, 'heimilisprydi@example.net', 'Hallarmula', '', 1, NULL, 'Reykjavik', ''),
(36, 'MEMA Ljubljana d.o.o.', 36, NULL, 'mema.ljubljana.doo@example.net', 'Slovenska ccsta 127', '', 1, NULL, 'Ljubljana', ''),
(37, 'EXPORTLES d.o.o.', 37, NULL, 'exportles.doo@example.net', 'Zvornarska ulica 5', '', 1, NULL, 'Ljubljana', ''),
(38, 'Centromerkur d.o.o.', 38, NULL, 'centromerkur.doo@example.net', 'Tabor 23', '', 1, NULL, 'Maribor', ''),
(39, 'Sonnmatt Design', 39, NULL, 'sonnmatt.design@example.net', 'Sonnmattstrasse 5', '', 1, NULL, 'Glattbrugg', '121 411'),
(40, 'Pilatus AG', 40, NULL, 'pilatus.ag@example.net', 'Bergstrasse 12', '', 1, NULL, 'Luzern', '208 612'),
(41, 'Mobel Scherrer AG', 41, NULL, 'mobel.scherrer.ag@example.net', 'Rheinstrasse 2', '', 1, NULL, 'Schaffhausen', '145 456'),
(42, 'BYT-KOMPLET s.r.o.', 42, NULL, 'byt-komplet.sro@example.net', 'V.Nezvala 5', '', 1, NULL, 'Bojkovice', ''),
(43, 'J & V v.o.s.', 43, NULL, 'j.v.vos@example.net', 'Fillova 128', '', 1, NULL, 'Vracov', ''),
(44, 'PLECHKONSTRUKT a.s.', 44, NULL, 'plechkonstrukt.as@example.net', 'Loosova 14', '', 1, NULL, 'Znojmo', ''),
(45, 'Designstudio Gmunden', 45, NULL, 'designstudio.gmunden@example.net', 'Seepromenade 1b', '', 1, NULL, 'Gmunden', 'ATU89759098'),
(46, 'Michael Feit - Mobelhaus', 46, NULL, 'michael.feit.mobelhaus@example.net', 'Strasse 33, Obj. 11', '', 1, NULL, 'Wr. Neudorf', 'ATU72660458'),
(47, 'Mobel Siegfried', 47, NULL, 'mobel.siegfried@example.net', 'Raxstrasse 47', '', 1, NULL, 'Wien', 'ATU12456832'),
(48, 'Zuni Home Crafts Ltd.', 48, NULL, 'zuni.home.crafts.ltd@example.net', '456 Main Street', '', 1, NULL, 'Dudley', '879132357'),
(49, 'Afrifield Corporation', 49, NULL, 'afrifield.corporation@example.net', '100 Maidstone Ave.', '', 1, NULL, 'Maidstone', '609458790'),
(50, 'London Light Company', 50, NULL, 'london.light.company@example.net', '235 Peachtree Street', '', 1, NULL, 'Cambridge', '748863386'),
(51, 'Candoxy Kontor A/S', 51, NULL, 'candoxy.kontor.as@example.net', 'Carl Blochs Gade 7', '', 1, NULL, 'Orhus C', '78945612'),
(52, 'Carl Anthony', 52, NULL, 'carl.anthony@example.net', 'De Mezas Plads 917B', '', 1, NULL, 'Orhus C', '44495666'),
(53, 'Ravel Mobler', 53, NULL, 'ravel.mobler@example.net', 'Parkvej 44', '', 1, NULL, 'Nyborg', '12345679'),
(54, 'Lauritzen Kontormobler A/S', 54, NULL, 'lauritzen.kontormobler.as@example.net', 'Jomfru Ane Gade 56', '', 1, NULL, 'Aalborg', '63254178'),
(55, 'Marsholm Karmstol', 55, NULL, 'marsholm.karmstol@example.net', 'Tylo Fackhandel', '', 1, NULL, 'Halmstad', '999999999901'),
(56, 'Konberg Tapet AB', 56, NULL, 'konberg.tapet.ab@example.net', 'Linnegatan 15', '', 1, NULL, 'Jonkobing', '888888888801'),
(57, 'Englunds Kontorsmobler AB', 57, NULL, 'englunds.kontorsmobler.ab@example.net', 'Kungsgatan 18', '', 1, NULL, 'Norrkobing', '777777777701'),
(58, 'Slubrevik Senger AS', 58, NULL, 'slubrevik.senger.as@example.net', 'Storgt. 5', '', 1, NULL, 'Asker', ''),
(59, 'Klubben', 59, NULL, 'klubben@example.net', 'Skogveien 3', '', 1, NULL, 'Haslum', ''),
(60, 'Sjoboden', 60, NULL, 'sjoboden@example.net', 'Ytre Sandgt. 13', '', 1, NULL, 'Sandvika', ''),
(61, 'Beef House', 61, NULL, 'beef.house@example.net', 'Sudermarkt 6', '', 1, NULL, 'Dusseldorf', '632541794'),
(62, 'Autohaus Mielberg KG', 62, NULL, 'autohaus.mielberg.kg@example.net', 'Porschestrasse 911', '', 1, NULL, 'Hamburg 36', '525252141'),
(63, 'Hotel Pferdesee', 63, NULL, 'hotel.pferdesee@example.net', 'Plett Strasse 187', '', 1, NULL, 'Frankfurt/Main', '963963963'),
(64, 'London Postmaster', 64, NULL, 'london.postmaster@example.net', '10 North Lake Avenue', '', 1, NULL, 'London', '895741963'),
(65, 'AR Day Property Management', 65, NULL, 'ar.day.property.management@example.net', '100 Day Drive', '', 1, NULL, 'Guildford', '274863274'),
(66, 'CoolWood Technologies', 66, NULL, 'coolwood.technologies@example.net', '33 Hitech Drive', '', 1, NULL, 'Portsmouth', '697528465'),
(67, 'Lewis Home Furniture', 67, NULL, 'lewis.home.furniture@example.net', '51 Radcroft Road', '', 1, NULL, 'Gainsborough', '197548769'),
(68, 'Service Electronics Ltd.', 68, NULL, 'service.electronics.ltd@example.net', '172 Field Green', '', 1, NULL, 'Watford', '295267495'),
(69, 'Progressive Home Furnishings', 69, NULL, 'progressive.home.furnishings@example.net', '222 Reagan Drive', '', 1, NULL, 'Columbia', ''),
(70, 'Custom Metals Incorporated', 70, NULL, 'custom.metals.incorporated@example.net', '640 Nixon Blvd.', '', 1, NULL, 'Birmingham', ''),
(71, 'American Wood Exports', 71, NULL, 'american.wood.exports@example.net', '723 North Hampton Drive', '', 1, NULL, 'New York', ''),
(72, 'Mundersand Corporation', 72, NULL, 'mundersand.corporation@example.net', '21 W. Arthur St.', '', 1, NULL, 'Thunder Bay', ''),
(73, 'NewCaSup', 73, NULL, 'newcasup@example.net', '12002 Simcoe St.', '', 1, NULL, 'Toronto', ''),
(74, 'OakvilleWorld', 74, NULL, 'oakvilleworld@example.net', '1 Sherwood Heights Dr.', '', 1, NULL, 'Oakville', ''),
(75, 'Malay-Dan Export Unit Sdn Bhd', 75, NULL, 'malay-dan.export.unit.sdn.bhd@example.net', '12, Jalan Ampang', '', 1, NULL, 'AMPANG, Kuala Lumpur', ''),
(76, 'KDHSL99 Sdn Bhd', 76, NULL, 'kdhsl99.sdn.bhd@example.net', '220, Jalan Limbongan', '', 1, NULL, 'PELABUHAN KLANG, Selangor', ''),
(77, 'Tengah Butong Sdn Bhd', 77, NULL, 'tengah.butong.sdn.bhd@example.net', '4KM Jalan Tuaran', '', 1, NULL, 'KOTA KINABALU, Sabah', ''),
(78, 'Texpro Maroc', 78, NULL, 'texpro.maroc@example.net', '1, Rue la rennaissance', '', 1, NULL, 'CASABLANCA', ''),
(79, 'Top Bureau', 79, NULL, 'top.bureau@example.net', '26, Rue Ahmed Faris', '', 1, NULL, 'KASBAH TANGER', ''),
(80, 'Comacycle', 80, NULL, 'comacycle@example.net', '38, Rue Ahmed Arabi', '', 1, NULL, 'MOHAMMEDIA', ''),
(81, 'Big 5 Video', 81, NULL, 'big.5.video@example.net', '32 Railway Street', '', 1, NULL, 'Richards Bay', ''),
(82, 'Jewel Gold Mine', 82, NULL, 'jewel.gold.mine@example.net', '24 Kempston Rd.', '', 1, NULL, 'Johannesburg', ''),
(83, 'Mountain Fisheries', 83, NULL, 'mountain.fisheries@example.net', '12 Curcuit Road', 'Mountain House', 1, NULL, 'Cape Town', ''),
(84, 'Houtindustrie Bruynsma', 84, NULL, 'houtindustrie.bruynsma@example.net', 'Havenweg 92', '', 1, NULL, 'Zaandam', '456789123B56'),
(85, 'Koekamp Leerindustrie', 85, NULL, 'koekamp.leerindustrie@example.net', 'Looiersdreef 19-27', '', 1, NULL, 'Waalwijk', '789455789B30'),
(86, 'Beekhuysen BV', 86, NULL, 'beekhuysen.bv@example.net', 'Mergelland 4', '', 1, NULL, 'Apeldoorn', '453218925B23'),
(87, 'Groene Kater BVBA', 87, NULL, 'groene.kater.bvba@example.net', 'Stationstraat 12', '', 1, NULL, 'Humbeek', '123123789'),
(88, 'PURE-LOOK', 88, NULL, 'pure-look@example.net', 'Parklaan 3', '', 1, NULL, 'Mechelen', '654654789'),
(89, 'VELUX', 89, NULL, 'velux@example.net', 'Boomgaardstraat 55', '', 1, NULL, 'Kortrijk', '321321654'),
(90, 'Club Euroamis', 90, NULL, 'club.euroamis@example.net', '16 Rue de Berri', '', 1, NULL, 'LA CHAPELLE BAS MER', ''),
(91, 'Belle et Belle', 91, NULL, 'belle.et.belle@example.net', '34 Rue du Dome', '', 1, NULL, 'CASSEL', ''),
(92, 'Aranteaux Aliments', 92, NULL, 'aranteaux.aliments@example.net', '3 Rue Grande', '', 1, NULL, 'LA LONDE LES MAURES', ''),
(93, 'Importaciones S.A.', 93, NULL, 'importaciones.sa@example.net', 'Av. Palmeras 5', '', 1, NULL, 'Alicante', '03121299T'),
(94, 'Subacqua', 94, NULL, 'subacqua@example.net', 'c/ Neptuno 18', '', 1, NULL, 'Salamanca', '37030758T'),
(95, 'Transporte Roas', 95, NULL, 'transporte.roas@example.net', 'Pol. Ind. 4', '', 1, NULL, 'Palma Mallorca', '07472486T'),
(96, 'Husplast HF', 96, NULL, 'husplast.hf@example.net', 'Dalvegi 24', '', 1, NULL, 'Reykjavik', ''),
(97, 'Hurdir HF', 97, NULL, 'hurdir.hf@example.net', 'Skeifunni 13', '', 1, NULL, 'Reykjavik', ''),
(98, 'Huslagnir', 98, NULL, 'huslagnir@example.net', 'Rangarseli 20', '', 1, NULL, 'Reykjavik', ''),
(99, 'IVERKA POHISTVO d.o.o.', 99, NULL, 'iverka.pohistvo.doo@example.net', 'Industrijska c.15', '', 1, NULL, 'Kranj', ''),
(100, 'Topol Slovenija d.o.o.', 100, NULL, 'topol.slovenija.doo@example.net', 'Ferkova ulica 4', '', 1, NULL, 'Kranj', ''),
(101, 'POIIORLES d.d.', 101, NULL, 'poiiorles.dd@example.net', 'Cankarjeva 17', '', 1, NULL, 'Koper', ''),
(102, 'Kradolf Zimmerdecke AG', 102, NULL, 'kradolf.zimmerdecke.ag@example.net', 'Erlenstrasse 5', '', 1, NULL, 'Immensee', '111 205'),
(103, 'Matter Transporte', 103, NULL, 'matter.transporte@example.net', 'Industrie', '', 1, NULL, 'Pratteln', '472 486'),
(104, 'Technische Betriebe Rotkreuz', 104, NULL, 'technische.betriebe.rotkreuz@example.net', 'Seedamm 18', '', 1, NULL, 'Rotkreuz', '255 744'),
(105, 'UP Ostrov s.p.', 105, NULL, 'up.ostrov.sp@example.net', 'Mayerova 12', '', 1, NULL, 'Olomouch', ''),
(106, 'TON s.r.o.', 106, NULL, 'ton.sro@example.net', 'Krausova 125', '', 1, NULL, 'Kyjov', ''),
(107, 'Mach & spol. v.o.s.', 107, NULL, 'mach.spol.vos@example.net', 'T.G. Masaryka 15', '', 1, NULL, 'Blansko', ''),
(108, 'Sugewerk Mittersill', 108, NULL, 'sagewerk.mittersill@example.net', 'Ortstrasse 12', '', 1, NULL, 'Mittersill', 'ATU32334456'),
(109, 'Paul Brettschneider KG', 109, NULL, 'paul.brettschneider.kg@example.net', 'Am Bahndamm 68', '', 1, NULL, 'Murau', 'ATU32336677'),
(110, 'Beschluge Schacherhuber', 110, NULL, 'beschlage.schacherhuber@example.net', 'Fabrikstrasse 24', '', 1, NULL, 'Wien', 'ATU32337789'),
(111, 'WoodMart Supply Co.', 111, NULL, 'woodmart.supply.co@example.net', '12 Industrial Heights', '', 1, NULL, 'Stratford', '741852963'),
(112, 'Mortimor Car Company', 112, NULL, 'mortimor.car.company@example.net', '43 Industrial Heights', '', 1, NULL, 'Stratford', '741852979'),
(113, 'Boybridge Tool Mart', 113, NULL, 'boybridge.tool.mart@example.net', '8 Grovenors Park', '', 1, NULL, 'London', '279425763'),
(114, 'Furniture Industries', 114, NULL, 'furniture.industries@example.net', '23 Charington Cresent', '', 1, NULL, 'Edinburgh', '796385274'),
(115, 'Lyselette Lamper A/S', 115, NULL, 'lyselette.lamper.as@example.net', 'Nyborgvej 566', '', 1, NULL, 'Odense C', '63524152'),
(116, 'Busterby Stole og Borde A/S', 116, NULL, 'busterby.stole.og.borde.as@example.net', 'Havnevej 6', '', 1, NULL, 'Kuge', '52147896'),
(117, 'Ahornby Hvidevare A/S', 117, NULL, 'ahornby.hvidevare.as@example.net', 'Ndr. Frihavnsgade 45', '', 1, NULL, 'Kobenhavn', '78963258'),
(118, 'Kinnareds Troindustri AB', 118, NULL, 'kinnareds.traindustri.ab@example.net', 'Stordal Torslunda', '', 1, NULL, 'Kinnared', '666666666601'),
(119, 'Viksjo Snickerifabrik AB', 119, NULL, 'viksjo.snickerifabrik.ab@example.net', 'Sjohagsgatan 7', '', 1, NULL, 'Sundsvall', '555555555501'),
(120, 'Svensk Mobeltextil AB', 120, NULL, 'svensk.mobeltextil.ab@example.net', 'Nyongsvogen 14', '', 1, NULL, 'Goteborg', '444444444401'),
(121, 'Mobelhuset AS', 121, NULL, 'mobelhuset.as@example.net', 'Vivendelveien 17', '', 1, NULL, 'Ski', ''),
(122, 'Stilmobler as', 122, NULL, 'stilmobler.as@example.net', 'Thv. Meyersgt. 34', '', 1, NULL, 'Oslo', ''),
(123, 'Monabekken Barnesenger A/S', 123, NULL, 'monabekken.barnesenger.as@example.net', 'Ostensjoveien 27', '', 1, NULL, 'Oslo', ''),
(124, 'VAG - Jorgensen', 124, NULL, 'vag.jurgensen@example.net', 'Suderweg 15', '', 1, NULL, 'Hamburg', '521478963'),
(125, 'KKA Buromaschinen Gmbh', 125, NULL, 'kka.buromaschinen.gmbh@example.net', 'Immermannstrasse 92', '', 1, NULL, 'Landsberg am Lech', '456123985'),
(126, 'JB-Spedition', 126, NULL, 'jb-spedition@example.net', 'Grunfahrtsweg 20', '', 1, NULL, 'Munchen', '125874259'),
(127, 'Giro Bank', 127, NULL, 'giro.bank@example.net', '2 Bridge Street', '', 1, NULL, 'London', ''),
(128, 'New Bank of London', 128, NULL, 'new.bank.of.london@example.net', '4 Baker Street', '', 1, NULL, 'London', ''),
(129, 'World Wide Bank', 129, NULL, 'world.wide.bank@example.net', '1 High Holborn', '', 1, NULL, 'London', ''),
(130, 'World Wide Bank', 130, NULL, 'world.wide.bank@example.net', '1 High Holborn', '', 1, NULL, 'London', ''),
(131, 'World Wide Bank', 131, NULL, 'world.wide.bank@example.net', '1 High Holborn', '', 1, NULL, 'London', ''),
(132, 'Blanemark Hifi Shop', 132, NULL, 'Blanemark.Hifi.Shop@example.net', '28 Baker Street', '', 1, NULL, 'London', ''),
(133, 'Fairway Sound', 133, NULL, 'Fairway.Sound@example.net', '159 Fairway', '', 1, NULL, 'London', ''),
(134, 'The Device Shop', 134, NULL, 'The.Device.Shop@example.net', '273 Basin Street', '', 1, NULL, 'London', ''),
(135, 'Grassblue Ltd.', 135, NULL, 'Grassblue.Ltd.@example.net', '8 One Way', '', 1, NULL, 'London', ''),
(136, 'Electronics Ltd.', 136, NULL, 'Electronics.Ltd.@example.net', '354 Oxford Street', '', 1, NULL, 'London', ''),
(137, 'WalkerHolland', 137, NULL, 'WalkerHolland@example.net', '116 Kensington Road', '', 1, NULL, 'London', ''),
(138, 'CP Consumer Template', 138, NULL, 'CP.Consumer.Template@example.net', '', '', 1, NULL, '', ''),
(139, 'CP Customer Template', 139, NULL, 'CP.Customer.Template@example.net', '', '', 1, NULL, '', ''),
(140, 'Carl Anthony', 52, '', 'carl.anthony@example.net', '', '', 2, NULL, '', ''),
(141, 'l', NULL, 'lk', 'Annette.Hill@example.net', '', '', 2, NULL, '', ''),
(142, 'Bart Duncan', NULL, NULL, 'Bart.Duncan@example.net', '5 The Ring', 'Westminster', 2, NULL, 'London', ''),
(143, 'Debra L. Core', NULL, NULL, 'Debra.L..Core@example.net', '5 The Ring', 'Westminster', 2, NULL, 'London', ''),
(144, 'John Roberts', NULL, NULL, 'John.Roberts@example.net', '5 The Ring', 'Westminster', 2, NULL, 'London', ''),
(145, 'Linda Martin', NULL, NULL, 'Linda.Martin@example.net', '5 The Ring', 'Westminster', 2, NULL, 'London', ''),
(146, 'Mary A. Dempsey', NULL, NULL, 'Mary.A..Dempsey@example.net', '5 The Ring', 'Westminster', 2, NULL, 'London', ''),
(147, 'Peter Saddow', NULL, NULL, 'Peter.Saddow@example.net', '5 The Ring', 'Westminster', 2, NULL, 'London', ''),
(148, 'Richard Lum', NULL, NULL, 'Richard.Lum@example.net', '5 The Ring', 'Westminster', 2, NULL, 'London', ''),
(149, 'Consumer template', NULL, NULL, 'Consumer.template@example.net', '', '', 2, NULL, '', ''),
(150, 'Standard Contact template', NULL, NULL, 'Standard.Contact.template@example.net', '', '', 2, NULL, '', ''),
(151, 'Eco Office Inc.', 151, NULL, 'eco.office.inc@example.net', 'Sgt. Millers Dirve', '', 1, NULL, 'Chicago', ''),
(152, 'Christie Moon', 151, '', 'christie.moon@example.net', '', '', 2, NULL, '', ''),
(153, 'Capital Office Furnishings', 153, NULL, 'capital.office.furnishings@example.net', '220 Richdale Ave', '', 1, NULL, 'New York', ''),
(154, 'Ergonomic Office Systems', 154, NULL, 'ergonomic.office.systems@example.net', '25 Kingston St', '', 1, NULL, 'Chicago', ''),
(155, 'Taylors Office Warehouse\"', 155, NULL, 'taylors.office.warehouse@example.net', '395 Westgate Drive', '', 1, NULL, 'Atlanta', ''),
(156, 'A. Gibsons Law Firm\"', 156, NULL, 'a.gibsons.law.firm@example.net', '2570 Swimthon Street', '', 1, NULL, 'Manchester', ''),
(157, 'Officeland Of Manchester', 157, NULL, 'officeland.of.manchester@example.net', '1120 Newport Ave', '', 1, NULL, 'Manchester', ''),
(158, 'TelecomPetit', 158, NULL, 'telecompetit@example.net', '1240 Yield mark Street', '', 1, NULL, 'London', ''),
(159, 'DHL Express', 159, NULL, 'dhl.express@example.net', '810 South Newport Drive', '', 1, NULL, 'Newport', ''),
(160, 'National Wholesale Corp', 160, NULL, 'national.wholesale.corp@example.net', '620 Ingridson Av', '', 1, NULL, 'Columbia', ''),
(161, 'Add-ON Marketing', 161, NULL, 'add-on.marketing@example.net', '435 Kingston Street', '', 1, NULL, 'New York', ''),
(162, 'eAmericonda', 162, NULL, 'eamericonda@example.net', '1558 23rd Street', '', 1, NULL, 'New York', ''),
(163, 'Rent a Truck', 163, NULL, 'rent.a.truck@example.net', '210 Bimer Drive', '', 1, NULL, 'Plymouth', ''),
(164, 'Lynda McNeal, Inc', 164, NULL, 'lynda.mcneal.inc@example.net', '340 Marlboro Drive', '', 1, NULL, 'Atlanta', ''),
(165, 'Triplelight Studio', 165, NULL, 'triplelight.studio@example.net', '34 Johnson Street', '', 1, NULL, 'Stratford', ''),
(166, 'DanMobler', 166, NULL, 'danmobler@example.net', 'Vindegade 72', '', 1, NULL, 'Kobenhavn', ''),
(167, 'Furnitures At Work', 167, NULL, 'furnitures.at.work@example.net', '854 Theater Road', '', 1, NULL, 'Watford', ''),
(168, 'UpTownSvea', 168, '+89565988999', 'uptownsvea@example.net', '', '', 1, NULL, '', ''),
(169, 'WoodImex Ltd', 169, NULL, 'woodimex.ltd@example.net', 'Strandvejen 334', '', 1, NULL, 'Vedbok', ''),
(170, 'Patrick Sands', 164, '', 'patrick.sands@example.net', '', '', 2, NULL, '', ''),
(171, 'Sussie Leth', 169, '', 'sussie.leth@example.net', 'Strandvejen 334', '', 2, NULL, 'Vedbok', ''),
(172, 'Michael Graff', 124, '', 'michael.graff@example.net', 'Suderweg 15', '', 2, NULL, 'Hamburg', ''),
(173, 'Karolina Kacprzak', 106, '', 'karolina.kacprzak@example.net', 'Krausova 125', '', 2, NULL, 'Kyjov', ''),
(174, 'Adam Barr', 290, '', 'adam.barr@example.net', '', '', 2, NULL, '', ''),
(175, 'Andrew Lan', 289, '', 'andrew.lan@example.net', '', '', 2, NULL, '', ''),
(176, 'Tracy Tallman', 293, '', 'tracy.tallman@example.net', '', '', 2, NULL, '', ''),
(177, 'Barbara Moreland', 293, '', 'barbara.moreland@example.net', '', '', 2, NULL, '', ''),
(178, 'Mark Harrington', 64, '', 'mark.harrington@example.net', '', '', 2, NULL, '', ''),
(179, 'Stephanie Conroy', NULL, NULL, 'stephanie.conroy@example.net', 'Tower Road', '', 2, NULL, 'Newquay', ''),
(180, 'Brannon Jones', 294, '', 'brannon.jones@example.net', '', '', 2, NULL, '', ''),
(181, 'Kevin F. Browne', 163, '', 'kevin.f.browne@example.net', '', '', 2, NULL, '', ''),
(182, 'Andrew Cencini', 6, '', 'andrew.cencini@example.net', '', '', 2, NULL, '', ''),
(183, 'Tony Madigan', 168, '', 'tony.madigan@example.net', 'Orkestergatan 24', '', 2, NULL, 'Goteborg', ''),
(184, 'Julia Moseley', 292, '', 'julia.moseley@example.net', 'High Street Ripley', '', 2, NULL, 'Southsea, Portsmouth', ''),
(185, 'Andreas Berglund', 119, '', 'andreas.berglund@example.net', 'Sjohagsgatan 7', '', 2, NULL, 'Sundsvall', ''),
(186, 'Diane Tibbott', NULL, NULL, 'diane.tibbott@example.net', '395 Westgate Drive', '', 2, NULL, 'Atlanta', ''),
(187, 'Enrique Gil Gomez', 94, '', 'enrique.gil.gomez@example.net', '', '', 2, NULL, '', ''),
(188, 'Matthias Berndt', NULL, NULL, 'matthias.berndt@example.net', 'Seedamm 18', '', 2, NULL, 'Rotkreuz', ''),
(189, 'Katie Jordan', NULL, NULL, 'katie.jordan@example.net', '395 Westgate Drive', '', 2, NULL, 'Atlanta', ''),
(190, 'David Hodgson', 1, '', 'david.hodgson@example.net', '192 Market Square', '', 2, NULL, 'Birmingham', ''),
(191, 'John Tippett', 113, '', 'john.tippett@example.net', '', '', 2, NULL, '', ''),
(192, 'Susan W. Eaton', 292, '', 'susan.w.eaton@example.net', 'High Street Ripley', '', 2, NULL, 'Southsea, Portsmouth', ''),
(193, 'Michael Patten', NULL, NULL, 'michael.patten@example.net', 'Tower Road', '', 2, NULL, 'Newquay', ''),
(194, 'Erik Ismert', 34, '', 'erik.ismert@example.net', '', '', 2, NULL, '', ''),
(195, 'Michael Lund', 55, '', 'michael.lund@example.net', '', '', 2, NULL, '', ''),
(196, 'Brian Burke', 112, '', 'brian.burke@example.net', '', '', 2, NULL, '', ''),
(197, 'John Evans', 290, '', 'john.evans@example.net', '', '', 2, NULL, '', ''),
(198, 'Monica Brink', 22, '', 'monica.brink@example.net', '', '', 2, NULL, '', ''),
(199, 'Christian Kleinerman', 46, '', 'christian.kleinerman@example.net', '', '', 2, NULL, '', ''),
(200, 'Heidi Steen', 121, '', 'heidi.steen@example.net', '', '', 2, NULL, '', ''),
(201, 'Benjamin Martin', 55, '', 'benjamin.martin@example.net', '', '', 2, NULL, '', ''),
(202, 'Belinda Newman', 8, '', 'belinda.newman@example.net', '', '', 2, NULL, '', ''),
(203, 'Gregory Weber', 128, '', 'gregory.weber@example.net', '', '', 2, NULL, '', ''),
(204, 'Linda Contreras', 163, '', 'linda.contreras@example.net', '', '', 2, NULL, '', ''),
(205, 'Frank Zhang', NULL, NULL, 'frank.zhang@example.net', '395 Westgate Drive', '', 2, NULL, 'Atlanta', ''),
(206, 'John Emory', 1, '', 'john.emory@example.net', '192 Market Square', '', 2, NULL, 'Birmingham', ''),
(207, 'Jonas Hasselberg', 168, '', 'jonas.hasselberg@example.net', 'Orkestergatan 24', '', 2, NULL, 'Goteborg', ''),
(208, 'Mia Sofie Hoffritz', 21, '', 'mia.sofie.hoffritz@example.net', 'Industrieweg 11', '', 2, NULL, 'Zutphen', ''),
(209, 'Jack Creasey', 129, '', 'jack.creasey@example.net', '', '', 2, NULL, '', ''),
(210, 'Yvonne McKay', 48, '', 'yvonne.mckay@example.net', '456 Main Street', '', 2, NULL, 'Dudley', ''),
(211, 'Jose Ignacio Peiro Alba', 94, '', 'jose.ignacio.peiro.alba@example.net', '', '', 2, NULL, '', ''),
(212, 'Julie Taft-Rider', 68, '', 'julie.taft-rider@example.net', '', '', 2, NULL, '', ''),
(213, 'Doris Hartwig', 26, '', 'doris.hartwig@example.net', '', '', 2, NULL, '', ''),
(214, 'John Wood', 163, '', 'john.wood@example.net', '', '', 2, NULL, '', ''),
(215, 'Florian Voss', 60, '', 'florian.voss@example.net', '', '', 2, NULL, '', ''),
(216, 'Yolanda Sanchez Sanchez', 94, '', 'yolanda.sanchez.sanchez@example.net', '', '', 2, NULL, '', ''),
(217, 'Amaya Hernandez', 95, '', 'amaya.hernandez@example.net', 'Pol. Ind. 4', '', 2, NULL, 'Palma Mallorca', ''),
(218, 'Robert Zare', 44, '', 'robert.zare@example.net', '', '', 2, NULL, '', ''),
(219, 'Birgit Seidl', 124, '', 'birgit.seidl@example.net', 'Suderweg 15', '', 2, NULL, 'Hamburg', ''),
(220, 'Deborah Poe', 131, '', 'deborah.poe@example.net', '1 High Holborn', '', 2, NULL, 'London', ''),
(221, 'Candy Spoon', 151, '', 'candy.spoon@example.net', '', '', 2, NULL, '', ''),
(222, 'Britta Simon', 57, '', 'britta.simon@example.net', '', '', 2, NULL, '', ''),
(223, 'Charlotte Bender', 123, '', 'charlotte.bender@example.net', '', '', 2, NULL, '', ''),
(224, 'Dadi Johannesson', 43, '', 'dadi.johannesson@example.net', '', '', 2, NULL, '', ''),
(225, 'Michael J. Zwilling', 118, '', 'michael.j.zwilling@example.net', '', '', 2, NULL, '', ''),
(226, 'Samantha Smith', 290, '', 'samantha.smith@example.net', '', '', 2, NULL, '', ''),
(227, 'Nigel Westbury', 294, '', 'nigel.westbury@example.net', '', '', 2, NULL, '', ''),
(228, 'Lisa Jacobson', NULL, NULL, 'lisa.jacobson@example.net', '395 Westgate Drive', '', 2, NULL, 'Atlanta', ''),
(229, 'Gustavo Camargo', 95, '', 'gustavo.camargo@example.net', 'Pol. Ind. 4', '', 2, NULL, 'Palma Mallorca', ''),
(230, 'Marie Reinhart', 60, '', 'marie.reinhart@example.net', '', '', 2, NULL, '', ''),
(231, 'Antonio Bermejo', 94, '', 'antonio.bermejo@example.net', '', '', 2, NULL, '', ''),
(232, 'Michael J. Hummer', NULL, NULL, 'michael.j.hummer@example.net', 'Ortstrasse 12', '', 2, NULL, 'Mittersill', ''),
(233, 'Jeremy Los', NULL, NULL, 'jeremy.los@example.net', '395 Westgate Drive', '', 2, NULL, 'Atlanta', ''),
(234, 'Robert Lyon', NULL, NULL, 'robert.lyon@example.net', '1240 Yield mark Street', '', 2, NULL, 'London', ''),
(235, 'Arlene Huff', NULL, NULL, 'arlene.huff@example.net', '1240 Yield mark Street', '', 2, NULL, 'London', ''),
(236, 'Mary Baker', 163, '', 'mary.baker@example.net', '', '', 2, NULL, '', ''),
(237, 'Scott Bishop', 289, '', 'scott.bishop@example.net', '', '', 2, NULL, '', ''),
(238, 'Jane Clayton', 289, '', 'jane.clayton@example.net', '', '', 2, NULL, '', ''),
(239, 'Ragnar Eiriksson', 33, '', 'ragnar.eiriksson@example.net', '', '', 2, NULL, '', ''),
(240, 'Chris McGurk', 161, '', 'chris.mcgurk@example.net', '', '', 2, NULL, '', ''),
(241, 'Megan Sherman', 71, '', 'megan.sherman@example.net', '', '', 2, NULL, '', ''),
(242, 'Karina Agerby', 166, '', 'karina.agerby@example.net', '', '', 2, NULL, '', ''),
(243, 'Tina Slone O\'Dell', 162, '', 'tina.slone.o\'dell@example.net', '', '', 2, NULL, '', ''),
(244, 'Andrew Dixon', 151, '', 'andrew.dixon@example.net', '', '', 2, NULL, '', ''),
(245, 'Elizabeth Keyser', 37, '', 'elizabeth.keyser@example.net', '', '', 2, NULL, '', ''),
(246, 'Shelley Dick', 154, '', 'shelley.dick@example.net', '', '', 2, NULL, '', ''),
(247, 'Amy E. Alberts', 167, '', 'amy.e.alberts@example.net', '', '', 2, NULL, '', ''),
(248, 'Cornelia Weiler', 63, '', 'cornelia.weiler@example.net', '', '', 2, NULL, '', ''),
(249, 'Alex Nayberg', NULL, '', 'alex.nayberg@example.net', '', '', 2, NULL, '', ''),
(250, 'Jan Miksovsky', 125, '', 'jan.miksovsky@example.net', '', '', 2, NULL, '', ''),
(251, 'Charles Fitzgerald', 50, '', 'charles.fitzgerald@example.net', '', '', 2, NULL, '', ''),
(252, 'Janice Galvin', 49, '', 'janice.galvin@example.net', '', '', 2, NULL, '', ''),
(253, 'Spencer Low', 112, '', 'spencer.low@example.net', '', '', 2, NULL, '', ''),
(254, 'Mary E. Gibson', 7, '', 'mary.e.gibson@example.net', '', '', 2, NULL, '', ''),
(255, 'Trinidad Lara', 95, '', 'trinidad.lara@example.net', 'Pol. Ind. 4', '', 2, NULL, 'Palma Mallorca', ''),
(256, 'Rotislav Shabalin', 105, '', 'rotislav.shabalin@example.net', 'Mayerova 12', '', 2, NULL, 'Olomouch', ''),
(257, 'Mikael Sandberg', 168, '', 'mikael.sandberg@example.net', 'Orkestergatan 24', '', 2, NULL, 'Goteborg', ''),
(258, 'Garrett Young', 292, '', 'garrett.young@example.net', 'High Street Ripley', '', 2, NULL, 'Southsea, Portsmouth', ''),
(259, 'Ann Beebe', 48, '', 'ann.beebe@example.net', '456 Main Street', '', 2, NULL, 'Dudley', ''),
(260, 'Stephanie Bourne', 1, '', 'stephanie.bourne@example.net', '192 Market Square', '', 2, NULL, 'Birmingham', ''),
(261, 'Peter Conelly', NULL, NULL, 'peter.conelly@example.net', '57 East Reach', '', 2, NULL, 'Newquay', ''),
(262, 'Karen Archer', NULL, NULL, 'karen.archer@example.net', '14 The Broadway', '', 2, NULL, 'Ashford', ''),
(263, 'Patrick M. Cook', 291, '', 'patrick.m.cook@example.net', '28 The Tything', '', 2, NULL, 'Cheddington', ''),
(264, 'Jose Edvaldo Saraiva', 94, '', 'jose.edvaldo.saraiva@example.net', '', '', 2, NULL, '', ''),
(265, 'Kenneth Cools', 24, '', 'kenneth.cools@example.net', '', '', 2, NULL, '', ''),
(266, 'Bonnie Kearney', NULL, NULL, 'bonnie.kearney@example.net', 'Tower Road', '', 2, NULL, 'Newquay', ''),
(267, 'Peter Waxman', 40, '', 'peter.waxman@example.net', '', '', 2, NULL, '', ''),
(268, 'Gary W. Yukich', 7, '', 'gary.w.yukich@example.net', '', '', 2, NULL, '', ''),
(269, 'Patrick Dalle', 290, '', 'patrick.dalle@example.net', '', '', 2, NULL, '', ''),
(270, 'Lene Rathkjen', 53, '', 'lene.rathkjen@example.net', '', '', 2, NULL, '', ''),
(271, 'Karin Zimprich', NULL, NULL, 'karin.zimprich@example.net', 'Seedamm 18', '', 2, NULL, 'Rotkreuz', ''),
(272, 'Martin Illum Lotz', 122, '', 'martin.illum.lotz@example.net', '', '', 2, NULL, '', ''),
(273, 'Magnus Hedlund', NULL, NULL, 'magnus.hedlund@example.net', 'Olavsgt. 589', '', 2, NULL, 'Oslo', ''),
(274, 'Laura Norman', NULL, NULL, 'laura.norman@example.net', 'Ortstrasse 12', '', 2, NULL, 'Mittersill', ''),
(275, 'Linda Meisner', 124, '', 'linda.meisner@example.net', 'Suderweg 15', '', 2, NULL, 'Hamburg', ''),
(276, 'Martin Skamris', 21, '', 'martin.skamris@example.net', 'Industrieweg 11', '', 2, NULL, 'Zutphen', ''),
(277, 'Susan Metters', 157, '', 'susan.metters@example.net', '', '', 2, NULL, '', ''),
(278, 'Wendy Wheeler', 290, '', 'wendy.wheeler@example.net', '', '', 2, NULL, '', ''),
(279, 'Jennifer Riegle', 64, '', 'jennifer.riegle@example.net', '', '', 2, NULL, '', ''),
(280, 'Jaime Bastidas', 30, '', 'jaime.bastidas@example.net', '', '', 2, NULL, '', ''),
(281, 'Marianne Wier', 125, '', 'marianne.wier@example.net', '', '', 2, NULL, '', ''),
(282, 'Ingelise Lang', 51, '', 'ingelise.lang@example.net', '', '', 2, NULL, '', ''),
(283, 'Sean Purcell', 164, '', 'sean.purcell@example.net', '', '', 2, NULL, '', ''),
(284, 'Bernard Duerr', 100, '', 'bernard.duerr@example.net', 'Ferkova ulica 4', '', 2, NULL, 'Kranj', ''),
(285, 'Eva Corets', 46, '', 'eva.corets@example.net', '', '', 2, NULL, '', ''),
(286, 'Charlotte Weiss', 39, '', 'charlotte.weiss@example.net', '', '', 2, NULL, '', ''),
(287, 'Michael Sullivan', 128, '', 'michael.sullivan@example.net', '', '', 2, NULL, '', ''),
(288, 'Erlingur Orn Jonsson', 34, '', 'erlingur.orn.jonsson@example.net', '', '', 2, NULL, '', ''),
(289, 'Cane Showroom', 289, NULL, 'cane.showroom@example.net', 'Ringwood Road', '', 1, NULL, 'Manchester', ''),
(290, 'Lordship Lane Furnishers', 290, NULL, 'lordship.lane.furnishers@example.net', '457 Lordship Lane', '', 1, NULL, 'Newport', ''),
(291, 'Timeless Reproductions', 291, NULL, 'timeless.reproductions@example.net', '28 The Tything', '', 1, NULL, 'Cheddington', ''),
(292, 'Wyllie & Mar', 292, NULL, 'wyllie.mar@example.net', 'High Street Ripley', '', 1, NULL, 'Southsea, Portsmouth', ''),
(293, 'Compohandler Ltd', 293, NULL, 'compohandler.ltd@example.net', 'Carmunnock By-Pass Busby', '', 1, NULL, 'Brixham', ''),
(294, 'OK Furnishers', 294, NULL, 'ok.furnishers@example.net', '92-94 West St Bedminster', '', 1, NULL, 'Swansea', ''),
(295, 'TenTails Direct Ltd', 295, NULL, 'tentails.direct.ltd@example.net', 'Tower Road', '', 1, NULL, 'Newquay', ''),
(296, 'Andy Teal', 157, '', 'andy.teal@example.net', '', '', 2, NULL, '', ''),
(297, 'David J. Liu', 160, '', 'david.j.liu@example.net', '', '', 2, NULL, '', ''),
(298, 'Nicole Holliday', 164, '', 'nicole.holliday@example.net', '', '', 2, NULL, '', ''),
(299, 'Jay Jamison', 164, '', 'jay.jamison@example.net', '', '', 2, NULL, '', ''),
(300, 'Tom Getzinger', 124, '', 'tom.getzinger@example.net', 'Suderweg 15', '', 2, NULL, 'Hamburg', ''),
(301, 'Mark McArthur', NULL, NULL, 'mark.mcarthur@example.net', '65-73 Broadway West', '', 2, NULL, 'Bromley', ''),
(302, 'David Hamilton', 165, '', 'david.hamilton@example.net', '34 Johnson Street', '', 2, NULL, 'Stratford', ''),
(303, 'Gary E. Altman III', 161, '', 'gary.e.altman.iii@example.net', '', '', 2, NULL, '', ''),
(304, 'Michael DeVoe', 21, '', 'michael.devoe@example.net', 'Industrieweg 11', '', 2, NULL, 'Zutphen', ''),
(305, 'Patricia Doyle', 159, '', 'patricia.doyle@example.net', '', '', 2, NULL, '', ''),
(306, 'Kevin Wright', 165, '', 'kevin.wright@example.net', '34 Johnson Street', '', 2, NULL, 'Stratford', ''),
(307, 'Jim Stewart', 164, '', 'jim.stewart@example.net', '', '', 2, NULL, '', ''),
(308, 'Mike Nash', 163, '', 'mike.nash@example.net', '', '', 2, NULL, '', ''),
(309, 'Scott Mitchell', 153, '', 'scott.mitchell@example.net', '', '', 2, NULL, '', ''),
(310, 'Tammy L. McDonald', 159, '', 'tammy.l.mcdonald@example.net', '', '', 2, NULL, '', ''),
(311, 'Maryann Barber', 162, '', 'maryann.barber@example.net', '', '', 2, NULL, '', ''),
(312, 'Michael Vanderhyde', 151, '', 'michael.vanderhyde@example.net', '', '', 2, NULL, '', ''),
(313, 'Rob Verhoff', NULL, NULL, 'rob.verhoff@example.net', '395 Westgate Drive', '', 2, NULL, 'Atlanta', ''),
(314, 'Kevin Verboort', NULL, NULL, 'kevin.verboort@example.net', '1240 Yield mark Street', '', 2, NULL, 'London', ''),
(315, 'Michael Zeman', 165, '', 'michael.zeman@example.net', '34 Johnson Street', '', 2, NULL, 'Stratford', ''),
(316, 'Hans Visser', NULL, NULL, 'hans.visser@example.net', '35 Brook Street', '', 2, NULL, 'Birmingham', ''),
(317, 'Lone Kuhlmann', 166, '', 'lone.kuhlmann@example.net', '', '', 2, NULL, '', ''),
(318, 'Christopher E. Hill', 165, '', 'christopher.e.hill@example.net', '34 Johnson Street', '', 2, NULL, 'Stratford', ''),
(319, 'Debra E. Keiser', 153, '', 'debra.e.keiser@example.net', '', '', 2, NULL, '', ''),
(320, 'Ole Gotfred', 166, '', 'ole.gotfred@example.net', '', '', 2, NULL, '', ''),
(321, 'Benjamin C. Willet', 168, '', 'benjamin.c.willet@example.net', 'Orkestergatan 24', '', 2, NULL, 'Goteborg', ''),
(322, 'Tawana Nussbaum', 164, '', 'tawana.nussbaum@example.net', '', '', 2, NULL, '', ''),
(323, 'Nuria Gonzalez', 95, '', 'nuria.gonzalez@example.net', 'Pol. Ind. 4', '', 2, NULL, 'Palma Mallorca', ''),
(324, 'Gerda Jonsdottir', 169, '', 'gerda.jonsdottir@example.net', 'Strandvejen 334', '', 2, NULL, 'Vedbok', ''),
(325, 'Anna Lidman', 168, '', 'anna.lidman@example.net', 'Orkestergatan 24', '', 2, NULL, 'Goteborg', ''),
(326, 'Charlotte Toft Madsen', 169, '', 'charlotte.toft.madsen@example.net', 'Strandvejen 334', '', 2, NULL, 'Vedbok', ''),
(327, 'James D. Kramer', 162, '', 'james.d.kramer@example.net', '', '', 2, NULL, '', ''),
(328, 'Linda Randall', NULL, NULL, 'linda.randall@example.net', '1240 Yield mark Street', '', 2, NULL, 'London', ''),
(329, 'Birgitte Vestphael', 168, '', 'birgitte.vestphael@example.net', 'Orkestergatan 24', '', 2, NULL, 'Goteborg', ''),
(330, 'Carl Langhorn', 291, '', 'carl.langhorn@example.net', '28 The Tything', '', 2, NULL, 'Cheddington', ''),
(331, 'Daniel Weisman', 169, '', 'daniel.weisman@example.net', 'Strandvejen 334', '', 2, NULL, 'Vedbok', ''),
(332, 'Jonathan Mollerup', 292, '', 'jonathan.mollerup@example.net', 'High Street Ripley', '', 2, NULL, 'Southsea, Portsmouth', ''),
(333, 'Karen Berg', 166, '', 'karen.berg@example.net', '', '', 2, NULL, '', ''),
(334, 'Jenny Gottfried', 160, '', 'jenny.gottfried@example.net', '', '', 2, NULL, '', ''),
(335, 'Jenny Lysaker', 166, '', 'jenny.lysaker@example.net', '', '', 2, NULL, '', ''),
(336, 'Peter J. Krebs', 106, '', 'peter.j.krebs@example.net', 'Krausova 125', '', 2, NULL, 'Kyjov', ''),
(337, 'Soren Skov Klemmensen', 166, '', 'soren.skov.klemmensen@example.net', '', '', 2, NULL, '', ''),
(338, 'Jens Toft', 168, '', 'jens.toft@example.net', 'Orkestergatan 24', '', 2, NULL, 'Goteborg', ''),
(339, 'Brian Clark', 163, '', 'brian.clark@example.net', '', '', 2, NULL, '', ''),
(340, 'Ariane Peeters', 88, '', 'ariane.peeters@example.net', '', '', 2, NULL, '', ''),
(341, 'James R. Hamilton', 68, '', 'james.r.hamilton@example.net', '', '', 2, NULL, '', ''),
(342, 'Mathew Charles', 161, '', 'mathew.charles@example.net', '', '', 2, NULL, '', ''),
(343, 'Stefan Delmarco', 168, '', 'stefan.delmarco@example.net', 'Orkestergatan 24', '', 2, NULL, 'Goteborg', ''),
(344, 'Gabriele Dickmann', 165, '', 'gabriele.dickmann@example.net', '34 Johnson Street', '', 2, NULL, 'Stratford', ''),
(345, 'Annelie Zuber', 169, '', 'annelie.zuber@example.net', 'Strandvejen 334', '', 2, NULL, 'Vedbok', ''),
(346, 'Carol Philips', NULL, NULL, 'carol.philips@example.net', '395 Westgate Drive', '', 2, NULL, 'Atlanta', ''),
(347, 'Julie Bankert', 164, '', 'julie.bankert@example.net', '', '', 2, NULL, '', ''),
(348, 'Shaun Beasley', 167, '', 'shaun.beasley@example.net', '', '', 2, NULL, '', ''),
(349, 'Anja Schmidt', 169, '', 'anja.schmidt@example.net', 'Strandvejen 334', '', 2, NULL, 'Vedbok', ''),
(350, 'Kevin McDowell', 165, '', 'kevin.mcdowell@example.net', '34 Johnson Street', '', 2, NULL, 'Stratford', ''),
(351, 'Frank Lee', 169, '', 'frank.lee@example.net', 'Strandvejen 334', '', 2, NULL, 'Vedbok', ''),
(352, 'Alan Brewer', 156, '', 'alan.brewer@example.net', '', '', 2, NULL, '', ''),
(353, 'Jan Christiansen', 166, '', 'jan.christiansen@example.net', '', '', 2, NULL, '', ''),
(354, 'Sten Bennetsen', 169, '', 'sten.bennetsen@example.net', 'Strandvejen 334', '', 2, NULL, 'Vedbok', ''),
(355, 'Stephen A. Mew', 164, '', 'stephen.a.mew@example.net', '', '', 2, NULL, '', ''),
(356, 'Barry Potter', 160, '', 'barry.potter@example.net', '', '', 2, NULL, '', ''),
(357, 'Marc Zimmerman', 167, '', 'marc.zimmerman@example.net', '', '', 2, NULL, '', ''),
(358, 'Michael Sean Ray', 157, '', 'michael.sean.ray@example.net', '', '', 2, NULL, '', ''),
(359, 'Peter Houston', 164, '', 'peter.houston@example.net', '', '', 2, NULL, '', ''),
(360, 'Jeff D. Henshaw', 165, '', 'jeff.d.henshaw@example.net', '34 Johnson Street', '', 2, NULL, 'Stratford', ''),
(361, 'Mandy Vance', 163, '', 'mandy.vance@example.net', '', '', 2, NULL, '', ''),
(362, 'Anita Langers', 165, '', 'anita.langers@example.net', '34 Johnson Street', '', 2, NULL, 'Stratford', ''),
(363, 'Alex Roland', 68, '', 'alex.roland@example.net', '', '', 2, NULL, '', ''),
(364, 'Roger Van Houten', 88, '', 'roger.van.houten@example.net', '', '', 2, NULL, '', ''),
(365, 'Diane Margheim', 40, '', 'diane.margheim@example.net', '', '', 2, NULL, '', ''),
(366, 'Tom Vande Velde', 162, '', 'tom.vande.velde@example.net', '', '', 2, NULL, '', ''),
(367, 'Amy S. Recker', 165, '', 'amy.s.recker@example.net', '34 Johnson Street', '', 2, NULL, 'Stratford', ''),
(368, 'Fabricio Noriega', 153, '', 'fabricio.noriega@example.net', '', '', 2, NULL, '', ''),
(369, 'Tomas Navarro', 151, '', 'tomas.navarro@example.net', '', '', 2, NULL, '', ''),
(370, 'Brad Sutton', 167, '', 'brad.sutton@example.net', '', '', 2, NULL, '', ''),
(371, 'Mads Ebdrup', 166, '', 'mads.ebdrup@example.net', '', '', 2, NULL, '', ''),
(372, 'Phil Spencer', 167, '', 'phil.spencer@example.net', '', '', 2, NULL, '', ''),
(373, 'Chris Okelberry', 165, '', 'chris.okelberry@example.net', '34 Johnson Street', '', 2, NULL, 'Stratford', ''),
(374, 'Tina Gorenc', 3, '', 'tina.gorenc@example.net', '', '', 2, NULL, '', ''),
(375, 'Pamela Ansman-Wolfe', 3, '', 'pamela.ansman-wolfe@example.net', '', '', 2, NULL, '', ''),
(376, 'Greg Chapman', NULL, NULL, 'greg.chapman@example.net', '2 Drury Way', '', 2, NULL, 'Edinburgh', ''),
(377, 'Zuzana Janska', 164, '', 'zuzana.janska@example.net', '', '', 2, NULL, '', ''),
(378, 'Henning Troelsen', 169, '', 'henning.troelsen@example.net', 'Strandvejen 334', '', 2, NULL, 'Vedbok', ''),
(379, 'Christian Kemp', 162, '', 'christian.kemp@example.net', '', '', 2, NULL, '', ''),
(380, 'Michael L. Rothkugel', 168, '', 'michael.l.rothkugel@example.net', 'Orkestergatan 24', '', 2, NULL, 'Goteborg', ''),
(381, 'Frank Pellow', 169, '', 'frank.pellow@example.net', 'Strandvejen 334', '', 2, NULL, 'Vedbok', ''),
(382, 'Allan Vinther-Wahl', NULL, NULL, 'allan.vinther-wahl@example.net', '1240 Yield mark Street', '', 2, NULL, 'London', ''),
(383, 'Karen Friske', 166, '', 'karen.friske@example.net', '', '', 2, NULL, '', ''),
(384, 'Allan Benny Guinot', 166, '', 'allan.benny.guinot@example.net', '', '', 2, NULL, '', ''),
(385, 'Bjarke Rust Christensen', 166, '', 'bjarke.rust.christensen@example.net', '', '', 2, NULL, '', ''),
(386, 'Sisser Wichmann', 162, '', 'sisser.wichmann@example.net', '', '', 2, NULL, '', ''),
(387, 'Christina Philp', 151, '', 'christina.philp@example.net', '', '', 2, NULL, '', ''),
(388, 'Richard Bready', 167, '', 'richard.bready@example.net', '', '', 2, NULL, '', ''),
(389, 'David Campbell', 159, '', 'david.campbell@example.net', '', '', 2, NULL, '', ''),
(390, 'Joseph Matthews', 7, '', 'joseph.matthews@example.net', '', '', 2, NULL, '', ''),
(391, 'Michael Ruggiero', 169, '', 'michael.ruggiero@example.net', 'Strandvejen 334', '', 2, NULL, 'Vedbok', ''),
(392, 'Michael Pfeiffer', 153, '', 'michael.pfeiffer@example.net', '', '', 2, NULL, '', ''),
(393, 'Dick Dievendorff', 167, '', 'dick.dievendorff@example.net', '', '', 2, NULL, '', ''),
(394, 'Andrew R. Hill', 160, '', 'andrew.r.hill@example.net', '', '', 2, NULL, '', ''),
(395, 'Stuart Munson', 157, '', 'stuart.munson@example.net', '', '', 2, NULL, '', ''),
(396, 'Pat Coleman', NULL, NULL, 'pat.coleman@example.net', '395 Westgate Drive', '', 2, NULL, 'Atlanta', ''),
(397, 'Tamara Johnston', NULL, NULL, 'tamara.johnston@example.net', '1240 Yield mark Street', '', 2, NULL, 'London', ''),
(398, 'Dan K. Bacon Jr.', 151, '', 'dan.k.bacon.jr@example.net', '', '', 2, NULL, '', ''),
(399, 'Paul Komosinski', 161, '', 'paul.komosinski@example.net', '', '', 2, NULL, '', ''),
(400, 'Henning Serritslev', 169, '', 'henning.serritslev@example.net', 'Strandvejen 334', '', 2, NULL, 'Vedbok', ''),
(401, 'An Van Gysel', 88, '', 'an.van.gysel@example.net', '', '', 2, NULL, '', ''),
(402, 'Pete Male', 167, '', 'pete.male@example.net', '', '', 2, NULL, '', ''),
(403, 'Richard Carey', NULL, NULL, 'richard.carey@example.net', '1240 Yield mark Street', '', 2, NULL, 'London', ''),
(404, 'Olinda Turner', 153, '', 'olinda.turner@example.net', '', '', 2, NULL, '', ''),
(405, 'Douglas Groncki', 160, '', 'douglas.groncki@example.net', '', '', 2, NULL, '', ''),
(406, 'Keith Harris', 157, '', 'keith.harris@example.net', '', '', 2, NULL, '', ''),
(407, 'Dylan Miller', 160, '', 'dylan.miller@example.net', '', '', 2, NULL, '', ''),
(408, 'Brian Lloyd', 164, '', 'brian.lloyd@example.net', '', '', 2, NULL, '', ''),
(409, 'Henrik Larsen', 53, '', 'henrik.larsen@example.net', '', '', 2, NULL, '', ''),
(410, 'Jeff Stammler', NULL, NULL, 'jeff.stammler@example.net', '395 Westgate Drive', '', 2, NULL, 'Atlanta', ''),
(411, 'David Oliver Lawrence', 156, '', 'david.oliver.lawrence@example.net', '', '', 2, NULL, '', ''),
(412, 'Lone Strandbygaard', 169, '', 'lone.strandbygaard@example.net', 'Strandvejen 334', '', 2, NULL, 'Vedbok', ''),
(413, 'Lori Kane', 156, '', 'lori.kane@example.net', '', '', 2, NULL, '', ''),
(414, 'Kimberly B. Zimmermann', 161, '', 'kimberly.b.zimmermann@example.net', '', '', 2, NULL, '', ''),
(415, 'Simon Rapier', 163, '', 'simon.rapier@example.net', '', '', 2, NULL, '', ''),
(416, 'Sam Abolrous', 162, '', 'sam.abolrous@example.net', '', '', 2, NULL, '', ''),
(417, 'David M. Bradley', 157, '', 'david.m.bradley@example.net', '', '', 2, NULL, '', ''),
(418, 'Angela Barbariol', 167, '', 'angela.barbariol@example.net', '', '', 2, NULL, '', ''),
(419, 'Matthew Carroll', 167, '', 'matthew.carroll@example.net', '', '', 2, NULL, '', ''),
(420, 'Brian Cox', 167, '', 'brian.cox@example.net', '', '', 2, NULL, '', ''),
(421, 'Brandon D. Heidepriem', 153, '', 'brandon.d.heidepriem@example.net', '', '', 2, NULL, '', ''),
(422, 'Bob Gage', 160, '', 'bob.gage@example.net', '', '', 2, NULL, '', ''),
(423, 'Sharon Hoepf', 153, '', 'sharon.hoepf@example.net', '', '', 2, NULL, '', ''),
(424, 'Nancy Buchanan', NULL, NULL, 'nancy.buchanan@example.net', '1240 Yield mark Street', '', 2, NULL, 'London', ''),
(425, 'Alan Steiner', 291, '', 'alan.steiner@example.net', '28 The Tything', '', 2, NULL, 'Cheddington', ''),
(426, 'Linda Moschell', NULL, NULL, 'linda.moschell@example.net', '1240 Yield mark Street', '', 2, NULL, 'London', ''),
(427, 'Matthew Hink', 159, '', 'matthew.hink@example.net', '', '', 2, NULL, '', ''),
(428, 'Shane S. Kim', 160, '', 'shane.s.kim@example.net', '', '', 2, NULL, '', ''),
(429, 'Steven B. Levy', 161, '', 'steven.b.levy@example.net', '', '', 2, NULL, '', ''),
(430, 'Terry Adams', 159, '', 'terry.adams@example.net', '', '', 2, NULL, '', ''),
(431, 'Mindy Martin', 1, '', 'mindy.martin@example.net', '1558 23rd Street', '', 2, NULL, 'New York', '');

-- --------------------------------------------------------

--
-- Структура таблицы `crm_contacts_types`
--

CREATE TABLE `crm_contacts_types` (
  `id` int(11) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `crm_contacts_types`
--

INSERT INTO `crm_contacts_types` (`id`, `code`, `description`) VALUES
(1, 'Company', ''),
(2, 'Person', '');

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `crm_contacts_view`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `crm_contacts_view` (
`id` int(11)
,`name` varchar(100)
,`company` int(11)
,`company_name` varchar(100)
,`phone` varchar(45)
,`email` varchar(100)
,`contact_type` int(11)
,`comments` text
);

-- --------------------------------------------------------

--
-- Структура таблицы `crm_salespeople`
--

CREATE TABLE `crm_salespeople` (
  `id` int(11) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `comission` decimal(3,2) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `crm_salespeople`
--

INSERT INTO `crm_salespeople` (`id`, `code`, `name`, `comission`, `phone`) VALUES
(1, 'AH', 'Annette Hill', '0.00', ''),
(3, 'DC', 'Debra L. Core', '0.50', ''),
(4, 'JR', 'John Roberts', '0.00', ''),
(5, 'LM', 'Linda Martin', '0.00', ''),
(6, 'MD', 'Mary A. Dempsey', '0.00', ''),
(7, 'PS', 'Peter Saddow', '0.00', ''),
(15, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `currency`
--

CREATE TABLE `currency` (
  `id` int(11) NOT NULL,
  `code` varchar(3) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `amount_rounding_precision` decimal(6,5) DEFAULT NULL,
  `unit_amount_rounding_precision` decimal(6,5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `currency`
--

INSERT INTO `currency` (`id`, `code`, `description`, `amount_rounding_precision`, `unit_amount_rounding_precision`) VALUES
(1, 'AED', 'United Arab Emirates dirham', '0.01000', '0.00100'),
(2, 'AUD', 'Australian dollar', '0.01000', '0.00100'),
(3, 'BGL', 'Bulgarian leva', '0.01000', '0.00100'),
(4, 'BND', 'Brunei Darussalem dollar', '0.01000', '0.00100'),
(5, 'BRL', 'Brazilian real', '0.01000', '0.00100'),
(6, 'CAD', 'Canadian dollar', '0.01000', '0.00100'),
(7, 'CHF', 'Swiss franc', '0.01000', '0.00100'),
(8, 'CZK', 'Czech koruna', '0.01000', '0.00100'),
(9, 'DKK', 'Danish krone', '0.01000', '0.00100'),
(10, 'DZD', 'Algerian dinar', '0.01000', '0.00100'),
(11, 'EEK', 'Estonian Kroon', '0.01000', '0.00100'),
(12, 'EUR', 'Euro', '0.01000', '0.00100'),
(13, 'FJD', 'Fiji dollar', '0.01000', '0.00100'),
(14, 'HKD', 'Hong Kong dollar', '0.01000', '0.00100'),
(15, 'HUF', 'Hungarian forint', '0.10000', '0.00100'),
(16, 'IDR', 'Indonesian rupiah', '1.00000', '0.10000'),
(17, 'INR', 'Indian rupee', '0.01000', '0.00100'),
(18, 'ISK', 'Icelandic krona', '0.01000', '0.00100'),
(19, 'JPY', 'Japanese yen', '0.01000', '0.00100'),
(20, 'KES', 'Kenyan Shilling', '0.01000', '0.00100'),
(21, 'LTL', 'Lithuanian litas', '0.01000', '0.00100'),
(22, 'LVL', 'Latvian lats', '0.01000', '0.00100'),
(23, 'MAD', 'Moroccan dirham', '0.01000', '0.00100'),
(24, 'MXP', 'Mexican peso', '0.01000', '0.00100'),
(25, 'MYR', 'Malaysian ringgit', '0.01000', '0.00100'),
(26, 'MZM', 'Mozambique metical', '0.10000', '0.01000'),
(27, 'NGN', 'Nigerian naira', '0.01000', '0.00100'),
(28, 'NOK', 'Norwegian krone', '0.01000', '0.00100'),
(29, 'NZD', 'New Zealand dollar', '0.01000', '0.00100'),
(30, 'PHP', 'Philippines peso', '0.01000', '0.00100'),
(31, 'PLN', 'Polish zloty', '0.01000', '0.00100'),
(32, 'ROL', 'Romanian leu', '0.01000', '0.01000'),
(33, 'RUR', 'Russian ruble', '0.01000', '0.00100'),
(34, 'SAR', 'Saudi Arabian ryial', '0.01000', '0.00100'),
(35, 'SBD', 'Solomon Islands dollar', '0.01000', '0.00100'),
(36, 'SEK', 'Swedish krona', '0.01000', '0.00100'),
(37, 'SGD', 'Singapore dollar', '0.01000', '0.00100'),
(38, 'SIT', 'Slovenian tolar', '0.01000', '0.01000'),
(39, 'SZL', 'Swaziland lilangeni', '0.01000', '0.00100'),
(40, 'THB', 'Thai baht', '1.00000', '1.00000'),
(41, 'TND', 'Tunesian dinar', '0.01000', '0.00100'),
(42, 'TRL', 'Turkish lira', '1.00000', '0.10000'),
(43, 'UGS', 'Ugandan Shilling', '1.00000', '0.10000'),
(44, 'USD', 'US-dollar', '0.01000', '0.00100'),
(45, 'VUV', 'Vanuatu vatu', '0.01000', '0.00100'),
(46, 'WST', 'Western Samoan tala', '0.01000', '0.00100'),
(47, 'ZAR', 'South African rand', '0.01000', '0.00100'),
(48, 'AED', 'United Arab Emirates dirham', '0.01000', '0.00100'),
(49, 'AUD', 'Australian dollar', '0.01000', '0.00100'),
(50, 'BGL', 'Bulgarian leva', '0.01000', '0.00100'),
(51, 'BND', 'Brunei Darussalem dollar', '0.01000', '0.00100'),
(52, 'BRL', 'Brazilian real', '0.01000', '0.00100'),
(53, 'CAD', 'Canadian dollar', '0.01000', '0.00100'),
(54, 'CHF', 'Swiss franc', '0.01000', '0.00100'),
(55, 'CZK', 'Czech koruna', '0.01000', '0.00100'),
(56, 'DKK', 'Danish krone', '0.01000', '0.00100'),
(57, 'DZD', 'Algerian dinar', '0.01000', '0.00100'),
(58, 'EEK', 'Estonian Kroon', '0.01000', '0.00100'),
(59, 'EUR', 'Euro', '0.01000', '0.00100'),
(60, 'FJD', 'Fiji dollar', '0.01000', '0.00100'),
(61, 'HKD', 'Hong Kong dollar', '0.01000', '0.00100'),
(62, 'HUF', 'Hungarian forint', '0.10000', '0.00100'),
(63, 'IDR', 'Indonesian rupiah', '1.00000', '0.10000'),
(64, 'INR', 'Indian rupee', '0.01000', '0.00100'),
(65, 'ISK', 'Icelandic krona', '0.01000', '0.00100'),
(66, 'JPY', 'Japanese yen', '0.01000', '0.00100'),
(67, 'KES', 'Kenyan Shilling', '0.01000', '0.00100'),
(68, 'LTL', 'Lithuanian litas', '0.01000', '0.00100'),
(69, 'LVL', 'Latvian lats', '0.01000', '0.00100'),
(70, 'MAD', 'Moroccan dirham', '0.01000', '0.00100'),
(71, 'MXP', 'Mexican peso', '0.01000', '0.00100'),
(72, 'MYR', 'Malaysian ringgit', '0.01000', '0.00100'),
(73, 'MZM', 'Mozambique metical', '0.10000', '0.01000'),
(74, 'NGN', 'Nigerian naira', '0.01000', '0.00100'),
(75, 'NOK', 'Norwegian krone', '0.01000', '0.00100'),
(76, 'NZD', 'New Zealand dollar', '0.01000', '0.00100'),
(77, 'PHP', 'Philippines peso', '0.01000', '0.00100'),
(78, 'PLN', 'Polish zloty', '0.01000', '0.00100'),
(79, 'ROL', 'Romanian leu', '0.01000', '0.01000'),
(80, 'RUR', 'Russian ruble', '0.01000', '0.00100'),
(81, 'SAR', 'Saudi Arabian ryial', '0.01000', '0.00100'),
(82, 'SBD', 'Solomon Islands dollar', '0.01000', '0.00100'),
(83, 'SEK', 'Swedish krona', '0.01000', '0.00100'),
(84, 'SGD', 'Singapore dollar', '0.01000', '0.00100'),
(85, 'SIT', 'Slovenian tolar', '0.01000', '0.01000'),
(86, 'SZL', 'Swaziland lilangeni', '0.01000', '0.00100'),
(87, 'THB', 'Thai baht', '1.00000', '1.00000'),
(88, 'TND', 'Tunesian dinar', '0.01000', '0.00100'),
(89, 'TRL', 'Turkish lira', '1.00000', '0.10000'),
(90, 'UGS', 'Ugandan Shilling', '1.00000', '0.10000'),
(91, 'USD', 'US-dollar', '0.01000', '0.00100'),
(92, 'VUV', 'Vanuatu vatu', '0.01000', '0.00100'),
(93, 'WST', 'Western Samoan tala', '0.01000', '0.00100'),
(94, 'ZAR', 'South African rand', '0.01000', '0.00100');

-- --------------------------------------------------------

--
-- Структура таблицы `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `customer`
--

INSERT INTO `customer` (`id`, `name`, `phone`, `email`) VALUES
(1, NULL, NULL, 'login1@email.ru');

-- --------------------------------------------------------

--
-- Структура таблицы `customer_login`
--

CREATE TABLE `customer_login` (
  `id` int(11) NOT NULL,
  `customer` int(11) DEFAULT NULL,
  `login` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `customer_login`
--

INSERT INTO `customer_login` (`id`, `customer`, `login`, `password`) VALUES
(3, 1, 'login1', '02e629d793caec5e98e22616489cdae4');

-- --------------------------------------------------------

--
-- Структура таблицы `delivery`
--

CREATE TABLE `delivery` (
  `id` int(11) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `comment` varchar(2000) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `address_needed` tinyint(4) NOT NULL DEFAULT 0,
  `image` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `delivery`
--

INSERT INTO `delivery` (`id`, `description`, `comment`, `active`, `address_needed`, `image`) VALUES
(1, 'Почтой России по предоплате', '<span style=\"color: rgb(153, 153, 153); font-family: Arial; font-size: 12px;\">Отправка производится после оплаты товара и доставки -&nbsp;</span><strong style=\"color: rgb(153, 153, 153); font-family: Arial; font-size: 12px;\"><span style=\"color: rgb(0, 0, 0);\">200 руб.</span>&nbsp;<span style=\"color: rgb(255, 0, 0);\">ПРИ ОПЛАТЕ ЗАКАЗА ОТ 1000 РУБ. ДОСТАВКА БЕСПЛАТНО!!!</span></strong><br style=\"color: rgb(153, 153, 153); font-family: Arial; font-size: 12px;\"><span style=\"color: rgb(153, 153, 153); font-family: Arial; font-size: 12px;\">Счет будет выслан на Ваш адрес электронной почты.</span><br style=\"color: rgb(153, 153, 153); font-family: Arial; font-size: 12px;\"><span style=\"color: rgb(153, 153, 153); font-family: Arial; font-size: 12px;\">Стоимость доставки в страны СНГ - от 250 руб.</span>', 1, 1, 144),
(2, 'Курьерская доставка по Ростову-на-Дону', '<span style=\"color: rgb(153, 153, 153); font-family: Arial; font-size: 12px;\">200 руб. При заказе от 5000 руб. - бесплатно.&nbsp;</span><br style=\"color: rgb(153, 153, 153); font-family: Arial; font-size: 12px;\"><span style=\"color: rgb(153, 153, 153); font-family: Arial; font-size: 12px;\">Мы свяжемся с Вами и согласуем удобное время доставки</span>', 1, 1, 145),
(3, 'Наложенный платеж', '<span style=\"color: rgb(153, 153, 153); font-family: Arial; font-size: 12px;\">Оплата при получении на почте. Стоимость доставки -&nbsp;</span><span style=\"font-family: Arial; font-size: 12px;\"><strong>250 руб. + услуги почты за перечисление денег от покупателя - магазину (6-10% от суммы заказа)</strong>.</span><span style=\"color: rgb(153, 153, 153); font-family: Arial; font-size: 12px;\">&nbsp;Только для жителей России.&nbsp;</span><span style=\"font-family: Arial; font-size: 12px; color: rgb(136, 136, 136);\"><strong>Отправка в страны СНГ, а также отправка колпаков на штампованные диски возможна только по предоп</strong><span style=\"font-weight: bold;\">лате!</span></span>', 1, 1, 144),
(4, 'Транспортной компанией', '<span style=\"color: rgb(153, 153, 153); font-family: Arial; font-size: 12px;\">ПЭК, Деловые Линии, КИТ и др. по Вашему выбору. На электронную почту будет выслан счет на оплату товара. Стоимость доставки оплачивается Вами при получении заказа (от 300 руб., точную цену можно узнать в ТК)</span>', 1, 1, 146),
(5, 'Самовывоз (г. Ростов-на-Дону)', '<span style=\"color: rgb(153, 153, 153); font-family: Arial; font-size: 12px;\">Товар резервируется на 2 дня</span>', 1, 0, 147),
(6, 'Курьерская доставка по России (СДЭК)', '<span style=\"color: rgb(153, 153, 153); font-family: Arial; font-size: 12px;\">САМЫЙ БЫСТРЫЙ И НЕДОРОГОЙ ВАРИАНТ. Доставка до пункта самовывоза или по указанному адресу. От 200 руб., в срок от 1 до 7 дней. Услуга доступна для городов, указанных по ссылке&nbsp;</span><a title=\"курьерская доставка\" href=\"http://www.edostavka.ru/contacts/city-list.html\" style=\"cursor: pointer; outline: 0px; border: 0px; margin: 0px; padding: 0px; color: rgb(6, 118, 200); font-family: Arial; font-size: 12px;\">www.edostavka.ru/contacts/city-list.html&nbsp;</a><span style=\"color: rgb(153, 153, 153); font-family: Arial; font-size: 12px;\">&nbsp;</span>', 1, 1, 148);

-- --------------------------------------------------------

--
-- Структура таблицы `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `dept_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `departments`
--

INSERT INTO `departments` (`id`, `dept_name`) VALUES
(1, 'Accounting'),
(2, 'Administration'),
(3, 'Finance'),
(4, 'IT'),
(5, 'Security'),
(6, 'Transport'),
(7, 'Logistics'),
(9, 'Warehouse'),
(10, 'Manufactoring'),
(11, 'Production'),
(12, 'Kitchen'),
(13, 'Marketing'),
(16, 'Garage'),
(17, 'Receiption');

-- --------------------------------------------------------

--
-- Структура таблицы `depreciation_book`
--

CREATE TABLE `depreciation_book` (
  `id` int(11) NOT NULL,
  `code` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `disposal_calculation_method` tinyint(1) DEFAULT NULL,
  `allow_depr_below_zero` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `depreciation_book`
--

INSERT INTO `depreciation_book` (`id`, `code`, `description`, `disposal_calculation_method`, `allow_depr_below_zero`) VALUES
(1, 'COMPANY', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `document_types`
--

CREATE TABLE `document_types` (
  `id` int(11) NOT NULL,
  `code` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `document_types`
--

INSERT INTO `document_types` (`id`, `code`) VALUES
(1, 'Quote'),
(2, 'Order'),
(3, 'Invoice'),
(4, 'Credit Memo'),
(5, 'Blanket Order'),
(6, 'Return Order');

-- --------------------------------------------------------

--
-- Структура таблицы `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `birth_date` datetime DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `middle_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `gender` int(1) DEFAULT NULL,
  `hire_date` datetime DEFAULT NULL,
  `department` int(11) DEFAULT NULL,
  `fired` tinyint(1) DEFAULT 0,
  `employeephone` varchar(45) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `socialsecurityno` varchar(45) DEFAULT NULL,
  `createUser` varchar(45) DEFAULT NULL,
  `createDateTime` datetime DEFAULT NULL,
  `updateUser` varchar(45) DEFAULT NULL,
  `updateDateTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `employee`
--

INSERT INTO `employee` (`id`, `birth_date`, `first_name`, `middle_name`, `last_name`, `gender`, `hire_date`, `department`, `fired`, `employeephone`, `email`, `socialsecurityno`, `createUser`, `createDateTime`, `updateUser`, `updateDateTime`) VALUES
(1, '2018-08-15 00:00:00', 'Neil', 'Alden', 'Armstrong', 1, '2018-08-09 00:00:00', 11, 0, '(895)564-97-56', 'example@email.com', '123123123123', '', NULL, '4', '2020-03-20 00:38:59'),
(2, '1982-01-21 00:00:00', 'Andrew', 'S', 'Fuller', 1, '2016-11-04 00:00:00', 5, 1, '(786)546-56-46', '', '34242423424', '', NULL, '4', '2020-03-20 00:41:11'),
(4, '2016-07-04 00:00:00', 'John', '', 'Smith', 1, '2016-11-03 00:00:00', 1, 0, '(879)787-87-98', '', '242442212313', '', NULL, '4', '2020-03-20 00:39:03'),
(5, '2016-11-24 00:00:00', 'Nancy', '', 'Nodier', 2, '2016-11-08 00:00:00', 4, 1, '(786)546-56-46', '', '', '', NULL, '1', '2018-08-11 13:04:31'),
(7, '2016-11-02 00:00:00', 'Mike', '', 'Lemberg', 1, '2016-11-09 00:00:00', 3, 1, '(785)489-55-49', 'mlem@email.com', '', '', NULL, '1', '2018-06-13 19:58:46'),
(8, '1980-02-12 00:00:00', 'Alice', '', 'York', 2, '1986-11-01 00:00:00', 9, 1, '(899)456-46-86', '', '', '', NULL, '4', '2019-12-18 00:15:00'),
(10, '2016-11-18 00:00:00', 'Shelley', '', 'Manchester', 2, '2016-11-20 00:00:00', 2, 1, '(468)976-56-78', '', '', '', NULL, '4', '2018-10-06 22:02:41'),
(13, '2016-11-05 00:00:00', 'Yoshi', '', 'Saylor', 1, '2016-11-01 00:00:00', 2, 1, '(676)786-76-76', '', '', '', NULL, '1', '2018-07-03 16:15:26'),
(14, '2016-09-27 00:00:00', 'Antoni', '', 'Vileid', 2, '2016-11-02 00:00:00', 9, 1, '(878)899-88-98', '', '', '', NULL, '4', '2018-09-17 09:12:45'),
(16, '2016-11-05 00:00:00', 'Mayumi', '', 'Rossi', 1, '2016-11-05 00:00:00', 4, 1, '(675)675-75-67', '', '', '', NULL, '1', '2018-06-13 19:59:44'),
(17, '2016-07-24 00:00:00', 'Ian', '', 'Bein', 1, '2016-11-01 00:00:00', 16, 0, '(566)678-78-89', '', '', '', NULL, '1', '2018-07-12 08:02:17'),
(18, '2016-11-02 00:00:00', 'Peter', '', 'Winkler', 1, '2016-11-08 00:00:00', 9, 0, '(789)797-97-89', '', '', '', NULL, '1', '2018-05-22 22:51:45'),
(21, '2016-11-01 00:00:00', 'Petra', '', 'Wilson', 1, '2016-11-05 00:00:00', 5, 1, '(456)787-97-97', '', '', '', NULL, '4', '2018-12-05 18:36:43'),
(22, '2016-10-31 00:00:00', 'Martin', '', 'Devling', 2, '2016-11-23 00:00:00', 4, 0, '(676)767-67-67', '', '', '', NULL, '1', '2018-05-22 22:51:46'),
(23, '2016-01-11 00:00:00', 'Sven', '', 'Asimov', 1, '2016-01-11 00:00:00', 4, 0, '(444)444-44-44', '', '', '', NULL, '1', '2018-05-22 22:51:46'),
(24, '2016-11-01 00:00:00', 'Elio', '', 'Graff', 1, '2016-11-23 00:00:00', 4, 0, '(797)798-89-77', '', '', '', NULL, '1', '2018-05-22 22:51:47'),
(25, '2016-11-15 00:00:00', 'Marlon', '', 'Brando', 1, '2016-11-23 00:00:00', 10, 0, '(778)998-88-78', '', '', '', NULL, '1', '2018-05-22 22:51:47'),
(38, '2016-10-30 00:00:00', 'Beate', '', 'Ohno', 1, '2016-11-11 00:00:00', 2, 0, '(456)456-45-64', '', '', '', NULL, '1', '2018-05-22 22:51:48'),
(39, '2016-04-22 00:00:00', 'Cheryl', '', 'Saavedra', 1, '2016-11-30 00:00:00', 11, 1, '(789)797-97-89', '', '', '', NULL, '1', '2018-04-28 10:10:55'),
(41, '2016-11-01 00:00:00', 'Michael', '', 'Nagase', 2, '2016-10-30 00:00:00', 1, 0, '(456)787-67-86', '', '', '', NULL, '1', '2018-05-20 20:54:25'),
(81, '1985-12-01 00:00:00', 'Guylene', NULL, 'Murphy', 1, '2016-12-01 00:00:00', 2, 0, '(788)877-88-88', NULL, NULL, '', NULL, '2', '2017-03-11 17:04:09'),
(82, '1987-02-01 00:00:00', 'Victoria', NULL, 'Burke', 1, '2016-11-29 00:00:00', 2, 0, '(867)868-67-67', NULL, NULL, '', NULL, '2', '2017-03-11 17:04:10'),
(88, '2016-11-25 00:00:00', 'John', NULL, 'Davolio', 2, '2016-11-30 00:00:00', 4, 0, '(564)564-56-45', NULL, NULL, '', NULL, '2', '2017-03-11 17:04:11'),
(89, NULL, '', '', '', 1, NULL, NULL, 0, '', '', '', '1', '2018-07-17 12:04:48', '4', '2018-09-20 20:16:47');

-- --------------------------------------------------------

--
-- Структура таблицы `employee_absences`
--

CREATE TABLE `employee_absences` (
  `id` int(11) NOT NULL,
  `employeeid` int(11) DEFAULT NULL,
  `from_date` datetime DEFAULT NULL,
  `to_date` datetime DEFAULT NULL,
  `cause_of_absence` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `unitofmeasure` int(11) DEFAULT NULL,
  `comment` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `employee_absences`
--

INSERT INTO `employee_absences` (`id`, `employeeid`, `from_date`, `to_date`, `cause_of_absence`, `qty`, `unitofmeasure`, `comment`) VALUES
(2, 39, '2017-03-13 00:00:00', '2017-03-15 00:00:00', 2, 2, 3, ''),
(3, 1, '2017-03-13 00:00:00', '2017-03-16 00:00:00', 1, 3, 3, ''),
(4, 2, '2017-03-14 00:00:00', '2017-03-15 00:00:00', 3, 1, 3, 'insomnia'),
(5, 10, '2017-03-14 00:00:00', '2017-03-16 00:00:00', 1, 2, 3, ''),
(6, 14, '2017-03-15 00:00:00', '2017-03-15 00:00:00', 1, 0, 3, ''),
(7, 2, '2017-03-17 00:00:00', '2017-03-17 00:00:00', 3, 1, 5, ''),
(8, 1, '2017-03-18 00:00:00', '2017-03-24 00:00:00', 2, 6, 3, ''),
(9, 2, '2017-04-26 00:00:00', '2017-04-29 00:00:00', 2, 3, 3, ''),
(10, 1, '2017-04-26 00:00:00', '2017-04-27 00:00:00', 3, 1, 3, ''),
(11, 1, '2017-04-27 00:00:00', '2017-04-27 00:00:00', 1, 8, 5, ''),
(12, 5, '2018-06-09 00:00:00', '2018-06-09 00:00:00', 3, 8, 5, '');

-- --------------------------------------------------------

--
-- Структура таблицы `employee_miscarticles`
--

CREATE TABLE `employee_miscarticles` (
  `id` int(11) NOT NULL,
  `employeeid` int(11) DEFAULT NULL,
  `miscarticleid` int(11) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `serial_no` varchar(45) DEFAULT NULL,
  `from_date` datetime DEFAULT NULL,
  `to_date` datetime DEFAULT NULL,
  `comment` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `employee_miscarticles`
--

INSERT INTO `employee_miscarticles` (`id`, `employeeid`, `miscarticleid`, `description`, `serial_no`, `from_date`, `to_date`, `comment`) VALUES
(1, 1, 1, 'Ford Mondeo', 'AB 7689', '2017-03-15 00:00:00', NULL, 'with new tires'),
(2, 1, 3, 'Key from office', '', '2017-03-15 00:00:00', NULL, ''),
(3, 1, 2, 'Desktop PC', 'INV 1927837843', '2017-03-15 00:00:00', NULL, ''),
(4, 2, 2, '', '', '2018-04-28 00:00:00', '2018-04-30 00:00:00', ''),
(5, 21, 2, 'QWMN25466', 'SN654855', NULL, NULL, '');

-- --------------------------------------------------------

--
-- Структура таблицы `employee_qualifications`
--

CREATE TABLE `employee_qualifications` (
  `id` int(11) NOT NULL,
  `employeeid` int(11) DEFAULT NULL,
  `qualificationid` int(11) DEFAULT NULL,
  `from_date` datetime DEFAULT NULL,
  `to_date` datetime DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `institution_company` varchar(100) DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `coursegrade` varchar(45) DEFAULT NULL,
  `comment` varchar(200) DEFAULT NULL,
  `expiration_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `employee_qualifications`
--

INSERT INTO `employee_qualifications` (`id`, `employeeid`, `qualificationid`, `from_date`, `to_date`, `description`, `institution_company`, `cost`, `coursegrade`, `comment`, `expiration_date`) VALUES
(1, 1, 8, '2016-12-25 00:00:00', '2017-03-13 00:00:00', 'test pilot', 'University of Southern California', '100000.00', 'Bachelor of Sience', 'American astronaut and the first person to walk on the Moon', NULL),
(8, 2, 2, '2018-04-12 00:00:00', '2018-04-17 00:00:00', 'Courses', '', '200.00', '', '', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `employee_relatives`
--

CREATE TABLE `employee_relatives` (
  `id` int(11) NOT NULL,
  `employeeid` int(11) DEFAULT NULL,
  `relativeid` int(11) DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `middle_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `birth_date` datetime DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `relative_employeeid` int(11) DEFAULT NULL,
  `comment` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `employee_relatives`
--

INSERT INTO `employee_relatives` (`id`, `employeeid`, `relativeid`, `first_name`, `middle_name`, `last_name`, `birth_date`, `phone`, `relative_employeeid`, `comment`) VALUES
(1, 1, 6, 'Viola', 'Louise', 'Engel', NULL, '', NULL, ''),
(2, 1, 4, 'Stephen', 'Koenig', 'Armstrong', NULL, '(555)898-97-78', NULL, ''),
(3, 2, 7, 'Alice', 'Marina', 'York', '1993-12-28 00:00:00', '(455)555-57-57', 8, ''),
(4, 10, 7, 'Angelina', 'Maria', 'Sanches', '1983-03-17 00:00:00', '(656)565-56-56', NULL, '');

-- --------------------------------------------------------

--
-- Структура таблицы `employee_staffposition`
--

CREATE TABLE `employee_staffposition` (
  `id` int(11) NOT NULL,
  `employeeid` int(11) DEFAULT NULL,
  `staffposition` int(11) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `unpaid` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `employee_staffposition`
--

INSERT INTO `employee_staffposition` (`id`, `employeeid`, `staffposition`, `startdate`, `enddate`, `unpaid`) VALUES
(1, 1, 2, '2016-03-01', '2017-01-06', 1),
(5, 14, 6, '2017-02-08', '2017-02-01', 1),
(10, 7, 1, '2017-02-06', '2017-02-20', 1),
(11, 7, 3, '2017-02-20', '2017-02-23', 1),
(12, 7, 4, NULL, NULL, 1),
(14, 4, 5, '2017-03-01', '2017-03-02', 1),
(15, 4, 3, '2017-03-03', '2017-03-04', 1),
(17, 5, 1, NULL, NULL, 1),
(18, 5, 5, NULL, NULL, 1),
(19, 5, 5, NULL, NULL, 1),
(20, 5, 4, NULL, NULL, 1),
(21, 2, 3, '2017-02-13', '2017-02-16', 0),
(24, 5, 3, NULL, NULL, 1),
(25, 14, NULL, NULL, NULL, NULL),
(37, 41, NULL, NULL, NULL, 0),
(38, 41, NULL, NULL, NULL, 0),
(39, 41, NULL, NULL, NULL, 0),
(40, 14, 6, NULL, NULL, 0),
(41, 4, 1, '2017-03-05', NULL, 0);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `employee_view`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `employee_view` (
`id` int(1)
,`birth_date` int(1)
,`first_name` int(1)
,`middle_name` int(1)
,`last_name` int(1)
,`gender` int(1)
,`hire_date` int(1)
,`department` int(1)
,`department_name` int(1)
,`fired` int(1)
,`employeephone` int(1)
,`email` int(1)
,`socialsecurityno` int(1)
,`createUser` int(1)
,`createDateTime` int(1)
,`updateUser` int(1)
,`updateDateTime` int(1)
);

-- --------------------------------------------------------

--
-- Структура таблицы `employment_contracts`
--

CREATE TABLE `employment_contracts` (
  `id` int(11) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `employment_contracts`
--

INSERT INTO `employment_contracts` (`id`, `code`, `description`) VALUES
(1, 'ADM', 'Administrators'),
(2, 'DEV', 'Developers'),
(3, 'PROD', 'Production staff');

-- --------------------------------------------------------

--
-- Структура таблицы `fa_class`
--

CREATE TABLE `fa_class` (
  `id` int(11) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `fa_class`
--

INSERT INTO `fa_class` (`id`, `code`, `description`) VALUES
(1, 'FINANCIAL', 'Financial Fixed Assets'),
(2, 'INTANGIBLE', 'Intangible Fixed Assets'),
(3, 'TANGIBLE', 'Tangible Fixed Assets');

-- --------------------------------------------------------

--
-- Структура таблицы `fa_depreciation_book`
--

CREATE TABLE `fa_depreciation_book` (
  `id` int(11) NOT NULL,
  `fixed_asset` int(11) DEFAULT NULL,
  `depreciation_book` int(11) DEFAULT NULL,
  `depreciation_method` int(11) DEFAULT NULL,
  `depreciation_starting_date` datetime DEFAULT NULL,
  `straight_line_percent` decimal(18,2) DEFAULT NULL,
  `num_of_depr_years` decimal(18,2) DEFAULT NULL,
  `num_of_depr_months` decimal(18,2) DEFAULT NULL,
  `fixed_depr_amount` decimal(18,2) DEFAULT NULL,
  `declining_balance_percent` decimal(18,2) DEFAULT NULL,
  `fa_posting_group` int(11) DEFAULT NULL,
  `depreciation_ending_date` datetime DEFAULT NULL,
  `acquisition_date` datetime DEFAULT NULL,
  `disposal_date` datetime DEFAULT NULL,
  `last_depreciation_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `fa_depreciation_book`
--

INSERT INTO `fa_depreciation_book` (`id`, `fixed_asset`, `depreciation_book`, `depreciation_method`, `depreciation_starting_date`, `straight_line_percent`, `num_of_depr_years`, `num_of_depr_months`, `fixed_depr_amount`, `declining_balance_percent`, `fa_posting_group`, `depreciation_ending_date`, `acquisition_date`, `disposal_date`, `last_depreciation_date`) VALUES
(1, 1, 1, 1, '2018-07-20 00:00:00', '0.00', '5.00', '60.00', '0.00', NULL, 2, '2023-07-07 00:00:00', '2024-12-13 00:00:00', '2018-10-02 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `fa_depr_methods`
--

CREATE TABLE `fa_depr_methods` (
  `id` int(11) NOT NULL,
  `code` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `fa_depr_methods`
--

INSERT INTO `fa_depr_methods` (`id`, `code`, `description`) VALUES
(1, 'SL', 'Straight Line'),
(2, 'DB1', 'Declining Balance 1'),
(3, 'DB2', 'Declining Balance 2'),
(4, 'DB1/SL', ''),
(5, 'DB2/SL', NULL),
(6, 'UD', 'User Defined'),
(7, 'MANUAL', 'Manual');

-- --------------------------------------------------------

--
-- Структура таблицы `fa_insurance`
--

CREATE TABLE `fa_insurance` (
  `id` int(11) NOT NULL,
  `fa` int(11) DEFAULT NULL,
  `insurance_vendor` int(11) DEFAULT NULL,
  `effective_date` datetime DEFAULT NULL,
  `expiration_date` datetime DEFAULT NULL,
  `insurance_type` int(11) DEFAULT NULL,
  `policy_no` varchar(45) DEFAULT NULL,
  `annual_premium` decimal(18,2) DEFAULT NULL,
  `policy_coverage` decimal(18,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `fa_insurance`
--

INSERT INTO `fa_insurance` (`id`, `fa`, `insurance_vendor`, `effective_date`, `expiration_date`, `insurance_type`, `policy_no`, `annual_premium`, `policy_coverage`) VALUES
(1, 9, 67, '2018-01-01 00:00:00', '2018-12-31 00:00:00', 1, 'QW 27425 A', '400.00', '3500.00'),
(2, 8, 67, '2018-01-01 00:00:00', '2018-12-31 00:00:00', 1, 'QW 37425 A', '300.00', '4500.00'),
(3, 7, 67, '2018-07-01 00:00:00', '2019-07-01 00:00:00', 1, 'QW 38425 A', '200.00', '2000.00'),
(4, 1, 67, '2018-07-05 00:00:00', '2019-07-05 00:00:00', 3, 'MA 18425 A', '1000.00', '30000.00'),
(5, 1, 8, NULL, NULL, NULL, '', NULL, NULL),
(6, 1, NULL, NULL, NULL, NULL, '', '1500.00', '35000.00');

-- --------------------------------------------------------

--
-- Структура таблицы `fa_insurance_journal_line`
--

CREATE TABLE `fa_insurance_journal_line` (
  `id` int(11) NOT NULL,
  `insurance_no` int(11) DEFAULT NULL,
  `fa` int(11) DEFAULT NULL,
  `fa_description` varchar(45) DEFAULT NULL,
  `posting_date` datetime DEFAULT NULL,
  `document_type` int(11) DEFAULT NULL,
  `document_date` datetime DEFAULT NULL,
  `document_no` varchar(45) DEFAULT NULL,
  `external_document_no` varchar(45) DEFAULT NULL,
  `amount` decimal(18,2) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `fa_insurance_type`
--

CREATE TABLE `fa_insurance_type` (
  `id` int(11) NOT NULL,
  `code` varchar(45) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `fa_insurance_type`
--

INSERT INTO `fa_insurance_type` (`id`, `code`, `description`) VALUES
(1, 'CAR', 'Car'),
(2, 'FIRE', 'Fire (Machinery/Other Equipment)'),
(3, 'MACHINERY', 'Machinery/Other Equipment'),
(4, 'THEFT', 'Theft (Machinery/Other Equipment)');

-- --------------------------------------------------------

--
-- Структура таблицы `fa_journal_line`
--

CREATE TABLE `fa_journal_line` (
  `id` int(11) NOT NULL,
  `depreciation_book` int(11) DEFAULT NULL,
  `fa_posting_type` int(11) DEFAULT NULL,
  `fa` int(11) DEFAULT NULL,
  `fa_posting_date` datetime DEFAULT NULL,
  `posting_date` datetime DEFAULT NULL,
  `document_type` int(11) DEFAULT NULL,
  `document_date` datetime DEFAULT NULL,
  `document_no` varchar(45) DEFAULT NULL,
  `external_document_no` varchar(45) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `amount` decimal(18,2) DEFAULT NULL,
  `debit_amount` decimal(18,2) DEFAULT NULL,
  `credit_amount` decimal(18,2) DEFAULT NULL,
  `salvage_value` decimal(18,2) DEFAULT NULL,
  `quantity` decimal(18,2) DEFAULT NULL,
  `correction` tinyint(1) DEFAULT NULL,
  `no_of_depreciation_days` int(11) DEFAULT NULL,
  `depreciation_until_fa_posting_date` tinyint(1) DEFAULT NULL,
  `depr_acquisition_cost` tinyint(1) DEFAULT NULL,
  `fa_posting_group` int(11) DEFAULT NULL,
  `maintenance` int(11) DEFAULT NULL,
  `insurance` int(11) DEFAULT NULL,
  `fa_reclassification_entry` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `fa_journal_line`
--

INSERT INTO `fa_journal_line` (`id`, `depreciation_book`, `fa_posting_type`, `fa`, `fa_posting_date`, `posting_date`, `document_type`, `document_date`, `document_no`, `external_document_no`, `description`, `amount`, `debit_amount`, `credit_amount`, `salvage_value`, `quantity`, `correction`, `no_of_depreciation_days`, `depreciation_until_fa_posting_date`, `depr_acquisition_cost`, `fa_posting_group`, `maintenance`, `insurance`, `fa_reclassification_entry`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, 1, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `fa_locations`
--

CREATE TABLE `fa_locations` (
  `id` int(11) NOT NULL,
  `code` varchar(45) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `fa_locations`
--

INSERT INTO `fa_locations` (`id`, `code`, `description`) VALUES
(1, 'ADM', 'Administration'),
(2, 'BLUE', 'Blue Warehouse'),
(3, 'BUILD 2', 'Machinery Building 2'),
(4, 'GREEN', 'Green Warehouse'),
(5, 'PROD', 'Production'),
(6, 'RECEPTION', 'Reception'),
(7, 'RED', 'Red Warehouse'),
(8, 'SALES', 'Sales'),
(9, 'YELLOW', 'Yellow Warehouse');

-- --------------------------------------------------------

--
-- Структура таблицы `fa_maintenance`
--

CREATE TABLE `fa_maintenance` (
  `id` int(11) NOT NULL,
  `code` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `fa_maintenance`
--

INSERT INTO `fa_maintenance` (`id`, `code`, `description`) VALUES
(1, 'SERVICE', 'Service'),
(2, 'SPAREPARTS', 'Spare parts');

-- --------------------------------------------------------

--
-- Структура таблицы `fa_maintenance_reg`
--

CREATE TABLE `fa_maintenance_reg` (
  `id` int(11) NOT NULL,
  `fa_no` int(11) DEFAULT NULL,
  `service_date` datetime DEFAULT NULL,
  `vendor_no` int(11) DEFAULT NULL,
  `comment` varchar(2000) DEFAULT NULL,
  `service_agent_name` varchar(45) DEFAULT NULL,
  `service_agent_phone` varchar(45) DEFAULT NULL,
  `service_agent_phone2` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `fa_maintenance_reg`
--

INSERT INTO `fa_maintenance_reg` (`id`, `fa_no`, `service_date`, `vendor_no`, `comment`, `service_agent_name`, `service_agent_phone`, `service_agent_phone2`) VALUES
(1, 1, '2018-07-21 00:00:00', 5, 'job well done', 'William Dexter', '123-456-8558', '');

-- --------------------------------------------------------

--
-- Структура таблицы `fa_posting_group`
--

CREATE TABLE `fa_posting_group` (
  `id` int(11) NOT NULL,
  `code` varchar(45) DEFAULT NULL,
  `acquision_cost_account` int(11) DEFAULT NULL,
  `accum_depr_account` int(11) DEFAULT NULL,
  `write_down_account` int(11) DEFAULT NULL,
  `appreciation_account` int(11) DEFAULT NULL,
  `acq_cost_acc_on_disposal` int(11) DEFAULT NULL,
  `accum_depr_acc_on_disposal` int(11) DEFAULT NULL,
  `write_down_acc_on_disposal` int(11) DEFAULT NULL,
  `appreciation_acc_on_disposal` int(11) DEFAULT NULL,
  `gains_acc_on_disposal` int(11) DEFAULT NULL,
  `losses_acc_on_disposal` int(11) DEFAULT NULL,
  `book_val_acc_on_disp_gain` int(11) DEFAULT NULL,
  `sales_acc_on_disp_gain` int(11) DEFAULT NULL,
  `write_down_bal_acc_on_disp` int(11) DEFAULT NULL,
  `appr_bal_acc_on_disp` int(11) DEFAULT NULL,
  `maintance_expense_account` int(11) DEFAULT NULL,
  `maintance_bal_account` int(11) DEFAULT NULL,
  `acquision_cost_bal_account` int(11) DEFAULT NULL,
  `depreciation_expense_account` int(11) DEFAULT NULL,
  `write_down_expense_account` int(11) DEFAULT NULL,
  `appreciation_bal_account` int(11) DEFAULT NULL,
  `sales_bal_account` int(11) DEFAULT NULL,
  `sales_acc_on_disp_loss` int(11) DEFAULT NULL,
  `book_val_acc_on_disp_loss` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `fa_posting_group`
--

INSERT INTO `fa_posting_group` (`id`, `code`, `acquision_cost_account`, `accum_depr_account`, `write_down_account`, `appreciation_account`, `acq_cost_acc_on_disposal`, `accum_depr_acc_on_disposal`, `write_down_acc_on_disposal`, `appreciation_acc_on_disposal`, `gains_acc_on_disposal`, `losses_acc_on_disposal`, `book_val_acc_on_disp_gain`, `sales_acc_on_disp_gain`, `write_down_bal_acc_on_disp`, `appr_bal_acc_on_disp`, `maintance_expense_account`, `maintance_bal_account`, `acquision_cost_bal_account`, `depreciation_expense_account`, `write_down_expense_account`, `appreciation_bal_account`, `sales_bal_account`, `sales_acc_on_disp_loss`, `book_val_acc_on_disp_loss`) VALUES
(1, 'CAR', 19, 21, NULL, NULL, 20, 21, NULL, NULL, 237, 237, NULL, NULL, NULL, NULL, 217, NULL, NULL, 236, NULL, NULL, NULL, NULL, NULL),
(2, 'MACHINERY', 13, 15, NULL, NULL, 14, 15, NULL, NULL, 237, 237, NULL, NULL, NULL, NULL, 223, NULL, NULL, 235, NULL, NULL, NULL, NULL, NULL),
(3, 'TELEPHONE', 13, 15, NULL, NULL, 14, 15, NULL, NULL, 237, 237, NULL, NULL, NULL, NULL, 223, NULL, NULL, 235, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `fa_posting_types`
--

CREATE TABLE `fa_posting_types` (
  `id` int(11) NOT NULL,
  `code` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `fa_posting_types`
--

INSERT INTO `fa_posting_types` (`id`, `code`, `description`) VALUES
(1, 'Acquisition Cost', NULL),
(2, 'Depreciation', ''),
(3, 'Write-Down', NULL),
(4, 'Appreciation', NULL),
(5, 'Disposal', NULL),
(6, 'Maintenance', NULL),
(7, 'Insurance', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `fa_reclass_journal_line`
--

CREATE TABLE `fa_reclass_journal_line` (
  `id` int(11) NOT NULL,
  `fa` int(11) DEFAULT NULL,
  `new_fa` int(11) DEFAULT NULL,
  `fa_posting_date` datetime DEFAULT NULL,
  `posting_date` datetime DEFAULT NULL,
  `depreciation_book` int(11) DEFAULT NULL,
  `reclassify_acq_cost_amount` decimal(18,2) DEFAULT NULL,
  `reclassify_acq_cost_percent` decimal(5,2) DEFAULT NULL,
  `reclassify_aquisition_cost` tinyint(1) DEFAULT NULL,
  `reclassify_depreciation` tinyint(1) DEFAULT NULL,
  `reclassify_write_down` tinyint(1) DEFAULT NULL,
  `reclassify_appreciation` tinyint(1) DEFAULT NULL,
  `reclassify_salvage_value` tinyint(1) DEFAULT NULL,
  `insert_bal_account` tinyint(1) DEFAULT NULL,
  `description` varchar(100) CHARACTER SET big5 DEFAULT NULL,
  `document_no` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `fa_setup`
--

CREATE TABLE `fa_setup` (
  `id` int(11) NOT NULL,
  `allow_posting_to_main_assets` tinyint(1) DEFAULT NULL,
  `default_depr_book` int(11) DEFAULT NULL,
  `insurance_depr_book` int(11) DEFAULT NULL,
  `automatic_insurance_posting` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `fa_subclass`
--

CREATE TABLE `fa_subclass` (
  `id` int(11) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `fa_subclass`
--

INSERT INTO `fa_subclass` (`id`, `code`, `description`) VALUES
(1, 'CAR', 'Car'),
(2, 'MACHINERY', 'Machinery'),
(3, 'TELEPHONE', 'Telephone Equipment');

-- --------------------------------------------------------

--
-- Структура таблицы `fa_type`
--

CREATE TABLE `fa_type` (
  `id` int(11) NOT NULL,
  `code` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `fa_type`
--

INSERT INTO `fa_type` (`id`, `code`) VALUES
(1, ''),
(2, 'main asset'),
(3, 'component');

-- --------------------------------------------------------

--
-- Структура таблицы `fixed_assets`
--

CREATE TABLE `fixed_assets` (
  `id` int(11) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `fa_class` int(11) DEFAULT NULL,
  `fa_subclass` int(11) DEFAULT NULL,
  `fa_location` int(11) DEFAULT NULL,
  `vendor` int(11) DEFAULT NULL,
  `maintenance_vendor` int(11) DEFAULT NULL,
  `fa_type` int(11) DEFAULT NULL,
  `component_of` int(11) DEFAULT NULL,
  `warranty_exp_date` datetime DEFAULT NULL,
  `responsible_empl` int(11) DEFAULT NULL,
  `serial_no` varchar(45) DEFAULT NULL,
  `next_service_date` datetime DEFAULT NULL,
  `inactive` tinyint(1) DEFAULT NULL,
  `insured` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `fixed_assets`
--

INSERT INTO `fixed_assets` (`id`, `description`, `fa_class`, `fa_subclass`, `fa_location`, `vendor`, `maintenance_vendor`, `fa_type`, `component_of`, `warranty_exp_date`, `responsible_empl`, `serial_no`, `next_service_date`, `inactive`, `insured`) VALUES
(1, 'Conveyor, Main Asset', 2, 2, 3, 51, 51, 2, NULL, '2020-03-05 00:00:00', 82, '23 111 SW0', '2018-08-02 00:00:00', NULL, 1),
(2, 'Conveyor Belt', 3, 2, 3, 51, 51, 3, 1, '2020-03-04 00:00:00', 1, '23 111 SW1', '2018-10-05 00:00:00', NULL, 0),
(3, 'Conveyor Lift', 3, 2, 3, 51, 51, 3, 1, '2020-03-04 00:00:00', NULL, '23 111 SW2', '2018-09-21 00:00:00', NULL, 0),
(4, 'Conveyor Computer', 3, 2, 3, 51, 51, 3, 1, '2020-03-04 00:00:00', NULL, '23 111 SW3', '2018-10-20 00:00:00', NULL, 0),
(5, 'Lift for Furniture', 3, 2, 3, 51, 51, 1, NULL, '2020-03-04 00:00:00', NULL, 'AKW2476111', '2020-04-02 00:00:00', NULL, 0),
(6, 'Switchboard', 3, 3, 6, 51, 51, NULL, NULL, '2019-08-01 00:00:00', NULL, 'TELE 4476 Z', '2019-07-04 00:00:00', NULL, 0),
(7, 'VW Transporter', 3, 1, 5, 52, 52, NULL, NULL, NULL, NULL, 'EA 15 397 Q', '2019-11-07 00:00:00', NULL, 0),
(8, 'Toyota Supra 3.0', 3, 1, 8, 52, 52, NULL, NULL, NULL, NULL, 'MC 12 395 A', '2019-12-17 00:00:00', NULL, 0),
(9, 'Mercedes 300', 3, 1, 1, 52, 52, NULL, NULL, NULL, NULL, 'EA 12 394 Q', '2019-10-29 00:00:00', NULL, 0),
(13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `gender`
--

CREATE TABLE `gender` (
  `id` int(11) NOT NULL,
  `name` varchar(10) DEFAULT NULL,
  `shortname` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gender`
--

INSERT INTO `gender` (`id`, `name`, `shortname`) VALUES
(1, 'Male', 'M'),
(2, 'Female', 'F');

-- --------------------------------------------------------

--
-- Структура таблицы `gl_accounts`
--

CREATE TABLE `gl_accounts` (
  `id` int(11) NOT NULL,
  `code` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `posting` tinyint(2) DEFAULT NULL,
  `income_balance` tinyint(1) DEFAULT 0,
  `debit_credit` tinyint(2) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `direct_posting` tinyint(1) DEFAULT NULL,
  `intendation` tinyint(1) DEFAULT NULL,
  `comment` varchar(200) DEFAULT NULL,
  `totaling` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `gl_accounts`
--

INSERT INTO `gl_accounts` (`id`, `code`, `name`, `posting`, `income_balance`, `debit_credit`, `blocked`, `direct_posting`, `intendation`, `comment`, `totaling`) VALUES
(1, '1000', 'BALANCE SHEET', 2, 1, 1, 0, 0, 0, '0', ''),
(2, '1002', 'ASSETS', 4, 1, 1, 0, 0, 0, '0', ''),
(3, '1003', 'Fixed Assets', 4, 1, 1, 0, 0, 1, '0', NULL),
(4, '1005', 'Tangible Fixed Assetsa', 4, 1, 1, 0, 0, 2, '0', ''),
(5, '1100', 'Land and Buildings', 4, 1, 1, 0, 0, 3, '0', ''),
(6, '1110', 'Land and Buildings', 1, 1, 1, 0, 0, 4, '0', NULL),
(7, '1120', 'Increases during the Year', 1, 1, 1, 0, 0, 4, '0', NULL),
(8, '1130', 'Decreases during the Year', 1, 1, 1, 0, 0, 4, '0', NULL),
(9, '1140', 'Accum. Depreciation, Buildings', 1, 1, 1, 0, 0, 4, '0', NULL),
(10, '1190', 'Land and Buildings, Total', 5, 0, 1, 0, 0, 3, '0', '1100..1190'),
(11, '1200', 'Operating Equipment', 4, 1, 1, 0, 0, 3, '0', NULL),
(12, '1210', 'Operating Equipment', 1, 1, 1, 0, 0, 4, '0', NULL),
(13, '1220', 'Increases during the Year', 1, 1, 1, 0, 0, 4, '0', NULL),
(14, '1230', 'Decreases during the Year', 1, 1, 1, 0, 0, 4, '0', NULL),
(15, '1240', 'Accum. Depr., Oper. Equip.', 1, 1, 1, 0, 0, 4, '0', NULL),
(16, '1290', 'Operating Equipment, Total', 5, 1, 1, 0, 0, 3, '0', '1200..1290'),
(17, '1300', 'Vehicles', 4, 1, 1, 0, 0, 3, '0', NULL),
(18, '1310', 'Vehicles', 1, 1, 1, 0, 0, 4, '0', NULL),
(19, '1320', 'Increases during the Year', 1, 1, 1, 0, 0, 4, '0', NULL),
(20, '1330', 'Decreases during the Year', 1, 1, 1, 0, 0, 4, '0', NULL),
(21, '1340', 'Accum. Depreciation, Vehicles', 1, 1, 1, 0, 0, 4, '0', NULL),
(22, '1390', 'Vehicles, Total', 5, 1, 1, 0, 0, 3, '0', '1300..1390'),
(23, '1395', 'Tangible Fixed Assets, Total', 5, 1, 1, 0, 0, 2, '0', '1005..1395'),
(24, '1999', 'Fixed Assets, Total', 5, 1, 1, 0, 0, 1, '0', '1003..1999'),
(25, '2000', 'Current Assets', 4, 1, 1, 0, 0, 1, '0', NULL),
(26, '2100', 'Inventory', 4, 1, 1, 0, 0, 2, '0', NULL),
(27, '2110', 'Resale Items', 1, 1, 1, 0, 0, 3, '0', NULL),
(28, '2111', 'Resale Items (Interim)', 1, 1, 1, 0, 0, 3, '0', NULL),
(29, '2112', 'Cost of Resale Sold (Interim)', 1, 1, 1, 0, 0, 3, '0', NULL),
(30, '2120', 'Finished Goods', 1, 1, 1, 0, 0, 3, '0', NULL),
(31, '2121', 'Finished Goods (Interim)', 1, 1, 1, 0, 0, 3, '0', NULL),
(32, '2130', 'Raw Materials', 1, 1, 1, 0, 0, 3, '0', NULL),
(33, '2131', 'Raw Materials (Interim)', 1, 1, 1, 0, 0, 3, '0', NULL),
(34, '2132', 'Cost of Raw Mat.Sold (Interim)', 1, 1, 1, 0, 0, 3, '0', NULL),
(35, '2140', 'WIP Account, Finished goods', 1, 1, 1, 0, 0, 3, '0', NULL),
(36, '2180', 'Primo Inventory', 1, 1, 1, 0, 0, 3, '0', NULL),
(37, '2190', 'Inventory, Total', 5, 1, 1, 0, 0, 2, '0', '2100..2180'),
(38, '2200', 'WIP', 4, 1, 1, 0, 0, 2, '0', NULL),
(39, '2210', 'WIP Sales', 1, 1, 1, 0, 0, 3, '0', NULL),
(40, '2220', 'WIP Costs', 1, 1, 1, 0, 0, 3, '0', NULL),
(41, '2290', 'WIP, Total', 5, 1, 1, 0, 0, 2, '0', '2200..2290'),
(42, '2300', 'Accounts Receivable', 4, 1, 1, 0, 0, 2, '0', NULL),
(43, '2310', 'Customers, Domestic', 1, 1, 1, 0, 0, 3, '0', NULL),
(44, '2320', 'Customers, Foreign', 1, 1, 1, 0, 0, 3, '0', NULL),
(45, '2330', 'Accrued Interest', 1, 1, 1, 0, 1, 3, '0', NULL),
(46, '2340', 'Other Receivables', 1, 1, 1, 0, 1, 3, '0', NULL),
(47, '2390', 'Accounts Receivable, Total', 5, 1, 1, 0, 0, 2, '0', '2300..2390'),
(48, '2800', 'Securities', 4, 1, 1, 0, 0, 2, '0', NULL),
(49, '2810', 'Bonds', 1, 1, 1, 0, 1, 3, '0', NULL),
(50, '2890', 'Securities, Total', 5, 1, 1, 0, 0, 2, '0', '2800..2890'),
(51, '2900', 'Liquid Assets', 4, 1, 1, 0, 0, 2, '0', NULL),
(52, '2910', 'Cash', 1, 1, 1, 0, 1, 3, '0', NULL),
(53, '2920', 'Bank, LCY', 1, 1, 1, 0, 0, 3, '0', NULL),
(54, '2930', 'Bank Currencies', 1, 1, 1, 0, 0, 3, '0', NULL),
(55, '2940', 'Giro Account', 1, 1, 1, 0, 0, 3, '0', NULL),
(56, '2990', 'Liquid Assets, Total', 5, 1, 1, 0, 0, 2, '0', '2900..2990'),
(57, '2995', 'Current Assets, Total', 5, 1, 1, 0, 0, 1, '0', '2000..2990'),
(58, '2999', 'TOTAL ASSETS', 5, 1, 1, 0, 0, 0, '0', '1002..2990'),
(59, '3000', 'LIABILITIES AND EQUITY', 2, 1, 1, 0, 0, 0, '0', NULL),
(60, '3100', 'Stockholder\'s Equity', 2, 1, 1, 0, 0, 0, '0', NULL),
(61, '3110', 'Capital Stock', 1, 1, 1, 0, 0, 0, '0', NULL),
(62, '3120', 'Retained Earnings', 1, 1, 1, 0, 0, 0, '0', NULL),
(63, '3195', 'Net Income for the Year', 3, 1, 1, 0, 0, 0, '0', '6000..9999'),
(64, '3199', 'Total Stockholder\'s Equity', 3, 1, 1, 0, 0, 0, '0', '3100..3199&6000..9999'),
(65, '4000', 'Allowances', 4, 1, 1, 0, 0, 0, '0', NULL),
(66, '4010', 'Deferred Taxes', 1, 1, 1, 0, 0, 1, '0', NULL),
(67, '4999', 'Allowances, Total', 5, 1, 1, 0, 0, 0, '0', '4000..4999'),
(68, '5000', 'Liabilities', 4, 1, 1, 0, 0, 0, '0', NULL),
(69, '5100', 'Long-term Liabilities', 4, 1, 1, 0, 0, 1, '0', NULL),
(70, '5110', 'Long-term Bank Loans', 1, 1, 1, 0, 1, 2, '0', NULL),
(71, '5120', 'Mortgage', 1, 1, 1, 0, 1, 2, '0', NULL),
(72, '5290', 'Long-term Liabilities, Total', 5, 1, 1, 0, 0, 1, '0', '5100..5290'),
(73, '5300', 'Short-term Liabilities', 4, 1, 1, 0, 0, 1, '0', NULL),
(74, '5310', 'Revolving Credit', 1, 1, 1, 0, 0, 2, '0', NULL),
(75, '5400', 'Accounts Payable', 4, 1, 1, 0, 0, 2, '0', NULL),
(76, '5410', 'Vendors, Domestic', 1, 1, 1, 0, 0, 3, '0', NULL),
(77, '5420', 'Vendors, Foreign', 1, 1, 1, 0, 0, 3, '0', NULL),
(78, '5490', 'Accounts Payable, Total', 5, 1, 1, 0, 0, 2, '0', '5400..5490'),
(79, '5500', 'Inv. Adjmt. (Interim)', 4, 1, 1, 0, 0, 2, '0', NULL),
(80, '5510', 'Inv. Adjmt. (Interim), Retail', 1, 1, 1, 0, 0, 3, '0', NULL),
(81, '5530', 'Inv. Adjmt. (Interim), Raw Mat', 1, 1, 1, 0, 0, 3, '0', NULL),
(82, '5590', 'Inv. Adjmt. (Interim), Total', 5, 1, 1, 0, 0, 2, '0', '5500..5590'),
(83, '5600', 'VAT', 4, 1, 1, 0, 0, 2, '0', NULL),
(84, '5610', 'Sales VAT 25 %', 1, 1, 1, 0, 0, 3, '0', NULL),
(85, '5611', 'Sales VAT 10 %', 1, 1, 1, 0, 0, 3, '0', NULL),
(86, '5620', 'Purchase VAT 25 % EU', 1, 1, 1, 0, 0, 3, '0', NULL),
(87, '5621', 'Purchase VAT 10 % EU', 1, 1, 1, 0, 0, 3, '0', NULL),
(88, '5630', 'Purchase VAT 25 %', 1, 1, 1, 0, 0, 3, '0', NULL),
(89, '5631', 'Purchase VAT 10 %', 1, 1, 1, 0, 0, 3, '0', NULL),
(90, '5710', 'Fuel Tax', 1, 1, 1, 0, 1, 3, '0', NULL),
(91, '5720', 'Electricity Tax', 1, 1, 1, 0, 1, 3, '0', NULL),
(92, '5730', 'Natural Gas Tax', 1, 1, 1, 0, 1, 3, '0', NULL),
(93, '5740', 'Coal Tax', 1, 1, 1, 0, 1, 3, '0', ''),
(94, '5750', 'CO2 Tax', 1, 1, 1, 0, 1, 3, '0', NULL),
(95, '5760', 'Water Tax', 1, 1, 1, 0, 1, 3, '0', NULL),
(96, '5780', 'VAT Payable', 1, 1, 1, 0, 1, 3, '0', NULL),
(97, '5790', 'VAT, Total', 5, 1, 1, 0, 0, 2, '0', '5600..5790'),
(98, '5795', 'Prepaid Service Contracts', 4, 1, 1, 0, 0, 2, '0', NULL),
(99, '5796', 'Prepaid Hardware Contracts', 1, 1, 1, 0, 1, 3, '0', NULL),
(100, '5797', 'Prepaid Software Contracts', 1, 1, 1, 0, 1, 3, '0', NULL),
(101, '5799', 'Total Prepaid Service Contract', 5, 1, 1, 0, 0, 2, '0', '5795..5799'),
(102, '5800', 'Personnel-related Items', 4, 1, 1, 0, 0, 2, '0', NULL),
(103, '5810', 'Withholding Taxes Payable', 1, 1, 1, 0, 1, 3, '0', NULL),
(104, '5820', 'Supplementary Taxes Payable', 1, 1, 1, 0, 1, 3, '0', NULL),
(105, '5830', 'Payroll Taxes Payable', 1, 1, 1, 0, 1, 3, '0', NULL),
(106, '5840', 'Vacation Compensation Payable', 1, 1, 1, 0, 1, 3, '0', NULL),
(107, '5890', 'Total Personnel-related Items', 5, 1, 1, 0, 0, 2, '0', '5800..5890'),
(108, '5900', 'Other Liabilities', 4, 1, 1, 0, 0, 2, '0', NULL),
(109, '5910', 'Dividends for the Fiscal Year', 1, 1, 1, 0, 1, 3, '0', NULL),
(110, '5920', 'Corporate Taxes Payable', 1, 1, 1, 0, 1, 3, '0', NULL),
(111, '5990', 'Other Liabilities, Total', 5, 1, 1, 0, 0, 2, '0', '5900..5990'),
(112, '5995', 'Short-term Liabilities, Total', 5, 1, 1, 0, 0, 1, '0', '5300..5995'),
(113, '5997', 'Total Liabilities', 5, 1, 1, 0, 0, 0, '0', '5000..5997'),
(114, '5999', 'TOTAL LIABILITIES AND EQUITY', 3, 1, 1, 0, 0, 0, '0', '3000..5999&6000..9999'),
(115, '6000', 'INCOME STATEMENT', 2, 0, 1, 0, 0, 0, '0', NULL),
(116, '6100', 'Revenue', 4, 0, 1, 0, 0, 0, '0', NULL),
(117, '6105', 'Sales of Retail', 4, 0, 1, 0, 0, 1, '0', NULL),
(118, '6110', 'Sales, Retail - Dom.', 1, 0, 1, 0, 0, 2, '0', NULL),
(119, '6120', 'Sales, Retail - EU', 1, 0, 1, 0, 1, 2, '0', NULL),
(120, '6130', 'Sales, Retail - Export', 1, 0, 1, 0, 0, 2, '0', NULL),
(121, '6190', 'Job Sales Adjmt., Retail', 1, 0, 1, 0, 0, 2, '0', NULL),
(122, '6195', 'Total Sales of Retail', 5, 0, 1, 0, 0, 1, '0', '6105..6195'),
(123, '6205', 'Sales of Raw Materials', 4, 0, 1, 0, 0, 1, '0', NULL),
(124, '6210', 'Sales, Raw Materials - Dom.', 1, 0, 1, 0, 0, 2, '0', NULL),
(125, '6220', 'Sales, Raw Materials - EU', 1, 0, 1, 0, 0, 2, '0', NULL),
(126, '6230', 'Sales, Raw Materials - Export', 1, 0, 1, 0, 0, 2, '0', NULL),
(127, '6290', 'Job Sales Adjmt., Raw Mat.', 1, 0, 1, 0, 0, 2, '0', NULL),
(128, '6295', 'Total Sales of Raw Materials', 5, 0, 1, 0, 0, 1, '0', '6205..6295'),
(129, '6405', 'Sales of Resources', 4, 0, 1, 0, 0, 1, '0', NULL),
(130, '6410', 'Sales, Resources - Dom.', 1, 0, 1, 0, 0, 2, '0', NULL),
(131, '6420', 'Sales, Resources - EU', 1, 0, 1, 0, 0, 2, '0', NULL),
(132, '6430', 'Sales, Resources - Export', 1, 0, 1, 0, 0, 2, '0', NULL),
(133, '6490', 'Job Sales Adjmt., Resources', 1, 0, 1, 0, 0, 2, '0', NULL),
(134, '6495', 'Total Sales of Resources', 5, 0, 1, 0, 0, 1, '0', '6405..6495'),
(135, '6605', 'Sales of Jobs', 4, 0, 1, 0, 0, 1, '0', NULL),
(136, '6610', 'Sales, Other Job Expenses', 1, 0, 1, 0, 0, 2, '0', NULL),
(137, '6620', 'Job Sales', 1, 0, 1, 0, 0, 2, '0', NULL),
(138, '6695', 'Total Sales of Jobs', 5, 0, 1, 0, 0, 1, '0', '6605..6695'),
(139, '6710', 'Consulting Fees - Dom.', 1, 0, 1, 0, 1, 1, '0', NULL),
(140, '6810', 'Fees and Charges Rec. - Dom.', 1, 0, 1, 0, 1, 1, '0', NULL),
(141, '6910', 'Discount Granted', 1, 0, 1, 0, 0, 1, '0', NULL),
(142, '6950', 'Sales of Service Contracts', 4, 0, 1, 0, 0, 1, '0', NULL),
(143, '6955', 'Service Contract Sale', 1, 0, 1, 0, 1, 2, '0', NULL),
(144, '6959', 'Total Sale of Serv. Contracts', 5, 0, 1, 0, 0, 1, '0', '6950..6959'),
(145, '6995', 'Total Revenue', 5, 0, 1, 0, 0, 0, '0', '6100..6995'),
(146, '7100', 'Cost', 4, 0, 1, 0, 0, 0, '0', NULL),
(147, '7105', 'Cost of Retail', 4, 0, 1, 0, 0, 1, '0', NULL),
(148, '7110', 'Purch., Retail - Dom.', 1, 0, 1, 0, 0, 2, '0', NULL),
(149, '7120', 'Purch., Retail - EU', 1, 0, 1, 0, 1, 2, '0', NULL),
(150, '7130', 'Purch., Retail - Export', 1, 0, 1, 0, 0, 2, '0', NULL),
(151, '7140', 'Disc. Received, Retail', 1, 0, 1, 0, 0, 2, '0', NULL),
(152, '7150', 'Delivery Expenses, Retail', 1, 0, 1, 0, 1, 2, '0', NULL),
(153, '7170', 'Inventory Adjmt., Retail', 1, 0, 1, 0, 0, 2, '0', NULL),
(154, '7180', 'Job Cost Adjmt., Retail', 1, 0, 1, 0, 0, 2, '0', NULL),
(155, '7190', 'Cost of Retail Sold', 1, 0, 1, 0, 0, 2, '0', NULL),
(156, '7191', 'Direct Cost Applied, Retail', 1, 0, 1, 0, 0, 2, '0', NULL),
(157, '7192', 'Overhead Applied, Retail', 1, 0, 1, 0, 0, 2, '0', NULL),
(158, '7193', 'Purchase Variance, Retail', 1, 0, 1, 0, 0, 2, '0', NULL),
(159, '7195', 'Total Cost of Retail', 5, 0, 1, 0, 0, 1, '0', '7105..7195'),
(160, '7205', 'Cost of Raw Materials', 4, 0, 1, 0, 0, 1, '0', NULL),
(161, '7210', 'Purch., Raw Materials - Dom.', 1, 0, 1, 0, 0, 2, '0', NULL),
(162, '7220', 'Purch., Raw Materials - EU', 1, 0, 1, 0, 0, 2, '0', NULL),
(163, '7230', 'Purch., Raw Materials - Export', 1, 0, 1, 0, 0, 2, '0', NULL),
(164, '7240', 'Disc. Received, Raw Materials', 1, 0, 1, 0, 0, 2, '0', NULL),
(165, '7250', 'Delivery Expenses, Raw Mat.', 1, 0, 1, 0, 1, 2, '0', NULL),
(166, '7270', 'Inventory Adjmt., Raw Mat.', 1, 0, 1, 0, 0, 2, '0', NULL),
(167, '7280', 'Job Cost Adjmt., Raw Materials', 1, 0, 1, 0, 0, 2, '0', NULL),
(168, '7290', 'Cost of Raw Materials Sold', 1, 0, 1, 0, 0, 2, '0', NULL),
(169, '7291', 'Direct Cost Applied, Rawmat.', 1, 0, 1, 0, 0, 2, '0', NULL),
(170, '7292', 'Overhead Applied, Rawmat.', 1, 0, 1, 0, 0, 2, '0', NULL),
(171, '7293', 'Purchase Variance, Rawmat.', 1, 0, 1, 0, 0, 2, '0', NULL),
(172, '7295', 'Total Cost of Raw Materials', 5, 0, 1, 0, 0, 1, '0', '7205..7295'),
(173, '7405', 'Cost of Resources', 4, 0, 1, 0, 0, 1, '0', NULL),
(174, '7480', 'Job Cost Adjmt., Resources', 1, 0, 1, 0, 0, 2, '0', NULL),
(175, '7490', 'Cost of Resources Used', 1, 0, 1, 0, 1, 2, '0', NULL),
(176, '7495', 'Total Cost of Resources', 5, 0, 1, 0, 0, 1, '0', '7405..7495'),
(177, '7620', 'Job Costs', 1, 0, 1, 0, 0, 1, '0', NULL),
(178, '7705', 'Cost of Capacities', 4, 0, 1, 0, 0, 1, '0', NULL),
(179, '7710', 'Cost of Capacities', 1, 0, 1, 0, 0, 2, '0', NULL),
(180, '7791', 'Direct Cost Applied, Cap.', 1, 0, 1, 0, 0, 2, '0', NULL),
(181, '7792', 'Overhead Applied, Cap.', 1, 0, 1, 0, 0, 2, '0', NULL),
(182, '7793', 'Purchase Variance, Cap.', 1, 0, 1, 0, 0, 2, '0', NULL),
(183, '7795', 'Total Cost of Capacities', 5, 0, 1, 0, 0, 1, '0', '7705..7795'),
(184, '7805', 'Variance', 4, 0, 1, 0, 0, 1, '0', NULL),
(185, '7890', 'Material Variance', 1, 0, 1, 0, 0, 2, '0', NULL),
(186, '7891', 'Capacity Variance', 1, 0, 1, 0, 0, 2, '0', NULL),
(187, '7892', 'Subcontracted Variance', 1, 0, 1, 0, 0, 2, '0', NULL),
(188, '7893', 'Cap. Overhead Variance', 1, 0, 1, 0, 0, 2, '0', NULL),
(189, '7894', 'Mfg. Overhead Variance', 1, 0, 1, 0, 0, 2, '0', NULL),
(190, '7895', 'Total Variance', 5, 0, 1, 0, 0, 1, '0', '7805..7895'),
(191, '7995', 'Total Cost', 5, 0, 1, 0, 0, 0, '0', '7100..7995'),
(192, '8000', 'Operating Expenses', 4, 0, 1, 0, 0, 0, '0', NULL),
(193, '8100', 'Building Maintenance Expenses', 4, 0, 1, 0, 0, 1, '0', NULL),
(194, '8110', 'Cleaning', 1, 0, 1, 0, 1, 2, '0', NULL),
(195, '8120', 'Electricity and Heating', 1, 0, 1, 0, 1, 2, '0', NULL),
(196, '8130', 'Repairs and Maintenance', 1, 0, 1, 0, 1, 2, '0', NULL),
(197, '8190', 'Total Bldg. Maint. Expenses', 5, 0, 1, 0, 0, 1, '0', '8100..8190'),
(198, '8200', 'Administrative Expenses', 4, 0, 1, 0, 0, 1, '0', NULL),
(199, '8210', 'Office Supplies', 1, 0, 1, 0, 1, 2, '0', ''),
(200, '8230', 'Phone and Fax', 1, 0, 1, 0, 1, 2, '0', NULL),
(201, '8240', 'Postage', 1, 0, 1, 0, 1, 2, '0', NULL),
(202, '8290', 'Total Administrative Expenses', 5, 0, 1, 0, 0, 1, '0', '8200..8290'),
(203, '8300', 'Computer Expenses', 4, 0, 1, 0, 0, 1, '0', NULL),
(204, '8310', 'Software', 1, 0, 1, 0, 1, 2, '0', NULL),
(205, '8320', 'Consultant Services', 1, 0, 1, 0, 1, 2, '0', NULL),
(206, '8330', 'Other Computer Expenses', 1, 0, 1, 0, 1, 2, '0', NULL),
(207, '8390', 'Total Computer Expenses', 5, 0, 1, 0, 0, 1, '0', '8300..8390'),
(208, '8400', 'Selling Expenses', 4, 0, 1, 0, 0, 1, '0', NULL),
(209, '8410', 'Advertising', 1, 0, 1, 0, 1, 2, '0', NULL),
(210, '8420', 'Entertainment and PR', 1, 0, 1, 0, 1, 2, '0', NULL),
(211, '8430', 'Travel', 1, 0, 1, 0, 1, 2, '0', NULL),
(212, '8450', 'Delivery Expenses', 1, 0, 1, 0, 1, 2, '0', NULL),
(213, '8490', 'Total Selling Expenses', 5, 0, 1, 0, 0, 1, '0', '8400..8490'),
(214, '8500', 'Vehicle Expenses', 4, 0, 1, 0, 0, 1, '0', NULL),
(215, '8510', 'Gasoline and Motor Oil', 1, 0, 1, 0, 1, 2, '0', NULL),
(216, '8520', 'Registration Fees', 1, 0, 1, 0, 1, 2, '0', NULL),
(217, '8530', 'Repairs and Maintenance', 1, 0, 1, 0, 1, 2, '0', NULL),
(218, '8590', 'Total Vehicle Expenses', 5, 0, 1, 0, 0, 1, '0', '8500..8590'),
(219, '8600', 'Other Operating Expenses', 4, 0, 1, 0, 0, 1, '0', NULL),
(220, '8610', 'Cash Discrepancies', 1, 0, 1, 0, 1, 2, '0', NULL),
(221, '8620', 'Bad Debt Expenses', 1, 0, 1, 0, 1, 2, '0', NULL),
(222, '8630', 'Legal and Accounting Services', 1, 0, 1, 0, 1, 2, '0', NULL),
(223, '8640', 'Miscellaneous', 1, 0, 1, 0, 1, 2, '0', NULL),
(224, '8690', 'Other Operating Exp., Total', 5, 0, 1, 0, 0, 1, '0', '8600..8690'),
(225, '8695', 'Total Operating Expenses', 5, 0, 1, 0, 0, 0, '0', '8000..8695'),
(226, '8700', 'Personnel Expenses', 4, 0, 1, 0, 0, 0, '0', NULL),
(227, '8710', 'Wages', 1, 0, 1, 0, 1, 1, '0', NULL),
(228, '8720', 'Salaries', 1, 0, 1, 0, 1, 1, '0', NULL),
(229, '8730', 'Retirement Plan Contributions', 1, 0, 1, 0, 1, 1, '0', NULL),
(230, '8740', 'Vacation Compensation', 1, 0, 1, 0, 1, 1, '0', NULL),
(231, '8750', 'Payroll Taxes', 1, 0, 1, 0, 1, 1, '1', NULL),
(232, '8790', 'Total Personnel Expenses', 5, 0, 1, 0, 0, 0, '0', '8700..8790'),
(233, '8800', 'Depreciation of Fixed Assets', 4, 0, 1, 0, 0, 0, '0', NULL),
(234, '8810', 'Depreciation, Buildings', 1, 0, 1, 0, 1, 1, '0', NULL),
(235, '8820', 'Depreciation, Equipment', 1, 0, 1, 0, 1, 1, '0', NULL),
(236, '8830', 'Depreciation, Vehicles', 1, 0, 1, 0, 1, 1, '0', NULL),
(237, '8840', 'Gains and Losses', 1, 0, 1, 0, 0, 1, '0', NULL),
(238, '8890', 'Total Fixed Asset Depreciation', 5, 0, 1, 0, 0, 0, '0', '8800..8890'),
(239, '8910', 'Other Costs of Operations', 1, 0, 1, 0, 1, 0, '0', NULL),
(240, '8995', 'Net Operating Income', 3, 0, 1, 0, 0, 0, '0', '6000..8995'),
(241, '9100', 'Interest Income', 4, 0, 1, 0, 0, 0, '0', NULL),
(242, '9110', 'Interest on Bank Balances', 1, 0, 1, 0, 1, 1, '0', NULL),
(243, '9120', 'Finance Charges from Customers', 1, 0, 1, 0, 1, 1, '0', NULL),
(244, '9130', 'Payment Discounts Received', 1, 0, 1, 0, 0, 1, '0', NULL),
(245, '9135', 'PmtDisc. Received - Decreases', 1, 0, 1, 0, 0, 1, '0', NULL),
(246, '9140', 'Invoice Rounding', 1, 0, 1, 0, 0, 1, '0', NULL),
(247, '9150', 'Application Rounding', 1, 0, 1, 0, 0, 1, '0', NULL),
(248, '9160', 'Payment Tolerance Received', 1, 0, 1, 0, 0, 1, '0', NULL),
(249, '9170', 'Pmt. Tol. Received Decreases', 1, 0, 1, 0, 0, 1, '0', NULL),
(250, '9190', 'Total Interest Income', 5, 0, 1, 0, 0, 0, '0', '9100..9190'),
(251, '9200', 'Interest Expenses', 4, 0, 1, 0, 0, 0, '0', NULL),
(252, '9210', 'Interest on Revolving Credit', 1, 0, 1, 0, 1, 1, '0', NULL),
(253, '9220', 'Interest on Bank Loans', 1, 0, 1, 0, 1, 1, '0', NULL),
(254, '9230', 'Mortgage Interest', 1, 0, 1, 0, 1, 1, '0', NULL),
(255, '9240', 'Finance Charges to Vendors', 1, 0, 1, 0, 1, 1, '0', NULL),
(256, '9250', 'Payment Discounts Granted', 1, 0, 1, 0, 0, 1, '0', NULL),
(257, '9255', 'PmtDisc. Granted - Decreases', 1, 0, 1, 0, 0, 1, '0', NULL),
(258, '9260', 'Payment Tolerance Granted', 1, 0, 1, 0, 0, 1, '0', NULL),
(259, '9270', 'Pmt. Tol. Granted Decreases', 1, 0, 1, 0, 0, 1, '0', NULL),
(260, '9290', 'Total Interest Expenses', 5, 0, 1, 0, 0, 0, '0', '9200..9290'),
(261, '9310', 'Unrealized FX Gains', 1, 0, 1, 0, 0, 0, '0', NULL),
(262, '9320', 'Unrealized FX Losses', 1, 0, 1, 0, 0, 0, '0', NULL),
(263, '9330', 'Realized FX Gains', 1, 0, 1, 0, 0, 0, '0', NULL),
(264, '9340', 'Realized FX Losses', 1, 0, 1, 0, 0, 0, '0', NULL),
(265, '9395', 'NI BEFORE EXTR. ITEMS & TAXES', 3, 0, 1, 0, 0, 0, '0', '6000..9395'),
(266, '9410', 'Extraordinary Income', 1, 0, 1, 0, 1, 0, '0', NULL),
(267, '9420', 'Extraordinary Expenses', 1, 0, 1, 0, 1, 0, '0', NULL),
(268, '9495', 'NET INCOME BEFORE TAXES', 3, 0, 1, 0, 0, 0, '0', '6000..9495'),
(269, '9510', 'Corporate Tax', 1, 0, 1, 0, 1, 0, '0', NULL),
(270, '9999', 'NET INCOME', 3, 0, 1, 0, 0, 0, '0', '6000..9999');

-- --------------------------------------------------------

--
-- Структура таблицы `gl_account_types`
--

CREATE TABLE `gl_account_types` (
  `id` int(11) NOT NULL,
  `code` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `gl_account_types`
--

INSERT INTO `gl_account_types` (`id`, `code`) VALUES
(1, 'GL Account'),
(2, 'Customer'),
(3, 'Vendor'),
(4, 'Bank Account'),
(5, 'Fixed Asset');

-- --------------------------------------------------------

--
-- Структура таблицы `gl_bank_account`
--

CREATE TABLE `gl_bank_account` (
  `id` int(11) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `post_code` varchar(45) DEFAULT NULL,
  `address` varchar(400) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL,
  `bank_branch_no` varchar(45) DEFAULT NULL,
  `bank_account_no` varchar(45) DEFAULT NULL,
  `swift` varchar(45) DEFAULT NULL,
  `iban` varchar(45) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `last_date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `gl_bank_account`
--

INSERT INTO `gl_bank_account` (`id`, `code`, `description`, `post_code`, `address`, `phone`, `contact`, `bank_branch_no`, `bank_account_no`, `swift`, `iban`, `blocked`, `last_date_modified`) VALUES
(1, 'GIRO', 'Giro Bank', 'GB-W1 3AL', '2 Bridge Street', '124', 'Paula Nartker', 'GO284033', '14-55-678', '', 'GB 80 RBOS 161732 41116737', 0, NULL),
(9, 'GMB', 'Global Mobile Bank', 'GMB-W1', '', '', '', '', '', '', '', 1, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `gl_document_types`
--

CREATE TABLE `gl_document_types` (
  `id` int(11) NOT NULL,
  `code` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `gl_document_types`
--

INSERT INTO `gl_document_types` (`id`, `code`) VALUES
(1, NULL),
(2, 'Payment'),
(3, 'Invoice'),
(4, 'Credit Memo'),
(5, 'Finance Charge Memo'),
(6, 'Reminder'),
(7, 'Refund');

-- --------------------------------------------------------

--
-- Структура таблицы `gl_entries`
--

CREATE TABLE `gl_entries` (
  `id` int(11) NOT NULL,
  `posting_date` datetime DEFAULT NULL,
  `document_no` varchar(45) DEFAULT NULL,
  `gl_account` int(11) DEFAULT NULL,
  `amount` decimal(18,2) DEFAULT NULL,
  `debit_amount` decimal(18,2) DEFAULT NULL,
  `credit_amount` decimal(18,2) DEFAULT NULL,
  `transaction_no` int(11) DEFAULT NULL,
  `bal_account_no` int(11) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `gl_entries`
--

INSERT INTO `gl_entries` (`id`, `posting_date`, `document_no`, `gl_account`, `amount`, `debit_amount`, `credit_amount`, `transaction_no`, `bal_account_no`, `description`) VALUES
(44, '2018-07-03 00:00:00', 'PMNT-000233', 53, '-12.00', NULL, '12.00', 25, 92, '2920 Bank, LCY'),
(45, '2018-07-03 00:00:00', 'PMNT-000233', 92, '12.00', '12.00', NULL, 25, 53, '5730 Natural Gas Tax'),
(46, '2018-07-03 00:00:00', 'PMNT-00002', 53, '-12.00', NULL, '12.00', 26, 92, '2920 Bank, LCY'),
(47, '2018-07-03 00:00:00', 'PMNT-00002', 92, '12.00', '12.00', NULL, 26, 53, '5730 Natural Gas Tax'),
(48, '2018-07-03 00:00:00', 'PMNT-00003', 53, '-15.00', NULL, '15.00', 26, 94, '2920 Bank, LCY'),
(49, '2018-07-03 00:00:00', 'PMNT-00003', 94, '15.00', '15.00', NULL, 26, 53, '5750 CO2 Tax'),
(50, '2018-07-03 00:00:00', 'PAY-000013', 53, '-15.28', NULL, '15.28', 27, 92, '2920 Bank, LCY'),
(51, '2018-07-03 00:00:00', 'PAY-000013', 92, '15.28', '15.28', NULL, 27, 53, '5730 Natural Gas Tax'),
(52, '2018-07-05 00:00:00', 'PAY-000012', 53, '-12.25', NULL, '12.25', 28, 90, '2920 Bank, LCY'),
(53, '2018-07-05 00:00:00', 'PAY-000012', 90, '12.25', '12.25', NULL, 28, 53, '5710 Fuel Tax'),
(54, '2018-07-03 00:00:00', 'PAY-000014', 53, '-13.47', NULL, '13.47', 28, 93, '2920 Bank, LCY'),
(55, '2018-07-03 00:00:00', 'PAY-000014', 93, '13.47', '13.47', NULL, 28, 53, '5740 Coal Tax'),
(56, '2018-07-09 00:00:00', 'TAXP-00001', 53, '-14.87', NULL, '14.87', 29, 91, '2920 Bank, LCY'),
(57, '2018-07-09 00:00:00', 'TAXP-00001', 91, '14.87', '14.87', NULL, 29, 53, '5720 Electricity Tax'),
(58, '2018-07-09 00:00:00', 'P-01029', 53, '-15.00', NULL, '15.00', 30, 93, '2920 Bank, LCY'),
(59, '2018-07-09 00:00:00', 'P-01029', 93, '15.00', '15.00', NULL, 30, 53, '5740 Coal Tax'),
(60, '2018-08-05 00:00:00', 'TAXPAY-0001', 53, '-12.34', NULL, '12.34', 31, 90, '2920 Bank, LCY'),
(61, '2018-08-05 00:00:00', 'TAXPAY-0001', 90, '12.34', '12.34', NULL, 31, 53, '5710 Fuel Tax'),
(62, '2018-08-21 00:00:00', 'TAXPAYMNT01', 53, '-11.32', NULL, '11.32', 32, 95, '2920 Bank, LCY'),
(63, '2018-08-21 00:00:00', 'TAXPAYMNT01', 95, '11.32', '11.32', NULL, 32, 53, '5760 Water Tax'),
(64, '2018-09-20 00:00:00', '12345', 6, '120.00', '120.00', NULL, 33, 8, '1110 Land and Buildings'),
(65, '2018-09-20 00:00:00', '12345', 8, '-120.00', NULL, '120.00', 33, 6, '1130 Decreases during the Year');

-- --------------------------------------------------------

--
-- Структура таблицы `gl_journal_line`
--

CREATE TABLE `gl_journal_line` (
  `id` int(11) NOT NULL,
  `account_type` int(11) DEFAULT NULL,
  `account_no` int(11) DEFAULT NULL,
  `account_description` varchar(100) DEFAULT NULL,
  `posting_date` datetime DEFAULT NULL,
  `document_type` int(11) DEFAULT NULL,
  `document_no` varchar(45) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `amount` decimal(18,2) DEFAULT NULL,
  `bal_account_type` int(11) DEFAULT NULL,
  `bal_account_no` int(11) DEFAULT NULL,
  `bal_account_description` varchar(100) DEFAULT NULL,
  `debet_amount` decimal(18,2) DEFAULT NULL,
  `credit_amount` decimal(18,2) DEFAULT NULL,
  `depreciation_book` int(11) DEFAULT NULL,
  `fa_posting_date` datetime DEFAULT NULL,
  `fa_posting_type` int(11) DEFAULT NULL,
  `salvage_value` decimal(18,2) DEFAULT NULL,
  `no_of_depreciation_days` int(11) DEFAULT NULL,
  `depr_until_fa_posting_date` tinyint(1) DEFAULT NULL,
  `depr_acquisition_cost` tinyint(1) DEFAULT NULL,
  `maintenance` int(11) DEFAULT NULL,
  `insurance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `gl_registers`
--

CREATE TABLE `gl_registers` (
  `id` int(11) NOT NULL,
  `from_entry` int(11) DEFAULT NULL,
  `to_entry` int(11) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `gl_tax_bus_post_gr`
--

CREATE TABLE `gl_tax_bus_post_gr` (
  `id` int(11) NOT NULL,
  `code` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `gl_tax_bus_post_gr`
--

INSERT INTO `gl_tax_bus_post_gr` (`id`, `code`, `description`) VALUES
(1, '', NULL),
(2, 'EU', 'Customers and vendors in EU'),
(3, 'EXPORT', 'Other customers and vendors (not EU)'),
(4, 'NATIONAL', 'Domestic customers and vendors');

-- --------------------------------------------------------

--
-- Структура таблицы `gl_tax_prod_post_gr`
--

CREATE TABLE `gl_tax_prod_post_gr` (
  `id` int(11) NOT NULL,
  `code` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `gl_tax_prod_post_gr`
--

INSERT INTO `gl_tax_prod_post_gr` (`id`, `code`, `description`) VALUES
(1, 'NO VAT', 'Miscellaneous without VAT'),
(2, 'VAT10', 'Miscellaneous with 10 % VAT'),
(3, 'VAT25', 'Miscellaneous with 25 % VAT');

-- --------------------------------------------------------

--
-- Структура таблицы `gl_tax_setup`
--

CREATE TABLE `gl_tax_setup` (
  `id` int(11) NOT NULL,
  `bus_post_gr` int(11) DEFAULT NULL,
  `prod_post_gr` int(11) DEFAULT NULL,
  `calculation_type` int(11) DEFAULT NULL,
  `tax_percent` decimal(5,2) DEFAULT NULL,
  `sales_account` int(11) DEFAULT NULL,
  `purchase_account` int(11) DEFAULT NULL,
  `reverse_chrg_account` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `gl_tax_setup`
--

INSERT INTO `gl_tax_setup` (`id`, `bus_post_gr`, `prod_post_gr`, `calculation_type`, `tax_percent`, `sales_account`, `purchase_account`, `reverse_chrg_account`) VALUES
(1, NULL, 1, 1, '0.00', NULL, NULL, NULL),
(2, NULL, 2, 1, '0.00', NULL, NULL, NULL),
(3, NULL, 3, 1, '0.00', NULL, NULL, NULL),
(5, 3, 1, 1, '0.00', NULL, NULL, NULL),
(6, 3, 2, 1, '0.00', NULL, NULL, NULL),
(7, 3, 3, 1, '0.00', NULL, NULL, NULL),
(8, 4, 1, 1, '0.00', NULL, NULL, NULL),
(9, 4, 2, 1, '10.00', 85, 89, NULL),
(10, 4, 3, 1, '25.00', 84, 88, NULL),
(11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `gl_tax_type`
--

CREATE TABLE `gl_tax_type` (
  `id` int(11) NOT NULL,
  `code` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `gl_tax_type`
--

INSERT INTO `gl_tax_type` (`id`, `code`) VALUES
(1, 'Normal VAT'),
(2, 'Reverse Charge VAT'),
(3, 'Full VAT'),
(4, 'Sales Tax');

-- --------------------------------------------------------

--
-- Структура таблицы `i18n`
--

CREATE TABLE `i18n` (
  `id` int(11) NOT NULL,
  `culture` varchar(2) DEFAULT NULL,
  `language` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `i18n`
--

INSERT INTO `i18n` (`id`, `culture`, `language`, `description`) VALUES
(1, 'en', 'en-US', NULL),
(2, 'ru', 'ru-RU', '');

-- --------------------------------------------------------

--
-- Структура таблицы `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `filename` varchar(500) DEFAULT NULL,
  `imagewidth` int(11) DEFAULT NULL,
  `imageheight` int(11) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `images`
--

INSERT INTO `images` (`id`, `filename`, `imagewidth`, `imageheight`, `description`) VALUES
(79, 'http://autodecore.ru/images/cms/thumbs/cddf35c7015b6d4f636dc5a4a8471c7bff36e6af/kolpachki_na_diski_kollazh_bez_lady_200_200.jpg', NULL, NULL, 'КОЛПАЧКИ НА ЛИТЫЕ ДИСКИ'),
(80, 'http://autodecore.ru/images/cms/thumbs/07cdbd90de68fad8065d9c1b9c38fd031d4b3d64/emblemy_novyj_kollazh_200_200.jpg', NULL, NULL, 'ЭМБЛЕМЫ ПО МАРКАМ АВТО'),
(81, 'http://autodecore.ru/images/cms/thumbs/aab7c7b0e50ff04848e4be0e1a0f83062517cc7c/panorama2_200_200.jpg', NULL, NULL, 'КОЛПАЧКИ НА НИППЕЛЬ'),
(82, 'http://autodecore.ru/images/cms/thumbs/889f1f231ef129b2d739c17d63c8efb9de5d7d6e/emblemy_raznye_kollazh_200_200.jpg', NULL, NULL, 'НАДПИСИ ЭМБЛЕМЫ РАЗНЫЕ'),
(83, 'http://autodecore.ru/images/cms/thumbs/a86f7c3480a587af2a6eeac4733f7b6fa6092d4c/558_200_200.jpg', NULL, NULL, 'ПРИЦЕЛЫ НА КАПОТ'),
(84, 'http://autodecore.ru/images/cms/thumbs/61b04155ffab97f2de58a22ed22d2ac18305e5a4/panorama_200_200.jpg', NULL, NULL, 'КОЛПАКИ НА КОЛЕСА'),
(85, 'http://autodecore.ru/images/cms/thumbs/a86f7c3480a587af2a6eeac4733f7b6fa6092d4c/naklei_200_200.jpg', NULL, NULL, 'НАКЛЕЙКИ НА КОЛПАЧКИ И КОЛПАКИ'),
(86, 'http://autodecore.ru/images/cms/thumbs/c6ae371f2bfff435fd32f8212659e049c280a857/panorama_200_200.jpg', NULL, NULL, 'ЗАГЛУШКИ РЕМНЯ БЕЗОПАСНОСТИ'),
(87, 'http://autodecore.ru/images/cms/thumbs/017e4b9041f75b4a9cc707971bb323066a7a3810/brelki_kollazh_200_200.jpg', NULL, NULL, 'БРЕЛОКИ ДЛЯ КЛЮЧЕЙ'),
(88, 'http://autodecore.ru/images/cms/thumbs/c8a823d726b1089661c886cb71a706577d755d39/kovriki_na_penel_kollazh2_200_200.jpg', NULL, NULL, 'ПРОТИВОСКОЛЬЗЯЩИЕ КОВРИКИ НА ПАНЕЛЬ АВТО'),
(89, 'http://autodecore.ru/images/cms/thumbs/0b0eda32875ca4b4cdaf39d4f1ceb6285fe09bd2/kolpachki_dlya_boltov_panorama_200_200.jpg', NULL, NULL, 'КОЛПАЧКИ ДЛЯ БОЛТОВ И ГАЕК'),
(90, 'http://autodecore.ru/images/cms/thumbs/aab7c7b0e50ff04848e4be0e1a0f83062517cc7c/ventili_dlya_pnevmoshin_panorama_200_200.jpg', NULL, NULL, 'ВЕНТИЛИ ДЛЯ ПНЕВМОШИН'),
(91, 'http://autodecore.ru/images/cms/thumbs/c8a823d726b1089661c886cb71a706577d755d39/10020_200_200.jpg', NULL, NULL, 'СЕКРЕТКИ НА НОМЕРНЫЕ ЗНАКИ'),
(92, 'http://autodecore.ru/images/cms/thumbs/c8a823d726b1089661c886cb71a706577d755d39/nakladki_na_porogi_kollazh_200_200.jpg', NULL, NULL, 'НАКЛАДКИ НА ПОРОГИ'),
(93, 'http://autodecore.ru/images/cms/thumbs/c8a823d726b1089661c886cb71a706577d755d39/soputstvuyuwie_tovary_kollazh_200_200.jpg', NULL, NULL, 'АВТОХИМИЯ/СОПУТСТВУЮЩИЕ ТОВАРЫ'),
(94, 'http://autodecore.ru/images/cms/thumbs/c8a823d726b1089661c886cb71a706577d755d39/suprotek_kollazh_200_200.jpg', NULL, NULL, 'SUPROTEC'),
(95, 'http://autodecore.ru/images/cms/thumbs/cddf35c7015b6d4f636dc5a4a8471c7bff36e6af/kollazh_zaglushki_stupicy_bez_lady_200_200.jpg', NULL, NULL, 'ЗАГЛУШКИ СТУПИЦЫ НА ШТАМПОВАННЫЕ ДИСКИ'),
(96, 'http://autodecore.ru/images/cms/thumbs/5e49bf04055b23199d7800c2c6b04164518bbc3b/00964_200_200.jpg', NULL, NULL, 'колпачки на литые диски acura акура'),
(97, 'http://autodecore.ru/images/cms/thumbs/5e49bf04055b23199d7800c2c6b04164518bbc3b/00695_200_200.jpg', NULL, NULL, 'колпачки на литые диски альфа-ромео'),
(98, 'http://autodecore.ru/images/cms/thumbs/5e49bf04055b23199d7800c2c6b04164518bbc3b/00209_200_200.jpg', NULL, NULL, 'колпачки на литые диски ауди '),
(99, 'http://autodecore.ru/images/cms/thumbs/5e49bf04055b23199d7800c2c6b04164518bbc3b/00217_200_200.jpg', NULL, NULL, 'колпачки на литые диски BMW'),
(100, 'http://autodecore.ru/images/cms/thumbs/5e49bf04055b23199d7800c2c6b04164518bbc3b/00080_200_200.jpg', NULL, NULL, 'колпачки на литые диски BYD'),
(101, 'http://autodecore.ru/images/cms/thumbs/5e49bf04055b23199d7800c2c6b04164518bbc3b/00823_200_200.jpg', NULL, NULL, 'колпачки на литые диски Cadillac'),
(102, 'http://autodecore.ru/images/cms/thumbs/5e49bf04055b23199d7800c2c6b04164518bbc3b/00581_200_200.jpg', NULL, NULL, 'колпачки на литые диски Chana'),
(103, 'http://autodecore.ru/images/cms/thumbs/5e49bf04055b23199d7800c2c6b04164518bbc3b/00446_200_200.jpg', NULL, NULL, 'колпачки на литые диски Chery'),
(104, 'http://autodecore.ru/images/cms/thumbs/5e49bf04055b23199d7800c2c6b04164518bbc3b/00249_200_200.jpg', NULL, NULL, 'колпачки на литые диски Chevrolet'),
(105, 'http://autodecore.ru/images/cms/thumbs/5e49bf04055b23199d7800c2c6b04164518bbc3b/00006_200_200.jpg', NULL, NULL, 'колпачки на литые диски Chrysler'),
(106, 'http://autodecore.ru/images/cms/thumbs/5e49bf04055b23199d7800c2c6b04164518bbc3b/002111_200_200.jpg', NULL, NULL, 'колпачки на литые диски Citroen'),
(107, 'http://autodecore.ru/images/cms/thumbs/5e49bf04055b23199d7800c2c6b04164518bbc3b/00248_200_200.jpg', NULL, NULL, 'колпачки на литые диски Daewoo'),
(108, 'http://autodecore.ru/images/cms/thumbs/5e49bf04055b23199d7800c2c6b04164518bbc3b/00943_200_200.jpg', NULL, NULL, 'колпачки на литые диски Datsun'),
(109, 'http://autodecore.ru/images/cms/thumbs/5e49bf04055b23199d7800c2c6b04164518bbc3b/00751_200_200.jpg', NULL, NULL, 'колпачки на литые диски Dodge'),
(110, 'http://autodecore.ru/images/cms/thumbs/5e49bf04055b23199d7800c2c6b04164518bbc3b/00575_200_200.jpg', NULL, NULL, 'колпачки на литые диски Fiat'),
(111, 'http://autodecore.ru/images/cms/thumbs/5e49bf04055b23199d7800c2c6b04164518bbc3b/00242_200_200.jpg', NULL, NULL, 'колпачки на литые диски Ford'),
(112, 'http://autodecore.ru/images/cms/thumbs/5e49bf04055b23199d7800c2c6b04164518bbc3b/00455_200_200.jpg', NULL, NULL, 'колпачки на литые диски Geely'),
(113, 'http://autodecore.ru/images/cms/thumbs/5e49bf04055b23199d7800c2c6b04164518bbc3b/00504_200_200.jpg', NULL, NULL, 'колпачки на литые диски Great Wall'),
(114, 'http://autodecore.ru/images/cms/thumbs/5e49bf04055b23199d7800c2c6b04164518bbc3b/00228_200_200.jpg', NULL, NULL, 'колпачки на литые диски Honda'),
(115, 'http://autodecore.ru/images/cms/thumbs/5e49bf04055b23199d7800c2c6b04164518bbc3b/00227_200_200.jpg', NULL, NULL, 'колпачки на литые диски Hyundai'),
(116, 'http://autodecore.ru/images/cms/thumbs/5e49bf04055b23199d7800c2c6b04164518bbc3b/00725_200_200.jpg', NULL, NULL, 'колпачки на литые диски Infinity'),
(117, 'http://autodecore.ru/images/cms/thumbs/5e49bf04055b23199d7800c2c6b04164518bbc3b/00861_200_200.jpg', NULL, NULL, 'колпачки на литые диски Jaguar'),
(118, 'http://autodecore.ru/images/cms/thumbs/5e49bf04055b23199d7800c2c6b04164518bbc3b/00626_200_200.jpg', NULL, NULL, 'колпачки на литые диски Jeep'),
(119, 'http://autodecore.ru/images/cms/thumbs/5e49bf04055b23199d7800c2c6b04164518bbc3b/00212_200_200.jpg', NULL, NULL, 'колпачки на литые диски Kia'),
(120, 'http://autodecore.ru/images/cms/thumbs/5e49bf04055b23199d7800c2c6b04164518bbc3b/00354_200_200.jpg', NULL, NULL, 'колпачки на литые диски Land Rover'),
(121, 'http://autodecore.ru/images/cms/thumbs/5e49bf04055b23199d7800c2c6b04164518bbc3b/00218_200_200.jpg', NULL, NULL, 'колпачки на литые диски Lexus'),
(122, 'http://autodecore.ru/images/cms/thumbs/5e49bf04055b23199d7800c2c6b04164518bbc3b/00713_200_200.jpg', NULL, NULL, 'колпачки на литые диски Lifan'),
(123, 'http://autodecore.ru/images/cms/thumbs/5e49bf04055b23199d7800c2c6b04164518bbc3b/00226_200_200.jpg', NULL, NULL, 'колпачки на литые диски Mazda'),
(124, 'http://autodecore.ru/images/cms/thumbs/5e49bf04055b23199d7800c2c6b04164518bbc3b/00201_200_200.jpg', NULL, NULL, 'колпачки на литые диски Mercedes'),
(125, 'http://autodecore.ru/images/cms/thumbs/5e49bf04055b23199d7800c2c6b04164518bbc3b/00878_200_200.jpg', NULL, NULL, 'колпачки на литые диски Mini'),
(126, 'http://autodecore.ru/images/cms/thumbs/5e49bf04055b23199d7800c2c6b04164518bbc3b/00223_200_200.jpg', NULL, NULL, 'колпачки на литые диски Mitsubishi'),
(127, 'http://autodecore.ru/images/cms/thumbs/5e49bf04055b23199d7800c2c6b04164518bbc3b/00221_200_200.jpg', NULL, NULL, 'колпачки на литые диски Nissan'),
(128, 'http://autodecore.ru/images/cms/thumbs/5e49bf04055b23199d7800c2c6b04164518bbc3b/00210_200_200.jpg', NULL, NULL, 'колпачки на литые диски Opel'),
(129, 'http://autodecore.ru/images/cms/thumbs/5e49bf04055b23199d7800c2c6b04164518bbc3b/00240_200_200.jpg', NULL, NULL, 'колпачки на литые диски Peugeot'),
(130, 'http://autodecore.ru/images/cms/thumbs/5e49bf04055b23199d7800c2c6b04164518bbc3b/00224_200_200.jpg', NULL, NULL, 'колпачки на литые диски Porsche'),
(131, 'http://autodecore.ru/images/cms/thumbs/5e49bf04055b23199d7800c2c6b04164518bbc3b/00225_200_200.jpg', NULL, NULL, 'колпачки на литые диски Renault'),
(132, 'http://autodecore.ru/images/cms/thumbs/5e49bf04055b23199d7800c2c6b04164518bbc3b/01025_new_200_200.jpg', NULL, NULL, 'колпачки на литые диски Seat'),
(133, 'http://autodecore.ru/images/cms/thumbs/5e49bf04055b23199d7800c2c6b04164518bbc3b/00213_200_200.jpg', NULL, NULL, 'колпачки на литые диски Skoda'),
(134, 'http://autodecore.ru/images/cms/thumbs/5e49bf04055b23199d7800c2c6b04164518bbc3b/00592_200_200.jpg', NULL, NULL, 'колпачки на литые диски SsangYong'),
(135, 'http://autodecore.ru/images/cms/thumbs/5e49bf04055b23199d7800c2c6b04164518bbc3b/00347_200_200.jpg', NULL, NULL, 'колпачки на литые диски Subaru'),
(136, 'http://autodecore.ru/images/cms/thumbs/5e49bf04055b23199d7800c2c6b04164518bbc3b/00260_200_200.jpg', NULL, NULL, 'колпачки на литые диски Suzuki'),
(137, 'http://autodecore.ru/images/cms/thumbs/5e49bf04055b23199d7800c2c6b04164518bbc3b/00239_200_200.jpg', NULL, NULL, 'колпачки на литые диски Toyota'),
(138, 'http://autodecore.ru/images/cms/thumbs/5e49bf04055b23199d7800c2c6b04164518bbc3b/00246_200_200.jpg', NULL, NULL, 'колпачки на литые диски Volkswagen'),
(139, 'http://autodecore.ru/images/cms/thumbs/5e49bf04055b23199d7800c2c6b04164518bbc3b/00352_200_200.jpg', NULL, NULL, 'колпачки на литые диски Volvo'),
(140, 'http://autodecore.ru/images/cms/thumbs/5e49bf04055b23199d7800c2c6b04164518bbc3b/img_3729_200_200.jpg', NULL, NULL, 'колпачки на литые диски Базовые'),
(141, 'http://autodecore.ru/images/cms/thumbs/5e49bf04055b23199d7800c2c6b04164518bbc3b/00465_200_200.jpg', NULL, NULL, 'колпачки на литые диски Brilliance'),
(143, 'http://autodecore.ru/images/cms/thumbs/5e49bf04055b23199d7800c2c6b04164518bbc3b/00964_200_200.jpg', NULL, NULL, 'Колпачок на литой диск Acura (69/64/12) 44732-S9A-A00'),
(144, 'http://autodecore.ru/images/cms/data/DELIVERY/delivery_post.jpg', NULL, NULL, 'Почта России'),
(145, 'http://autodecore.ru/images/cms/data/DELIVERY/skrinshot_2015-04-01_11_05_31.png', NULL, NULL, 'Курьерская доставка'),
(146, 'http://autodecore.ru/images/cms/data/DELIVERY/pec.jpg', NULL, NULL, 'транспортная компания'),
(147, 'http://autodecore.ru/images/cms/data/DELIVERY/skrinshot_2015-04-01_11_05_25.png', NULL, NULL, 'самовывоз'),
(148, 'http://autodecore.ru/images/cms/data/import_files/43/kur_erskaya_dostavka.png', NULL, NULL, 'СДЭК'),
(149, NULL, NULL, NULL, NULL),
(150, NULL, NULL, NULL, NULL),
(151, NULL, NULL, NULL, NULL),
(152, NULL, NULL, NULL, NULL),
(153, NULL, NULL, NULL, NULL),
(154, NULL, NULL, NULL, NULL),
(155, NULL, NULL, NULL, NULL),
(156, NULL, NULL, NULL, NULL),
(157, NULL, NULL, NULL, NULL),
(158, NULL, NULL, NULL, NULL),
(159, NULL, NULL, NULL, NULL),
(160, NULL, NULL, NULL, NULL),
(161, NULL, NULL, NULL, NULL),
(162, NULL, NULL, NULL, NULL),
(163, '../../images/f1/work.png', 400, 300, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `inventory_posting_group`
--

CREATE TABLE `inventory_posting_group` (
  `id` int(11) NOT NULL,
  `code` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `inventory_posting_group`
--

INSERT INTO `inventory_posting_group` (`id`, `code`, `description`) VALUES
(1, 'FINISHED', ''),
(2, 'RAW MAT', 'Raw materials'),
(3, 'RESALE', '');

-- --------------------------------------------------------

--
-- Структура таблицы `inventory_posting_setup`
--

CREATE TABLE `inventory_posting_setup` (
  `id` int(11) NOT NULL,
  `location` int(11) DEFAULT NULL,
  `inventory_posting_group` int(11) DEFAULT NULL,
  `inventory_account` int(11) DEFAULT NULL,
  `inventory_account_interim` int(11) DEFAULT NULL,
  `wip_account` int(11) DEFAULT NULL,
  `material_variance_account` int(11) DEFAULT NULL,
  `capacity_variance_account` int(11) DEFAULT NULL,
  `mfg_overhead_variance_account` int(11) DEFAULT NULL,
  `cap_overhead_variance_account` int(11) DEFAULT NULL,
  `subcontracted_variance_account` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `inventory_posting_setup`
--

INSERT INTO `inventory_posting_setup` (`id`, `location`, `inventory_posting_group`, `inventory_account`, `inventory_account_interim`, `wip_account`, `material_variance_account`, `capacity_variance_account`, `mfg_overhead_variance_account`, `cap_overhead_variance_account`, `subcontracted_variance_account`) VALUES
(1, NULL, 1, 30, 31, 35, 185, 186, 189, 188, 187),
(2, NULL, 2, 32, 33, 35, 185, 186, 189, 188, 187),
(3, NULL, 3, 27, 28, 35, 185, 186, 189, 188, 187),
(4, 1, 1, 30, 31, 35, 185, 186, 189, 188, 187),
(5, 1, 2, 32, 33, 35, 185, 186, 189, 188, 187),
(6, 1, 3, 27, 28, 35, 185, 186, 189, 188, 187),
(7, 2, 1, 30, 31, 35, 185, 186, 189, 188, 187),
(8, 2, 2, 32, 33, 35, 185, 186, 189, 188, 187),
(9, 2, 3, 27, 28, 35, 185, 186, 189, 188, 187),
(10, 6, 1, 30, 31, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 6, 2, 32, 33, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 6, 3, 27, 28, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 7, 1, 30, 31, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 7, 2, 32, 33, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 7, 3, 27, 28, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 3, 1, 30, 31, 35, 185, 186, 189, 188, 187),
(18, 3, 2, 32, 33, 35, 185, 186, 189, 188, 187),
(19, 3, 3, 27, 28, 35, 185, 186, 189, 188, 187),
(20, 8, 1, 30, 31, 35, 185, 186, 189, 188, 187),
(21, 8, 2, 32, 33, 35, 185, 186, 189, 188, 187),
(22, 8, 3, 27, 28, 35, 185, 186, 189, 188, 187),
(23, 4, 1, 30, 31, 35, 185, 186, 189, 188, 187),
(24, 4, 2, 32, 33, 35, 185, 186, 189, 188, 187),
(25, 4, 3, 27, 28, 35, 185, 186, 189, 188, 187),
(29, 5, 1, 30, 31, 35, 185, 186, 189, 188, 187),
(30, 5, 2, 32, 33, 35, 185, 186, 189, 188, 187),
(31, 5, 3, 27, 28, 35, 185, 186, 189, 188, 187);

-- --------------------------------------------------------

--
-- Структура таблицы `itemcategory`
--

CREATE TABLE `itemcategory` (
  `id` int(11) NOT NULL,
  `code` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `itemcategory`
--

INSERT INTO `itemcategory` (`id`, `code`, `description`) VALUES
(1, 'FURNITURE', 'Office furniture'),
(2, 'MISC', 'Miscellaneous');

-- --------------------------------------------------------

--
-- Структура таблицы `itemcategory_images`
--

CREATE TABLE `itemcategory_images` (
  `id` int(11) NOT NULL,
  `itemcategory` int(11) DEFAULT NULL,
  `image` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `description` varchar(180) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `price` decimal(7,2) DEFAULT NULL,
  `info` text DEFAULT NULL,
  `availiable` int(11) DEFAULT 0,
  `bill_of_materials` tinyint(1) DEFAULT NULL,
  `base_unit_of_measure` int(11) DEFAULT NULL,
  `inventory_posting_group` int(11) DEFAULT NULL,
  `costing_method` int(11) DEFAULT NULL,
  `reorder_point` decimal(18,4) DEFAULT NULL,
  `reorder_cycle` varchar(45) DEFAULT NULL,
  `reorder_quantity` decimal(18,4) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `routing_no` int(11) DEFAULT NULL,
  `bom_no` int(11) DEFAULT NULL,
  `scrap_percent` decimal(18,4) DEFAULT NULL,
  `vendor_code` varchar(45) DEFAULT NULL,
  `vendor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `items`
--

INSERT INTO `items` (`id`, `description`, `category`, `price`, `info`, `availiable`, `bill_of_materials`, `base_unit_of_measure`, `inventory_posting_group`, `costing_method`, `reorder_point`, `reorder_cycle`, `reorder_quantity`, `blocked`, `routing_no`, `bom_no`, `scrap_percent`, `vendor_code`, `vendor`) VALUES
(2, 'Touring Bicycle', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Front Wheel', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Rim', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Spokes', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Front Hub', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Axle Front Wheel', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Socket Front', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Tire', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Tube', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Back Wheel', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Back Hub', NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL),
(14, 'Socket Back', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'Chain Assy', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Chain', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'Chain Wheel Front', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'Chain Wheel Back', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'Mudguard front', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'Mudguard back', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'Lamp', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'Bell', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'Brake', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'Hand rear wheel Brake', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'Hand front wheel Brake', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 6),
(26, 'Handlebars', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'Saddle', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'Frame', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'Side Panel', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'Base', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'Top Panel', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'Rear Panel', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'Wooden Door', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'Glass Door', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'Drawer', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'Shelf', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'Mounting', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'Paint, black', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'Paint, yellow', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'Paint, blue', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'Paint, red', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'Paint, green', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'Hinge', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'Doorknob', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'Printing Paper', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'Webcam', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'Basic Mouse', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'Advanced Mouse', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'Quietkey Keyboard', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'Performance Keyboard', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'Ethernet Cable', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'Power Supply Cable', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'Hard Disk Drive', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'Screw on Hard Drive Mounting', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'Screw on Mount CD/Tape Drive', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'Base speaker unit 15\" 100W', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'Tweeter speaker unit 4\" 100W', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'Middletone speaker unit 8\"100W', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'Manual for Loudspeakers', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'Stand for Loudspeakers LS-150', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'ATHENS Desk', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'PARIS Guest Chair, black', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'ATHENS Mobile Pedestal', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'LONDON Swivel Chair, blue', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'ANTWERP Conference Table', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'CHAMONIX Base Storage Unit', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'AMSTERDAM Lamp', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'ST.MORITZ Storage Unit/Drawers', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'BERLIN Guest Chair, yellow', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'OSLO Storage Unit/Shelf', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'ROME Guest Chair, green', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'TOKYO Guest Chair, blue', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'INNSBRUCK Storage Unit/G.Door', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'MEXICO Swivel Chair, black', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'GRENOBLE Whiteboard, red', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'MUNICH Swivel Chair, yellow', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'SAPPORO Whiteboard, black', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'INNSBRUCK Storage Unit/W.Door', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'MOSCOW Swivel Chair, red', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'SARAJEVO Whiteboard, blue', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'SEOUL Guest Chair, red', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'CALGARY Whiteboard, yellow', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'ALBERTVILLE Whiteboard, green', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'ATLANTA Whiteboard, base', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'SYDNEY Swivel Chair, green', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'OLYMPIC Conference System', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'OLYMPIC Office System', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'OLYMPIC Storage System', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, '17\" M780 Monitor', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, '19\" M009 Monitor', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'Computer - Basic Package', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 'Computer - Highline Package', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'Computer - Trendy Package', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'Computer - TURBO Package', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'Server - Teamwear Package', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'Server - Enterprise Package', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `items_related`
--

CREATE TABLE `items_related` (
  `id` int(11) NOT NULL,
  `item` int(11) DEFAULT NULL,
  `related` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `item_classes`
--

CREATE TABLE `item_classes` (
  `id` int(11) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `item_classes`
--

INSERT INTO `item_classes` (`id`, `code`, `description`) VALUES
(1, 'DESK', 'Desks'),
(2, 'G-CHAIR', 'Guest Chairs'),
(3, 'HARDWARE', 'Hardware'),
(4, 'OTHER', 'Other Items'),
(5, 'PAINT', 'Paint'),
(6, 'STORAGE', 'Storage Units'),
(7, 'S-CHAIR', 'Swivel Chairs'),
(8, 'WHITEBOARD', 'Whiteboards');

-- --------------------------------------------------------

--
-- Структура таблицы `item_costing_methods`
--

CREATE TABLE `item_costing_methods` (
  `id` int(11) NOT NULL,
  `code` varchar(45) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `item_costing_methods`
--

INSERT INTO `item_costing_methods` (`id`, `code`, `description`) VALUES
(1, 'FIFO', ''),
(2, 'LIFO', ''),
(3, 'Specific', ''),
(4, 'Average', ''),
(5, 'Standart', '');

-- --------------------------------------------------------

--
-- Структура таблицы `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `code` varchar(3) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `language`
--

INSERT INTO `language` (`id`, `code`, `description`) VALUES
(1, 'BGR', 'Bulgarian'),
(2, 'CPL', 'Commerce Portal Language'),
(3, 'CSY', 'Czech'),
(4, 'DAN', 'Danissh'),
(5, 'DEA', 'German (Austrian)'),
(6, 'DES', 'German (Swiss)'),
(7, 'DEU', 'German'),
(8, 'ENA', 'English (Australian)'),
(9, 'ENC', 'English (Canadian)'),
(10, 'ENG', 'English (United Kingdom)'),
(11, 'ENI', 'English (Ireland)'),
(12, 'ENU', 'English'),
(13, 'ENZ', 'English (New Zealand)'),
(14, 'ESM', 'Spanish (Mexican)'),
(15, 'ESP', 'Spanish'),
(16, 'ESS', 'Spanish (Argentine)'),
(17, 'ETI', 'Estonian'),
(18, 'FIN', 'Finnish'),
(19, 'FRA', 'French'),
(20, 'FRB', 'French (Belgian)'),
(21, 'FRC', 'French (Canadian)'),
(22, 'FRS', 'French (Swiss)'),
(23, 'HRV', 'Croatian'),
(24, 'HUN', 'Hungarian'),
(25, 'IND', 'Indonesian'),
(26, 'ISL', 'Icelandic'),
(27, 'ITA', 'Italian'),
(28, 'ITS', 'Italian (Swiss)'),
(29, 'JPN', 'Japanese'),
(30, 'KOR', 'Korean'),
(31, 'LTH', 'Lithuanian'),
(32, 'LVI', 'Latvian'),
(33, 'MSL', 'Malaysian'),
(34, 'NLB', 'Dutch (Belgian)'),
(35, 'NLD', 'Dutch'),
(36, 'NON', 'Norwegian (Nynorsk)'),
(37, 'NOR', 'Norwegian'),
(38, 'PLK', 'Polish'),
(39, 'PTG', 'Portuguese'),
(40, 'ROM', 'Romanian'),
(41, 'RUS', 'Russian'),
(42, 'SKY', 'Slovak'),
(43, 'SLV', 'Slovene'),
(44, 'SVE', 'Swedish'),
(45, 'THA', 'Thai'),
(46, 'TRK', 'Turkish'),
(47, NULL, NULL),
(48, NULL, NULL),
(49, NULL, NULL),
(50, NULL, NULL),
(51, NULL, NULL),
(52, NULL, NULL),
(53, NULL, NULL),
(54, NULL, NULL),
(55, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `address2` varchar(200) DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `homepage` varchar(45) DEFAULT NULL,
  `use_as_in_transit` tinyint(4) DEFAULT 0,
  `require_put_away` tinyint(4) DEFAULT 0,
  `require_pick` tinyint(4) DEFAULT 0,
  `use_cross_docking` tinyint(4) DEFAULT 0,
  `require_receive` tinyint(4) DEFAULT 0,
  `use_zones_and_bins` tinyint(4) DEFAULT 0,
  `use_put_away_work_sheet` tinyint(4) DEFAULT 0,
  `allow_break_bulk` tinyint(4) DEFAULT 0,
  `receipt_bin_code` int(11) DEFAULT NULL,
  `shipment_bin_code` int(11) DEFAULT NULL,
  `cross_dock_bin_code` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `location`
--

INSERT INTO `location` (`id`, `code`, `description`, `address`, `address2`, `contact`, `phone`, `email`, `homepage`, `use_as_in_transit`, `require_put_away`, `require_pick`, `use_cross_docking`, `require_receive`, `use_zones_and_bins`, `use_put_away_work_sheet`, `allow_break_bulk`, `receipt_bin_code`, `shipment_bin_code`, `cross_dock_bin_code`) VALUES
(1, 'BLUE', 'Blue Warehouse', 'GB-B27 4KT, South East Street, 3,Birmingham', '', 'John Brown', '+44-(0)20 8447 4434', 'blue@example.com', 'http://blue.example.com', 0, 0, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL),
(2, 'GREEN', 'Green Warehouse', NULL, NULL, 'John Muller', '+44-(0)30 1074 1299', 'green@example.com', 'http://green.example.com', 0, 1, 1, 1, 1, 0, 0, 0, NULL, NULL, NULL),
(3, 'RED', 'Red Warehouse', NULL, NULL, 'Christina Hills', '+44-(0)50 1554 0001', 'green@example.com', '', 0, 0, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL),
(4, 'WHITE', 'White Warehouse', NULL, NULL, 'Lisa Mortimer', '+44-(0)50 4567 9771', '', '', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL),
(5, 'YELLOW', 'Yellow Warehouse', NULL, NULL, 'Marta Connor', '+44-(0)10 5214 0000', '', '', 0, 1, 1, 1, 1, 0, 0, 0, NULL, NULL, NULL),
(6, 'OUT. LOG.', 'Outsourced Logistics', NULL, NULL, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL),
(7, 'OWN LOG.', 'Own Logistics', NULL, NULL, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL),
(8, 'SILVER', 'Silver Warehouse', NULL, NULL, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `showname` varchar(45) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `admin_only` tinyint(4) DEFAULT 0,
  `orderitems` int(11) DEFAULT NULL,
  `icon` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `menu`
--

INSERT INTO `menu` (`id`, `name`, `showname`, `parent`, `link`, `admin_only`, `orderitems`, `icon`) VALUES
(2, 'administration', 'Administration', NULL, '', 1, 100, 'administration'),
(4, 'employee', 'Human Resourses', NULL, '', 0, 1400, 'structure'),
(5, 'menusettings', 'Menu Settings', 2, 'menusettings', 1, 101, 'menusettings'),
(6, 'departments', 'Departments', 100003, 'department', 0, 251, '16x16-telegram'),
(8, 'usersettings', 'Users', 2, 'users', 0, 103, 'users'),
(14, 'roles', 'Roles', 2, 'roles', 1, 102, 'usergroup'),
(23, 'employee', 'Employees', 4, 'employee', 0, 202, NULL),
(24, 'viewsettings', 'User View Settings', 99999, 'viewsettings', 0, 100000, 'settings'),
(29, 'items_menu', 'Inventory', NULL, '', 0, 800, 'box'),
(30, 'items', 'Items', 29, 'items', 0, 401, NULL),
(31, 'itemcategory', 'Item Categories', 29, 'itemcategory', 0, 402, NULL),
(32, 'staffpositions', 'Positions', 100003, 'staffpositions', 0, 252, NULL),
(99999, 'settings', 'Settings', NULL, '', 0, 99999, 'advancedsettings'),
(100000, 'setup', 'Setup', NULL, '', 0, 88888, 'settings'),
(100001, 'unitsofmeasure', 'Units Of Measure', 100000, 'uom', 0, 100101, NULL),
(100002, 'qualifications', 'Qualifications', 100003, 'qualifications', 0, 253, NULL),
(100003, 'employee_setup', 'Setup', 4, '', 0, 250, 'settings'),
(100004, 'relatives', 'Relatives', 100003, 'relatives', 0, 254, NULL),
(100005, 'employment_contracts', 'Employment Contracts', 100003, 'employment_contracts', 0, 255, NULL),
(100006, 'miscellaneous_articles', 'Miscellaneous Articles', 100003, 'miscellaneous_articles', 0, 256, NULL),
(100007, 'empl_absence_reg', 'Absence Registration', 4, 'empl_absence_reg', 0, 203, NULL),
(100008, 'resources_main', 'Resourses', NULL, '', 0, 1200, ''),
(100009, 'resources', 'Resources', 100008, 'resources', 0, 301, NULL),
(100010, 'warehouse_management', 'Warehouse Management', NULL, '', 0, 900, 'warehouse'),
(100011, 'location', 'Locations', 100010, 'location', 0, 501, 'Home-icon'),
(100012, 'setup_wm', 'Setup', 100010, '', 0, 510, 'settings'),
(100013, 'zones', 'Zones', 100012, 'zones', 0, 511, 'palet04'),
(100014, 'bins', 'Bins', 100012, 'bins', 0, 512, 'palet02'),
(100015, 'bin_types', 'Bin Types', 100012, 'bintypes', 0, 513, NULL),
(100016, 'country', 'Country', 100025, 'country', 0, 425, NULL),
(100023, 'order_status', 'Order Status', 100025, 'order_status', 0, NULL, NULL),
(100024, 'order_header', 'Orders', 100022, 'orders', 0, 420, NULL),
(100025, 'order_settings', 'Settings', 100022, '', 0, 421, NULL),
(100026, 'order_settings_common', 'Common Settings', 100025, 'order_settings', 0, 430, NULL),
(100027, 'item_classes', 'Item Classes', 29, 'item_classes', 0, 403, NULL),
(100028, 'development', 'Development', 2, '', 1, 104, 'development'),
(100029, 'forms', 'Forms', 100028, 'forms', 0, NULL, 'form'),
(100030, 'classes', 'Classes', 100028, 'classes', 0, NULL, 'classes'),
(100031, 'tables', 'Tables', 100028, 'tables', 0, NULL, 'datatable'),
(100032, 'shipment methods', 'Shipment Method', 100012, 'shipment_methods', 0, NULL, 'delivery_truck'),
(100033, 'shipping agents', 'Shipping Agents', 100012, 'shipping_agents', 0, NULL, 'shipping_agents'),
(100034, 'warehouse classes', 'Warehouse Classes', 100012, 'warehouse_classes', 0, NULL, 'warehouseclasses'),
(100035, 'general ledger', 'General Ledger', NULL, '', 0, 200, 'book_green'),
(100036, 'bank account', 'Bank Accounts', 100035, 'bank_account', 0, NULL, '506000-bank'),
(100037, 'crm', 'Relationship Management', NULL, '', 0, 500, 'handshake'),
(100038, 'crm_setup', 'Setup', 100037, '', 0, 10, 'settings'),
(100039, 'crm_contacts_type', 'Contacts Types', 100038, 'crm_contacts_types', 0, NULL, ''),
(100040, 'crm_salespeople', 'Sales People', 100037, 'crm_salespeople', 0, 2, 'businessman'),
(100041, 'crm_contacts', 'Contacts', 100037, 'crm_contacts', 0, 1, 'contacts'),
(100042, 'postcode', 'Post Code', 100000, 'postcode', 0, NULL, ''),
(100043, 'gl_accounts', 'Chart of accounts', 100035, 'gl_accounts', 0, NULL, 'book'),
(100044, 'currency', 'Currency', 100000, 'currency', 0, NULL, 'currency'),
(100045, 'language', 'Languages', 100000, 'language', 0, NULL, 'languages'),
(100046, 'purchases', 'Purchases & Payables', NULL, '', 0, 700, 'shopping-cart-icon-17840'),
(100047, 'vendors', 'Vendors', 100046, 'vendors', 0, 10, 'ejecutivo'),
(100048, 'fixed_assets_main', 'Fixed Assets', NULL, '', 0, 300, 'fixed_assets'),
(100049, 'fixed_assets', 'Fixed Assets', 100048, 'fixed_assets', 0, NULL, 'fixed_assets1'),
(100050, 'gl_journal', 'General Journals', 100035, NULL, 0, NULL, ''),
(100051, 'gl_settings', 'Settings', 100035, '', 0, NULL, 'settings'),
(100052, 'gl_acc_types', 'Account Types', 100051, 'gl_account_types', 0, NULL, ''),
(100053, 'gl_document_types', 'Document Types', 100051, 'gl_document_types', 0, NULL, ''),
(100054, 'vendor_posting_group', 'Vendor Posting Groups', 100055, 'vendor_posting_group', 0, NULL, ''),
(100055, 'vendor_settings', 'Settings', 100046, '', 0, 40, 'settings'),
(100056, 'company_info', 'Company Information', 100000, 'company_info', 0, NULL, 'info'),
(100057, 'settings', 'Settings', 100048, '', 0, 200, 'settings'),
(100058, 'fa_locations', 'FA Locations', 100057, 'fa_locations', 0, NULL, ''),
(100059, 'fa_maintenance', 'Maintenance', 100048, '', 0, 100, 'maintance'),
(100060, 'fa_class', 'FA Class', 100057, 'fa_class', 0, NULL, ''),
(100061, 'fa_subclass', 'FA Subclass', 100057, 'fa_subclass', 0, NULL, ''),
(100062, 'fa_insurance', 'Insurance', 100048, '', 0, NULL, 'insurance'),
(100063, 'insurance', 'Insurance', 100062, 'fa_insurance', 0, NULL, ''),
(100064, 'insurance_type', 'Insurance Type', 100062, 'fa_insurance_type', 0, NULL, ''),
(100065, 'reports', 'Reports', 100028, 'reports', 0, NULL, 'report-icon'),
(100066, 'taxes', 'Tax setup', 100051, '', 0, NULL, ''),
(100067, 'business_posting_gr', 'Business Post. Groups', 100066, 'tax_bus_post_gr', 0, NULL, ''),
(100068, 'product_posting_gr', 'Product Post. Groups', 100066, 'tax_prod_post_gr', 0, NULL, ''),
(100069, 'tax_setup', 'Tax Setup', 100066, 'tax_setup', 0, NULL, ''),
(100070, 'tax_types', 'Tax Types', 100066, 'tax_types', 0, NULL, ''),
(100071, 'sales', 'Sales & Receivables', NULL, '', 0, 400, 'sale-badge-16'),
(100072, 'services', 'Service Management', NULL, '', 0, 600, 'services'),
(100073, 'manufactoring', 'Manufacturing', NULL, '', 0, 1000, 'factory'),
(100074, 'capacity_requirements', 'Cap. Reqts. Planning', NULL, '', 0, 1100, ''),
(100075, 'jobs', 'Jobs', NULL, '', 0, 1300, ''),
(100076, 'fa_posting_groups', 'FA Posting Groups', 100057, 'fa_posting_groups', 0, NULL, ''),
(100077, 'fa_maintenance_codes', 'Maintenance Codes', 100059, 'fa_maintenance_codes', 0, NULL, ''),
(100078, 'gl_journals', 'GL Journals', 100050, 'gl_journal', 0, NULL, ''),
(100079, 'fa_journals', 'FA Journals', 100048, NULL, 0, 110, ''),
(100080, 'fa_gl_journals', 'FA GL Journals', 100079, 'fa_gl_journals', 0, NULL, ''),
(100081, 'fa_journals', 'FA Journals', 100079, 'fa_journals', 0, NULL, ''),
(100082, 'fa_reclass_journals', 'FA Reclass. Journals', 100079, '', 0, NULL, ''),
(100083, 'fa_insurance_journals', 'FA Insurance Journals', 100079, '', 0, NULL, ''),
(100084, 'no_series', 'No. Series', 100051, 'no_series', 0, NULL, ''),
(100085, 'purchases', 'Documents', 100046, '', 0, 20, ''),
(100086, 'purch_quotes', 'Quotes', 100085, 'purchase_quotes', 0, NULL, ''),
(100087, 'purch_blanket_orders', 'Blanket Orders', 100085, 'purchase_blanket_orders', 0, NULL, ''),
(100088, 'purch_orders', 'Orders', 100085, 'purchase_orders', 0, NULL, ''),
(100089, 'purchase_invoices', 'Invoices', 100085, 'purchase_invoices', 0, NULL, ''),
(100090, 'purchase_cr_memos', 'Credit Memos', 100085, 'purchase_cr_memos', 0, NULL, ''),
(100091, 'purchase_return_order', 'Return Order', 100085, 'purchase_return_order', 0, NULL, ''),
(100092, 'posted_purch_docs', 'Posted Documents', 100046, '', 0, 30, ''),
(100093, 'purchase_posted_receipts', 'Purch. Receipts', 100092, 'posted_purch_receipts', 0, 1, ''),
(100094, 'purchase_posted_invoices', 'Purch. Invoices', 100092, 'posted_purch_invoices', 0, 2, ''),
(100095, 'purchase_return_shipments', 'Purch. Return Shipments', 100092, 'posted_purch_return_shipments', 0, 3, ''),
(100096, 'purchase_credit_memos', 'Purch. Credit Memos', 100092, 'posted_purch_cr_memos', 0, 4, ''),
(100097, 'purch_series_settings', 'No Series', 100055, 'purch_series_settings', 0, NULL, ''),
(100098, 'payment_terms', 'Payment Terms', 100051, 'payment_terms', 0, NULL, ''),
(100099, 'item_settings', 'Settings', 29, '', 0, 499, 'settings'),
(100100, 'item_costing_methods', 'Costing Methods', 100099, 'item_costing_methods', 0, NULL, ''),
(100101, 'inventory_posting_group', 'Inventory Posting Group', 100099, 'inventory_posting_group', 0, NULL, ''),
(100102, 'inventory_posting_setup', 'Inventory Posting Setup', 100099, 'inventory_posting_setup', 0, NULL, '');

-- --------------------------------------------------------

--
-- Структура таблицы `menuroles`
--

CREATE TABLE `menuroles` (
  `id` int(11) NOT NULL,
  `menuitem` int(11) DEFAULT NULL,
  `role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `misc_articles`
--

CREATE TABLE `misc_articles` (
  `id` int(11) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `misc_articles`
--

INSERT INTO `misc_articles` (`id`, `code`, `description`) VALUES
(1, 'Car', 'Company Car'),
(2, 'Computer', 'Computer'),
(3, 'Key', 'Key');

-- --------------------------------------------------------

--
-- Структура таблицы `no_series`
--

CREATE TABLE `no_series` (
  `id` int(11) NOT NULL,
  `code` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `starting_no` varchar(45) DEFAULT NULL,
  `ending_no` varchar(45) DEFAULT NULL,
  `last_no_used` varchar(45) DEFAULT NULL,
  `increment` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `no_series`
--

INSERT INTO `no_series` (`id`, `code`, `description`, `starting_no`, `ending_no`, `last_no_used`, `increment`) VALUES
(1, 'SALES_INVOICE', 'Sales invoices', 'INV-000001', 'INV-999999', 'INV-000004', 1),
(2, 'P-QUO', 'Purchase Quotes', 'PQ-000001', 'PQ-999999', 'PQ-000009', 1),
(3, 'P-BL_ORDERS', 'Purchase Blanket Orders', 'PBO-000001', 'PBO-999999', '', 1),
(4, 'P_ORDERS', 'Purchase Orders', 'P-ORD000001', 'P-ORD999999', '', 1),
(5, 'P_INV', 'Purchase Invoices', 'P-INV000001', 'P-INV999999', '', 1),
(6, 'P_CR', 'Purchase Cr. Memos', 'P-CR000001', 'P-CR999999', '', 1),
(7, 'P-RETORD', 'Purch. Return Ord.', 'PRO000001', 'PRO999999', '', 1),
(8, 'P-SHPT', 'Purch. Posted Shipmnt', 'PSH-000001', 'PSH-999999', '', 1),
(9, 'P-INV+', 'Purch. Posted Inv.', 'PINV000001', 'PINV999999', '', 1),
(10, 'P-RCPT', 'Purchase Receipt', 'PRCP-000001', 'PRCP-999999', '', 1),
(11, 'P-CR+', 'Purch. Posted Cr. M.', 'PCM-000001', 'PCM-999999', '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `order_header`
--

CREATE TABLE `order_header` (
  `id` int(11) NOT NULL,
  `order_number` varchar(45) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_name` varchar(45) DEFAULT NULL,
  `customer_phone` varchar(45) DEFAULT NULL,
  `customer_email` varchar(45) DEFAULT NULL,
  `delivery` int(11) DEFAULT NULL,
  `delivery_amount` decimal(7,2) DEFAULT NULL,
  `tracking_code` varchar(45) DEFAULT NULL,
  `address_postcode` varchar(10) DEFAULT NULL,
  `address_region` varchar(100) DEFAULT NULL,
  `address_city` varchar(45) DEFAULT NULL,
  `address_street` varchar(100) DEFAULT NULL,
  `address_house` varchar(45) DEFAULT NULL,
  `address_flat` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `sales_book` tinyint(4) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `total_amount` decimal(7,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `order_header`
--

INSERT INTO `order_header` (`id`, `order_number`, `customer_id`, `customer_name`, `customer_phone`, `customer_email`, `delivery`, `delivery_amount`, `tracking_code`, `address_postcode`, `address_region`, `address_city`, `address_street`, `address_house`, `address_flat`, `status`, `sales_book`, `order_date`, `total_amount`) VALUES
(29, '1', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, '2', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, '3', 1, 'John Smith', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `order_lines`
--

CREATE TABLE `order_lines` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `item_description` varchar(400) DEFAULT NULL,
  `item_price` decimal(7,2) DEFAULT NULL,
  `item_line_sum` decimal(8,2) DEFAULT NULL,
  `item_quantity` int(11) DEFAULT NULL,
  `item_vendor_code` varchar(45) DEFAULT NULL,
  `item_link` varchar(800) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `order_lines`
--

INSERT INTO `order_lines` (`id`, `order_id`, `item_id`, `item_description`, `item_price`, `item_line_sum`, `item_quantity`, `item_vendor_code`, `item_link`) VALUES
(5, 29, NULL, NULL, '10.00', '200.00', NULL, NULL, NULL),
(6, 30, NULL, NULL, '10.00', '300.00', NULL, NULL, NULL),
(7, 29, NULL, NULL, '10.00', '100.00', NULL, NULL, NULL),
(8, 30, NULL, NULL, '11.00', '50.00', NULL, NULL, NULL),
(9, 29, NULL, NULL, NULL, '500.00', NULL, NULL, NULL),
(10, 30, NULL, NULL, NULL, '1000.00', NULL, NULL, NULL),
(11, 29, NULL, NULL, NULL, '7852.00', NULL, NULL, NULL),
(12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `order_line_types`
--

CREATE TABLE `order_line_types` (
  `id` int(11) NOT NULL,
  `code` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `order_line_types`
--

INSERT INTO `order_line_types` (`id`, `code`) VALUES
(1, 'GL Account'),
(2, 'Item'),
(3, 'Resource'),
(4, 'Fixed Asset'),
(5, 'Charge (Item)');

-- --------------------------------------------------------

--
-- Структура таблицы `order_settings`
--

CREATE TABLE `order_settings` (
  `id` int(11) NOT NULL,
  `next` int(11) DEFAULT NULL,
  `preffix` varchar(10) DEFAULT NULL,
  `suffix` varchar(10) DEFAULT NULL,
  `template` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `order_settings`
--

INSERT INTO `order_settings` (`id`, `next`, `preffix`, `suffix`, `template`) VALUES
(1, 8, 'ORD-', '', '000000');

-- --------------------------------------------------------

--
-- Структура таблицы `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `need_email` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `order_status`
--

INSERT INTO `order_status` (`id`, `description`, `need_email`) VALUES
(1, 'В доставку', NULL),
(2, 'Возврат', NULL),
(3, 'Готов', NULL),
(4, 'Доставляется', NULL),
(5, 'Новый', NULL),
(6, 'Обработан', NULL),
(7, 'Ожидает проверки', NULL),
(8, 'Оплачен', NULL),
(9, 'Оплачивается', NULL),
(10, 'Отказан', NULL),
(11, 'Отменен', NULL),
(12, 'Подтвержден', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `payment_terms`
--

CREATE TABLE `payment_terms` (
  `id` int(11) NOT NULL,
  `code` varchar(45) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `due_date_calculation` varchar(45) DEFAULT NULL,
  `discount_date_calculation` varchar(45) DEFAULT NULL,
  `discount_percent` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `payment_terms`
--

INSERT INTO `payment_terms` (`id`, `code`, `description`, `due_date_calculation`, `discount_date_calculation`, `discount_percent`) VALUES
(1, 'CM', 'Current month', 'CM', '', NULL),
(2, 'COD', 'Cash on delivery', 'NOW', '', NULL),
(3, '1M(8D)', '1 month/2% 8 days', 'NOW|+ 1 month', 'NOW|+8 days', 2),
(4, '14DAYS', 'Net 14 days', 'NOW|+14 days', '', NULL),
(5, '21DAYS', 'Net 21 days', 'NOW|+21 days', '', NULL),
(6, '7DAYS', 'Net 7 days', 'NOW|+7 days', '', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `postcode`
--

CREATE TABLE `postcode` (
  `id` int(11) NOT NULL,
  `code` varchar(45) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `postcode`
--

INSERT INTO `postcode` (`id`, `code`, `city`) VALUES
(1, 'AT-1100', 'Wien'),
(3, 'AT-2355', 'Wr. Neudorf'),
(4, 'AT-4810', 'Gmunden'),
(5, 'AT-5730', 'Mittersill'),
(6, 'AT-8850', 'Murau'),
(7, 'AU-2000', 'Sydney, NSW'),
(8, 'AU-2500', 'Wollongong, NSW'),
(9, 'AU-3000', 'Melbourne, VIC'),
(10, 'AU-4000', 'Brisbane, QLD'),
(11, 'AU-6800', 'Perth, WA'),
(12, 'AU-7178', 'Murdunna, TAS'),
(13, 'BE-1851', 'Humbeek'),
(14, 'BE-2050', 'Antwerpen'),
(15, 'BE-2200', 'Herentals'),
(16, 'BE-2800', 'Mechelen'),
(17, 'BE-3000', 'Leuven'),
(18, 'BE-8500', 'Kortrijk'),
(19, 'BG-1000', 'Sofia'),
(20, 'BG-2500', 'Kustendil'),
(21, 'BG-2700', 'Blagoevgrad'),
(22, 'BG-4000', 'Plovdiv'),
(23, 'BG-8700', 'Elhovo'),
(24, 'BG-9000', 'Varna'),
(25, 'CA-MB R0M 0N0', 'Elkhorn'),
(26, 'CA-ON L6J 3J3', 'Oakville'),
(27, 'CA-ON M5E 1G5', 'Toronto'),
(28, 'CA-ON N6B 1V7', 'London'),
(29, 'CA-ON P7A 4K8', 'Thunder Bay'),
(30, 'CA-ON P7B 5E2', 'Thunder Bay'),
(31, 'CH-4133', 'Pratteln'),
(32, 'CH-6005', 'Luzern'),
(33, 'CH-6343', 'Rotkreuz'),
(34, 'CH-6405', 'Immensee'),
(35, 'CH-8152', 'Glattbrugg'),
(36, 'CH-8200', 'Schaffhausen'),
(37, 'CZ-320 00', 'Vracov'),
(38, 'CZ-350 12', 'Kyjov'),
(39, 'CZ-420 00', 'Blansko'),
(40, 'CZ-580 20', 'Znojmo'),
(41, 'CZ-712 06', 'Bojkovice'),
(42, 'CZ-715 00', 'Olomouch'),
(43, 'DE-20097', 'Hamburg'),
(44, 'DE-22417', 'Hamburg 36'),
(45, 'DE-40593', 'Dusseldorf'),
(46, 'DE-60320', 'Frankfurt/Main'),
(47, 'DE-80997', 'Munchen'),
(48, 'DE-86899', 'Landsberg am Lech'),
(49, 'DK-2100', 'Kobenhavn'),
(50, 'DK-2950', 'Vedbok'),
(51, 'DK-4600', 'Kuge'),
(52, 'DK-5000', 'Odense C'),
(53, 'DK-5800', 'Nyborg'),
(54, 'DK-8000', 'Urhus C'),
(55, 'DK-8200', 'Urhus N'),
(56, 'DK-9000', 'Ulborg'),
(57, 'DZ-05400', 'BARIKA'),
(58, 'DZ-16000', 'ALGIERS'),
(59, 'DZ-16012', 'ALGIERS'),
(60, 'DZ-16027', 'ALGIERS'),
(61, 'DZ-21000', 'MOSTAGANCU'),
(62, 'DZ-40000', 'KHENCHE'),
(63, 'EE-10127', 'Tallinn'),
(64, 'EE-20607', 'Narva'),
(65, 'EE-44313', 'Rakvere'),
(66, 'EE-45109', 'Tapa'),
(67, 'EE-49603', 'Mustvee'),
(68, 'EE-76806', 'Paldiski'),
(69, 'ES-03003', 'Alicante'),
(70, 'ES-07001', 'Palma Mallorca'),
(71, 'ES-08010', 'Barcelona'),
(72, 'ES-10003', 'Caceres'),
(73, 'ES-28003', 'Madrid'),
(74, 'ES-36004', 'Pontevedra'),
(75, 'ES-37001', 'Salamanca'),
(76, 'ES-41006', 'Sevilla'),
(77, 'ES-46007', 'Valencia'),
(78, 'ES-47002', 'Valladolid'),
(79, 'ES-50001', 'Zaragoza'),
(80, 'FI-00100', 'Helsinki'),
(81, 'FI-00101', 'Helsinki'),
(82, 'FI-00260', 'Helsinki'),
(83, 'FI-01800', 'Klaukkala'),
(84, 'FI-05400', 'Jokela'),
(85, 'FI-88900', 'Kuhmo'),
(86, 'FR-44450', 'LA CHAPELLE BAS MER'),
(87, 'FR-50670', 'CASSEL'),
(88, 'FR-75000', 'PARIS'),
(89, 'FR-77450', 'ESBLY'),
(90, 'FR-77451', 'ISLES LES VILLENOY'),
(91, 'FR-83250', 'LA LONDE LES MAURES'),
(92, 'GB-BA24 6KS', 'Bath'),
(93, 'GB-BR1 2ES', 'Bromley'),
(94, 'GB-BS3 6KL', 'Bristol'),
(95, 'GB-B27 4KT', 'Birmingham'),
(96, 'GB-B31 2AL', 'Birmingham'),
(97, 'GB-B32 4TF', 'Sparkhill, Birmingham'),
(98, 'GB-B68 5TT', 'Bromsgrove'),
(99, 'GB-CB3 7GG', 'Cambridge'),
(100, 'GB-CF22 1XU', 'Cardiff'),
(101, 'GB-CT6 21ND', 'Hythe'),
(102, 'GB-CV6 1GY', 'Coventry'),
(103, 'GB-DA5 3EF', 'Sidcup'),
(104, 'GB-DY5 4DJ', 'Dudley'),
(105, 'GB-EH16 8JS', 'Edinburgh'),
(106, 'GB-E12 5TG', 'Edinburgh'),
(107, 'GB-GL1 9HM', 'Gloucester'),
(108, 'GB-GL78 5TT', 'Cheltenham'),
(109, 'GB-GU3 2SE', 'Guildford'),
(110, 'GB-GU7 5GT', 'Guildford'),
(111, 'GB-HG1 7YW', 'Ripon'),
(112, 'GB-HP43 2AY', 'Tring'),
(113, 'GB-IB7 7VN', 'Gainsborough'),
(114, 'GB-LE16 7YH', 'Leicester'),
(115, 'GB-LL6 5GB', 'Rhyl'),
(116, 'GB-LN23 6GS', 'Lincoln'),
(117, 'GB-LU3 4FY', 'Luton'),
(118, 'GB-L18 6SA', 'Liverpool'),
(119, 'GB-ME5 6RL', 'Maidstone'),
(120, 'GB-MK21 7GG', 'Bletchley'),
(121, 'GB-MK41 5AE', 'Bedford'),
(122, 'GB-MO2 4RT', 'Manchester'),
(123, 'GB-M61 2YG', 'Manchester'),
(124, 'GB-NE21 3YG', 'Newcastle'),
(125, 'GB-NP5 6GH', 'Newport'),
(126, 'GB-N12 5XY', 'London'),
(127, 'GB-N16 34Z', 'London'),
(128, 'GB-OX16 0UA', 'Cheddington'),
(129, 'GB-PE17 4RN', 'Cambridge'),
(130, 'GB-PE21 3TG', 'Peterborough'),
(131, 'GB-PE23 5IK', 'Kings Lynn'),
(132, 'GB-PL14 5GB', 'Plymouth'),
(133, 'GB-PO21 6HG', 'Southsea, Portsmouth'),
(134, 'GB-PO7 2HI', 'Portsmouth'),
(135, 'GB-SA1 2HS', 'Swansea'),
(136, 'GB-SA3 7HI', 'Stratford'),
(137, 'GB-SK21 5DL', 'Macclesfield'),
(138, 'GB-TA3 4FD', 'Newquay'),
(139, 'GB-TN27 6YD', 'Ashford'),
(140, 'GB-TQ17 8HB', 'Brixham'),
(141, 'GB-WC1 2GS', 'West End Lane'),
(142, 'GB-WC1 3DG', 'London'),
(143, 'GB-WD1 6YG', 'Watford'),
(144, 'GB-WD2 4RG', 'Watford'),
(145, 'GB-WD6 8UY', 'Borehamwood'),
(146, 'GB-WD6 9HY', 'Borehamwood'),
(147, 'GB-W1 3AL', 'London'),
(148, 'GB-W2 8HG', 'London'),
(149, 'GR-106 75', 'Athens'),
(150, 'GR-106 82', 'Athens'),
(151, 'GR-185 40', 'Piraeus'),
(152, 'GR-546 35', 'Thessaloniki'),
(153, 'GR-731 33', 'Chania'),
(154, 'GR-851 03', 'Kolymbia'),
(155, 'HR-10000', 'Zagreb'),
(156, 'HR-20000', 'Dubrovnik'),
(157, 'HR-21000', 'Split'),
(158, 'HR-22000', 'Sibenik'),
(159, 'HR-43000', 'Bjelovar'),
(160, 'HR-52210', 'Rovinj'),
(161, 'HU-1107', 'Budapest'),
(162, 'HU-1161', 'Budapest'),
(163, 'HU-1204', 'Budapest'),
(164, 'HU-2500', 'Esztergom'),
(165, 'HU-3258', 'Tarnalelesz'),
(166, 'HU-3325', 'Noszvaj'),
(167, 'ID-10310', 'Jakarta'),
(168, 'ID-10440', 'Jakarta'),
(169, 'ID-11470', 'Jakarta'),
(170, 'ID-15156', 'Tangerang'),
(171, 'ID-40135', 'Bandung'),
(172, 'ID-60172', 'Surabaya'),
(173, 'IN-110002', 'Delhi'),
(174, 'IN-400001', 'Mumbai'),
(175, 'IN-440001', 'Nagpur'),
(176, 'IN-560001', 'Bangalore'),
(177, 'IN-600001', 'Chennai'),
(178, 'IN-700001', 'Calcutta'),
(179, 'IS-101', 'Reykjavik'),
(180, 'IS-108', 'Reykjavik'),
(181, 'IS-112', 'Reykjavik'),
(182, 'IS-200', 'Kopavogur'),
(183, 'IS-220', 'Hafnafjordur'),
(184, 'IS-300', 'Akranes'),
(185, 'IT-00100', 'ROMA RM'),
(186, 'IT-10100', 'TORINO TO'),
(187, 'IT-20100', 'MILANO MI'),
(188, 'IT-39100', 'BOLZANO BZ'),
(189, 'IT-61100', 'SANTA VENERANDA PS'),
(190, 'IT-67067', 'PESCINA AQ'),
(191, 'KE-0 0100', 'Nairobi'),
(192, 'KE-0 1007', 'Kairi'),
(193, 'KE-5 0413', 'Adungosi'),
(194, 'KE-6 0500', 'Marsabit'),
(195, 'KE-8 0100', 'Mombasa'),
(196, 'KE-8 0200', 'Malindi'),
(197, 'LT-2600', 'Vilnius'),
(198, 'LT-2700', 'Vilnius'),
(199, 'LT-3000', 'Kaunas'),
(200, 'LT-3042', 'Kaunas'),
(201, 'LT-4600', 'Rudiskes'),
(202, 'LT-5800', 'Klaipeda'),
(203, 'LV-1011', 'Riga'),
(204, 'LV-1039', 'Riga'),
(205, 'LV-3270', 'Dundaga'),
(206, 'LV-3900', 'Bauska'),
(207, 'LV-5002', 'Ogre'),
(208, 'LV-5113', 'Koknese'),
(209, 'MO-10100', 'AGDAL-RABAT'),
(210, 'MO-10101', 'RIAD-RABAT'),
(211, 'MO-12000', 'TEMARA'),
(212, 'MO-20000', 'CASABLANCA'),
(213, 'MO-20200', 'CASABLANCA'),
(214, 'MO-20800', 'MOHAMMEDIA'),
(215, 'MO-90000', 'KASBAH TANGER'),
(216, 'MY-42000', 'PELABUHAN KLANG, Selangor'),
(217, 'MY-47400', 'PETALING JAYA, Selangor'),
(218, 'MY-50450', 'AMPANG, Kuala Lumpur'),
(219, 'MY-57000', 'KUALA LUMPUR'),
(220, 'MY-88100', 'KOTA KINABALU, Sabah'),
(221, 'MY-93450', 'KUCHING, Sarawak'),
(222, 'MZ-00300', 'Maputo'),
(223, 'NG-300001', 'BENIN, Edo state'),
(224, 'NG-900001', 'ABUJA'),
(225, 'NG-930283', 'JOS, Plateau state'),
(226, 'NG-931104', 'GHOH, Plateau state'),
(227, 'NL-1009 AG', 'Amsterdam'),
(228, 'NL-1530 JM', 'Zaandam'),
(229, 'NL-5132 EE', 'Waalwijk'),
(230, 'NL-6827 BP', 'Arnhem'),
(231, 'NL-7202 BP', 'Zutphen'),
(232, 'NL-7321 HE', 'Apeldoorn'),
(233, 'NO-0552', 'Oslo'),
(234, 'NO-0661', 'Oslo'),
(235, 'NO-1300', 'Sandvika'),
(236, 'NO-1324', 'Lysaker'),
(237, 'NO-1344', 'Haslum'),
(238, 'NO-1370', 'Asker'),
(239, 'NO-1400', 'Ski'),
(240, 'NZ-1001', 'Auckland'),
(241, 'NZ-5473', 'Woodville'),
(242, 'NZ-5491', 'Dannevirke'),
(243, 'NZ-6001', 'Wellington'),
(244, 'NZ-7900', 'Hokitika'),
(245, 'NZ-8001', 'Christchurch'),
(246, 'PH-1000', 'Manila'),
(247, 'PH-1003', 'Santa Cruz, Manila'),
(248, 'PH-1012', 'Tondo, Manila'),
(249, 'PH-1117', 'Capri, Quezon City'),
(250, 'PH-1440', 'Valenzuela'),
(251, 'PH-7000', 'Zamboanga City'),
(252, 'PL 02-515', 'Warszawa'),
(253, 'PL 11-430', 'Korsze'),
(254, 'PL 14-510', 'Orneta'),
(255, 'PL 15-660', 'Bialystok'),
(256, 'PL 45-418', 'Opole'),
(257, 'PL 59-300', 'Lubin'),
(258, 'PT 1050-042', 'LISBOA'),
(259, 'PT 1100-150', 'LISBOA'),
(260, 'PT 3000-337', 'COIMBRA'),
(261, 'PT 4000-322', 'PORTO'),
(262, 'PT 9000-064', 'FUNCHAL'),
(263, 'PT 9500-101', 'PONTA DELGADA'),
(264, 'RO-1100', 'Craiova'),
(265, 'RO-2200', 'Brasov'),
(266, 'RO-2400', 'Sibiu'),
(267, 'RO-70624', 'Bucuresti'),
(268, 'RO-71941', 'Bucuresti'),
(269, 'RO-73951', 'Bucuresti'),
(270, 'RU-103054', 'Moskva'),
(271, 'RU-109456', 'Moskva'),
(272, 'RU-197342', 'Sankt Petersburg'),
(273, 'RU-443008', 'Samara'),
(274, 'RU-603061', 'Nizhny Novgorod'),
(275, 'RU-690001', 'Vladivostok'),
(276, 'SE-114 32', 'Stockholm'),
(277, 'SE-302 50', 'Halmstad'),
(278, 'SE-415 06', 'Goteborg'),
(279, 'SE-521 03', 'Kinnared'),
(280, 'SE-550 05', 'Jonkobing'),
(281, 'SE-600 03', 'Norrkoping'),
(282, 'SE-852 33', 'Sundsvall'),
(283, 'SG-038988', 'Singapore'),
(284, 'SI-1000', 'Ljubljana'),
(285, 'SI-2000', 'Maribor'),
(286, 'SI-3231', 'Grobelno'),
(287, 'SI-4502', 'Kranj'),
(288, 'SI-6000', 'Koper'),
(289, 'SI-8283', 'Blanca'),
(290, 'SK-026 01', 'Dolny Kubin'),
(291, 'SK-049 21', 'Betliar'),
(292, 'SK-813 38', 'Bratislava'),
(293, 'SK-821 04', 'Bratislava'),
(294, 'SK-905 01', 'Senica'),
(295, 'SK-985 01', 'Kalinovo'),
(296, 'SZ-H100', 'Mbabane'),
(297, 'SZ-H101', 'Swazi Plaza'),
(298, 'SZ-H108', 'Piggs Peak'),
(299, 'SZ-H200', 'Manzini'),
(300, 'SZ-L300', 'Siteki'),
(301, 'SZ-S400', 'Nhlangano'),
(302, 'TH-10260', 'Bang Na, Bangkok'),
(303, 'TH-10500', 'Bang Rak, Bangkok'),
(304, 'TH-10510', 'Khlong Samwa, Bangkok'),
(305, 'TH-17120', 'Wat Sing, Chai Nat'),
(306, 'TH-31260', 'Non Dindaeng, Buri Ram'),
(307, 'TH-50120', 'San Pa Tong, Chiang Mai'),
(308, 'TN-1002', 'Tunis Belvedere'),
(309, 'TN-1030', 'Tunis'),
(310, 'TN-1111', 'Zaghouan'),
(311, 'TN-3100', 'Kairouan'),
(312, 'TN-8129', 'Ain Draham'),
(313, 'TN-8170', 'Bou Salem'),
(314, 'TR-06531', 'Ankara'),
(315, 'TR-42020', 'Konya'),
(316, 'TR-45030', 'Manisa'),
(317, 'TR-80080', 'Istanbul'),
(318, 'TR-81420', 'Kartal-Istanbul'),
(319, 'TR-81700', 'Tuzla-Istanbul'),
(320, 'TZ-DSM', 'Dar Es Salaam'),
(321, 'UG-EBB', 'Entebbe'),
(322, 'UG-KLA', 'Kampala'),
(323, 'US-AL 35242', 'Birmingham'),
(324, 'US-FL 37125', 'Miami'),
(325, 'US-GA 31772', 'Atlanta'),
(326, 'US-IL 61236', 'Chicago'),
(327, 'US-NY 11010', 'New York'),
(328, 'US-SC 27136', 'Columbia'),
(329, 'ZA-0001', 'Pretoria'),
(330, 'ZA-0700', 'Pietersburg'),
(331, 'ZA-2000', 'Johannesburg'),
(332, 'ZA-2500', 'Carletonville'),
(333, 'ZA-2940', 'Newcastle'),
(334, 'ZA-3600', 'Durban'),
(335, 'ZA-3900', 'Richards Bay'),
(336, 'ZA-6000', 'Port Elizabeth'),
(337, 'ZA-8000', 'Cape Town'),
(338, 'ZA-9300', 'Bloemfontein');

-- --------------------------------------------------------

--
-- Структура таблицы `purchase_header`
--

CREATE TABLE `purchase_header` (
  `id` int(11) NOT NULL,
  `document_type` int(11) DEFAULT NULL,
  `buy_from_vendor_no` int(11) DEFAULT NULL,
  `document_no` varchar(45) DEFAULT NULL,
  `pay_to_vendor_no` int(11) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `posting_date` datetime DEFAULT NULL,
  `expected_receipt_date` datetime DEFAULT NULL,
  `due_date` datetime DEFAULT NULL,
  `shipment_method` int(11) DEFAULT NULL,
  `location` int(11) DEFAULT NULL,
  `prices_including_vat` tinyint(1) DEFAULT NULL,
  `receive` tinyint(1) DEFAULT NULL,
  `invoice` tinyint(1) DEFAULT NULL,
  `vendor_order_no` varchar(45) DEFAULT NULL,
  `vendor_shipment_no` varchar(45) DEFAULT NULL,
  `vendor_invoice_no` varchar(45) DEFAULT NULL,
  `vendor_credit_memo_no` varchar(45) DEFAULT NULL,
  `sell_to_customer_no` int(11) DEFAULT NULL,
  `released` tinyint(1) DEFAULT NULL,
  `buy_from_contact_no` int(11) DEFAULT NULL,
  `pay_to_contact_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `purchase_header`
--

INSERT INTO `purchase_header` (`id`, `document_type`, `buy_from_vendor_no`, `document_no`, `pay_to_vendor_no`, `order_date`, `posting_date`, `expected_receipt_date`, `due_date`, `shipment_method`, `location`, `prices_including_vat`, `receive`, `invoice`, `vendor_order_no`, `vendor_shipment_no`, `vendor_invoice_no`, `vendor_credit_memo_no`, `sell_to_customer_no`, `released`, `buy_from_contact_no`, `pay_to_contact_no`) VALUES
(1, 1, 8, 'PQ-000001', 8, '2018-09-14 00:00:00', '2018-09-14 00:00:00', NULL, NULL, 7, 8, 0, NULL, NULL, '', '', '', '', NULL, 0, NULL, NULL),
(13, 1, 3, 'PQ-000002', 3, '2018-09-20 00:00:00', '2018-09-20 00:00:00', NULL, NULL, 1, 1, 1, NULL, NULL, '', '', '', '', NULL, 0, NULL, NULL),
(14, 1, 4, 'PQ-000003', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, NULL, NULL, NULL),
(18, 1, NULL, 'PQ-000007', NULL, '2020-01-12 08:52:16', '2020-01-12 08:52:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 1, NULL, 'PQ-000008', NULL, '2020-01-12 08:52:24', '2020-01-12 08:52:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 1, NULL, 'PQ-000009', NULL, '2020-01-12 08:52:34', '2020-01-12 08:52:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `purchase_line`
--

CREATE TABLE `purchase_line` (
  `id` int(11) NOT NULL,
  `header` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `no` int(11) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `unit_of_measure` int(11) DEFAULT NULL,
  `quantity` decimal(18,4) DEFAULT 0.0000,
  `qty_to_invoice` decimal(18,4) DEFAULT 0.0000,
  `qty_to_receive` decimal(18,4) DEFAULT 0.0000,
  `qty_invoiced` decimal(18,4) DEFAULT 0.0000,
  `qty_received` decimal(18,4) DEFAULT 0.0000,
  `direct_unit_cost` decimal(18,2) DEFAULT 0.00,
  `unit_price` decimal(18,2) DEFAULT 0.00,
  `line_amount` decimal(18,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `purchase_line`
--

INSERT INTO `purchase_line` (`id`, `header`, `type`, `no`, `description`, `unit_of_measure`, `quantity`, `qty_to_invoice`, `qty_to_receive`, `qty_invoiced`, `qty_received`, `direct_unit_cost`, `unit_price`, `line_amount`) VALUES
(3, 1, 2, 1, 'Bicycle', 10, '12.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.00', '12.13', '145.56'),
(4, 1, 2, 2, 'Touring Bicycle', 10, '2.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.00', '15.74', '31.48'),
(5, 1, 3, 1, 'Lift for furniture', 5, '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.00', '0.25', '0.25'),
(6, 1, 4, 6, 'Switchboard', 8, '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.00', '13.35', '13.35'),
(7, 1, 3, 1, 'Lift for furniture', 3, '0.2300', '0.0000', '0.0000', '0.0000', '0.0000', '0.00', '0.32', '0.07'),
(9, 13, 2, 4, 'Rim', 10, '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.00', '12.00', '12.00'),
(10, 14, 2, 5, 'Spokes', 10, '12.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.00', '130.00', '1560.00'),
(13, 13, NULL, NULL, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.00', '0.00', '0.00');

-- --------------------------------------------------------

--
-- Структура таблицы `purch_series_settings`
--

CREATE TABLE `purch_series_settings` (
  `id` int(11) NOT NULL,
  `quotes` varchar(45) DEFAULT NULL,
  `blanket_orders` varchar(45) DEFAULT NULL,
  `orders` varchar(45) DEFAULT NULL,
  `invoices` varchar(45) DEFAULT NULL,
  `cr_memos` varchar(45) DEFAULT NULL,
  `return_orders` varchar(45) DEFAULT NULL,
  `posted_receipts` varchar(45) DEFAULT NULL,
  `posted_invoices` varchar(45) DEFAULT NULL,
  `posted_return_shipments` varchar(45) DEFAULT NULL,
  `posted_cr_memos` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `purch_series_settings`
--

INSERT INTO `purch_series_settings` (`id`, `quotes`, `blanket_orders`, `orders`, `invoices`, `cr_memos`, `return_orders`, `posted_receipts`, `posted_invoices`, `posted_return_shipments`, `posted_cr_memos`) VALUES
(1, 'P-QUO', 'P-BL_ORDERS', 'P_ORDERS', 'P_INV', 'P_CR', 'P-RETORD', 'P-RCPT', 'P-INV+', 'P-SHPT', 'P-CR+');

-- --------------------------------------------------------

--
-- Структура таблицы `qualifications`
--

CREATE TABLE `qualifications` (
  `id` int(11) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `description` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `qualifications`
--

INSERT INTO `qualifications` (`id`, `code`, `description`) VALUES
(1, 'Accountant', 'Accountant'),
(2, 'Design', 'Designer'),
(3, 'French', 'Fluent in French'),
(4, 'German', 'Fluent in German'),
(5, 'IntDesign', 'Interior designer'),
(6, 'InterSales', 'International Sales'),
(7, 'ProdManag', 'Production Manager'),
(8, 'ProjManag', 'Project Manager'),
(9, 'QualityMan', 'Quality Manager');

-- --------------------------------------------------------

--
-- Структура таблицы `relatives`
--

CREATE TABLE `relatives` (
  `id` int(11) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `relatives`
--

INSERT INTO `relatives` (`id`, `code`, `description`) VALUES
(1, 'Child1', 'First child'),
(2, 'Child2', 'Second child'),
(3, 'Child3', 'Third child'),
(4, 'Father', 'Father'),
(5, 'Husband', 'Husband'),
(6, 'Mother', 'Mother'),
(7, 'Wife', 'Wife'),
(8, 'Next', 'Next of Kin');

-- --------------------------------------------------------

--
-- Структура таблицы `resources`
--

CREATE TABLE `resources` (
  `id` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `employeeid` int(11) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `uom` int(11) DEFAULT NULL,
  `blocked` tinyint(4) DEFAULT NULL,
  `direct_cost` decimal(10,2) DEFAULT NULL,
  `indirect_cost` decimal(10,2) DEFAULT NULL,
  `unit_cost` decimal(10,2) DEFAULT NULL,
  `price_profit_calc` int(11) DEFAULT NULL,
  `profit` decimal(10,2) DEFAULT NULL,
  `unit_price` decimal(10,2) DEFAULT NULL,
  `vat_posting_gr` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `resources`
--

INSERT INTO `resources` (`id`, `type`, `employeeid`, `description`, `uom`, `blocked`, `direct_cost`, `indirect_cost`, `unit_cost`, `price_profit_calc`, `profit`, `unit_price`, `vat_posting_gr`) VALUES
(1, 2, NULL, 'Lift for furniture', 5, 0, '10.50', '0.03', NULL, 1, NULL, NULL, NULL),
(2, 1, 1, 'Neil Armstrong', 5, 1, NULL, NULL, NULL, 2, NULL, NULL, NULL),
(3, 1, 7, 'sdfsdf', 5, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `resources_calctype`
--

CREATE TABLE `resources_calctype` (
  `id` int(11) NOT NULL,
  `code` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `resources_calctype`
--

INSERT INTO `resources_calctype` (`id`, `code`) VALUES
(1, 'Profit=Price-Cost'),
(2, 'Price=Cost+Profit'),
(3, 'No relationship');

-- --------------------------------------------------------

--
-- Структура таблицы `resources_type`
--

CREATE TABLE `resources_type` (
  `id` int(11) NOT NULL,
  `code` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `resources_type`
--

INSERT INTO `resources_type` (`id`, `code`) VALUES
(1, 'Person'),
(2, 'Machine');

-- --------------------------------------------------------

--
-- Структура таблицы `staffpositions`
--

CREATE TABLE `staffpositions` (
  `id` int(11) NOT NULL,
  `description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `staffpositions`
--

INSERT INTO `staffpositions` (`id`, `description`) VALUES
(1, 'Managing Director'),
(2, 'Accountant'),
(3, 'Security'),
(4, 'Secretary'),
(5, 'Programmer'),
(6, 'Cleaning Service'),
(7, 'Production Assistant'),
(8, 'Managing Director'),
(9, 'Service Manager'),
(10, 'Designer'),
(11, 'Sales Manager'),
(12, 'Production Manager');

-- --------------------------------------------------------

--
-- Структура таблицы `sys_classes`
--

CREATE TABLE `sys_classes` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `sys_classes`
--

INSERT INTO `sys_classes` (`id`, `name`) VALUES
(1, 'exportutils'),
(2, 'imageclass'),
(3, 'itemclass'),
(4, 'supertest'),
(5, 'test'),
(6, 'importclass'),
(7, 'crypt'),
(8, 'post_gl_journal'),
(9, 'noseriesmanagement'),
(10, 'release_purchase_document'),
(11, 'dateformulas');

-- --------------------------------------------------------

--
-- Структура таблицы `sys_forms`
--

CREATE TABLE `sys_forms` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `template` varchar(45) DEFAULT NULL,
  `source` longtext DEFAULT NULL,
  `notfound` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `sys_forms`
--

INSERT INTO `sys_forms` (`id`, `name`, `template`, `source`, `notfound`) VALUES
(1, 'bins', '', NULL, 0),
(2, 'bintypes', '', NULL, 0),
(4, 'country', '', NULL, 0),
(5, 'delivery', '', NULL, 0),
(6, 'department', '', NULL, 0),
(7, 'empl_absence_reg', '', NULL, 0),
(8, 'employee', '', NULL, 0),
(9, 'employment_contracts', '', NULL, 0),
(10, 'i18n', '', NULL, 0),
(11, 'images', '', NULL, 0),
(13, 'item_classes', '', NULL, 0),
(14, 'itemcategory', '', NULL, 0),
(15, 'items', '', NULL, 0),
(16, 'location', '', NULL, 0),
(17, 'miscellaneous_articles', '', NULL, 0),
(18, 'order_settings', '', NULL, 0),
(19, 'order_status', '', NULL, 0),
(20, 'orders', '', NULL, 0),
(22, 'parameters', '', NULL, 0),
(25, 'qualifications', '', NULL, 0),
(26, 'relatives', '', NULL, 0),
(27, 'resources', '', NULL, 0),
(28, 'staffpositions', '', NULL, 0),
(30, 'uom', '', NULL, 0),
(31, 'viewsettings', '', NULL, 0),
(36, 'zones', '', NULL, 0),
(37, 'classes', 'dev', NULL, NULL),
(38, 'tables', 'dev', NULL, NULL),
(39, 'forms', 'dev', NULL, NULL),
(40, 'shipment_methods', '', NULL, NULL),
(41, 'shipping_agents', '', NULL, NULL),
(42, 'warehouse_classes', '', NULL, NULL),
(43, 'bank_account', '', NULL, NULL),
(44, 'crm_contacts_types', '', NULL, NULL),
(45, 'crm_salespeople', '', NULL, NULL),
(46, 'crm_contacts', '', NULL, NULL),
(47, 'postcode', '', NULL, NULL),
(48, 'gl_accounts', '', NULL, NULL),
(49, 'currency', '', NULL, NULL),
(50, 'language', '', NULL, NULL),
(51, 'vendors', '', NULL, NULL),
(52, 'pages', NULL, NULL, NULL),
(53, 'phases', NULL, NULL, NULL),
(54, 'phrases', NULL, NULL, NULL),
(55, 'gl_journal', '', NULL, NULL),
(56, 'gl_account_types', '', NULL, NULL),
(57, 'gl_document_types', '', NULL, NULL),
(58, 'vendor_posting_group', '', NULL, NULL),
(59, 'company_info', '', NULL, NULL),
(60, 'fixed_assets', '', NULL, NULL),
(61, 'fa_locations', '', NULL, NULL),
(62, 'fa_class', '', NULL, NULL),
(63, 'fa_subclass', '', NULL, NULL),
(64, 'fa_insurance_type', '', NULL, NULL),
(65, 'fa_insurance', '', NULL, NULL),
(66, 'reports', 'dev', NULL, NULL),
(67, 'tax_bus_post_gr', '', NULL, NULL),
(68, 'tax_prod_post_gr', '', NULL, NULL),
(69, 'tax_types', '', NULL, NULL),
(70, 'tax_setup', '', NULL, NULL),
(71, 'fa_posting_groups', '', NULL, NULL),
(72, 'fa_maintenance_codes', '', NULL, NULL),
(73, 'no_series', '', NULL, NULL),
(74, 'fa_gl_journals', '', NULL, NULL),
(75, 'fa_journals', '', NULL, NULL),
(77, 'roles', NULL, NULL, NULL),
(78, 'users', NULL, NULL, NULL),
(79, 'purchase_quotes', '', NULL, NULL),
(80, 'purch_series_settings', '', NULL, NULL),
(81, 'payment_terms', '', NULL, NULL),
(82, 'item_costing_methods', '', NULL, NULL),
(83, 'inventory_posting_group', '', NULL, NULL),
(84, 'inventory_posting_setup', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `sys_form_states`
--

CREATE TABLE `sys_form_states` (
  `id` int(11) NOT NULL,
  `user` int(11) DEFAULT NULL,
  `form` varchar(45) DEFAULT NULL,
  `state` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `sys_form_states`
--

INSERT INTO `sys_form_states` (`id`, `user`, `form`, `state`) VALUES
(76, 4, 'item_classes', '{\"width\":1280,\"height\":681.3000000000001,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[1],\"selectedrowindex\":1,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"description\":{\"width\":400,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2}}}'),
(77, 4, 'fixed_assets', '{\"width\":1344,\"height\":836.1,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[4],\"selectedrowindex\":4,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"description\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"fa_class\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"FA Class\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"fa_class__code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"FA Class\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"fa_subclass\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"FA Subclass\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"fa_subclass__code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"FA Subclass\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"fa_location\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"FA Location\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6},\"fa_location__code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"FA Location\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":7},\"fa_type\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"FA type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":8},\"fa_type__code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"FA Type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":9},\"component_of\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Component of \",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":10},\"component_of__description\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Component of \",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":11},\"vendor\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Vendor\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":12},\"vendor__name\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Vendor\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":13},\"maintenance_vendor\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Maintenance Vendor\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":14},\"maintenance_vendor__name\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Maintenance Vendor\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":15},\"warranty_exp_date\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Waranty Exp. Date\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":16},\"responsible_empl\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Responsible Employee\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":17},\"serial_no\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Serial No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":18},\"next_service_date\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Next Service Date\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":19},\"inactive\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Inactive\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":20},\"insured\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Insured\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":21}}}'),
(78, 4, 'fa_insurance', '{\"width\":1344,\"height\":836.1,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[5],\"selectedrowindex\":5,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"fa\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Fixed Asset\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"fa__description\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Fixed Asset\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"insurance_vendor\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Insurance Vendor\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"insurance_vendor__name\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Insurance Vendor\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"insurance_type\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Insurance Type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"insurance_type__code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Insurance Type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6},\"effective_date\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Effective Date\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":7},\"expiration_date\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Expiration Date\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":8},\"policy_no\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Policy No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":9},\"annual_premium\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Annual Premium\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":10},\"policy_coverage\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Policy Coverage\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":11}}}'),
(79, 4, 'resources', '{\"width\":1152,\"height\":688.5,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[2],\"selectedrowindex\":2,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"type\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"type__code\":{\"width\":120,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"employeeid\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Employee\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"description\":{\"width\":300,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"uom\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Unit of Mes.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"uom__code\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Unit of Mes.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6},\"blocked\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Blocked\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":7},\"direct_cost\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Direct Cost\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":8},\"indirect_cost\":{\"width\":110,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Indirect Cost %\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":9},\"unit_cost\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Unit Cost\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":10},\"price_profit_calc\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":11},\"price_profit_calc__code\":{\"width\":120,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":12},\"profit\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Profit\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":13},\"unit_price\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Unit Price\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":14}}}'),
(80, 4, 'gl_accounts', '{\"width\":1344,\"height\":819,\"pagenum\":0,\"pagesize\":300,\"pagesizeoptions\":[\"100\",\"200\",\"300\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"code\":{\"width\":50,\"hidden\":false,\"pinned\":true,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"name\":{\"width\":400,\"hidden\":false,\"pinned\":true,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Name\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"id\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"intendation\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Intendation\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"totaling\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Totaling\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"income_balance\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Income/Balance\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"direct_posting\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Direct Posting\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6},\"posting\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Posting\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":7},\"start_balance\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Start Bal.\",\"align\":\"left\",\"cellsalign\":\"right\",\"index\":8},\"debit\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Debit\",\"align\":\"left\",\"cellsalign\":\"right\",\"index\":9},\"credit\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Credit\",\"align\":\"left\",\"cellsalign\":\"right\",\"index\":10},\"end_balance\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"End Bal.\",\"align\":\"left\",\"cellsalign\":\"right\",\"index\":11}}}'),
(81, 4, 'bank_account', '{\"width\":1536,\"height\":489.6,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"sortcolumn\":\"description\",\"sortdirection\":{\"ascending\":true,\"descending\":false},\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"descriptionoperator\":\"and\",\"filtervalue0\":\"ban\",\"filtercondition0\":\"CONTAINS\",\"filteroperator0\":1,\"filterdatafield0\":\"description\",\"filtertype0\":\"stringfilter\",\"filterscount\":1},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"description\":{\"width\":200,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"post_code\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Post Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"address\":{\"width\":200,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Address\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"phone\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Phone\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"contact\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Contact\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6},\"bank_branch_no\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Bank Branch No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":7},\"bank_account_no\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Bank Account No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":8},\"swift\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"SWIFT\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":9},\"iban\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"IBAN\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":10},\"blocked\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Blocked\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":11}}}'),
(82, 4, 'vendors', '{\"width\":1536,\"height\":852.3000000000001,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"sortcolumn\":\"address\",\"sortdirection\":{\"ascending\":false,\"descending\":true},\"selectedrowindexes\":[12],\"selectedrowindex\":12,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"name\":{\"width\":200,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Name\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"address\":{\"width\":300,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Address\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"address_2\":{\"width\":400,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Address 2\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"zip\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"ZIP\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"city\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"City\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"vat_registration_no\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"VAT Registration No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6},\"email\":{\"width\":200,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"E-Mail\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":7},\"shipment_method\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Shipment Method\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":8},\"shipment_method__code\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Shipment Method\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":9},\"vendor_posting_group\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Vendor Posting Group\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":10},\"vendor_posting_group__code\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Vendor Posting Group\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":11},\"payment_terms\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Payment Terms\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":12},\"payment_terms__code\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Payment Terms\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":13}}}'),
(83, 4, 'employee', '{\"width\":1536,\"height\":852.3000000000001,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"birth_date\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Birth Date\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"first_name\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"First Name\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"middle_name\":{\"width\":100,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Middle Name\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"last_name\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Last Name\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"department\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Department\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"department__dept_name\":{\"width\":120,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Department\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6},\"gender\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Gender\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":7},\"gender__shortname\":{\"width\":40,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Gender\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":8},\"hire_date\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Empl. Date\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":9},\"employeephone\":{\"width\":120,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Phone\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":10},\"fired\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Fired\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":11},\"socialsecurityno\":{\"width\":150,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Social Sec. No\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":12},\"email\":{\"width\":150,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Email\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":13},\"updateDateTime\":{\"width\":150,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Last change\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":14},\"updateUser\":{\"width\":100,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"User changed\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":15}}}'),
(84, 4, 'items', '{\"width\":1638.4,\"height\":865.8000000000001,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"sortcolumn\":\"id\",\"sortdirection\":{\"ascending\":true,\"descending\":false},\"selectedrowindexes\":[13],\"selectedrowindex\":13,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"description\":{\"width\":250,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"category\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Category\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"category__description\":{\"width\":250,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Cat. Descr.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"price\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Price\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"vendor\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Vendor\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"vendor__name\":{\"width\":250,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Vendor Name\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6},\"vendor_code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Vendor Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":7},\"availiable\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Availiable\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":8},\"base_unit_of_measure\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Base Unit of Measure ID\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":9},\"base_unit_of_measure__code\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Base Unit of Measure\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":10},\"inventory_posting_group\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Inventory Posting Group ID\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":11},\"inventory_posting_group__code\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Inventory Posting Group\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":12}}}'),
(85, 1, 'forms', '{\"width\":1344,\"height\":850.5,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"sortcolumn\":\"id\",\"sortdirection\":{\"ascending\":false,\"descending\":true},\"selectedrowindexes\":[17],\"selectedrowindex\":17,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"name\":{\"width\":250,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Name\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"template\":{\"width\":250,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Template\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"notfound\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Not Found\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3}}}'),
(86, 1, 'reports', '{\"width\":1344,\"height\":850.5,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[1],\"selectedrowindex\":1,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"name\":{\"width\":200,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Report Name\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"template\":{\"width\":200,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Template\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2}}}'),
(87, 4, 'location', '{\"width\":2048,\"height\":1204.2,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[2],\"selectedrowindex\":2,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"description\":{\"width\":200,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"contact\":{\"width\":200,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Contact\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"address\":{\"width\":200,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Address\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"address2\":{\"width\":200,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Address 2\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"phone\":{\"width\":200,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Phone\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6},\"email\":{\"width\":200,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Email\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":7},\"homepage\":{\"width\":200,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Homepage\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":8},\"use_as_in_transit\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Use as in-Transit\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":9},\"require_put_away\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Require Put-Away\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":10},\"require_pick\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Require Pick\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":11},\"use_cross_docking\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Use Cross-docking\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":12},\"require_receive\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Require Receive\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":13},\"use_zones_and_bins\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Use Zones and Bins\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":14},\"use_put_away_work_sheet\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Use put-away worksheet\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":15},\"allow_break_bulk\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Allow break bulk\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":16}}}'),
(88, 4, 'shipment_methods', '{\"width\":1152,\"height\":682.2,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"description\":{\"width\":400,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2}}}'),
(89, 4, 'itemcategory', '{\"width\":1280,\"height\":710.1,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[2],\"selectedrowindex\":2,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"description\":{\"width\":400,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2}}}'),
(90, 4, 'purchase_quotes', '{\"width\":1024,\"height\":792.9,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"pay_to_vendor_no__nameoperator\":\"and\",\"filtervalue0\":\"cool\",\"filtercondition0\":\"CONTAINS\",\"filteroperator0\":1,\"filterdatafield0\":\"pay_to_vendor_no__name\",\"filtertype0\":\"stringfilter\",\"filterscount\":1},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"document_no\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Document No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"buy_from_vendor_no\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Buy-From Vendor No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"buy_from_vendor_no__name\":{\"width\":250,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Buy-From Vendor Name\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"pay_to_vendor_no\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Pay-To Vendor No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"pay_to_vendor_no__name\":{\"width\":250,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Pay-To Vendor Name\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"order_date\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Order Date\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6},\"posting_date\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Posting Date\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":7},\"due_date\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Due Date\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":8},\"expected_receipt_date\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Expected Rcpt. Date\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":9},\"shipment_method\":{\"width\":100,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Shipment Method\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":10},\"shipment_method__code\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Shipment Method\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":11},\"location\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Location\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":12},\"location__code\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Location\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":13},\"prices_including_vat\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Prices Incl. VAT\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":14},\"released\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Released\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":15},\"vendor_order_no\":{\"width\":150,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Vendor Order No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":16},\"vendor_shipment_no\":{\"width\":150,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Vendor Shipment No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":17},\"vendor_invoice_no\":{\"width\":150,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Vendor Invoice No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":18},\"vendor_credit_memo_no\":{\"width\":150,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Vendor Cr.Memo No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":19},\"buy_from_contact_no\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Buy-From Contact No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":20},\"pay_to_contact_no\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Pay-To Contact No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":21}}}'),
(91, 4, 'shipping_agents', '{\"width\":1152,\"height\":682.2,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"description\":{\"width\":400,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"tracking_link\":{\"width\":400,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Tracking Link\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3}}}'),
(92, 4, 'warehouse_classes', '{\"width\":1152,\"height\":682.2,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"description\":{\"width\":400,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2}}}'),
(93, 7, 'bank_account', '{\"width\":1228.8000000000002,\"height\":704.7,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"description\":{\"width\":200,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"post_code\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Post Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"address\":{\"width\":200,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Address\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"phone\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Phone\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"contact\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Contact\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6},\"bank_branch_no\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Bank Branch No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":7},\"bank_account_no\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Bank Account No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":8},\"swift\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"SWIFT\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":9},\"iban\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"IBAN\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":10},\"blocked\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Blocked\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":11}}}'),
(94, 7, 'gl_accounts', '{\"width\":1536,\"height\":866.7,\"pagenum\":0,\"pagesize\":300,\"pagesizeoptions\":[\"100\",\"200\",\"300\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"code\":{\"width\":50,\"hidden\":false,\"pinned\":true,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"name\":{\"width\":400,\"hidden\":false,\"pinned\":true,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Name\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"id\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"intendation\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Intendation\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"totaling\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Totaling\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"income_balance\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Income/Balance\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"direct_posting\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Direct Posting\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6},\"posting\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Posting\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":7},\"start_balance\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Start Bal.\",\"align\":\"left\",\"cellsalign\":\"right\",\"index\":8},\"debit\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Debit\",\"align\":\"left\",\"cellsalign\":\"right\",\"index\":9},\"credit\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Credit\",\"align\":\"left\",\"cellsalign\":\"right\",\"index\":10},\"end_balance\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"End Bal.\",\"align\":\"left\",\"cellsalign\":\"right\",\"index\":11}}}'),
(95, 7, 'gl_journal', '{\"width\":1536,\"height\":866.7,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"account_type\":{\"width\":100,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Account Type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"account_type__code\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Account Type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"account_no\":{\"width\":100,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Account No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"account_description\":{\"width\":200,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Account\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"posting_date\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Posting Date\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"document_type\":{\"width\":100,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Document Type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6},\"document_type__code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Document Type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":7},\"document_no\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Document No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":8},\"decription\":{\"width\":200,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":9},\"amount\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Amount\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":10},\"bal_account_type\":{\"width\":100,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Bal. Account Type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":11},\"bal_account_type__code\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Bal. Account Type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":12},\"bal_account_no\":{\"width\":100,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Bal. Account No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":13},\"bal_account_description\":{\"width\":200,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Bal. Account\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":14}}}');
INSERT INTO `sys_form_states` (`id`, `user`, `form`, `state`) VALUES
(96, 7, 'tax_bus_post_gr', '{\"width\":1536,\"height\":866.7,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[2],\"selectedrowindex\":2,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"description\":{\"width\":250,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2}}}'),
(97, 7, 'postcode', '{\"width\":1536,\"height\":866.7,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"city\":{\"width\":400,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"City\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2}}}'),
(98, 7, 'uom', '{\"width\":1536,\"height\":866.7,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"description\":{\"width\":400,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2}}}'),
(99, 7, 'company_info', '{\"width\":1536,\"height\":866.7,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"name\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Name\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"address\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Address\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"city\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"City\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"postcode\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Postcode\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"email\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Email\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"phone\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Phone\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6},\"phone2\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Phone 2\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":7},\"giro_no\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Giro No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":8},\"bank_name\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Bank Name\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":9},\"bank_branch_no\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Bank Branch No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":10},\"bank_account_no\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Bank Account No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":11},\"payment_routing_no\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Payment Routing No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":12},\"vat_registration_no\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"VAT Registration No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":13},\"iban\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"IBAN\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":14},\"swift_code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"SWIFT Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":15},\"ship_to_name\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Ship-to Name\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":16},\"ship_to_address\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Ship-to Address\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":17},\"ship_to_city\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Ship-to City\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":18},\"ship_to_postcode\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Ship-to Postcode\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":19}}}'),
(100, 7, 'employee', '{\"width\":1536,\"height\":866.7,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[8],\"selectedrowindex\":8,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"birth_date\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Birth Date\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"first_name\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"First Name\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"middle_name\":{\"width\":100,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Middle Name\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"last_name\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Last Name\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"department\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Department\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"department__dept_name\":{\"width\":120,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Department\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6},\"gender\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Gender\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":7},\"gender__shortname\":{\"width\":40,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Gender\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":8},\"hire_date\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Empl. Date\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":9},\"employeephone\":{\"width\":120,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Phone\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":10},\"fired\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Fired\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":11},\"socialsecurityno\":{\"width\":150,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Social Sec. No\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":12},\"email\":{\"width\":150,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Email\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":13},\"updateDateTime\":{\"width\":150,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Last change\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":14},\"updateUser\":{\"width\":100,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"User changed\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":15}}}'),
(101, 4, 'payment_terms', '{\"width\":996,\"height\":778.5,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"description\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Decription\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"due_date_calculation\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Due Date Calculation\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"discount_date_calculation\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Discount Date Calculation\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"discount_percent\":{\"width\":250,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Discount %\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5}}}'),
(102, 4, 'gl_journal', '{\"width\":1024,\"height\":504.90000000000003,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"posting_dateoperator\":\"and\",\"filtervalue0\":\"12/16/2019\",\"filtercondition0\":\"GREATER_THAN_OR_EQUAL\",\"filteroperator0\":0,\"filterdatafield0\":\"posting_date\",\"filtertype0\":\"datefilter\",\"filtervalue1\":\"12/16/2019\",\"filtercondition1\":\"LESS_THAN_OR_EQUAL\",\"filteroperator1\":0,\"filterdatafield1\":\"posting_date\",\"filtertype1\":\"datefilter\",\"document_type__codeoperator\":\"and\",\"filtervalue2\":\"DA\",\"filtercondition2\":\"CONTAINS\",\"filteroperator2\":1,\"filterdatafield2\":\"document_type__code\",\"filtertype2\":\"stringfilter\",\"filterscount\":3},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"account_type\":{\"width\":100,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Account Type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"account_type__code\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Account Type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"account_no\":{\"width\":100,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Account No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"account_description\":{\"width\":200,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Account\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"posting_date\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Posting Date\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"document_type\":{\"width\":100,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Document Type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6},\"document_type__code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Document Type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":7},\"document_no\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Document No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":8},\"decription\":{\"width\":200,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":9},\"amount\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Amount\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":10},\"bal_account_type\":{\"width\":100,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Bal. Account Type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":11},\"bal_account_type__code\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Bal. Account Type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":12},\"bal_account_no\":{\"width\":100,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Bal. Account No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":13},\"bal_account_description\":{\"width\":200,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Bal. Account\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":14}}}'),
(103, 4, 'fa_locations', '{\"width\":1344,\"height\":836.1,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"description\":{\"width\":250,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2}}}'),
(104, 4, 'postcode', '{\"width\":1536,\"height\":843.3000000000001,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"city\":{\"width\":400,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"City\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2}}}'),
(105, 4, 'currency', '{\"width\":1638.4,\"height\":865.8000000000001,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"description\":{\"width\":400,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Decription\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2}}}'),
(106, 4, 'tax_bus_post_gr', '{\"width\":1529.6000000000001,\"height\":1812.6000000000001,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[3],\"selectedrowindex\":3,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"description\":{\"width\":250,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2}}}'),
(107, 4, 'tax_prod_post_gr', '{\"width\":1344,\"height\":850.5,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"description\":{\"width\":250,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2}}}'),
(108, 4, 'language', '{\"width\":1024,\"height\":792.9,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[14],\"selectedrowindex\":14,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"description\":{\"width\":400,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2}}}'),
(109, 4, 'company_info', '{\"width\":1024,\"height\":792.9,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"name\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Name\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"address\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Address\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"city\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"City\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"postcode\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Postcode\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"email\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Email\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"phone\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Phone\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6},\"phone2\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Phone 2\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":7},\"giro_no\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Giro No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":8},\"bank_name\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Bank Name\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":9},\"bank_branch_no\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Bank Branch No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":10},\"bank_account_no\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Bank Account No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":11},\"payment_routing_no\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Payment Routing No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":12},\"vat_registration_no\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"VAT Registration No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":13},\"iban\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"IBAN\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":14},\"swift_code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"SWIFT Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":15},\"ship_to_name\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Ship-to Name\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":16},\"ship_to_address\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Ship-to Address\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":17},\"ship_to_city\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Ship-to City\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":18},\"ship_to_postcode\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Ship-to Postcode\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":19}}}'),
(110, 4, 'tax_setup', '{\"width\":1337.6000000000001,\"height\":824.4,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[7],\"selectedrowindex\":7,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"bus_post_gr\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"bus_post_gr__code\":{\"width\":170,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Business Posting Group\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"prod_post_gr\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"prod_post_gr__code\":{\"width\":170,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Product Posting Group\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"calculation_type\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"calculation_type__code\":{\"width\":170,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Calculation Type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6},\"tax_percent\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Tax Percent\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":7},\"sales_account\":{\"width\":150,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":8},\"sales_account__code\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Tax Sales Account Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":9},\"sales_account__name\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Tax Sales Account\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":10},\"purchase_account\":{\"width\":150,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":11},\"purchase_account__code\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Tax Purchase Account Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":12},\"purchase_account__name\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Tax Purchase Account\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":13}}}'),
(111, 4, 'viewsettings', '{\"width\":1092.8,\"height\":626.4,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Id\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"themeid\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Theme\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"themeid__theme_name\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Theme\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"altrows\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Altrows\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"i18n\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"i18n\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"i18n__culture\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Language\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5}}}'),
(112, 5, 'bank_account', '{\"width\":1228.8000000000002,\"height\":650.7,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"description\":{\"width\":200,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"post_code\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Post Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"address\":{\"width\":200,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Address\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"phone\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Phone\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"contact\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Contact\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6},\"bank_branch_no\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Bank Branch No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":7},\"bank_account_no\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Bank Account No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":8},\"swift\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"SWIFT\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":9},\"iban\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"IBAN\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":10},\"blocked\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Blocked\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":11}}}'),
(113, 4, 'gl_account_types', '{\"width\":1706.4,\"height\":386.1,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1}}}'),
(114, 4, 'empl_absence_reg', '{\"width\":1152,\"height\":688.5,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"employeeid__first_nameoperator\":\"and\",\"filtervalue0\":\"n\",\"filtercondition0\":\"CONTAINS\",\"filteroperator0\":1,\"filterdatafield0\":\"employeeid__first_name\",\"filtertype0\":\"stringfilter\",\"filterscount\":1},\"groups\":[],\"columns\":{\"id\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"from_date\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"From Date\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"to_date\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"To Date\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"cause_of_absence\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Cause of Absence\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"cause_of_absence__code\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Cause of Absence\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"employeeid\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Employee\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"employeeid__first_name\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"First Name\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6},\"employeeid__last_name\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Last Name\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":7},\"qty\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Quantity\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":8},\"unitofmeasure\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Unit of Mes.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":9},\"unitofmeasure__code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Unit of Mes.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":10},\"comment\":{\"width\":25,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Comment\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":11}}}'),
(115, 4, 'tax_types', '{\"width\":1337.6000000000001,\"height\":824.4,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1}}}'),
(116, 9, 'bank_account', '{\"width\":1529.6000000000001,\"height\":1336.5,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"description\":{\"width\":200,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"post_code\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Post Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"address\":{\"width\":200,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Address\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"phone\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Phone\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"contact\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Contact\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6},\"bank_branch_no\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Bank Branch No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":7},\"bank_account_no\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Bank Account No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":8},\"swift\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"SWIFT\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":9},\"iban\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"IBAN\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":10},\"blocked\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Blocked\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":11}}}'),
(117, 9, 'gl_accounts', '{\"width\":1529.6000000000001,\"height\":1336.5,\"pagenum\":0,\"pagesize\":300,\"pagesizeoptions\":[\"100\",\"200\",\"300\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"code\":{\"width\":50,\"hidden\":false,\"pinned\":true,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"name\":{\"width\":400,\"hidden\":false,\"pinned\":true,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Name\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"id\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"intendation\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Intendation\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"totaling\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Totaling\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"income_balance\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Income/Balance\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"direct_posting\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Direct Posting\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6},\"posting\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Posting\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":7},\"start_balance\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Start Bal.\",\"align\":\"left\",\"cellsalign\":\"right\",\"index\":8},\"debit\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Debit\",\"align\":\"left\",\"cellsalign\":\"right\",\"index\":9},\"credit\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Credit\",\"align\":\"left\",\"cellsalign\":\"right\",\"index\":10},\"end_balance\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"End Bal.\",\"align\":\"left\",\"cellsalign\":\"right\",\"index\":11}}}'),
(118, 9, 'items', '{\"width\":1529.6000000000001,\"height\":1336.5,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"description\":{\"width\":250,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"category\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Category\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"category__description\":{\"width\":250,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Cat. Descr.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"price\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Price\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"vendor\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Vendor\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"vendor__name\":{\"width\":250,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Vendor Name\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6},\"vendor_code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Vendor Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":7},\"availiable\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Availiable\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":8},\"base_unit_of_measure\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Base Unit of Measure ID\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":9},\"base_unit_of_measure__code\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Base Unit of Measure\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":10},\"inventory_posting_group\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Inventory Posting Group ID\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":11},\"inventory_posting_group__code\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Inventory Posting Group\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":12}}}'),
(119, 4, 'crm_contacts_types', '{\"width\":1152,\"height\":717.3000000000001,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"description\":{\"width\":400,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2}}}'),
(120, 4, 'crm_contacts', '{\"width\":1693.6000000000001,\"height\":1175.4,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"sortcolumn\":\"name\",\"sortdirection\":{\"ascending\":false,\"descending\":true},\"selectedrowindexes\":[8],\"selectedrowindex\":8,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"name\":{\"width\":400,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Name\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"company\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Company\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"company_name\":{\"width\":210,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Company\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"phone\":{\"width\":200,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Phone\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"email\":{\"width\":300,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Email\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"contact_type\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6},\"contact_type__code\":{\"width\":110,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":7}}}'),
(121, 4, 'crm_salespeople', '{\"width\":1693.6000000000001,\"height\":1175.4,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[6],\"selectedrowindex\":6,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"name\":{\"width\":400,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Name\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"comission\":{\"width\":110,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Comission %\",\"align\":\"left\",\"cellsalign\":\"right\",\"index\":3},\"phone\":{\"width\":400,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Phone\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4}}}');
INSERT INTO `sys_form_states` (`id`, `user`, `form`, `state`) VALUES
(122, 5, 'gl_accounts', '{\"width\":1228.8000000000002,\"height\":650.7,\"pagenum\":0,\"pagesize\":300,\"pagesizeoptions\":[\"100\",\"200\",\"300\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"code\":{\"width\":50,\"hidden\":false,\"pinned\":true,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"name\":{\"width\":400,\"hidden\":false,\"pinned\":true,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Name\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"id\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"intendation\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Intendation\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"totaling\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Totaling\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"income_balance\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Income/Balance\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"direct_posting\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Direct Posting\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6},\"posting\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Posting\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":7},\"start_balance\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Start Bal.\",\"align\":\"left\",\"cellsalign\":\"right\",\"index\":8},\"debit\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Debit\",\"align\":\"left\",\"cellsalign\":\"right\",\"index\":9},\"credit\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Credit\",\"align\":\"left\",\"cellsalign\":\"right\",\"index\":10},\"end_balance\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"End Bal.\",\"align\":\"left\",\"cellsalign\":\"right\",\"index\":11}}}'),
(123, 4, 'fa_insurance_type', '{\"width\":1228.8000000000002,\"height\":678.6,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"description\":{\"width\":250,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2}}}'),
(124, 4, 'department', '{\"width\":974.4000000000001,\"height\":857.7,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"dept_name\":{\"width\":400,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Department\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1}}}'),
(125, 4, 'staffpositions', '{\"width\":1152,\"height\":688.5,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"description\":{\"width\":400,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"????????\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1}}}'),
(126, 4, 'qualifications', '{\"width\":974.4000000000001,\"height\":857.7,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"description\":{\"width\":400,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2}}}'),
(127, 4, 'fa_subclass', '{\"width\":1344,\"height\":836.1,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[2],\"selectedrowindex\":2,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"description\":{\"width\":250,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2}}}'),
(128, 4, 'fa_class', '{\"width\":1344,\"height\":836.1,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"description\":{\"width\":250,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2}}}'),
(129, 4, 'fa_maintenance_codes', '{\"width\":1536,\"height\":828,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"description\":{\"width\":250,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2}}}'),
(130, 13, 'bank_account', '{\"width\":1536,\"height\":916.2,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[1],\"selectedrowindex\":1,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"description\":{\"width\":200,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"post_code\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Post Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"address\":{\"width\":200,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Address\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"phone\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Phone\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"contact\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Contact\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6},\"bank_branch_no\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Bank Branch No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":7},\"bank_account_no\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Bank Account No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":8},\"swift\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"SWIFT\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":9},\"iban\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"IBAN\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":10},\"blocked\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Blocked\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":11}}}'),
(131, 13, 'gl_accounts', '{\"width\":1536,\"height\":916.2,\"pagenum\":0,\"pagesize\":300,\"pagesizeoptions\":[\"100\",\"200\",\"300\"],\"selectedrowindexes\":[8],\"selectedrowindex\":8,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"code\":{\"width\":50,\"hidden\":false,\"pinned\":true,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"name\":{\"width\":400,\"hidden\":false,\"pinned\":true,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Name\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"id\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"intendation\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Intendation\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"totaling\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Totaling\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"income_balance\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Income/Balance\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"direct_posting\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Direct Posting\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6},\"posting\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Posting\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":7},\"start_balance\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Start Bal.\",\"align\":\"left\",\"cellsalign\":\"right\",\"index\":8},\"debit\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Debit\",\"align\":\"left\",\"cellsalign\":\"right\",\"index\":9},\"credit\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Credit\",\"align\":\"left\",\"cellsalign\":\"right\",\"index\":10},\"end_balance\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"End Bal.\",\"align\":\"left\",\"cellsalign\":\"right\",\"index\":11}}}'),
(132, 13, 'payment_terms', '{\"width\":1536,\"height\":916.2,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"description\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Decription\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"due_date_calculation\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Due Date Calculation\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"discount_date_calculation\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Discount Date Calculation\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"discount_percent\":{\"width\":250,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Discount %\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5}}}'),
(133, 10, 'items', '{\"width\":1063.2,\"height\":503.1,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[3],\"selectedrowindex\":3,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"description\":{\"width\":250,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"category\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Category\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"category__description\":{\"width\":250,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Cat. Descr.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"price\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Price\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"vendor\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Vendor\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"vendor__name\":{\"width\":250,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Vendor Name\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6},\"vendor_code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Vendor Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":7},\"availiable\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Availiable\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":8},\"base_unit_of_measure\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Base Unit of Measure ID\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":9},\"base_unit_of_measure__code\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Base Unit of Measure\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":10},\"inventory_posting_group\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Inventory Posting Group ID\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":11},\"inventory_posting_group__code\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Inventory Posting Group\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":12}}}'),
(134, 10, 'bank_account', '{\"width\":1063.2,\"height\":503.1,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"description\":{\"width\":200,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"post_code\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Post Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"address\":{\"width\":200,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Address\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"phone\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Phone\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"contact\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Contact\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6},\"bank_branch_no\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Bank Branch No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":7},\"bank_account_no\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Bank Account No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":8},\"swift\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"SWIFT\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":9},\"iban\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"IBAN\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":10},\"blocked\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Blocked\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":11}}}'),
(135, 5, 'vendors', '{\"width\":1536,\"height\":872.1,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[7],\"selectedrowindex\":7,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"name\":{\"width\":200,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Name\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"address\":{\"width\":300,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Address\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"address_2\":{\"width\":400,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Address 2\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"zip\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"ZIP\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"city\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"City\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"vat_registration_no\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"VAT Registration No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6},\"email\":{\"width\":200,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"E-Mail\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":7},\"shipment_method\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Shipment Method\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":8},\"shipment_method__code\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Shipment Method\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":9},\"vendor_posting_group\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Vendor Posting Group\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":10},\"vendor_posting_group__code\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Vendor Posting Group\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":11},\"payment_terms\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Payment Terms\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":12},\"payment_terms__code\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Payment Terms\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":13}}}'),
(136, 4, 'uom', '{\"width\":1024,\"height\":792.9,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"description\":{\"width\":400,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2}}}'),
(137, 5, 'viewsettings', '{\"width\":784,\"height\":1272.6000000000001,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Id\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"themeid\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Theme\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"themeid__theme_name\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Theme\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"altrows\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Altrows\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"i18n\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"i18n\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"i18n__culture\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Language\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5}}}'),
(138, 13, 'viewsettings', '{\"width\":1536,\"height\":872.1,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Id\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"themeid\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Theme\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"themeid__theme_name\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Theme\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"altrows\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Altrows\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"i18n\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"i18n\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"i18n__culture\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Language\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5}}}'),
(139, 13, 'postcode', '{\"width\":1140,\"height\":789.3000000000001,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"sortcolumn\":\"city\",\"sortdirection\":{\"ascending\":true,\"descending\":false},\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"city\":{\"width\":400,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"City\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2}}}'),
(140, 13, 'currency', '{\"width\":1536,\"height\":916.2,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"description\":{\"width\":400,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Decription\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2}}}'),
(141, 13, 'language', '{\"width\":1306.4,\"height\":789.3000000000001,\"pagenum\":0,\"pagesize\":50,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[40],\"selectedrowindex\":40,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"description\":{\"width\":400,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2}}}'),
(142, 13, 'no_series', '{\"width\":1536,\"height\":916.2,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"description\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"starting_no\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Starting No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"ending_no\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Ending No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"increment\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Increment\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"last_no_used\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Last No. Used\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6}}}'),
(143, 13, 'fixed_assets', '{\"width\":1536,\"height\":916.2,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"description\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"fa_class\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"FA Class\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"fa_class__code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"FA Class\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"fa_subclass\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"FA Subclass\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"fa_subclass__code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"FA Subclass\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"fa_location\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"FA Location\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6},\"fa_location__code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"FA Location\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":7},\"fa_type\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"FA type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":8},\"fa_type__code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"FA Type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":9},\"component_of\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Component of \",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":10},\"component_of__description\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Component of \",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":11},\"vendor\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Vendor\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":12},\"vendor__name\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Vendor\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":13},\"maintenance_vendor\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Maintenance Vendor\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":14},\"maintenance_vendor__name\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Maintenance Vendor\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":15},\"warranty_exp_date\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Waranty Exp. Date\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":16},\"responsible_empl\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Responsible Employee\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":17},\"serial_no\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Serial No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":18},\"next_service_date\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Next Service Date\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":19},\"inactive\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Inactive\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":20},\"insured\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Insured\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":21}}}'),
(144, 13, 'fa_insurance', '{\"width\":1536,\"height\":916.2,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"fa\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Fixed Asset\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"fa__description\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Fixed Asset\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"insurance_vendor\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Insurance Vendor\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"insurance_vendor__name\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Insurance Vendor\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"insurance_type\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Insurance Type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"insurance_type__code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Insurance Type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6},\"effective_date\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Effective Date\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":7},\"expiration_date\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Expiration Date\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":8},\"policy_no\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Policy No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":9},\"annual_premium\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Annual Premium\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":10},\"policy_coverage\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Policy Coverage\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":11}}}'),
(145, 13, 'fa_maintenance_codes', '{\"width\":1536,\"height\":916.2,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"description\":{\"width\":250,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2}}}'),
(146, 13, 'fa_journals', '{\"width\":1536,\"height\":916.2,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"posting_date\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Posting Date\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"document_type\":{\"width\":100,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Document Type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"document_type__code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Document Type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"document_no\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Document No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"decription\":{\"width\":200,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"depreciation_book\":{\"width\":100,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Depr. Book\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6},\"depreciation_book__code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Depr. Book\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":7},\"fa_posting_type\":{\"width\":100,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"FA Posting Type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":8},\"fa_posting_type__code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"FA Posting Type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":9},\"fa_posting_date\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"FA Posting Date\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":10},\"amount\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Amount\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":11},\"salvage_value\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Salvage Value\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":12},\"no_of_depreciation_days\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Num. Of Depr. Days\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":13},\"depr_until_fa_posting_date\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Depr. Until Posting Date\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":14},\"depr_acquisition_cost\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Depr. Acquisition Cost\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":15},\"maintenance\":{\"width\":100,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Maintenance\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":16},\"maintenance__code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Maintenance Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":17},\"insurance\":{\"width\":100,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Insurance\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":18},\"insurance__policy_no\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Insurance Policy\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":19}}}'),
(147, 13, 'crm_salespeople', '{\"width\":1536,\"height\":916.2,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"name\":{\"width\":400,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Name\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"comission\":{\"width\":110,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Comission %\",\"align\":\"left\",\"cellsalign\":\"right\",\"index\":3},\"phone\":{\"width\":400,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Phone\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4}}}'),
(148, 13, 'location', '{\"width\":1536,\"height\":916.2,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"description\":{\"width\":200,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"contact\":{\"width\":200,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Contact\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"address\":{\"width\":200,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Address\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"address2\":{\"width\":200,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Address 2\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"phone\":{\"width\":200,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Phone\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6},\"email\":{\"width\":200,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Email\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":7},\"homepage\":{\"width\":200,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Homepage\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":8},\"use_as_in_transit\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Use as in-Transit\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":9},\"require_put_away\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Require Put-Away\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":10},\"require_pick\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Require Pick\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":11},\"use_cross_docking\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Use Cross-docking\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":12},\"require_receive\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Require Receive\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":13},\"use_zones_and_bins\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Use Zones and Bins\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":14},\"use_put_away_work_sheet\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Use put-away worksheet\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":15},\"allow_break_bulk\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Allow break bulk\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":16}}}'),
(149, 13, 'shipment_methods', '{\"width\":1536,\"height\":916.2,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"description\":{\"width\":400,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2}}}');
INSERT INTO `sys_form_states` (`id`, `user`, `form`, `state`) VALUES
(150, 13, 'shipping_agents', '{\"width\":1536,\"height\":916.2,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"description\":{\"width\":400,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"tracking_link\":{\"width\":400,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Tracking Link\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3}}}'),
(151, 13, 'warehouse_classes', '{\"width\":1536,\"height\":916.2,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"description\":{\"width\":400,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2}}}'),
(152, 13, 'zones', '{\"width\":1536,\"height\":916.2,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"description\":{\"width\":200,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"locationid\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Location\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"locationid__code\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Location\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4}}}'),
(153, 13, 'bins', '{\"width\":1536,\"height\":916.2,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"description\":{\"width\":200,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"locationid\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Location\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"locationid__code\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Location\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"zoneid\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Zone\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"zoneid__code\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Zone\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6},\"bintype\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Bin Type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":7},\"bintype__code\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Bin Type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":8},\"adjustment_bin\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Adjustment Bin\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":9},\"maximum_cubage\":{\"width\":120,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Maximum Cubage\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":10},\"maximum_weight\":{\"width\":120,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Maximum Weight\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":11},\"block_movement\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Block Movement\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":12},\"empty\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Empty\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":13},\"binranking\":{\"width\":120,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Bin Ranking\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":14}}}'),
(154, 13, 'bintypes', '{\"width\":1536,\"height\":916.2,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"description\":{\"width\":200,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"receive\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Receive\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"ship\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Ship\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"put_away\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Put away\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"pick\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Pick\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6}}}'),
(155, 13, 'resources', '{\"width\":1536,\"height\":916.2,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"type\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"type__code\":{\"width\":120,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"employeeid\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Employee\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"description\":{\"width\":300,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"uom\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Unit of Mes.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"uom__code\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Unit of Mes.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6},\"blocked\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Blocked\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":7},\"direct_cost\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Direct Cost\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":8},\"indirect_cost\":{\"width\":110,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Indirect Cost %\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":9},\"unit_cost\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Unit Cost\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":10},\"price_profit_calc\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":11},\"price_profit_calc__code\":{\"width\":120,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":12},\"profit\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Profit\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":13},\"unit_price\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Unit Price\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":14}}}'),
(156, 13, 'employee', '{\"width\":1536,\"height\":916.2,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"birth_date\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Birth Date\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"first_name\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"First Name\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"middle_name\":{\"width\":100,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Middle Name\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"last_name\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Last Name\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"department\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Department\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"department__dept_name\":{\"width\":120,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Department\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6},\"gender\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Gender\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":7},\"gender__shortname\":{\"width\":40,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Gender\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":8},\"hire_date\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Empl. Date\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":9},\"employeephone\":{\"width\":120,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Phone\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":10},\"fired\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Fired\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":11},\"socialsecurityno\":{\"width\":150,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Social Sec. No\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":12},\"email\":{\"width\":150,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Email\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":13},\"updateDateTime\":{\"width\":150,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Last change\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":14},\"updateUser\":{\"width\":100,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"User changed\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":15}}}'),
(157, 13, 'empl_absence_reg', '{\"width\":1536,\"height\":916.2,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"from_date\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"From Date\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"to_date\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"To Date\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"cause_of_absence\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Cause of Absence\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"cause_of_absence__code\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Cause of Absence\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"employeeid\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Employee\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"employeeid__first_name\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"First Name\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6},\"employeeid__last_name\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Last Name\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":7},\"qty\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Quantity\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":8},\"unitofmeasure\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Unit of Mes.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":9},\"unitofmeasure__code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Unit of Mes.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":10},\"comment\":{\"width\":25,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Comment\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":11}}}'),
(158, 13, 'department', '{\"width\":1536,\"height\":916.2,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"dept_name\":{\"width\":400,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Department\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1}}}'),
(159, 13, 'staffpositions', '{\"width\":1536,\"height\":916.2,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"description\":{\"width\":400,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"????????\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1}}}'),
(160, 13, 'qualifications', '{\"width\":1536,\"height\":916.2,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"description\":{\"width\":400,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2}}}'),
(161, 13, 'relatives', '{\"width\":1536,\"height\":916.2,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"description\":{\"width\":400,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2}}}'),
(162, 13, 'employment_contracts', '{\"width\":1536,\"height\":916.2,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"description\":{\"width\":400,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2}}}'),
(163, 13, 'miscellaneous_articles', '{\"width\":1536,\"height\":916.2,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"description\":{\"width\":400,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2}}}'),
(164, 13, 'company_info', '{\"width\":1536,\"height\":872.1,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"sortcolumn\":\"address\",\"sortdirection\":{\"ascending\":true,\"descending\":false},\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"name\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Name\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"address\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Address\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"city\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"City\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"postcode\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Postcode\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"email\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Email\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"phone\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Phone\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6},\"phone2\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Phone 2\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":7},\"giro_no\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Giro No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":8},\"bank_name\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Bank Name\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":9},\"bank_branch_no\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Bank Branch No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":10},\"bank_account_no\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Bank Account No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":11},\"payment_routing_no\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Payment Routing No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":12},\"vat_registration_no\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"VAT Registration No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":13},\"iban\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"IBAN\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":14},\"swift_code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"SWIFT Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":15},\"ship_to_name\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Ship-to Name\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":16},\"ship_to_address\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Ship-to Address\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":17},\"ship_to_city\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Ship-to City\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":18},\"ship_to_postcode\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Ship-to Postcode\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":19}}}'),
(165, 13, 'items', '{\"width\":1536,\"height\":872.1,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"description\":{\"width\":250,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"category\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Category\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"category__description\":{\"width\":250,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Cat. Descr.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"price\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Price\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"vendor\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Vendor\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"vendor__name\":{\"width\":250,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Vendor Name\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6},\"vendor_code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Vendor Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":7},\"availiable\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Availiable\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":8},\"base_unit_of_measure\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Base Unit of Measure ID\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":9},\"base_unit_of_measure__code\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Base Unit of Measure\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":10},\"inventory_posting_group\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Inventory Posting Group ID\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":11},\"inventory_posting_group__code\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Inventory Posting Group\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":12}}}'),
(166, 4, 'gl_document_types', '{\"width\":1706.4,\"height\":386.1,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1}}}'),
(167, 8, 'gl_accounts', '{\"width\":898.4000000000001,\"height\":718.2,\"pagenum\":0,\"pagesize\":300,\"pagesizeoptions\":[\"100\",\"200\",\"300\"],\"selectedrowindexes\":[9],\"selectedrowindex\":9,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"code\":{\"width\":50,\"hidden\":false,\"pinned\":true,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"name\":{\"width\":400,\"hidden\":false,\"pinned\":true,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Name\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"id\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"intendation\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Intendation\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"totaling\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Totaling\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"income_balance\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Income/Balance\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"direct_posting\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Direct Posting\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6},\"posting\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Posting\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":7},\"start_balance\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Start Bal.\",\"align\":\"left\",\"cellsalign\":\"right\",\"index\":8},\"debit\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Debit\",\"align\":\"left\",\"cellsalign\":\"right\",\"index\":9},\"credit\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Credit\",\"align\":\"left\",\"cellsalign\":\"right\",\"index\":10},\"end_balance\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"End Bal.\",\"align\":\"left\",\"cellsalign\":\"right\",\"index\":11}}}'),
(168, 8, 'gl_journal', '{\"width\":898.4000000000001,\"height\":718.2,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"account_type\":{\"width\":100,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Account Type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"account_type__code\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Account Type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"account_no\":{\"width\":100,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Account No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"account_description\":{\"width\":200,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Account\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"posting_date\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Posting Date\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"document_type\":{\"width\":100,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Document Type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6},\"document_type__code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Document Type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":7},\"document_no\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Document No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":8},\"decription\":{\"width\":200,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":9},\"amount\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Amount\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":10},\"bal_account_type\":{\"width\":100,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Bal. Account Type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":11},\"bal_account_type__code\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Bal. Account Type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":12},\"bal_account_no\":{\"width\":100,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Bal. Account No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":13},\"bal_account_description\":{\"width\":200,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Bal. Account\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":14}}}'),
(169, 8, 'location', '{\"width\":0,\"height\":0,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{}}'),
(170, 9, 'vendors', '{\"width\":1092.8,\"height\":562.5,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[1],\"selectedrowindex\":1,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"name\":{\"width\":200,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Name\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"address\":{\"width\":300,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Address\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"address_2\":{\"width\":400,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Address 2\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"zip\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"ZIP\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"city\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"City\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"vat_registration_no\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"VAT Registration No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6},\"email\":{\"width\":200,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"E-Mail\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":7},\"shipment_method\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Shipment Method\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":8},\"shipment_method__code\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Shipment Method\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":9},\"vendor_posting_group\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Vendor Posting Group\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":10},\"vendor_posting_group__code\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Vendor Posting Group\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":11},\"payment_terms\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Payment Terms\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":12},\"payment_terms__code\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Payment Terms\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":13}}}'),
(171, 7, 'items', '{\"width\":1423.2,\"height\":846.9,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"description\":{\"width\":250,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"category\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Category\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"category__description\":{\"width\":250,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Cat. Descr.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"price\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Price\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"vendor\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Vendor\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"vendor__name\":{\"width\":250,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Vendor Name\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6},\"vendor_code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Vendor Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":7},\"availiable\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Availiable\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":8},\"base_unit_of_measure\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Base Unit of Measure ID\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":9},\"base_unit_of_measure__code\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Base Unit of Measure\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":10},\"inventory_posting_group\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Inventory Posting Group ID\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":11},\"inventory_posting_group__code\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Inventory Posting Group\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":12}}}'),
(172, 8, 'bank_account', '{\"width\":1344,\"height\":844.2,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[1],\"selectedrowindex\":1,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"description\":{\"width\":200,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"post_code\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Post Code\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"address\":{\"width\":200,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Address\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"phone\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Phone\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"contact\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Contact\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6},\"bank_branch_no\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Bank Branch No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":7},\"bank_account_no\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Bank Account No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":8},\"swift\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"SWIFT\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":9},\"iban\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"IBAN\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":10},\"blocked\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Blocked\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":11}}}'),
(173, 8, 'fixed_assets', '{\"width\":1344,\"height\":844.2,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[6],\"selectedrowindex\":6,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"description\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"fa_class\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"FA Class\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"fa_class__code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"FA Class\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"fa_subclass\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"FA Subclass\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"fa_subclass__code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"FA Subclass\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"fa_location\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"FA Location\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6},\"fa_location__code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"FA Location\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":7},\"fa_type\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"FA type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":8},\"fa_type__code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"FA Type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":9},\"component_of\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Component of \",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":10},\"component_of__description\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Component of \",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":11},\"vendor\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Vendor\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":12},\"vendor__name\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Vendor\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":13},\"maintenance_vendor\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Maintenance Vendor\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":14},\"maintenance_vendor__name\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Maintenance Vendor\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":15},\"warranty_exp_date\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Waranty Exp. Date\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":16},\"responsible_empl\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Responsible Employee\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":17},\"serial_no\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Serial No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":18},\"next_service_date\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Next Service Date\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":19},\"inactive\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Inactive\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":20},\"insured\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Insured\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":21}}}');
INSERT INTO `sys_form_states` (`id`, `user`, `form`, `state`) VALUES
(174, 8, 'crm_contacts', '{\"width\":898.4000000000001,\"height\":718.2,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[7],\"selectedrowindex\":7,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"name\":{\"width\":400,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Name\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"company\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Company\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"company_name\":{\"width\":210,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Company\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"phone\":{\"width\":200,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Phone\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"email\":{\"width\":300,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Email\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"contact_type\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6},\"contact_type__code\":{\"width\":110,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":7}}}'),
(175, 7, 'resources', '{\"width\":1228.8000000000002,\"height\":704.7,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"type\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"type__code\":{\"width\":120,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"employeeid\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Employee\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"description\":{\"width\":300,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"uom\":{\"width\":70,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Unit of Mes.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"uom__code\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Unit of Mes.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6},\"blocked\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Blocked\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":7},\"direct_cost\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Direct Cost\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":8},\"indirect_cost\":{\"width\":110,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Indirect Cost %\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":9},\"unit_cost\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Unit Cost\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":10},\"price_profit_calc\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":11},\"price_profit_calc__code\":{\"width\":120,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":12},\"profit\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Profit\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":13},\"unit_price\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Unit Price\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":14}}}'),
(176, 5, 'fixed_assets', '{\"width\":1536,\"height\":820.8000000000001,\"pagenum\":0,\"pagesize\":25,\"pagesizeoptions\":[\"15\",\"25\",\"50\"],\"selectedrowindexes\":[0],\"selectedrowindex\":0,\"filters\":{\"filterscount\":0},\"groups\":[],\"columns\":{\"id\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":0},\"description\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Description\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":1},\"fa_class\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"FA Class\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":2},\"fa_class__code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"FA Class\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":3},\"fa_subclass\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"FA Subclass\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":4},\"fa_subclass__code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"FA Subclass\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":5},\"fa_location\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"FA Location\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":6},\"fa_location__code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"FA Location\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":7},\"fa_type\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"FA type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":8},\"fa_type__code\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"FA Type\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":9},\"component_of\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Component of \",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":10},\"component_of__description\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Component of \",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":11},\"vendor\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Vendor\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":12},\"vendor__name\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Vendor\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":13},\"maintenance_vendor\":{\"width\":50,\"hidden\":true,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Maintenance Vendor\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":14},\"maintenance_vendor__name\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Maintenance Vendor\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":15},\"warranty_exp_date\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Waranty Exp. Date\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":16},\"responsible_empl\":{\"width\":50,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Responsible Employee\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":17},\"serial_no\":{\"width\":150,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Serial No.\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":18},\"next_service_date\":{\"width\":100,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Next Service Date\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":19},\"inactive\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Inactive\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":20},\"insured\":{\"width\":70,\"hidden\":false,\"pinned\":false,\"groupable\":true,\"resizable\":true,\"draggable\":true,\"text\":\"Insured\",\"align\":\"left\",\"cellsalign\":\"left\",\"index\":21}}}');

-- --------------------------------------------------------

--
-- Структура таблицы `sys_reports`
--

CREATE TABLE `sys_reports` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `template` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `sys_reports`
--

INSERT INTO `sys_reports` (`id`, `name`, `template`) VALUES
(1, 'sales_invoice', 'sales_invoice.html'),
(2, 'purchase_quote', 'purch_quote.html');

-- --------------------------------------------------------

--
-- Структура таблицы `sys_roles`
--

CREATE TABLE `sys_roles` (
  `id` int(11) NOT NULL,
  `description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sys_roles`
--

INSERT INTO `sys_roles` (`id`, `description`) VALUES
(1, 'admin'),
(2, 'human resourses user'),
(3, 'common settings'),
(4, 'all');

-- --------------------------------------------------------

--
-- Структура таблицы `sys_roles_tables`
--

CREATE TABLE `sys_roles_tables` (
  `id` int(11) NOT NULL,
  `roleid` int(11) DEFAULT NULL,
  `tableid` int(11) DEFAULT NULL,
  `allow_select` tinyint(4) DEFAULT 0,
  `allow_update` tinyint(4) DEFAULT 0,
  `allow_delete` tinyint(4) DEFAULT 0,
  `allow_insert` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sys_roles_tables`
--

INSERT INTO `sys_roles_tables` (`id`, `roleid`, `tableid`, `allow_select`, `allow_update`, `allow_delete`, `allow_insert`) VALUES
(1, 2, 81, 1, 1, 1, 1),
(2, 2, 82, 1, 1, 1, 1),
(3, 2, 83, 1, 0, 1, 1),
(4, 2, 84, 1, 1, 1, 1),
(5, 2, 85, 1, 1, 1, 1),
(6, 2, 86, 1, 1, 1, 1),
(7, 2, 87, 1, 1, 1, 1),
(8, 2, 88, 1, 0, 0, 0),
(9, 2, 80, 1, 0, 0, 0),
(10, 2, 75, 1, 1, 1, 1),
(11, 3, 110, 1, 1, 0, 0),
(12, 3, 104, 1, 0, 0, 0),
(13, 3, 152, 1, 0, 0, 0),
(14, 1, 158, 1, 0, 0, 0),
(15, 3, 158, 1, 0, 0, 0),
(16, 4, 75, 1, 1, 1, 1),
(17, 4, 76, 1, 1, 1, 1),
(18, 4, 77, 1, 1, 1, 1),
(19, 4, 78, 1, 1, 1, 1),
(20, 4, 79, 1, 1, 1, 1),
(21, 4, 80, 1, 1, 1, 1),
(22, 4, 81, 1, 1, 1, 1),
(23, 4, 82, 1, 1, 1, 1),
(24, 4, 83, 1, 1, 1, 1),
(25, 4, 84, 1, 1, 1, 1),
(26, 4, 85, 1, 1, 1, 1),
(27, 4, 86, 1, 1, 1, 1),
(28, 4, 87, 1, 1, 1, 1),
(29, 4, 88, 1, 1, 1, 1),
(30, 4, 89, 1, 1, 1, 1),
(31, 4, 90, 1, 1, 1, 1),
(32, 4, 91, 1, 1, 1, 1),
(33, 4, 92, 1, 0, 0, 0),
(34, 4, 93, 1, 0, 0, 0),
(35, 4, 94, 1, 1, 1, 1),
(36, 4, 95, 1, 1, 1, 1),
(37, 4, 96, 1, 1, 1, 1),
(38, 4, 97, 1, 1, 1, 1),
(39, 4, 98, 1, 1, 1, 1),
(40, 4, 99, 1, 1, 1, 1),
(41, 4, 100, 1, 1, 1, 1),
(42, 4, 101, 1, 1, 1, 1),
(43, 4, 102, 1, 0, 0, 0),
(44, 4, 103, 1, 0, 0, 0),
(45, 4, 104, 1, 1, 1, 1),
(46, 4, 105, 1, 1, 1, 1),
(47, 4, 106, 1, 1, 1, 1),
(48, 4, 107, 1, 1, 1, 1),
(49, 4, 108, 1, 1, 1, 1),
(50, 4, 109, 1, 1, 1, 1),
(51, 4, 110, 1, 1, 1, 1),
(52, 4, 111, 1, 1, 1, 1),
(53, 4, 149, 1, 0, 0, 0),
(54, 4, 150, 1, 0, 0, 0),
(55, 4, 151, 1, 0, 0, 0),
(56, 4, 152, 1, 1, 1, 1),
(57, 4, 153, 1, 1, 1, 1),
(58, 4, 154, 1, 1, 1, 1),
(59, 4, 155, 1, 1, 1, 1),
(60, 4, 156, 1, 1, 1, 1),
(61, 4, 157, 1, 1, 1, 1),
(62, 4, 158, 1, 1, 1, 1),
(63, 4, 159, 1, 1, 1, 1),
(64, 4, 160, 1, 1, 1, 1),
(65, 4, 161, 1, 1, 1, 1),
(66, 4, 162, 1, 1, 1, 1),
(67, 4, 163, 1, 1, 1, 1),
(68, 4, 164, 1, 1, 1, 1),
(69, 4, 165, 1, 1, 1, 1),
(70, 4, 166, 1, 1, 1, 1),
(71, 4, 167, 1, 1, 1, 1),
(72, 4, 168, 1, 1, 1, 1),
(73, 4, 169, 1, 1, 1, 1),
(74, 4, 170, 1, 1, 1, 1),
(75, 4, 171, 1, 1, 1, 1),
(76, 4, 172, 1, 1, 1, 1),
(77, 4, 173, 1, 0, 0, 0),
(78, 4, 174, 1, 0, 0, 0),
(79, 4, 175, 1, 1, 1, 1),
(80, 4, 176, 1, 1, 1, 1),
(81, 4, 177, 1, 1, 1, 1),
(82, 4, 178, 1, 1, 1, 1),
(83, 4, 179, 1, 1, 1, 1),
(84, 4, 180, 1, 1, 1, 1),
(85, 4, 181, 1, 1, 1, 1),
(86, 4, 182, 1, 1, 1, 1),
(87, 4, 183, 1, 1, 1, 1),
(88, 4, 184, 1, 1, 1, 1),
(89, 4, 185, 1, 1, 1, 1),
(90, 4, 186, 1, 1, 1, 1),
(91, 4, 187, 1, 1, 1, 1),
(92, 4, 188, 1, 1, 1, 1),
(93, 4, 189, 1, 1, 1, 1),
(94, 4, 190, 1, 1, 1, 1),
(95, 4, 191, 1, 1, 1, 1),
(96, 4, 192, 1, 1, 1, 1),
(97, 4, 193, 1, 1, 1, 1),
(98, 4, 194, 1, 1, 1, 1),
(99, 4, 195, 1, 1, 1, 1),
(100, 4, 196, 1, 1, 1, 1),
(101, 4, 197, 1, 1, 1, 1),
(102, 4, 198, 1, 1, 1, 1),
(103, 4, 199, 1, 1, 1, 1),
(104, 4, 200, 1, 1, 1, 1),
(105, 4, 201, 1, 1, 1, 1),
(106, 4, 202, 1, 1, 1, 1),
(107, 4, 203, 1, 1, 1, 1),
(108, 4, 204, 1, 1, 1, 1),
(109, 4, 205, 1, 1, 1, 1),
(110, 4, 206, 1, 1, 1, 1),
(111, 4, 207, 1, 1, 1, 1),
(112, 4, 208, 1, 1, 1, 1),
(113, 4, 209, 1, 1, 1, 1),
(114, 4, 210, 1, 1, 1, 1),
(115, 4, 211, 1, 1, 1, 1),
(116, 4, 212, 1, 1, 1, 1),
(117, 4, 213, 1, 1, 1, 1),
(118, 4, 215, 1, 0, 0, 0),
(119, 4, 216, 1, 0, 0, 0),
(120, 4, 217, 1, 0, 0, 0),
(121, 4, 218, 1, 1, 1, 1),
(122, 4, 219, 1, 1, 1, 1),
(123, 4, 220, 1, 1, 1, 1),
(124, 4, 221, 1, 1, 1, 1),
(125, 4, 222, 1, 1, 1, 1),
(126, 4, 223, 1, 1, 1, 1),
(127, 4, 224, 1, 1, 1, 1),
(128, 4, 225, 1, 1, 1, 1),
(129, 4, 226, 1, 1, 1, 1),
(130, 4, 227, 1, 1, 1, 1),
(131, 4, 228, 1, 1, 1, 1),
(132, 4, 229, 1, 0, 0, 0),
(143, 4, 232, 1, 0, 0, 0),
(144, 4, 230, 1, 1, 1, 1),
(145, 4, 231, 1, 1, 1, 1),
(146, 4, 233, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `sys_role_menuitems`
--

CREATE TABLE `sys_role_menuitems` (
  `id` int(11) NOT NULL,
  `roleid` int(11) DEFAULT NULL,
  `menuitemid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sys_role_menuitems`
--

INSERT INTO `sys_role_menuitems` (`id`, `roleid`, `menuitemid`) VALUES
(1, 2, 4),
(2, 2, 6),
(3, 2, 23),
(4, 2, 32),
(5, 2, 100002),
(6, 2, 100003),
(7, 2, 100004),
(8, 2, 100005),
(9, 2, 100006),
(10, 2, 100007),
(12, 3, 24),
(13, 3, 99999),
(14, 3, 100016),
(15, 4, 2),
(16, 4, 4),
(17, 4, 5),
(18, 4, 6),
(19, 4, 8),
(20, 4, 14),
(21, 4, 23),
(22, 4, 24),
(23, 4, 29),
(24, 4, 30),
(25, 4, 31),
(26, 4, 32),
(27, 4, 99999),
(28, 4, 100000),
(29, 4, 100001),
(30, 4, 100002),
(31, 4, 100003),
(32, 4, 100004),
(33, 4, 100005),
(34, 4, 100006),
(35, 4, 100007),
(36, 4, 100008),
(37, 4, 100009),
(38, 4, 100010),
(39, 4, 100011),
(40, 4, 100012),
(41, 4, 100013),
(42, 4, 100014),
(43, 4, 100015),
(44, 4, 100016),
(45, 4, 100023),
(46, 4, 100024),
(47, 4, 100025),
(48, 4, 100026),
(49, 4, 100027),
(50, 4, 100028),
(51, 4, 100029),
(52, 4, 100030),
(53, 4, 100031),
(54, 4, 100032),
(55, 4, 100033),
(56, 4, 100034),
(57, 4, 100035),
(58, 4, 100036),
(59, 4, 100037),
(60, 4, 100038),
(61, 4, 100039),
(62, 4, 100040),
(63, 4, 100041),
(64, 4, 100042),
(65, 4, 100043),
(66, 4, 100044),
(67, 4, 100045),
(68, 4, 100046),
(69, 4, 100047),
(70, 4, 100048),
(71, 4, 100049),
(72, 4, 100050),
(73, 4, 100051),
(74, 4, 100052),
(75, 4, 100053),
(76, 4, 100054),
(77, 4, 100055),
(78, 4, 100056),
(79, 4, 100057),
(80, 4, 100058),
(81, 4, 100059),
(82, 4, 100060),
(83, 4, 100061),
(84, 4, 100062),
(85, 4, 100063),
(86, 4, 100064),
(87, 4, 100065),
(88, 4, 100066),
(89, 4, 100067),
(90, 4, 100068),
(91, 4, 100069),
(92, 4, 100070),
(93, 4, 100071),
(94, 4, 100072),
(95, 4, 100073),
(96, 4, 100074),
(97, 4, 100075),
(98, 4, 100076),
(99, 4, 100077),
(100, 4, 100078),
(101, 4, 100079),
(102, 4, 100080),
(103, 4, 100081),
(104, 4, 100082),
(105, 4, 100083),
(106, 4, 100084),
(107, 4, 100085),
(108, 4, 100086),
(109, 4, 100087),
(110, 4, 100088),
(111, 4, 100089),
(112, 4, 100090),
(113, 4, 100091),
(114, 4, 100092),
(115, 4, 100093),
(116, 4, 100094),
(117, 4, 100095),
(118, 4, 100096),
(119, 4, 100097),
(120, 4, 100098),
(121, 4, 100099),
(122, 4, 100100),
(123, 4, 100101),
(124, 4, 100102);

-- --------------------------------------------------------

--
-- Структура таблицы `sys_tables`
--

CREATE TABLE `sys_tables` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `extended` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sys_tables`
--

INSERT INTO `sys_tables` (`id`, `name`, `extended`) VALUES
(75, 'address', NULL),
(76, 'bin', NULL),
(77, 'bincontent', NULL),
(78, 'bintypes', NULL),
(79, 'cause_of_absence', NULL),
(80, 'departments', NULL),
(81, 'employee', NULL),
(82, 'employee_absences', NULL),
(83, 'employee_miscarticles', NULL),
(84, 'employee_qualifications', NULL),
(85, 'employee_relatives', NULL),
(86, 'employee_staffposition', NULL),
(87, 'employment_contracts', NULL),
(88, 'gender', NULL),
(89, 'itemcategory', NULL),
(90, 'items', NULL),
(91, 'location', NULL),
(92, 'menu', NULL),
(93, 'menuroles', NULL),
(94, 'misc_articles', NULL),
(95, 'qualifications', NULL),
(96, 'relatives', NULL),
(97, 'resources', NULL),
(98, 'resources_calctype', NULL),
(99, 'resources_type', NULL),
(100, 'roles', NULL),
(101, 'staffpositions', NULL),
(102, 'sys_roles_tables', NULL),
(103, 'sys_tables', NULL),
(104, 'themes', NULL),
(105, 'transactionjournal', NULL),
(106, 'transactionsettings', NULL),
(107, 'unitofmeasure', NULL),
(108, 'userroles', NULL),
(109, 'users', NULL),
(110, 'viewsettings', NULL),
(111, 'zone', NULL),
(149, 'sys_roles', NULL),
(150, 'sys_user_roles', NULL),
(151, 'sys_role_menuitems', NULL),
(152, 'country', NULL),
(153, 'customer', NULL),
(154, 'carbrands', NULL),
(155, 'category_parameters', NULL),
(156, 'customer_login', NULL),
(157, 'delivery', NULL),
(158, 'i18n', NULL),
(159, 'images', NULL),
(160, 'item_images', NULL),
(161, 'item_parameters', NULL),
(162, 'itemcategory_images', NULL),
(163, 'items_related', NULL),
(164, 'order_header', NULL),
(165, 'order_lines', NULL),
(166, 'order_settings', NULL),
(167, 'order_status', NULL),
(168, 'pages', NULL),
(169, 'parameters', NULL),
(170, 'phrases001', NULL),
(171, 'words', NULL),
(172, 'item_classes', NULL),
(173, 'sys_classes', NULL),
(174, 'sys_forms', NULL),
(175, 'wm_shipment_method', NULL),
(176, 'wm_shipping_agents', NULL),
(177, 'gl_bank_account', NULL),
(178, 'wm_warehouse_classes', NULL),
(179, 'crm_contacts_types', NULL),
(180, 'crm_salespeople', NULL),
(181, 'crm_contacts', NULL),
(182, 'crm_contacts_view', NULL),
(183, 'postcode', NULL),
(184, 'currency', NULL),
(185, 'gl_accounts', NULL),
(186, 'language', NULL),
(187, 'vendor', NULL),
(188, 'general_journals', NULL),
(189, 'gl_account_types', NULL),
(190, 'gl_document_types', NULL),
(191, 'gl_entries', NULL),
(192, 'company_info', NULL),
(193, 'depreciation_book', NULL),
(194, 'employee_view', NULL),
(195, 'fa_class', NULL),
(196, 'fa_depr_methods', NULL),
(197, 'fa_depreciation_book', NULL),
(198, 'fa_insurance', NULL),
(199, 'fa_insurance_type', NULL),
(200, 'fa_locations', NULL),
(201, 'fa_maintenance', NULL),
(202, 'fa_maintenance_reg', NULL),
(203, 'fa_posting_group', NULL),
(204, 'fa_setup', NULL),
(205, 'fa_subclass', NULL),
(206, 'fa_type', NULL),
(207, 'fixed_assets', NULL),
(208, 'gl_journal_line', NULL),
(209, 'gl_registers', NULL),
(210, 'gl_tax_bus_post_gr', NULL),
(211, 'gl_tax_prod_post_gr', NULL),
(212, 'gl_tax_setup', NULL),
(213, 'gl_tax_type', NULL),
(215, 'sys_form_states', NULL),
(216, 'sys_form_tips', NULL),
(217, 'sys_reports', NULL),
(218, 'vendor_posting_group', NULL),
(219, 'fa_insurance_journal_line', NULL),
(220, 'fa_journal_line', NULL),
(221, 'fa_reclass_journal_line', NULL),
(222, 'no_series', NULL),
(223, 'document_types', NULL),
(224, 'fa_posting_types', NULL),
(225, 'order_line_types', NULL),
(226, 'purch_series_settings', NULL),
(227, 'purchase_header', NULL),
(228, 'purchase_line', NULL),
(229, 'sys_users', NULL),
(230, 'inventory_posting_group', NULL),
(231, 'inventory_posting_setup', NULL),
(232, 'item_costing_methods', NULL),
(233, 'payment_terms', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `sys_users`
--

CREATE TABLE `sys_users` (
  `id` int(11) NOT NULL,
  `username` varchar(32) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sys_users`
--

INSERT INTO `sys_users` (`id`, `username`, `password`) VALUES
(1, 'admin', 'a5a8bd8ddd6e40de6cb6e24eab41761f'),
(2, 'user', 'c4ca4238a0b923820dcc509a6f75849b'),
(3, 'testuser', 'e10adc3949ba59abbe56e057f20f883e'),
(4, 'demouser', 'e10adc3949ba59abbe56e057f20f883e'),
(5, 'demouser1', 'e10adc3949ba59abbe56e057f20f883e'),
(6, 'demouser2', 'e10adc3949ba59abbe56e057f20f883e'),
(7, 'demouser3', 'e10adc3949ba59abbe56e057f20f883e'),
(8, 'demouser4', 'e10adc3949ba59abbe56e057f20f883e'),
(9, 'demouser5', 'e10adc3949ba59abbe56e057f20f883e'),
(10, 'demouser6', 'e10adc3949ba59abbe56e057f20f883e'),
(11, 'demouser7', 'e10adc3949ba59abbe56e057f20f883e'),
(12, 'demouser8', 'e10adc3949ba59abbe56e057f20f883e'),
(13, 'demouser9', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Структура таблицы `sys_user_roles`
--

CREATE TABLE `sys_user_roles` (
  `id` int(11) NOT NULL,
  `user` int(11) DEFAULT NULL,
  `role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sys_user_roles`
--

INSERT INTO `sys_user_roles` (`id`, `user`, `role`) VALUES
(2, 3, 2),
(3, 2, 2),
(4, 2, 3),
(5, 4, 4),
(6, 5, 4),
(7, 6, 4),
(8, 7, 4),
(9, 8, 4),
(10, 9, 4),
(11, 10, 4),
(12, 11, 4),
(13, 12, 4),
(14, 13, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `themes`
--

CREATE TABLE `themes` (
  `id` int(11) NOT NULL,
  `theme_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `themes`
--

INSERT INTO `themes` (`id`, `theme_name`) VALUES
(1, 'ui-darkness'),
(2, 'arctic'),
(3, 'base'),
(4, 'black'),
(5, 'blackberry'),
(6, 'bootstrap'),
(7, 'classic'),
(8, 'dark'),
(9, 'darkblue'),
(10, 'energyblue'),
(11, 'fresh'),
(12, 'glacier'),
(13, 'highcontrast'),
(14, 'light'),
(15, 'metro'),
(16, 'metrodark'),
(17, 'mobile'),
(18, 'office'),
(19, 'orange'),
(20, 'shinyblack'),
(21, 'summer'),
(22, 'ui-le-frog'),
(23, 'ui-lightness'),
(24, 'ui-overcast'),
(25, 'ui-redmond'),
(26, 'ui-smoothness'),
(27, 'ui-start'),
(28, 'ui-sunny'),
(29, 'web'),
(30, 'windowsphone');

-- --------------------------------------------------------

--
-- Структура таблицы `transactionjournal`
--

CREATE TABLE `transactionjournal` (
  `id` int(11) NOT NULL,
  `transno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `transactionjournal`
--

INSERT INTO `transactionjournal` (`id`, `transno`) VALUES
(5, NULL),
(6, NULL),
(7, NULL),
(8, NULL),
(9, NULL),
(10, NULL),
(11, NULL),
(12, NULL),
(13, NULL),
(14, NULL),
(15, NULL),
(16, NULL),
(17, NULL),
(18, NULL),
(19, NULL),
(20, NULL),
(21, NULL),
(22, NULL),
(23, NULL),
(24, NULL),
(25, NULL),
(26, NULL),
(27, NULL),
(28, NULL),
(29, NULL),
(30, NULL),
(31, NULL),
(32, NULL),
(33, NULL),
(34, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `transactionsettings`
--

CREATE TABLE `transactionsettings` (
  `id` int(11) NOT NULL DEFAULT 0,
  `transcounter` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `transactionsettings`
--

INSERT INTO `transactionsettings` (`id`, `transcounter`) VALUES
(0, 69);

-- --------------------------------------------------------

--
-- Структура таблицы `unitofmeasure`
--

CREATE TABLE `unitofmeasure` (
  `id` int(11) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `unitofmeasure`
--

INSERT INTO `unitofmeasure` (`id`, `code`, `description`) VALUES
(1, 'Box', 'Box'),
(2, 'Can', 'Can'),
(3, 'Day', 'Day'),
(4, 'Gr', 'Gramm'),
(5, 'Hour', 'Hour'),
(6, 'KG', 'Kilo'),
(7, 'L', 'Liter'),
(8, 'Pack', 'Pack'),
(9, 'Pallet', 'Pallet'),
(10, 'Pcs', 'Piece');

-- --------------------------------------------------------

--
-- Структура таблицы `vendor`
--

CREATE TABLE `vendor` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `name_2` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `address_2` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `vat_registration_no` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `shipment_method` int(11) DEFAULT NULL,
  `vendor_posting_group` int(11) DEFAULT NULL,
  `zip` varchar(45) DEFAULT NULL,
  `payment_terms` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `vendor`
--

INSERT INTO `vendor` (`id`, `name`, `name_2`, `address`, `address_2`, `city`, `vat_registration_no`, `email`, `shipment_method`, `vendor_posting_group`, `zip`, `payment_terms`) VALUES
(1, 'London Postmaster', '', '10 North Lake Avenue', '', 'London1111', '895741963', 'london.postmaster@example.net', 2, 1, 'GB-N12 5XY', 4),
(2, 'AR Day Property Management', '', '100 Day Drive', '', 'Guildford', '274863274', 'ar.day.property.management@example.net', NULL, 1, NULL, NULL),
(3, 'CoolWood Technologies', '', '33 Hitech Drive', '', 'Portsmouth', '697528465', 'coolwood.technologies@example.net', NULL, NULL, NULL, NULL),
(4, 'Lewis Home Furniture', '', '51 Radcroft Road', '', 'Gainsborough', '197548769', 'lewis.home.furniture@example.net', NULL, NULL, NULL, NULL),
(5, 'Service Electronics Ltd.', '', '172 Field Green', '', 'Watford', '295267495', 'service.electronics.ltd@example.net', NULL, NULL, NULL, NULL),
(6, 'Grassblue Ltd.', '', '8 One Way', '', 'London', '', '', NULL, 1, NULL, NULL),
(7, 'Electronics Ltd.', '', '354 Oxford Street', '', 'London', '', '', NULL, 1, '', 4),
(8, 'cc', '', '116 Kensington Road', '', 'London', '', '', NULL, 1, '', NULL),
(9, 'Progressive Home Furnishings', '', '222 Reagan Drive', '', 'Columbia', '', 'progressive.home.furnishings@example.net', NULL, NULL, NULL, NULL),
(10, 'Custom Metals Incorporated', '', '640 Nixon Blvd.', '', 'Birmingham', '', 'custom.metals.incorporated@example.net', NULL, 1, NULL, NULL),
(11, 'American Wood Exports', '', '723 North Hampton Drive', '', 'New York', '', 'american.wood.exports@example.net', NULL, 2, NULL, NULL),
(12, 'Mundersand Corporation', '', '21 W. Arthur St.', '', 'Thunder Bay', '', 'mundersand.corporation@example.net', NULL, NULL, NULL, NULL),
(13, 'NewCaSup', '', '12002 Simcoe St.', '', 'Toronto', '', 'newcasup@example.net', NULL, 2, NULL, NULL),
(14, 'OakvilleWorld', '', '1 Sherwood Heights Dr.', '', 'Oakville', '', 'oakvilleworld@example.net', NULL, NULL, NULL, NULL),
(15, 'Malay-Dan Export Unit Sdn Bhd', '', '12, Jalan Ampang', '', 'AMPANG, Kuala Lumpur', '', 'malay-dan.export.unit.sdn.bhd@example.net', NULL, 2, NULL, NULL),
(16, 'KDHSL99 Sdn Bhd', '', '220, Jalan Limbongan', '', 'PELABUHAN KLANG, Selangor', '', 'kdhsl99.sdn.bhd@example.net', NULL, 2, NULL, NULL),
(17, 'Tengah Butong Sdn Bhd', '', '4KM Jalan Tuaran', '', 'KOTA KINABALU, Sabah', '', 'tengah.butong.sdn.bhd@example.net', NULL, 2, NULL, NULL),
(18, 'Texpro Maroc', '', '1, Rue la rennaissance', '', 'CASABLANCA', '', 'texpro.maroc@example.net', NULL, 2, NULL, NULL),
(19, 'Top Bureau', '', '26, Rue Ahmed Faris', '', 'KASBAH TANGER', '', 'top.bureau@example.net', NULL, 2, NULL, NULL),
(20, 'Comacycle', '', '38, Rue Ahmed Arabi', '', 'MOHAMMEDIA', '', 'comacycle@example.net', NULL, 2, NULL, NULL),
(21, 'Big 5 Video', '', '32 Railway Street', '', 'Richards Bay', '', 'big.5.video@example.net', NULL, NULL, NULL, NULL),
(22, 'Jewel Gold Mine', '', '24 Kempston Rd.', '', 'Johannesburg', '', 'jewel.gold.mine@example.net', NULL, 2, NULL, NULL),
(23, 'Mountain Fisheries', '', '12 Curcuit Road', 'Mountain House', 'Cape Town', '', 'mountain.fisheries@example.net', NULL, 2, NULL, NULL),
(24, 'Houtindustrie Bruynsma', '', 'Havenweg 92', '', 'Zaandam', '456789123B56', 'houtindustrie.bruynsma@example.net', NULL, 2, NULL, NULL),
(25, 'Koekamp Leerindustrie', '', 'Looiersdreef 19-27', '', 'Waalwijk', '789455789B30', 'koekamp.leerindustrie@example.net', NULL, 2, NULL, NULL),
(26, 'Beekhuysen BV', '', 'Mergelland 4', '', 'Apeldoorn', '453218925B23', 'beekhuysen.bv@example.net', NULL, NULL, NULL, NULL),
(27, 'Groene Kater BVBA', '', 'Stationstraat 12', '', 'fff', '123123789', 'groene.kater.bvba@example.net', NULL, NULL, '', NULL),
(28, 'PURE-LOOK', '', 'Parklaan 3', '', 'Mechelen', '654654789', 'pure-look@example.net', NULL, NULL, NULL, NULL),
(29, 'VELUX', '', 'Boomgaardstraat 55', '', 'Kortrijk', '321321654', 'velux@example.net', NULL, NULL, NULL, NULL),
(30, 'Club Euroamis', '', '16 Rue de Berri', '', 'LA CHAPELLE BAS MER', '', 'club.euroamis@example.net', NULL, NULL, NULL, NULL),
(31, 'Belle et Belle', '', '34 Rue du Dome', '', 'CASSEL', '', 'belle.et.belle@example.net', NULL, NULL, NULL, NULL),
(32, 'Aranteaux Aliments', '', '3 Rue Grande', '', 'LA LONDE LES MAURES', '', 'aranteaux.aliments@example.net', NULL, NULL, NULL, NULL),
(33, 'Importaciones S.A.', '', 'Av. Palmeras 5', '', 'Alicante', '03121299T', 'importaciones.sa@example.net', NULL, NULL, NULL, NULL),
(34, 'Subacqua', '', 'c Neptuno 18', '', 'Salamanca', '37030758T', 'subacqua@example.net', NULL, NULL, NULL, NULL),
(35, 'Transporte Roas', '', 'Pol. Ind. 4', '', 'Palma Mallorca', '07472486T', 'transporte.roas@example.net', NULL, NULL, NULL, NULL),
(36, 'Husplast HF', '', 'Dalvegi 24', '', 'Reykjavik', '', 'husplast.hf@example.net', NULL, NULL, NULL, NULL),
(37, 'ff', '', 'Skeifunni 13', '', 'fff', '', 'hurdir.hf@example.net', NULL, NULL, '', NULL),
(38, 'fffff', '', 'Rangarseli 20', '', 'fff', '', 'huslagnir@example.net', NULL, NULL, '', NULL),
(39, 'IVERKA POHISTVO d.o.o.', '', 'Industrijska c.15', '', 'Kranj', '', 'iverka.pohistvo.doo@example.net', NULL, NULL, NULL, NULL),
(40, 'Topol Slovenija d.o.o.', '', 'Ferkova ulica 4', '', 'Kranj', '', 'topol.slovenija.doo@example.net', NULL, NULL, NULL, NULL),
(41, 'POIIORLES d.d.', '', 'Cankarjeva 17', '', 'Koper', '', 'poiiorles.dd@example.net', NULL, NULL, NULL, NULL),
(42, 'Kradolf Zimmerdecke AG', '', 'Erlenstrasse 5', '', 'Immensee', '111 205', 'kradolf.zimmerdecke.ag@example.net', NULL, NULL, NULL, NULL),
(43, 'Matter Transporte', '', 'Industrie', '', 'Pratteln', '472 486', 'matter.transporte@example.net', NULL, NULL, NULL, NULL),
(44, 'w', '', 'Seedamm 18', '', 'ffffffff', '255 744', 'technische.betriebe.rotkreuz@example.net', NULL, NULL, '', NULL),
(45, 'UP Ostrov s.p.', '', 'Mayerova 12', '', 'Olomouch', '', 'up.ostrov.sp@example.net', NULL, NULL, NULL, NULL),
(46, 'TON s.r.o.', '', 'Krausova 125', '', 'Kyjov', '', 'ton.sro@example.net', NULL, NULL, NULL, NULL),
(47, 'Mach & spol. v.o.s.', '', 'T.G. Masaryka 15', '', 'Blansko', '', 'mach.spol.vos@example.net', NULL, NULL, NULL, NULL),
(48, 'Sogewerk Mittersill', '', 'Ortstrasse 12', '', 'Mittersill', 'ATU32334456', 'sagewerk.mittersill@example.net', NULL, NULL, NULL, NULL),
(49, 'Paul Brettschneider KG', '', 'Am Bahndamm 68', '', 'Murau', 'ATU32336677', 'paul.brettschneider.kg@example.net', NULL, NULL, NULL, NULL),
(50, 'Beschluge Schacherhuber', '', 'Fabrikstrasse 24', '', 'Wien', 'ATU32337789', 'beschlage.schacherhuber@example.net', NULL, NULL, NULL, NULL),
(51, 'WoodMart Supply Co.', '', '12 Industrial Heights', '', 'Stratford', '741852963', 'woodmart.supply.co@example.net', NULL, NULL, NULL, NULL),
(52, 'Mortimor Car Company', '', '43 Industrial Heights', '', 'Stratford', '741852979', 'mortimor.car.company@example.net', NULL, NULL, NULL, NULL),
(53, 'Boybridge Tool Mart', '', '8 Grovenors Park', '', 'London', '279425763', 'boybridge.tool.mart@example.net', NULL, 1, NULL, NULL),
(54, 'Furniture Industries', '', '23 Charington Cresent', '', 'Edinburgh', '796385274', 'furniture.industries@example.net', NULL, NULL, NULL, NULL),
(55, 'Lyselette Lamper A/S', '', 'Nyborgvej 566', '', 'Odense C', '63524152', 'lyselette.lamper.as@example.net', NULL, NULL, NULL, NULL),
(56, 'Busterby Stole og Borde A/S', '', 'Havnevej 6', '', 'Kuge', '52147896', 'busterby.stole.og.borde.as@example.net', NULL, NULL, NULL, NULL),
(57, 'Ahornby Hvidevare A/S', '', 'Ndr. Frihavnsgade 45', '', 'Kobenhavn', '78963258', 'ahornby.hvidevare.as@example.net', NULL, NULL, NULL, NULL),
(58, 'Kinnareds Troindustri AB', '', 'Stordal Torslunda', '', 'ffff', '666666666601', 'kinnareds.traindustri.ab@example.net', NULL, NULL, '', NULL),
(59, 'c', '', 'Sjohagsgatan 72', '', 'Sundsvall', '555555555501', 'viksjo.snickerifabrik.ab@example.net', 6, 1, '', 1),
(60, 'Svensk Mobeltextil AB', '', 'Nyongsvogen 14', '', 'Goteborg', '444444444401', 'svensk.mobeltextil.ab@example.net', NULL, NULL, NULL, NULL),
(61, 'Mobelhuset AS', '', 'Vivendelveien 17', '', 'Ski', '', 'mobelhuset.as@example.net', NULL, NULL, NULL, NULL),
(62, 'Stilmobler as', '', 'Thv. Meyersgt. 34', '', 'Oslo', '', 'stilmobler.as@example.net', NULL, NULL, NULL, NULL),
(63, 'Monabekken Barnesenger A/S', '', 'Ostensjoveien 27', '', 'Oslo', '', 'monabekken.barnesenger.as@example.net', NULL, NULL, NULL, NULL),
(64, 'VAG - Jurgensen', '', 'Suderweg 15', '', 'Hamburg', '521478963', 'vag.jurgensen@example.net', NULL, NULL, NULL, NULL),
(65, 'KKA Buromaschinen Gmbh', '', 'Immermannstrasse 92', '', 'Landsberg am Lech', '456123985', 'kka.buromaschinen.gmbh@example.net', NULL, NULL, NULL, NULL),
(66, 'JB-Spedition', '', 'Grunfahrtsweg 20', '', 'Munchen', '125874259', 'jb-spedition@example.net', NULL, NULL, NULL, NULL),
(67, 'Infinity Property & Casualty Corporation', '', '2201 4th Avenue North', 'Birmingham, AL 35283-0189', 'Birmingham', '', '', NULL, 1, NULL, NULL),
(68, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `vendor_posting_group`
--

CREATE TABLE `vendor_posting_group` (
  `id` int(11) NOT NULL,
  `code` varchar(20) DEFAULT NULL,
  `payables_account` int(11) DEFAULT NULL,
  `service_charge_account` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `vendor_posting_group`
--

INSERT INTO `vendor_posting_group` (`id`, `code`, `payables_account`, `service_charge_account`) VALUES
(1, 'DOMESTIC', 76, 239),
(2, 'FOREIGN', 77, 239);

-- --------------------------------------------------------

--
-- Структура таблицы `viewsettings`
--

CREATE TABLE `viewsettings` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `themeid` int(11) DEFAULT NULL,
  `altrows` tinyint(4) DEFAULT NULL,
  `i18n` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `viewsettings`
--

INSERT INTO `viewsettings` (`id`, `userid`, `themeid`, `altrows`, `i18n`) VALUES
(1, 1, 8, 0, 1),
(2, 2, 6, 1, 1),
(3, 4, 8, 0, 1),
(13, 5, 8, NULL, 1),
(14, 7, 8, NULL, 1),
(15, 8, 8, NULL, 1),
(16, 9, 7, NULL, 1),
(17, 10, 8, NULL, 1),
(18, 11, 8, NULL, 1),
(19, 12, 8, NULL, 1),
(20, 13, 2, 0, 1),
(21, 6, 8, NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wm_shipment_method`
--

CREATE TABLE `wm_shipment_method` (
  `id` int(11) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `wm_shipment_method`
--

INSERT INTO `wm_shipment_method` (`id`, `code`, `description`) VALUES
(1, 'CFR', 'Cost and Freight'),
(2, 'CIF', 'Cost Insurance and Freight'),
(3, 'CIP', 'Carriage and Insurance Paid'),
(4, 'CPT', 'Carriage Paid to'),
(5, 'DAF', 'Delivered at Frontier'),
(6, 'DDP', 'Delivered Duty Paid'),
(7, 'DDU', 'Delivered Duty Unpaid'),
(8, 'DELIVERY', 'Delivery'),
(9, 'DEQ', 'Delivered ex Quay'),
(10, 'DES', 'Delivered ex Ship'),
(11, 'EXW', 'Ex Warehouse'),
(12, 'FAS', 'Free Alongside Ship'),
(13, 'FCA', 'Free Carrier'),
(14, 'FOB', 'Free on Board'),
(15, 'PICKUP', 'Pickup at Location');

-- --------------------------------------------------------

--
-- Структура таблицы `wm_shipping_agents`
--

CREATE TABLE `wm_shipping_agents` (
  `id` int(11) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `tracking_link` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `wm_shipping_agents`
--

INSERT INTO `wm_shipping_agents` (`id`, `code`, `description`, `tracking_link`) VALUES
(1, 'DHL', 'DHL Systems, Inc.', 'www.dhl.com/track/track.post-track?awb=%1&origin=United Kingdom'),
(2, 'FEDEX', 'Federal Express Corporation', 'www.fedex.com/cgi-bin/track_it?trk_num=%1&dest_cntry=%2&ship_date=%3'),
(3, 'OWN LOG.', 'Own Logistics', ''),
(4, 'UPS', 'United Parcel Service of America, Inc.', 'wwwapps.ups.com/tracking/tracking.cgi?tracknum=%1');

-- --------------------------------------------------------

--
-- Структура таблицы `wm_warehouse_classes`
--

CREATE TABLE `wm_warehouse_classes` (
  `id` int(11) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `wm_warehouse_classes`
--

INSERT INTO `wm_warehouse_classes` (`id`, `code`, `description`) VALUES
(1, 'COLD', '2 degress Celsius'),
(2, 'DRY', 'Not to exceed 60 % humidity'),
(3, 'FROZEN', '- 8 degress Celsius'),
(4, 'HEATED', 'Heated to 15 degress Celsius'),
(5, 'NONSTATIC', 'Anti static area'),
(6, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `zone`
--

CREATE TABLE `zone` (
  `id` int(11) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `locationid` int(11) DEFAULT NULL,
  `bin_type` int(11) DEFAULT NULL,
  `warehouse_class` int(11) DEFAULT NULL,
  `special_equipment` int(11) DEFAULT NULL,
  `zone_ranking` int(11) DEFAULT NULL,
  `cross_dock_bin_zone` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `zone`
--

INSERT INTO `zone` (`id`, `code`, `description`, `locationid`, `bin_type`, `warehouse_class`, `special_equipment`, `zone_ranking`, `cross_dock_bin_zone`) VALUES
(1, 'ADJUSTMENT', 'Virtual for Adjustment', 1, NULL, NULL, NULL, NULL, 0),
(2, 'BULK', 'Storage Zone', 1, NULL, NULL, NULL, NULL, 0),
(3, 'CROSS-DOCK', 'Cross-Dock', 1, NULL, NULL, NULL, NULL, 0),
(4, 'PICK', 'Picking Zone', 1, NULL, NULL, NULL, NULL, 0),
(5, 'PRODUCTION', 'Production', 1, NULL, NULL, NULL, NULL, 0),
(6, 'QC', 'Quality Assurance Zone', 1, NULL, NULL, NULL, NULL, 0),
(7, 'RECEIVE', 'Receiving Zone', 1, NULL, NULL, NULL, NULL, 0),
(8, 'SHIP', 'Shipping Zone', 1, NULL, NULL, NULL, NULL, 0),
(9, 'STAGE', 'Staging Zone', 1, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Структура для представления `crm_contacts_view`
--
DROP TABLE IF EXISTS `crm_contacts_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`1347489`@`localhost` SQL SECURITY DEFINER VIEW `crm_contacts_view`  AS  select `a`.`id` AS `id`,`a`.`name` AS `name`,`a`.`company` AS `company`,`b`.`name` AS `company_name`,`a`.`phone` AS `phone`,`a`.`email` AS `email`,`a`.`contact_type` AS `contact_type`,`a`.`comments` AS `comments` from (`crm_contacts` `a` left join `crm_contacts` `b` on(`a`.`company` = `b`.`id`)) ;

-- --------------------------------------------------------

--
-- Структура для представления `employee_view`
--
DROP TABLE IF EXISTS `employee_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`1347489`@`localhost` SQL SECURITY DEFINER VIEW `employee_view`  AS  select 1 AS `id`,1 AS `birth_date`,1 AS `first_name`,1 AS `middle_name`,1 AS `last_name`,1 AS `gender`,1 AS `hire_date`,1 AS `department`,1 AS `department_name`,1 AS `fired`,1 AS `employeephone`,1 AS `email`,1 AS `socialsecurityno`,1 AS `createUser`,1 AS `createDateTime`,1 AS `updateUser`,1 AS `updateDateTime` ;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bin`
--
ALTER TABLE `bin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bin_loc_idx_idx` (`locationid`),
  ADD KEY `bin_zone_idx_idx` (`zoneid`),
  ADD KEY `bin_type_idx` (`bintype`);

--
-- Индексы таблицы `bincontent`
--
ALTER TABLE `bincontent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bcont_loc_idx` (`locationid`),
  ADD KEY `bcont_zone_idx` (`zoneid`),
  ADD KEY `bcont_bin_idx` (`binid`);

--
-- Индексы таблицы `bintypes`
--
ALTER TABLE `bintypes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cause_of_absence`
--
ALTER TABLE `cause_of_absence`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `company_info`
--
ALTER TABLE `company_info`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `crm_contacts`
--
ALTER TABLE `crm_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_crm_contacts_1_idx` (`contact_type`),
  ADD KEY `fk_crm_contacts_2_idx` (`company`);

--
-- Индексы таблицы `crm_contacts_types`
--
ALTER TABLE `crm_contacts_types`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `crm_salespeople`
--
ALTER TABLE `crm_salespeople`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `customer_login`
--
ALTER TABLE `customer_login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login_UNIQUE` (`login`),
  ADD KEY `customer_login_idx_idx` (`customer`);

--
-- Индексы таблицы `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `delivery_image_idx_idx` (`image`);

--
-- Индексы таблицы `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `depreciation_book`
--
ALTER TABLE `depreciation_book`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `document_types`
--
ALTER TABLE `document_types`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emp_dep_idx` (`department`),
  ADD KEY `emp_gend_idx` (`gender`);

--
-- Индексы таблицы `employee_absences`
--
ALTER TABLE `employee_absences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employeeid_idx` (`employeeid`),
  ADD KEY `causeofabs_idx` (`cause_of_absence`),
  ADD KEY `uom_idx` (`unitofmeasure`);

--
-- Индексы таблицы `employee_miscarticles`
--
ALTER TABLE `employee_miscarticles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employeeid_idx` (`employeeid`),
  ADD KEY `miscart_idx` (`miscarticleid`);

--
-- Индексы таблицы `employee_qualifications`
--
ALTER TABLE `employee_qualifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `epmployeeid_idx` (`employeeid`),
  ADD KEY `qualificationid_idx` (`qualificationid`);

--
-- Индексы таблицы `employee_relatives`
--
ALTER TABLE `employee_relatives`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employeeid_idx` (`employeeid`),
  ADD KEY `relative_employeeid_idx` (`relative_employeeid`),
  ADD KEY `relativeid_idx` (`relativeid`),
  ADD KEY `emp_idx_idx` (`employeeid`);

--
-- Индексы таблицы `employee_staffposition`
--
ALTER TABLE `employee_staffposition`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_idx` (`employeeid`),
  ADD KEY `staffposition_idx` (`staffposition`);

--
-- Индексы таблицы `employment_contracts`
--
ALTER TABLE `employment_contracts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `fa_class`
--
ALTER TABLE `fa_class`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `fa_depreciation_book`
--
ALTER TABLE `fa_depreciation_book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_fa_depreciation_book_1_idx` (`fixed_asset`),
  ADD KEY `fk_fa_depreciation_book_2_idx` (`depreciation_book`),
  ADD KEY `fk_fa_depreciation_book_3_idx` (`depreciation_method`),
  ADD KEY `fk_fa_depreciation_book_4_idx` (`fa_posting_group`);

--
-- Индексы таблицы `fa_depr_methods`
--
ALTER TABLE `fa_depr_methods`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `fa_insurance`
--
ALTER TABLE `fa_insurance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_fa_insurance_2_idx` (`insurance_vendor`),
  ADD KEY `fk_fa_insurance_1_idx` (`insurance_type`),
  ADD KEY `fk_fa_insurance_3_idx` (`fa`);

--
-- Индексы таблицы `fa_insurance_journal_line`
--
ALTER TABLE `fa_insurance_journal_line`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `fa_insurance_type`
--
ALTER TABLE `fa_insurance_type`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `fa_journal_line`
--
ALTER TABLE `fa_journal_line`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_fa_journal_line_1_idx` (`depreciation_book`),
  ADD KEY `fk_fa_journal_line_2_idx` (`fa_posting_type`),
  ADD KEY `fk_fa_journal_line_3_idx` (`fa`),
  ADD KEY `fk_fa_journal_line_4_idx` (`fa_posting_group`),
  ADD KEY `fk_fa_journal_line_5_idx` (`maintenance`),
  ADD KEY `fk_fa_journal_line_6_idx` (`insurance`),
  ADD KEY `fk_fa_journal_line_7_idx` (`document_type`);

--
-- Индексы таблицы `fa_locations`
--
ALTER TABLE `fa_locations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `fa_maintenance`
--
ALTER TABLE `fa_maintenance`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `fa_maintenance_reg`
--
ALTER TABLE `fa_maintenance_reg`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_fa_maintance_reg_1_idx` (`fa_no`),
  ADD KEY `fk_fa_maintance_reg_2_idx` (`vendor_no`);

--
-- Индексы таблицы `fa_posting_group`
--
ALTER TABLE `fa_posting_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_fa_posting_group_1_idx` (`acquision_cost_account`),
  ADD KEY `fk_fa_posting_group_2_idx` (`accum_depr_account`),
  ADD KEY `fk_fa_posting_group_3_idx` (`write_down_account`),
  ADD KEY `fk_fa_posting_group_4_idx` (`appreciation_account`),
  ADD KEY `fk_fa_posting_group_5_idx` (`acq_cost_acc_on_disposal`),
  ADD KEY `fk_fa_posting_group_6_idx` (`accum_depr_acc_on_disposal`),
  ADD KEY `fk_fa_posting_group_7_idx` (`write_down_acc_on_disposal`),
  ADD KEY `fk_fa_posting_group_8_idx` (`appreciation_acc_on_disposal`),
  ADD KEY `fk_fa_posting_group_9_idx` (`gains_acc_on_disposal`),
  ADD KEY `fk_fa_posting_group_10_idx` (`losses_acc_on_disposal`),
  ADD KEY `fk_fa_posting_group_11_idx` (`book_val_acc_on_disp_gain`),
  ADD KEY `fk_fa_posting_group_12_idx` (`sales_acc_on_disp_gain`),
  ADD KEY `fk_fa_posting_group_13_idx` (`write_down_bal_acc_on_disp`),
  ADD KEY `fk_fa_posting_group_14_idx` (`appr_bal_acc_on_disp`),
  ADD KEY `fk_fa_posting_group_15_idx` (`maintance_expense_account`),
  ADD KEY `fk_fa_posting_group_16_idx` (`maintance_bal_account`),
  ADD KEY `fk_fa_posting_group_17_idx` (`acquision_cost_bal_account`),
  ADD KEY `fk_fa_posting_group_18_idx` (`depreciation_expense_account`),
  ADD KEY `fk_fa_posting_group_19_idx` (`write_down_expense_account`),
  ADD KEY `fk_fa_posting_group_20_idx` (`appreciation_bal_account`),
  ADD KEY `fk_fa_posting_group_21_idx` (`sales_bal_account`),
  ADD KEY `fk_fa_posting_group_22_idx` (`sales_acc_on_disp_loss`),
  ADD KEY `fk_fa_posting_group_23_idx` (`book_val_acc_on_disp_loss`);

--
-- Индексы таблицы `fa_posting_types`
--
ALTER TABLE `fa_posting_types`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `fa_reclass_journal_line`
--
ALTER TABLE `fa_reclass_journal_line`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `fa_setup`
--
ALTER TABLE `fa_setup`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `fa_subclass`
--
ALTER TABLE `fa_subclass`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `fa_type`
--
ALTER TABLE `fa_type`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `fixed_assets`
--
ALTER TABLE `fixed_assets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_fixed_assets_1_idx` (`fa_subclass`),
  ADD KEY `fk_fixed_assets_2_idx` (`fa_class`),
  ADD KEY `fk_fixed_assets_3_idx` (`fa_location`),
  ADD KEY `fk_fixed_assets_4_idx` (`fa_type`),
  ADD KEY `fk_fixed_assets_5_idx` (`component_of`),
  ADD KEY `fk_fixed_assets_6_idx` (`vendor`),
  ADD KEY `fk_fixed_assets_7_idx` (`maintenance_vendor`),
  ADD KEY `fk_fixed_assets_8_idx` (`responsible_empl`);

--
-- Индексы таблицы `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gl_accounts`
--
ALTER TABLE `gl_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code_UNIQUE` (`code`);

--
-- Индексы таблицы `gl_account_types`
--
ALTER TABLE `gl_account_types`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gl_bank_account`
--
ALTER TABLE `gl_bank_account`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gl_document_types`
--
ALTER TABLE `gl_document_types`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gl_entries`
--
ALTER TABLE `gl_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_gl_entries_1_idx` (`gl_account`);

--
-- Индексы таблицы `gl_journal_line`
--
ALTER TABLE `gl_journal_line`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_general_journals_1_idx` (`account_type`),
  ADD KEY `fk_general_journals_2_idx` (`bal_account_type`),
  ADD KEY `fk_general_journals_3_idx` (`document_type`),
  ADD KEY `fk_gl_journal_line_1_idx` (`maintenance`),
  ADD KEY `fk_gl_journal_line_2_idx` (`insurance`),
  ADD KEY `fk_gl_journal_line_4_idx` (`fa_posting_type`),
  ADD KEY `fk_gl_journal_line_3_idx` (`depreciation_book`);

--
-- Индексы таблицы `gl_registers`
--
ALTER TABLE `gl_registers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gl_tax_bus_post_gr`
--
ALTER TABLE `gl_tax_bus_post_gr`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gl_tax_prod_post_gr`
--
ALTER TABLE `gl_tax_prod_post_gr`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gl_tax_setup`
--
ALTER TABLE `gl_tax_setup`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_gl_tax_setup_1_idx` (`bus_post_gr`),
  ADD KEY `fk_gl_tax_setup_2_idx` (`prod_post_gr`),
  ADD KEY `fk_gl_tax_setup_3_idx` (`calculation_type`),
  ADD KEY `fk_gl_tax_setup_4_idx` (`sales_account`),
  ADD KEY `fk_gl_tax_setup_5_idx` (`purchase_account`),
  ADD KEY `fk_gl_tax_setup_6_idx` (`reverse_chrg_account`);

--
-- Индексы таблицы `gl_tax_type`
--
ALTER TABLE `gl_tax_type`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `i18n`
--
ALTER TABLE `i18n`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `inventory_posting_group`
--
ALTER TABLE `inventory_posting_group`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `inventory_posting_setup`
--
ALTER TABLE `inventory_posting_setup`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_inventory_posting_setup_1_idx` (`location`),
  ADD KEY `fk_inventory_posting_setup_2_idx` (`inventory_posting_group`),
  ADD KEY `fk_inventory_posting_setup_3_idx` (`inventory_account`),
  ADD KEY `fk_inventory_posting_setup_4_idx` (`inventory_account_interim`),
  ADD KEY `fk_inventory_posting_setup_5_idx` (`wip_account`),
  ADD KEY `fk_inventory_posting_setup_6_idx` (`material_variance_account`),
  ADD KEY `fk_inventory_posting_setup_7_idx` (`capacity_variance_account`),
  ADD KEY `fk_inventory_posting_setup_8_idx` (`mfg_overhead_variance_account`),
  ADD KEY `fk_inventory_posting_setup_9_idx` (`cap_overhead_variance_account`),
  ADD KEY `fk_inventory_posting_setup_10_idx` (`subcontracted_variance_account`);

--
-- Индексы таблицы `itemcategory`
--
ALTER TABLE `itemcategory`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `itemcategory_images`
--
ALTER TABLE `itemcategory_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `itemcat_img_idx1_idx` (`itemcategory`),
  ADD KEY `itemcat_img_idx2_idx` (`image`);

--
-- Индексы таблицы `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_idx` (`category`),
  ADD KEY `fk_items_1_idx` (`base_unit_of_measure`),
  ADD KEY `fk_items_2_idx` (`inventory_posting_group`),
  ADD KEY `fk_items_3_idx` (`vendor`);

--
-- Индексы таблицы `items_related`
--
ALTER TABLE `items_related`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_rel_item_idx` (`item`),
  ADD KEY `items_rel_related_idx` (`related`);

--
-- Индексы таблицы `item_classes`
--
ALTER TABLE `item_classes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `item_costing_methods`
--
ALTER TABLE `item_costing_methods`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menuroles`
--
ALTER TABLE `menuroles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menuitemfk_idx` (`menuitem`),
  ADD KEY `rolefk_idx` (`role`);

--
-- Индексы таблицы `misc_articles`
--
ALTER TABLE `misc_articles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `no_series`
--
ALTER TABLE `no_series`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code_UNIQUE` (`code`);

--
-- Индексы таблицы `order_header`
--
ALTER TABLE `order_header`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_cust_idx_idx` (`customer_id`),
  ADD KEY `order_delivery_idx_idx` (`delivery`),
  ADD KEY `order_status_idx_idx` (`status`);

--
-- Индексы таблицы `order_lines`
--
ALTER TABLE `order_lines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_line_idx_idx` (`order_id`),
  ADD KEY `order_line_item_idx_idx` (`item_id`);

--
-- Индексы таблицы `order_line_types`
--
ALTER TABLE `order_line_types`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `order_settings`
--
ALTER TABLE `order_settings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `payment_terms`
--
ALTER TABLE `payment_terms`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `postcode`
--
ALTER TABLE `postcode`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `purchase_header`
--
ALTER TABLE `purchase_header`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index9` (`document_type`,`document_no`),
  ADD KEY `fk_purchase_header_1_idx` (`document_type`),
  ADD KEY `fk_purchase_header_2_idx` (`buy_from_vendor_no`),
  ADD KEY `fk_purchase_header_3_idx` (`pay_to_vendor_no`),
  ADD KEY `fk_purchase_header_4_idx` (`shipment_method`),
  ADD KEY `fk_purchase_header_5_idx` (`location`),
  ADD KEY `fk_purchase_header_6_idx` (`buy_from_contact_no`),
  ADD KEY `fk_purchase_header_7_idx` (`pay_to_contact_no`);

--
-- Индексы таблицы `purchase_line`
--
ALTER TABLE `purchase_line`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_purchase_line_1_idx` (`type`),
  ADD KEY `fk_purchase_line_2_idx` (`header`),
  ADD KEY `fk_purchase_line_3_idx` (`unit_of_measure`);

--
-- Индексы таблицы `purch_series_settings`
--
ALTER TABLE `purch_series_settings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `qualifications`
--
ALTER TABLE `qualifications`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `relatives`
--
ALTER TABLE `relatives`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `res_empl_idx_idx` (`employeeid`),
  ADD KEY `res_type_idx_idx` (`type`),
  ADD KEY `res_calc_type_idx_idx` (`price_profit_calc`),
  ADD KEY `res_uom_idx_idx` (`uom`);

--
-- Индексы таблицы `resources_calctype`
--
ALTER TABLE `resources_calctype`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `resources_type`
--
ALTER TABLE `resources_type`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `staffpositions`
--
ALTER TABLE `staffpositions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sys_classes`
--
ALTER TABLE `sys_classes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sys_forms`
--
ALTER TABLE `sys_forms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Индексы таблицы `sys_form_states`
--
ALTER TABLE `sys_form_states`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sys_reports`
--
ALTER TABLE `sys_reports`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sys_roles`
--
ALTER TABLE `sys_roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sys_roles_tables`
--
ALTER TABLE `sys_roles_tables`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_table` (`roleid`,`tableid`),
  ADD KEY `table_refid_idx` (`tableid`);

--
-- Индексы таблицы `sys_role_menuitems`
--
ALTER TABLE `sys_role_menuitems`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index2` (`roleid`,`menuitemid`),
  ADD KEY `sys_rm_menuitemidx_idx` (`menuitemid`);

--
-- Индексы таблицы `sys_tables`
--
ALTER TABLE `sys_tables`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sys_users`
--
ALTER TABLE `sys_users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sys_user_roles`
--
ALTER TABLE `sys_user_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_idx` (`user`),
  ADD KEY `role_idx` (`role`);

--
-- Индексы таблицы `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `transactionjournal`
--
ALTER TABLE `transactionjournal`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transno_UNIQUE` (`transno`);

--
-- Индексы таблицы `transactionsettings`
--
ALTER TABLE `transactionsettings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `unitofmeasure`
--
ALTER TABLE `unitofmeasure`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_vendor_1_idx` (`shipment_method`),
  ADD KEY `fk_vendor_2_idx` (`vendor_posting_group`),
  ADD KEY `fk_vendor_3_idx` (`payment_terms`);

--
-- Индексы таблицы `vendor_posting_group`
--
ALTER TABLE `vendor_posting_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_vendor_posting_group_1_idx` (`payables_account`,`service_charge_account`),
  ADD KEY `fk_vend_post_gr_2_idx` (`service_charge_account`);

--
-- Индексы таблицы `viewsettings`
--
ALTER TABLE `viewsettings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userkey_idx` (`userid`),
  ADD KEY `themekey_idx` (`themeid`),
  ADD KEY `user_i18n_idx` (`i18n`);

--
-- Индексы таблицы `wm_shipment_method`
--
ALTER TABLE `wm_shipment_method`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wm_shipping_agents`
--
ALTER TABLE `wm_shipping_agents`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wm_warehouse_classes`
--
ALTER TABLE `wm_warehouse_classes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `zone`
--
ALTER TABLE `zone`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zone_lock_idx_idx` (`locationid`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `bin`
--
ALTER TABLE `bin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `bincontent`
--
ALTER TABLE `bincontent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `bintypes`
--
ALTER TABLE `bintypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `cause_of_absence`
--
ALTER TABLE `cause_of_absence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `company_info`
--
ALTER TABLE `company_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `crm_contacts`
--
ALTER TABLE `crm_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=432;

--
-- AUTO_INCREMENT для таблицы `crm_contacts_types`
--
ALTER TABLE `crm_contacts_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `crm_salespeople`
--
ALTER TABLE `crm_salespeople`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT для таблицы `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `customer_login`
--
ALTER TABLE `customer_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `delivery`
--
ALTER TABLE `delivery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `depreciation_book`
--
ALTER TABLE `depreciation_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `document_types`
--
ALTER TABLE `document_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT для таблицы `employee_absences`
--
ALTER TABLE `employee_absences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `employee_miscarticles`
--
ALTER TABLE `employee_miscarticles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `employee_qualifications`
--
ALTER TABLE `employee_qualifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `employee_relatives`
--
ALTER TABLE `employee_relatives`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `employee_staffposition`
--
ALTER TABLE `employee_staffposition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT для таблицы `employment_contracts`
--
ALTER TABLE `employment_contracts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `fa_class`
--
ALTER TABLE `fa_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `fa_depreciation_book`
--
ALTER TABLE `fa_depreciation_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `fa_depr_methods`
--
ALTER TABLE `fa_depr_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `fa_insurance`
--
ALTER TABLE `fa_insurance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `fa_insurance_journal_line`
--
ALTER TABLE `fa_insurance_journal_line`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fa_insurance_type`
--
ALTER TABLE `fa_insurance_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `fa_journal_line`
--
ALTER TABLE `fa_journal_line`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `fa_locations`
--
ALTER TABLE `fa_locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `fa_maintenance`
--
ALTER TABLE `fa_maintenance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `fa_maintenance_reg`
--
ALTER TABLE `fa_maintenance_reg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `fa_posting_group`
--
ALTER TABLE `fa_posting_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `fa_posting_types`
--
ALTER TABLE `fa_posting_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `fa_reclass_journal_line`
--
ALTER TABLE `fa_reclass_journal_line`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fa_setup`
--
ALTER TABLE `fa_setup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fa_subclass`
--
ALTER TABLE `fa_subclass`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `fixed_assets`
--
ALTER TABLE `fixed_assets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `gender`
--
ALTER TABLE `gender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `gl_accounts`
--
ALTER TABLE `gl_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- AUTO_INCREMENT для таблицы `gl_account_types`
--
ALTER TABLE `gl_account_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `gl_bank_account`
--
ALTER TABLE `gl_bank_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `gl_document_types`
--
ALTER TABLE `gl_document_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `gl_entries`
--
ALTER TABLE `gl_entries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT для таблицы `gl_journal_line`
--
ALTER TABLE `gl_journal_line`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `gl_registers`
--
ALTER TABLE `gl_registers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `gl_tax_bus_post_gr`
--
ALTER TABLE `gl_tax_bus_post_gr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `gl_tax_prod_post_gr`
--
ALTER TABLE `gl_tax_prod_post_gr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `gl_tax_setup`
--
ALTER TABLE `gl_tax_setup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `gl_tax_type`
--
ALTER TABLE `gl_tax_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `i18n`
--
ALTER TABLE `i18n`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT для таблицы `inventory_posting_group`
--
ALTER TABLE `inventory_posting_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `inventory_posting_setup`
--
ALTER TABLE `inventory_posting_setup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `itemcategory`
--
ALTER TABLE `itemcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `itemcategory_images`
--
ALTER TABLE `itemcategory_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT для таблицы `items_related`
--
ALTER TABLE `items_related`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `item_classes`
--
ALTER TABLE `item_classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `item_costing_methods`
--
ALTER TABLE `item_costing_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT для таблицы `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100103;

--
-- AUTO_INCREMENT для таблицы `menuroles`
--
ALTER TABLE `menuroles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `misc_articles`
--
ALTER TABLE `misc_articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `no_series`
--
ALTER TABLE `no_series`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `order_header`
--
ALTER TABLE `order_header`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `order_lines`
--
ALTER TABLE `order_lines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `order_line_types`
--
ALTER TABLE `order_line_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `order_settings`
--
ALTER TABLE `order_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `payment_terms`
--
ALTER TABLE `payment_terms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `postcode`
--
ALTER TABLE `postcode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=339;

--
-- AUTO_INCREMENT для таблицы `purchase_header`
--
ALTER TABLE `purchase_header`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `purchase_line`
--
ALTER TABLE `purchase_line`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `qualifications`
--
ALTER TABLE `qualifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `relatives`
--
ALTER TABLE `relatives`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `resources`
--
ALTER TABLE `resources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `resources_calctype`
--
ALTER TABLE `resources_calctype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `resources_type`
--
ALTER TABLE `resources_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `staffpositions`
--
ALTER TABLE `staffpositions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `sys_classes`
--
ALTER TABLE `sys_classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `sys_forms`
--
ALTER TABLE `sys_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT для таблицы `sys_form_states`
--
ALTER TABLE `sys_form_states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT для таблицы `sys_reports`
--
ALTER TABLE `sys_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `sys_roles`
--
ALTER TABLE `sys_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `sys_roles_tables`
--
ALTER TABLE `sys_roles_tables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT для таблицы `sys_role_menuitems`
--
ALTER TABLE `sys_role_menuitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT для таблицы `sys_tables`
--
ALTER TABLE `sys_tables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;

--
-- AUTO_INCREMENT для таблицы `sys_users`
--
ALTER TABLE `sys_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `sys_user_roles`
--
ALTER TABLE `sys_user_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `transactionjournal`
--
ALTER TABLE `transactionjournal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT для таблицы `unitofmeasure`
--
ALTER TABLE `unitofmeasure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `vendor`
--
ALTER TABLE `vendor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT для таблицы `vendor_posting_group`
--
ALTER TABLE `vendor_posting_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `viewsettings`
--
ALTER TABLE `viewsettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `wm_shipment_method`
--
ALTER TABLE `wm_shipment_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `wm_shipping_agents`
--
ALTER TABLE `wm_shipping_agents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `wm_warehouse_classes`
--
ALTER TABLE `wm_warehouse_classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `zone`
--
ALTER TABLE `zone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `bin`
--
ALTER TABLE `bin`
  ADD CONSTRAINT `bin_loc_idx` FOREIGN KEY (`locationid`) REFERENCES `location` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `bin_type` FOREIGN KEY (`bintype`) REFERENCES `bintypes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `bin_zone_idx` FOREIGN KEY (`zoneid`) REFERENCES `zone` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `bincontent`
--
ALTER TABLE `bincontent`
  ADD CONSTRAINT `bcont_bin` FOREIGN KEY (`binid`) REFERENCES `bin` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `bcont_loc` FOREIGN KEY (`locationid`) REFERENCES `location` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `bcont_zone` FOREIGN KEY (`zoneid`) REFERENCES `zone` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `crm_contacts`
--
ALTER TABLE `crm_contacts`
  ADD CONSTRAINT `fk_crm_contacts_1` FOREIGN KEY (`contact_type`) REFERENCES `crm_contacts_types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_crm_contacts_2` FOREIGN KEY (`company`) REFERENCES `crm_contacts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `customer_login`
--
ALTER TABLE `customer_login`
  ADD CONSTRAINT `customer_login_idx` FOREIGN KEY (`customer`) REFERENCES `customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `delivery`
--
ALTER TABLE `delivery`
  ADD CONSTRAINT `delivery_image_idx` FOREIGN KEY (`image`) REFERENCES `images` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `emp_dep` FOREIGN KEY (`department`) REFERENCES `departments` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `emp_gend` FOREIGN KEY (`gender`) REFERENCES `gender` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `employee_absences`
--
ALTER TABLE `employee_absences`
  ADD CONSTRAINT `causeofabs` FOREIGN KEY (`cause_of_absence`) REFERENCES `cause_of_absence` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `employeeid` FOREIGN KEY (`employeeid`) REFERENCES `employee` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `uom` FOREIGN KEY (`unitofmeasure`) REFERENCES `unitofmeasure` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `employee_miscarticles`
--
ALTER TABLE `employee_miscarticles`
  ADD CONSTRAINT `empmiscidx` FOREIGN KEY (`employeeid`) REFERENCES `employee` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `miscartiidx` FOREIGN KEY (`miscarticleid`) REFERENCES `misc_articles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `employee_qualifications`
--
ALTER TABLE `employee_qualifications`
  ADD CONSTRAINT `employeeidx` FOREIGN KEY (`employeeid`) REFERENCES `employee` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `qualificationid` FOREIGN KEY (`qualificationid`) REFERENCES `qualifications` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `employee_relatives`
--
ALTER TABLE `employee_relatives`
  ADD CONSTRAINT `emp_idx` FOREIGN KEY (`employeeid`) REFERENCES `employee` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `rel_idx` FOREIGN KEY (`relativeid`) REFERENCES `relatives` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `relemp_idx` FOREIGN KEY (`relative_employeeid`) REFERENCES `employee` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `employee_staffposition`
--
ALTER TABLE `employee_staffposition`
  ADD CONSTRAINT `employee` FOREIGN KEY (`employeeid`) REFERENCES `employee` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `staffposition` FOREIGN KEY (`staffposition`) REFERENCES `staffpositions` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `fa_depreciation_book`
--
ALTER TABLE `fa_depreciation_book`
  ADD CONSTRAINT `fk_fa_depreciation_book_1` FOREIGN KEY (`fixed_asset`) REFERENCES `fixed_assets` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fa_depreciation_book_2` FOREIGN KEY (`depreciation_book`) REFERENCES `depreciation_book` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fa_depreciation_book_3` FOREIGN KEY (`depreciation_method`) REFERENCES `fa_depr_methods` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fa_depreciation_book_4` FOREIGN KEY (`fa_posting_group`) REFERENCES `fa_posting_group` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `fa_insurance`
--
ALTER TABLE `fa_insurance`
  ADD CONSTRAINT `fk_fa_insurance_1` FOREIGN KEY (`insurance_type`) REFERENCES `fa_insurance_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fa_insurance_2` FOREIGN KEY (`insurance_vendor`) REFERENCES `vendor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fa_insurance_3` FOREIGN KEY (`fa`) REFERENCES `fixed_assets` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `fa_journal_line`
--
ALTER TABLE `fa_journal_line`
  ADD CONSTRAINT `fk_fa_journal_line_1` FOREIGN KEY (`depreciation_book`) REFERENCES `depreciation_book` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fa_journal_line_2` FOREIGN KEY (`fa_posting_type`) REFERENCES `fa_posting_types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fa_journal_line_3` FOREIGN KEY (`fa`) REFERENCES `fixed_assets` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fa_journal_line_4` FOREIGN KEY (`fa_posting_group`) REFERENCES `fa_posting_group` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fa_journal_line_5` FOREIGN KEY (`maintenance`) REFERENCES `fa_maintenance` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fa_journal_line_6` FOREIGN KEY (`insurance`) REFERENCES `fa_insurance` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fa_journal_line_7` FOREIGN KEY (`document_type`) REFERENCES `gl_document_types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `fa_maintenance_reg`
--
ALTER TABLE `fa_maintenance_reg`
  ADD CONSTRAINT `fk_fa_maintance_reg_1` FOREIGN KEY (`fa_no`) REFERENCES `fixed_assets` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fa_maintance_reg_2` FOREIGN KEY (`vendor_no`) REFERENCES `vendor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `fa_posting_group`
--
ALTER TABLE `fa_posting_group`
  ADD CONSTRAINT `fk_fa_posting_group_1` FOREIGN KEY (`acquision_cost_account`) REFERENCES `gl_accounts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fa_posting_group_10` FOREIGN KEY (`losses_acc_on_disposal`) REFERENCES `gl_accounts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fa_posting_group_11` FOREIGN KEY (`book_val_acc_on_disp_gain`) REFERENCES `gl_accounts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fa_posting_group_12` FOREIGN KEY (`sales_acc_on_disp_gain`) REFERENCES `gl_accounts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fa_posting_group_13` FOREIGN KEY (`write_down_bal_acc_on_disp`) REFERENCES `gl_accounts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fa_posting_group_14` FOREIGN KEY (`appr_bal_acc_on_disp`) REFERENCES `gl_accounts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fa_posting_group_15` FOREIGN KEY (`maintance_expense_account`) REFERENCES `gl_accounts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fa_posting_group_16` FOREIGN KEY (`maintance_bal_account`) REFERENCES `gl_accounts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fa_posting_group_17` FOREIGN KEY (`acquision_cost_bal_account`) REFERENCES `gl_accounts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fa_posting_group_18` FOREIGN KEY (`depreciation_expense_account`) REFERENCES `gl_accounts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fa_posting_group_19` FOREIGN KEY (`write_down_expense_account`) REFERENCES `gl_accounts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fa_posting_group_2` FOREIGN KEY (`accum_depr_account`) REFERENCES `gl_accounts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fa_posting_group_20` FOREIGN KEY (`appreciation_bal_account`) REFERENCES `gl_accounts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fa_posting_group_21` FOREIGN KEY (`sales_bal_account`) REFERENCES `gl_accounts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fa_posting_group_22` FOREIGN KEY (`sales_acc_on_disp_loss`) REFERENCES `gl_accounts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fa_posting_group_23` FOREIGN KEY (`book_val_acc_on_disp_loss`) REFERENCES `gl_accounts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fa_posting_group_3` FOREIGN KEY (`write_down_account`) REFERENCES `gl_accounts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fa_posting_group_4` FOREIGN KEY (`appreciation_account`) REFERENCES `gl_accounts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fa_posting_group_5` FOREIGN KEY (`acq_cost_acc_on_disposal`) REFERENCES `gl_accounts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fa_posting_group_6` FOREIGN KEY (`accum_depr_acc_on_disposal`) REFERENCES `gl_accounts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fa_posting_group_7` FOREIGN KEY (`write_down_acc_on_disposal`) REFERENCES `gl_accounts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fa_posting_group_8` FOREIGN KEY (`appreciation_acc_on_disposal`) REFERENCES `gl_accounts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fa_posting_group_9` FOREIGN KEY (`gains_acc_on_disposal`) REFERENCES `gl_accounts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `fixed_assets`
--
ALTER TABLE `fixed_assets`
  ADD CONSTRAINT `fk_fixed_assets_1` FOREIGN KEY (`fa_subclass`) REFERENCES `fa_subclass` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fixed_assets_2` FOREIGN KEY (`fa_class`) REFERENCES `fa_class` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fixed_assets_3` FOREIGN KEY (`fa_location`) REFERENCES `fa_locations` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fixed_assets_4` FOREIGN KEY (`fa_type`) REFERENCES `fa_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fixed_assets_5` FOREIGN KEY (`component_of`) REFERENCES `fixed_assets` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fixed_assets_6` FOREIGN KEY (`vendor`) REFERENCES `vendor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fixed_assets_7` FOREIGN KEY (`maintenance_vendor`) REFERENCES `vendor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fixed_assets_8` FOREIGN KEY (`responsible_empl`) REFERENCES `employee` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `gl_entries`
--
ALTER TABLE `gl_entries`
  ADD CONSTRAINT `fk_gl_entries_1` FOREIGN KEY (`gl_account`) REFERENCES `gl_accounts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `gl_journal_line`
--
ALTER TABLE `gl_journal_line`
  ADD CONSTRAINT `fk_general_journals_1` FOREIGN KEY (`account_type`) REFERENCES `gl_account_types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_general_journals_2` FOREIGN KEY (`bal_account_type`) REFERENCES `gl_account_types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_general_journals_3` FOREIGN KEY (`document_type`) REFERENCES `gl_document_types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_gl_journal_line_1` FOREIGN KEY (`maintenance`) REFERENCES `fa_maintenance` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_gl_journal_line_2` FOREIGN KEY (`insurance`) REFERENCES `fa_insurance` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_gl_journal_line_3` FOREIGN KEY (`depreciation_book`) REFERENCES `depreciation_book` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_gl_journal_line_4` FOREIGN KEY (`fa_posting_type`) REFERENCES `fa_posting_types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `gl_tax_setup`
--
ALTER TABLE `gl_tax_setup`
  ADD CONSTRAINT `fk_gl_tax_setup_1` FOREIGN KEY (`bus_post_gr`) REFERENCES `gl_tax_bus_post_gr` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_gl_tax_setup_2` FOREIGN KEY (`prod_post_gr`) REFERENCES `gl_tax_prod_post_gr` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_gl_tax_setup_3` FOREIGN KEY (`calculation_type`) REFERENCES `gl_tax_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_gl_tax_setup_4` FOREIGN KEY (`sales_account`) REFERENCES `gl_accounts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_gl_tax_setup_5` FOREIGN KEY (`purchase_account`) REFERENCES `gl_accounts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_gl_tax_setup_6` FOREIGN KEY (`reverse_chrg_account`) REFERENCES `gl_accounts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `inventory_posting_setup`
--
ALTER TABLE `inventory_posting_setup`
  ADD CONSTRAINT `fk_inventory_posting_setup_1` FOREIGN KEY (`location`) REFERENCES `location` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_inventory_posting_setup_10` FOREIGN KEY (`subcontracted_variance_account`) REFERENCES `gl_accounts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_inventory_posting_setup_2` FOREIGN KEY (`inventory_posting_group`) REFERENCES `inventory_posting_group` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_inventory_posting_setup_3` FOREIGN KEY (`inventory_account`) REFERENCES `gl_accounts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_inventory_posting_setup_4` FOREIGN KEY (`inventory_account_interim`) REFERENCES `gl_accounts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_inventory_posting_setup_5` FOREIGN KEY (`wip_account`) REFERENCES `gl_accounts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_inventory_posting_setup_6` FOREIGN KEY (`material_variance_account`) REFERENCES `gl_accounts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_inventory_posting_setup_7` FOREIGN KEY (`capacity_variance_account`) REFERENCES `gl_accounts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_inventory_posting_setup_8` FOREIGN KEY (`mfg_overhead_variance_account`) REFERENCES `gl_accounts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_inventory_posting_setup_9` FOREIGN KEY (`cap_overhead_variance_account`) REFERENCES `gl_accounts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `itemcategory_images`
--
ALTER TABLE `itemcategory_images`
  ADD CONSTRAINT `itemcat_img_idx1` FOREIGN KEY (`itemcategory`) REFERENCES `itemcategory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `itemcat_img_idx2` FOREIGN KEY (`image`) REFERENCES `images` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `category` FOREIGN KEY (`category`) REFERENCES `itemcategory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_items_1` FOREIGN KEY (`base_unit_of_measure`) REFERENCES `unitofmeasure` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_items_2` FOREIGN KEY (`inventory_posting_group`) REFERENCES `inventory_posting_group` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_items_3` FOREIGN KEY (`vendor`) REFERENCES `vendor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `items_related`
--
ALTER TABLE `items_related`
  ADD CONSTRAINT `items_rel_item` FOREIGN KEY (`item`) REFERENCES `items` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `items_rel_related` FOREIGN KEY (`related`) REFERENCES `items` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `menuroles`
--
ALTER TABLE `menuroles`
  ADD CONSTRAINT `menuitemfk` FOREIGN KEY (`menuitem`) REFERENCES `menu` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `rolefk` FOREIGN KEY (`role`) REFERENCES `sys_roles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `order_header`
--
ALTER TABLE `order_header`
  ADD CONSTRAINT `order_cust_idx` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `order_delivery_idx` FOREIGN KEY (`delivery`) REFERENCES `delivery` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `order_status_idx` FOREIGN KEY (`status`) REFERENCES `order_status` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `order_lines`
--
ALTER TABLE `order_lines`
  ADD CONSTRAINT `order_line_idx` FOREIGN KEY (`order_id`) REFERENCES `order_header` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `order_line_item_idx` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `purchase_header`
--
ALTER TABLE `purchase_header`
  ADD CONSTRAINT `fk_purchase_header_1` FOREIGN KEY (`document_type`) REFERENCES `document_types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_purchase_header_2` FOREIGN KEY (`buy_from_vendor_no`) REFERENCES `vendor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_purchase_header_3` FOREIGN KEY (`pay_to_vendor_no`) REFERENCES `vendor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_purchase_header_4` FOREIGN KEY (`shipment_method`) REFERENCES `wm_shipment_method` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_purchase_header_5` FOREIGN KEY (`location`) REFERENCES `location` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_purchase_header_6` FOREIGN KEY (`buy_from_contact_no`) REFERENCES `crm_contacts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_purchase_header_7` FOREIGN KEY (`pay_to_contact_no`) REFERENCES `crm_contacts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `purchase_line`
--
ALTER TABLE `purchase_line`
  ADD CONSTRAINT `fk_purchase_line_1` FOREIGN KEY (`type`) REFERENCES `order_line_types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_purchase_line_2` FOREIGN KEY (`header`) REFERENCES `purchase_header` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_purchase_line_3` FOREIGN KEY (`unit_of_measure`) REFERENCES `unitofmeasure` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `resources`
--
ALTER TABLE `resources`
  ADD CONSTRAINT `res_calctype_idx` FOREIGN KEY (`price_profit_calc`) REFERENCES `resources_calctype` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `res_empl_idx` FOREIGN KEY (`employeeid`) REFERENCES `employee` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `res_type_idx` FOREIGN KEY (`type`) REFERENCES `resources_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `res_uom_idx` FOREIGN KEY (`uom`) REFERENCES `unitofmeasure` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `sys_roles_tables`
--
ALTER TABLE `sys_roles_tables`
  ADD CONSTRAINT `role_refid` FOREIGN KEY (`roleid`) REFERENCES `sys_roles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `table_refid` FOREIGN KEY (`tableid`) REFERENCES `sys_tables` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `sys_role_menuitems`
--
ALTER TABLE `sys_role_menuitems`
  ADD CONSTRAINT `sys_rm_menuitemidx` FOREIGN KEY (`menuitemid`) REFERENCES `menu` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `sys_rm_roleidx` FOREIGN KEY (`roleid`) REFERENCES `sys_roles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `sys_user_roles`
--
ALTER TABLE `sys_user_roles`
  ADD CONSTRAINT `role` FOREIGN KEY (`role`) REFERENCES `sys_roles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `user` FOREIGN KEY (`user`) REFERENCES `sys_users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `vendor`
--
ALTER TABLE `vendor`
  ADD CONSTRAINT `fk_vendor_1` FOREIGN KEY (`shipment_method`) REFERENCES `wm_shipment_method` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_vendor_2` FOREIGN KEY (`vendor_posting_group`) REFERENCES `vendor_posting_group` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_vendor_3` FOREIGN KEY (`payment_terms`) REFERENCES `payment_terms` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `vendor_posting_group`
--
ALTER TABLE `vendor_posting_group`
  ADD CONSTRAINT `fk_vend_post_gr_1` FOREIGN KEY (`payables_account`) REFERENCES `gl_accounts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_vend_post_gr_2` FOREIGN KEY (`service_charge_account`) REFERENCES `gl_accounts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `viewsettings`
--
ALTER TABLE `viewsettings`
  ADD CONSTRAINT `themekey` FOREIGN KEY (`themeid`) REFERENCES `themes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_i18n` FOREIGN KEY (`i18n`) REFERENCES `i18n` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `userkey` FOREIGN KEY (`userid`) REFERENCES `sys_users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `zone`
--
ALTER TABLE `zone`
  ADD CONSTRAINT `zone_lock_idx` FOREIGN KEY (`locationid`) REFERENCES `location` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
