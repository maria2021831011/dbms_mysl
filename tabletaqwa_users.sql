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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userID` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `passwordHash` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `roleID` int NOT NULL,
  `isActive` tinyint(1) DEFAULT '1',
  `lastLogin` datetime DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`userID`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`),
  KEY `roleID` (`roleID`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`roleID`) REFERENCES `roles` (`roleID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','hashed_password1','admin@taqwa.com','01710000001','Zindabazar, Sylhet',1,1,NULL,'2025-09-02 00:39:29','2025-09-02 00:39:29'),(2,'sale_mgr','hashed_password2','sales.manager@taqwa.com','01710000002','Shibganj, Sylhet',2,1,NULL,'2025-09-02 00:39:29','2025-09-02 00:39:29'),(3,'inventory_mgr','hashed_password3','inventory@taqwa.com','01710000003','Ambarkhana, Sylhet',3,1,NULL,'2025-09-02 00:39:29','2025-09-02 00:39:29'),(4,'cashier1','hashed_password4','cashier1@taqwa.com','01710000004','Kumarpara, Sylhet',4,1,NULL,'2025-09-02 00:39:29','2025-09-02 00:39:29'),(5,'cust_support','hashed_password5','support@taqwa.com','01710000005','Mirabazar, Sylhet',5,1,NULL,'2025-09-02 00:39:29','2025-09-02 00:39:29'),(6,'accountant1','hashed_password6','accountant@taqwa.com','01710000006','Subidbazar, Sylhet',6,1,NULL,'2025-09-02 00:39:29','2025-09-02 00:39:29'),(7,'hr_mgr','hashed_password7','hr@taqwa.com','01710000007','Chowhatta, Sylhet',7,1,NULL,'2025-09-02 00:39:29','2025-09-02 00:39:29'),(8,'report_analyst','hashed_password8','reports@taqwa.com','01710000008','Shahi Eidgah, Sylhet',8,1,NULL,'2025-09-02 00:39:29','2025-09-02 00:39:29'),(9,'supplier_mgr','hashed_password9','supplier@taqwa.com','01710000009','Tilagor, Sylhet',9,1,NULL,'2025-09-02 00:39:29','2025-09-02 00:39:29'),(10,'assistant_mgr','hashed_password10','assistant@taqwa.com','01710000010','Pathantula, Sylhet',10,1,NULL,'2025-09-02 00:39:29','2025-09-02 00:39:29');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
