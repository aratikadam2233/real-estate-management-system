CREATE DATABASE  IF NOT EXISTS `realestate` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `realestate`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: realestate
-- ------------------------------------------------------
-- Server version	5.7.10-log

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
-- Table structure for table `add_agent`
--

DROP TABLE IF EXISTS `add_agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `add_agent` (
  `A_id` int(11) NOT NULL AUTO_INCREMENT,
  `agentname` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `contact` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`A_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `add_agent`
--

LOCK TABLES `add_agent` WRITE;
/*!40000 ALTER TABLE `add_agent` DISABLE KEYS */;
INSERT INTO `add_agent` VALUES (1,'pranita','pm1234@gmail.com','1234567899'),(2,'pranita','pm1234@gmail.com','1234567899'),(3,'utkarsha','uk@gamil.com','1234567899'),(4,'utkarsha','uk@gamil.com','1234567899'),(5,'Lina','1234@gmail.com','1234567899'),(6,'Lina','1234@gmail.com','1234567899');
/*!40000 ALTER TABLE `add_agent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `add_property`
--

DROP TABLE IF EXISTS `add_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `add_property` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `property_name` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `agentname` varchar(50) DEFAULT NULL,
  `bedroom` varchar(45) DEFAULT NULL,
  `bathroom` varchar(45) DEFAULT NULL,
  `square_footage` varchar(45) DEFAULT NULL,
  `pool` varchar(45) DEFAULT NULL,
  `gym` varchar(45) DEFAULT NULL,
  `security_system` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `zip` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `add_property`
--

LOCK TABLES `add_property` WRITE;
/*!40000 ALTER TABLE `add_property` DISABLE KEYS */;
INSERT INTO `add_property` VALUES (1,'villa','mumbai','400000','nice','villa.jpg','aditi','2','2','2000','1','1','yes','sangli','416313'),(3,'flat','pune','500000','good','flats.jpg','lina','3','2','2000','1','1','1','katraj','411037'),(5,'Residential','pune','7000000','very nice','Residential.jpg','gauri','1','1','30000','1','no','yes','hadapsar','411013'),(6,'Residential','pune','7000000','very nice','Residential.jpg','gauri','1','1','30000','1','no','yes','hadapsar','411013'),(7,'Commercial','pune','7000000','very nice','','gauri','1','1','30000','1','no','yes','hadapsar','411013'),(8,'T','pune','7000000','very nice','TownHouse.jpg','gauri','1','1','30000','1','no','yes','hadapsar','411013');
/*!40000 ALTER TABLE `add_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `add_type`
--

DROP TABLE IF EXISTS `add_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `add_type` (
  `Add_id` int(11) NOT NULL AUTO_INCREMENT,
  `Type_Name` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`Add_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `add_type`
--

LOCK TABLES `add_type` WRITE;
/*!40000 ALTER TABLE `add_type` DISABLE KEYS */;
INSERT INTO `add_type` VALUES (1,'apartment','good','home5.jpg'),(2,'reatill','good','retail8.jpg'),(3,'townhouse','good','town.jpg'),(4,'villa','good','villa.jpg'),(5,'luxury','good','luxury6.jpg'),(6,'townhouse','good','town.jpg'),(7,'flats','good','flats.jpg'),(8,'residential','good','Residential.jpg'),(9,'flat','good','flats.jpg'),(10,'flat','good','flats.jpg'),(11,'townhouse','good','town.jpg'),(12,'flat','good','flats.jpg');
/*!40000 ALTER TABLE `add_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_signup`
--

DROP TABLE IF EXISTS `admin_signup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_signup` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `confirm_password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_signup`
--

LOCK TABLES `admin_signup` WRITE;
/*!40000 ALTER TABLE `admin_signup` DISABLE KEYS */;
INSERT INTO `admin_signup` VALUES (1,'utkarsha',NULL,'uk@gamil.com','181818','181818'),(2,'utkarsha',NULL,'uk@gamil.com','181818','181818'),(3,'utkarsha',NULL,'uk@gamil.com','181818','181818'),(4,'utkarsha',NULL,'uk@gamil.com','181818','181818'),(5,'utkarsha',NULL,'uk@gamil.com','181818','181818'),(6,'utkarsha',NULL,'uk@gamil.com','181818','181818'),(7,'utkarsha',NULL,'uk@gamil.com','181818','181818'),(8,'utkarsha',NULL,'uk@gamil.com','181818','181818'),(9,'utkarsha',NULL,'uk@gamil.com','181818','181818'),(10,'utkarsha',NULL,'uk@gamil.com','181818','181818'),(11,'utkarsha',NULL,'uk@gamil.com','181818','181818'),(12,'utkarsha',NULL,'uk@gamil.com','181818','181818'),(13,'utkarsha',NULL,'uk@gamil.com','181818','181818'),(14,'utkarsha',NULL,'uk@gamil.com','181818','181818'),(15,'utkarsha',NULL,'uk@gamil.com','181818','181818'),(16,'utkarsha',NULL,'uk@gamil.com','181818','181818'),(17,'aditti',NULL,'uk@gamil.com','123','123'),(18,'utkarsha',NULL,'uk@gamil.com','123','123'),(19,'utkarsha',NULL,'uk@gamil.com','123','123'),(20,'utkarsha',NULL,'uk@gamil.com','123','123'),(21,'utkarsha',NULL,'uk@gamil.com','123','123'),(22,'utkarsha',NULL,'uk@gamil.com','123','123'),(23,'utkarsha',NULL,'uk@gamil.com','123','123'),(24,'utkarsha',NULL,'uk@gamil.com','123','123'),(25,'utkarsha',NULL,'uk@gamil.com','123','123'),(26,'utkarsha',NULL,'uk@gamil.com','123','123'),(27,'utkarsha',NULL,'uk@gamil.com','123','123'),(28,'utkarsha',NULL,'uk@gamil.com','123','123'),(29,'utkarsha',NULL,'uk@gamil.com','123','123'),(30,'utkarsha',NULL,'uk@gamil.com','123','123'),(31,'utkarsha',NULL,'uk@gamil.com','123','123'),(32,'utkarsha',NULL,'uk@gamil.com','123','123'),(33,'utkarsha',NULL,'uk@gamil.com','123','123'),(34,'utkarsha',NULL,'uk@gamil.com','123','123'),(35,'utkarsha',NULL,'uk@gamil.com','123','123'),(36,'utkarsha',NULL,'uk@gamil.com','123','123'),(37,'utkarsha',NULL,'uk@gamil.com','123','123'),(38,'utkarsha',NULL,'uk@gamil.com','123','123'),(39,'utkarsha',NULL,'uk@gamil.com','123','123'),(40,'utkarsha',NULL,'uk@gamil.com','123','123'),(41,'utkarsha',NULL,'uk@gamil.com','123','123'),(42,'utkarsha',NULL,'uk@gamil.com','123','123'),(43,'utkarsha',NULL,'uk@gamil.com','123','123'),(44,'utkarsha',NULL,'uk@gamil.com','123','123'),(45,'utkarsha',NULL,'uk@gamil.com','123','123'),(46,'utkarsha',NULL,'uk@gamil.com','123','123'),(47,'utkarsha',NULL,'uk@gamil.com','123','123'),(48,'utkarsha',NULL,'uk@gamil.com','123','123'),(49,'utkarsha',NULL,'uk@gamil.com','123','123'),(50,'utkarsha',NULL,'uk@gamil.com','123','123'),(51,'utkarsha',NULL,'uk@gamil.com','123','123'),(52,'utkarsha',NULL,'uk@gamil.com','123','123'),(53,'utkarsha',NULL,'uk@gamil.com','123','123'),(54,'utkarsha',NULL,'uk@gamil.com','123','123'),(55,'utkarsha',NULL,'uk@gamil.com','123','123'),(56,'utkarsha',NULL,'uk@gamil.com','123','123'),(57,'utkarsha',NULL,'uk@gamil.com','123','123'),(58,'utkarsha',NULL,'uk@gamil.com','123','123'),(59,'utkarsha',NULL,'uk@gamil.com','123','123'),(60,'utkarsha',NULL,'uk@gamil.com','123','123'),(61,'utkarsha',NULL,'uk@gamil.com','123','123'),(62,'utkarsha',NULL,'uk@gamil.com','123','123'),(63,'utkarsha',NULL,'uk@gamil.com','123','123'),(64,'utkarsha',NULL,'uk@gamil.com','123','123');
/*!40000 ALTER TABLE `admin_signup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactus`
--

DROP TABLE IF EXISTS `contactus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contactus` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `message` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactus`
--

LOCK TABLES `contactus` WRITE;
/*!40000 ALTER TABLE `contactus` DISABLE KEYS */;
INSERT INTO `contactus` VALUES (1,'utkarsha','good','hello','uk@gmail.com'),(2,'utkarsha','good','hello','uk@gamil.com'),(3,'utkarsha','good','hello','uk@gamil.com'),(4,'utkarsha','good','hello','uk@gamil.com'),(5,'utkarsha','good','hello','uk@gamil.com'),(6,'utkarsha','good','hello','uk@gamil.com'),(7,'utkarsha','good','hello','uk@gamil.com'),(8,'utkarsha','good','hello','uk@gamil.com'),(9,'utkarsha','good','hello','uk@gamil.com'),(10,'utkarsha','good','hello','uk@gamil.com'),(11,'utkarsha','good','hello','uk@gamil.com'),(12,'utkarsha','property','hello','uk@gamil.com');
/*!40000 ALTER TABLE `contactus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forget_password`
--

DROP TABLE IF EXISTS `forget_password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forget_password` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forget_password`
--

LOCK TABLES `forget_password` WRITE;
/*!40000 ALTER TABLE `forget_password` DISABLE KEYS */;
/*!40000 ALTER TABLE `forget_password` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_booking`
--

DROP TABLE IF EXISTS `my_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `my_booking` (
  `b_id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(50) DEFAULT NULL,
  `emailaddress` varchar(50) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `property` varchar(20) DEFAULT NULL,
  `date` varchar(10) DEFAULT NULL,
  `message` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_booking`
--

LOCK TABLES `my_booking` WRITE;
/*!40000 ALTER TABLE `my_booking` DISABLE KEYS */;
INSERT INTO `my_booking` VALUES (1,'utkarsha','uk@gamil.com','1234567890','villa','6/3/2025','hello'),(2,'aditi','aditi123@gmail.com','4578901234','flat','2/4/2025','very nice'),(3,'pranita','pranita45@gmail.com','1256789023','apartment','3/3/2025','nice'),(4,'aarti','aarti89@gmail.com','6789452356','house','4/5/2025','good'),(5,'shrutika','shrutika15@gmail.com','4567231245','multifamily house','2/3/2025','nice'),(6,'lina','lina12@gmail.com','3490231278','floor house','7/3/2025','very good'),(7,'lina','lina12@gmail.com','3490231278','floor house','7/3/2025','very good'),(8,'lina','lina12@gmail.com','3490231278','floor house','7/3/2025','very good');
/*!40000 ALTER TABLE `my_booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `card_holdername` varchar(100) DEFAULT NULL,
  `card_number` varchar(50) DEFAULT NULL,
  `expiry` varchar(50) DEFAULT NULL,
  `cvv` varchar(50) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,'aditi','1234567','25/4/2025','234567','2000000'),(2,'pranita','123456789123456','10/10/26','123','300000'),(3,'aarti','123456789000000','12/12/26','567','500000'),(4,'pranita','12345678910345','12/6/2026','123','500000'),(5,'aditi','123456789','15/6/26','123','2000000'),(6,'aditi','1111','11','11','2000000'),(7,'gauri','12345678910','2/2/2026','123','3000000'),(8,'gauri','12345678910','2/2/2026','123','3000000');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_form`
--

DROP TABLE IF EXISTS `sales_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales_form` (
  `sales_id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(50) DEFAULT NULL,
  `minimum_price` varchar(10) DEFAULT NULL,
  `BHK` varchar(10) DEFAULT NULL,
  `bedroom` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`sales_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_form`
--

LOCK TABLES `sales_form` WRITE;
/*!40000 ALTER TABLE `sales_form` DISABLE KEYS */;
INSERT INTO `sales_form` VALUES (1,'sangali','5000','2','3'),(2,'sangali','5000','2','3'),(3,'sangali','5000','2','3'),(4,'sangali','5000','2','3');
/*!40000 ALTER TABLE `sales_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_signup`
--

DROP TABLE IF EXISTS `user_signup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_signup` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `confirm_password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_signup`
--

LOCK TABLES `user_signup` WRITE;
/*!40000 ALTER TABLE `user_signup` DISABLE KEYS */;
INSERT INTO `user_signup` VALUES (1,'utkarsha','1234567899','uk@gamil.com','123','123'),(2,'utkarsha','1234567899','uk@gamil.com','123','123'),(3,'utkarsha','1234567899','uk@gamil.com','123','123'),(4,'utkarsha','1234567899','uk@gamil.com','123','123'),(5,'utkarsha','1234567899','uk@gamil.com','123','123'),(6,'utkarsha','1234567899','uk@gamil.com','123','123'),(7,'utkarsha','1234567899','uk@gamil.com','123','123'),(8,'utkarsha','1234567899','uk@gamil.com','123','123'),(9,'utkarsha','1234567899','uk@gamil.com','123','123'),(10,'utkarsha','1234567899','uk@gamil.com','123','123'),(11,'aditi','1234567899','1234@gmail.com','123','1234@gmail.com'),(12,'aditi','1234567899','1234@gmail.com','123','123');
/*!40000 ALTER TABLE `user_signup` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-10 14:42:33
