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
  UNIQUE KEY `barcode` (`barcode`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Rice 5kg','BestGrain',1,400.00,450.00,100,'BR001',5.00,'2026-12-31'),(2,'Sugar 2kg','SweetHome',1,120.00,150.00,200,'BR002',5.00,'2026-11-30'),(3,'Shampoo 500ml','CleanCo',2,200.00,250.00,150,'BR003',12.00,'2025-12-31'),(4,'Soap 100g','BathCare',2,30.00,40.00,300,'BR004',12.00,'2026-06-30'),(5,'Juice Pack 1L','FruitKing',3,80.00,100.00,120,'BR005',8.00,'2025-09-30'),(6,'Chocolate 100g','ChocoLux',3,50.00,60.00,250,'BR006',8.00,'2026-01-31'),(7,'Laptop 15inch','TechWorld',4,45000.00,50000.00,10,'BR007',15.00,NULL),(8,'T-Shirt Large','FashionHouse',5,300.00,400.00,50,'BR008',12.00,NULL),(9,'Sneakers 42','ShoeZone',6,1200.00,1500.00,30,'BR009',12.00,NULL),(10,'Toy Car','ToyLand',7,150.00,200.00,80,'BR010',5.00,NULL);
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

-- Dump completed on 2025-09-02 11:28:51
