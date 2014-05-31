-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.1.44-community - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             8.0.0.4396
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table patient-portal.appointment
CREATE TABLE IF NOT EXISTS `appointment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `appointment_date` int(11) DEFAULT NULL,
  `appointment_month` int(11) DEFAULT NULL,
  `appointment_year` int(11) DEFAULT NULL,
  `appointment_dmy` datetime DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `notes` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `start_min` int(11) DEFAULT NULL,
  `end_min` int(11) DEFAULT NULL,
  `appointment_of_id` bigint(20) DEFAULT NULL,
  `appointment_of_type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `appointment_with_id` bigint(20) DEFAULT NULL,
  `appointment_with_type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table patient-portal.appointment: ~50 rows (approximately)
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` (`id`, `appointment_date`, `appointment_month`, `appointment_year`, `appointment_dmy`, `status`, `notes`, `start_min`, `end_min`, `appointment_of_id`, `appointment_of_type`, `appointment_with_id`, `appointment_with_type`) VALUES
	(1, 1, 4, 2014, '2014-05-28 20:31:19', 'AVAILABLE', NULL, 0, 30, 1, 'Doctor', 1, 'User'),
	(2, 1, 4, 2014, '2014-05-28 20:31:21', 'AVAILABLE', NULL, 0, 30, 1, 'Doctor', 1, 'User'),
	(3, 1, 4, 2014, '2014-05-28 20:31:23', 'AVAILABLE', NULL, 0, 30, 1, 'Doctor', 1, 'User'),
	(4, 1, 4, 2014, '2014-05-28 20:31:22', 'AVAILABLE', NULL, 60, 90, 1, 'Doctor', 1, 'User'),
	(5, 1, 4, 2014, '2014-05-28 20:31:24', 'AVAILABLE', NULL, 180, 210, 1, 'Doctor', 1, 'User'),
	(6, 1, 4, 2014, '2014-05-28 20:31:25', 'AVAILABLE', NULL, 180, 210, 1, 'Doctor', 1, 'User'),
	(7, 1, 4, 2014, '2014-05-28 20:31:27', 'AVAILABLE', NULL, 180, 210, 1, 'Doctor', 1, 'User'),
	(8, 1, 4, 2014, '2014-05-28 20:31:26', 'AVAILABLE', NULL, 180, 210, 1, 'Doctor', 1, 'User'),
	(9, 20, 4, 2014, '2014-05-28 20:31:30', 'AVAILABLE', NULL, 270, 300, 1, 'Doctor', 1, 'User'),
	(13, 20, 4, 2014, '2014-05-28 20:31:28', 'AVAILABLE', NULL, 540, 570, 1, 'Doctor', 1, 'User'),
	(14, 20, 4, 2014, '2014-05-28 20:31:32', 'AVAILABLE', NULL, 780, 810, 1, 'Doctor', 1, 'User'),
	(15, 20, 4, 2014, '2014-05-28 20:31:31', 'AVAILABLE', NULL, 1260, 1290, 1, 'Doctor', 1, 'User'),
	(16, 9, 4, 2014, '2014-05-28 20:31:34', 'AVAILABLE', NULL, 630, 660, 1, 'Doctor', 1, 'User'),
	(17, 9, 4, 2014, '2014-05-28 20:31:32', 'AVAILABLE', NULL, 630, 660, 1, 'Doctor', 1, 'User'),
	(18, 9, 4, 2014, '2014-05-28 20:31:45', 'AVAILABLE', NULL, 630, 660, 1, 'Doctor', 1, 'User'),
	(19, 9, 4, 2014, '2014-05-28 20:31:33', 'AVAILABLE', NULL, 630, 660, 1, 'Doctor', 1, 'User'),
	(20, 9, 4, 2014, '2014-05-28 20:31:44', 'AVAILABLE', NULL, 630, 660, 1, 'Doctor', 1, 'User'),
	(21, 9, 4, 2014, '2014-05-28 20:31:40', 'AVAILABLE', NULL, 630, 660, 1, 'Doctor', 1, 'User'),
	(22, 7, 4, 2014, '2014-05-28 20:31:43', 'AVAILABLE', NULL, 540, 570, 1, 'Doctor', 1, 'User'),
	(23, 14, 4, 2014, '2014-05-28 20:31:42', 'AVAILABLE', NULL, 630, 660, 1, 'Doctor', 1, 'User'),
	(24, 14, 4, 2014, '2014-05-28 20:31:49', 'AVAILABLE', NULL, 630, 660, 1, 'Doctor', 1, 'User'),
	(25, 1, 4, 2014, '2014-05-28 20:31:49', 'AVAILABLE', NULL, 300, 330, 1, 'Doctor', 1, 'User'),
	(26, 1, 4, 2014, '2014-05-28 20:31:46', 'AVAILABLE', NULL, 300, 330, 1, 'Doctor', 1, 'User'),
	(27, 1, 4, 2014, '2014-05-28 20:31:48', 'AVAILABLE', NULL, 300, 330, 1, 'Doctor', 1, 'User'),
	(28, 9, 4, 2014, '2014-05-28 20:31:47', 'AVAILABLE', NULL, 540, 570, 1, 'Doctor', 1, 'User'),
	(29, 25, 3, 2014, '2014-05-28 20:31:50', 'AVAILABLE', NULL, 540, 570, 1, 'Doctor', 1, 'User'),
	(30, 14, 4, 2014, '2014-05-28 20:31:54', 'AVAILABLE', NULL, 390, 420, 1, 'Doctor', 1, 'User'),
	(31, 2, 4, 2014, '2014-05-28 20:31:50', 'AVAILABLE', NULL, 780, 810, 1, 'Doctor', 1, 'User'),
	(32, 31, 4, 2014, '2014-05-28 20:31:53', 'AVAILABLE', NULL, 660, 690, 1, 'Doctor', 1, 'User'),
	(33, 13, 4, 2014, '2014-05-28 20:31:51', 'AVAILABLE', NULL, 660, 690, 1, 'Doctor', 1, 'User'),
	(34, 8, 4, 2014, '2014-05-28 20:31:52', 'AVAILABLE', NULL, 330, 360, 1, 'Doctor', 1, 'User'),
	(35, 8, 4, 2014, '2014-05-28 20:31:58', 'AVAILABLE', NULL, 330, 360, 1, 'Doctor', 1, 'User'),
	(36, 30, 3, 2014, '2014-05-28 20:31:59', 'AVAILABLE', NULL, 300, 330, 1, 'Doctor', 1, 'User'),
	(37, 30, 3, 2014, '2014-05-28 20:31:58', 'AVAILABLE', NULL, 810, 840, 1, 'Doctor', 1, 'User'),
	(38, 9, 4, 2014, '2014-05-28 20:32:11', 'AVAILABLE', NULL, 780, 810, 1, 'Doctor', 1, 'User'),
	(39, 8, 4, 2014, '2014-05-28 20:32:10', 'AVAILABLE', NULL, 630, 660, 1, 'Doctor', 1, 'User'),
	(40, 21, 4, 2014, '2014-05-28 20:32:08', 'AVAILABLE', NULL, 420, 450, 1, 'User', 2, 'Doctor'),
	(41, 21, 4, 2014, '2014-05-28 20:32:09', 'AVAILABLE', NULL, 780, 810, 1, 'User', 2, 'Doctor'),
	(42, 21, 4, 2014, '2014-05-28 20:32:08', 'AVAILABLE', NULL, 780, 810, 2, 'User', 1, 'Doctor'),
	(43, 21, 4, 2014, '2014-05-28 20:32:11', 'AVAILABLE', NULL, 690, 720, 2, 'User', 1, 'Doctor'),
	(44, 21, 4, 2014, '2014-05-28 20:32:07', 'AVAILABLE', NULL, 510, 540, 2, 'User', 1, 'Doctor'),
	(45, 21, 4, 2014, '2014-05-28 20:32:05', 'AVAILABLE', NULL, 570, 600, 2, 'User', 1, 'Doctor'),
	(46, 21, 4, 2014, '2014-05-28 20:32:06', 'AVAILABLE', NULL, 660, 690, 2, 'User', 1, 'Doctor'),
	(47, 21, 4, 2014, '2014-05-28 20:32:05', 'AVAILABLE', NULL, 690, 720, 2, 'User', 1, 'Doctor'),
	(48, 21, 4, 2014, '2014-05-28 20:32:07', 'AVAILABLE', NULL, 570, 600, 2, 'User', 1, 'Doctor'),
	(49, 21, 4, 2014, '2014-05-28 20:32:02', 'AVAILABLE', NULL, 780, 810, 2, 'User', 1, 'Doctor'),
	(50, 21, 4, 2014, '2014-05-28 20:32:02', 'AVAILABLE', NULL, 690, 720, 2, 'User', 2, 'Doctor'),
	(51, 21, 4, 2014, '2014-05-28 20:32:03', 'AVAILABLE', NULL, 480, 510, 2, 'User', 2, 'Doctor'),
	(52, 21, 4, 2014, '2014-05-28 20:32:01', 'AVAILABLE', NULL, 930, 960, 1, 'User', 2, 'Doctor'),
	(53, 21, 4, 2014, '2014-05-28 20:32:04', 'AVAILABLE', NULL, 720, 750, 1, 'User', 3, 'Doctor');
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;


