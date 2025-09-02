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
-- Table structure for table `promotionproducts`
--

DROP TABLE IF EXISTS `promotionproducts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotionproducts` (
  `promotionProductID` int NOT NULL AUTO_INCREMENT,
  `promotionID` int NOT NULL,
  `productID` int NOT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`promotionProductID`),
  KEY `promotionID` (`promotionID`),
  KEY `productID` (`productID`),
  CONSTRAINT `promotionproducts_ibfk_1` FOREIGN KEY (`promotionID`) REFERENCES `promotion` (`promotionID`),
  CONSTRAINT `promotionproducts_ibfk_2` FOREIGN KEY (`productID`) REFERENCES `product` (`productID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotionproducts`
--

LOCK TABLES `promotionproducts` WRITE;
/*!40000 ALTER TABLE `promotionproducts` DISABLE KEYS */;
INSERT INTO `promotionproducts` VALUES (1,1,1,'2025-08-26 18:41:30'),(2,1,2,'2025-08-26 18:41:30'),(3,1,3,'2025-08-26 18:41:30'),(4,2,1,'2025-08-26 18:41:30'),(5,2,6,'2025-08-26 18:41:30'),(6,2,7,'2025-08-26 18:41:30'),(7,3,5,'2025-08-26 18:41:30'),(8,3,10,'2025-08-26 18:41:30'),(9,4,4,'2025-08-26 18:41:30'),(10,4,9,'2025-08-26 18:41:30');
/*!40000 ALTER TABLE `promotionproducts` ENABLE KEYS */;
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
