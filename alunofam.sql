CREATE DATABASE  IF NOT EXISTS `alunofam` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `alunofam`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: alunofam
-- ------------------------------------------------------
-- Server version	5.6.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aluno`
--

DROP TABLE IF EXISTS `aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `aluno` (
  `ra` int(8) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `curso` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ra`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materia`
--

DROP TABLE IF EXISTS `materia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `materia` (
  `idmat` tinyint(4) NOT NULL,
  `nomemateria` varchar(30) DEFAULT NULL,
  `n1` decimal(5,2) DEFAULT NULL,
  `n2` decimal(5,2) DEFAULT NULL,
  `n3` decimal(5,2) DEFAULT NULL,
  `media` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`idmat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materia`
--

LOCK TABLES `materia` WRITE;
/*!40000 ALTER TABLE `materia` DISABLE KEYS */;
/*!40000 ALTER TABLE `materia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semestre`
--

DROP TABLE IF EXISTS `semestre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `semestre` (
  `idsem` tinyint(4) NOT NULL,
  `idaluno` int(8) DEFAULT NULL,
  PRIMARY KEY (`idsem`),
  KEY `idaluno` (`idaluno`),
  CONSTRAINT `semestre_ibfk_1` FOREIGN KEY (`idaluno`) REFERENCES `aluno` (`ra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semestre`
--

LOCK TABLES `semestre` WRITE;
/*!40000 ALTER TABLE `semestre` DISABLE KEYS */;
/*!40000 ALTER TABLE `semestre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semmat`
--

DROP TABLE IF EXISTS `semmat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `semmat` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `idsem` tinyint(4) DEFAULT NULL,
  `idmat` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idsem` (`idsem`),
  KEY `idmat` (`idmat`),
  CONSTRAINT `semmat_ibfk_1` FOREIGN KEY (`idsem`) REFERENCES `semestre` (`idsem`),
  CONSTRAINT `semmat_ibfk_2` FOREIGN KEY (`idmat`) REFERENCES `materia` (`idmat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semmat`
--

LOCK TABLES `semmat` WRITE;
/*!40000 ALTER TABLE `semmat` DISABLE KEYS */;
/*!40000 ALTER TABLE `semmat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'alunofam'
--

--
-- Dumping routines for database 'alunofam'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-13 10:09:14
