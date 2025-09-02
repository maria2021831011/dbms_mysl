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
-- Table structure for table `damageproduct`
--

DROP TABLE IF EXISTS `damageproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `damageproduct` (
  `damageID` int NOT NULL AUTO_INCREMENT,
  `productID` int NOT NULL,
  `quantity` int NOT NULL,
  `damageDate` date NOT NULL,
  `reason` text,
  `reportedBy` int NOT NULL,
  `status` varchar(20) DEFAULT 'Reported',
  `actionTaken` varchar(255) DEFAULT NULL,
  `lossAmount` decimal(10,2) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`damageID`),
  KEY `productID` (`productID`),
  KEY `reportedBy` (`reportedBy`),
  CONSTRAINT `damageproduct_ibfk_1` FOREIGN KEY (`productID`) REFERENCES `product` (`productID`),
  CONSTRAINT `damageproduct_ibfk_2` FOREIGN KEY (`reportedBy`) REFERENCES `staff` (`staffID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `damageproduct`
--

LOCK TABLES `damageproduct` WRITE;
/*!40000 ALTER TABLE `damageproduct` DISABLE KEYS */;
INSERT INTO `damageproduct` VALUES (1,1,5,'2025-08-05','Broken during transportation',6,'Processed',NULL,325.00,NULL),(2,2,3,'2025-08-10','Mold growth',6,'Processed',NULL,90.00,NULL),(3,3,10,'2025-08-15','Overripe and spoiled',6,'Processed',NULL,1500.00,NULL),(4,4,2,'2025-08-20','Leaking packaging',6,'Reported',NULL,220.00,NULL),(5,5,1,'2025-08-25','Damaged packaging',6,'Reported',NULL,250.00,NULL),(6,6,8,'2025-08-08','Crushed during stocking',6,'Processed',NULL,200.00,NULL),(7,7,4,'2025-08-12','Broken seals',6,'Processed',NULL,240.00,NULL),(8,8,3,'2025-08-18','Chemical spill contamination',6,'Reported',NULL,135.00,NULL),(9,9,6,'2025-08-22','Freezer malfunction',6,'Processed',NULL,1080.00,NULL),(10,10,2,'2025-08-28','Torn packaging',6,'Reported',NULL,700.00,NULL);
/*!40000 ALTER TABLE `damageproduct` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-02 11:28:55
