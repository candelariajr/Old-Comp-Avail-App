-- MySQL dump 10.13  Distrib 5.6.33, for osx10.9 (x86_64)
--
-- Host: 127.0.0.1    Database: computer_availability
-- ------------------------------------------------------
-- Server version	5.6.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `compstatus`
--

DROP TABLE IF EXISTS `compstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compstatus` (
  `computer_name` varchar(250) NOT NULL DEFAULT '',
  `status` int(11) DEFAULT NULL,
  `computer_type` varchar(15) DEFAULT NULL,
  `table_name` varchar(60) DEFAULT NULL COMMENT 'table name',
  `floor` int(11) NOT NULL,
  `seat` int(11) NOT NULL,
  `left_pos` int(11) DEFAULT NULL,
  `top_pos` int(11) DEFAULT NULL,
  `is_public` tinyint(4) NOT NULL DEFAULT '0',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `is_offline` tinyint(4) NOT NULL DEFAULT '0',
  `is_excluded` tinyint(4) NOT NULL DEFAULT '0',
  `is_pilot` tinyint(4) NOT NULL DEFAULT '0',
  `is_dedicated` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8 COMMENT='stores status of computer login sessions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compstatus`
--

LOCK TABLES `compstatus` WRITE;
/*!40000 ALTER TABLE `compstatus` DISABLE KEYS */;
INSERT INTO `compstatus` VALUES ('LIC9010-50CNPW1',0,'PC','Amoeba 1',1,1,264,118,0,'2014-05-13 21:01:14',1,0,0,0,0),('LIC9010-50NMPW1',1,'PC','Amoeba 1',1,2,279,118,0,'2014-05-15 15:01:10',2,0,0,0,0),('LIC9010-509PPW1',0,'PC','Amoeba 1',1,3,279,131,0,'2014-05-14 15:22:00',3,0,0,0,0),('LIC9010-505QPW1',1,'PC','Amoeba 1',1,4,264,131,0,'2014-05-15 14:50:42',4,0,0,0,0),('LIC9010-503PPW1',0,'PC','Amoeba 2',1,1,204,118,0,'2014-05-14 17:30:13',5,0,0,0,0),('LIC9010-50PQPW1',0,'PC','Amoeba 2',1,2,219,118,0,'2014-05-09 22:31:58',6,0,0,0,0),('LIC9010-1J77DX1',0,'PC','Amoeba 2',1,3,219,131,0,'2014-05-13 15:09:38',7,0,0,0,0),('LIC9010-1J96DX1',1,'PC','Amoeba 2',1,4,204,131,0,'2014-05-15 13:02:56',8,0,0,0,0),('LIC9010-1J68DX1',0,'PC','Amoeba 3',1,1,140,118,0,'2014-05-14 21:18:41',9,0,0,0,0),('LIC9010-1JB5DX1',0,'PC','Amoeba 3',1,2,155,118,0,'2014-05-09 15:20:04',10,0,0,0,0),('LIC9010-1J95DX1',0,'PC','Amoeba 3',1,3,155,131,0,'2014-05-09 20:05:14',11,0,0,0,0),('LIC780-GSRPBM1',0,'PC','Amoeba 3',1,4,140,131,0,'2014-05-13 23:10:38',12,0,0,0,0),('LIC9010-1J88DX1',0,'PC','Amoeba 4',1,1,140,84,0,'2014-05-12 18:20:14',13,0,0,0,0),('LIC9010-1J76DX1',0,'PC','Amoeba 4',1,2,155,84,0,'2014-05-09 16:59:02',14,0,0,0,0),('LIC9010-1J97DX1',0,'PC','Amoeba 4',1,3,155,97,0,'2014-05-09 12:44:51',15,0,0,0,0),('LIC9010-1J98DX1',1,'PC','Amoeba 4',1,4,140,97,0,'2014-05-15 15:12:44',16,0,0,0,0),('LIC780-1Q80QN1',0,'PC','Amoeba 5',1,1,140,43,0,'2014-05-12 15:10:38',17,0,0,0,0),('LIC9010-1J78DX1',0,'PC','Amoeba 5',1,2,155,43,0,'2014-05-14 15:45:39',18,0,0,0,0),('LIC9010-50GQPW1',0,'PC','Amoeba 5',1,3,155,56,0,'2014-05-12 18:26:27',19,0,0,0,0),('LIC9010-1JB6DX1',0,'PC','Amoeba 5',1,4,140,56,0,'2014-05-09 18:50:56',20,0,0,0,0),('LIC9010-50MQPW1',0,'PC','Amoeba 6',1,1,140,9,1,'2013-09-06 15:04:25',21,0,0,0,0),('LIC780-8B9YTL1',0,'PC','Amoeba 6',1,2,155,9,1,'2013-10-14 19:27:39',22,0,0,0,0),('LIC9010-50PNPW1',0,'PC','Amoeba 6',1,3,155,22,1,'2013-10-09 22:01:29',23,0,0,0,0),('LIC780-1R9ZPN1',1,'PC','Amoeba 6',1,4,140,22,1,'2014-02-24 18:24:54',24,0,0,0,0),('LIC9010-50DNPW1',0,'PC','Amoeba 7',1,1,204,9,1,'2014-04-28 07:19:03',25,0,0,0,0),('LIC780-1Q7ZPN1',0,'PC','Amoeba 7',1,2,219,9,1,'2014-02-19 07:20:01',26,0,0,0,0),('LIC780-1PZ0QN1',0,'PC','Amoeba 7',1,3,219,22,1,'2011-08-11 20:04:02',27,0,0,0,0),('LIC780-1Q7YPN1',0,'PC','Amoeba 7',1,4,204,22,1,'2013-11-15 18:14:32',28,0,0,0,0),('LIC9010-50PPW1',0,'PC','Amoeba 8',1,1,264,9,1,'2013-09-06 15:07:02',29,0,0,0,0),('LIC9010-50KNPW1',0,'PC','Amoeba 8',1,2,279,9,1,'2014-01-13 17:21:35',30,0,0,0,0),('LIC780-1Q8YPN1',0,'PC','Amoeba 8',1,3,279,22,1,'2014-01-16 15:26:40',31,0,0,0,0),('LIC9010-50PPPW1',0,'PC','Amoeba 8',1,4,264,22,1,'2014-04-17 02:38:48',32,0,0,0,0),('LIC9020-506NPW1',0,'PC','DNA 1',1,1,286,158,0,'2014-03-27 19:39:09',33,0,0,0,0),('LIC780-1Q11QN1',0,'PC','DNA 1',1,2,272,168,0,'2014-05-14 21:40:35',34,0,0,0,0),('lic780-1r73qn1',1,'PC','DNA 1',1,3,286,180,0,'2014-05-15 00:40:54',35,0,0,0,0),('LIC780-FB9YTL1',0,'PC','DNA 1',1,4,272,192,0,'2014-05-08 18:29:26',36,0,0,0,0),('LIC780-4SRPBM1',0,'PC','DNA 1',1,5,286,204,0,'2014-05-12 19:45:41',37,0,0,0,0),('LIC780-1R5YPN1',0,'PC','DNA 1',1,6,272,216,0,'2014-05-13 21:01:33',38,0,0,0,0),('LIC780-1R82QN1',0,'PC','DNA 2',1,1,256,158,0,'2014-05-15 14:44:06',39,0,0,0,0),('lic780-1pyypn1',0,'PC','DNA 2',1,2,242,168,0,'2014-05-15 00:53:11',40,0,0,0,0),('lic780-1pzypn1',1,'PC','DNA 2',1,3,256,180,0,'2014-03-03 14:08:27',41,0,0,0,0),('lic780-1pz3qn1',0,'PC','DNA 2',1,4,242,192,0,'2014-05-13 17:43:01',42,0,0,0,0),('LIC9010-509NPW1',0,'PC','DNA 2',1,5,256,204,0,'2014-05-14 20:52:11',43,0,0,0,0),('lic780-1pxypn1',0,'PC','DNA 2',1,6,242,216,0,'2014-05-12 16:10:10',44,0,0,0,0),('LIC780-2TRPBM1',0,'PC','DNA 3',1,1,226,158,0,'2014-05-15 13:25:15',45,0,0,0,0),('LIC780-1Q73QN1',0,'PC','DNA 3',1,2,212,168,0,'2014-05-14 15:52:30',46,0,0,0,0),('LIC780-1Q6YPN1',0,'PC','DNA 3',1,3,226,180,0,'2014-05-14 18:41:43',47,0,0,0,0),('LIC780-1RF0QN1',0,'PC','DNA 3',1,4,212,192,0,'2014-05-13 20:56:57',48,0,0,0,0),('LIC780-1Q93QN1',0,'PC','DNA 3',1,5,226,204,0,'2014-05-14 20:22:19',49,0,0,0,0),('LIC780-1Q5YPN1',0,'PC','DNA 3',1,6,212,216,0,'2014-05-14 17:22:25',50,0,0,0,0),('LIC9020-40ZLCZ1',0,'PC','DNA 4',1,1,196,158,0,'2014-05-14 21:39:17',51,0,0,0,0),('LIC780-1Q12QN1',0,'PC','DNA 4',1,2,182,168,0,'2014-05-13 20:42:41',52,0,0,0,0),('LIC780-1PXXPN1',0,'PC','DNA 4',1,3,196,180,0,'2014-05-14 20:50:58',53,0,0,0,0),('LIC780-1R81QN1',0,'PC','DNA 4',1,4,182,192,0,'2014-05-14 14:30:07',54,0,0,0,0),('LIC780-1Q4ZPN1',1,'PC','DNA 4',1,5,196,204,0,'2014-05-15 15:07:58',55,0,0,0,0),('LIC9020-40VLCZ1',0,'PC','DNA 4',1,6,182,216,0,'2014-05-15 14:30:40',56,0,0,0,0),('LIC780-1Q9YPN1',0,'PC','DNA 5',1,1,166,158,0,'2014-05-09 18:48:38',57,0,0,0,0),('lic780-1rb1qn1',0,'PC','DNA 5',1,2,152,168,0,'2014-05-15 14:59:47',58,0,0,0,0),('LIC9020-40TNCZ1',0,'PC','DNA 5',1,3,166,180,0,'2014-05-12 18:44:23',59,0,0,0,0),('LIC780-1RC2QN1',0,'PC','DNA 5',1,4,152,192,0,'2014-05-14 21:00:43',60,0,0,0,0),('LIC9010-504PPW1',0,'PC','DNA 5',1,5,166,204,0,'2014-05-14 13:29:56',61,0,0,0,0),('LIC9020-410PCZ1',0,'PC','DNA 5',1,6,152,216,0,'2014-05-14 15:45:19',62,0,0,0,0),('LIC780-1R90QN1',0,'PC','DNA 6',1,1,136,158,0,'2014-05-09 15:30:16',63,0,0,0,0),('LIC780-1Q12QN1',0,'PC','DNA 6',1,2,122,168,0,'2014-05-13 20:42:41',64,0,0,0,0),('LIC780-1R80QN1',0,'PC','DNA 6',1,3,136,180,0,'2014-05-09 12:55:11',65,0,0,0,0),('LIC780-1Q91QN1',0,'PC','DNA 6',1,4,122,192,0,'2014-05-14 22:34:03',66,0,0,0,0),('LIC780-1R71QN1',0,'PC','DNA 6',1,5,136,204,0,'2014-05-09 20:54:23',67,0,0,0,0),('LIC9010-50NPPW1',0,'PC','DNA 6',1,6,122,216,0,'2014-05-13 21:52:41',68,0,0,0,0),('LIC780-1RDZPN1',0,'PC','DNA 7',1,1,106,158,0,'2014-04-18 15:31:52',69,0,0,0,0),('LIC780-1Q60QN1',0,'PC','DNA 7',1,2,92,168,0,'2014-04-18 20:12:39',70,0,0,0,0),('LIC780-7B9YTL1',0,'PC','DNA 7',1,3,106,180,0,'2014-05-15 14:38:18',71,0,0,0,0),('LIC9020-2BWQCZ1',0,'PC','DNA 7',1,4,92,192,0,'2014-05-13 22:38:32',72,0,0,0,0),('LIC780-6B9YTL1',0,'PC','DNA 7',1,5,106,204,0,'2014-05-14 16:23:35',73,0,0,0,0),('LIC9020-CQLNCZ1',0,'PC','DNA 7',1,6,92,216,0,'2014-05-14 16:39:08',74,0,0,0,0),('LIC780-1PY1QN1',0,'PC','DNA 8',1,1,76,158,0,'2014-04-01 18:41:02',75,0,0,0,0),('LIC780-1Q62QN1',0,'PC','DNA 8',1,2,62,168,0,'2014-02-27 20:26:55',76,0,0,0,0),('LIC9020-CQ7PCZ1',0,'PC','DNA 8',1,3,76,180,0,'2014-05-09 16:56:16',77,0,0,0,0),('LIC9020-40QMCZ1',0,'PC','DNA 8',1,4,62,192,0,'2014-05-13 22:44:51',78,0,0,0,0),('LIC780-1R91QN1',0,'PC','DNA 8',1,5,76,204,0,'2014-04-03 19:06:22',79,0,0,0,0),('LIC780-1PZXPN1',0,'PC','DNA 8',1,6,62,216,0,'2014-02-27 20:02:17',80,0,0,0,0),('LIC780-1Q61QN1',1,'PC','DNA 9',1,1,46,158,0,'2014-04-01 17:26:37',81,0,0,0,0),('LIC9020-40PLCZ1',0,'PC','DNA 9',1,2,32,168,0,'2014-05-14 16:47:57',82,0,0,0,0),('LIC9020-CQJMCZ1',0,'PC','DNA 9',1,3,46,180,0,'2014-05-09 17:36:17',83,0,0,0,0),('LIC780-1R4ZPN1',0,'PC','DNA 9',1,4,32,192,0,'2014-05-09 12:43:20',84,0,0,0,0),('LIC780-1R5ZPN1',0,'PC','DNA 9',1,5,46,204,0,'2014-04-01 17:57:53',85,0,0,0,0),('LIC9010-50GPPW1',0,'PC','DNA 9',1,6,32,216,0,'2014-05-10 00:36:38',86,0,0,0,0),('LIC780-BRRPBM1',0,'PC','DNA 10',1,1,16,158,0,'2014-04-01 17:51:31',87,0,0,0,0),('LIC780-FTRPBM1',0,'PC','DNA 10',1,2,2,168,0,'2014-05-14 23:33:31',88,0,0,0,0),('LIC780-8TRPBM1',0,'PC','DNA 10',1,3,16,180,0,'2014-05-08 18:29:04',89,0,0,0,0),('LIC9020-411MCZ1',0,'PC','DNA 10',1,4,2,192,0,'2014-05-09 17:40:16',90,0,0,0,0),('LIC780-7TRPBM1',0,'PC','DNA 10',1,5,16,204,0,'2014-02-18 18:38:31',91,0,0,0,0),('LIC9020-40TMCZ1',1,'PC','DNA 10',1,6,2,216,0,'2014-05-15 15:16:26',92,0,0,0,0),('LIC780-9TRPBM1',0,'PC','Window',1,1,289,227,0,'2014-05-14 20:55:15',93,0,0,0,0),('LIC780-HRRPBM1',0,'PC','Window',1,2,279,227,0,'2014-05-14 21:00:03',94,0,0,0,0),('LIC780-8SRPBM1',0,'PC','Window',1,3,269,227,0,'2014-05-12 20:53:10',95,0,0,0,0),('LIC9020-40WMCZ1',0,'PC','Window',1,4,259,227,0,'2014-05-14 14:13:51',96,0,0,0,0),('LIC9020-CQMMCZ1',0,'PC','Window',1,5,249,227,0,'2014-05-09 16:50:54',97,0,0,0,0),('LIC780-HTRPBM1',0,'PC','Window',1,6,232,227,0,'2014-05-09 20:40:45',98,0,0,0,0),('LIC780-6TRPBM1',0,'PC','Window',1,7,222,227,0,'2014-05-14 17:22:12',99,0,0,0,0),('LIC780-HSRPBM1',0,'PC','Window',1,8,212,227,0,'2014-03-27 19:59:19',100,0,0,0,0),('LIC780-BSRPBM1',1,'PC','Window',1,9,105,227,0,'2014-05-09 12:57:05',101,0,0,0,0),('LIC780-JRRPBM1',0,'PC','Window',1,10,95,227,0,'2014-04-03 19:09:23',102,0,0,0,0),('LIC9020-40TLCZ1',0,'PC','Window',1,11,85,227,0,'2014-05-09 02:03:48',103,0,0,0,0),('LIC9020-40QLCZ1',0,'PC','Window',1,12,75,227,0,'2014-05-09 01:51:02',104,0,0,0,0),('LIC780-GRRPBM1',0,'PC','Window',1,13,51,227,0,'2014-04-04 02:24:22',105,0,0,0,0),('LIC9020-40SLCZ1',0,'PC','Window',1,14,41,227,0,'2014-05-09 12:55:49',106,0,0,0,0),('LIC9020-40ZNCZ1',0,'PC','Window',1,15,31,227,0,'2014-05-08 18:35:58',107,0,0,0,0),('LIC9020-40YLCZ1',0,'PC','Window',1,16,21,227,0,'2014-05-09 12:14:34',108,0,0,0,0),('LIC9020-40YMCZ1',0,'PC','Window',1,17,11,227,0,'2014-05-09 15:34:11',109,0,0,0,0),('licimac-80jxdnn',0,'Mac','Amoeba 9',1,1,102,62,0,'2014-05-09 20:21:22',110,0,0,0,0),('licimac-80h8dnn',1,'Mac','Amoeba 9',1,2,115,62,0,'2014-05-09 11:09:35',111,0,0,0,0),('licimac-80htdnn',0,'Mac','Amoeba 9',1,3,115,75,0,'2014-05-14 22:50:59',112,0,0,0,0),('licimac-60pmdnn',0,'Mac','Amoeba 9',1,4,102,75,0,'2014-05-12 19:41:21',113,0,0,0,0),('LICIMAC-60Q1DNN',0,'Mac','Amoeba 10',1,1,69,62,0,'2014-05-14 22:20:40',114,0,0,0,0),('LICIMAC-60TSDNN',0,'Mac','Amoeba 10',1,2,82,62,0,'2014-05-13 21:00:19',115,0,0,0,0),('LICIMAC-80H7DNN',1,'Mac','Amoeba 10',1,3,82,75,0,'2013-09-06 16:16:35',116,0,0,0,0),('LICIMAC-60TTDNN',0,'Mac','Amoeba 10',1,4,69,75,0,'2014-05-13 18:05:23',117,0,0,0,0),('licimac-70w6dnn',1,'Mac','Amoeba 11',1,1,36,62,0,'2014-05-07 23:55:43',118,0,0,0,0),('licimac-80gxdnn',0,'Mac','Amoeba 11',1,2,49,62,0,'2014-04-23 13:55:15',119,0,0,0,0),('licimac-60q3dnn',0,'Mac','Amoeba 11',1,3,49,75,0,'2013-08-16 18:26:54',120,0,0,0,0),('licimac-7089dnn',0,'Mac','Amoeba 11',1,4,36,75,0,'2014-05-12 17:36:35',121,0,0,0,0),('licimac-80j5dnn',0,'Mac','Amoeba 12',1,1,3,62,0,'2014-05-12 17:56:42',122,0,0,0,0),('licimac-60pudnn',0,'Mac','Amoeba 12',1,2,16,62,0,'2014-05-09 15:59:35',123,0,0,0,0),('licimac-80hfdnn',0,'Mac','Amoeba 12',1,3,16,75,0,'2014-05-13 18:01:31',124,0,0,0,0),('licimac-70tsdnn',0,'Mac','Amoeba 12',1,4,3,75,0,'2014-05-13 20:43:44',125,0,0,0,0),('LICLEN-MJTE629',0,'PC','1',2,1,106,43,0,'2012-11-29 21:45:27',126,0,0,1,0),('LICLEN-MJTE622',0,'PC','1',2,2,135,43,0,'2012-11-29 21:45:50',127,0,0,1,0),('LICLEN-MJTE639',0,'PC','1',2,3,164,43,0,'2012-11-29 21:51:59',128,0,0,1,0),('LICLEN-MJTE643',0,'PC','1',2,4,106,55,0,'2013-12-04 21:37:15',129,0,0,1,0),('LICLEN-MJTE637',0,'PC','1',2,5,135,55,0,'2012-11-29 21:51:40',130,0,0,1,0),('LICLEN-MJTE63x',0,'PC','1',2,6,164,55,0,'2012-11-29 21:51:00',131,0,0,1,0),('LICLEN-MJTE638',0,'PC','2',2,1,106,79,0,'2012-11-29 21:53:01',132,0,0,1,0),('LICLEN-MJTE628',0,'PC','2',2,2,135,79,0,'2014-05-09 14:43:35',133,0,0,1,0),('LICLEN-MJTE644',0,'PC','2',2,3,164,79,0,'2014-02-03 15:36:26',134,0,0,1,0),('LICLEN-MJTE620',0,'PC','2',2,4,106,91,0,'2012-11-29 21:46:24',135,0,0,1,0),('LICLEN-MJTE640',0,'PC','2',2,5,135,91,0,'2012-11-29 21:53:21',136,0,0,1,0),('LICLEN-MJTE630',0,'PC','2',2,6,164,91,0,'2014-05-09 09:06:08',137,0,0,1,0),('LICLEN-MJTE634',0,'PC','3',2,1,106,126,0,'2014-05-14 23:48:03',138,0,0,0,0),('LICLEN-MJTE618',0,'PC','3',2,2,135,126,0,'2014-05-09 12:11:21',139,0,0,0,0),('LICLEN-MJTE633',0,'PC','3',2,3,164,126,0,'2013-08-16 18:26:54',140,0,0,0,0),('LICLEN-MJTE625',0,'PC','3',2,4,106,138,0,'2014-05-14 16:56:39',141,0,0,0,0),('LICLEN-MJTE647',0,'PC','3',2,5,135,138,0,'2014-05-09 17:48:47',142,0,0,0,0),('LICLEN-MJTE626',0,'PC','3',2,6,164,138,0,'2014-05-14 15:00:50',143,0,0,0,0),('LICIMAC-31E9DAS',0,'Mac','4',2,1,106,158,0,'2014-05-12 16:57:22',144,0,0,0,0),('LICIMAC-80HPDNN',0,'Mac','4',2,2,135,158,0,'2014-05-15 00:17:29',145,0,0,0,0),('LICIMAC-70W2DNN',1,'Mac','4',2,3,106,170,0,'2014-05-09 16:35:29',146,0,0,0,0),('LICIMAC-60PNDNN',1,'Mac','4',2,4,135,170,0,'2014-05-01 22:14:17',147,0,0,0,0),('LICIMAC-60PKDNN',0,'Mac','5',2,1,106,208,0,'2014-05-09 02:55:21',148,0,0,0,0),('LICIMAC-35GVDAS',1,'Mac','5',2,2,135,208,0,'2014-05-14 22:54:19',149,0,0,0,0),('LICIMAC-80GlDNN',0,'Mac','5',2,3,164,208,0,'2014-05-09 19:33:49',150,0,0,0,0),('LICIMAC-60PXDNN',1,'Mac','5',2,4,106,220,0,'2014-05-09 17:37:48',151,0,0,0,0),('LICIMAC-80GRDNN',0,'Mac','5',2,5,135,220,0,'2014-05-13 00:58:19',152,0,0,0,0),('LICIMAC-80GPDNN',1,'Mac','5',2,6,164,220,0,'2014-05-12 21:58:21',153,0,0,0,0),('LIC9010-50CPPW1',0,'PC','6',3,1,106,120,0,'2014-05-13 12:01:01',154,0,0,0,0),('LIC9010-50QPPW1',0,'PC','6',3,2,141,120,0,'2014-05-09 19:15:31',155,0,0,0,0),('LIC9010-50NNPW1',0,'PC','6',3,3,176,120,0,'2014-05-14 20:24:01',156,0,0,0,0),('LIC9010-504QPW1',0,'PC','6',3,4,106,131,0,'2014-05-14 16:17:57',157,0,0,0,0),('LIC9010-506QPW1',0,'PC','6',3,5,141,131,0,'2014-05-08 18:29:03',158,0,0,0,0),('LIC9010-50HNPW1',0,'PC','6',3,6,176,131,0,'2014-05-14 00:45:53',159,0,0,0,0),('LIC9010-50NQPW1',0,'PC','7',3,1,106,143,0,'2014-05-09 18:07:27',160,0,0,0,0),('LIC9010-507NPW1',0,'PC','7',3,2,141,143,0,'2014-05-13 20:12:03',161,0,0,0,0),('LIC9010-50CQPW1',0,'PC','7',3,3,176,143,0,'2014-05-09 18:17:20',162,0,0,0,0),('LIC9010-50BPPW1',0,'PC','7',3,4,106,154,0,'2014-05-09 18:50:46',163,0,0,0,0),('LIC9010-503NPW1',1,'PC','7',3,5,141,154,0,'2014-05-12 19:59:31',164,0,0,0,0),('LIC9010-506PPW1',0,'PC','7',3,6,176,154,0,'2014-05-13 00:51:55',165,0,0,0,0),('LIC9010-50QQPW1',0,'PC','8',3,1,106,168,0,'2014-05-12 19:59:08',166,0,0,0,0),('LIC9010-508NPW1',0,'PC','8',3,2,141,168,0,'2014-05-09 06:22:20',167,0,0,0,0),('LIC9010-1J85DX1',0,'PC','8',3,3,176,168,0,'2014-05-14 21:23:09',168,0,0,0,0),('LIC9010-50FPPW1',0,'PC','8',3,4,106,179,0,'2014-05-13 21:38:21',169,0,0,0,0),('LIC9010-50BQPW1',0,'PC','8',3,5,141,179,0,'2014-05-09 03:01:56',170,0,0,0,0),('LIC9010-50MNPW1',0,'PC','8',3,6,176,179,0,'2014-05-13 21:37:56',171,0,0,0,0),('LIC9010-1J75DX1',0,'PC','9',3,1,106,191,0,'2014-05-12 21:49:21',172,0,0,0,0),('LIC9010-50BNPW1',0,'PC','9',3,2,141,191,0,'2014-05-08 18:23:12',173,0,0,0,0),('LIC9010-50LQPW1',0,'PC','9',3,3,176,191,0,'2014-05-09 16:25:47',174,0,0,0,0),('LIC9010-1J87DX1',0,'PC','9',3,4,106,202,0,'2014-05-15 12:10:14',175,0,0,0,0),('LIC9010-50GNPW1',0,'PC','9',3,5,141,202,0,'2014-05-09 11:03:53',176,0,0,0,0),('LIC9010-50KPPW1',0,'PC','9',3,6,176,202,0,'2014-05-09 06:44:42',177,0,0,0,0),('lic9010-50QMPW1',0,'PC','10',3,1,106,214,0,'2014-05-09 17:42:51',178,0,0,0,0),('LIC9010-508QPW1',0,'PC','10',3,2,141,214,0,'2014-05-09 17:54:35',179,0,0,0,0),('LIC9010-1J86DX1',0,'PC','10',3,3,176,214,0,'2014-05-15 14:17:59',180,0,0,0,0),('LIC9010-505PPW1',0,'PC','10',3,4,106,225,0,'2014-05-12 22:23:31',181,0,0,0,0),('LIC9010-504NPW1',0,'PC','10',3,5,141,225,0,'2014-05-09 14:45:07',182,0,0,0,0),('LIC9010-1J87DX1',0,'PC','10',3,6,176,225,0,'2014-05-15 12:10:14',183,0,0,0,0),('LICIMAC-80HlDNN',1,'Mac','1',3,1,133,1,0,'2014-05-13 20:41:17',184,0,0,0,0),('LICIMAC-60TRDNN',0,'Mac','1',3,2,148,1,0,'2014-05-14 18:52:24',185,0,0,0,0),('LICIMAC-818YZE2',0,'Mac','1',3,4,133,12,0,'2014-05-09 19:18:45',186,0,0,0,0),('LICIMAC-80HXDNN',1,'Mac','1',3,3,148,12,0,'2014-05-08 18:10:36',187,0,0,0,0),('LICIMAC-80JJZE2',0,'Mac','2',3,1,100,30,0,'2014-05-09 19:27:24',188,0,0,0,0),('LICIMAC-83R5X88',0,'Mac','2',3,2,111,30,0,'2014-05-09 13:38:28',189,0,0,0,0),('LICIMAC-80JSZE2',0,'Mac','2',3,3,122,30,0,'2014-05-09 13:35:53',190,0,0,0,0),('LICIMAC-83RBX88',0,'Mac','2',3,4,133,30,0,'2014-05-13 23:13:34',191,0,0,0,0),('LICIMAC-80JZZE2',0,'Mac','2',3,5,100,41,0,'2014-05-09 18:31:36',192,0,0,0,0),('LICIMAC-83RFX88',0,'Mac','2',3,6,111,41,0,'2014-05-09 03:24:43',193,0,0,0,0),('LICIMAC-818YZE2',0,'Mac','2',3,7,122,41,0,'2014-05-09 19:18:45',194,0,0,0,0),('LICIMAC-83RXC88',1,'Mac','2',3,8,133,41,0,'2013-09-06 15:57:02',195,0,0,0,0),('LICIMAC-83RGX88',1,'Mac','3',3,1,148,30,0,'2014-05-09 17:14:16',196,0,0,0,0),('LICIMAC-83R6X88',1,'Mac','3',3,2,159,30,0,'2014-05-14 17:12:57',197,0,0,0,0),('LICIMAC-83R8X88',0,'Mac','3',3,3,170,30,0,'2014-05-08 18:41:47',198,0,0,0,0),('LICIMAC-80RJZE2',0,'Mac','3',3,4,181,30,0,'2014-05-09 17:50:34',199,0,0,0,0),('LICIMAC-80HYDNN',0,'Mac','3',3,5,148,41,0,'2014-05-08 21:24:03',200,0,0,0,0),('LICIMAC-83RAX88',0,'Mac','3',3,6,159,41,0,'2014-05-09 01:38:35',201,0,0,0,0),('LICIMAC-83R7X88',0,'Mac','3',3,7,170,41,0,'2014-05-09 01:39:07',202,0,0,0,0),('LICIMAC-81RVZE2',0,'Mac','3',3,8,181,41,0,'2014-05-14 20:52:04',203,0,0,0,0),('LICIMAC-42Z9ZE3',1,'Mac','4',3,1,106,62,0,'2014-05-08 18:14:06',204,0,0,0,0),('LICIMAC-616VZE3',0,'Mac','4',3,2,141,62,0,'2014-05-09 11:58:06',205,0,0,0,0),('licimac-3NLDNM1',0,'Mac','4',3,3,176,62,0,'2014-05-06 05:32:57',206,0,0,0,0),('LICIMAC-42Z7ZE3',0,'Mac','4',3,4,106,73,0,'2014-05-12 17:53:12',207,0,0,0,0),('LICIMAC-42FNZE3',0,'Mac','4',3,5,141,73,0,'2014-05-12 17:47:56',208,0,0,0,0),('LICIMAC-42NEZE3',1,'Mac','4',3,6,176,73,0,'2014-05-09 02:52:37',209,0,0,0,0),('LICIMAC-82N2ZE2',0,'Mac','5',3,1,106,85,0,'2014-05-09 21:12:02',210,0,0,0,0),('LICIMAC-80KBZE2',0,'Mac','5',3,2,141,85,0,'2014-05-08 17:51:48',211,0,0,0,0),('LICIMAC-815QZE2',0,'Mac','5',3,3,176,85,0,'2014-05-13 17:30:04',212,0,0,0,0),('LICIMAC-24PDNML',0,'Mac','5',3,4,106,96,0,'2014-05-09 21:43:35',213,0,0,0,0),('LICIMAC-82KNZE2',0,'Mac','5',3,5,141,96,0,'2014-05-09 17:36:30',214,0,0,0,0),('LICIMAC-35EDNML',0,'Mac','5',3,6,176,96,0,'2014-05-06 05:34:57',215,0,0,0,0),('LIC9020-CQDPZ1',0,'PC','Amoeba 1',0,1,264,177,0,'2014-03-27 19:28:53',216,0,0,0,0),('LIC9020-40WNCZ1',1,'PC','Amoeba 1',0,2,280,177,0,'2014-05-14 19:28:46',217,0,0,0,0),('lic780-1rc3qn1',1,'PC','Amoeba 1',0,3,280,191,0,'2014-05-07 17:52:36',218,0,0,0,0),('lic780-1py3qn1',0,'PC','Amoeba 1',0,4,264,191,0,'2014-05-14 19:29:37',219,0,0,0,0),('LIC9010-50HPPWL',0,'PC','Amoeba 2',0,1,216,177,0,'2013-09-06 14:45:37',220,0,0,0,0),('lic780-1pyxpn1',0,'PC','Amoeba 2',0,2,230,177,0,'2014-05-09 17:59:44',221,0,0,0,0),('lic780-1q0zpn1',0,'PC','Amoeba 2',0,3,230,191,0,'2014-05-14 16:56:58',222,0,0,0,0),('LIC9020-40PMCZ1',0,'PC','Amoeba 2',0,4,216,191,0,'2014-05-14 00:39:38',223,0,0,0,0),('LIC755-B1JKDF1',1,'PC','Amoeba 3',0,1,168,177,0,'2013-08-22 18:29:36',224,0,0,0,1),('lic780-1r92qn1',0,'PC','Amoeba 3',0,2,182,177,0,'2014-05-14 21:19:14',225,0,1,0,0),('lic780-gb9ytl1',0,'PC','Amoeba 3',0,3,182,191,0,'2012-06-23 06:17:58',226,0,1,0,0),('LIC755-725LWH1',0,'PC','Amoeba 3',0,4,168,191,0,'2012-11-29 21:55:25',227,0,0,0,1),('lic780-1q14qn1',0,'PC','Amoeba 4',0,1,72,177,0,'2014-05-09 17:00:02',228,0,0,0,0),('LIC780-1Q8ZPN1',0,'PC','Amoeba 4',0,2,86,177,0,'2014-05-09 18:34:29',229,0,0,0,0),('LIC9010-509QPW1',0,'PC','Amoeba 4',0,3,86,191,0,'2014-05-09 16:34:20',230,0,0,0,0),('lic780-1q00qn1',0,'PC','Amoeba 4',0,4,72,191,0,'2014-05-15 13:08:28',231,0,0,0,0),('lic780-1q03qn1',0,'PC','Amoeba 5',0,1,24,177,0,'2014-02-28 18:08:42',232,0,0,0,0),('lic780-1r8zpn1',1,'PC','Amoeba 5',0,2,38,177,0,'2014-05-08 19:16:31',233,0,0,0,0),('LIC780-7G5YTL1',0,'PC','Amoeba 5',0,3,38,191,0,'2014-05-09 17:03:05',234,0,0,0,0),('LIC780-1R52QN1',0,'PC','Amoeba 5',0,4,24,191,0,'2014-05-14 17:56:53',235,0,0,0,0),('LIC780-1Q5ZPN1',0,'PC','Amoeba 6',0,1,240,144,0,'2014-05-09 17:28:55',236,0,0,0,0),('LIC780-1Q83QN1',0,'PC','Amoeba 6',0,2,254,144,0,'2014-05-09 06:20:33',237,0,0,0,0),('LIC780-1Q4YPN1',0,'PC','Amoeba 6',0,3,254,158,0,'2014-05-12 21:36:12',238,0,0,0,0),('LIC780-1Q81QN1',0,'PC','Amoeba 6',0,4,240,158,0,'2014-05-12 17:36:26',239,0,0,0,0),('LIC780-1PYZPN1',0,'PC','Amoeba 7',0,1,240,114,0,'2014-05-12 17:04:48',240,0,0,0,0),('LIC9020-CQLLCZ1',0,'PC','Amoeba 7',0,2,254,114,0,'2014-03-27 19:33:33',241,0,0,0,0),('LIC780-1Q0YPN1',0,'PC','Amoeba 7',0,3,254,128,0,'2014-05-12 15:45:25',242,0,0,0,0),('LIC780-1Q63QN1',0,'PC','Amoeba 7',0,4,240,128,0,'2014-05-08 21:49:59',243,0,0,0,0),('LIC780-1PZZPN1',0,'PC','Amoeba 8',0,1,240,84,0,'2014-05-14 19:45:22',244,0,0,0,0),('lic780-1q02qn1',1,'PC','Amoeba 8',0,2,254,84,0,'2014-05-15 14:49:16',245,0,0,0,0),('LIC9010-50FQPW1',0,'PC','Amoeba 8',0,3,254,98,0,'2014-05-13 23:13:26',246,0,0,0,0),('lic780-1q13qn1',0,'PC','Amoeba 8',0,4,240,98,0,'2014-05-14 23:57:57',247,0,0,0,0),('LIC780-1Q62QN1',0,'PC','DNA 8',1,2,62,168,0,'2014-02-27 20:26:55',248,0,0,0,0);
/*!40000 ALTER TABLE `compstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exceptions`
--

DROP TABLE IF EXISTS `exceptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exceptions` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `computer_name` varchar(250) CHARACTER SET utf8 NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exceptions`
--

LOCK TABLES `exceptions` WRITE;
/*!40000 ALTER TABLE `exceptions` DISABLE KEYS */;
INSERT INTO `exceptions` VALUES (1,'LIC-IMAC-110','2013-11-11 21:32:38'),(2,'LICMUS-CZHKDF1','2013-11-11 21:34:43'),(3,'LIC5430-797W9W1','2013-11-11 21:35:28'),(4,'LIC9010-50NPPW1','2013-11-11 21:37:12'),(5,'LICCAFE-4TRPBM1','2013-11-11 21:37:26'),(6,'LICMUS-19K5LF1','2013-11-11 21:37:41'),(7,'LICCAFE-1RCZPN1','2013-11-11 21:38:26'),(8,'LICMUS-1RC0QN1','2013-11-11 21:38:47'),(9,'LIC780-D6FYTL1','2013-11-11 21:39:07'),(10,'LIC9010-50HPPW1','2013-11-11 21:43:26'),(11,'LIC5430-HZDW9W1','2013-11-11 21:43:28'),(12,'LIC9010-1JB7DX1','2013-11-11 21:43:35'),(13,'LICMUS-3FCWFC1','2013-11-11 21:44:14'),(14,'LICMUS-1RB2QN1','2013-11-11 21:46:14'),(15,'LIC-IMACS-LL1','2013-11-11 21:47:45'),(16,'LIC780-1R62QN1','2013-11-11 21:48:17'),(17,'LIC9010-50LNPW1','2013-11-11 21:48:21'),(18,'LIC5430-BX6W9W1','2013-11-11 21:48:22'),(19,'LICMUS-J6CWFC1','2013-11-11 21:49:09'),(20,'LIC780-37FYTL1','2013-11-11 21:49:42'),(21,'LICMUS-7T55XH1','2013-11-11 21:51:21'),(22,'LIC780-5TRPBM1','2013-11-11 21:51:33'),(23,'LIC780-47FYTL1','2013-11-11 21:53:41'),(24,'LIC5430-3T4W9W1','2013-11-11 21:55:37'),(25,'LICIMAC-4XBDNM1','2013-11-11 21:57:10'),(26,'LICMUS-1RB0QN1','2013-11-11 21:58:13'),(27,'LIC780-1R50QN1','2013-11-11 22:01:15'),(28,'LICMUS-D336LF1','2013-11-11 22:03:23'),(29,'LIC5430-BN6W9W1','2013-11-11 22:04:57'),(30,'LIC780-1R63QN1','2013-11-11 22:14:24'),(31,'LIC5430-GZ4W9W1','2013-11-11 22:17:19'),(32,'LICMUS-CSRPBM1','2013-11-11 22:19:28'),(33,'LICIMAC-83RCX88','2013-11-11 22:22:40'),(34,'LIC780-CTRPBM1','2013-11-11 22:23:02'),(35,'LIC780-1Q2YPN1','2013-11-11 22:27:42'),(36,'LIC780-1RCYPN1','2013-11-11 22:29:27'),(37,'LICMUS-HH13RC1','2013-11-11 22:29:56'),(38,'LIC4310-8N6FXN1','2013-11-11 22:40:14'),(39,'LIC4310-JZ5FXN1','2013-11-11 22:42:49'),(40,'LIC5430-3X4W9W1','2013-11-11 22:46:27'),(41,'LIC5430-HW4W9W1','2013-11-11 22:47:27'),(42,'LIC-IMAC-LL3','2013-11-11 22:47:44'),(43,'LIC9010-502QPW1','2013-11-11 22:51:30'),(44,'LIC-IMAC-LL2','2013-11-11 23:06:21'),(45,'LICMUS-BK13RC1','2013-11-11 23:20:47'),(46,'LIC4310-2NHFXN1','2013-11-11 23:21:18'),(47,'LIC-214','2013-11-11 23:25:53'),(48,'LIC-IMAC-LL4','2013-11-11 23:32:07'),(49,'LIC5430-BR4W9W1','2013-11-11 23:44:27'),(50,'LIC5430-GR4W9W1','2013-11-11 23:45:17'),(51,'LIC9010-50QNPW1','2013-11-12 00:15:42'),(52,'LIC4310-3N6FXN1','2013-11-12 00:16:10'),(53,'LIC4310-GRHFXN1','2013-11-12 00:26:52'),(54,'LIC4310-906FXN1','2013-11-12 00:31:44'),(55,'WC001','2013-11-12 00:33:44'),(56,'LIC5430-CK5W9W1','2013-11-12 00:41:21'),(57,'LIC9010-50LPPW1','2013-11-12 00:43:07'),(58,'LIC5430-JV9W9W1','2013-11-12 01:12:05'),(59,'LICMUS-1LZMWH1','2013-11-12 01:31:06'),(60,'LIC5430-975W9W1','2013-11-12 02:18:17'),(61,'LIC5430-565W9W1','2013-11-12 02:19:51'),(62,'LIC5430-15FW9W1','2013-11-12 02:47:36'),(63,'LIC9010-50KQPW1','2013-11-12 04:06:19'),(64,'LICMUS-C1JKDF1','2013-11-12 13:42:55'),(65,'LICAT-57FYTL1','2013-11-12 13:55:52'),(66,'LICMUS-299PWH1','2013-11-12 14:05:05'),(67,'LIC780-1R7YPN1','2013-11-12 15:08:08'),(68,'LIC9010-50JQPW1','2013-11-12 16:08:56'),(69,'LICMUS-1K13RC1','2013-11-12 16:46:39'),(70,'LIC9010-507PPW1','2013-11-12 17:14:19'),(71,'LIC5430-505W9W1','2013-11-12 17:34:52'),(72,'LIC5430-BT5W9W1','2013-11-12 18:33:58'),(73,'LIC114-1R6YPN1','2013-11-12 20:09:39'),(74,'LIC026-POD','2013-11-12 21:50:59'),(75,'LIC024-4TC9XR1','2013-11-12 22:16:49'),(76,'LICLEN-MJTE624','2013-11-13 13:49:33'),(77,'LIC780-3TRPBM1','2013-11-13 15:53:31'),(78,'LIC755-GGX6XH1','2013-11-15 13:42:22'),(79,'LICCOM-1Q72QN1','2013-11-18 16:26:08'),(80,'LIC5430-5T4W9W1','2013-11-18 20:07:11'),(81,'LIC780-1PZ1QN1','2013-11-18 20:14:39'),(82,'LIC780-1RD1QN1','2013-11-18 20:43:17'),(83,'LIC024-4TH5XR1','2013-11-18 21:01:59'),(84,'LIC024-4TM3XR1','2013-11-18 21:02:43'),(85,'LIC024-4TM8XR1','2013-11-18 21:03:54'),(86,'LIC5430-2T4W9W1','2013-11-18 21:34:21'),(87,'LIC5430-7X4W9W1','2013-11-18 21:34:21'),(88,'LIC024-4TL7XR1','2013-11-19 17:43:07'),(89,'LIC028-4TK6XR1','2013-11-20 17:03:35'),(90,'LIC028-4TJ4XR1','2013-11-20 17:05:59'),(91,'LICAT-1Q6ZPN1','2013-11-22 18:46:39'),(92,'LICAT-CB9YTL1','2013-11-22 18:50:45'),(93,'LIC140-CRRPBM1','2013-12-02 15:01:55'),(94,'LIC028-4TP4XR1','2013-12-02 18:37:41'),(95,'LIC028-4TJ8XR1','2013-12-03 15:04:39'),(96,'LIC024-4TQ3XR1','2013-12-03 17:32:27'),(97,'LIC024-4TH3XR1','2013-12-03 17:32:32'),(98,'LIC024-4TD3XR1','2013-12-03 18:24:10'),(99,'LIC9010-50MPPW1','2013-12-04 04:26:54'),(100,'LIC028-4TD8XR1','2013-12-04 17:01:43'),(101,'LIC780-1Q43QN1','2013-12-05 17:51:05'),(102,'LIC026-B7N5GQ1','2013-12-06 03:10:18'),(103,'LIC9010-CIRCLL2','2013-12-08 17:57:58'),(104,'LIC755-HT55XH1','2013-12-13 13:26:16'),(105,'LIC780-1Q63QN1','2013-12-18 14:53:42'),(106,'LICIMAC-W89080J','2013-12-19 18:10:45'),(107,'LICIMAC-80JSZE2','2013-12-19 19:38:16'),(108,'LIC9010-CIRC-SC','2014-01-06 18:56:14'),(109,'LICMUS-410NCZ1','2014-01-17 19:19:50'),(110,'LIC760-JMZYVH1','2014-01-20 17:49:16'),(111,'LIC024-4TH7XR1','2014-01-21 14:24:44'),(112,'LIC024-4TL8XR1','2014-01-22 18:56:44'),(113,'LIC024-4TP7XR1','2014-01-22 18:58:41'),(114,'LIC024-4TD7XR1','2014-01-22 19:33:14'),(115,'LIC024-4TJ5XR1','2014-01-22 20:30:27'),(116,'LIC024-4TH8XR1','2014-01-23 14:19:22'),(117,'LIC9020-410PCZ1','2014-01-24 18:43:16'),(118,'LIC9020-40VLCZ1','2014-01-24 18:51:23'),(119,'LICCOM-1Q3ZPN21','2014-01-25 18:16:43'),(120,'LIC9010-CIRCMUS','2014-01-25 19:38:38'),(121,'LIC028-4TL6XR1','2014-01-27 12:58:11'),(122,'','2014-01-28 16:47:41'),(123,'LIC028-4TD4XR1','2014-01-28 17:24:13'),(124,'LIC5430-4N5W9W1','2014-01-28 19:19:12'),(125,'LIC028-4TL4XR1','2014-01-30 14:31:07'),(126,'LIC024-4TJ6XR1','2014-01-30 14:35:52'),(127,'LIC026-B7M6GQ1','2014-01-30 18:56:13'),(128,'LIC9020-40TNCZ1','2014-01-30 20:00:27'),(129,'LIC780-1R9YPN1','2014-02-03 17:10:21'),(130,'LIC024-4TG9XR1','2014-02-06 14:13:16'),(131,'LIC028-4TN7XR1','2014-02-06 14:34:00'),(132,'LIC024-4TM4XR1','2014-02-06 15:51:40'),(133,'LIC024-4TJ3XR1','2014-02-07 12:54:46'),(134,'LIC9010-REF-3','2014-02-16 18:18:24'),(135,'LIC9020-40ZNCZ1','2014-02-17 20:44:18'),(136,'LIC9020-40YMCZ1','2014-02-17 21:40:54'),(137,'LIC9020-40YLCZ1','2014-02-17 22:12:55'),(138,'LIC9020-40SLCZ1','2014-02-18 00:59:48'),(139,'LIC024-4TN8XR1','2014-02-18 14:59:56'),(140,'LIC9020-40TMCZ1','2014-02-18 18:58:09'),(141,'LIC9020-40PMCZ1','2014-02-18 19:26:15'),(142,'LIC024-4TP8XR1','2014-02-18 20:34:17'),(143,'LIC9020-40QMCZ1','2014-02-18 20:51:59'),(144,'LIC9020-40QLCZ1','2014-02-18 21:17:11'),(145,'LIC028-4TK4XR1','2014-02-18 22:10:10'),(146,'LIC780-FRRPBM1','2014-02-19 00:47:45'),(147,'LIC9020-40PLCZ1','2014-02-19 02:38:01'),(148,'LIC9020-40WMCZ1','2014-02-19 15:09:37'),(149,'LIC024-4TL5XR1','2014-02-19 18:42:36'),(150,'LIC780-1RD2QN1','2014-02-19 23:17:05'),(151,'LIC9020-411MCZ1','2014-02-20 18:00:39'),(152,'LIC028-4TN5XR1','2014-02-20 22:33:33'),(153,'LIC9020-CQDPCZ1','2014-02-27 18:23:51'),(154,'LIC9020-40WNCZ1','2014-02-27 18:33:02'),(155,'LIC9020-CQNMCZ1','2014-02-27 21:02:52'),(156,'LIC9020-CQ8MCZ1','2014-02-27 21:05:03'),(157,'LIC9020-CQDNCZ1','2014-02-28 18:25:15'),(158,'LIC9020-40ZLCZ1','2014-03-04 19:22:44'),(159,'LIC9020-CQMMCZ1','2014-03-04 20:03:22'),(160,'LIC-CQMLCZ1','2014-03-04 20:05:48'),(161,'LIC-CQLLCZ1','2014-03-05 13:22:04'),(162,'LICMUS-CQHMCZ1','2014-03-14 18:01:21'),(163,'LICMUS-40RNCZ1','2014-03-16 20:23:45'),(164,'LICMUS-40XMCZ1','2014-03-17 00:34:26'),(165,'LICMUS-CQ9LCZ1','2014-03-17 12:58:48'),(166,'LICMUS-40VMCZ1','2014-03-17 13:00:57'),(167,'LIC9020-CQ7PCZ1','2014-03-18 19:05:17'),(168,'LIC9020-CQLNCZ1','2014-03-18 19:23:57'),(169,'LIC9020-CQJMCZ1','2014-03-18 19:25:24'),(170,'LIC9020-40TLCZ1','2014-03-18 19:44:53'),(171,'LIC9020-2BWQCZ1','2014-03-18 19:50:40'),(172,'LIC024-4TP6XR1','2014-03-20 21:08:58'),(173,'LIC028-0APF8J7','2014-03-21 15:59:59'),(174,'LIC024-4TM6XR1','2014-03-26 18:12:42'),(175,'LIC026-B7NCGQ1','2014-03-26 19:30:11'),(176,'LIC780-1TRPBM1','2014-03-27 19:22:37'),(177,'LIC780-1PY0QN1','2014-03-27 19:33:35'),(178,'LIC780-1R61QN1','2014-03-27 20:00:49'),(179,'LIC9010-506NPW1','2014-03-27 20:10:03'),(180,'LIC780-2SRPBM1','2014-03-27 21:00:40'),(181,'LIC780-1Q70QN1','2014-03-27 21:05:08'),(182,'LIC780-1Q51QN1','2014-03-28 02:09:31'),(183,'LIC9020-CQBNCZ1','2014-04-01 18:44:13'),(184,'LIC9020-CQJLCZ1','2014-04-01 18:56:07'),(185,'LIC9020-CQHLCZ1','2014-04-01 19:27:32'),(186,'LICCOM-1Q42QN1','2014-04-02 16:08:22'),(187,'LIC9020-CQDMCZ1','2014-04-03 20:47:48'),(188,'LIC9020-CQHNCZ1','2014-04-04 17:39:35'),(189,'LIC9020-CQ7NCZ1','2014-04-07 14:44:04'),(190,'LIC024-4TH4XR1','2014-04-08 17:59:30'),(191,'LIC9020-CQGNCZ1','2014-04-08 18:07:27'),(192,'LIC9020-CQ8NCZ1','2014-04-09 02:43:10'),(193,'LIC024-4TH9XR1','2014-04-10 17:53:43'),(194,'LIC024-4TJ9XR1','2014-04-16 14:00:23'),(195,'LICCOM-1Q24QN1','2014-04-17 17:58:33'),(196,'LIC9020-50DPPW1','2014-04-23 13:13:23'),(197,'LIC9020-50FNPW1','2014-04-23 17:02:57'),(198,'LIC3440-FLN74Z1','2014-04-28 16:11:49'),(199,'LICIMAC-0GMF8J7','2014-04-28 19:01:19'),(200,'LIC9020-40QNCZ1','2014-05-02 13:28:11'),(201,'LIC3440-HLN74Z1','2014-05-02 18:55:43'),(202,'LIC3440-BLN74Z1','2014-05-02 18:56:05'),(203,'LIC024-POD','2014-05-06 15:46:24'),(204,'LIC4310-F06FXN1','2014-05-09 14:52:27'),(205,'LIC3440-JLN74Z1','2014-05-12 14:57:44'),(206,'UWC-4JZ73X1','2014-05-12 16:11:11');
/*!40000 ALTER TABLE `exceptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history` (
  `computer_name` varchar(250) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='stores status of computer login sessions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-06 12:12:54
