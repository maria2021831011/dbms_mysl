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
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `roleID` int NOT NULL AUTO_INCREMENT,
  `roleName` varchar(50) NOT NULL,
  `description` text,
  `canManageSales` tinyint(1) DEFAULT '0',
  `canManageInventory` tinyint(1) DEFAULT '0',
  `canManageSuppliers` tinyint(1) DEFAULT '0',
  `canManageCustomers` tinyint(1) DEFAULT '0',
  `canManageExpenses` tinyint(1) DEFAULT '0',
  `canManageReports` tinyint(1) DEFAULT '0',
  `canManageStaff` tinyint(1) DEFAULT '0',
  `canApprovePayments` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`roleID`),
  UNIQUE KEY `roleName` (`roleName`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin','Full access to all system features',1,1,1,1,1,1,1,1),(2,'Sales Manager','Responsible for managing sales and customer relations',1,0,0,1,0,1,0,1),(3,'Inventory Manager','Handles stock and product management',0,1,1,0,0,1,0,0),(4,'Cashier','Processes sales transactions and payments',1,0,0,1,0,0,0,1),(5,'Customer Support','Helps customers with issues and manages basic profiles',0,0,0,1,0,0,0,0),(6,'Accountant','Manages financial records and expenses',0,0,0,0,1,1,0,1),(7,'HR Manager','Handles staff management and payroll',0,0,0,0,0,0,1,1),(8,'Report Analyst','Generates and reviews reports only',0,0,0,0,0,1,0,0),(9,'Supplier Manager','Maintains supplier database and relationships',0,0,1,0,0,0,0,0),(10,'Assistant Manager','Supports multiple operations with limited access',1,1,0,1,0,1,0,0);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-02 11:28:52
