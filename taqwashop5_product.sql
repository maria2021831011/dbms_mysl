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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `productID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text,
  `categoryID` int NOT NULL,
  `brandID` int NOT NULL,
  `supplierID` int NOT NULL,
  `purchasePrice` decimal(10,2) DEFAULT NULL,
  `sellingPrice` decimal(10,2) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Available',
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `weight` decimal(8,2) DEFAULT NULL,
  `dimensions` varchar(50) DEFAULT NULL,
  `barcode` varchar(100) DEFAULT NULL,
  `reorderLevel` int DEFAULT NULL,
  `taxRate` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`productID`),
  UNIQUE KEY `barcode` (`barcode`),
  KEY `categoryID` (`categoryID`),
  KEY `brandID` (`brandID`),
  KEY `supplierID` (`supplierID`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`categoryID`) REFERENCES `productcategory` (`categoryID`),
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`brandID`) REFERENCES `brand` (`brandID`),
  CONSTRAINT `product_ibfk_3` FOREIGN KEY (`supplierID`) REFERENCES `supplier` (`supplierID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Fresh Milk 1L','Pure fresh milk',6,1,1,55.00,65.00,'Available','2025-08-26 18:17:46','2025-08-26 18:17:46',NULL,NULL,'1234567890123',20,5.00),(2,'White Bread','Fresh white bread',9,2,2,25.00,30.00,'Available','2025-08-26 18:17:46','2025-08-26 18:17:46',NULL,NULL,'2345678901234',10,5.00),(3,'Apple 1kg','Fresh apples',3,8,3,120.00,150.00,'Available','2025-08-26 18:17:46','2025-08-26 18:17:46',NULL,NULL,'3456789012345',15,0.00),(4,'Orange Juice 1L','100% pure orange juice',4,3,4,90.00,110.00,'Available','2025-08-26 18:17:46','2025-08-26 18:17:46',NULL,NULL,'4567890123456',12,10.00),(5,'Corn Flakes 500g','Breakfast cereal',5,4,5,200.00,250.00,'Available','2025-08-26 18:17:46','2025-08-26 18:17:46',NULL,NULL,'5678901234567',8,5.00),(6,'Potato Chips','Crispy potato chips',4,3,6,20.00,25.00,'Available','2025-08-26 18:17:46','2025-08-26 18:17:46',NULL,NULL,'6789012345678',16,10.00),(7,'Toothpaste','Fresh breath toothpaste',4,7,7,45.00,60.00,'Available','2025-08-26 18:17:46','2025-08-26 18:17:46',NULL,NULL,'7890123456789',24,10.00),(8,'Dish Soap','Effective dish cleaning',4,7,8,35.00,45.00,'Available','2025-08-26 18:17:46','2025-08-26 18:17:46',NULL,NULL,'8901234567890',18,10.00),(9,'Ice Cream','Vanilla ice cream',4,5,9,150.00,180.00,'Available','2025-08-26 18:17:46','2025-08-26 18:17:46',NULL,NULL,'9012345678901',13,10.00),(10,'Baby Diapers','Comfortable baby diapers',4,10,10,300.00,350.00,'Available','2025-08-26 18:17:46','2025-08-26 18:17:46',NULL,NULL,'0123456789012',22,10.00);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-02 11:29:06
