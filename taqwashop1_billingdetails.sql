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
-- Table structure for table `billingdetails`
--

DROP TABLE IF EXISTS `billingdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billingdetails` (
  `billingDetailID` int NOT NULL AUTO_INCREMENT,
  `invoiceID` int NOT NULL,
  `productID` int NOT NULL,
  `quantity` int NOT NULL,
  `unitPrice` decimal(10,2) NOT NULL,
  `totalPrice` decimal(10,2) NOT NULL,
  PRIMARY KEY (`billingDetailID`),
  KEY `invoiceID` (`invoiceID`),
  KEY `productID` (`productID`),
  CONSTRAINT `billingdetails_ibfk_1` FOREIGN KEY (`invoiceID`) REFERENCES `customerpurchasebilling` (`invoiceID`),
  CONSTRAINT `billingdetails_ibfk_2` FOREIGN KEY (`productID`) REFERENCES `inventory` (`productID`),
  CONSTRAINT `billingdetails_chk_1` CHECK ((`quantity` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billingdetails`
--

LOCK TABLES `billingdetails` WRITE;
/*!40000 ALTER TABLE `billingdetails` DISABLE KEYS */;
INSERT INTO `billingdetails` VALUES (1,1,1,2,55.00,110.00),(2,2,2,1,25.00,25.00),(3,3,3,1,95.00,95.00),(4,4,4,3,180.00,540.00),(5,5,5,1,350.00,350.00),(6,6,6,2,150.00,300.00),(7,7,7,5,75.00,375.00),(8,8,8,2,100.00,200.00),(9,9,9,1,200.00,200.00),(10,10,10,4,120.00,480.00);
/*!40000 ALTER TABLE `billingdetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-02 11:29:09
