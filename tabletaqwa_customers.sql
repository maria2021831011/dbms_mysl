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
  `joinDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
INSERT INTO `customers` VALUES (1,'Abdul Karim','01710000001','abdul.karim@example.com','Zindabazar, Sylhet','Male','Individual','Regular','2025-09-02 00:24:24','2025-08-25',12000.50,120),(2,'Maria Tasnia','01710000002','maria.tasnia@example.com','Shibganj, Sylhet','Female','Individual','VIP','2025-09-02 00:24:24','2025-08-28',54000.00,540),(3,'Shahriar Sajib','01710000003','sajib.shahriar@example.com','Ambarkhana, Sylhet','Male','Business','Regular','2025-09-02 00:24:24','2025-08-20',35500.75,350),(4,'Nusrat Jahan','01710000004','nusrat.jahan@example.com','Kumarpara, Sylhet','Female','Wholesale','Regular','2025-09-02 00:24:24','2025-08-22',88000.00,900),(5,'Rahim Uddin','01710000005','rahim.uddin@example.com','Mirabazar, Sylhet','Male','Individual','Inactive','2025-09-02 00:24:24','2025-07-15',6000.00,60),(6,'Farzana Akter','01710000006','farzana.akter@example.com','Subidbazar, Sylhet','Female','Business','Regular','2025-09-02 00:24:24','2025-08-29',27000.00,275),(7,'Imran Hossain','01710000007','imran.hossain@example.com','Chowhatta, Sylhet','Male','Individual','Blocked','2025-09-02 00:24:24','2025-06-10',1500.00,10),(8,'Anika Chowdhury','01710000008','anika.chowdhury@example.com','Shahi Eidgah, Sylhet','Female','Individual','Regular','2025-09-02 00:24:24','2025-08-30',9800.00,95),(9,'Mahfuz Ahmed','01710000009','mahfuz.ahmed@example.com','Tilagor, Sylhet','Male','Wholesale','VIP','2025-09-02 00:24:24','2025-08-27',150000.00,1500),(10,'Tanjila Sultana','01710000010','tanjila.sultana@example.com','Pathantula, Sylhet','Female','Business','Regular','2025-09-02 00:24:24','2025-08-31',33000.00,330);
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

-- Dump completed on 2025-09-02 11:28:53
