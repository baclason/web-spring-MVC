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
-- Table structure for table `chitietsanpham`
--

DROP TABLE IF EXISTS `chitietsanpham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chitietsanpham` (
  `machitietsanpham` int NOT NULL AUTO_INCREMENT,
  `masanpham` int DEFAULT NULL,
  `masize` int DEFAULT NULL,
  `mamau` int DEFAULT NULL,
  `soluong` int DEFAULT NULL,
  `ngaynhap` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`machitietsanpham`),
  KEY `FK_chitietsanpham_sanpham` (`masanpham`),
  KEY `FK_chitietsanpham_mausanpham` (`mamau`),
  KEY `FK_chitietsanpham_sizesanpham` (`masize`),
  CONSTRAINT `FK_chitietsanpham_mausanpham` FOREIGN KEY (`mamau`) REFERENCES `mausanpham` (`mamau`),
  CONSTRAINT `FK_chitietsanpham_sanpham` FOREIGN KEY (`masanpham`) REFERENCES `sanpham` (`masanpham`),
  CONSTRAINT `FK_chitietsanpham_sizesanpham` FOREIGN KEY (`masize`) REFERENCES `sizesanpham` (`masize`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitietsanpham`
--

LOCK TABLES `chitietsanpham` WRITE;
/*!40000 ALTER TABLE `chitietsanpham` DISABLE KEYS */;
INSERT INTO `chitietsanpham` VALUES (1,1,1,1,1,NULL),(2,1,2,2,2,NULL),(3,1,3,3,3,NULL),(4,2,1,4,5,NULL),(5,2,2,5,4,NULL),(6,2,3,6,66,NULL),(7,2,4,7,4,NULL),(8,3,1,8,2,NULL),(9,3,3,9,3,NULL),(10,3,6,1,2,NULL),(11,4,1,2,3,NULL),(12,4,2,3,65,NULL),(13,4,3,4,6,NULL),(14,5,1,5,6,NULL),(15,5,5,6,65,NULL),(16,6,1,7,4,NULL),(17,6,3,8,8,NULL),(18,7,1,9,7,NULL),(19,7,2,1,9,NULL),(20,7,3,2,9,NULL),(21,8,1,3,12,NULL),(22,8,2,4,33,NULL),(23,9,3,5,22,NULL),(24,9,4,6,41,NULL),(25,10,5,7,32,NULL),(26,10,6,8,18,NULL),(27,10,1,9,1,NULL),(86,10,2,1,22,NULL),(87,10,3,2,33,NULL),(88,11,1,9,11,NULL),(89,11,2,8,4,NULL),(90,11,3,7,5,NULL),(91,12,4,6,6,NULL),(92,12,5,5,7,NULL),(93,12,6,4,8,NULL),(94,13,1,3,9,NULL),(95,13,2,2,4,NULL),(96,14,3,1,5,NULL),(97,14,4,9,6,NULL),(98,14,5,8,3,NULL),(99,15,6,7,2,NULL),(100,15,1,1,8,NULL),(101,15,2,2,7,NULL),(102,15,3,3,9,NULL),(103,16,4,4,6,NULL),(104,16,5,5,5,NULL),(105,16,6,6,1,NULL),(106,17,1,7,22,NULL),(107,17,2,8,3,NULL),(108,17,3,9,5,NULL),(109,17,4,1,6,NULL),(110,18,5,2,9,NULL),(111,18,6,3,8,NULL),(112,18,1,4,7,NULL),(113,19,2,5,4,NULL),(114,19,3,6,5,NULL),(115,19,4,7,6,NULL),(116,20,5,8,5,NULL),(117,20,6,9,2,NULL),(118,20,1,1,3,NULL),(119,21,2,9,6,NULL),(120,21,3,7,9,NULL),(121,21,4,6,8,NULL),(122,22,5,1,7,NULL),(123,22,6,2,5,NULL),(124,22,1,3,6,NULL),(125,22,2,4,5,NULL),(126,23,3,1,2,NULL),(127,23,4,2,3,NULL),(128,23,5,3,6,NULL),(129,23,6,4,5,NULL),(130,24,1,5,8,NULL),(131,24,2,6,9,NULL),(132,24,3,7,7,NULL),(133,25,4,8,4,NULL),(134,25,5,9,5,NULL),(135,26,1,1,6,NULL),(136,26,2,2,5,NULL);
/*!40000 ALTER TABLE `chitietsanpham` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-11 21:16:24
