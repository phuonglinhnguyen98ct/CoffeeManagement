CREATE DATABASE `qlquancafe` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE [qlquancafe];
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: qlquancafe
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 /* SET NAMES utf8 ; */
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS [account];
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET @character_set_client = utf8mb4 ;
CREATE TABLE account (
  [username] varchar(45) NOT NULL,
  [password] varchar(45) NOT NULL,
  [staffId] int DEFAULT NULL,
  PRIMARY KEY ([username])
 ,
  CONSTRAINT [staffId] FOREIGN KEY ([staffId]) REFERENCES staff ([id])
) ;

CREATE INDEX [staffId_idx] ON account ([staffId]);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES [account] WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO account VALUES ('cashier1','Cashier123',37),('cashier2','Cashier123',47),('manager','Manager123',41);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS [bill];
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET @character_set_client = utf8mb4 ;
CREATE TABLE bill (
  [id] int NOT NULL IDENTITY,
  [checkIn] datetime2(0) DEFAULT NULL,
  [checkOut] datetime2(0) DEFAULT NULL,
  [totalCost] int DEFAULT NULL,
  [billStatus] int DEFAULT '0',
  [staffId] int DEFAULT NULL,
  PRIMARY KEY ([id]),
  CONSTRAINT [id_UNIQUE] UNIQUE  ([id])
 ,
  CONSTRAINT [staffId_in_bill] FOREIGN KEY ([staffId]) REFERENCES staff ([id])
)  ;

