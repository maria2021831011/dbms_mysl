-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: taqwashop1
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
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staffID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `role` varchar(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `joinDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Active',
  `lastLogin` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `managerID` int DEFAULT NULL,
  PRIMARY KEY (`staffID`),
  UNIQUE KEY `username` (`username`),
  KEY `managerID` (`managerID`),
  CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`managerID`) REFERENCES `staff` (`staffID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Hridoy Khan','Manager','hridoy','password123','2025-08-26 10:36:02','hridoy@example.com','01710000003','Active',NULL,'Store manager',NULL),(2,'Borson Ali','Manager','borson','password123','2025-08-26 10:36:02','borson@example.com','01710000004','Active',NULL,'Shift manager',1),(3,'Ria Ahmed','Staff','ria','password123','2025-08-26 10:36:02','ria@example.com','01710000002','Active',NULL,'Cashier',1),(4,'Maria Tasnia','Staff','maria','password123','2025-08-26 10:36:02','maria@example.com','01710000001','Active',NULL,'Shelf assistant',2),(5,'Sadia Noor','Staff','sadia','password123','2025-08-26 10:36:02','sadia@example.com','01710000005','Active',NULL,'Inventory assistant',1),(6,'Fahim Rahman','Staff','fahim','password123','2025-08-26 10:36:02','fahim@example.com','01710000006','Active',NULL,'Billing assistant',2),(7,'Nusrat Jahan','Staff','nusrat','password123','2025-08-26 10:36:02','nusrat@example.com','01710000007','Active',NULL,'Customer support',1),(8,'Tanvir Islam','Staff','tanvir','password123','2025-08-26 10:36:02','tanvir@example.com','01710000008','Active',NULL,'Store assistant',2),(9,'Rumana Akter','Staff','rumana','password123','2025-08-26 10:36:02','rumana@example.com','01710000009','Active',NULL,'Stock management',1),(10,'Sabbir Hossain','Staff','sabbir','password123','2025-08-26 10:36:02','sabbir@example.com','01710000010','Active',NULL,'Cashier',2);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-02 11:29:10