-- Dumping structure for table patient-portal.associated_symptom
CREATE TABLE IF NOT EXISTS `associated_symptom` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `body_location_id` bigint(20) NOT NULL,
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_associated_symptom_body_loc_1` (`body_location_id`),
  CONSTRAINT `fk_associated_symptom_body_loc_1` FOREIGN KEY (`body_location_id`) REFERENCES `body_location` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table patient-portal.associated_symptom: ~26 rows (approximately)
/*!40000 ALTER TABLE `associated_symptom` DISABLE KEYS */;
INSERT INTO `associated_symptom` (`id`, `body_location_id`, `description`) VALUES
	(1, 1, 'associated_symptom 1'),
	(2, 1, 'associated_symptom 2'),
	(3, 1, 'associated_symptom 3'),
	(4, 1, 'associated_symptom 4'),
	(5, 1, 'associated_symptom 5'),
	(6, 3, 'associated_symptom 1'),
	(7, 3, 'associated_symptom 2'),
	(8, 3, 'associated_symptom 3'),
	(9, 3, 'associated_symptom 4'),
	(10, 4, 'associated_symptom 1'),
	(11, 4, 'associated_symptom 2'),
	(12, 4, 'associated_symptom 3'),
	(13, 4, 'associated_symptom 4'),
	(14, 4, 'associated_symptom 5'),
	(15, 4, 'associated_symptom 6'),
	(16, 5, 'associated_symptom 1'),
	(17, 5, 'associated_symptom 2'),
	(18, 5, 'associated_symptom 3'),
	(19, 5, 'associated_symptom 4'),
	(20, 5, 'associated_symptom 5'),
	(21, 5, 'associated_symptom 6'),
	(22, 6, 'associated_symptom 1'),
	(23, 6, 'associated_symptom 2'),
	(24, 6, 'associated_symptom 3'),
	(25, 6, 'associated_symptom 4'),
	(26, 6, 'associated_symptom 5');
/*!40000 ALTER TABLE `associated_symptom` ENABLE KEYS */;


-- Dumping structure for table patient-portal.body_location
CREATE TABLE IF NOT EXISTS `body_location` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `containedin_id` bigint(20) DEFAULT NULL,
  `group_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_body_location_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table patient-portal.body_location: ~22 rows (approximately)
