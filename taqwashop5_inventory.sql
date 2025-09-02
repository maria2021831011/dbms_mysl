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
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `inventoryID` int NOT NULL AUTO_INCREMENT,
  `productID` int NOT NULL,
  `quantity` int NOT NULL,
  `location` varchar(50) DEFAULT NULL,
  `expiryDate` date DEFAULT NULL,
  `batchNumber` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Available',
  `lastStockTake` date DEFAULT NULL,
  `minimumStockLevel` int DEFAULT NULL,
  `maximumStockLevel` int DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`inventoryID`),
  KEY `productID` (`productID`),
  CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`productID`) REFERENCES `product` (`productID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,1,100,'Aisle 1, Shelf A','2025-12-15','BATCH001','Available',NULL,20,200,NULL),(2,2,50,'Aisle 2, Shelf B','2025-08-30','BATCH002','Available',NULL,10,100,NULL),(3,3,75,'Aisle 3, Shelf C','2025-09-10','BATCH003','Available',NULL,15,150,NULL),(4,4,60,'Aisle 4, Shelf D','2025-10-20','BATCH004','Available',NULL,12,120,NULL),(5,5,40,'Aisle 5, Shelf E','2026-01-15','BATCH005','Available',NULL,8,80,NULL),(6,6,80,'Aisle 6, Shelf F','2025-11-30','BATCH006','Available',NULL,16,160,NULL),(7,7,120,'Aisle 7, Shelf G','2026-03-20','BATCH007','Available',NULL,24,240,NULL),(8,8,90,'Aisle 8, Shelf H','2026-02-28','BATCH008','Available',NULL,18,180,NULL),(9,9,65,'Aisle 9, Shelf I','2025-09-25','BATCH009','Available',NULL,13,130,NULL),(10,10,110,'Aisle 10, Shelf J','2026-04-15','BATCH010','Available',NULL,22,220,NULL);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-02 11:29:05
