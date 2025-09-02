-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: taqwashop5
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
-- Table structure for table `purchaseorderdetails`
--

DROP TABLE IF EXISTS `purchaseorderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchaseorderdetails` (
  `orderDetailID` int NOT NULL AUTO_INCREMENT,
  `orderID` int NOT NULL,
  `productID` int NOT NULL,
  `quantity` int NOT NULL,
  `unitPrice` decimal(10,2) NOT NULL,
  `totalPrice` decimal(10,2) NOT NULL,
  `receivedQuantity` int DEFAULT '0',
  `status` varchar(20) DEFAULT 'Pending',
  `notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`orderDetailID`),
  KEY `orderID` (`orderID`),
  KEY `productID` (`productID`),
  CONSTRAINT `purchaseorderdetails_ibfk_1` FOREIGN KEY (`orderID`) REFERENCES `purchaseorder` (`orderID`),
  CONSTRAINT `purchaseorderdetails_ibfk_2` FOREIGN KEY (`productID`) REFERENCES `product` (`productID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchaseorderdetails`
--

LOCK TABLES `purchaseorderdetails` WRITE;
/*!40000 ALTER TABLE `purchaseorderdetails` DISABLE KEYS */;
INSERT INTO `purchaseorderdetails` VALUES (1,1,1,100,55.00,5500.00,100,'Completed',NULL),(2,2,2,50,25.00,1250.00,50,'Completed',NULL),(3,3,3,75,120.00,9000.00,75,'Completed',NULL),(4,4,4,60,90.00,5400.00,60,'Completed',NULL),(5,5,5,40,200.00,8000.00,40,'Completed',NULL),(6,6,6,80,20.00,1600.00,0,'Pending',NULL),(7,7,7,120,45.00,5400.00,0,'Pending',NULL),(8,8,8,90,35.00,3150.00,0,'Pending',NULL),(9,9,9,65,150.00,9750.00,0,'Pending',NULL),(10,10,10,110,300.00,33000.00,0,'Pending',NULL);
/*!40000 ALTER TABLE `purchaseorderdetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-02 11:29:04
