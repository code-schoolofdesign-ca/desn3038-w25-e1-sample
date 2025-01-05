# ************************************************************
# Sequel Ace SQL dump
# Version 20080
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# Host: gbc.goodcodeclub.com (MySQL 8.0.40-0ubuntu0.20.04.1)
# Database: w25_102345678
# Generation Time: 2025-01-05 19:30:39 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table artists
# ------------------------------------------------------------

DROP TABLE IF EXISTS `artists`;

CREATE TABLE `artists` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `artists` WRITE;
/*!40000 ALTER TABLE `artists` DISABLE KEYS */;

INSERT INTO `artists` (`id`, `name`, `notes`)
VALUES
	(1,'A','B'),
	(2,'C','D');

/*!40000 ALTER TABLE `artists` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table customers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `customers`;

CREATE TABLE `customers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;

INSERT INTO `customers` (`id`, `fname`, `lname`, `phone`)
VALUES
	(1,'John','Doe','6471112222'),
	(2,'Jane','Doe','6471112223');

/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table records
# ------------------------------------------------------------

DROP TABLE IF EXISTS `records`;

CREATE TABLE `records` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `year` varchar(100) DEFAULT NULL,
  `notes` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `records` WRITE;
/*!40000 ALTER TABLE `records` DISABLE KEYS */;

INSERT INTO `records` (`id`, `title`, `year`, `notes`)
VALUES
	(1,'Hello world','2025','Lorem ipsum'),
	(2,'Quick brown fox','2026','Lazy dog');

/*!40000 ALTER TABLE `records` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
