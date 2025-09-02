-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: taqwashop2
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
-- Table structure for table `finance`
--

DROP TABLE IF EXISTS `finance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `finance` (
  `entryID` int NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `enteredBy` int NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `paymentMode` varchar(20) DEFAULT NULL,
  `approvalStatus` varchar(20) DEFAULT 'Pending',
  `notes` varchar(255) DEFAULT NULL,
  `referenceID` int DEFAULT NULL,
  `invoiceID` int DEFAULT NULL,
  `orderID` int DEFAULT NULL,
  PRIMARY KEY (`entryID`),
  KEY `enteredBy` (`enteredBy`),
  KEY `invoiceID` (`invoiceID`),
  KEY `orderID` (`orderID`),
  CONSTRAINT `finance_ibfk_1` FOREIGN KEY (`enteredBy`) REFERENCES `staff` (`staffID`),
  CONSTRAINT `finance_ibfk_2` FOREIGN KEY (`invoiceID`) REFERENCES `customerpurchasebilling` (`invoiceID`),
  CONSTRAINT `finance_ibfk_3` FOREIGN KEY (`orderID`) REFERENCES `purchaseorder` (`orderID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance`
--

LOCK TABLES `finance` WRITE;
/*!40000 ALTER TABLE `finance` DISABLE KEYS */;
INSERT INTO `finance` VALUES (1,'Sale',105.00,'Product Sale','2025-08-26 11:25:31',1,'Milk 1L sold','Cash','Approved','Morning shift',NULL,1,NULL),(2,'Sale',50.00,'Product Sale','2025-08-26 11:25:31',2,'Bread sold','Card','Approved','',NULL,2,NULL),(3,'Expense',2000.00,'Rent','2025-08-26 11:25:31',1,'Monthly shop rent','Bank Transfer','Approved','Paid on 1st',NULL,NULL,NULL),(4,'Expense',500.00,'Utilities','2025-08-26 11:25:31',2,'Electricity bill','Cash','Approved','',NULL,NULL,NULL),(5,'Sale',120.00,'Product Sale','2025-08-26 11:25:31',1,'Eggs 12pcs sold','Cash','Approved','',NULL,3,NULL),(6,'Expense',800.00,'Supplies','2025-08-26 11:25:31',1,'Cleaning supplies','Cash','Approved','',NULL,NULL,NULL),(7,'Sale',450.00,'Product Sale','2025-08-26 11:25:31',2,'Butter 250g sold','Card','Approved','',NULL,4,NULL),(8,'Sale',350.00,'Product Sale','2025-08-26 11:25:31',1,'Cheese 500g sold','Cash','Approved','',NULL,5,NULL),(9,'Expense',1500.00,'Salary','2025-08-26 11:25:31',1,'Staff salary for August','Bank Transfer','Pending','',NULL,NULL,NULL),(10,'Sale',180.00,'Product Sale','2025-08-26 11:25:31',2,'Orange Juice 1L sold','Card','Approved','',NULL,8,NULL);
/*!40000 ALTER TABLE `finance` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-02 11:29:08
