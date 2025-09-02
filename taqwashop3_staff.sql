-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: taqwashop3
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
  `salary` decimal(10,2) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `shift` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `emergencyContact` varchar(20) DEFAULT NULL,
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
INSERT INTO `staff` VALUES (1,'Mr. Alam','Manager','alam','alam123','2025-08-26 17:48:05','alam@taqwashop.com','01910000001','Active',NULL,'Store Manager',NULL,50000.00,'Management','Day','123 Manager Road, Sylhet','01910000011'),(2,'Mr. Hossain','Assistant Manager','hossain','hossain123','2025-08-26 17:48:05','hossain@taqwashop.com','01910000002','Active',NULL,'Assistant Manager',1,40000.00,'Management','Day','456 Assistant Road, Sylhet','01910000012'),(3,'Rina Akter','Cashier','rina','rina123','2025-08-26 17:48:05','rina@taqwashop.com','01910000003','Active',NULL,'Senior Cashier',1,25000.00,'Sales','Morning','789 Cashier Road, Sylhet','01910000013'),(4,'Kamal Uddin','Cashier','kamal','kamal123','2025-08-26 17:48:05','kamal@taqwashop.com','01910000004','Active',NULL,'Cashier',2,22000.00,'Sales','Evening','321 Cashier Lane, Sylhet','01910000014'),(5,'Sofia Begum','Sales Associate','sofia','sofia123','2025-08-26 17:48:05','sofia@taqwashop.com','01910000005','Active',NULL,'Sales Assistant',1,20000.00,'Sales','Morning','654 Sales Road, Sylhet','01910000015'),(6,'Rajib Ahmed','Stock Manager','rajib','rajib123','2025-08-26 17:48:05','rajib@taqwashop.com','01910000006','Active',NULL,'Stock Manager',2,28000.00,'Inventory','Day','987 Stock Road, Sylhet','01910000016'),(7,'Tania Islam','Sales Associate','tania','tania123','2025-08-26 17:48:05','tania@taqwashop.com','01910000007','Active',NULL,'Sales Assistant',1,20000.00,'Sales','Evening','147 Sales Lane, Sylhet','01910000017'),(8,'Faruk Hossain','Security','faruk','faruk123','2025-08-26 17:48:05','faruk@taqwashop.com','01910000008','Active',NULL,'Security Guard',2,18000.00,'Security','Night','258 Security Road, Sylhet','01910000018'),(9,'Mitu Akter','Cleaner','mitu','mitu123','2025-08-26 17:48:05','mitu@taqwashop.com','01910000009','Active',NULL,'Cleaner',2,15000.00,'Maintenance','Day','369 Cleaner Road, Sylhet','01910000019'),(10,'Shahin Alam','Helper','shahin','shahin123','2025-08-26 17:48:05','shahin@taqwashop.com','01910000010','Active',NULL,'Store Helper',2,16000.00,'Inventory','Day','741 Helper Lane, Sylhet','01910000020');
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

-- Dump completed on 2025-09-02 11:28:47
