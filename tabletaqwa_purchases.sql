-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: tabletaqwa
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
-- Table structure for table `purchases`
--

DROP TABLE IF EXISTS `purchases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchases` (
  `purchaseID` int NOT NULL AUTO_INCREMENT,
  `supplierID` int DEFAULT NULL,
  `purchaseDate` date NOT NULL,
  `discount` decimal(10,2) DEFAULT '0.00',
  `taxAmount` decimal(10,2) DEFAULT '0.00',
  `totalAmount` decimal(10,2) NOT NULL,
  `paymentStatus` enum('PAID','PENDING','PARTIAL') DEFAULT 'PAID',
  PRIMARY KEY (`purchaseID`),
  KEY `supplierID` (`supplierID`),
  CONSTRAINT `purchases_ibfk_1` FOREIGN KEY (`supplierID`) REFERENCES `suppliers` (`supplierID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchases`
--

LOCK TABLES `purchases` WRITE;
/*!40000 ALTER TABLE `purchases` DISABLE KEYS */;
INSERT INTO `purchases` VALUES (1,1,'2025-08-20',0.00,100.00,2100.00,'PAID'),(2,2,'2025-08-21',50.00,75.00,2025.00,'PARTIAL'),(3,3,'2025-08-22',0.00,150.00,1950.00,'PAID'),(4,4,'2025-08-23',30.00,90.00,1860.00,'PAID'),(5,5,'2025-08-24',0.00,20.00,220.00,'PAID'),(6,6,'2025-08-25',0.00,60.00,2760.00,'PENDING'),(7,7,'2025-08-26',25.00,50.00,3025.00,'PAID'),(8,8,'2025-08-27',0.00,75.00,2575.00,'PAID'),(9,9,'2025-08-28',0.00,150.00,1950.00,'PAID'),(10,10,'2025-08-29',10.00,45.00,1035.00,'PARTIAL');
/*!40000 ALTER TABLE `purchases` ENABLE KEYS */;
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
