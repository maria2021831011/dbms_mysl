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
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification` (
  `notificationID` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `type` varchar(50) NOT NULL,
  `recipientType` varchar(20) NOT NULL,
  `recipientID` int DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Unread',
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `expiresAt` datetime DEFAULT NULL,
  `actionURL` varchar(255) DEFAULT NULL,
  `relatedEntityType` varchar(50) DEFAULT NULL,
  `relatedEntityID` int DEFAULT NULL,
  `priority` varchar(20) DEFAULT 'Normal',
  `isActionRequired` tinyint(1) DEFAULT '0',
  `actionTaken` tinyint(1) DEFAULT '0',
  `actionTakenBy` int DEFAULT NULL,
  `actionTakenAt` datetime DEFAULT NULL,
  PRIMARY KEY (`notificationID`),
  KEY `actionTakenBy` (`actionTakenBy`),
  CONSTRAINT `notification_ibfk_1` FOREIGN KEY (`actionTakenBy`) REFERENCES `staff` (`staffID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (1,'Order Completed','Your order #1 has been completed successfully','Order','Customer',1,'Read','2025-08-26 18:41:30','2025-08-27 00:00:00',NULL,'Order',1,'Normal',0,0,NULL,NULL),(2,'New Promotion','Summer sale 15% off on all products','Promotion','All',NULL,'Unread','2025-08-26 18:41:30','2025-08-31 00:00:00',NULL,'Promotion',1,'High',0,0,NULL,NULL),(3,'Inventory Alert','Product Milk is running low on stock','Inventory','Staff',6,'Unread','2025-08-26 18:41:30','2025-08-25 00:00:00',NULL,'Product',1,'Urgent',0,0,NULL,NULL),(4,'Payment Received','Payment for invoice #1 has been received','Payment','Staff',3,'Read','2025-08-26 18:41:30','2025-08-27 00:00:00',NULL,'Payment',1,'Normal',0,0,NULL,NULL),(5,'Shift Reminder','Your morning shift starts in 1 hour','Schedule','Staff',3,'Read','2025-08-26 18:41:30','2025-08-01 00:00:00',NULL,'Schedule',3,'Normal',0,0,NULL,NULL),(6,'Feedback Received','New customer feedback received','Feedback','Staff',1,'Unread','2025-08-26 18:41:30','2025-08-22 00:00:00',NULL,'Feedback',4,'Normal',0,0,NULL,NULL),(7,'Return Request','New product return request received','Return','Staff',2,'Unread','2025-08-26 18:41:30','2025-08-23 00:00:00',NULL,'Return',3,'High',0,0,NULL,NULL),(8,'Expense Approved','Your expense claim has been approved','Expense','Staff',2,'Read','2025-08-26 18:41:30','2025-08-12 00:00:00',NULL,'Expense',4,'Normal',0,0,NULL,NULL),(9,'Damage Reported','New product damage reported','Inventory','Staff',6,'Unread','2025-08-26 18:41:30','2025-08-29 00:00:00',NULL,'Damage',4,'High',0,0,NULL,NULL),(10,'Report Generated','Your requested report is ready','Report','Staff',1,'Unread','2025-08-26 18:41:30','2025-08-10 00:00:00',NULL,'Report',1,'Normal',0,0,NULL,NULL);
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
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