/*!40000 ALTER TABLE `body_location` DISABLE KEYS */;
INSERT INTO `body_location` (`id`, `name`, `containedin_id`, `group_id`) VALUES
	(1, 'Ears', NULL, NULL),
	(2, 'Face', NULL, NULL),
	(3, 'Eyes', NULL, NULL),
	(4, 'Head', NULL, NULL),
	(5, 'Mouth', NULL, NULL),
	(6, 'Nose', NULL, NULL),
	(7, 'Scalp', NULL, NULL),
	(8, 'Fore Head', NULL, NULL),
	(9, 'Right Eye', NULL, 3),
	(10, 'Left Eye', NULL, 3),
	(11, 'Right Ear', NULL, 1),
	(12, 'Left Ear', NULL, 1),
	(13, 'Jaws', NULL, NULL),
	(14, 'Chin', NULL, NULL),
	(15, 'Right Face', NULL, 2),
	(16, 'Left Face', NULL, 2),
	(18, 'Throat', NULL, NULL),
	(19, 'Neck', NULL, NULL),
	(20, 'Neck(Front)', NULL, NULL),
	(21, 'Chest', NULL, NULL),
	(22, 'Left Chest', NULL, 21),
	(23, 'Right Chest', NULL, 21);
/*!40000 ALTER TABLE `body_location` ENABLE KEYS */;


-- Dumping structure for table patient-portal.communication
CREATE TABLE IF NOT EXISTS `communication` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table patient-portal.communication: ~4 rows (approximately)
/*!40000 ALTER TABLE `communication` DISABLE KEYS */;
INSERT INTO `communication` (`id`, `value`, `label`) VALUES
	(1, 'Phone', 'Home Phone'),
	(2, 'Work', 'Work Phone'),
	(3, 'Cell', 'Cell Phone'),
	(4, 'Snail', 'Snail Mail');
/*!40000 ALTER TABLE `communication` ENABLE KEYS */;


