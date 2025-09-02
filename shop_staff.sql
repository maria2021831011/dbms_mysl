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
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staffID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `salaryType` enum('Monthly','Hourly','Commission') DEFAULT 'Monthly',
  `joinDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `shift` enum('Morning','Evening','Night','Flexible') DEFAULT 'Morning',
  `workHoursPerWeek` int DEFAULT '0',
  `emergencyContact` varchar(100) DEFAULT NULL,
  `nidNumber` varchar(50) DEFAULT NULL,
  `employmentStatus` enum('Active','Inactive','Resigned','Terminated') DEFAULT 'Active',
  `bankAccount` varchar(100) DEFAULT NULL,
  `userID` int DEFAULT NULL,
  `resignationDate` datetime DEFAULT NULL,
  PRIMARY KEY (`staffID`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `nidNumber` (`nidNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Sajib Ahmed','01730000001','sajib@gmail.com','Sylhet','Manager',50000.00,'Monthly','2024-01-05 00:00:00','Morning',40,'01710000001','NID001','Active','AC001',1,NULL),(2,'Rina Begum','01730000002','rina@gmail.com','Sylhet','Cashier',25000.00,'Monthly','2024-02-10 00:00:00','Morning',40,'01710000002','NID002','Active','AC002',2,NULL),(3,'Tanvir Hossain','01730000003','tanvir@gmail.com','Sylhet','Sales Executive',30000.00,'Monthly','2024-03-15 00:00:00','Evening',40,'01710000003','NID003','Active','AC003',3,NULL),(4,'Ayesha Khatun','01730000004','ayesha@gmail.com','Sylhet','Stock Manager',35000.00,'Monthly','2024-04-01 00:00:00','Morning',40,'01710000004','NID004','Active','AC004',4,NULL),(5,'Sabbir Ahmed','01730000005','sabbir@gmail.com','Sylhet','Accountant',40000.00,'Monthly','2024-05-20 00:00:00','Morning',40,'01710000005','NID005','Active','AC005',5,NULL),(6,'Farhana Sultana','01730000006','farhana@gmail.com','Sylhet','Sales Executive',30000.00,'Monthly','2024-06-10 00:00:00','Evening',40,'01710000006','NID006','Active','AC006',6,NULL),(7,'Rasel Mia','01730000007','rasel@gmail.com','Sylhet','Delivery Staff',20000.00,'Monthly','2024-07-05 00:00:00','Night',40,'01710000007','NID007','Active','AC007',7,NULL),(8,'Nabila Rahman','01730000008','nabila@gmail.com','Sylhet','Receptionist',22000.00,'Monthly','2024-01-20 00:00:00','Morning',40,'01710000008','NID008','Active','AC008',8,NULL),(9,'Shakib Khan','01730000009','shakib@gmail.com','Sylhet','Cleaner',18000.00,'Monthly','2024-03-10 00:00:00','Morning',40,'01710000009','NID009','Active','AC009',9,NULL),(10,'Tania Akter','01730000010','tania@gmail.com','Sylhet','HR',40000.00,'Monthly','2024-02-28 00:00:00','Morning',40,'01710000010','NID010','Active','AC010',10,NULL);
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

-- Dump completed on 2025-09-02 11:28:50
