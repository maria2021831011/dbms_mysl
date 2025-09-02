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
-- Table structure for table `customerorder`
--

DROP TABLE IF EXISTS `customerorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customerorder` (
  `orderID` int NOT NULL AUTO_INCREMENT,
  `customerID` int DEFAULT NULL,
  `orderDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(20) NOT NULL DEFAULT 'Pending',
  `totalAmount` decimal(12,2) NOT NULL,
  `paymentMethod` varchar(20) DEFAULT NULL,
  `paymentStatus` varchar(20) DEFAULT 'Pending',
  `shippingAddress` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `staffID` int NOT NULL,
  `discountAmount` decimal(10,2) DEFAULT '0.00',
  `taxAmount` decimal(10,2) DEFAULT '0.00',
  `finalAmount` decimal(12,2) NOT NULL,
  PRIMARY KEY (`orderID`),
  KEY `customerID` (`customerID`),
  KEY `staffID` (`staffID`),
  CONSTRAINT `customerorder_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`),
  CONSTRAINT `customerorder_ibfk_2` FOREIGN KEY (`staffID`) REFERENCES `staff` (`staffID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerorder`
--

LOCK TABLES `customerorder` WRITE;
/*!40000 ALTER TABLE `customerorder` DISABLE KEYS */;
INSERT INTO `customerorder` VALUES (1,1,'2025-08-20 10:30:00','Completed',650.00,'Cash','Paid',NULL,NULL,3,0.00,32.50,682.50),(2,2,'2025-08-19 11:15:00','Completed',300.00,'Card','Paid',NULL,NULL,4,0.00,15.00,315.00),(3,3,'2025-08-18 14:20:00','Completed',1500.00,'Mobile Banking','Paid',NULL,NULL,3,50.00,72.50,1522.50),(4,4,'2025-08-17 09:45:00','Completed',1100.00,'Cash','Paid',NULL,NULL,4,0.00,55.00,1155.00),(5,5,'2025-08-16 16:30:00','Completed',2500.00,'Card','Paid',NULL,NULL,3,100.00,120.00,2520.00),(6,6,'2025-08-15 12:10:00','Completed',250.00,'Cash','Paid',NULL,NULL,4,0.00,12.50,262.50),(7,7,'2025-08-14 13:25:00','Completed',600.00,'Card','Paid',NULL,NULL,3,0.00,30.00,630.00),(8,8,'2025-08-13 15:40:00','Completed',450.00,'Cash','Paid',NULL,NULL,4,0.00,22.50,472.50),(9,9,'2025-08-12 10:50:00','Completed',1800.00,'Mobile Banking','Paid',NULL,NULL,3,100.00,85.00,1785.00),(10,10,'2025-08-11 17:20:00','Completed',3500.00,'Card','Paid',NULL,NULL,4,150.00,167.50,3517.50);
/*!40000 ALTER TABLE `customerorder` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-02 11:28:58
