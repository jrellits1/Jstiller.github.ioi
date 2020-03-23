CREATE DATABASE  IF NOT EXISTS `final-js` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `final-js`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: final-js
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.6-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `c_id` int(10) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(45) NOT NULL,
  `c_date` datetime NOT NULL DEFAULT current_timestamp(),
  `c_chair` varchar(45) NOT NULL,
  `c_phone` varchar(45) NOT NULL,
  `c_email` varchar(45) NOT NULL,
  `c_memo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`c_id`),
  UNIQUE KEY `c_id_UNIQUE` (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--
-- ORDER BY:  `c_id`

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'MTH208','2019-12-02 02:17:24','Reed','(740)-284-5277','wreed@franciscan.edu',NULL),(2,'MTH218','2019-12-02 02:17:38','Reed','(740)-284-5277','wreed@franciscan.edu',NULL),(3,'MTH206','2019-12-02 02:17:43','Reed','(740)-284-5277','wreed@franciscan.edu',NULL),(4,'CSC208','2019-12-02 02:17:46','Reed','(740)-284-5277','wreed@franciscan.edu',NULL),(5,'CSC218','2019-12-02 02:17:49','Reed','(740)-284-5277','wreed@franciscan.edu',NULL),(6,'CSC206','2019-12-02 02:17:52','Reed','(740)-284-5277','wreed@franciscan.edu',NULL),(7,'ENG208','2019-12-02 02:18:00','Baugher','(740)-284-5279','jbaugher@franciscan.edu',NULL),(8,'ENG218','2019-12-02 02:18:02','Baugher','(740)-284-5279','jbaugher@franciscan.edu',NULL),(9,'ENG206','2019-12-02 02:18:09','Baugher','(740)-284-5279','jbaugher@franciscan.edu',NULL);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `description`
--

DROP TABLE IF EXISTS `description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `description` (
  `d_id` int(11) NOT NULL AUTO_INCREMENT,
  `d_sku` int(11) NOT NULL,
  `d_name` varchar(45) NOT NULL,
  `d_cost` decimal(10,0) NOT NULL,
  `d_unit` varchar(45) NOT NULL,
  `d_date` datetime NOT NULL DEFAULT current_timestamp(),
  `d_memo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`d_id`),
  UNIQUE KEY `d_id_UNIQUE` (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `description`
--
-- ORDER BY:  `d_id`

LOCK TABLES `description` WRITE;
/*!40000 ALTER TABLE `description` DISABLE KEYS */;
INSERT INTO `description` VALUES (1,1,'Josh Stiller',10,'Hours','2019-12-02 02:28:48','IT Student Lead'),(2,1,'Luke Conrad',10,'Hours','2019-12-02 02:29:02','IT Helpdesk Worker'),(3,1,'Matt Fischer',10,'Hours','2019-12-02 02:29:15','IT Helpdesk Worker'),(4,1,'Tim Mullins',8,'Hours','2019-12-02 02:29:31','IT Student Lead'),(5,1,'Rey Noll',8,'Hours','2019-12-02 02:29:51','IT Helpdesk Worker'),(6,1,'Anna De\'Andrea',13,'Hours','2019-12-02 02:30:11','IT Helpdesk Worker'),(7,1,'Garrett Wolf',9,'Hours','2019-12-02 02:30:35','IT Student Lead'),(8,1,'Jason Tracey',22,'Hours','2019-12-02 02:30:37','Full Time Worker'),(9,1,'Jacob Forrester',28,'Hours','2019-12-02 02:31:21','Full Time Worker'),(10,1,'Justin Motto',10,'Hours','2019-12-02 02:31:32','Full Time Worker'),(11,2,'Ram',39,'Unit','2019-12-02 02:31:55',NULL),(12,2,'Ram',36,'Unit','2019-12-02 02:32:16',NULL),(13,2,'Hard Disk',70,'Unit','2019-12-02 02:32:41',NULL),(14,2,'Hard Disk',100,'Unit','2019-12-02 02:32:57',NULL),(15,2,'External Optical Drive',220,'Unit','2019-12-02 02:33:12',NULL),(16,2,'External Op',310,'Unit','2019-12-02 02:33:26',NULL),(17,2,'Monitor',210,'Unit','2019-12-02 02:33:45',NULL),(18,2,'Monitor',400,'Unit','2019-12-02 02:34:14',NULL),(19,2,'Mouse',80,'Unit','2019-12-02 02:34:36',NULL),(20,2,'Mouse',47,'Unit','2019-12-02 02:34:54',NULL),(21,2,'HDMI Chord',9,'Unit','2019-12-02 02:35:07',NULL),(22,2,'HDMI Chord',32,'Unit','2019-12-02 02:35:21',NULL),(23,2,'Ethernet Cable',8,'Unit','2019-12-02 02:35:35',NULL),(24,2,'Ethernet Cable',3,'Unit','2019-12-02 02:35:54',NULL);
/*!40000 ALTER TABLE `description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice` (
  `i_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_id` int(11) NOT NULL,
  `i_name` varchar(45) NOT NULL,
  `i_date` datetime NOT NULL DEFAULT current_timestamp(),
  `i_status` tinyint(4) NOT NULL DEFAULT 0,
  `i_memo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`i_id`),
  UNIQUE KEY `i_id_UNIQUE` (`i_id`),
  KEY `c_id_idx` (`c_id`),
  CONSTRAINT `c_id` FOREIGN KEY (`c_id`) REFERENCES `customer` (`c_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--
-- ORDER BY:  `i_id`

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES (1,1,'Install Vmware','2019-12-02 02:23:30',0,'Professor Reed'),(2,1,'Install MathCAD','2019-12-02 02:24:15',0,'Dr Burton'),(3,1,'Install Kali Linux','2019-12-02 02:25:00',0,'Professor Reed'),(4,8,'Install MATLAB','2019-12-02 02:25:12',0,'Dr. Greenly'),(5,4,'Install Dreamweaver','2019-12-02 02:25:24',0,'Dr. Dombrowksi'),(6,4,'Replace HDMI Cable','2019-12-02 02:25:36',0,'Dr. Kovach'),(7,9,'Replace Projector','2019-12-02 02:25:49',0,'Professor Baugher'),(8,7,'Update MATLAB','2019-12-02 02:26:08',0,'Dr. Greenly'),(9,6,'Replace HDMI Cable','2019-12-02 02:26:24',0,'Dr. Kovach'),(10,1,'Install Kali Linux','2019-12-02 02:42:52',0,'Professor Reed'),(11,2,'Install Virtual Box','2019-12-02 02:43:14',0,'Professor Reed'),(12,3,'Replace HDMI Cable','2019-12-02 02:43:50',0,'Dr. Burton'),(13,5,'Install Dreamweaver','2019-12-02 02:52:42',0,'Dr. Dombrowski');
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `l_id` int(11) NOT NULL AUTO_INCREMENT,
  `d_id` int(11) NOT NULL,
  `i_id` int(11) NOT NULL,
  `l_units` int(11) NOT NULL,
  `l_date` datetime NOT NULL DEFAULT current_timestamp(),
  `l_memo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`l_id`),
  UNIQUE KEY `l_id_UNIQUE` (`l_id`),
  KEY `i_id_idx` (`i_id`),
  KEY `d_id_idx` (`d_id`),
  CONSTRAINT `d_id` FOREIGN KEY (`d_id`) REFERENCES `description` (`d_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `i_id` FOREIGN KEY (`i_id`) REFERENCES `invoice` (`i_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--
-- ORDER BY:  `l_id`

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (1,1,5,12,'2019-12-02 02:37:37',NULL),(2,9,5,12,'2019-12-02 02:37:49',NULL),(3,22,6,1,'2019-12-02 02:38:23',NULL),(4,2,1,4,'2019-12-02 02:38:42',NULL),(5,2,1,2,'2019-12-02 02:39:01',NULL),(6,3,1,6,'2019-12-02 02:39:16',NULL),(7,5,11,2,'2019-12-02 02:43:26',NULL),(8,10,10,3,'2019-12-02 02:51:30',NULL),(9,8,12,1,'2019-12-02 02:51:46',NULL),(10,22,12,1,'2019-12-02 02:51:56',NULL),(11,22,5,1,'2019-12-02 02:52:23',NULL),(12,1,13,25,'2019-12-02 02:54:12',NULL),(13,4,9,1,'2019-12-02 02:54:26',NULL),(14,21,9,1,'2019-12-02 02:54:54',NULL),(15,9,8,3,'2019-12-02 02:55:12',NULL),(16,3,4,1,'2019-12-02 02:55:22',NULL),(17,9,7,3,'2019-12-02 02:55:30',NULL);
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'final-js'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-03 18:27:42
