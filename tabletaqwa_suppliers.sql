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
  `supplierType` enum('Grocery','Cosmetics','Beverages','Other') DEFAULT 'Other',
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
INSERT INTO `suppliers` VALUES (1,'Sylhet Grocery Ltd','Owner','01711000001','info@grocery.com','Zindabazar, Sylhet','Grocery','TL12345','Complete','Active','2025-08-25',0.00,'2025-09-02 00:42:26','2025-09-02 00:42:26'),(2,'BeautyCosmetics','Manager','01711000002','contact@cosmetics.com','Shibganj, Sylhet','Cosmetics','TL12346','Partial','Active','2025-08-20',5000.00,'2025-09-02 00:42:26','2025-09-02 00:42:26'),(3,'Beverage House','Owner','01711000003','sales@beverage.com','Ambarkhana, Sylhet','Beverages','TL12347','Advance','Active','2025-08-28',0.00,'2025-09-02 00:42:26','2025-09-02 00:42:26'),(4,'Fresh Foods','Manager','01711000004','fresh@foods.com','Kumarpara, Sylhet','Grocery','TL12348','Complete','Active','2025-08-22',2000.00,'2025-09-02 00:42:26','2025-09-02 00:42:26'),(5,'HealthPlus','Staff','01711000005','health@plus.com','Mirabazar, Sylhet','Cosmetics','TL12349','Partial','Active','2025-08-18',1500.00,'2025-09-02 00:42:26','2025-09-02 00:42:26'),(6,'Daily Essentials','Owner','01711000006','daily@essentials.com','Subidbazar, Sylhet','Grocery','TL12350','Complete','Active','2025-08-27',0.00,'2025-09-02 00:42:26','2025-09-02 00:42:26'),(7,'Tech Supplies','Manager','01711000007','tech@supplies.com','Chowhatta, Sylhet','Other','TL12351','Partial','Active','2025-08-30',3000.00,'2025-09-02 00:42:26','2025-09-02 00:42:26'),(8,'RFL Beverages','Owner','01711000008','rfl@beverages.com','Shahi Eidgah, Sylhet','Beverages','TL12352','Complete','Active','2025-08-29',0.00,'2025-09-02 00:42:26','2025-09-02 00:42:26'),(9,'Partex Furniture','Manager','01711000009','partex@furniture.com','Tilagor, Sylhet','Other','TL12353','Complete','Active','2025-08-25',0.00,'2025-09-02 00:42:26','2025-09-02 00:42:26'),(10,'Pathantula Traders','Staff','01711000010','pathantula@traders.com','Pathantula, Sylhet','Other','TL12354','Advance','Active','2025-08-31',1000.00,'2025-09-02 00:42:26','2025-09-02 00:42:26');
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

-- Dump completed on 2025-09-02 11:28:53