CREATE INDEX [staffId_idx1] ON bill ([staffId]);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES [bill] WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO bill VALUES (102,'2018-11-01 20:14:45','2018-11-01 20:15:53',20000,1,37),(103,'2018-11-01 20:14:46','2018-11-01 20:15:53',40000,1,37),(104,'2018-11-01 20:14:47','2018-11-01 20:15:53',60000,1,37),(105,'2018-11-01 20:14:48','2018-11-01 20:15:53',212000,1,37),(106,'2018-11-01 20:14:48','2018-11-01 20:15:53',60000,1,37),(107,'2018-11-01 20:14:49','2018-11-01 20:15:53',140000,1,37),(108,'2018-11-01 20:14:50','2018-11-01 20:15:53',132000,1,37),(109,'2018-11-01 20:14:52','2018-11-01 20:15:53',20000,1,37),(110,'2018-11-02 20:16:19','2018-11-02 20:16:32',60000,1,37),(111,'2018-11-02 20:16:20','2018-11-02 20:16:32',20000,1,37),(112,'2018-11-02 20:16:21','2018-11-02 20:16:32',60000,1,37),(113,'2018-11-02 20:16:22','2018-11-02 20:16:32',20000,1,37),(114,'2018-11-02 20:16:22','2018-11-02 20:16:32',75000,1,37),(115,'2018-11-02 20:16:23','2018-11-02 20:16:32',72000,1,37),(116,'2018-11-02 20:16:24','2018-11-02 20:16:32',63000,1,37),(117,'2018-11-02 20:16:24','2018-11-02 20:16:32',68000,1,37),(118,'2018-11-03 20:16:46','2018-11-03 20:16:51',44000,1,37),(119,'2018-11-03 20:16:46','2018-11-03 20:16:51',44000,1,37),(120,'2018-11-03 20:16:46','2018-11-03 20:16:51',63000,1,37),(121,'2018-11-03 20:16:47','2018-11-03 20:16:51',92000,1,37),(122,'2018-11-03 20:16:47','2018-11-03 20:16:51',108000,1,37),(123,'2018-11-03 20:16:48','2018-11-03 20:16:51',87000,1,37),(124,'2018-11-03 20:16:48','2018-11-03 20:16:51',112000,1,37),(125,'2018-11-03 20:16:49','2018-11-03 20:16:51',40000,1,37),(126,'2018-11-04 20:17:25','2018-11-04 20:17:31',132000,1,37),(127,'2018-11-04 20:17:25','2018-11-04 20:17:31',73000,1,37),(128,'2018-11-04 20:17:25','2018-11-04 20:17:31',60000,1,37),(129,'2018-11-04 20:17:26','2018-11-04 20:17:31',70000,1,37),(130,'2018-11-04 20:17:26','2018-11-04 20:17:31',140000,1,37),(131,'2018-11-04 20:17:27','2018-11-04 20:17:31',60000,1,37),(132,'2018-11-04 20:17:27','2018-11-04 20:17:31',99000,1,37),(133,'2018-11-04 20:17:28','2018-11-04 20:17:31',80000,1,37),(134,'2018-11-04 20:17:28','2018-11-04 20:17:31',20000,1,37),(135,'2018-11-05 20:17:38','2018-11-05 20:17:44',33000,1,37),(136,'2018-11-05 20:17:38','2018-11-05 20:17:44',105000,1,37),(137,'2018-11-05 20:17:39','2018-11-05 20:17:44',84000,1,37),(138,'2018-11-05 20:17:39','2018-11-05 20:17:44',40000,1,37),(139,'2018-11-05 20:17:39','2018-11-05 20:17:44',150000,1,37),(140,'2018-11-05 20:17:40','2018-11-05 20:17:44',46000,1,37),(141,'2018-11-05 20:17:40','2018-11-05 20:17:44',33000,1,37),(142,'2018-11-05 20:17:41','2018-11-05 20:17:44',112000,1,37),(143,'2018-11-05 20:17:42','2018-11-05 20:17:44',66000,1,37),(144,'2018-11-06 20:17:56','2018-11-06 20:18:00',80000,1,37),(145,'2018-11-06 20:17:57','2018-11-06 20:18:00',105000,1,37),(146,'2018-11-06 20:17:57','2018-11-06 20:18:00',55000,1,37),(147,'2018-11-06 20:17:58','2018-11-06 20:18:00',80000,1,37),(148,'2018-11-06 20:17:58','2018-11-06 20:18:00',60000,1,37),(149,'2018-11-06 20:17:58','2018-11-06 20:18:00',42000,1,37),(150,'2018-11-06 20:17:59','2018-11-06 20:18:00',22000,1,37),(151,'2018-11-06 20:17:59','2018-11-06 20:18:00',84000,1,37),(152,'2018-11-06 20:18:00','2018-11-06 20:18:00',60000,1,37),(153,'2018-11-07 20:18:22','2018-11-07 20:18:27',60000,1,37),(154,'2018-11-07 20:18:23','2018-11-07 20:18:27',105000,1,37),(155,'2018-11-07 20:18:23','2018-11-07 20:18:27',15000,1,37),(156,'2018-11-07 20:18:23','2018-11-07 20:18:27',20000,1,37),(157,'2018-11-07 20:18:24','2018-11-07 20:18:27',60000,1,37),(158,'2018-11-07 20:18:24','2018-11-07 20:18:27',84000,1,37),(159,'2018-11-07 20:18:24','2018-11-07 20:18:27',25000,1,37),(160,'2018-11-07 20:18:25','2018-11-07 20:18:27',20000,1,37),(161,'2018-11-07 20:18:25','2018-11-07 20:18:27',20000,1,37),(162,'2018-11-07 20:18:26','2018-11-07 20:18:27',33000,1,37),(163,'2018-11-08 20:18:37','2018-11-08 20:18:41',84000,1,37),(164,'2018-11-08 20:18:37','2018-11-08 20:18:41',132000,1,37),(165,'2018-11-08 20:18:38','2018-11-08 20:18:41',75000,1,37),(166,'2018-11-08 20:18:38','2018-11-08 20:18:41',60000,1,37),(167,'2018-11-08 20:18:38','2018-11-08 20:18:41',20000,1,37),(168,'2018-11-08 20:18:39','2018-11-08 20:18:41',21000,1,37),(169,'2018-11-08 20:18:39','2018-11-08 20:18:41',35000,1,37),(170,'2018-11-08 20:18:40','2018-11-08 20:18:41',99000,1,37),(171,'2018-11-08 20:18:40','2018-11-08 20:18:41',80000,1,37),(172,'2018-11-08 20:18:40','2018-11-08 20:18:41',92000,1,37),(173,'2018-11-09 20:18:49','2018-11-09 20:18:53',43000,1,37),(174,'2018-11-09 20:18:50','2018-11-09 20:18:53',25000,1,37),(175,'2018-11-09 20:18:50','2018-11-09 20:18:53',60000,1,37),(176,'2018-11-09 20:18:50','2018-11-09 20:18:53',132000,1,37),(177,'2018-11-09 20:18:50','2018-11-09 20:18:53',28000,1,37),(178,'2018-11-09 20:18:51','2018-11-09 20:18:53',20000,1,37),(179,'2018-11-09 20:18:51','2018-11-09 20:18:53',66000,1,37),(180,'2018-11-09 20:18:52','2018-11-09 20:18:53',69000,1,37),(181,'2018-11-09 20:18:52','2018-11-09 20:18:54',35000,1,37),(182,'2018-11-10 20:19:24','2018-11-10 20:19:30',60000,1,37),(183,'2018-11-10 20:19:24','2018-11-10 20:19:30',101000,1,37),(184,'2018-11-10 20:19:25','2018-11-10 20:19:30',80000,1,37),(185,'2018-11-10 20:19:25','2018-11-10 20:19:30',123000,1,37),(186,'2018-11-10 20:19:25','2018-11-10 20:19:30',20000,1,37),(187,'2018-11-10 20:19:26','2018-11-10 20:19:30',40000,1,37),(188,'2018-11-10 20:19:27','2018-11-10 20:19:30',40000,1,37),(189,'2018-11-10 20:19:28','2018-11-10 20:19:30',40000,1,37),(190,'2018-11-11 20:19:38','2018-11-11 20:19:42',70000,1,37),(191,'2018-11-11 20:19:38','2018-11-11 20:19:42',20000,1,37),(192,'2018-11-11 20:19:38','2018-11-11 20:19:42',33000,1,37),(193,'2018-11-11 20:19:39','2018-11-11 20:19:42',40000,1,37),(194,'2018-11-11 20:19:39','2018-11-11 20:19:42',66000,1,37),(195,'2018-11-11 20:19:39','2018-11-11 20:19:42',60000,1,37),(196,'2018-11-11 20:19:40','2018-11-11 20:19:42',42000,1,37),(197,'2018-11-11 20:19:40','2018-11-11 20:19:42',69000,1,37),(198,'2018-11-11 20:19:40','2018-11-11 20:19:42',60000,1,37),(199,'2018-11-11 20:19:41','2018-11-11 20:19:42',66000,1,37),(200,'2018-11-12 20:19:53','2018-11-12 20:19:58',80000,1,37),(201,'2018-11-12 20:19:53','2018-11-12 20:19:58',141000,1,37),(202,'2018-11-12 20:19:54','2018-11-12 20:19:58',20000,1,37),(203,'2018-11-12 20:19:54','2018-11-12 20:19:58',35000,1,37),(204,'2018-11-12 20:19:54','2018-11-12 20:19:58',60000,1,37),(205,'2018-11-12 20:19:55','2018-11-12 20:19:58',70000,1,37),(206,'2018-11-12 20:19:55','2018-11-12 20:19:58',46000,1,37),(207,'2018-11-12 20:19:56','2018-11-12 20:19:58',20000,1,37),(208,'2018-11-12 20:19:56','2018-11-12 20:19:58',84000,1,37),(209,'2018-11-13 20:20:22','2018-11-13 20:20:27',80000,1,37),(210,'2018-11-13 20:20:23','2018-11-13 20:20:27',20000,1,37),(211,'2018-11-13 20:20:23','2018-11-13 20:20:27',100000,1,37),(212,'2018-11-13 20:20:24','2018-11-13 20:20:27',80000,1,37),(213,'2018-11-13 20:20:24','2018-11-13 20:20:27',60000,1,37),(214,'2018-11-13 20:20:25','2018-11-13 20:20:27',60000,1,37),(215,'2018-11-13 20:20:25','2018-11-13 20:20:27',30000,1,37),(216,'2018-11-13 20:20:26','2018-11-13 20:20:27',35000,1,37),(217,'2018-11-14 20:20:35','2018-11-14 20:20:40',86000,1,37),(218,'2018-11-14 20:20:36','2018-11-14 20:20:40',140000,1,37),(219,'2018-11-14 20:20:36','2018-11-14 20:20:40',40000,1,37),(220,'2018-11-14 20:20:37','2018-11-14 20:20:40',84000,1,37),(221,'2018-11-14 20:20:37','2018-11-14 20:20:40',20000,1,37),(222,'2018-11-14 20:20:37','2018-11-14 20:20:40',123000,1,37),(223,'2018-11-14 20:20:38','2018-11-14 20:20:40',56000,1,37),(224,'2018-11-14 20:20:39','2018-11-14 20:20:40',105000,1,37),(225,'2018-11-15 20:20:47','2018-11-15 20:20:51',88000,1,37),(226,'2018-11-15 20:20:48','2018-11-15 20:20:51',75000,1,37),(227,'2018-11-15 20:20:48','2018-11-15 20:20:51',20000,1,37),(228,'2018-11-15 20:20:48','2018-11-15 20:20:51',20000,1,37),(229,'2018-11-15 20:20:49','2018-11-15 20:20:51',28000,1,37),(230,'2018-11-15 20:20:49','2018-11-15 20:20:51',105000,1,37),(231,'2018-11-15 20:20:49','2018-11-15 20:20:51',60000,1,37),(232,'2018-11-15 20:20:50','2018-11-15 20:20:51',66000,1,37),(233,'2018-11-15 20:20:51','2018-11-15 20:20:51',70000,1,37),(234,'2018-11-17 20:20:58','2018-11-17 20:21:02',33000,1,37),(235,'2018-11-17 20:20:59','2018-11-17 20:21:02',33000,1,37),(236,'2018-11-17 20:20:59','2018-11-17 20:21:02',99000,1,37),(237,'2018-11-17 20:20:59','2018-11-17 20:21:02',60000,1,37),(238,'2018-11-17 20:21:00','2018-11-17 20:21:02',80000,1,37),(239,'2018-11-17 20:21:00','2018-11-17 20:21:02',140000,1,37),(240,'2018-11-17 20:21:00','2018-11-17 20:21:02',80000,1,37),(241,'2018-11-17 20:21:01','2018-11-17 20:21:02',20000,1,37),(242,'2018-11-17 20:21:01','2018-11-17 20:21:02',79000,1,37),(243,'2018-11-17 20:21:12','2018-11-17 20:21:15',120000,1,37),(244,'2018-11-17 20:21:12','2018-11-17 20:21:15',133000,1,37),(245,'2018-11-17 20:21:13','2018-11-17 20:21:15',112000,1,37),(246,'2018-11-17 20:21:14','2018-11-17 20:21:15',20000,1,37),(247,'2018-11-17 20:21:14','2018-11-17 20:21:15',20000,1,37),(248,'2018-11-17 20:21:14','2018-11-17 20:21:15',92000,1,37),(249,'2018-11-18 20:21:21','2018-11-18 20:21:24',106000,1,37),(250,'2018-11-18 20:21:21','2018-11-18 20:21:24',60000,1,37),(251,'2018-11-18 20:21:22','2018-11-18 20:21:24',105000,1,37),(252,'2018-11-18 20:21:22','2018-11-18 20:21:24',84000,1,37),(253,'2018-11-18 20:21:22','2018-11-18 20:21:24',84000,1,37),(254,'2018-11-18 20:21:23','2018-11-18 20:21:24',105000,1,37),(255,'2018-11-18 20:21:23','2018-11-18 20:21:24',105000,1,37),(256,'2018-11-18 20:21:24','2018-11-18 20:21:24',35000,1,37),(257,'2018-11-19 20:21:33','2018-11-19 20:21:36',70000,1,37),(258,'2018-11-19 20:21:33','2018-11-19 20:21:36',30000,1,37),(259,'2018-11-19 20:21:33','2018-11-19 20:21:36',140000,1,37),(260,'2018-11-19 20:21:33','2018-11-19 20:21:36',23000,1,37),(261,'2018-11-19 20:21:34','2018-11-19 20:21:36',40000,1,37),(262,'2018-11-19 20:21:34','2018-11-19 20:21:36',20000,1,37),(263,'2018-11-19 20:21:34','2018-11-19 20:21:36',100000,1,37),(264,'2018-11-19 20:21:34','2018-11-19 20:21:36',46000,1,37),(265,'2018-11-19 20:21:35','2018-11-19 20:21:36',28000,1,37),(266,'2018-11-19 20:21:35','2018-11-19 20:21:36',84000,1,37),(267,'2018-11-20 20:21:42','2018-11-20 20:21:46',20000,1,37),(268,'2018-11-20 20:21:42','2018-11-20 20:21:46',80000,1,37),(269,'2018-11-20 20:21:43','2018-11-20 20:21:46',40000,1,37),(270,'2018-11-20 20:21:43','2018-11-20 20:21:46',75000,1,37),(271,'2018-11-20 20:21:43','2018-11-20 20:21:46',100000,1,37),(272,'2018-11-20 20:21:44','2018-11-20 20:21:46',66000,1,37),(273,'2018-11-20 20:21:44','2018-11-20 20:21:46',50000,1,37),(274,'2018-11-20 20:21:44','2018-11-20 20:21:46',21000,1,37),(275,'2018-11-20 20:21:44','2018-11-20 20:21:46',88000,1,37),(276,'2018-11-20 20:21:45','2018-11-20 20:21:46',60000,1,37),(277,'2018-11-21 20:21:52','2018-11-21 20:21:56',80000,1,37),(278,'2018-11-21 20:21:52','2018-11-21 20:21:56',20000,1,37),(279,'2018-11-21 20:21:52','2018-11-21 20:21:56',35000,1,37),(280,'2018-11-21 20:21:53','2018-11-21 20:21:56',40000,1,37),(281,'2018-11-21 20:21:53','2018-11-21 20:21:56',63000,1,37),(282,'2018-11-21 20:21:53','2018-11-21 20:21:56',20000,1,37),(283,'2018-11-21 20:21:54','2018-11-21 20:21:56',100000,1,37),(284,'2018-11-21 20:21:54','2018-11-21 20:21:56',99000,1,37),(285,'2018-11-21 20:21:54','2018-11-21 20:21:56',44000,1,37),(286,'2018-11-21 20:21:55','2018-11-21 20:21:56',88000,1,37),(287,'2018-11-22 20:22:02','2018-11-22 20:22:05',60000,1,37),(288,'2018-11-22 20:22:02','2018-11-22 20:22:05',105000,1,37),(289,'2018-11-22 20:22:02','2018-11-22 20:22:05',42000,1,37),(290,'2018-11-22 20:22:02','2018-11-22 20:22:05',44000,1,37),(291,'2018-11-22 20:22:03','2018-11-22 20:22:05',99000,1,37),(292,'2018-11-22 20:22:03','2018-11-22 20:22:05',140000,1,37),(293,'2018-11-22 20:22:03','2018-11-22 20:22:05',69000,1,37),(294,'2018-11-22 20:22:03','2018-11-22 20:22:05',60000,1,37),(295,'2018-11-22 20:22:04','2018-11-22 20:22:05',20000,1,37),(296,'2018-11-22 20:22:04','2018-11-22 20:22:05',112000,1,37),(297,'2018-11-23 20:22:13','2018-11-23 20:22:17',60000,1,37),(298,'2018-11-23 20:22:13','2018-11-23 20:22:17',15000,1,37),(299,'2018-11-23 20:22:14','2018-11-23 20:22:17',92000,1,37),(300,'2018-11-23 20:22:14','2018-11-23 20:22:17',75000,1,37),(301,'2018-11-23 20:22:14','2018-11-23 20:22:17',116000,1,37),(302,'2018-11-23 20:22:15','2018-11-23 20:22:17',136000,1,37),(303,'2018-11-23 20:22:15','2018-11-23 20:22:17',25000,1,37),(304,'2018-11-23 20:22:16','2018-11-23 20:22:17',33000,1,37),(305,'2018-11-24 20:22:24','2018-11-24 20:22:29',132000,1,37),(306,'2018-11-24 20:22:25','2018-11-24 20:22:29',160000,1,37),(307,'2018-11-24 20:22:26','2018-11-24 20:22:29',100000,1,37),(308,'2018-11-24 20:22:26','2018-11-24 20:22:29',92000,1,37),(309,'2018-11-24 20:22:26','2018-11-24 20:22:29',20000,1,37),(310,'2018-11-24 20:22:27','2018-11-24 20:22:29',84000,1,37),(311,'2018-11-24 20:22:27','2018-11-24 20:22:29',60000,1,37),(312,'2018-11-24 20:22:28','2018-11-24 20:22:29',60000,1,37),(313,'2018-11-25 20:22:35','2018-11-25 20:22:41',35000,1,37),(314,'2018-11-25 20:22:36','2018-11-25 20:22:41',28000,1,37),(315,'2018-11-25 20:22:36','2018-11-25 20:22:41',165000,1,37),(316,'2018-11-25 20:22:36','2018-11-25 20:22:41',66000,1,37),(317,'2018-11-25 20:22:36','2018-11-25 20:22:41',42000,1,37),(318,'2018-11-25 20:22:37','2018-11-25 20:22:41',84000,1,37),(319,'2018-11-25 20:22:38','2018-11-25 20:22:41',35000,1,37),(320,'2018-11-25 20:22:39','2018-11-25 20:22:41',45000,1,37),(321,'2018-11-26 20:23:03',NULL,88000,0,NULL),(322,'2018-11-26 20:23:04',NULL,80000,0,NULL),(323,'2018-11-26 20:23:04',NULL,88000,0,NULL),(324,'2018-11-26 20:23:05',NULL,105000,0,NULL),(325,'2018-11-26 20:23:05',NULL,100000,0,NULL),(326,'2018-11-26 20:23:05',NULL,35000,0,NULL),(327,'2018-11-26 20:23:06',NULL,40000,0,NULL),(328,'2018-11-26 20:23:06',NULL,50000,0,NULL),(329,'2018-11-26 20:23:07',NULL,40000,0,NULL),(330,'2018-11-26 20:23:07',NULL,60000,0,NULL);
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billdetail`
--

DROP TABLE IF EXISTS [billdetail];
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET @character_set_client = utf8mb4 ;
CREATE TABLE billdetail (
  [billId] int NOT NULL,
  [tableId] int NOT NULL,
  [drinkId] int NOT NULL,
  [quantity] int DEFAULT NULL,
  [cost] int DEFAULT NULL,
  PRIMARY KEY ([billId],[tableId],[drinkId])
 ,
  CONSTRAINT [billId] FOREIGN KEY ([billId]) REFERENCES bill ([id]),
  CONSTRAINT [drinkId] FOREIGN KEY ([drinkId]) REFERENCES drink ([id]),
  CONSTRAINT [tableId] FOREIGN KEY ([tableId]) REFERENCES cftable ([id])
) ;

CREATE INDEX [billid_idx] ON billdetail ([billId]);
CREATE INDEX [drinkId_idx] ON billdetail ([drinkId]);
CREATE INDEX [tableId_idx] ON billdetail ([tableId]);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billdetail`
--

