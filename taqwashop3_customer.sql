-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: taqwashop3
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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customerID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `customerPoints` int DEFAULT '0',
  `joinDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(100) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `loyaltyTier` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Active',
  `lastPurchaseDate` date DEFAULT NULL,
  `totalSpent` decimal(12,2) DEFAULT '0.00',
  `preferredPaymentMethod` varchar(20) DEFAULT NULL,
  `notes` text,
  PRIMARY KEY (`customerID`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Ahmed Rahman','01711111111','123 Main Road, Sylhet',500,'2025-08-26 17:48:05','ahmed@email.com','Male','1985-03-15','Gold','Active','2025-08-20',15000.00,'Cash',NULL),(2,'Fatima Begum','01711111112','456 Park Street, Sylhet',300,'2025-08-26 17:48:05','fatima@email.com','Female','1990-07-22','Silver','Active','2025-08-19',8000.00,'Card',NULL),(3,'Karim Uddin','01711111113','789 Market Lane, Sylhet',750,'2025-08-26 17:48:05','karim@email.com','Male','1988-11-30','Platinum','Active','2025-08-18',25000.00,'Mobile Banking',NULL),(4,'Ayesha Akter','01711111114','321 Garden Road, Sylhet',150,'2025-08-26 17:48:05','ayesha@email.com','Female','1992-05-18','Bronze','Active','2025-08-17',3000.00,'Cash',NULL),(5,'Rahim Khan','01711111115','654 Hill View, Sylhet',600,'2025-08-26 17:48:05','rahim@email.com','Male','1980-12-25','Gold','Active','2025-08-16',18000.00,'Card',NULL),(6,'Sultana Jahan','01711111116','987 Valley Road, Sylhet',200,'2025-08-26 17:48:05','sultana@email.com','Female','1995-02-14','Silver','Active','2025-08-15',5000.00,'Cash',NULL),(7,'Jamal Hossain','01711111117','147 Lake Side, Sylhet',400,'2025-08-26 17:48:05','jamal@email.com','Male','1987-09-09','Gold','Active','2025-08-14',12000.00,'Card',NULL),(8,'Nadia Islam','01711111118','258 River View, Sylhet',100,'2025-08-26 17:48:05','nadia@email.com','Female','1993-04-07','Bronze','Active','2025-08-13',2000.00,'Cash',NULL),(9,'Tarek Ahmed','01711111119','369 Mountain Road, Sylhet',850,'2025-08-26 17:48:05','tarek@email.com','Male','1983-08-19','Platinum','Active','2025-08-12',30000.00,'Mobile Banking',NULL),(10,'Sabrina Chowdhury','01711111120','741 Forest Lane, Sylhet',250,'2025-08-26 17:48:05','sabrina@email.com','Female','1991-06-12','Silver','Active','2025-08-11',6000.00,'Card',NULL);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-02 11:28:46