-- Dumping structure for table patient-portal.country
CREATE TABLE IF NOT EXISTS `country` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table patient-portal.country: ~11 rows (approximately)
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` (`id`, `value`, `label`) VALUES
	(1, 'chinese', 'Chinese'),
	(2, 'english', 'English'),
	(3, 'french', 'French'),
	(4, 'Italian', 'Italian'),
	(5, 'Japanese', 'Japanese'),
	(6, 'Portuguese', 'Portuguese'),
	(7, 'Russian', 'Russian'),
	(8, 'Spanish', 'Spanish'),
	(9, 'Unknown', 'Unknown'),
	(10, 'Other', 'Other'),
	(11, 'declined', 'Declined to state');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;


-- Dumping structure for table patient-portal.degree_confered
CREATE TABLE IF NOT EXISTS `degree_confered` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table patient-portal.degree_confered: ~3 rows (approximately)
/*!40000 ALTER TABLE `degree_confered` DISABLE KEYS */;
INSERT INTO `degree_confered` (`id`, `value`, `label`) VALUES
	(1, 'eng', 'eng'),
	(2, 'mca', 'mca'),
	(3, 'msc', 'msc');
/*!40000 ALTER TABLE `degree_confered` ENABLE KEYS */;


-- Dumping structure for table patient-portal.doctors
CREATE TABLE IF NOT EXISTS `doctors` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table patient-portal.doctors: ~4 rows (approximately)
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` (`id`, `firstname`, `lastname`, `username`, `code`) VALUES
	(1, 'Jagbir', 'Singh', 'Dr.Jagbir', 'D001'),
	(2, 'Dhiraj', 'Bankar', 'Dr.Dhiraj', 'D002'),
	(3, 'Pankaj', 'Muneshwar', 'Dr.Pankaj', 'D003'),
	(4, 'Jaydon', 'Brist', 'Dr.Jaydon', 'D004');
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;


-- Dumping structure for table patient-portal.education
CREATE TABLE IF NOT EXISTS `education` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table patient-portal.education: ~3 rows (approximately)
/*!40000 ALTER TABLE `education` DISABLE KEYS */;
INSERT INTO `education` (`id`, `value`, `label`) VALUES
	(1, 'U.G.', 'UUnder Gradu'),
	(2, 'Bachlor', 'Graduate'),
	(3, 'P.G.', 'Post Grad.');
/*!40000 ALTER TABLE `education` ENABLE KEYS */;


-- Dumping structure for table patient-portal.epsdt_services
CREATE TABLE IF NOT EXISTS `epsdt_services` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table patient-portal.epsdt_services: ~4 rows (approximately)
/*!40000 ALTER TABLE `epsdt_services` DISABLE KEYS */;
INSERT INTO `epsdt_services` (`id`, `value`, `label`) VALUES
	(1, '1', '1 - Children'),
	(2, '2', '2 - Family Planning'),
	(3, '3', '3 - Children / Family Planning'),
	(4, '4', '4 - Pregnancy');
/*!40000 ALTER TABLE `epsdt_services` ENABLE KEYS */;


-- Dumping structure for table patient-portal.ethnicities
CREATE TABLE IF NOT EXISTS `ethnicities` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table patient-portal.ethnicities: ~4 rows (approximately)
/*!40000 ALTER TABLE `ethnicities` DISABLE KEYS */;
INSERT INTO `ethnicities` (`id`, `value`, `label`) VALUES
	(1, 'hispanic', 'Hispanic or Latino'),
	(2, 'not_hispanic', 'Not Hispanic or Latino'),
	(3, 'unknown', 'Unknown'),
	(4, 'other', 'other');
/*!40000 ALTER TABLE `ethnicities` ENABLE KEYS */;


-- Dumping structure for table patient-portal.gender
CREATE TABLE IF NOT EXISTS `gender` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table patient-portal.gender: ~3 rows (approximately)
/*!40000 ALTER TABLE `gender` DISABLE KEYS */;
INSERT INTO `gender` (`id`, `value`, `label`) VALUES
	(1, 'Male', 'Male'),
	(2, 'Female', 'Female'),
	(3, 'Other', 'Other');
/*!40000 ALTER TABLE `gender` ENABLE KEYS */;


-- Dumping structure for table patient-portal.home_heating
CREATE TABLE IF NOT EXISTS `home_heating` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table patient-portal.home_heating: ~3 rows (approximately)
/*!40000 ALTER TABLE `home_heating` DISABLE KEYS */;
INSERT INTO `home_heating` (`id`, `value`, `label`) VALUES
	(1, 'coal', 'coal'),
	(2, 'gas', 'gas'),
	(3, 'oil', 'oil');
/*!40000 ALTER TABLE `home_heating` ENABLE KEYS */;


-- Dumping structure for table patient-portal.languages
CREATE TABLE IF NOT EXISTS `languages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table patient-portal.languages: ~3 rows (approximately)
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` (`id`, `value`, `label`) VALUES
	(1, 'EN', 'English'),
	(2, 'ES', 'Bilingual Spanish/English'),
	(3, 'FR', 'Bilingual French/English');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;


