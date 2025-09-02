-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: taqwashop1
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
-- Table structure for table `customerpurchasebilling`
--

DROP TABLE IF EXISTS `customerpurchasebilling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customerpurchasebilling` (
  `invoiceID` int NOT NULL AUTO_INCREMENT,
  `customerID` int DEFAULT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `discountType` varchar(50) DEFAULT NULL,
  `VATPercentage` float NOT NULL,
  `totalAmount` decimal(10,2) NOT NULL,
  `paymentMode` varchar(20) NOT NULL,
  `staffID` int NOT NULL,
  `managerID` int NOT NULL,
  PRIMARY KEY (`invoiceID`),
  KEY `customerID` (`customerID`),
  KEY `staffID` (`staffID`),
  KEY `managerID` (`managerID`),
  CONSTRAINT `customerpurchasebilling_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`),
  CONSTRAINT `customerpurchasebilling_ibfk_2` FOREIGN KEY (`staffID`) REFERENCES `staff` (`staffID`),
  CONSTRAINT `customerpurchasebilling_ibfk_3` FOREIGN KEY (`managerID`) REFERENCES `staff` (`staffID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerpurchasebilling`
--

LOCK TABLES `customerpurchasebilling` WRITE;
/*!40000 ALTER TABLE `customerpurchasebilling` DISABLE KEYS */;
INSERT INTO `customerpurchasebilling` VALUES (1,1,'2025-08-26 10:36:02','Loyalty',5,105.00,'Cash',3,1),(2,2,'2025-08-26 10:36:02','None',5,50.00,'Card',3,2),(3,3,'2025-08-26 10:36:02','Seasonal',5,120.00,'Cash',4,1),(4,4,'2025-08-26 10:36:02','None',5,450.00,'Card',4,2),(5,5,'2025-08-26 10:36:02','Loyalty',5,350.00,'Cash',3,1),(6,6,'2025-08-26 10:36:02','Seasonal',5,220.00,'Card',4,2),(7,7,'2025-08-26 10:36:02','None',5,250.00,'Cash',3,1),(8,8,'2025-08-26 10:36:02','Loyalty',5,180.00,'Card',4,2),(9,9,'2025-08-26 10:36:02','None',5,200.00,'Cash',3,1),(10,10,'2025-08-26 10:36:02','Seasonal',5,400.00,'Card',4,2);
/*!40000 ALTER TABLE `customerpurchasebilling` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-02 11:29:10
