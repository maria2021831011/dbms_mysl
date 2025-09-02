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
-- Table structure for table `salesreturns`
--

DROP TABLE IF EXISTS `salesreturns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salesreturns` (
  `returnID` int NOT NULL AUTO_INCREMENT,
  `saleID` int DEFAULT NULL,
  `productID` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `returnDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`returnID`),
  KEY `saleID` (`saleID`),
  KEY `productID` (`productID`),
  CONSTRAINT `salesreturns_ibfk_1` FOREIGN KEY (`saleID`) REFERENCES `sales` (`saleID`),
  CONSTRAINT `salesreturns_ibfk_2` FOREIGN KEY (`productID`) REFERENCES `products` (`productID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesreturns`
--

LOCK TABLES `salesreturns` WRITE;
/*!40000 ALTER TABLE `salesreturns` DISABLE KEYS */;
INSERT INTO `salesreturns` VALUES (1,1,1,1,'2025-09-02 11:20:15'),(2,2,2,1,'2025-09-02 11:20:15'),(3,3,3,1,'2025-09-02 11:20:15'),(4,4,4,2,'2025-09-02 11:20:15'),(5,5,5,1,'2025-09-02 11:20:15'),(6,6,8,2,'2025-09-02 11:20:15'),(7,7,1,1,'2025-09-02 11:20:15'),(8,8,3,1,'2025-09-02 11:20:15'),(9,9,4,1,'2025-09-02 11:20:15'),(10,10,2,1,'2025-09-02 11:20:15');
/*!40000 ALTER TABLE `salesreturns` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-02 11:28:54