LOCK TABLES [billdetail] WRITE;
/*!40000 ALTER TABLE `billdetail` DISABLE KEYS */;
INSERT INTO billdetail VALUES (102,12,1,1,20000),(103,1,17,2,40000),(104,26,19,3,60000),(105,45,3,4,100000),(105,45,4,4,112000),(106,42,11,2,40000),(106,42,17,1,20000),(107,4,22,4,140000),(108,19,24,4,132000),(109,16,17,1,20000),(110,18,6,4,60000),(111,24,17,1,20000),(112,17,6,4,60000),(113,26,1,1,20000),(114,34,3,3,75000),(115,21,3,2,50000),(115,21,9,1,22000),(116,10,8,3,63000),(117,7,4,1,28000),(117,7,17,2,40000),(118,30,7,2,44000),(119,15,14,2,44000),(120,44,13,3,63000),(121,13,18,4,92000),(122,32,7,3,66000),(122,32,15,2,42000),(123,2,15,1,21000),(123,2,24,2,66000),(124,24,4,4,112000),(125,38,1,2,40000),(126,12,21,4,132000),(127,9,2,2,40000),(127,9,24,1,33000),(128,43,1,3,60000),(129,23,27,2,70000),(130,45,23,4,140000),(131,36,2,3,60000),(132,32,21,3,99000),(133,37,1,4,80000),(134,44,19,1,20000),(135,17,25,1,33000),(136,16,27,3,105000),(137,30,4,3,84000),(138,4,1,2,40000),(139,38,3,6,150000),(140,9,18,2,46000),(141,11,24,1,33000),(142,26,4,4,112000),(143,14,7,3,66000),(144,13,10,4,80000),(145,9,27,3,105000),(146,27,17,1,20000),(146,27,26,1,35000),(147,4,1,4,80000),(148,25,1,3,60000),(149,38,13,2,42000),(150,45,14,1,22000),(151,23,4,3,84000),(152,36,6,4,60000),(153,4,17,3,60000),(154,13,23,3,105000),(155,7,6,1,15000),(156,32,1,1,20000),(157,34,1,3,60000),(158,44,15,4,84000),(159,26,3,1,25000),(160,22,12,1,20000),(161,12,2,1,20000),(162,3,21,1,33000),(163,14,15,4,84000),(164,18,24,4,132000),(165,15,3,3,75000),(166,8,1,3,60000),(167,6,17,1,20000),(168,9,8,1,21000),(169,33,27,1,35000),(170,39,21,3,99000),(171,2,19,4,80000),(172,43,18,4,92000),(173,7,17,1,20000),(173,7,18,1,23000),(174,26,3,1,25000),(175,20,17,3,60000),(176,32,21,4,132000),(177,22,4,1,28000),(178,31,19,1,20000),(179,23,25,2,66000),(180,44,18,3,69000),(181,4,22,1,35000),(182,27,17,3,60000),(183,15,10,4,80000),(183,15,13,1,21000),(184,6,1,4,80000),(185,4,15,3,63000),(185,4,17,3,60000),(186,31,1,1,20000),(187,14,2,2,40000),(188,30,19,2,40000),(189,39,19,2,40000),(190,7,26,2,70000),(191,2,11,1,20000),(192,3,24,1,33000),(193,11,11,2,40000),(194,26,24,2,66000),(195,34,19,3,60000),(196,30,13,2,42000),(197,36,18,3,69000),(198,29,10,3,60000),(199,39,24,2,66000),(200,25,17,4,80000),(201,33,3,3,75000),(201,33,9,3,66000),(202,8,10,1,20000),(203,39,22,1,35000),(204,12,12,3,60000),(205,1,27,2,70000),(206,23,18,2,46000),(207,41,1,1,20000),(208,36,15,4,84000),(209,6,17,3,60000),(209,6,19,1,20000),(210,24,19,1,20000),(211,20,19,5,100000),(212,8,11,4,80000),(213,14,17,3,60000),(214,16,17,3,60000),(215,19,6,2,30000),(216,34,22,1,35000),(217,38,8,3,63000),(217,38,18,1,23000),(218,22,27,4,140000),(219,15,1,2,40000),(220,36,8,4,84000),(221,30,1,1,20000),(222,3,7,4,88000),(222,3,27,1,35000),(223,27,4,2,56000),(224,42,27,3,105000),(225,21,7,1,22000),(225,21,21,2,66000),(226,26,3,3,75000),(227,31,2,1,20000),(228,24,17,1,20000),(229,36,4,1,28000),(230,6,22,3,105000),(231,27,17,3,60000),(232,18,25,2,66000),(233,32,27,2,70000),(234,45,24,1,33000),(235,4,21,1,33000),(236,22,25,3,99000),(237,38,19,3,60000),(238,12,17,4,80000),(239,39,22,4,140000),(240,23,2,4,80000),(241,10,17,1,20000),(242,34,4,2,56000),(242,34,18,1,23000),(243,23,2,2,40000),(243,23,17,2,40000),(243,23,19,2,40000),(244,31,8,3,63000),(244,31,22,2,70000),(245,30,18,4,92000),(245,30,19,1,20000),(246,45,17,1,20000),(247,40,10,1,20000),(248,1,18,4,92000),(249,6,19,2,40000),(249,6,24,2,66000),(250,38,2,3,60000),(251,19,26,3,105000),(252,43,15,4,84000),(253,2,15,4,84000),(254,4,22,3,105000),(255,23,2,4,80000),(255,23,3,1,25000),(256,10,27,1,35000),(257,27,23,2,70000),(258,24,6,2,30000),(259,37,26,4,140000),(260,1,18,1,23000),(261,15,12,2,40000),(262,41,2,1,20000),(263,33,3,4,100000),(264,23,18,2,46000),(265,22,4,1,28000),(266,4,15,4,84000),(267,27,19,1,20000),(268,11,2,4,80000),(269,23,19,2,40000),(270,17,3,3,75000),(271,9,3,4,100000),(272,2,7,3,66000),(273,5,3,2,50000),(274,7,15,1,21000),(275,15,7,4,88000),(276,12,17,3,60000),(277,5,19,4,80000),(278,32,19,1,20000),(279,31,27,1,35000),(280,38,17,2,40000),(281,43,15,3,63000),(282,8,1,1,20000),(283,22,3,4,100000),(284,33,25,3,99000),(285,3,14,2,44000),(286,4,9,4,88000),(287,15,2,3,60000),(288,6,23,3,105000),(289,35,8,2,42000),(290,1,7,2,44000),(291,33,21,3,99000),(292,13,26,4,140000),(293,10,18,3,69000),(294,42,19,3,60000),(295,44,19,1,20000),(296,41,4,4,112000),(297,32,2,3,60000),(298,22,6,1,15000),(299,31,18,4,92000),(300,5,3,3,75000),(301,4,2,3,60000),(301,4,4,2,56000),(302,29,2,4,80000),(302,29,4,2,56000),(303,3,3,1,25000),(304,45,21,1,33000),(305,13,7,3,66000),(305,13,9,3,66000),(306,39,12,4,80000),(306,39,19,4,80000),(307,5,3,4,100000),(308,21,18,4,92000),(309,20,11,1,20000),(310,34,4,3,84000),(311,2,17,3,60000),(312,36,2,3,60000),(313,28,22,1,35000),(314,5,4,1,28000),(315,27,19,3,60000),(315,27,26,3,105000),(316,18,9,3,66000),(317,38,13,2,42000),(318,40,8,3,63000),(318,40,13,1,21000),(319,36,27,1,35000),(320,19,6,3,45000),(321,29,9,4,88000),(322,23,2,4,80000),(323,22,14,4,88000),(324,2,27,3,105000),(325,43,3,4,100000),(326,37,26,1,35000),(327,45,1,2,40000),(328,41,3,2,50000),(329,4,1,2,40000),(330,20,17,3,60000);
/*!40000 ALTER TABLE `billdetail` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `billdetail_AFTER_INSERT` AFTER INSERT ON `billdetail` FOR EACH ROW BEGIN
	update bill set totalCost = (select sum(cost) from billdetail where billId = new.billId) where id = new.billId;
    update cftable set tableStatus = 1 where id = new.tableId;
END */;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `billdetail_AFTER_UPDATE` AFTER UPDATE ON `billdetail` FOR EACH ROW BEGIN
	update bill set totalCost = (select sum(cost) from billdetail where billId = new.billId) where id = new.billId;
