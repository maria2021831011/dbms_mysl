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
-- Table structure for table `customerfeedback`
--

DROP TABLE IF EXISTS `customerfeedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customerfeedback` (
  `feedbackID` int NOT NULL AUTO_INCREMENT,
  `customerID` int NOT NULL,
  `orderID` int DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `comments` text,
  `feedbackDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(20) DEFAULT 'New',
  `respondedBy` int DEFAULT NULL,
  `response` text,
  `responseDate` datetime DEFAULT NULL,
  PRIMARY KEY (`feedbackID`),
  KEY `customerID` (`customerID`),
  KEY `orderID` (`orderID`),
  KEY `respondedBy` (`respondedBy`),
  CONSTRAINT `customerfeedback_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`),
  CONSTRAINT `customerfeedback_ibfk_2` FOREIGN KEY (`orderID`) REFERENCES `customerorder` (`orderID`),
  CONSTRAINT `customerfeedback_ibfk_3` FOREIGN KEY (`respondedBy`) REFERENCES `staff` (`staffID`),
  CONSTRAINT `customerfeedback_chk_1` CHECK ((`rating` between 1 and 5))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerfeedback`
--

LOCK TABLES `customerfeedback` WRITE;
/*!40000 ALTER TABLE `customerfeedback` DISABLE KEYS */;
INSERT INTO `customerfeedback` VALUES (1,1,1,5,'Excellent service and fresh products','2025-08-26 18:41:30','Resolved',1,'Thank you for your feedback!',NULL),(2,2,2,4,'Good experience but waiting time was a bit long','2025-08-26 18:41:30','Resolved',2,'We appreciate your feedback and will work on reducing wait times.',NULL),(3,3,3,5,'Best grocery store in town!','2025-08-26 18:41:30','Resolved',1,'We are glad you enjoyed your shopping experience!',NULL),(4,4,4,3,'Products were good but some items were out of stock','2025-08-26 18:41:30','Pending',NULL,NULL,NULL),(5,5,5,4,'Friendly staff and clean store','2025-08-26 18:41:30','Resolved',2,'Thank you for your kind words!',NULL),(6,6,6,5,'Quick checkout process','2025-08-26 18:41:30','Resolved',1,'We are happy to hear that!',NULL),(7,7,7,2,'Some products were near expiration date','2025-08-26 18:41:30','Pending',NULL,NULL,NULL),(8,8,8,4,'Good prices and quality','2025-08-26 18:41:30','Resolved',2,'Thank you for shopping with us!',NULL),(9,9,9,5,'Great discount offers','2025-08-26 18:41:30','Resolved',1,'We are glad you liked our offers!',NULL),(10,10,10,3,'Average experience, nothing special','2025-08-26 18:41:30','Pending',NULL,NULL,NULL);
/*!40000 ALTER TABLE `customerfeedback` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-02 11:28:56
