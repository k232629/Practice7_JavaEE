-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: jpadb
-- ------------------------------------------------------
-- Server version	5.7.21

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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `Eid` int(11) NOT NULL AUTO_INCREMENT,
  `Ename` varchar(45) DEFAULT NULL,
  `Salary` double DEFAULT NULL,
  `Deg` varchar(45) DEFAULT NULL,
  `employee_address_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Eid`),
  KEY `fk_employee_address_id_idx` (`employee_address_id`),
  CONSTRAINT `fk_employee_address_id` FOREIGN KEY (`employee_address_id`) REFERENCES `employee_address` (`address_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4447 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1202,'Gopal1',40000,'Technical Manager',NULL),(1203,'Amal',40000,'Technical Manager',NULL),(1205,'Kiran',450000,'Proof Reader',NULL),(1207,'Gopal',40000,'Technical Manager',NULL),(1208,'Satish',400000,'Technical Writer',NULL),(1245,'Gopal',40000,'Technical Manager',NULL),(1247,'Gopal',40000,'Technical Manager',NULL),(2222,'Gopal',40000,'Technical Manager',NULL),(2242,'Gopal',40000,'Technical Manager',NULL),(3242,'Gopal',40000,'Technical Manager',NULL),(3243,'Gopal',40000,'Technical Manager',NULL),(4444,'Gopal',40000,'Technical Manager',NULL),(4445,'Gopal',40000,'Technical Manager',NULL),(4446,'Gopal',40000,'Technical Manager',NULL);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_address`
--

DROP TABLE IF EXISTS `employee_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `address_street` varchar(45) DEFAULT NULL,
  `address_city` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_address`
--

LOCK TABLES `employee_address` WRITE;
/*!40000 ALTER TABLE `employee_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_address` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-02  9:12:59
