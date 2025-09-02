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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customerID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `gender` enum('Male','Female','Other') DEFAULT 'Male',
  `customerType` enum('Individual','Business','Wholesale') DEFAULT 'Individual',
  `customerStatus` enum('Regular','VIP','Inactive','Blocked') DEFAULT 'Regular',
  `joinDate` date NOT NULL,
  `lastPurchaseDate` date DEFAULT NULL,
  `totalSpending` decimal(12,2) DEFAULT '0.00',
  `loyaltyPoints` int DEFAULT '0',
  PRIMARY KEY (`customerID`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Rahim Uddin','01720000001','rahim@gmail.com','Sylhet','Male','Individual','Regular','2025-01-05','2025-08-20',5000.00,50),(2,'Salma Begum','01720000002','salma@gmail.com','Sylhet','Female','Individual','VIP','2025-02-10','2025-08-18',12000.00,200),(3,'Tanvir Hossain','01720000003','tanvir@gmail.com','Sylhet','Male','Wholesale','Regular','2025-03-15','2025-08-19',7500.00,100),(4,'Ayesha Khatun','01720000004','ayesha@gmail.com','Sylhet','Female','Business','Regular','2025-04-01','2025-08-17',3000.00,30),(5,'Sabbir Ahmed','01720000005','sabbir@gmail.com','Sylhet','Male','Individual','VIP','2025-05-20','2025-08-16',15000.00,250),(6,'Farhana Sultana','01720000006','farhana@gmail.com','Sylhet','Female','Business','Regular','2025-06-10','2025-08-15',4000.00,40),(7,'Rasel Mia','01720000007','rasel@gmail.com','Sylhet','Male','Wholesale','Regular','2025-07-05','2025-08-14',8000.00,80),(8,'Nabila Rahman','01720000008','nabila@gmail.com','Sylhet','Female','Individual','Regular','2025-01-20','2025-08-13',2500.00,25),(9,'Shakib Khan','01720000009','shakib@gmail.com','Sylhet','Male','Business','Regular','2025-03-10','2025-08-12',6000.00,60),(10,'Tania Akter','01720000010','tania@gmail.com','Sylhet','Female','Individual','VIP','2025-02-28','2025-08-11',10000.00,150);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
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
