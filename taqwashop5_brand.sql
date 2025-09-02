-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: taqwashop5
-- ------------------------------------------------------
-- Server version	9.4.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `brandID` int NOT NULL AUTO_INCREMENT,
  `brandName` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `contactInfo` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Active',
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `logoURL` varchar(255) DEFAULT NULL,
  `countryOfOrigin` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`brandID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (1,'Pura','Dairy products brand',NULL,NULL,'Active','2025-08-26 18:17:46','2025-08-26 18:17:46',NULL,'Bangladesh'),(2,'Olympic','Bakery products brand',NULL,NULL,'Active','2025-08-26 18:17:46','2025-08-26 18:17:46',NULL,'Bangladesh'),(3,'Pran','Food and beverage brand',NULL,NULL,'Active','2025-08-26 18:17:46','2025-08-26 18:17:46',NULL,'Bangladesh'),(4,'Kelloggs','Breakfast cereal brand',NULL,NULL,'Active','2025-08-26 18:17:46','2025-08-26 18:17:46',NULL,'USA'),(5,'Igloo','Ice cream brand',NULL,NULL,'Active','2025-08-26 18:17:46','2025-08-26 18:17:46',NULL,'Bangladesh'),(6,'Fresh','Dairy products',NULL,NULL,'Active','2025-08-26 18:17:46','2025-08-26 18:17:46',NULL,'Bangladesh'),(7,'Bread & Butter','Bakery items',NULL,NULL,'Active','2025-08-26 18:17:46','2025-08-26 18:17:46',NULL,'Bangladesh'),(8,'Nature','Fruit products',NULL,NULL,'Active','2025-08-26 18:17:46','2025-08-26 18:17:46',NULL,'Bangladesh'),(9,'Aqua','Beverage brand',NULL,NULL,'Active','2025-08-26 18:17:46','2025-08-26 18:17:46',NULL,'Bangladesh'),(10,'Healthy','Breakfast items',NULL,NULL,'Active','2025-08-26 18:17:46','2025-08-26 18:17:46',NULL,'Bangladesh');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-02 11:29:06
