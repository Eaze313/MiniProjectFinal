CREATE DATABASE  IF NOT EXISTS `gcsnacks` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `gcsnacks`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: gcsnacks
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Product` varchar(45) DEFAULT NULL,
  `Category` varchar(45) DEFAULT NULL,
  `Price` decimal(5,2) DEFAULT NULL,
  `Description` varchar(45) DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Snickers',' Bar',1.00,'ipsumLorem ipsum dolor sit amet, conliqua. ','http://2.bp.blogspot.com/_UFzgdFsMQ2o/TEZbFvpvGHI/AAAAAAAAFnU/3Ya6Ok5BqHg/s1600/snickers-bar.jpg'),(2,'Caramel Chews','Caramels',1.50,'ipsumLorem ipsum dolor sit amet, conliqua. ','https://upload.wikimedia.org/wikipedia/commons/0/02/Caramels.jpg'),(3,'3 Musketeers','Bar',1.00,'ipsumLorem ipsum dolor sit amet, conliqua. ','http://www.rakinginthesavings.com/wp-content/uploads/2013/10/target-3-musketeers.png'),(4,'Caramel Hard Candy','Caramels',1.50,'ipsumLorem ipsum dolor sit amet, conliqua. ','https://upload.wikimedia.org/wikipedia/commons/0/02/Caramels.jpg'),(5,'Vegetable Chips','Chips',1.50,'ipsumLorem ipsum dolor sit amet, conliqua. ','http://media.npr.org/assets/img/2012/05/15/chipssweetpotato_wide-f993ce4a958ff4398928806e95a48894acfd57d5-s900-c85.jpg'),(6,'Mike & Ike','Candy',1.00,'ipsumLorem ipsum dolor sit amet, conliqua. ','http://ep.yimg.com/ay/blaircandy/mike-and-ike-20oz-bag-18.jpg'),(7,'Jelly Beans','Candy',1.00,'ipsumLorem ipsum dolor sit amet, conliqua. ','https://cdn.shopify.com/s/files/1/0269/2121/products/Mars_Bar.jpg?v=1383078655'),(8,'Lemonhead','Candy',1.00,'ipsumLorem ipsum dolor sit amet, conliqua. ','https://s-media-cache-ak0.pinimg.com/236x/45/89/4f/45894f6ac82aec24cf5e55e947aa7103.jpg'),(9,'Almond Joy','Bar',1.50,'ipsumLorem ipsum dolor sit amet, conliqua. ','http://farm4.static.flickr.com/3149/2712377877_8ff7a2a5af.jpg'),(10,'Mars','Bar',1.00,'ipsumLorem ipsum dolor sit amet, conliqua. ','https://cdn.shopify.com/s/files/1/0269/2121/products/Mars_Bar.jpg?v=1383078655'),(11,'Baked Chips','Chips',1.50,'ipsumLorem ipsum dolor sit amet, conliqua. ','http://img.foodnetwork.com/FOOD/2012/07/12/HE_baked-potato-chips_s4x3_lead.jpg'),(12,'Tortilla Chips','Chips',1.50,'ipsumLorem ipsum dolor sit amet, conliqua. ','http://assets.simplyrecipes.com/wp-content/uploads/2013/05/homemade-tortilla-chips-horiz-a-800.jpg'),(13,'Barbeque Chips','Chips',1.50,'ipsumLorem ipsum dolor sit amet, conliqua. ','http://4.bp.blogspot.com/_dQw-YGPnkuU/TNfeB_hbslI/AAAAAAAABzI/9maJmJY-E4M/s1600/trader_joes_chips.jpg'),(14,'Brazilion Nuts','Nuts',1.50,'ipsumLorem ipsum dolor sit amet, conliqua. ','http://lorempixel.com/125/125/food/7/cc'),(15,'Cashews','Nuts',2.00,'ipsumLorem ipsum dolor sit amet, conliqua. ','http://lorempixel.com/125/125/food/7/cc'),(16,'Pistachios','Nuts',2.00,'ipsumLorem ipsum dolor sit amet, conliqua. ','http://lorempixel.com/125/125/food/7/cc'),(17,'Toffee','Caramels',1.00,'ipsumLorem ipsum dolor sit amet, conliqua. ','https://upload.wikimedia.org/wikipedia/commons/0/02/Caramels.jpg'),(18,'Salted Caramel Chews','Caramels',3.00,'ipsumLorem ipsum dolor sit amet, conliqua. ','https://upload.wikimedia.org/wikipedia/commons/0/02/Caramels.jpg'),(19,'Caramel Drops','Caramels',1.50,'ipsumLorem ipsum dolor sit amet, conliqua. ','https://upload.wikimedia.org/wikipedia/commons/0/02/Caramels.jpg'),(20,NULL,NULL,NULL,NULL,'');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-09 14:23:56