-- Dumping structure for table patient-portal.marital_status
CREATE TABLE IF NOT EXISTS `marital_status` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table patient-portal.marital_status: ~5 rows (approximately)
/*!40000 ALTER TABLE `marital_status` DISABLE KEYS */;
INSERT INTO `marital_status` (`id`, `value`, `label`) VALUES
	(1, 'Single', 'Single'),
	(2, 'Married', 'Married'),
	(3, 'Widowed', 'Widowed'),
	(4, 'Divorce', 'Divorce'),
	(5, 'Other', 'Other');
/*!40000 ALTER TABLE `marital_status` ENABLE KEYS */;


-- Dumping structure for table patient-portal.occupation
CREATE TABLE IF NOT EXISTS `occupation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table patient-portal.occupation: ~3 rows (approximately)
/*!40000 ALTER TABLE `occupation` DISABLE KEYS */;
INSERT INTO `occupation` (`id`, `value`, `label`) VALUES
	(1, 'politics', 'politics'),
	(2, 'business', 'business'),
	(3, 'Farmer', 'Farmer');
/*!40000 ALTER TABLE `occupation` ENABLE KEYS */;


-- Dumping structure for table patient-portal.occupational_hazards
CREATE TABLE IF NOT EXISTS `occupational_hazards` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table patient-portal.occupational_hazards: ~3 rows (approximately)
/*!40000 ALTER TABLE `occupational_hazards` DISABLE KEYS */;
INSERT INTO `occupational_hazards` (`id`, `value`, `label`) VALUES
	(1, 'ddd', 'ddd'),
	(2, 'hhh', 'hhh'),
	(3, 'sss', 'sss');
/*!40000 ALTER TABLE `occupational_hazards` ENABLE KEYS */;


-- Dumping structure for table patient-portal.pain_area
CREATE TABLE IF NOT EXISTS `pain_area` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `body_location_id` bigint(20) NOT NULL,
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_pain_area_body_location_2` (`body_location_id`),
  CONSTRAINT `fk_pain_area_body_location_2` FOREIGN KEY (`body_location_id`) REFERENCES `body_location` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table patient-portal.pain_area: ~110 rows (approximately)
