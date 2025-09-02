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
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `productID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `quantity` int NOT NULL,
  `expiryDate` date DEFAULT NULL,
  `threshold` int NOT NULL,
  `supplierName` varchar(100) DEFAULT NULL,
  `purchasePrice` decimal(10,2) DEFAULT NULL,
  `sellingPrice` decimal(10,2) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Available',
  PRIMARY KEY (`productID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,'Milk 1L','Dairy','FreshFarm',50,'2025-09-05',10,'DairySuppliers Ltd',50.00,55.00,'Aisle 1','Available'),(2,'Bread','Bakery','BakeHouse',30,'2025-08-28',5,'BakeHouse Co',20.00,25.00,'Aisle 2','Available'),(3,'Eggs 12pcs','Dairy','HappyEgg',100,'2025-09-10',20,'EggSupplies Ltd',80.00,95.00,'Aisle 1','Available'),(4,'Butter 250g','Dairy','Creamy',40,'2025-09-15',10,'DairySuppliers Ltd',150.00,180.00,'Aisle 1','Available'),(5,'Cheese 500g','Dairy','Cheesy',25,'2025-10-01',5,'CheeseMakers',300.00,350.00,'Aisle 1','Available'),(6,'Apple 1kg','Fruit','Orchard',60,'2025-09-12',15,'FruitFarmers',120.00,150.00,'Aisle 3','Available'),(7,'Banana 1kg','Fruit','Tropical',80,'2025-08-30',20,'Tropical Ltd',60.00,75.00,'Aisle 3','Available'),(8,'Orange Juice 1L','Beverage','Juicy',45,'2025-09-20',10,'JuiceCo',90.00,100.00,'Aisle 4','Available'),(9,'Cereal 500g','Breakfast','Crunchy',35,'2026-01-01',5,'CerealSuppliers',180.00,200.00,'Aisle 5','Available'),(10,'Yogurt 500g','Dairy','FreshFarm',50,'2025-09-08',10,'DairySuppliers Ltd',100.00,120.00,'Aisle 1','Available');
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

-- Dump completed on 2025-09-02 11:29:06