END */;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS [category];
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET @character_set_client = utf8mb4 ;
CREATE TABLE category (
  [id] int NOT NULL IDENTITY,
  [name] varchar(45) DEFAULT NULL,
  PRIMARY KEY ([id])
)  ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES [category] WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO category VALUES (1,'trà'),(2,'nước uống đóng chai'),(3,'cà phê'),(4,'nước ép'),(5,'sinh tố');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `category_BEFORE_DELETE` BEFORE DELETE ON `category` FOR EACH ROW BEGIN
	delete from billdetail where drinkId in (select id from drink where categoryId = old.id);
    delete from drink where categoryId = old.id;
END */;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cftable`
--

DROP TABLE IF EXISTS [cftable];
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET @character_set_client = utf8mb4 ;
CREATE TABLE cftable (
  [id] int NOT NULL IDENTITY,
  [name] varchar(45) DEFAULT NULL,
  [tableStatus] int NOT NULL DEFAULT '0',
  PRIMARY KEY ([id]),
  CONSTRAINT [maBan_UNIQUE] UNIQUE  ([id])
)  ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cftable`
--

LOCK TABLES [cftable] WRITE;
/*!40000 ALTER TABLE `cftable` DISABLE KEYS */;
INSERT INTO cftable VALUES (1,'Bàn 1',0),(2,'Bàn 2',1),(3,'Bàn 3',0),(4,'Bàn 4',1),(5,'Bàn 5',0),(6,'Bàn 6',0),(7,'Bàn 7',0),(8,'Bàn 8',0),(9,'Bàn 9',0),(10,'Bàn 10',0),(11,'Bàn 11',0),(12,'Bàn 12',0),(13,'Bàn 13',0),(14,'Bàn 14',0),(15,'Bàn 15',0),(16,'Bàn 16',0),(17,'Bàn 17',0),(18,'Bàn 18',0),(19,'Bàn 19',0),(20,'Bàn 20',1),(21,'Bàn 21',0),(22,'Bàn 22',1),(23,'Bàn 23',1),(24,'Bàn 24',0),(25,'Bàn 25',0),(26,'Bàn 26',0),(27,'Bàn 27',0),(28,'Bàn 28',0),(29,'Bàn 29',1),(30,'Bàn 30',0),(31,'Bàn 31',0),(32,'Bàn 32',0),(33,'Bàn 33',0),(34,'Bàn 34',0),(35,'Bàn 35',0),(36,'Bàn 36',0),(37,'Bàn 37',1),(38,'Bàn 38',0),(39,'Bàn 39',0),(40,'Bàn 40',0),(41,'Bàn 41',1),(42,'Bàn 42',0),(43,'Bàn 43',1),(44,'Bàn 44',0),(45,'Bàn 45',1),(46,'Bàn 46',0);
/*!40000 ALTER TABLE `cftable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drink`
--

DROP TABLE IF EXISTS [drink];
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET @character_set_client = utf8mb4 ;
CREATE TABLE drink (
  [id] int NOT NULL IDENTITY,
  [name] varchar(45) DEFAULT NULL,
  [price] int DEFAULT NULL,
  [categoryId] int NOT NULL,
  PRIMARY KEY ([id]),
  CONSTRAINT [id_UNIQUE] UNIQUE  ([id])
 ,
  CONSTRAINT [categoryId] FOREIGN KEY ([categoryId]) REFERENCES category ([id])
)  ;

CREATE INDEX [categoryId_idx] ON drink ([categoryId]);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drink`
--

LOCK TABLES [drink] WRITE;
/*!40000 ALTER TABLE `drink` DISABLE KEYS */;
INSERT INTO drink VALUES (1,'Lipton đá',20000,1),(2,'Lipton nóng',20000,1),(3,'trà Ô long',25000,1),(4,'trà thảo mộc',28000,1),(5,'trà đen',25000,1),(6,'nước suối',15000,2),(7,'Coca-cola',22000,2),(8,'Trà xanh 0 độ',21000,2),(9,'Pepsi',22000,2),(10,'Mirinda xá xị',20000,2),(11,'Mirinda cam',20000,2),(12,'7 Up',20000,2),(13,'Revive',21000,2),(14,'Revive chanh muối',22000,2),(15,'Dr Thanh',21000,2),(16,'Sting',21000,2),(17,'cà phê đá',20000,3),(18,'cà phê sữa đá',23000,3),(19,'cà phê nóng',20000,3),(20,'cà phê sữa nóng',23000,3),(21,'nước ép xoài',33000,4),(22,'nước ép dâu',35000,4),(23,'nước ép táo',35000,4),(24,'nước ép dưa hấu',33000,4),(25,'nước ép cà rốt',33000,4),(26,'nước ép cam',35000,4),(27,'nước ép kiwi',35000,4),(28,'nước ép chanh dây',33000,4),(29,'sinh tố xoài',28000,5),(30,'sinh tố dâu',31000,5),(31,'sinh tố mãng cầu',28000,5),(32,'sinh tố bơ',31000,5),(33,'sinh tố dừa',30000,5),(34,'rau má',28000,5),(35,'rau má dừa',30000,5),(36,'rau má sữa',30000,5),(37,'rau má đậu',30000,5),(38,'sinh tố cà chua',28000,5),(39,'sinh tố đu đủ',28000,5);
/*!40000 ALTER TABLE `drink` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `drink_AFTER_UPDATE` AFTER UPDATE ON `drink` FOR EACH ROW BEGIN
	update billdetail set cost = (select price from drink where id = new.id) * quantity where drinkId = new.id and get_billId_by_tableId(tableId) <> -1;
END */;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `drink_BEFORE_DELETE` BEFORE DELETE ON `drink` FOR EACH ROW BEGIN
	delete from billdetail where drinkId = old.id;
