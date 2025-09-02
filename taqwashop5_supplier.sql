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
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `supplierID` int NOT NULL AUTO_INCREMENT,
  `supplierName` varchar(100) NOT NULL,
  `contactPerson` varchar(100) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(150) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `rating` decimal(3,2) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Active',
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `notes` varchar(255) DEFAULT NULL,
  `paymentTerms` varchar(50) DEFAULT NULL,
  `accountNumber` varchar(50) DEFAULT NULL,
  `bankName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`supplierID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'Fresh Dairy Ltd','Mr. Khan','01810000001','Dhaka, Bangladesh','freshdairy@email.com',4.50,'Active','2025-08-26 18:17:46','2025-08-26 18:17:46',NULL,'Net 30','1234567890','DBBL'),(2,'Quality Bakery Co','Mr. Ahmed','01810000002','Chittagong, Bangladesh','qualitybakery@email.com',4.20,'Active','2025-08-26 18:17:46','2025-08-26 18:17:46',NULL,'Net 15','2345678901','BRAC Bank'),(3,'Fruit Paradise','Ms. Akter','01810000003','Khulna, Bangladesh','fruitparadise@email.com',4.30,'Active','2025-08-26 18:17:46','2025-08-26 18:17:46',NULL,'Net 30','3456789012','Islami Bank'),(4,'Beverage World','Mr. Islam','01810000004','Sylhet, Bangladesh','beverageworld@email.com',4.10,'Active','2025-08-26 18:17:46','2025-08-26 18:17:46',NULL,'Net 15','4567890123','City Bank'),(5,'Cereal Masters','Mr. Rahman','01810000005','Rajshahi, Bangladesh','cerealmasters@email.com',4.40,'Active','2025-08-26 18:17:46','2025-08-26 18:17:46',NULL,'Net 30','5678901234','Eastern Bank'),(6,'Snack Time Ltd','Ms. Jahan','01810000006','Barisal, Bangladesh','snacktime@email.com',4.00,'Active','2025-08-26 18:17:46','2025-08-26 18:17:46',NULL,'Net 15','6789012345','Prime Bank'),(7,'Personal Care Inc','Mr. Chowdhury','01810000007','Dhaka, Bangladesh','personalcare@email.com',4.60,'Active','2025-08-26 18:17:46','2025-08-26 18:17:46',NULL,'Net 30','7890123456','HSBC'),(8,'Home Essentials','Ms. Begum','01810000008','Chittagong, Bangladesh','homeessentials@email.com',4.20,'Active','2025-08-26 18:17:46','2025-08-26 18:17:46',NULL,'Net 15','8901234567','Standard Bank'),(9,'Frozen Delights','Mr. Uddin','01810000009','Khulna, Bangladesh','frozendelights@email.com',4.30,'Active','2025-08-26 18:17:46','2025-08-26 18:17:46',NULL,'Net 30','9012345678','Commercial Bank'),(10,'Baby Care Co','Ms. Khanum','01810000010','Sylhet, Bangladesh','babycare@email.com',4.50,'Active','2025-08-26 18:17:46','2025-08-26 18:17:46',NULL,'Net 15','0123456789','National Bank');
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

-- Dump completed on 2025-09-02 11:29:04
