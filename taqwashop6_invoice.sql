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
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice` (
  `invoiceID` int NOT NULL AUTO_INCREMENT,
  `orderID` int NOT NULL,
  `invoiceDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dueDate` date DEFAULT NULL,
  `totalAmount` decimal(12,2) NOT NULL,
  `taxAmount` decimal(10,2) DEFAULT '0.00',
  `discountAmount` decimal(10,2) DEFAULT '0.00',
  `status` varchar(20) DEFAULT 'Unpaid',
  `paymentMethod` varchar(20) DEFAULT NULL,
  `paymentDate` datetime DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `createdBy` int NOT NULL,
  PRIMARY KEY (`invoiceID`),
  KEY `orderID` (`orderID`),
  KEY `createdBy` (`createdBy`),
  CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`orderID`) REFERENCES `customerorder` (`orderID`),
  CONSTRAINT `invoice_ibfk_2` FOREIGN KEY (`createdBy`) REFERENCES `staff` (`staffID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES (1,1,'2025-08-20 10:35:00','2025-08-27',650.00,32.50,0.00,'Paid','Cash','2025-08-20 10:35:00',NULL,3),(2,2,'2025-08-19 11:20:00','2025-08-26',300.00,15.00,0.00,'Paid','Card','2025-08-19 11:20:00',NULL,4),(3,3,'2025-08-18 14:25:00','2025-08-25',1500.00,72.50,50.00,'Paid','Mobile Banking','2025-08-18 14:25:00',NULL,3),(4,4,'2025-08-17 09:50:00','2025-08-24',1100.00,55.00,0.00,'Paid','Cash','2025-08-17 09:50:00',NULL,4),(5,5,'2025-08-16 16:35:00','2025-08-23',2500.00,120.00,100.00,'Paid','Card','2025-08-16 16:35:00',NULL,3),(6,6,'2025-08-15 12:15:00','2025-08-22',250.00,12.50,0.00,'Paid','Cash','2025-08-15 12:15:00',NULL,4),(7,7,'2025-08-14 13:30:00','2025-08-21',600.00,30.00,0.00,'Paid','Card','2025-08-14 13:30:00',NULL,3),(8,8,'2025-08-13 15:45:00','2025-08-20',450.00,22.50,0.00,'Paid','Cash','2025-08-13 15:45:00',NULL,4),(9,9,'2025-08-12 10:55:00','2025-08-19',1800.00,85.00,100.00,'Paid','Mobile Banking','2025-08-12 10:55:00',NULL,3),(10,10,'2025-08-11 17:25:00','2025-08-18',3500.00,167.50,150.00,'Paid','Card','2025-08-11 17:25:00',NULL,4);
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
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
