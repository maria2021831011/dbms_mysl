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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `productID` int NOT NULL AUTO_INCREMENT,
  `productName` varchar(150) NOT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `categoryID` int DEFAULT NULL,
  `costPrice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `sellingPrice` decimal(10,2) NOT NULL,
  `stock` int DEFAULT '0',
  `barcode` varchar(50) DEFAULT NULL,
  `vatPercentage` decimal(5,2) DEFAULT '0.00',
  `expiryDate` date DEFAULT NULL,
  PRIMARY KEY (`productID`),
  UNIQUE KEY `barcode` (`barcode`),
  KEY `categoryID` (`categoryID`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`categoryID`) REFERENCES `categories` (`categoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Miniket Rice 25kg','ACI',1,1800.00,2000.00,50,'BR001',5.00,'2026-01-01'),(2,'Samsung Galaxy A15','Samsung',2,18000.00,19500.00,20,'EL001',7.50,NULL),(3,'Cotton Saree','Aarong',3,1200.00,1500.00,40,'CL001',5.00,NULL),(4,'Leather Sandal','Bata',4,800.00,1000.00,60,'FT001',5.00,NULL),(5,'Fair & Lovely Cream','Unilever',5,180.00,220.00,100,'CB001',5.00,'2025-12-31'),(6,'Notebook A4 200 Pages','Matador',6,60.00,80.00,200,'ST001',0.00,NULL),(7,'Wooden Chair','Partex',7,1500.00,1800.00,25,'FU001',5.00,NULL),(8,'Paracetamol 500mg','Square',8,1.00,2.00,500,'PH001',0.00,'2026-06-30'),(9,'Cricket Bat','SG',9,2000.00,2500.00,15,'SP001',5.00,NULL),(10,'Wall Clock','RFL',10,400.00,550.00,30,'HD001',5.00,NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
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
