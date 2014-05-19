-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.37 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             8.0.0.4396
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table emr-portal.appointment
CREATE TABLE IF NOT EXISTS `appointment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `start_min` int(11) DEFAULT NULL,
  `end_min` int(11) DEFAULT NULL,
  `appointment_of_id` bigint(20) DEFAULT NULL,
  `appointment_of_type` varchar(255) DEFAULT NULL,
  `appointment_with_id` bigint(20) DEFAULT NULL,
  `appointment_with_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table emr-portal.appointment: ~6 rows (approximately)
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` (`id`, `date`, `month`, `year`, `status`, `notes`, `start_min`, `end_min`, `appointment_of_id`, `appointment_of_type`, `appointment_with_id`, `appointment_with_type`) VALUES
	(1, 1, 4, 2014, 'AVAILABLE', NULL, 0, 30, 1, 'Doctor', 1, 'User'),
	(2, 1, 4, 2014, 'AVAILABLE', NULL, 0, 30, 1, 'Doctor', 1, 'User'),
	(3, 1, 4, 2014, 'AVAILABLE', NULL, 0, 30, 1, 'Doctor', 1, 'User'),
	(4, 1, 4, 2014, 'AVAILABLE', NULL, 60, 90, 1, 'Doctor', 1, 'User'),
	(5, 1, 4, 2014, 'AVAILABLE', NULL, 180, 210, 1, 'Doctor', 1, 'User'),
	(6, 1, 4, 2014, 'AVAILABLE', NULL, 180, 210, 1, 'Doctor', 1, 'User'),
	(7, 1, 4, 2014, 'AVAILABLE', NULL, 180, 210, 1, 'Doctor', 1, 'User'),
	(8, 1, 4, 2014, 'AVAILABLE', NULL, 180, 210, 1, 'Doctor', 1, 'User');
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;


-- Dumping structure for table emr-portal.associated_symptom
CREATE TABLE IF NOT EXISTS `associated_symptom` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `body_location_id` bigint(20) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_associated_symptom_body_loc_1` (`body_location_id`),
  CONSTRAINT `fk_associated_symptom_body_loc_1` FOREIGN KEY (`body_location_id`) REFERENCES `body_location` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

-- Dumping data for table emr-portal.associated_symptom: ~26 rows (approximately)
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


-- Dumping structure for table emr-portal.body_location
CREATE TABLE IF NOT EXISTS `body_location` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `containedin_id` bigint(20) DEFAULT NULL,
  `group_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_body_location_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

-- Dumping data for table emr-portal.body_location: ~22 rows (approximately)
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


-- Dumping structure for table emr-portal.doctors
CREATE TABLE IF NOT EXISTS `doctors` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table emr-portal.doctors: ~0 rows (approximately)
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;


-- Dumping structure for table emr-portal.pain_area
CREATE TABLE IF NOT EXISTS `pain_area` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `body_location_id` bigint(20) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_pain_area_body_location_2` (`body_location_id`),
  CONSTRAINT `fk_pain_area_body_location_2` FOREIGN KEY (`body_location_id`) REFERENCES `body_location` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=latin1;

-- Dumping data for table emr-portal.pain_area: ~110 rows (approximately)
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


-- Dumping structure for table emr-portal.patient
CREATE TABLE IF NOT EXISTS `patient` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table emr-portal.patient: ~0 rows (approximately)
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;


-- Dumping structure for table emr-portal.relieved_by
CREATE TABLE IF NOT EXISTS `relieved_by` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `body_location_id` bigint(20) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_relieved_by_body_location_3` (`body_location_id`),
  CONSTRAINT `fk_relieved_by_body_location_3` FOREIGN KEY (`body_location_id`) REFERENCES `body_location` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

-- Dumping data for table emr-portal.relieved_by: ~26 rows (approximately)
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


-- Dumping structure for table emr-portal.when_this_happen
CREATE TABLE IF NOT EXISTS `when_this_happen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `body_location_id` bigint(20) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_when_this_happen_body_locat_4` (`body_location_id`),
  CONSTRAINT `fk_when_this_happen_body_locat_4` FOREIGN KEY (`body_location_id`) REFERENCES `body_location` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

-- Dumping data for table emr-portal.when_this_happen: ~26 rows (approximately)
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


-- Dumping structure for table emr-portal.worsed_by
CREATE TABLE IF NOT EXISTS `worsed_by` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `body_location_id` bigint(20) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_worsed_by_body_location_5` (`body_location_id`),
  CONSTRAINT `fk_worsed_by_body_location_5` FOREIGN KEY (`body_location_id`) REFERENCES `body_location` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

-- Dumping data for table emr-portal.worsed_by: ~26 rows (approximately)
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
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
