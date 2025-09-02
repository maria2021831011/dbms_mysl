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
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `paymentID` int NOT NULL AUTO_INCREMENT,
  `invoiceID` int NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `paymentDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(20) NOT NULL,
  `transactionID` varchar(100) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Completed',
  `notes` varchar(255) DEFAULT NULL,
  `processedBy` int NOT NULL,
  PRIMARY KEY (`paymentID`),
  KEY `invoiceID` (`invoiceID`),
  KEY `processedBy` (`processedBy`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`invoiceID`) REFERENCES `invoice` (`invoiceID`),
  CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`processedBy`) REFERENCES `staff` (`staffID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,1,682.50,'2025-08-20 10:35:00','Cash','TXN001','Completed',NULL,3),(2,2,315.00,'2025-08-19 11:20:00','Card','TXN002','Completed',NULL,4),(3,3,1522.50,'2025-08-18 14:25:00','Mobile Banking','TXN003','Completed',NULL,3),(4,4,1155.00,'2025-08-17 09:50:00','Cash','TXN004','Completed',NULL,4),(5,5,2520.00,'2025-08-16 16:35:00','Card','TXN005','Completed',NULL,3),(6,6,262.50,'2025-08-15 12:15:00','Cash','TXN006','Completed',NULL,4),(7,7,630.00,'2025-08-14 13:30:00','Card','TXN007','Completed',NULL,3),(8,8,472.50,'2025-08-13 15:45:00','Cash','TXN008','Completed',NULL,4),(9,9,1785.00,'2025-08-12 10:55:00','Mobile Banking','TXN009','Completed',NULL,3),(10,10,3517.50,'2025-08-11 17:25:00','Card','TXN010','Completed',NULL,4);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-02 11:28:57
