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
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report` (
  `reportID` int NOT NULL AUTO_INCREMENT,
  `reportType` varchar(50) NOT NULL,
  `reportName` varchar(100) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `format` varchar(20) NOT NULL,
  `requestedBy` int NOT NULL,
  `generatedAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(20) DEFAULT 'Pending',
  `filePath` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `parameters` text,
  PRIMARY KEY (`reportID`),
  KEY `requestedBy` (`requestedBy`),
  CONSTRAINT `report_ibfk_1` FOREIGN KEY (`requestedBy`) REFERENCES `staff` (`staffID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
INSERT INTO `report` VALUES (1,'Sales','Daily Sales Report','2025-08-01','2025-08-01','PDF',1,'2025-08-26 18:41:30','Completed','/reports/sales_20250801.pdf',NULL,NULL),(2,'Inventory','Weekly Stock Report','2025-08-01','2025-08-07','Excel',2,'2025-08-26 18:41:30','Completed','/reports/inventory_20250807.xlsx',NULL,NULL),(3,'Financial','Monthly Revenue Report','2025-08-01','2025-08-31','PDF',1,'2025-08-26 18:41:30','Pending',NULL,NULL,NULL),(4,'Customer','Customer Analysis Report','2025-07-01','2025-08-31','Excel',2,'2025-08-26 18:41:30','Completed','/reports/customer_20250831.xlsx',NULL,NULL),(5,'Staff','Attendance Report','2025-08-01','2025-08-15','PDF',1,'2025-08-26 18:41:30','Completed','/reports/attendance_20250815.pdf',NULL,NULL),(6,'Expense','Monthly Expenses Report','2025-08-01','2025-08-31','Excel',2,'2025-08-26 18:41:30','Pending',NULL,NULL,NULL),(7,'Product','Product Performance Report','2025-07-01','2025-08-31','PDF',1,'2025-08-26 18:41:30','Completed','/reports/product_20250831.pdf',NULL,NULL),(8,'Supplier','Supplier Evaluation Report','2025-06-01','2025-08-31','Excel',2,'2025-08-26 18:41:30','Pending',NULL,NULL,NULL),(9,'Promotion','Promotion Effectiveness Report','2025-08-01','2025-08-31','PDF',1,'2025-08-26 18:41:30','Pending',NULL,NULL,NULL),(10,'Return','Product Return Analysis','2025-07-01','2025-08-31','Excel',2,'2025-08-26 18:41:30','Completed','/reports/return_20250831.xlsx',NULL,NULL);
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
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
