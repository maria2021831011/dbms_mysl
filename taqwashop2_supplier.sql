-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: taqwashop2
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
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `supplierID` int NOT NULL AUTO_INCREMENT,
  `supplierName` varchar(100) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `address` varchar(150) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `rating` decimal(3,2) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Active',
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`supplierID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'DairySuppliers Ltd','01710000001','Dhaka, Bangladesh','dairy@suppliers.com',4.50,'Active','2025-08-26 11:11:00','2025-08-26 11:11:00','Main dairy supplier'),(2,'BakeHouse Co','01710000002','Chittagong, Bangladesh','contact@bakehouse.com',4.00,'Active','2025-08-26 11:11:00','2025-08-26 11:11:00','Bread supplier'),(3,'EggSupplies Ltd','01710000003','Khulna, Bangladesh','eggs@supplies.com',4.20,'Active','2025-08-26 11:11:00','2025-08-26 11:11:00','Egg supplier'),(4,'CheeseMakers','01710000004','Sylhet, Bangladesh','cheese@makers.com',4.10,'Active','2025-08-26 11:11:00','2025-08-26 11:11:00','Cheese supplier'),(5,'FruitFarmers','01710000005','Rajshahi, Bangladesh','fruit@farmers.com',4.30,'Active','2025-08-26 11:11:00','2025-08-26 11:11:00','Fresh fruits supplier'),(6,'Fresh Dairy Ltd','01810000001','Dhaka, Bangladesh','freshdairy@email.com',4.50,'Active','2025-08-26 11:43:13','2025-08-26 11:43:13','Main dairy supplier'),(7,'Quality Bakery Co','01810000002','Chittagong, Bangladesh','qualitybakery@email.com',4.20,'Active','2025-08-26 11:43:13','2025-08-26 11:43:13','Bread and bakery supplier'),(8,'Fruit Paradise','01810000003','Khulna, Bangladesh','fruitparadise@email.com',4.30,'Active','2025-08-26 11:43:13','2025-08-26 11:43:13','Fresh fruits supplier'),(9,'Beverage World','01810000004','Sylhet, Bangladesh','beverageworld@email.com',4.10,'Active','2025-08-26 11:43:13','2025-08-26 11:43:13','Drinks supplier'),(10,'Cereal Masters','01810000005','Rajshahi, Bangladesh','cerealmasters@email.com',4.40,'Active','2025-08-26 11:43:13','2025-08-26 11:43:13','Breakfast items supplier'),(11,'Snack Time Ltd','01810000006','Barisal, Bangladesh','snacktime@email.com',4.00,'Active','2025-08-26 11:43:13','2025-08-26 11:43:13','Snacks supplier'),(12,'Personal Care Inc','01810000007','Dhaka, Bangladesh','personalcare@email.com',4.60,'Active','2025-08-26 11:43:13','2025-08-26 11:43:13','Personal care products'),(13,'Home Essentials','01810000008','Chittagong, Bangladesh','homeessentials@email.com',4.20,'Active','2025-08-26 11:43:13','2025-08-26 11:43:13','Household items'),(14,'Frozen Delights','01810000009','Khulna, Bangladesh','frozendelights@email.com',4.30,'Active','2025-08-26 11:43:13','2025-08-26 11:43:13','Frozen foods'),(15,'Baby Care Co','01810000010','Sylhet, Bangladesh','babycare@email.com',4.50,'Active','2025-08-26 11:43:13','2025-08-26 11:43:13','Baby products');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-02 11:29:08
