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
-- Table structure for table `inventorymanagement`
--

DROP TABLE IF EXISTS `inventorymanagement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventorymanagement` (
  `inventoryID` int NOT NULL AUTO_INCREMENT,
  `productID` int NOT NULL,
  `changeType` enum('IN','OUT') NOT NULL,
  `quantity` int NOT NULL,
  `changeDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `remarks` text,
  PRIMARY KEY (`inventoryID`),
  KEY `productID` (`productID`),
  CONSTRAINT `inventorymanagement_ibfk_1` FOREIGN KEY (`productID`) REFERENCES `products` (`productID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventorymanagement`
--

LOCK TABLES `inventorymanagement` WRITE;
/*!40000 ALTER TABLE `inventorymanagement` DISABLE KEYS */;
INSERT INTO `inventorymanagement` VALUES (1,1,'IN',50,'2025-09-02 00:53:07','Initial stock of Miniket Rice'),(2,2,'IN',20,'2025-09-02 00:53:07','New shipment of Samsung Galaxy A15'),(3,3,'IN',40,'2025-09-02 00:53:07','Cotton Saree stock added'),(4,4,'IN',60,'2025-09-02 00:53:07','Leather Sandals received'),(5,5,'IN',100,'2025-09-02 00:53:07','Fair & Lovely Cream stock'),(6,8,'IN',500,'2025-09-02 00:53:07','Paracetamol stock replenished'),(7,1,'OUT',5,'2025-09-02 00:53:07','Sold to customer'),(8,3,'OUT',3,'2025-09-02 00:53:07','Sold during promotion'),(9,4,'OUT',7,'2025-09-02 00:53:07','Sold at store'),(10,2,'OUT',2,'2025-09-02 00:53:07','Sold online order');
/*!40000 ALTER TABLE `inventorymanagement` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-02 11:28:54
