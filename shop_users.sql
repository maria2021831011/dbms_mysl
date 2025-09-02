-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: shop
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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userID` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `passwordHash` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `roleID` int NOT NULL,
  `isActive` tinyint(1) DEFAULT '1',
  `lastLogin` datetime DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`userID`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`),
  KEY `roleID` (`roleID`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`roleID`) REFERENCES `roles` (`roleID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','$2y$10$hash1','admin@taqwa.com','01710000001','sylhet, Bangladesh',1,1,'2025-08-27 08:00:00','2025-08-27 08:44:50','2025-08-27 08:44:50'),(2,'manager1','$2y$10$hash2','manager1@taqwa.com','01710000002','sylhet, Bangladesh',2,1,'2025-08-26 09:00:00','2025-08-27 08:44:50','2025-08-27 08:44:50'),(3,'sales1','$2y$10$hash3','sales1@taqwa.com','01710000003','sylhet,  Bangladesh',3,1,'2025-08-26 10:00:00','2025-08-27 08:44:50','2025-08-27 08:44:50'),(4,'account1','$2y$10$hash4','account1@taqwa.com','01710000004','sylhet, Bangladesh',4,1,'2025-08-25 11:00:00','2025-08-27 08:44:50','2025-08-27 08:44:50'),(5,'inventory1','$2y$10$hash5','inventory1@taqwa.com','01710000005','sylhet, Bangladesh',5,1,'2025-08-24 12:00:00','2025-08-27 08:44:50','2025-08-27 08:44:50'),(6,'hr1','$2y$10$hash6','hr1@taqwa.com','01710000006','sylhet, Bangladesh',6,1,'2025-08-23 13:00:00','2025-08-27 08:44:50','2025-08-27 08:44:50'),(7,'supplier1','$2y$10$hash7','supplier1@taqwa.com','01710000007','sylhet, Bangladesh',7,1,'2025-08-22 14:00:00','2025-08-27 08:44:50','2025-08-27 08:44:50'),(8,'support1','$2y$10$hash8','support1@taqwa.com','01710000008','sylhet, Bangladesh',8,1,'2025-08-21 15:00:00','2025-08-27 08:44:50','2025-08-27 08:44:50'),(9,'auditor1','$2y$10$hash9','auditor1@taqwa.com','01710000009','sylhet, Bangladesh',9,1,'2025-08-20 16:00:00','2025-08-27 08:44:50','2025-08-27 08:44:50'),(10,'cashier1','$2y$10$hash10','cashier1@taqwa.com','01710000010','sylhet, Bangladesh',10,1,'2025-08-19 17:00:00','2025-08-27 08:44:50','2025-08-27 08:44:50');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-02 11:28:50