/*!40000 ALTER TABLE `pain_area` DISABLE KEYS */;
INSERT INTO `pain_area` (`id`, `body_location_id`, `description`) VALUES
	(1, 1, 'Bleeding from ear'),
	(2, 1, 'Loss if hearing'),
	(3, 1, 'Ear ache'),
	(4, 1, 'Itching'),
	(5, 1, 'Ringing in ears'),
	(6, 1, 'Pain to touch'),
	(7, 1, 'Skin redness'),
	(8, 1, 'Excessive wax'),
	(9, 1, 'Hearing aid'),
	(10, 1, 'Pressure in ear'),
	(11, 1, 'Loss of balance'),
	(12, 1, 'Blast related ear injury'),
	(13, 1, 'Ear infection'),
	(14, 1, 'Frost bite'),
	(15, 3, 'Black Eye(s)'),
	(16, 3, 'Tearing in eye(s)'),
	(17, 3, 'Poked in eye(s)'),
	(18, 3, 'Brusing in eye(s)'),
	(19, 3, 'Black under eye lid'),
	(20, 3, 'Eye Blast injury'),
	(21, 3, 'Chemicals in eye(s)'),
	(22, 3, 'Hyphema'),
	(23, 3, 'Loss of Peripheral Vision'),
	(24, 3, 'Corneal abrasions'),
	(25, 3, 'Eyelid lacerations'),
	(26, 3, 'Fractures'),
	(27, 3, 'Sensitive to light'),
	(28, 3, 'Floating spots'),
	(29, 3, 'Pink eye(s)'),
	(30, 3, 'Swelling of eye(s)'),
	(31, 3, 'Glaucoma'),
	(32, 3, 'Blurry Vision'),
	(33, 3, 'Blindness'),
	(34, 3, 'Cloudy Vision'),
	(35, 3, 'Pain in eye(s)'),
	(36, 3, 'Protruding eye(s)'),
	(37, 3, 'Dry Eyes'),
	(38, 3, 'Decreased night vision'),
	(39, 3, 'Blood shot eyes'),
	(40, 3, 'Double Vision'),
	(41, 3, 'Itchy eye(s)'),
	(42, 3, 'Watery eye(s)'),
	(43, 3, 'Cross eye(s)'),
	(44, 3, 'Laze eye(s)'),
	(45, 4, 'Skull Fracture'),
	(46, 4, 'Concussion'),
	(47, 4, 'Blunt Force Trauma'),
	(48, 4, 'Bleeding'),
	(49, 4, 'Apathy'),
	(50, 4, 'Coma'),
	(51, 4, 'Confusion'),
	(52, 4, 'Anxiety'),
	(53, 4, 'Hair loss'),
	(54, 4, 'Headache'),
	(55, 4, 'Impaired vision'),
	(56, 4, 'Forgetfulness'),
	(57, 4, 'Itching'),
	(58, 4, 'Memory loss'),
	(59, 4, 'Mood swings'),
	(60, 4, 'Burn'),
	(71, 4, 'Swelling'),
	(72, 4, 'Depression'),
	(73, 4, 'Blackouts'),
	(74, 4, 'Contusion'),
	(75, 4, 'Brain Tumors'),
	(76, 4, 'Seizures'),
	(77, 4, 'Autism'),
	(78, 4, 'Nausea'),
	(79, 4, 'Laceration'),
	(80, 4, 'Closed Head injury '),
	(81, 4, 'Dizziness'),
	(82, 4, 'Fever'),
	(83, 4, 'Abrasion'),
	(84, 4, 'Amnesia'),
	(85, 5, 'Bloody lip'),
	(86, 5, 'Broken teeth'),
	(87, 5, 'Bite tongue'),
	(88, 5, 'Chapped lips'),
	(89, 5, 'Cracked lips'),
	(90, 5, 'Bleeding gums'),
	(91, 5, 'Cough'),
	(92, 5, 'Difficulty swallowing'),
	(93, 5, 'Coated tongue'),
	(94, 5, 'Bad breath'),
	(95, 5, 'White patch inside of mouth'),
	(96, 5, 'No saliva'),
	(97, 5, 'Drooling'),
	(98, 5, 'Hit in mouth'),
	(99, 5, 'Tooth ache'),
	(100, 5, 'Cold sores'),
	(101, 5, 'Cut to inner cheek'),
	(102, 5, 'Grinding of teeth'),
	(103, 5, 'Tongue piercing'),
	(104, 5, 'Laceration roof of the mouth'),
	(105, 6, 'Bloody nose'),
	(106, 6, 'Broken nose'),
	(107, 6, 'Swelling of nose'),
	(108, 6, 'Runny nose'),
	(109, 6, 'Sinus Pain'),
	(110, 6, 'Cold/Flu'),
	(111, 6, 'Sneezing'),
	(112, 6, 'Decreased smelling'),
	(113, 6, 'Discoloration'),
	(114, 6, 'itching'),
	(115, 6, 'Difficulty breathing thru nose'),
	(116, 6, 'Lump on nose'),
	(117, 6, 'Strange smells'),
	(118, 6, 'Pain'),
	(119, 6, 'Fracture nose'),
	(120, 6, 'Hay Fever');
/*!40000 ALTER TABLE `pain_area` ENABLE KEYS */;


-- Dumping structure for table patient-portal.patient
CREATE TABLE IF NOT EXISTS `patient` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `patient_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `is_temp` tinyint(1) DEFAULT '0',
  `patient_password` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table patient-portal.patient: ~2 rows (approximately)
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` (`id`, `firstname`, `lastname`, `patient_id`, `is_temp`, `patient_password`) VALUES
	(1, 'Pankaj', 'Muneshwar', 'P001', 0, 'asd123'),
	(2, 'Nagesh', 'Dalave', 'P002', 0, 'pass');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;


-- Dumping structure for table patient-portal.payment_modes
CREATE TABLE IF NOT EXISTS `payment_modes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table patient-portal.payment_modes: ~5 rows (approximately)
/*!40000 ALTER TABLE `payment_modes` DISABLE KEYS */;
INSERT INTO `payment_modes` (`id`, `value`, `label`) VALUES
	(1, 'Cash', 'Cash'),
	(2, 'Insurance', 'Insurance'),
	(3, 'Insurance Out of Network', 'Insurance Out of Network'),
	(4, 'Auto Accident', 'Auto Accident'),
	(5, 'Workers Comp', 'Workers Comp');
/*!40000 ALTER TABLE `payment_modes` ENABLE KEYS */;


-- Dumping structure for table patient-portal.prefer_languages
CREATE TABLE IF NOT EXISTS `prefer_languages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table patient-portal.prefer_languages: ~4 rows (approximately)
/*!40000 ALTER TABLE `prefer_languages` DISABLE KEYS */;
INSERT INTO `prefer_languages` (`id`, `value`, `label`) VALUES
	(1, 'chinese', 'Chinese'),
	(2, 'english', 'English'),
	(3, 'french', 'French'),
	(4, 'italian', 'Italian');
