-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: ddshop
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sanpham` (
  `masanpham` int NOT NULL AUTO_INCREMENT,
  `madanhmuc` int DEFAULT NULL,
  `tensanpham` varchar(200) DEFAULT NULL,
  `giatien` varchar(50) DEFAULT NULL,
  `mota` text,
  `hinhsanpham` text,
  PRIMARY KEY (`masanpham`),
  KEY `FK_sanpham_danhmucsanpham` (`madanhmuc`),
  CONSTRAINT `FK_sanpham_danhmucsanpham` FOREIGN KEY (`madanhmuc`) REFERENCES `danhmucsanpham` (`madanhmuc`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanpham`
--

LOCK TABLES `sanpham` WRITE;
/*!40000 ALTER TABLE `sanpham` DISABLE KEYS */;
INSERT INTO `sanpham` VALUES (1,7,'Áo polo nam AP-0642','250.000',NULL,NULL),(2,7,'Áo Polo Nam APN19-0607','250.000',NULL,NULL),(3,2,'Áo thun kẻ ngang AT-0611','200.000',NULL,NULL),(4,10,'Balo TX-658','800.000',NULL,NULL),(5,9,'Boots da nam cao cấp G-0555','1.200.000',NULL,NULL),(6,9,'Chelsea boots cao cấp G-0575','1.200.000',NULL,NULL),(7,11,'Quần Âu Công Sở QH19-0627','450.000',NULL,NULL),(8,11,'Quần Âu Nam QH19-0605','450.000',NULL,NULL),(9,4,'Quần jean đen rách gối Q-0586','650.000',NULL,NULL),(10,4,'Quần Jean MIIX QS19-0631','550.000',NULL,NULL),(11,4,'Quần jogger kaki Q-0589','400.000',NULL,NULL),(12,12,'Quần Kaki nam QS18-0499','600.000',NULL,NULL),(13,3,'Quần ngố kaki Q-0591','300.000',NULL,NULL),(14,3,'Quần ngố vải đũi Q-0609','300.000',NULL,NULL),(15,3,'Quần Short Nam QNS19-0633','300.000',NULL,NULL),(16,1,'Sơ mi cộc tay họa tiết SM-0620','350.000',NULL,NULL),(17,1,'Sơ mi cộc tay vẩy sơn SM-0619','650.000',NULL,NULL),(18,1,'Sơ mi công sở nam SM-0600 (Sợi tre Bamboo)','800.000',NULL,NULL),(19,1,'Sơ mi Flannel nam SM-0637','430.000',NULL,NULL),(20,1,'Sơ mi nam SM-0616','520.000',NULL,NULL),(21,1,'Sơ mi trơn sợi Modal SM-0582','620.000',NULL,NULL),(22,13,'Thắt Lưng Da Nam TLC18-0236','1.000.000',NULL,NULL),(23,13,'Thắt lưng nam TL-636','900.000',NULL,NULL),(24,10,'Túi Xách Nam TXC18-0247','2.000.000',NULL,NULL),(25,10,'Ví da nam V-0472','1.500.000','',NULL),(26,10,'Ví Da Nam VC18-0252','680.000',NULL,NULL);
/*!40000 ALTER TABLE `sanpham` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-11 21:16:23
