-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: taqwashop
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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customerID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `customerPoints` tinyint(1) DEFAULT '0',
  `joinDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(100) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `loyaltyTier` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Active',
  PRIMARY KEY (`customerID`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Maria Tasnia','01710000001','Sylhet, Bangladesh',1,'2025-08-26 00:04:32','maria@example.com','Female','2003-05-12','Gold','Active'),(2,'Ria Ahmed','01710000002','Sylhet, Bangladesh',0,'2025-08-26 00:04:32','ria@example.com','Female','2003-08-22','Silver','Active'),(3,'Hridoy Khan','01710000003','Sylhet, Bangladesh',1,'2025-08-26 00:04:32','hridoy@example.com','Male','1992-11-05','Gold','Active'),(4,'Borson Ali','01710000004','Sylhet, Bangladesh',0,'2025-08-26 00:04:32','borson@example.com','Male','1990-03-15','Silver','Active'),(5,'Sadia Noor','01710000005','Sylhet, Bangladesh',1,'2025-08-26 00:04:32','sadia@example.com','Female','1996-07-30','Gold','Active'),(6,'Fahim Rahman','01710000006','Sylhet, Bangladesh',0,'2025-08-26 00:04:32','fahim@example.com','Male','1994-01-25','Bronze','Active'),(7,'Nusrat Jahan','01710000007','Sylhet, Bangladesh',1,'2025-08-26 00:04:32','nusrat@example.com','Female','1997-09-10','Gold','Active'),(8,'Tanvir Islam','01710000008','Sylhet, Bangladesh',0,'2025-08-26 00:04:32','tanvir@example.com','Male','1993-12-18','Silver','Active'),(9,'Rumana Akter','01710000009','Sylhet, Bangladesh',1,'2025-08-26 00:04:32','rumana@example.com','Female','1999-04-05','Gold','Active'),(10,'Sabbir Hossain','01710000010','Sylhet, Bangladesh',0,'2025-08-26 00:04:32','sabbir@example.com','Male','1991-06-20','Bronze','Active');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-02 11:29:06
