-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: taqwashop6
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
-- Table structure for table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotion` (
  `promotionID` int NOT NULL AUTO_INCREMENT,
  `promotionName` varchar(100) NOT NULL,
  `description` text,
  `discountType` varchar(20) NOT NULL,
  `discountValue` decimal(10,2) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `status` varchar(20) DEFAULT 'Active',
  `minPurchaseAmount` decimal(10,2) DEFAULT NULL,
  `maxDiscountAmount` decimal(10,2) DEFAULT NULL,
  `usageLimit` int DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdBy` int NOT NULL,
  PRIMARY KEY (`promotionID`),
  KEY `createdBy` (`createdBy`),
  CONSTRAINT `promotion_ibfk_1` FOREIGN KEY (`createdBy`) REFERENCES `staff` (`staffID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion`
--

LOCK TABLES `promotion` WRITE;
/*!40000 ALTER TABLE `promotion` DISABLE KEYS */;
INSERT INTO `promotion` VALUES (1,'Summer Sale','Summer discount on all items','Percentage',15.00,'2025-06-01','2025-08-31','Active',NULL,NULL,NULL,'2025-08-26 18:41:30',1),(2,'Milk Discount','Special discount on milk products','Percentage',10.00,'2025-08-01','2025-08-31','Active',NULL,NULL,NULL,'2025-08-26 18:41:30',2),(3,'Back to School','School season promotion','Fixed',50.00,'2025-07-15','2025-09-15','Active',NULL,NULL,NULL,'2025-08-26 18:41:30',1),(4,'Weekend Special','Weekend only discount','Percentage',20.00,'2025-08-01','2025-12-31','Active',NULL,NULL,NULL,'2025-08-26 18:41:30',2),(5,'Festive Offer','Festival season discount','Percentage',25.00,'2025-10-01','2025-10-31','Upcoming',NULL,NULL,NULL,'2025-08-26 18:41:30',1),(6,'Clearance Sale','Clearance of old stock','Percentage',30.00,'2025-09-01','2025-09-30','Upcoming',NULL,NULL,NULL,'2025-08-26 18:41:30',2),(7,'Buy One Get One','BOGO on selected items','BOGO',0.00,'2025-08-15','2025-08-30','Active',NULL,NULL,NULL,'2025-08-26 18:41:30',1),(8,'Loyalty Discount','Special for loyal customers','Percentage',15.00,'2025-01-01','2025-12-31','Active',NULL,NULL,NULL,'2025-08-26 18:41:30',2),(9,'New Customer Offer','Discount for new customers','Fixed',100.00,'2025-01-01','2025-12-31','Active',NULL,NULL,NULL,'2025-08-26 18:41:30',1),(10,'Holiday Special','Special holiday promotion','Percentage',20.00,'2025-12-01','2025-12-31','Upcoming',NULL,NULL,NULL,'2025-08-26 18:41:30',2);
/*!40000 ALTER TABLE `promotion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-02 11:28:55
