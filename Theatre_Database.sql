-- MySQL dump 10.16  Distrib 10.1.35-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: theatre
-- ------------------------------------------------------
-- Server version	10.1.35-MariaDB

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
-- Table structure for table `viewer`
--

DROP TABLE IF EXISTS `viewer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `viewer` (
  `SSN` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `BirthYear` year(4) DEFAULT NULL,
  `fav_movie` varchar(20) DEFAULT NULL,
  `Gender` char(1) DEFAULT NULL,
  PRIMARY KEY (`SSN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viewer`
--

LOCK TABLES `viewer` WRITE;
/*!40000 ALTER TABLE `viewer` DISABLE KEYS */;
INSERT INTO `viewer` VALUES (96986805,'Chesley',1952,'Forrest Gump','F'),(222066861,'Vella',1955,'Terminator: Dark Fate','F'),(304013933,'Keaton',1980,'Titanic','M'),(327562676,'Graham',1984,'Titanic','F'),(332648695,'Jerrell',1984,'Slumdog Millionaire','M'),(369662021,'Danyka',1945,'Cabaret','F'),(521848178,'Sheldon',1952,'Cabaret','M'),(542861762,'Sherwood',1980,'Shakespeare in Love','M'),(574545373,'Russel',1970,'Forrest Gump','M'),(677032327,'Ena',1981,'Dances with Wolves','F'),(699019648,'Bella',1960,'Cabaret','F');
/*!40000 ALTER TABLE `viewer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie` (
  `movie_name` varchar(20) NOT NULL,
  `genre` varchar(15) DEFAULT NULL,
  `Country` varchar(15) DEFAULT NULL,
   PRIMARY KEY (`movie_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES ('Out of Africa','drama','USA'),('Slumdog Millionaire','drama','USA'),('Cabaret','musical drama','USA'),('Forrest Gump','drama romance','USA'),('Dances with Wolves','western','USA'),('Shakespeare in Love','history','USA'),('Terminator: Dark Fate','action','USA'),('Titanic','romance','USA'),('Terminator 2','action','USA'),('The Revenant','western','USA');
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `likes` (
  `SSN` int(11) NOT NULL,
  `movie` varchar(20) NOT NULL,
  PRIMARY KEY (`SSN`,`movie`),
  KEY `movie_idx` (`movie`),
  CONSTRAINT `SSN` FOREIGN KEY (`SSN`) REFERENCES `viewer` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `movie` FOREIGN KEY (`movie`) REFERENCES `movie` (`movie_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (96986805,'Forrest Gump'),(222066861,'Terminator: Dark Fate'),(304013933,'Slumdog Millionaire'),(304013933,'Dances with Wolves'),(304013933,'Shakespeare in Love'),(332648695,'Slumdog Millionaire'),(332648695,'Cabaret'),(369662021,'Terminator 2'),(542861762,'Shakespeare in Love'),(574545373,'Titanic');
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owner`
--

DROP TABLE IF EXISTS `owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owner` (
  `SSN` int(11) NOT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `Address` varchar(30) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`SSN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner`
--

LOCK TABLES `owner` WRITE;
/*!40000 ALTER TABLE `owner` DISABLE KEYS */;
INSERT INTO `owner` VALUES (221349364,'Kiara McCullough','South Odessa','Johnston Str aptC 79','134-552-7871'),(221421823,'Norberto Wiegand','Gilbertfort','200 Oak crest dr aptD','729.755.0144'),(275864176,'Thad Wilderman','Port Alizemouth','1100 Raybern Dr 481','1-220-820-4161'),(420320544,'Robinson Baumbach','Port Alizemouth','1100 Raybern Dr 882','1-502-956-7294'),(507303584,'Rosalia Heaney','West Monicastad','1100 Raybern Dr 708','979-133-3774'),(511306765,'Fabian Pagac','North Jaidatown','110 E Martial Ave 901','945-292-6553'),(523232050,'Lubber','Port Alizemouth','Johnston Str aptC 400','128-668-7424'),(601528621,'Gloria Fritsch','East Marcelino','110 E Martial Ave 469','1-771-872-4409'),(608524482,'Parker Considine','resrowsberg','111 Banister C','326.660.9581'),(650582627,'Agustina Hettinger','East Roman','411 Dulles Dr','942-765-6640');
/*!40000 ALTER TABLE `owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theatre`
--

DROP TABLE IF EXISTS `theatre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `theatre` (
  `theatre_name` varchar(25) NOT NULL,
  `city` varchar(20) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `owner_ssn` int(11) DEFAULT NULL,
  PRIMARY KEY (`theatre_name`),
  KEY `owner_ssn_idx` (`owner_ssn`),
  CONSTRAINT `owner_ssn` FOREIGN KEY (`owner_ssn`) REFERENCES `owner` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theatre`
--

LOCK TABLES `theatre` WRITE;
/*!40000 ALTER TABLE `theatre` DISABLE KEYS */;
INSERT INTO `theatre` VALUES ('Alamo Drafthouse','Miami','134-552-7871',221349364),('The castro','Houston','220-820-4161',275864176),('The Senator','Houston','128-668-7424',523232050),('Film Forum','Boston','945-292-6553',511306765),('The New Beverly','Los Angeles','128-668-7424',523232050),('The Grand Theatre','Lafayette','942-765-6640',650582627);
/*!40000 ALTER TABLE `theatre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shows`
--

DROP TABLE IF EXISTS `shows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shows` (
  `theatre` varchar(25) NOT NULL,
  `movies` varchar(20) NOT NULL,
  PRIMARY KEY (`theatre`,`movies`),
  KEY `movie_idx` (`movies`),
  CONSTRAINT `theatre` FOREIGN KEY (`theatre`) REFERENCES `theatre` (`theatre_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `movies` FOREIGN KEY (`movies`) REFERENCES `movie` (`movie_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shows`
--

LOCK TABLES `shows` WRITE;
/*!40000 ALTER TABLE `shows` DISABLE KEYS */;
INSERT INTO `shows` VALUES ('Alamo Drafthouse','Slumdog Millionaire'),('Alamo Drafthouse','Forrest Gump'),('Alamo Drafthouse','Terminator: Dark Fate'),('Alamo Drafthouse','Heineken'),('Film Forum','Joker'),('The New Beverly','Forrest Gump'),('The Grand Theatre','Titanic'),('Smallville','Cabaret'),('The Senator','Forrest Gump'),('The Senator','Dances with Wolves'),('The Senator','Shakespeare in Love');
/*!40000 ALTER TABLE `shows` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-19 13:19:29