END */;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS [role];
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET @character_set_client = utf8mb4 ;
CREATE TABLE role (
  [id] int NOT NULL IDENTITY,
  [name] varchar(30) DEFAULT NULL,
  PRIMARY KEY ([id]),
  CONSTRAINT [maCV_UNIQUE] UNIQUE  ([id])
)  ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES [role] WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO role VALUES (1,'quản lý'),(2,'thu ngân'),(3,'pha chế'),(4,'phục vụ'),(5,'bảo vệ'),(6,'lao công');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS [staff];
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET @character_set_client = utf8mb4 ;
CREATE TABLE staff (
  [id] int NOT NULL IDENTITY,
  [name] varchar(50) DEFAULT NULL,
  [sex] char(3) DEFAULT NULL,
  [birthday] date DEFAULT NULL,
  [address] varchar(100) DEFAULT NULL,
  [phone] char(12) DEFAULT NULL,
  [roleId] int NOT NULL,
  PRIMARY KEY ([id]),
  CONSTRAINT [maNV_UNIQUE] UNIQUE  ([id])
 ,
  CONSTRAINT [roleId] FOREIGN KEY ([roleId]) REFERENCES role ([id])
)  ;

CREATE INDEX [roleId_idx] ON staff ([roleId]);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES [staff] WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO staff VALUES (34,'Nguyễn Việt Châu','M','1995-04-30','343 Đường 30/4, Q. Ninh Kiều, TPCT','0934687491',5),(35,'Trần Văn Chiến','M','1996-09-06','02 Đại lộ Hòa Bình, Q. Ninh Kiều, TPCT','0336541257',5),(36,'Nguyễn Thị Anh Thơ','F','1998-04-05','19 Đường Ngô Quyền, Q. Ninh Kiều, TPCT','0934687491',4),(37,'Võ Văn Mạnh','M','1995-01-23','123 Trần Hưng Đạo, Q. Ninh Kiều, TPCT','0788654129',2),(38,'Nguyễn Anh Hùng','M','1999-11-12','232 Nguyễn Văn Khéo, Q. Ninh Kiều, TPCT','0864239541',3),(39,'Võ Thị Tuyết Nhi','F','1995-11-30','27 Nguyễn Việt Hồng, Q. Ninh Kiều, TPCT','0952147238',4),(40,'Nguyễn Thị Cẩm Hồng','F','1995-02-09','05 Trần Văn Hoài, Q. Ninh Kiều, TPCT','0325487132',4),(41,'Ngô Thừa Kế','M','1998-12-01','97, Đường 3/2 Q. Ninh Kiều, TPCT','0775214563',1),(42,'Nguyễn Thị Thu Ngân','F','1997-11-17','186 Đường Mậu Thân, Q. Ninh Kiều, TPCT','0912548752',4),(43,'Trần Thị Minh Anh','F','1995-05-06','251 Đường Xô Viết Nghệ Tĩnh, Q. Ninh Kiều, TPCT','0963542148',6),(44,'Nguyễn Trần Tiến','M','1996-03-21','312 Xô Viết Nghệ Tĩnh, Q. Ninh Kiều, TPCT','0783215132',4),(45,'Doãn Chí Bình','M','1997-11-29','29 Nguyễn Văn Linh, Q. Bình Thủy, TPCT','0832184739',4),(46,'Võ Thị Như Quỳnh','F','1997-10-15','37 Lê Bình, Q. Ninh Kiều, TPCT','0338765302',4),(47,'Trần Đại Ngư','M','1996-03-26','06 Ngô Quyền, Q. Ninh Kiều, TPCT','0783726581',2);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'qlquancafe'
--
/*!50003 DROP FUNCTION IF EXISTS `get_billId_by_tableId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  FUNCTION get_billId_by_tableId(@tableId_par int) RETURNS int
BEGIN
	declare @billId_par int = -1;
	if ((select tableStatus from cftable where id = @tableId_par) = 1) begin
	 select @billId_par = max(billId) from billdetail where tableId = @tableId_par;
    end 
RETURN @billId_par;
END ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `get_lastId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  FUNCTION get_lastId(@tableName varchar(45)) RETURNS int
BEGIN
	declare @maxId int;
	if (@tableName = 'bill') begin
	 select @maxId = max(id) from bill;
	end
	else if (@tableName = 'billdetail') begin
	 select @maxId = max(id) from billdetail;
	end
	else if (@tableName = 'category') begin
	 select @maxId = max(id) from category;
	end
	else if (@tableName = 'table') begin
	 select @maxId = max(id) from cftable;
	end
	else if (@tableName = 'drink') begin
	 select @maxId = max(id) from drink;
	end
	else if (@tableName = 'role') begin
	 select @maxId = max(id) from role;
	end
	else if (@tableName = 'staff') begin
	 select @maxId = max(id) from staff;
	end
	else if (@tableName = 'user') begin
	 select @maxId = max(id) from user;
	end 
RETURN @maxId;
END ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `get_tableId_by_billId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  FUNCTION get_tableId_by_billId(@billId_par int) RETURNS int
BEGIN
	declare @tableId_par int;
    select distinct @tableId_par = tableId from billdetail where billId = @billId_par;
RETURN @tableId_par;
END ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `get_totalCost_by_billId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  FUNCTION get_totalCost_by_billId(@id_par int) RETURNS int
BEGIN
	declare @totalCost_par int;
    select @totalCost_par = sum(cost) from billdetail where billId = @id_par;
RETURN @totalCost_par;
END ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  FUNCTION login(@username_par varchar(45), @password_par varchar(45)) RETURNS int
BEGIN
	declare @ans int = -1;
	if ((select count(*) from account where username = @username_par) <> 0) begin
	 select @ans = count(*) from account where username = @username_par and password = @password_par;
	end 
RETURN @ans;
END ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `change_table` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE change_table( @oldTableId int, @newTableId int)
AS
BEGIN
SET NOCOUNT ON;
	if ((select tableStatus from cftable where id = @newTableId) = 0)
		begin
			update billdetail set tableId = @newTableId where billId = get_billId_by_tableId(@oldTableId);
            update cftable set tableStatus = 0 where id = @oldTableId;
            update cftable set tableStatus = 1 where id = @newTableId;
        end;
	else 
		begin
			declare @oldBillId int;
			declare @n int;
            declare @i int = 0;
            declare @oldDrinkId int;
            declare @oldQuantity int;
            set @oldBillId = get_billId_by_tableId(@oldTableId);
            select @n = count(*) from billdetail where billId = @oldBillId;
            while (@i < @n) begin
			 select @oldDrinkId = t.drinkId from (select drinkId from billdetail where billId = @oldBillId limit 1) as t;
                select @oldQuantity = k.quantity from (select quantity from billdetail where billId = @oldBillId limit 1) as k;
				call insert_billdetail(@newTableId, @oldDrinkId, @oldQuantity);
                delete from billdetail where billId = @oldBillId and drinkId = @oldDrinkId;
                set @i = @i + 1;
			end;
            delete from bill where id = @oldBillId;
            update cftable set tableStatus = 0 where id = @oldTableId;
        end;
    
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `charge` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE charge( @tableId_par int, @staffId_par int)
AS
BEGIN
SET NOCOUNT ON;
	update bill set checkOut = (select getdate()), billStatus = 1, staffId = @staffId_par where id = get_billId_by_tableId(@tableId_par);
    update cftable set tableStatus = 0 where id = @tableId_par;
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_account` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE delete_account( @username_par varchar(45))
AS
BEGIN
SET NOCOUNT ON;
	delete from account where username = @username_par;
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_bill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE delete_bill( @id_par int)
AS
BEGIN
SET NOCOUNT ON;
	delete from bill where id = @id_par;
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_billdetail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE delete_billdetail( @billId_par int)
AS
BEGIN
SET NOCOUNT ON;
	delete from billdetail where billId = @billId_par;
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_category` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE delete_category( @id_par int)
AS
BEGIN
SET NOCOUNT ON;
	if (@id_par not in (select distinct categoryId from billdetail 
							join bill on billdetail.billId = bill.id
							join drink on billdetail.drinkId = drink.id
						where billStatus = 0)) begin
		delete from category where id = @id_par;
    end 
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_drink` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE delete_drink( @id_par int)
AS
BEGIN
SET NOCOUNT ON;
	if (@id_par not in (select distinct drinkId from billdetail 
							join bill on billdetail.billId = bill.id
						where billStatus = 0)) begin
		delete from drink where id = @id_par;
    end 
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_role` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE delete_role( @id_par INT)
AS
BEGIN
SET NOCOUNT ON;
	delete from role where id = @id_par;
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_staff` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE delete_staff( @id_par INT)
AS
BEGIN
SET NOCOUNT ON;
	delete from staff where id = @id_par;
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_table` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE delete_table( @id_par INT)
AS
BEGIN
SET NOCOUNT ON;
	update cftable set name = 'this_table_is_deleted' where id = @id_par and tableStatus = 0;
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_account_by_username` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE get_account_by_username( @username_par varchar(45))
AS
BEGIN
SET NOCOUNT ON;
	select * from account where username = @username_par;
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_all_account` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE get_all_account()
AS
BEGIN
SET NOCOUNT ON;
	select * from account;
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_all_bill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE get_all_bill()
AS
BEGIN
SET NOCOUNT ON;
	select id, date_format(checkIn, '-- %H:%i:%s') checkIn, date_format(checkOut, '-- %H:%i:%s') checkOut, totalCost, billStatus from bill;
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_all_billdetail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE get_all_billdetail()
AS
BEGIN
SET NOCOUNT ON;
	select * from billdetail;
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_all_category` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE get_all_category()
AS
BEGIN
SET NOCOUNT ON;
	select * from category;
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_all_drink` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE get_all_drink()
AS
BEGIN
SET NOCOUNT ON;
	select * from drink;
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_all_role` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE get_all_role()
AS
BEGIN
SET NOCOUNT ON;
	select * from role;
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_all_sales_report` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE get_all_sales_report()
AS
BEGIN
SET NOCOUNT ON;
	select date_format(checkIn, '--') date, sum(totalCost) total from bill group by date_format(checkIn, '--');
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_all_staff` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE get_all_staff()
AS
BEGIN
SET NOCOUNT ON;
	select id, name, sex, date_format(birthday, '--') birthday, address, phone, roleId from staff;
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_all_table` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE get_all_table()
AS
BEGIN
SET NOCOUNT ON;
	select * from cftable where name <> 'this_table_is_deleted';
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_billdetail_by_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE get_billdetail_by_id( @billId_par int)
AS
BEGIN
SET NOCOUNT ON;
	select * from billdetail where billId = @billId_par;
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_bill_by_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE get_bill_by_id( @id_par int)
AS
BEGIN
SET NOCOUNT ON;
	select id, date_format(checkIn, '-- %H:%i:%s') checkIn, date_format(checkOut, '-- %H:%i:%s') checkOut, totalCost, billStatus from bill where id = @id_par;
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_bill_by_tableId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE get_bill_by_tableId( @tableId_par int)
AS
BEGIN
SET NOCOUNT ON;
	select * from bill where id = get_billId_by_tableId(@tableId_par);
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_category_by_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE get_category_by_id( @in_par int)
AS
BEGIN
SET NOCOUNT ON;
	select * from category where id = id_par;
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_current_billdetail_by_tableId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE get_current_billdetail_by_tableId( @tableId_par int)
AS
BEGIN
SET NOCOUNT ON;
	select * from billdetail where billId = get_billId_by_tableId(@tableId_par);
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_drinklist_by_categoryid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE get_drinklist_by_categoryid( @categoryId_par int)
AS
BEGIN
SET NOCOUNT ON;
	select * from drink where categoryId = @categoryId_par;
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_drink_by_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE get_drink_by_id( @id_par int)
AS
BEGIN
SET NOCOUNT ON;
	select * from drink where id = @id_par;
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_lastId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE get_lastId( @tableName_par varchar(45))
AS
BEGIN
SET NOCOUNT ON;
	select get_lastId(@tableName_par) as lastId;
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_monthlist_by_year` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE get_monthlist_by_year( @year_par int)
AS
BEGIN
SET NOCOUNT ON;
	SELECT DISTINCT MONTH(checkOut) AS month FROM bill where YEAR(checkOut) = @year_par;
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_role_by_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE get_role_by_id( @id_par INT)
AS
BEGIN
SET NOCOUNT ON;
	select * from role where id = @id_par;
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_sales_report_by_date` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE get_sales_report_by_date( @date_par varchar(45))
AS
BEGIN
SET NOCOUNT ON;
	select t.date, t.total from (select date_format(checkIn, '--') date, sum(totalCost) total from bill group by date_format(checkIn, '--')) as t where t.date = @date_par;
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_sales_report_by_month_year` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE get_sales_report_by_month_year( @month_par int, @year_par int)
AS
BEGIN
SET NOCOUNT ON;
	select date_format(t.date, '--') date, t.total from (select checkIn date, sum(totalCost) total from bill group by date_format(checkIn, '--')) as t where month(t.date)= @month_par and year(t.date) = @year_par;
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_sales_report_by_year` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE get_sales_report_by_year( @year_par int)
AS
BEGIN
SET NOCOUNT ON;
	select date_format(t.date, '--') date, t.total from (select checkIn date, sum(totalCost) total from bill group by date_format(checkIn, '--')) as t where year(t.date) = @year_par;
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_sales_report_by_year_month` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE get_sales_report_by_year_month( @year_par int, @month_par int)
AS
BEGIN
SET NOCOUNT ON;
	select date_format(t.date, '--') date, t.total from (select checkIn date, sum(totalCost) total from bill group by date_format(checkIn, '--')) as t where month(t.date)= @month_par and year(t.date) = @year_par;
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_staff_by_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE get_staff_by_id( @id_par INT)
AS
BEGIN
SET NOCOUNT ON;
	select id, name, sex, date_format(birthday, '--') birthday, address, phone, roleId from staff where id = @id_par ;
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_table_by_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE get_table_by_id( @id_par INT)
AS
BEGIN
SET NOCOUNT ON;
	select * from cftable where id = @id_par;
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_account` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE insert_account( @username_par varchar(45), @password_par varchar(45), @role_par varchar(45), @staffId_par int)
AS
BEGIN
SET NOCOUNT ON;
	insert into account (username, password, role, staffId) values (@username_par, @password_par, @role_par, @staffId_par);
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_bill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE insert_bill()
AS
BEGIN
SET NOCOUNT ON;
	declare @datetime_par datetime2(0);
    select @datetime_par = getdate());
	insert into bill (checkIn) values (@datetime_par);
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_billdetail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE insert_billdetail( @tableId_par int, @drinkId_par int, @quantity_par int)
AS
BEGIN
SET NOCOUNT ON;
	declare @cost_par int;
    declare @billId_par int;
    if (get_billId_by_tableId(@tableId_par) = -1)
		begin
			call insert_bill();
		 select @billId_par = max(id) from bill;
        end;
    else 
		set @billId_par = get_billId_by_tableId(@tableId_par);
    
    if ((select quantity from billdetail where drinkId = @drinkId_par and billId = @billId_par) > 0)
		begin
			set @quantity_par = @quantity_par + (select quantity from billdetail where drinkId = @drinkId_par and billId = @billId_par);
            if (@quantity_par > 0)
				begin
					set @cost_par = @quantity_par * (select price from drink where id= @drinkId_par);
					update billdetail set quantity = @quantity_par, cost = @cost_par where drinkId = @drinkId_par and billId = @billId_par;
                end;
            else
				delete from billdetail where drinkId = @drinkId_par and billId = @billId_par;
		 
        end;
	else 
		begin
			if (@quantity_par > 0)
				begin
					set @cost_par = @quantity_par * (select price from drink where id = @drinkId_par);
					insert into billdetail (billId, tableId, drinkId, quantity, cost) values (@billId_par, @tableId_par, @drinkId_par, @quantity_par, @cost_par);
                end;
			else
				delete from billdetail where drinkId = @drinkId_par and billId = @billId_par;
		 
        end;
    
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_category` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE insert_category( @name_par VARCHAR(45))
AS
BEGIN
SET NOCOUNT ON;
	insert into category (name) values (@name_par);
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_drink` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE insert_drink( @name_par varchar(45), @price_par int, @categoryId_par int)
AS
BEGIN
SET NOCOUNT ON;
	insert into drink (name, price, categoryId) values (@name_par, @price_par, @categoryId_par);
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_role` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE insert_role( @name_par VARCHAR(30))
AS
BEGIN
SET NOCOUNT ON;
	insert into role(name) values(@name_par);
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_staff` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE insert_staff( @name_par VARCHAR(50), @sex_par CHAR(3), @birthday_par DATE, @address_par VARCHAR(100), @phone_par CHAR(12), @roleId_par CHAR(10))
AS
BEGIN
SET NOCOUNT ON;
	insert into staff (name, sex, birthday, address, phone, roleId) values (@name_par, @sex_par, @birthday_par, @address_par, @phone_par, @roleId_par);
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_table` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE insert_table( @name_par VARCHAR(45))
AS
BEGIN
SET NOCOUNT ON;
	insert into cftable(name) values(@name_par);
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE login( @username_par varchar(45), @password_par varchar(45))
AS
BEGIN
SET NOCOUNT ON;
	select login(@username_par, @password_par) checkValue;
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_account` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE update_account( @username_par varchar(45), @password_par varchar(45), @staffId_par int)
AS
BEGIN
SET NOCOUNT ON;
	update account set password = @password_par, staffId = @staffId_par where username = @username_par;
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_bill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE update_bill( @id_par int, @billStatus_par int)
AS
BEGIN
SET NOCOUNT ON;
	declare @dateTime_par datetime2(0);
    select @dateTime_par = getdate());
	update bill set checkOut = @dateTime_par, billStatus = @billStatus_par where id = @id_par;
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_billdetail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE update_billdetail( @billId_par int, @tableId_par int, @drinkId_par int, @quantity_par int)
AS
BEGIN
SET NOCOUNT ON;
	update billdetail set tableId = @tableId_par, drinkId = @drinkId_par, quantity = @quantity_par where billId = @billId_par;
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_category` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE update_category( @id_par int, @name_par varchar(45))
AS
BEGIN
SET NOCOUNT ON;
	update category set name = @name_par where id = @id_par;
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_drink` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE update_drink( @id_par int, @name_par varchar(45), @price_par int, @categoryId_par int)
AS
BEGIN
SET NOCOUNT ON;
	update drink set name = @name_par, price = @price_par, categoryId = @categoryId_par where id = @id_par;
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_role` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE update_role( @id_par INT, @name_par VARCHAR(30))
AS
BEGIN
SET NOCOUNT ON;
	update role set name = @name_par where id = @id_par;
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_staff` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE update_staff( @id_par INT, @name_par VARCHAR(50), @sex_par CHAR(3), @birthday_par DATE, @address_par VARCHAR(100), @phone_par CHAR(12), @roleId_par INT)
AS
BEGIN
SET NOCOUNT ON;
	update staff set name = @name_par, sex = @sex_par, birthday = @birthday_par, address = @address_par, phone = @phone_par, roleId = @roleId_par where id = @id_par;
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_table` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE update_table( @id_par INT, @name_par VARCHAR(45), @tableStatus_par VARCHAR(45))
AS
BEGIN
SET NOCOUNT ON;
	update cftable set name = @name_par, tableStatus = @tableStatus_par where id = @id_par;
END ;
GO;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-26 20:27:50
