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
  `resignationDate` date DEFAULT NULL,
  PRIMARY KEY (`staffID`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `nidNumber` (`nidNumber`),
  KEY `userID` (`userID`),
  CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Abdul Karim','01712000001','abdul.karim@taqwa.com','Zindabazar, Sylhet','Admin',60000.00,'Monthly','2025-09-02 00:48:51','Morning',48,'01711000001','NID001','Active','AC001',1,NULL),(2,'Maria Tasnia','01712000002','maria.tasnia@taqwa.com','Shibganj, Sylhet','Sales Manager',45000.00,'Monthly','2025-09-02 00:48:51','Morning',48,'01711000002','NID002','Active','AC002',2,NULL),(3,'Shahriar Sajib','01712000003','shahriar.sajib@taqwa.com','Ambarkhana, Sylhet','Inventory Manager',40000.00,'Monthly','2025-09-02 00:48:51','Morning',48,'01711000003','NID003','Active','AC003',3,NULL),(4,'Nusrat Jahan','01712000004','nusrat.jahan@taqwa.com','Kumarpara, Sylhet','Cashier',25000.00,'Monthly','2025-09-02 00:48:51','Morning',40,'01711000004','NID004','Active','AC004',4,NULL),(5,'Rahim Uddin','01712000005','rahim.uddin@taqwa.com','Mirabazar, Sylhet','Customer Support',22000.00,'Monthly','2025-09-02 00:48:51','Evening',40,'01711000005','NID005','Active','AC005',5,NULL),(6,'Farzana Akter','01712000006','farzana.akter@taqwa.com','Subidbazar, Sylhet','Accountant',38000.00,'Monthly','2025-09-02 00:48:51','Morning',48,'01711000006','NID006','Active','AC006',6,NULL),(7,'Imran Hossain','01712000007','imran.hossain@taqwa.com','Chowhatta, Sylhet','HR Manager',50000.00,'Monthly','2025-09-02 00:48:51','Morning',48,'01711000007','NID007','Active','AC007',7,NULL),(8,'Anika Chowdhury','01712000008','anika.chowdhury@taqwa.com','Shahi Eidgah, Sylhet','Report Analyst',30000.00,'Monthly','2025-09-02 00:48:51','Flexible',40,'01711000008','NID008','Active','AC008',8,NULL),(9,'Mahfuz Ahmed','01712000009','mahfuz.ahmed@taqwa.com','Tilagor, Sylhet','Supplier Manager',42000.00,'Monthly','2025-09-02 00:48:51','Morning',48,'01711000009','NID009','Active','AC009',9,NULL),(10,'Tanjila Sultana','01712000010','tanjila.sultana@taqwa.com','Pathantula, Sylhet','Assistant Manager',45000.00,'Monthly','2025-09-02 00:48:51','Morning',48,'01711000010','NID010','Active','AC010',10,NULL);
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

-- Dump completed on 2025-09-02 11:28:53