/*!40000 ALTER TABLE `prefer_languages` ENABLE KEYS */;


-- Dumping structure for table patient-portal.races
CREATE TABLE IF NOT EXISTS `races` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table patient-portal.races: ~4 rows (approximately)
/*!40000 ALTER TABLE `races` DISABLE KEYS */;
INSERT INTO `races` (`id`, `value`, `label`) VALUES
	(1, 'indian', 'American Indian or Alaska Native'),
	(2, 'asian', 'Asian'),
	(3, 'black', 'Black or African American'),
	(4, 'hawaiian', 'Native Hawaiian or Other Pacific Islander');
/*!40000 ALTER TABLE `races` ENABLE KEYS */;


-- Dumping structure for table patient-portal.relieved_by
CREATE TABLE IF NOT EXISTS `relieved_by` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `body_location_id` bigint(20) NOT NULL,
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_relieved_by_body_location_3` (`body_location_id`),
  CONSTRAINT `fk_relieved_by_body_location_3` FOREIGN KEY (`body_location_id`) REFERENCES `body_location` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table patient-portal.relieved_by: ~26 rows (approximately)
/*!40000 ALTER TABLE `relieved_by` DISABLE KEYS */;
INSERT INTO `relieved_by` (`id`, `body_location_id`, `description`) VALUES
	(1, 1, 'relieved_by 1'),
	(2, 1, 'relieved_by 2'),
	(3, 1, 'relieved_by 3'),
	(4, 1, 'relieved_by 4'),
	(5, 1, 'relieved_by 5'),
	(6, 3, 'relieved_by 1'),
	(7, 3, 'relieved_by 2'),
	(8, 3, 'relieved_by 3'),
	(9, 3, 'relieved_by 4'),
	(10, 4, 'relieved_by 1'),
	(11, 4, 'relieved_by 2'),
	(12, 4, 'relieved_by 3'),
	(13, 4, 'relieved_by 4'),
	(14, 4, 'relieved_by 5'),
	(15, 4, 'relieved_by 6'),
	(16, 5, 'relieved_by 1'),
	(17, 5, 'relieved_by 2'),
	(18, 5, 'relieved_by 3'),
	(19, 5, 'relieved_by 4'),
	(20, 5, 'relieved_by 5'),
	(21, 5, 'relieved_by 6'),
	(22, 6, 'relieved_by 1'),
	(23, 6, 'relieved_by 2'),
	(24, 6, 'relieved_by 3'),
	(25, 6, 'relieved_by 4'),
	(26, 6, 'relieved_by 5');
/*!40000 ALTER TABLE `relieved_by` ENABLE KEYS */;


-- Dumping structure for table patient-portal.religion
CREATE TABLE IF NOT EXISTS `religion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table patient-portal.religion: ~3 rows (approximately)
/*!40000 ALTER TABLE `religion` DISABLE KEYS */;
INSERT INTO `religion` (`id`, `value`, `label`) VALUES
	(1, 'hindu', 'hindu'),
	(2, 'sikh', 'sikh'),
	(3, 'jain', 'jain');
/*!40000 ALTER TABLE `religion` ENABLE KEYS */;


-- Dumping structure for table patient-portal.statuses
CREATE TABLE IF NOT EXISTS `statuses` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table patient-portal.statuses: ~3 rows (approximately)
/*!40000 ALTER TABLE `statuses` DISABLE KEYS */;
INSERT INTO `statuses` (`id`, `value`, `label`) VALUES
	(1, '1', 'Active'),
	(2, '2', 'Inactive'),
	(3, '3', 'Inactive - Deceased');
/*!40000 ALTER TABLE `statuses` ENABLE KEYS */;


-- Dumping structure for table patient-portal.student_status
CREATE TABLE IF NOT EXISTS `student_status` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table patient-portal.student_status: ~4 rows (approximately)
/*!40000 ALTER TABLE `student_status` DISABLE KEYS */;
INSERT INTO `student_status` (`id`, `value`, `label`) VALUES
	(1, 'E', 'Employed'),
	(2, 'F', 'Full-time student'),
	(3, 'N', 'Not a Student'),
	(4, 'P', 'Part-time Student');
/*!40000 ALTER TABLE `student_status` ENABLE KEYS */;


