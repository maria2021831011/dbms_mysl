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
-- Table structure for table `productreturn`
--

DROP TABLE IF EXISTS `productreturn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productreturn` (
  `returnID` int NOT NULL AUTO_INCREMENT,
  `orderID` int NOT NULL,
  `productID` int NOT NULL,
  `quantity` int NOT NULL,
  `returnDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `reason` text,
  `status` varchar(20) DEFAULT 'Pending',
  `refundAmount` decimal(10,2) DEFAULT NULL,
  `processedBy` int DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`returnID`),
  KEY `orderID` (`orderID`),
  KEY `productID` (`productID`),
  KEY `processedBy` (`processedBy`),
  CONSTRAINT `productreturn_ibfk_1` FOREIGN KEY (`orderID`) REFERENCES `customerorder` (`orderID`),
  CONSTRAINT `productreturn_ibfk_2` FOREIGN KEY (`productID`) REFERENCES `product` (`productID`),
  CONSTRAINT `productreturn_ibfk_3` FOREIGN KEY (`processedBy`) REFERENCES `staff` (`staffID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productreturn`
--

LOCK TABLES `productreturn` WRITE;
/*!40000 ALTER TABLE `productreturn` DISABLE KEYS */;
INSERT INTO `productreturn` VALUES (1,4,4,2,'2025-08-18 00:00:00','Product was damaged','Completed',220.00,2,NULL),(2,7,7,1,'2025-08-15 00:00:00','Wrong product delivered','Completed',60.00,1,NULL),(3,2,2,3,'2025-08-20 00:00:00','Changed mind','Pending',90.00,NULL,NULL),(4,5,5,1,'2025-08-17 00:00:00','Not satisfied with quality','Completed',250.00,2,NULL),(5,8,8,2,'2025-08-14 00:00:00','Expired product','Completed',90.00,1,NULL),(6,1,1,1,'2025-08-21 00:00:00','Allergic reaction','Pending',65.00,NULL,NULL),(7,3,3,2,'2025-08-16 00:00:00','Fruits were rotten','Completed',300.00,2,NULL),(8,6,6,1,'2025-08-19 00:00:00','Package was open','Pending',25.00,NULL,NULL),(9,9,9,1,'2025-08-13 00:00:00','Melted ice cream','Completed',180.00,1,NULL),(10,10,10,1,'2025-08-12 00:00:00','Wrong size','Completed',350.00,2,NULL);
/*!40000 ALTER TABLE `productreturn` ENABLE KEYS */;
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
