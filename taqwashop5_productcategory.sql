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
-- Table structure for table `productcategory`
--

DROP TABLE IF EXISTS `productcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productcategory` (
  `categoryID` int NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `parentCategoryID` int DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(20) DEFAULT 'Active',
  `imageURL` varchar(255) DEFAULT NULL,
  `displayOrder` int DEFAULT NULL,
  `taxRate` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`categoryID`),
  KEY `parentCategoryID` (`parentCategoryID`),
  CONSTRAINT `productcategory_ibfk_1` FOREIGN KEY (`parentCategoryID`) REFERENCES `productcategory` (`categoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productcategory`
--

LOCK TABLES `productcategory` WRITE;
/*!40000 ALTER TABLE `productcategory` DISABLE KEYS */;
INSERT INTO `productcategory` VALUES (1,'Dairy Products','Milk, cheese, yogurt and other dairy items',NULL,'2025-08-26 18:17:46','2025-08-26 18:17:46','Active',NULL,NULL,5.00),(2,'Bakery Items','Bread, cakes, pastries and baked goods',NULL,'2025-08-26 18:17:46','2025-08-26 18:17:46','Active',NULL,NULL,5.00),(3,'Fresh Fruits','Seasonal and imported fruits',NULL,'2025-08-26 18:17:46','2025-08-26 18:17:46','Active',NULL,NULL,0.00),(4,'Beverages','Juices, soft drinks, water',NULL,'2025-08-26 18:17:46','2025-08-26 18:17:46','Active',NULL,NULL,10.00),(5,'Breakfast Cereals','Cereals, oats, breakfast items',NULL,'2025-08-26 18:17:46','2025-08-26 18:17:46','Active',NULL,NULL,5.00),(6,'Milk','Various types of milk',1,'2025-08-26 18:17:46','2025-08-26 18:17:46','Active',NULL,NULL,5.00),(7,'Cheese','Different cheese varieties',1,'2025-08-26 18:17:46','2025-08-26 18:17:46','Active',NULL,NULL,5.00),(8,'Yogurt','Various yogurt products',1,'2025-08-26 18:17:46','2025-08-26 18:17:46','Active',NULL,NULL,5.00),(9,'Bread','Different types of bread',2,'2025-08-26 18:17:46','2025-08-26 18:17:46','Active',NULL,NULL,5.00),(10,'Cakes','Various cakes and pastries',2,'2025-08-26 18:17:46','2025-08-26 18:17:46','Active',NULL,NULL,5.00);
/*!40000 ALTER TABLE `productcategory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-02 11:29:03
