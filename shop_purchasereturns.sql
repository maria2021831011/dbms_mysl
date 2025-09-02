-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: shop
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
-- Table structure for table `purchasereturns`
--

DROP TABLE IF EXISTS `purchasereturns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchasereturns` (
  `returnID` int NOT NULL AUTO_INCREMENT,
  `purchaseID` int DEFAULT NULL,
  `productID` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `description` text,
  `returnDate` datetime DEFAULT NULL,
  PRIMARY KEY (`returnID`),
  KEY `purchaseID` (`purchaseID`),
  KEY `productID` (`productID`),
  CONSTRAINT `purchasereturns_ibfk_1` FOREIGN KEY (`purchaseID`) REFERENCES `purchases` (`purchaseID`),
  CONSTRAINT `purchasereturns_ibfk_2` FOREIGN KEY (`productID`) REFERENCES `products` (`productID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchasereturns`
--

LOCK TABLES `purchasereturns` WRITE;
/*!40000 ALTER TABLE `purchasereturns` DISABLE KEYS */;
INSERT INTO `purchasereturns` VALUES (1,1,1,2,'Damaged items','2025-08-05 10:00:00'),(2,2,2,1,'Expired product','2025-08-06 11:00:00'),(3,3,3,3,'Overstock','2025-08-07 12:00:00'),(4,4,4,5,'Wrong shipment','2025-08-08 13:00:00'),(5,5,5,2,'Broken packaging','2025-08-09 14:00:00'),(6,6,6,1,'Quality issue','2025-08-10 15:00:00'),(7,7,7,2,'Wrong item','2025-08-11 16:00:00'),(8,8,8,1,'Expired','2025-08-12 17:00:00'),(9,9,9,4,'Damaged','2025-08-13 18:00:00'),(10,10,10,3,'Overstock','2025-08-14 09:00:00');
/*!40000 ALTER TABLE `purchasereturns` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-02 11:28:49
