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
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `saleID` int NOT NULL AUTO_INCREMENT,
  `customerID` int DEFAULT NULL,
  `saleDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `totalAmount` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) DEFAULT '0.00',
  `tax` decimal(10,2) DEFAULT '0.00',
  `finalAmount` decimal(10,2) NOT NULL,
  `paymentStatus` enum('PAID','PENDING','PARTIAL') DEFAULT 'PENDING',
  `paymentMethod` enum('Cash','Card','Bank Transfer','Credit') DEFAULT 'Cash',
  PRIMARY KEY (`saleID`),
  KEY `customerID` (`customerID`),
  CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customers` (`customerID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (1,1,'2025-09-02 11:18:21',2000.00,100.00,50.00,1950.00,'PAID','Cash'),(2,2,'2025-09-02 11:18:21',5000.00,250.00,125.00,4875.00,'PAID','Card'),(3,3,'2025-09-02 11:18:21',1500.00,0.00,75.00,1575.00,'PENDING','Cash'),(4,4,'2025-09-02 11:18:21',3000.00,150.00,90.00,2940.00,'PAID','Bank Transfer'),(5,5,'2025-09-02 11:18:21',220.00,0.00,11.00,231.00,'PAID','Cash'),(6,6,'2025-09-02 11:18:21',1200.00,60.00,36.00,1176.00,'PARTIAL','Credit'),(7,7,'2025-09-02 11:18:21',3500.00,175.00,105.00,3430.00,'PAID','Card'),(8,8,'2025-09-02 11:18:21',500.00,0.00,25.00,525.00,'PAID','Cash'),(9,9,'2025-09-02 11:18:21',1950.00,0.00,97.50,2047.50,'PAID','Bank Transfer'),(10,10,'2025-09-02 11:18:21',1035.00,10.00,51.25,1076.25,'PARTIAL','Credit');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-02 11:28:53
