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
-- Table structure for table `purchaseorder`
--

DROP TABLE IF EXISTS `purchaseorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchaseorder` (
  `orderID` int NOT NULL AUTO_INCREMENT,
  `supplierID` int NOT NULL,
  `orderDate` date NOT NULL,
  `deliveryDate` date NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Pending',
  `totalAmount` decimal(12,2) DEFAULT NULL,
  `createdBy` int NOT NULL,
  `approvedBy` int DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `remarks` varchar(255) DEFAULT NULL,
  `paymentStatus` varchar(20) DEFAULT 'Pending',
  `shippingCost` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`orderID`),
  KEY `supplierID` (`supplierID`),
  KEY `createdBy` (`createdBy`),
  KEY `approvedBy` (`approvedBy`),
  CONSTRAINT `purchaseorder_ibfk_1` FOREIGN KEY (`supplierID`) REFERENCES `supplier` (`supplierID`),
  CONSTRAINT `purchaseorder_ibfk_2` FOREIGN KEY (`createdBy`) REFERENCES `staff` (`staffID`),
  CONSTRAINT `purchaseorder_ibfk_3` FOREIGN KEY (`approvedBy`) REFERENCES `staff` (`staffID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchaseorder`
--

LOCK TABLES `purchaseorder` WRITE;
/*!40000 ALTER TABLE `purchaseorder` DISABLE KEYS */;
INSERT INTO `purchaseorder` VALUES (1,1,'2025-08-01','2025-08-03','Delivered',5500.00,1,2,'2025-08-26 18:41:30','2025-08-26 18:41:30',NULL,'Paid',NULL),(2,2,'2025-08-02','2025-08-04','Delivered',1250.00,2,1,'2025-08-26 18:41:30','2025-08-26 18:41:30',NULL,'Paid',NULL),(3,3,'2025-08-03','2025-08-05','Delivered',9000.00,1,2,'2025-08-26 18:41:30','2025-08-26 18:41:30',NULL,'Paid',NULL),(4,4,'2025-08-04','2025-08-06','Delivered',5400.00,2,1,'2025-08-26 18:41:30','2025-08-26 18:41:30',NULL,'Paid',NULL),(5,5,'2025-08-05','2025-08-07','Delivered',8000.00,1,2,'2025-08-26 18:41:30','2025-08-26 18:41:30',NULL,'Paid',NULL),(6,6,'2025-08-06','2025-08-08','Pending',1600.00,2,NULL,'2025-08-26 18:41:30','2025-08-26 18:41:30',NULL,'Pending',NULL),(7,7,'2025-08-07','2025-08-09','Pending',5400.00,1,NULL,'2025-08-26 18:41:30','2025-08-26 18:41:30',NULL,'Pending',NULL),(8,8,'2025-08-08','2025-08-10','Pending',3150.00,2,NULL,'2025-08-26 18:41:30','2025-08-26 18:41:30',NULL,'Pending',NULL),(9,9,'2025-08-09','2025-08-11','Pending',9750.00,1,NULL,'2025-08-26 18:41:30','2025-08-26 18:41:30',NULL,'Pending',NULL),(10,10,'2025-08-10','2025-08-12','Pending',33000.00,2,NULL,'2025-08-26 18:41:30','2025-08-26 18:41:30',NULL,'Pending',NULL);
/*!40000 ALTER TABLE `purchaseorder` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-02 11:28:56
