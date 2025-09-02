-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: taqwashop
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
-- Table structure for table `purchaseorder`
--

DROP TABLE IF EXISTS `purchaseorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchaseorder` (
  `orderID` int NOT NULL AUTO_INCREMENT,
  `supplierID` int NOT NULL,
  `productList` text NOT NULL,
  `deliveryDate` date NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Pending',
  `totalAmount` decimal(10,2) DEFAULT NULL,
  `createdBy` varchar(50) DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `remarks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`orderID`),
  KEY `supplierID` (`supplierID`),
  CONSTRAINT `purchaseorder_ibfk_1` FOREIGN KEY (`supplierID`) REFERENCES `supplier` (`supplierID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchaseorder`
--

LOCK TABLES `purchaseorder` WRITE;
/*!40000 ALTER TABLE `purchaseorder` DISABLE KEYS */;
INSERT INTO `purchaseorder` VALUES (1,1,'101:50,110:30','2025-08-30','Pending',10000.00,'Owner','2025-08-25 23:59:10','2025-08-25 23:59:10','Monthly dairy stock'),(2,2,'102:40','2025-08-28','Delivered',2000.00,'Owner','2025-08-25 23:59:10','2025-08-25 23:59:10','Bread replenishment'),(3,3,'103:60','2025-09-01','Pending',5000.00,'Owner','2025-08-25 23:59:10','2025-08-25 23:59:10','Egg order for week'),(4,4,'105:20','2025-08-29','Delivered',7000.00,'Owner','2025-08-25 23:59:10','2025-08-25 23:59:10','Cheese stock'),(5,5,'106:100,107:80','2025-09-03','Pending',12000.00,'Owner','2025-08-25 23:59:10','2025-08-25 23:59:10','Fruit order'),(6,1,'104:25','2025-09-05','Pending',4000.00,'Owner','2025-08-25 23:59:10','2025-08-25 23:59:10','Butter replenishment'),(7,2,'102:30','2025-09-02','Pending',1500.00,'Owner','2025-08-25 23:59:10','2025-08-25 23:59:10','Extra bread stock'),(8,3,'103:40','2025-09-06','Pending',3500.00,'Owner','2025-08-25 23:59:10','2025-08-25 23:59:10','Egg replenishment'),(9,4,'105:15','2025-09-07','Pending',5000.00,'Owner','2025-08-25 23:59:10','2025-08-25 23:59:10','Cheese order'),(10,5,'106:50,107:50','2025-09-08','Pending',8000.00,'Owner','2025-08-25 23:59:10','2025-08-25 23:59:10','Fruit replenishment');
/*!40000 ALTER TABLE `purchaseorder` ENABLE KEYS */;
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
