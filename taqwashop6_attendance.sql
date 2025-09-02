-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: taqwashop6
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
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance` (
  `attendanceID` int NOT NULL AUTO_INCREMENT,
  `staffID` int NOT NULL,
  `attendanceDate` date NOT NULL,
  `shiftID` int NOT NULL,
  `checkIn` time DEFAULT NULL,
  `checkOut` time DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Present',
  `notes` varchar(255) DEFAULT NULL,
  `hoursWorked` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`attendanceID`),
  KEY `staffID` (`staffID`),
  KEY `shiftID` (`shiftID`),
  CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`staffID`) REFERENCES `staff` (`staffID`),
  CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`shiftID`) REFERENCES `shift` (`shiftID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES (1,1,'2025-08-01',1,'07:55:00','16:05:00','Present',NULL,8.17),(2,2,'2025-08-01',1,'07:58:00','16:02:00','Present',NULL,8.07),(3,3,'2025-08-01',1,'08:00:00','16:00:00','Present',NULL,8.00),(4,4,'2025-08-01',2,'15:55:00','23:58:00','Present',NULL,8.05),(5,5,'2025-08-01',1,'08:05:00','16:10:00','Present',NULL,8.08),(6,6,'2025-08-01',1,'07:50:00','16:15:00','Present',NULL,8.42),(7,7,'2025-08-01',2,'16:00:00','23:55:00','Present',NULL,7.92),(8,8,'2025-08-01',3,'23:58:00','07:55:00','Present',NULL,7.95),(9,9,'2025-08-01',1,'08:10:00','16:05:00','Present',NULL,7.92),(10,10,'2025-08-01',1,'07:45:00','16:20:00','Present',NULL,8.58);
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-02 11:28:57
