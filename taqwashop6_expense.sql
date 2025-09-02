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
-- Table structure for table `expense`
--

DROP TABLE IF EXISTS `expense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expense` (
  `expenseID` int NOT NULL AUTO_INCREMENT,
  `categoryID` int NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `expenseDate` date NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `paymentMethod` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Pending',
  `approvedBy` int DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `vendor` varchar(100) DEFAULT NULL,
  `referenceNumber` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`expenseID`),
  KEY `categoryID` (`categoryID`),
  KEY `approvedBy` (`approvedBy`),
  CONSTRAINT `expense_ibfk_1` FOREIGN KEY (`categoryID`) REFERENCES `expensecategory` (`categoryID`),
  CONSTRAINT `expense_ibfk_2` FOREIGN KEY (`approvedBy`) REFERENCES `staff` (`staffID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense`
--

LOCK TABLES `expense` WRITE;
/*!40000 ALTER TABLE `expense` DISABLE KEYS */;
INSERT INTO `expense` VALUES (1,1,50000.00,'2025-08-01','Monthly store rent','Bank Transfer','Approved',1,NULL,'2025-08-26 18:41:30','Property Owner Ltd',NULL),(2,2,15000.00,'2025-08-05','Electricity and water bill','Bank Transfer','Approved',1,NULL,'2025-08-26 18:41:30','DESCO',NULL),(3,3,250000.00,'2025-08-10','Staff salaries for July','Bank Transfer','Approved',1,NULL,'2025-08-26 18:41:30','TAQWASHOP Payroll',NULL),(4,4,10000.00,'2025-08-15','Facebook advertising campaign','Card','Approved',2,NULL,'2025-08-26 18:41:30','Facebook Inc',NULL),(5,5,5000.00,'2025-08-20','AC maintenance and repair','Cash','Pending',NULL,NULL,'2025-08-26 18:41:30','CoolTech Services',NULL),(6,6,3000.00,'2025-08-22','Cleaning supplies purchase','Cash','Approved',2,NULL,'2025-08-26 18:41:30','CleanPro Suppliers',NULL),(7,7,8000.00,'2025-08-25','Delivery vehicle fuel','Cash','Approved',2,NULL,'2025-08-26 18:41:30','Padma Fuel Station',NULL),(8,8,12000.00,'2025-08-28','Business insurance premium','Bank Transfer','Pending',NULL,NULL,'2025-08-26 18:41:30','Green Delta Insurance',NULL),(9,9,20000.00,'2025-08-30','Monthly business taxes','Bank Transfer','Approved',1,NULL,'2025-08-26 18:41:30','NBR',NULL),(10,10,5000.00,'2025-08-31','Unexpected expenses','Cash','Approved',2,NULL,'2025-08-26 18:41:30','Various',NULL);
/*!40000 ALTER TABLE `expense` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-02 11:28:57