-- Dumping structure for table patient-portal.visit_type
CREATE TABLE IF NOT EXISTS `visit_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table patient-portal.visit_type: ~4 rows (approximately)
/*!40000 ALTER TABLE `visit_type` DISABLE KEYS */;
INSERT INTO `visit_type` (`id`, `value`, `label`) VALUES
	(1, 'Followup', 'Followup Visit'),
	(2, 'Urgent', 'Urgent Visit'),
	(3, 'Wellness', 'Wellness Visit'),
	(4, 'New', 'New Patient');
/*!40000 ALTER TABLE `visit_type` ENABLE KEYS */;


-- Dumping structure for table patient-portal.when_this_happen
CREATE TABLE IF NOT EXISTS `when_this_happen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `body_location_id` bigint(20) NOT NULL,
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_when_this_happen_body_locat_4` (`body_location_id`),
  CONSTRAINT `fk_when_this_happen_body_locat_4` FOREIGN KEY (`body_location_id`) REFERENCES `body_location` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table patient-portal.when_this_happen: ~26 rows (approximately)
/*!40000 ALTER TABLE `when_this_happen` DISABLE KEYS */;
INSERT INTO `when_this_happen` (`id`, `body_location_id`, `description`) VALUES
	(1, 1, 'when_this_happen 1'),
	(2, 1, 'when_this_happen 2'),
	(3, 1, 'when_this_happen 3'),
	(4, 1, 'when_this_happen 4'),
	(5, 1, 'when_this_happen 5'),
	(6, 3, 'when_this_happen 1'),
	(7, 3, 'when_this_happen 2'),
	(8, 3, 'when_this_happen 3'),
	(9, 3, 'when_this_happen 4'),
	(10, 4, 'when_this_happen 1'),
	(11, 4, 'when_this_happen 2'),
	(12, 4, 'when_this_happen 3'),
	(13, 4, 'when_this_happen 4'),
	(14, 4, 'when_this_happen 5'),
	(15, 4, 'when_this_happen 6'),
	(16, 5, 'when_this_happen 1'),
	(17, 5, 'when_this_happen 2'),
	(18, 5, 'when_this_happen 3'),
	(19, 5, 'when_this_happen 4'),
	(20, 5, 'when_this_happen 5'),
	(21, 5, 'when_this_happen 6'),
	(22, 6, 'when_this_happen 1'),
	(23, 6, 'when_this_happen 2'),
	(24, 6, 'when_this_happen 3'),
	(25, 6, 'when_this_happen 4'),
	(26, 6, 'when_this_happen 5');
/*!40000 ALTER TABLE `when_this_happen` ENABLE KEYS */;


-- Dumping structure for table patient-portal.worsed_by
CREATE TABLE IF NOT EXISTS `worsed_by` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `body_location_id` bigint(20) NOT NULL,
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_worsed_by_body_location_5` (`body_location_id`),
  CONSTRAINT `fk_worsed_by_body_location_5` FOREIGN KEY (`body_location_id`) REFERENCES `body_location` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table patient-portal.worsed_by: ~26 rows (approximately)
/*!40000 ALTER TABLE `worsed_by` DISABLE KEYS */;
INSERT INTO `worsed_by` (`id`, `body_location_id`, `description`) VALUES
	(1, 1, 'worsed_by 1'),
	(2, 1, 'worsed_by 2'),
	(3, 1, 'worsed_by 3'),
	(4, 1, 'worsed_by 4'),
	(5, 1, 'worsed_by 5'),
	(6, 3, 'worsed_by 1'),
	(7, 3, 'worsed_by 2'),
	(8, 3, 'worsed_by 3'),
	(9, 3, 'worsed_by 4'),
	(10, 4, 'worsed_by 1'),
	(11, 4, 'worsed_by 2'),
	(12, 4, 'worsed_by 3'),
	(13, 4, 'worsed_by 4'),
	(14, 4, 'worsed_by 5'),
	(15, 4, 'worsed_by 6'),
	(16, 5, 'worsed_by 1'),
	(17, 5, 'worsed_by 2'),
	(18, 5, 'worsed_by 3'),
	(19, 5, 'worsed_by 4'),
	(20, 5, 'worsed_by 5'),
	(21, 5, 'worsed_by 6'),
	(22, 6, 'worsed_by 1'),
	(23, 6, 'worsed_by 2'),
	(24, 6, 'worsed_by 3'),
	(25, 6, 'worsed_by 4'),
	(26, 6, 'worsed_by 5');
/*!40000 ALTER TABLE `worsed_by` ENABLE KEYS */;


-- Dumping structure for table patient-portal.yes_nos
CREATE TABLE IF NOT EXISTS `yes_nos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table patient-portal.yes_nos: ~2 rows (approximately)
/*!40000 ALTER TABLE `yes_nos` DISABLE KEYS */;
INSERT INTO `yes_nos` (`id`, `value`, `label`) VALUES
	(1, 'Y', 'Yes'),
	(2, 'N', 'No');
/*!40000 ALTER TABLE `yes_nos` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
