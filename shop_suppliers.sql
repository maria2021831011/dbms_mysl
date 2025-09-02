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
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `supplierID` int NOT NULL AUTO_INCREMENT,
  `supplierName` varchar(100) NOT NULL,
  `contactPerson` enum('Owner','Manager','Staff') DEFAULT 'Manager',
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `supplierType` enum('Grocery','Cosmetics','Beverages','Electronics','Clothing','Other') DEFAULT 'Other',
  `tradeLicense` varchar(50) DEFAULT NULL,
  `paymentTerms` enum('Advance','Partial','Complete') DEFAULT 'Complete',
  `status` enum('Active','Inactive') DEFAULT 'Active',
  `lastTransactionDate` date DEFAULT NULL,
  `duePayment` decimal(12,2) DEFAULT '0.00',
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`supplierID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (1,'ABC Traders','Owner','01711111101','abc@traders.com','Sylhet','Grocery','TL1001','Complete','Active','2025-08-20',5000.00,'2025-08-27 08:57:11','2025-08-27 08:57:11'),(2,'BeautyCo','Manager','01711111102','beautyco@sup.com','Sylhet','Cosmetics','TL1002','Partial','Active','2025-08-18',2000.00,'2025-08-27 08:57:11','2025-08-27 08:57:11'),(3,'JuiceHub','Staff','01711111103','juicehub@sup.com','Sylhet','Beverages','TL1003','Advance','Active','2025-08-19',0.00,'2025-08-27 08:57:11','2025-08-27 08:57:11'),(4,'StationeryMart','Owner','01711111104','stationery@sup.com','Sylhet','Other','TL1004','Complete','Active','2025-08-17',300.00,'2025-08-27 08:57:11','2025-08-27 08:57:11'),(5,'TechWorld','Manager','01711111105','techworld@sup.com','Sylhet','Electronics','TL1005','Partial','Active','2025-08-16',10000.00,'2025-08-27 08:57:11','2025-08-27 08:57:11'),(6,'FashionHouse','Owner','01711111106','fashion@sup.com','Sylhet','Clothing','TL1006','Complete','Active','2025-08-15',1500.00,'2025-08-27 08:57:11','2025-08-27 08:57:11'),(7,'ShoeZone','Staff','01711111107','shoes@sup.com','Sylhet','Other','TL1007','Partial','Active','2025-08-14',200.00,'2025-08-27 08:57:11','2025-08-27 08:57:11'),(8,'ToyLand','Manager','01711111108','toys@sup.com','Sylhet','Other','TL1008','Complete','Active','2025-08-13',0.00,'2025-08-27 08:57:11','2025-08-27 08:57:11'),(9,'HomeEssentials','Owner','01711111109','home@sup.com','Sylhet','Other','TL1009','Partial','Active','2025-08-12',1200.00,'2025-08-27 08:57:11','2025-08-27 08:57:11'),(10,'SnackKing','Manager','01711111110','snacks@sup.com','Sylhet','Other','TL1010','Complete','Active','2025-08-11',500.00,'2025-08-27 08:57:11','2025-08-27 08:57:11');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-02 11:28:50
