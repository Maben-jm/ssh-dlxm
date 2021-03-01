-- MySQL dump 10.13  Distrib 8.0.22, for osx10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: dlxm
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `Elec_Application`
--

DROP TABLE IF EXISTS `Elec_Application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Elec_Application` (
  `applicationID` bigint NOT NULL,
  `applicationTemplateID` bigint DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `applicationUserID` varchar(255) DEFAULT NULL,
  `applicationLogonName` varchar(255) DEFAULT NULL,
  `applicationUserName` varchar(255) DEFAULT NULL,
  `applyTime` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`applicationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Elec_Application`
--

LOCK TABLES `Elec_Application` WRITE;
/*!40000 ALTER TABLE `Elec_Application` DISABLE KEYS */;
INSERT INTO `Elec_Application` VALUES (1,1,'è®¾å¤‡è´¹ç”¨æŠ¥é”€å•æ¨¡æ¿_zhangsan_2021-02-27 07:58:17','/Users/maben/Documents/projects/learn/ssh-dlxm/ssh-dlxm/out/artifacts/ssh_dlxm_war_exploded/upload/2021/02/27/83eb9c68-bb6e-4005-a82f-7ecf905555de.doc','ff80808177d4279d0177d42e3d8e0004','zhangsan','zhangsan','2021-02-27 07:58:17','1');
/*!40000 ALTER TABLE `Elec_Application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Elec_Application_Template`
--

DROP TABLE IF EXISTS `Elec_Application_Template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Elec_Application_Template` (
  `id` bigint NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `processDefinitionKey` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Elec_Application_Template`
--

LOCK TABLES `Elec_Application_Template` WRITE;
/*!40000 ALTER TABLE `Elec_Application_Template` DISABLE KEYS */;
INSERT INTO `Elec_Application_Template` VALUES (1,'è®¾å¤‡è´¹ç”¨æŠ¥é”€å•æ¨¡æ¿','è®¾å¤‡è´¹ç”¨æŠ¥é”€','/Users/maben/Documents/projects/learn/ssh-dlxm/ssh-dlxm/out/artifacts/ssh_dlxm_war_exploded/upload/2021/02/23/44f6400a-2cb7-461b-835d-d8fd57850c91.doc'),(2,'è®¾å¤‡è´­ç½®è®¡åˆ’å•æ¨¡æ¿','è®¾å¤‡è´­ç½®è®¡åˆ’','/Users/maben/Documents/projects/learn/ssh-dlxm/ssh-dlxm/out/artifacts/ssh_dlxm_war_exploded/upload/2021/02/24/be6271fc-2eb1-4c19-8bdf-e81156c85929.doc');
/*!40000 ALTER TABLE `Elec_Application_Template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Elec_ApproveInfo`
--

DROP TABLE IF EXISTS `Elec_ApproveInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Elec_ApproveInfo` (
  `approveID` bigint NOT NULL,
  `applicationID` bigint DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `approval` bit(1) DEFAULT NULL,
  `approveUserID` varchar(255) DEFAULT NULL,
  `approveUserName` varchar(255) DEFAULT NULL,
  `approveTime` datetime DEFAULT NULL,
  PRIMARY KEY (`approveID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Elec_ApproveInfo`
--

LOCK TABLES `Elec_ApproveInfo` WRITE;
/*!40000 ALTER TABLE `Elec_ApproveInfo` DISABLE KEYS */;
INSERT INTO `Elec_ApproveInfo` VALUES (1,1,'æå››ç»Ÿä¸€',_binary '','ff80808177d4279d0177d42e6f670005','lisi','2021-02-27 11:48:44');
/*!40000 ALTER TABLE `Elec_ApproveInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Elec_CommonMsg`
--

DROP TABLE IF EXISTS `Elec_CommonMsg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Elec_CommonMsg` (
  `ComID` varchar(50) NOT NULL,
  `StationRun` varchar(5000) DEFAULT NULL,
  `DevRun` varchar(5000) DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Elec_CommonMsg`
--

LOCK TABLES `Elec_CommonMsg` WRITE;
/*!40000 ALTER TABLE `Elec_CommonMsg` DISABLE KEYS */;
INSERT INTO `Elec_CommonMsg` VALUES ('ff80808177951a420177951e18400003','<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width: 500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				1</td>\r\n			<td>\r\n				1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				2</td>\r\n			<td>\r\n				2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				3</td>\r\n			<td>\r\n				3</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	&nbsp;</p>\r\n<ol>\r\n	<li>\r\n		a</li>\r\n	<li>\r\n		c</li>\r\n	<li>\r\n		v</li>\r\n</ol>\r\n<p>\r\n	aaxxxx</p>\r\n<p>\r\n	dads</p>\r\n','<p>\r\n	addxxxxx<br />\r\n	xxxx</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	ds</p>\r\n','2021-02-13 12:22:49');
/*!40000 ALTER TABLE `Elec_CommonMsg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Elec_ExportFields`
--

DROP TABLE IF EXISTS `Elec_ExportFields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Elec_ExportFields` (
  `BelongTo` varchar(10) NOT NULL,
  `ExpNameList` varchar(5000) DEFAULT NULL,
  `ExpFieldName` varchar(5000) DEFAULT NULL,
  `NoExpNameList` varchar(5000) DEFAULT NULL,
  `NoExpFieldName` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Elec_ExportFields`
--

LOCK TABLES `Elec_ExportFields` WRITE;
/*!40000 ALTER TABLE `Elec_ExportFields` DISABLE KEYS */;
INSERT INTO `Elec_ExportFields` VALUES ('5-3','è®¾å¤‡è¿è¡Œæƒ…å†µ#åˆ›å»ºæ—¥æœŸ','devRun#createDate','ç«™ç‚¹è¿è¡Œæƒ…å†µ','stationRun');
/*!40000 ALTER TABLE `Elec_ExportFields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Elec_Popedom`
--

DROP TABLE IF EXISTS `Elec_Popedom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Elec_Popedom` (
  `CODE` varchar(500) DEFAULT NULL,
  `NAME` varchar(500) DEFAULT NULL,
  `ParentCode` varchar(500) DEFAULT NULL,
  `ParentName` varchar(500) DEFAULT NULL,
  `Url` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Elec_Popedom`
--

LOCK TABLES `Elec_Popedom` WRITE;
/*!40000 ALTER TABLE `Elec_Popedom` DISABLE KEYS */;
INSERT INTO `Elec_Popedom` VALUES ('aa','ä»ªå™¨è®¾å¤‡ç®¡ç†','device','æŠ€æœ¯è®¾æ–½ç»´æŠ¤ç®¡ç†','/aa'),('ab','è®¾å¤‡æ ¡å‡†æ£€ä¿®','device','æŠ€æœ¯è®¾æ–½ç»´æŠ¤ç®¡ç†','/ab'),('ac','è®¾å¤‡è´­ç½®è®¡åˆ’','device','æŠ€æœ¯è®¾æ–½ç»´æŠ¤ç®¡ç†','/ac'),('ad','èµ„æ–™å›¾çº¸ç®¡ç†','informationAndPaper','æŠ€æœ¯èµ„æ–™å›¾çº¸ç®¡ç†','/ad'),('ae','ç«™ç‚¹åŸºæœ¬ä¿¡æ¯','station','ç«™ç‚¹è®¾å¤‡è¿è¡Œç®¡ç†','/ae'),('af','è¿è¡Œæƒ…å†µ','station','ç«™ç‚¹è®¾å¤‡è¿è¡Œç®¡ç†','/af'),('ag','ç»´æŠ¤æƒ…å†µ','station','ç«™ç‚¹è®¾å¤‡è¿è¡Œç®¡ç†','/ag'),('ah','ç›‘æµ‹å°å»ºç­‘ç®¡ç†','jct','ç›‘æµ‹å°å»ºç­‘ç®¡ç†','/ah'),('ai','ç”¨æˆ·ç®¡ç†','sysmng','ç³»ç»Ÿç®¡ç†','/system/elecUserAction_home.do'),('aj','è§’è‰²ç®¡ç†','sysmng','ç³»ç»Ÿç®¡ç†','/system/elecRoleAction_home.do'),('ak','å¾…åŠäº‹å®œ','sysmng','ç³»ç»Ÿç®¡ç†','/system/elecCommonMsgAction_home.do'),('al','æ•°æ®å­—å…¸ç»´æŠ¤','sysmng','ç³»ç»Ÿç®¡ç†','/system/elecSystemDDLAction_home.do'),('am','å®¡æ‰¹æµç¨‹ç®¡ç†','workflow','å®¡æ‰¹æµè½¬','/workflow/elecProcessDefinitionAction_home.do'),('an','ç”³è¯·æ¨¡æ¿ç®¡ç†','workflow','å®¡æ‰¹æµè½¬','/workflow/elecApplicationTemplateAction_home.do'),('ao','èµ·è‰ç”³è¯·','workflow','å®¡æ‰¹æµè½¬','/workflow/elecApplicationFlowAction_home.do'),('ap','å¾…æˆ‘å®¡æ‰¹','workflow','å®¡æ‰¹æµè½¬','/workflow/elecApplicationFlowAction_myTaskHome.do'),('aq','æˆ‘çš„ç”³è¯·æŸ¥è¯¢','workflow','å®¡æ‰¹æµè½¬','/workflow/elecApplicationFlowAction_myApplicationHome.do'),('ba','é¦–é¡µæ˜¾ç¤º','logon','ç™»å½•','/system/elecMenuAction_home.do'),('bb','æ ‡é¢˜','logon','ç™»å½•','/system/elecMenuAction_title.do'),('bc','èœå•','logon','ç™»å½•','/system/elecMenuAction_left.do'),('bd','æ”¹å˜æ¡†æ¶','logon','ç™»å½•','/system/elecMenuAction_change.do'),('be','åŠ è½½ä¸»æ˜¾ç¤ºé¡µé¢','logon','ç™»å½•','/system/elecMenuAction_loading.do'),('bf','ç«™ç‚¹è¿è¡Œ','logon','ç™»å½•','/system/elecMenuAction_alermStation.do'),('bg','è®¾å¤‡è¿è¡Œ','logon','ç™»å½•','/system/elecMenuAction_alermDevice.do'),('bh','é‡æ–°ç™»å½•','logon','ç™»å½•','/system/elecMenuAction_logout.do'),('ca','ä¿å­˜','commonMsg','ä»£åŠäº‹å®œ','/system/elecCommonMsgAction_save.do'),('da','å¯¼å‡ºè®¾ç½®è®¾ç½®','exportFields','å¯¼å‡ºè®¾ç½®','/system/elecExportFieldsAction_setExportExcel.do'),('db','å¯¼å‡ºè®¾ç½®ä¿å­˜','exportFields','å¯¼å‡ºè®¾ç½®','/system/elecExportFieldsAction_saveSetExportExcel.do'),('ea','ç¼–è¾‘','systemDdl','æ•°æ®å­—å…¸','/system/elecSystemDDLAction_edit.do'),('eb','ä¿å­˜','systemDdl','æ•°æ®å­—å…¸','/system/elecSystemDDLAction_save.do'),('fa','æ–°å¢','user','ç”¨æˆ·ç®¡ç†','/system/elecUserAction_add.do'),('fb','ä¿å­˜','user','ç”¨æˆ·ç®¡ç†','/system/elecUserAction_save.do'),('fc','ç¼–è¾‘','user','ç”¨æˆ·ç®¡ç†','/system/elecUserAction_edit.do'),('fd','åˆ é™¤','user','ç”¨æˆ·ç®¡ç†','/system/elecUserAction_delete.do'),('fe','éªŒè¯ç™»å½•å','user','ç”¨æˆ·ç®¡ç†','/system/elecUserAction_checkUser.do'),('ff','å¯¼å‡ºexcel','user','ç”¨æˆ·ç®¡ç†','/system/elecUserAction_exportExcel.do'),('fg','excelå¯¼å…¥é¡µé¢','user','ç”¨æˆ·ç®¡ç†','/system/elecUserAction_importPage.do'),('fh','excelå¯¼å…¥','user','ç”¨æˆ·ç®¡ç†','/system/elecUserAction_importData.do'),('fi','äººå‘˜ç»Ÿè®¡','user','ç”¨æˆ·ç®¡ç†','/system/elecUserAction_chartUser.do'),('ga','ç¼–è¾‘','role','è§’è‰²ç®¡ç†','/system/elecRoleAction_edit.do'),('gb','ä¿å­˜','role','è§’è‰²ç®¡ç†','/system/elecRoleAction_save.do'),('ha','éƒ¨ç½²æµç¨‹å®šä¹‰','applicationProcess','ç”³è¯·æµç¨‹ç®¡ç†','/workflow/elecProcessDefinitionAction_add.do'),('hb','ä¿å­˜','applicationProcess','ç”³è¯·æµç¨‹ç®¡ç†','/workflow/elecProcessDefinitionAction_save.do'),('hc','æŸ¥çœ‹æµç¨‹å›¾','applicationProcess','ç”³è¯·æµç¨‹ç®¡ç†','/workflow/elecProcessDefinitionAction_downloadProcessImage.do'),('hd','åˆ é™¤æµç¨‹å®šä¹‰','applicationProcess','ç”³è¯·æµç¨‹ç®¡ç†','/workflow/elecProcessDefinitionAction_delete.do'),('ia','æ–°å¢','applicationTemplate','ç”³è¯·æ¨¡æ¿ç®¡ç†','/workflow/elecApplicationTemplateAction_add.do'),('ib','æ–°å¢ä¿å­˜','applicationTemplate','ç”³è¯·æ¨¡æ¿ç®¡ç†','/workflow/elecApplicationTemplateAction_save.do'),('ic','ç¼–è¾‘','applicationTemplate','ç”³è¯·æ¨¡æ¿ç®¡ç†','/workflow/elecApplicationTemplateAction_edit.do'),('id','ç¼–è¾‘ä¿å­˜','applicationTemplate','ç”³è¯·æ¨¡æ¿ç®¡ç†','/workflow/elecApplicationTemplateAction_update.do'),('ie','åˆ é™¤','applicationTemplate','ç”³è¯·æ¨¡æ¿ç®¡ç†','/workflow/elecApplicationTemplateAction_delete.do'),('if','ä¸‹è½½','applicationTemplate','ç”³è¯·æ¨¡æ¿ç®¡ç†','/workflow/elecApplicationTemplateAction_download.do'),('ja','æäº¤ç”³è¯·é¡µé¢','applicationFlow','ç”³è¯·æµç¨‹ç®¡ç†','/workflow/elecApplicationFlowAction_submitApplication.do'),('jb','æäº¤ç”³è¯·','applicationFlow','ç”³è¯·æµç¨‹ç®¡ç†','/workflow/elecApplicationFlowAction_saveApplication.do'),('jc','æˆ‘çš„ç”³è¯·æŸ¥è¯¢é¦–é¡µ','applicationFlow','ç”³è¯·æµç¨‹ç®¡ç†','/workflow/elecApplicationFlowAction_myApplicationHome.do'),('jd','å¾…æˆ‘å®¡æ‰¹é¦–é¡µ','applicationFlow','ç”³è¯·æµç¨‹ç®¡ç†','/workflow/elecApplicationFlowAction_myTaskHome.do'),('je','è·³è½¬å®¡æ‰¹å¤„ç†é¡µé¢','applicationFlow','ç”³è¯·æµç¨‹ç®¡ç†','/workflow/elecApplicationFlowAction_flowApprove.do'),('jf','ä¸‹è½½','applicationFlow','ç”³è¯·æµç¨‹ç®¡ç†','/workflow/elecApplicationFlowAction_download.do'),('jg','å®¡æ ¸','applicationFlow','ç”³è¯·æµç¨‹ç®¡ç†','/workflow/elecApplicationFlowAction_approve.do'),('jh','å®¡æ ¸å†å²','applicationFlow','ç”³è¯·æµç¨‹ç®¡ç†','/workflow/elecApplicationFlowAction_approvedHistory.do');
/*!40000 ALTER TABLE `Elec_Popedom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Elec_Role_Popedom`
--

DROP TABLE IF EXISTS `Elec_Role_Popedom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Elec_Role_Popedom` (
  `RoleID` varchar(50) NOT NULL,
  `Popedomcode` varchar(5000) DEFAULT NULL,
  `remark` varchar(5000) DEFAULT NULL,
  `isDelete` varchar(255) DEFAULT NULL,
  `createEmpCode` varchar(255) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Elec_Role_Popedom`
--

LOCK TABLES `Elec_Role_Popedom` WRITE;
/*!40000 ALTER TABLE `Elec_Role_Popedom` DISABLE KEYS */;
INSERT INTO `Elec_Role_Popedom` VALUES ('1','aa@ab@ac@ad@ae@af@ag@ah@ai@aj@ak@al@am@an@ao@ap@aq@ba@bb@bc@bd@be@bf@bg@bh@ca@da@db@ea@eb@fa@fb@fc@fd@fe@ff@fg@fh@fi@ga@gb@ha@hb@hc@hd@ja@jb@jc@jd@je@jf@jg@jh@ia@ib@ic@id@ie@if',NULL,NULL,NULL,NULL),('2','ai@aj@ak',NULL,NULL,NULL,NULL),('3','ai@ak@al@ba@bb@bc@bd@be@bf@bg@ca@ea@eb@fb@fc',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `Elec_Role_Popedom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Elec_SystemDDL`
--

DROP TABLE IF EXISTS `Elec_SystemDDL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Elec_SystemDDL` (
  `SeqID` int NOT NULL,
  `Keyword` varchar(20) DEFAULT NULL,
  `DdlCode` int DEFAULT NULL,
  `DdlName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Elec_SystemDDL`
--

LOCK TABLES `Elec_SystemDDL` WRITE;
/*!40000 ALTER TABLE `Elec_SystemDDL` DISABLE KEYS */;
INSERT INTO `Elec_SystemDDL` VALUES (1,'å»ºç­‘ç±»å‹',1,'åŸºå»º'),(2,'å»ºç­‘ç±»å‹',2,'åŸºæ”¹'),(3,'å»ºç­‘ç±»å‹',3,'ç”Ÿæ´»ç”¨æˆ¿'),(4,'å»ºç­‘ç±»å‹',4,'é“è·¯'),(11,'è®¾å¤‡ç±»å‹',1,'ç”µåŠ›è®¾å¤‡dd'),(12,'è®¾å¤‡ç±»å‹',2,'å¤©çº¿è®¾å¤‡'),(13,'è®¾å¤‡ç±»å‹',3,'é€šè®¯è®¾å¤‡'),(14,'è®¾å¤‡ç±»å‹',4,'é˜²é›·è®¾å¤‡'),(15,'è®¾å¤‡ç±»å‹',5,'åŠå…¬è®¾å¤‡'),(16,'è®¾å¤‡ç±»å‹',6,'ç”µè§†æœºæˆ¿è®¾å¤‡'),(17,'è®¾å¤‡ç±»å‹',7,'å¹¿æ’­æœºæˆ¿è®¾å¤‡'),(20,'è®¾å¤‡çŠ¶æ€',3,'ç»´ä¿®'),(21,'æ‰€å±å•ä½',1,'540'),(22,'æ‰€å±å•ä½',2,'560'),(23,'æ‰€å±å•ä½',3,'æˆéƒ½å°'),(24,'æ‰€å±å•ä½',4,'å¦é—¨å°'),(25,'æ‰€å±å•ä½',5,'553å°'),(26,'é¡¹ç›®çº§åˆ«',1,'ä¸€çº§'),(27,'é¡¹ç›®çº§åˆ«',2,'äºŒçº§'),(28,'é¡¹ç›®çº§åˆ«',3,'ä¸‰çº§'),(29,'é¡¹ç›®çº§åˆ«',4,'å››çº§'),(30,'é¡¹ç›®ç±»å‹',1,'æŠ€æ”¹'),(31,'é¡¹ç›®ç±»å‹',2,'åŸºå»º'),(32,'æ•…éšœç±»å‹',1,'å·¥æ§æœº'),(33,'æ•…éšœç±»å‹',2,'æ¥æ”¶æœº'),(34,'æ•…éšœç±»å‹',3,'é€šè®¯'),(35,'æ•…éšœç±»å‹',4,'ä¾›ç”µ'),(36,'æ•…éšœç±»å‹',5,'å¤©çº¿'),(37,'ç«™ç‚¹ç±»åˆ«',1,'å›½å†…é¥æ§ç«™'),(39,'ç«™ç‚¹ç±»åˆ«',3,'å›½å†…é‡‡é›†ç‚¹'),(40,'æ‰€å±å•ä½',6,'201å°'),(41,'æ‰€å±å•ä½',7,'202å°'),(42,'æ‰€å±å•ä½',8,'203å°'),(43,'æ‰€å±å•ä½',9,'å“ˆå°”æ»¨å°'),(44,'æ‰€å±å•ä½',10,'è¥¿å®‰å°'),(45,'æ•…éšœç±»å‹',6,'æµ‹é‡æ¿å¡'),(46,'æ‰€å±å•ä½',11,'ä¸­å¿ƒ'),(47,'æ•…éšœç±»å‹',7,'è®¾å¤‡'),(48,'æ•…éšœç±»å‹',8,'ç½‘ç»œ'),(49,'ç«™ç‚¹ç±»åˆ«',4,'å›½å†…'),(50,'æ‰€å±å•ä½',12,'åŒ—äº¬å°'),(51,'ç«™ç‚¹ç±»åˆ«',5,'å›½å¤–'),(52,'ç«™ç‚¹ç±»åˆ«',2,'æµ·å¤–é¥æ§ç«™'),(57,'å›¾çº¸ç±»åˆ«',1,'å›½å†…å›¾ä¹¦'),(58,'å›¾çº¸ç±»åˆ«',2,'é¦™æ¸¯å›¾ä¹¦'),(59,'æ‰€å±å•ä½',13,'æµ·å—å°'),(60,'é¡¹ç›®çº§åˆ«',5,'äº”çº§'),(61,'é¡¹ç›®çº§åˆ«',6,'å…­çº§'),(64,'æ˜¯å¦åœ¨èŒ',1,'æ˜¯'),(65,'æ˜¯å¦åœ¨èŒ',2,'å¦'),(8,'å²—ä½ç±»å‹',4,'æ€»ç»ç†'),(9,'å²—ä½ç±»å‹',5,'éƒ¨é—¨ç»ç†'),(10,'å²—ä½ç±»å‹',6,'å‘˜å·¥'),(5,'è§’è‰²ç±»å‹',1,'ç³»ç»Ÿç®¡ç†å‘˜'),(6,'è§’è‰²ç±»å‹',2,'é«˜çº§ç®¡ç†å‘˜'),(7,'è§’è‰²ç±»å‹',3,'ä¸­çº§ç®¡ç†å‘˜'),(8,'è§’è‰²ç±»å‹',4,'ä¸šåŠ¡ç”¨æˆ·'),(9,'è§’è‰²ç±»å‹',5,'ä¸€èˆ¬ç”¨æˆ·'),(10,'è§’è‰²ç±»å‹',6,'æ™®é€šç”¨æˆ·'),(66,'æ€§åˆ«',1,'ç”·'),(67,'æ€§åˆ«',2,'å¥³'),(68,'æ€§åˆ«',3,'ä¸ç”·ä¸å¥³'),(69,'å®¡æ ¸çŠ¶æ€',1,'å®¡æ ¸ä¸­'),(70,'å®¡æ ¸çŠ¶æ€',2,'å®¡æ ¸ä¸é€šè¿‡'),(71,'å®¡æ ¸çŠ¶æ€',3,'å®¡æ ¸é€šè¿‡');
/*!40000 ALTER TABLE `Elec_SystemDDL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Elec_Text`
--

DROP TABLE IF EXISTS `Elec_Text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Elec_Text` (
  `textID` varchar(50) NOT NULL,
  `textName` varchar(50) DEFAULT NULL,
  `textDate` datetime DEFAULT NULL,
  `textRemark` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Elec_Text`
--

LOCK TABLES `Elec_Text` WRITE;
/*!40000 ALTER TABLE `Elec_Text` DISABLE KEYS */;
INSERT INTO `Elec_Text` VALUES ('ff80808177a41dea0177a41def820001','maben123','2021-02-15 13:16:01','this is remark');
/*!40000 ALTER TABLE `Elec_Text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Elec_User`
--

DROP TABLE IF EXISTS `Elec_User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Elec_User` (
  `UserID` varchar(50) NOT NULL,
  `JctID` varchar(50) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `LogonName` varchar(50) DEFAULT NULL,
  `LogonPwd` varchar(50) DEFAULT NULL,
  `SexID` varchar(10) DEFAULT NULL,
  `Birthday` datetime DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `ContactTel` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Mobile` varchar(50) DEFAULT NULL,
  `IsDuty` varchar(10) DEFAULT NULL,
  `OnDutyDate` datetime DEFAULT NULL,
  `OffDutyDate` datetime DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `isDelete` varchar(255) DEFAULT NULL,
  `createEmpID` varchar(255) DEFAULT NULL,
  `createDate` date DEFAULT NULL,
  `lastEmpID` varchar(255) DEFAULT NULL,
  `lastDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Elec_User`
--

LOCK TABLES `Elec_User` WRITE;
/*!40000 ALTER TABLE `Elec_User` DISABLE KEYS */;
INSERT INTO `Elec_User` VALUES ('ff80808177a9b7f60177a9cd50750001','2','æˆ‘æœ€å¤§','admin','E10ADC3949BA59ABBE56E057F20F883E','1','2021-02-16 00:00:00','123','','',NULL,'1',NULL,NULL,'è¶…çº§ç®¡ç†å‘˜',NULL,NULL,NULL,NULL,'2021-02-16'),('ff80808177d4279d0177d42e3d8e0004','1','zhangsan','zhangsan','202CB962AC59075B964B07152D234B70','1',NULL,'','','',NULL,'1',NULL,NULL,'',NULL,NULL,'2021-02-24',NULL,'2021-02-24'),('ff80808177d4279d0177d42e6f670005','1','lisi','lisi','202CB962AC59075B964B07152D234B70','1',NULL,'','','',NULL,'1',NULL,NULL,'',NULL,NULL,'2021-02-24',NULL,'2021-02-24'),('ff80808177d4279d0177d42f27740006','3','wangwu','wangwu','202CB962AC59075B964B07152D234B70','1',NULL,'','','',NULL,'1',NULL,NULL,'',NULL,NULL,'2021-02-24',NULL,'2021-02-24');
/*!40000 ALTER TABLE `Elec_User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Elec_User_Role`
--

DROP TABLE IF EXISTS `Elec_User_Role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Elec_User_Role` (
  `SeqID` int NOT NULL,
  `UserID` varchar(50) DEFAULT NULL,
  `RoleID` varchar(50) DEFAULT NULL,
  `remark` varchar(5000) DEFAULT NULL,
  `createEmpCode` varchar(255) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Elec_User_Role`
--

LOCK TABLES `Elec_User_Role` WRITE;
/*!40000 ALTER TABLE `Elec_User_Role` DISABLE KEYS */;
INSERT INTO `Elec_User_Role` VALUES (13,'ff80808177a9b7f60177a9cd50750001','1',NULL,NULL,NULL),(14,'ff80808177d4279d0177d42e3d8e0004','1',NULL,NULL,NULL),(15,'ff80808177d4279d0177d42e6f670005','1',NULL,NULL,NULL),(16,'ff80808177d4279d0177d42f27740006','1',NULL,NULL,NULL);
/*!40000 ALTER TABLE `Elec_User_Role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JBPM4_DEPLOYMENT`
--

DROP TABLE IF EXISTS `JBPM4_DEPLOYMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `JBPM4_DEPLOYMENT` (
  `DBID_` bigint NOT NULL,
  `NAME_` longtext,
  `TIMESTAMP_` bigint DEFAULT NULL,
  `STATE_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JBPM4_DEPLOYMENT`
--

LOCK TABLES `JBPM4_DEPLOYMENT` WRITE;
/*!40000 ALTER TABLE `JBPM4_DEPLOYMENT` DISABLE KEYS */;
INSERT INTO `JBPM4_DEPLOYMENT` VALUES (1,NULL,0,'active'),(10001,NULL,0,'active');
/*!40000 ALTER TABLE `JBPM4_DEPLOYMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JBPM4_DEPLOYPROP`
--

DROP TABLE IF EXISTS `JBPM4_DEPLOYPROP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `JBPM4_DEPLOYPROP` (
  `DBID_` bigint NOT NULL,
  `DEPLOYMENT_` bigint DEFAULT NULL,
  `OBJNAME_` varchar(255) DEFAULT NULL,
  `KEY_` varchar(255) DEFAULT NULL,
  `STRINGVAL_` varchar(255) DEFAULT NULL,
  `LONGVAL_` bigint DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `FK_DEPLPROP_DEPL` (`DEPLOYMENT_`),
  KEY `IDX_DEPLPROP_DEPL` (`DEPLOYMENT_`),
  CONSTRAINT `FK_DEPLPROP_DEPL` FOREIGN KEY (`DEPLOYMENT_`) REFERENCES `JBPM4_DEPLOYMENT` (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JBPM4_DEPLOYPROP`
--

LOCK TABLES `JBPM4_DEPLOYPROP` WRITE;
/*!40000 ALTER TABLE `JBPM4_DEPLOYPROP` DISABLE KEYS */;
INSERT INTO `JBPM4_DEPLOYPROP` VALUES (4,1,'è®¾å¤‡è´¹ç”¨æŠ¥é”€','langid','jpdl-4.4',NULL),(5,1,'è®¾å¤‡è´¹ç”¨æŠ¥é”€','pdid','è®¾å¤‡è´¹ç”¨æŠ¥é”€-1',NULL),(6,1,'è®¾å¤‡è´¹ç”¨æŠ¥é”€','pdkey','è®¾å¤‡è´¹ç”¨æŠ¥é”€',NULL),(7,1,'è®¾å¤‡è´¹ç”¨æŠ¥é”€','pdversion',NULL,1),(10004,10001,'è®¾å¤‡è´­ç½®è®¡åˆ’','langid','jpdl-4.4',NULL),(10005,10001,'è®¾å¤‡è´­ç½®è®¡åˆ’','pdid','è®¾å¤‡è´­ç½®è®¡åˆ’-1',NULL),(10006,10001,'è®¾å¤‡è´­ç½®è®¡åˆ’','pdkey','è®¾å¤‡è´­ç½®è®¡åˆ’',NULL),(10007,10001,'è®¾å¤‡è´­ç½®è®¡åˆ’','pdversion',NULL,1);
/*!40000 ALTER TABLE `JBPM4_DEPLOYPROP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JBPM4_EXECUTION`
--

DROP TABLE IF EXISTS `JBPM4_EXECUTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `JBPM4_EXECUTION` (
  `DBID_` bigint NOT NULL,
  `CLASS_` varchar(255) NOT NULL,
  `DBVERSION_` int NOT NULL,
  `ACTIVITYNAME_` varchar(255) DEFAULT NULL,
  `PROCDEFID_` varchar(255) DEFAULT NULL,
  `HASVARS_` bit(1) DEFAULT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `KEY_` varchar(255) DEFAULT NULL,
  `ID_` varchar(255) DEFAULT NULL,
  `STATE_` varchar(255) DEFAULT NULL,
  `SUSPHISTSTATE_` varchar(255) DEFAULT NULL,
  `PRIORITY_` int DEFAULT NULL,
  `HISACTINST_` bigint DEFAULT NULL,
  `PARENT_` bigint DEFAULT NULL,
  `INSTANCE_` bigint DEFAULT NULL,
  `SUPEREXEC_` bigint DEFAULT NULL,
  `SUBPROCINST_` bigint DEFAULT NULL,
  `PARENT_IDX_` int DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  UNIQUE KEY `ID_` (`ID_`),
  KEY `FK_EXEC_INSTANCE` (`INSTANCE_`),
  KEY `FK_EXEC_PARENT` (`PARENT_`),
  KEY `FK_EXEC_SUBPI` (`SUBPROCINST_`),
  KEY `FK_EXEC_SUPEREXEC` (`SUPEREXEC_`),
  KEY `IDX_EXEC_SUPEREXEC` (`SUPEREXEC_`),
  KEY `IDX_EXEC_PARENT` (`PARENT_`),
  KEY `IDX_EXEC_INSTANCE` (`INSTANCE_`),
  KEY `IDX_EXEC_SUBPI` (`SUBPROCINST_`),
  CONSTRAINT `FK_EXEC_INSTANCE` FOREIGN KEY (`INSTANCE_`) REFERENCES `JBPM4_EXECUTION` (`DBID_`),
  CONSTRAINT `FK_EXEC_PARENT` FOREIGN KEY (`PARENT_`) REFERENCES `JBPM4_EXECUTION` (`DBID_`),
  CONSTRAINT `FK_EXEC_SUBPI` FOREIGN KEY (`SUBPROCINST_`) REFERENCES `JBPM4_EXECUTION` (`DBID_`),
  CONSTRAINT `FK_EXEC_SUPEREXEC` FOREIGN KEY (`SUPEREXEC_`) REFERENCES `JBPM4_EXECUTION` (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JBPM4_EXECUTION`
--

LOCK TABLES `JBPM4_EXECUTION` WRITE;
/*!40000 ALTER TABLE `JBPM4_EXECUTION` DISABLE KEYS */;
INSERT INTO `JBPM4_EXECUTION` VALUES (20001,'pvm',3,'å®¡æ‰¹ã€æ€»ç»ç†ã€‘','è®¾å¤‡è´¹ç”¨æŠ¥é”€-1',_binary '',NULL,NULL,'è®¾å¤‡è´¹ç”¨æŠ¥é”€.20001','active-root',NULL,0,30002,NULL,20001,NULL,NULL,NULL);
/*!40000 ALTER TABLE `JBPM4_EXECUTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JBPM4_HIST_ACTINST`
--

DROP TABLE IF EXISTS `JBPM4_HIST_ACTINST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `JBPM4_HIST_ACTINST` (
  `DBID_` bigint NOT NULL,
  `CLASS_` varchar(255) NOT NULL,
  `DBVERSION_` int NOT NULL,
  `HPROCI_` bigint DEFAULT NULL,
  `TYPE_` varchar(255) DEFAULT NULL,
  `EXECUTION_` varchar(255) DEFAULT NULL,
  `ACTIVITY_NAME_` varchar(255) DEFAULT NULL,
  `START_` datetime DEFAULT NULL,
  `END_` datetime DEFAULT NULL,
  `DURATION_` bigint DEFAULT NULL,
  `TRANSITION_` varchar(255) DEFAULT NULL,
  `NEXTIDX_` int DEFAULT NULL,
  `HTASK_` bigint DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `FK_HACTI_HPROCI` (`HPROCI_`),
  KEY `FK_HTI_HTASK` (`HTASK_`),
  KEY `IDX_HTI_HTASK` (`HTASK_`),
  KEY `IDX_HACTI_HPROCI` (`HPROCI_`),
  CONSTRAINT `FK_HACTI_HPROCI` FOREIGN KEY (`HPROCI_`) REFERENCES `JBPM4_HIST_PROCINST` (`DBID_`),
  CONSTRAINT `FK_HTI_HTASK` FOREIGN KEY (`HTASK_`) REFERENCES `JBPM4_HIST_TASK` (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JBPM4_HIST_ACTINST`
--

LOCK TABLES `JBPM4_HIST_ACTINST` WRITE;
/*!40000 ALTER TABLE `JBPM4_HIST_ACTINST` DISABLE KEYS */;
INSERT INTO `JBPM4_HIST_ACTINST` VALUES (20005,'task',1,20001,'task','è®¾å¤‡è´¹ç”¨æŠ¥é”€.20001','æäº¤ç”³è¯·','2021-02-27 07:58:18','2021-02-27 07:58:18',79,'jbpm_no_task_outcome_specified_jbpm',1,20004),(20007,'task',1,20001,'task','è®¾å¤‡è´¹ç”¨æŠ¥é”€.20001','å®¡æ‰¹ã€éƒ¨é—¨ç»ç†ã€‘','2021-02-27 07:58:18','2021-02-27 11:48:44',13825879,'to å®¡æ‰¹ã€æ€»ç»ç†ã€‘',1,20006),(30002,'task',0,20001,'task','è®¾å¤‡è´¹ç”¨æŠ¥é”€.20001','å®¡æ‰¹ã€æ€»ç»ç†ã€‘','2021-02-27 11:48:44',NULL,0,NULL,1,30001);
/*!40000 ALTER TABLE `JBPM4_HIST_ACTINST` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JBPM4_HIST_DETAIL`
--

DROP TABLE IF EXISTS `JBPM4_HIST_DETAIL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `JBPM4_HIST_DETAIL` (
  `DBID_` bigint NOT NULL,
  `CLASS_` varchar(255) NOT NULL,
  `DBVERSION_` int NOT NULL,
  `USERID_` varchar(255) DEFAULT NULL,
  `TIME_` datetime DEFAULT NULL,
  `HPROCI_` bigint DEFAULT NULL,
  `HPROCIIDX_` int DEFAULT NULL,
  `HACTI_` bigint DEFAULT NULL,
  `HACTIIDX_` int DEFAULT NULL,
  `HTASK_` bigint DEFAULT NULL,
  `HTASKIDX_` int DEFAULT NULL,
  `HVAR_` bigint DEFAULT NULL,
  `HVARIDX_` int DEFAULT NULL,
  `MESSAGE_` longtext,
  `OLD_STR_` varchar(255) DEFAULT NULL,
  `NEW_STR_` varchar(255) DEFAULT NULL,
  `OLD_INT_` int DEFAULT NULL,
  `NEW_INT_` int DEFAULT NULL,
  `OLD_TIME_` datetime DEFAULT NULL,
  `NEW_TIME_` datetime DEFAULT NULL,
  `PARENT_` bigint DEFAULT NULL,
  `PARENT_IDX_` int DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `FK_HDETAIL_HVAR` (`HVAR_`),
  KEY `FK_HDETAIL_HPROCI` (`HPROCI_`),
  KEY `FK_HDETAIL_HTASK` (`HTASK_`),
  KEY `FK_HDETAIL_HACTI` (`HACTI_`),
  KEY `IDX_HDET_HACTI` (`HACTI_`),
  KEY `IDX_HDET_HPROCI` (`HPROCI_`),
  KEY `IDX_HDET_HTASK` (`HTASK_`),
  KEY `IDX_HDET_HVAR` (`HVAR_`),
  CONSTRAINT `FK_HDETAIL_HACTI` FOREIGN KEY (`HACTI_`) REFERENCES `JBPM4_HIST_ACTINST` (`DBID_`),
  CONSTRAINT `FK_HDETAIL_HPROCI` FOREIGN KEY (`HPROCI_`) REFERENCES `JBPM4_HIST_PROCINST` (`DBID_`),
  CONSTRAINT `FK_HDETAIL_HTASK` FOREIGN KEY (`HTASK_`) REFERENCES `JBPM4_HIST_TASK` (`DBID_`),
  CONSTRAINT `FK_HDETAIL_HVAR` FOREIGN KEY (`HVAR_`) REFERENCES `JBPM4_HIST_VAR` (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JBPM4_HIST_DETAIL`
--

LOCK TABLES `JBPM4_HIST_DETAIL` WRITE;
/*!40000 ALTER TABLE `JBPM4_HIST_DETAIL` DISABLE KEYS */;
/*!40000 ALTER TABLE `JBPM4_HIST_DETAIL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JBPM4_HIST_PROCINST`
--

DROP TABLE IF EXISTS `JBPM4_HIST_PROCINST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `JBPM4_HIST_PROCINST` (
  `DBID_` bigint NOT NULL,
  `DBVERSION_` int NOT NULL,
  `ID_` varchar(255) DEFAULT NULL,
  `PROCDEFID_` varchar(255) DEFAULT NULL,
  `KEY_` varchar(255) DEFAULT NULL,
  `START_` datetime DEFAULT NULL,
  `END_` datetime DEFAULT NULL,
  `DURATION_` bigint DEFAULT NULL,
  `STATE_` varchar(255) DEFAULT NULL,
  `ENDACTIVITY_` varchar(255) DEFAULT NULL,
  `NEXTIDX_` int DEFAULT NULL,
  PRIMARY KEY (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JBPM4_HIST_PROCINST`
--

LOCK TABLES `JBPM4_HIST_PROCINST` WRITE;
/*!40000 ALTER TABLE `JBPM4_HIST_PROCINST` DISABLE KEYS */;
INSERT INTO `JBPM4_HIST_PROCINST` VALUES (20001,0,'è®¾å¤‡è´¹ç”¨æŠ¥é”€.20001','è®¾å¤‡è´¹ç”¨æŠ¥é”€-1',NULL,'2021-02-27 07:58:17',NULL,NULL,'active',NULL,1);
/*!40000 ALTER TABLE `JBPM4_HIST_PROCINST` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JBPM4_HIST_TASK`
--

DROP TABLE IF EXISTS `JBPM4_HIST_TASK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `JBPM4_HIST_TASK` (
  `DBID_` bigint NOT NULL,
  `DBVERSION_` int NOT NULL,
  `EXECUTION_` varchar(255) DEFAULT NULL,
  `OUTCOME_` varchar(255) DEFAULT NULL,
  `ASSIGNEE_` varchar(255) DEFAULT NULL,
  `PRIORITY_` int DEFAULT NULL,
  `STATE_` varchar(255) DEFAULT NULL,
  `CREATE_` datetime DEFAULT NULL,
  `END_` datetime DEFAULT NULL,
  `DURATION_` bigint DEFAULT NULL,
  `NEXTIDX_` int DEFAULT NULL,
  `SUPERTASK_` bigint DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `FK_HSUPERT_SUB` (`SUPERTASK_`),
  KEY `IDX_HSUPERT_SUB` (`SUPERTASK_`),
  CONSTRAINT `FK_HSUPERT_SUB` FOREIGN KEY (`SUPERTASK_`) REFERENCES `JBPM4_HIST_TASK` (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JBPM4_HIST_TASK`
--

LOCK TABLES `JBPM4_HIST_TASK` WRITE;
/*!40000 ALTER TABLE `JBPM4_HIST_TASK` DISABLE KEYS */;
INSERT INTO `JBPM4_HIST_TASK` VALUES (20004,1,'è®¾å¤‡è´¹ç”¨æŠ¥é”€.20001','jbpm_no_task_outcome_specified_jbpm','zhangsan',0,'completed','2021-02-27 07:58:18','2021-02-27 07:58:18',77,1,NULL),(20006,1,'è®¾å¤‡è´¹ç”¨æŠ¥é”€.20001','to å®¡æ‰¹ã€æ€»ç»ç†ã€‘','lisi',0,'completed','2021-02-27 07:58:18','2021-02-27 11:48:44',13825883,1,NULL),(30001,0,'è®¾å¤‡è´¹ç”¨æŠ¥é”€.20001',NULL,'wangwu',0,NULL,'2021-02-27 11:48:44',NULL,0,1,NULL);
/*!40000 ALTER TABLE `JBPM4_HIST_TASK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JBPM4_HIST_VAR`
--

DROP TABLE IF EXISTS `JBPM4_HIST_VAR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `JBPM4_HIST_VAR` (
  `DBID_` bigint NOT NULL,
  `DBVERSION_` int NOT NULL,
  `PROCINSTID_` varchar(255) DEFAULT NULL,
  `EXECUTIONID_` varchar(255) DEFAULT NULL,
  `VARNAME_` varchar(255) DEFAULT NULL,
  `VALUE_` varchar(255) DEFAULT NULL,
  `HPROCI_` bigint DEFAULT NULL,
  `HTASK_` bigint DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `FK_HVAR_HPROCI` (`HPROCI_`),
  KEY `FK_HVAR_HTASK` (`HTASK_`),
  KEY `IDX_HVAR_HPROCI` (`HPROCI_`),
  KEY `IDX_HVAR_HTASK` (`HTASK_`),
  CONSTRAINT `FK_HVAR_HPROCI` FOREIGN KEY (`HPROCI_`) REFERENCES `JBPM4_HIST_PROCINST` (`DBID_`),
  CONSTRAINT `FK_HVAR_HTASK` FOREIGN KEY (`HTASK_`) REFERENCES `JBPM4_HIST_TASK` (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JBPM4_HIST_VAR`
--

LOCK TABLES `JBPM4_HIST_VAR` WRITE;
/*!40000 ALTER TABLE `JBPM4_HIST_VAR` DISABLE KEYS */;
/*!40000 ALTER TABLE `JBPM4_HIST_VAR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JBPM4_ID_GROUP`
--

DROP TABLE IF EXISTS `JBPM4_ID_GROUP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `JBPM4_ID_GROUP` (
  `DBID_` bigint NOT NULL,
  `DBVERSION_` int NOT NULL,
  `ID_` varchar(255) DEFAULT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `TYPE_` varchar(255) DEFAULT NULL,
  `PARENT_` bigint DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `FK_GROUP_PARENT` (`PARENT_`),
  KEY `IDX_GROUP_PARENT` (`PARENT_`),
  CONSTRAINT `FK_GROUP_PARENT` FOREIGN KEY (`PARENT_`) REFERENCES `JBPM4_ID_GROUP` (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JBPM4_ID_GROUP`
--

LOCK TABLES `JBPM4_ID_GROUP` WRITE;
/*!40000 ALTER TABLE `JBPM4_ID_GROUP` DISABLE KEYS */;
/*!40000 ALTER TABLE `JBPM4_ID_GROUP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JBPM4_ID_MEMBERSHIP`
--

DROP TABLE IF EXISTS `JBPM4_ID_MEMBERSHIP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `JBPM4_ID_MEMBERSHIP` (
  `DBID_` bigint NOT NULL,
  `DBVERSION_` int NOT NULL,
  `USER_` bigint DEFAULT NULL,
  `GROUP_` bigint DEFAULT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `FK_MEM_USER` (`USER_`),
  KEY `FK_MEM_GROUP` (`GROUP_`),
  KEY `IDX_MEM_USER` (`USER_`),
  KEY `IDX_MEM_GROUP` (`GROUP_`),
  CONSTRAINT `FK_MEM_GROUP` FOREIGN KEY (`GROUP_`) REFERENCES `JBPM4_ID_GROUP` (`DBID_`),
  CONSTRAINT `FK_MEM_USER` FOREIGN KEY (`USER_`) REFERENCES `JBPM4_ID_USER` (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JBPM4_ID_MEMBERSHIP`
--

LOCK TABLES `JBPM4_ID_MEMBERSHIP` WRITE;
/*!40000 ALTER TABLE `JBPM4_ID_MEMBERSHIP` DISABLE KEYS */;
/*!40000 ALTER TABLE `JBPM4_ID_MEMBERSHIP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JBPM4_ID_USER`
--

DROP TABLE IF EXISTS `JBPM4_ID_USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `JBPM4_ID_USER` (
  `DBID_` bigint NOT NULL,
  `DBVERSION_` int NOT NULL,
  `ID_` varchar(255) DEFAULT NULL,
  `PASSWORD_` varchar(255) DEFAULT NULL,
  `GIVENNAME_` varchar(255) DEFAULT NULL,
  `FAMILYNAME_` varchar(255) DEFAULT NULL,
  `BUSINESSEMAIL_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JBPM4_ID_USER`
--

LOCK TABLES `JBPM4_ID_USER` WRITE;
/*!40000 ALTER TABLE `JBPM4_ID_USER` DISABLE KEYS */;
/*!40000 ALTER TABLE `JBPM4_ID_USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JBPM4_JOB`
--

DROP TABLE IF EXISTS `JBPM4_JOB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `JBPM4_JOB` (
  `DBID_` bigint NOT NULL,
  `CLASS_` varchar(255) NOT NULL,
  `DBVERSION_` int NOT NULL,
  `DUEDATE_` datetime DEFAULT NULL,
  `STATE_` varchar(255) DEFAULT NULL,
  `ISEXCLUSIVE_` bit(1) DEFAULT NULL,
  `LOCKOWNER_` varchar(255) DEFAULT NULL,
  `LOCKEXPTIME_` datetime DEFAULT NULL,
  `EXCEPTION_` longtext,
  `RETRIES_` int DEFAULT NULL,
  `PROCESSINSTANCE_` bigint DEFAULT NULL,
  `EXECUTION_` bigint DEFAULT NULL,
  `CFG_` bigint DEFAULT NULL,
  `SIGNAL_` varchar(255) DEFAULT NULL,
  `EVENT_` varchar(255) DEFAULT NULL,
  `REPEAT_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `FK_JOB_CFG` (`CFG_`),
  KEY `IDX_JOBDUEDATE` (`DUEDATE_`),
  KEY `IDX_JOB_PRINST` (`PROCESSINSTANCE_`),
  KEY `IDX_JOB_EXE` (`EXECUTION_`),
  KEY `IDX_JOB_CFG` (`CFG_`),
  KEY `IDX_JOBLOCKEXP` (`LOCKEXPTIME_`),
  KEY `IDX_JOBRETRIES` (`RETRIES_`),
  CONSTRAINT `FK_JOB_CFG` FOREIGN KEY (`CFG_`) REFERENCES `JBPM4_LOB` (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JBPM4_JOB`
--

LOCK TABLES `JBPM4_JOB` WRITE;
/*!40000 ALTER TABLE `JBPM4_JOB` DISABLE KEYS */;
/*!40000 ALTER TABLE `JBPM4_JOB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JBPM4_LOB`
--

DROP TABLE IF EXISTS `JBPM4_LOB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `JBPM4_LOB` (
  `DBID_` bigint NOT NULL,
  `DBVERSION_` int NOT NULL,
  `BLOB_VALUE_` longblob,
  `DEPLOYMENT_` bigint DEFAULT NULL,
  `NAME_` longtext,
  PRIMARY KEY (`DBID_`),
  KEY `FK_LOB_DEPLOYMENT` (`DEPLOYMENT_`),
  KEY `IDX_LOB_DEPLOYMENT` (`DEPLOYMENT_`),
  CONSTRAINT `FK_LOB_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_`) REFERENCES `JBPM4_DEPLOYMENT` (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JBPM4_LOB`
--

LOCK TABLES `JBPM4_LOB` WRITE;
/*!40000 ALTER TABLE `JBPM4_LOB` DISABLE KEYS */;
INSERT INTO `JBPM4_LOB` VALUES (2,0,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0µ\0\0\0û‰z\0\01—IDATxœ\í\İ}t\ç}\èñ\Ó?óŸ\ç¦\ÔMc§\é¹Á‰_\Ú\Ó§7÷pÛ´vz\î­c\'\ç6q\â\Ø\æ¶vm\\\ã—4À\Ø1vd#\Ç2† \ã\Å\È™\Å#°°\n\Ä\Z$ …Š\Ğ\ëVZ	¡—ˆû\Û}Ä²³»3»’f÷\Í~?\ç9œ\Õ\ì\Ì\ìh—s¾û\ì\Ë\è.\0\0gû\İ\0\0\0R \Ö\0\08µ\0À\é¨5\0\0NG­\0p:j\r\0€\ÓQk\0\0œZ\0\àt\Ô\Z\0\0§£\Ö\0\08µ\0À\é¨5\0\0NG­\0p:j\r\0€\ÓQk\0\0œZ\0\àt\Ô\Z\0\0§£\Ö\0\08µ\0À\é¨5r\Ú\Ä\Ä\Ä\ï#\Æ\Ç\Ç\ÇL\ÈUjYY÷ñ\ÈQ\Ô\Z9JuZb<222<<<44488J \å*YAV“•i6\0-¨5rN´Ó—.]’o¯)\\±şÿ\ïù¿üÁ3Ÿ¿û‰k¿ıø§e\ÈùQ\ÊU(\ì\í\í\í\ïï—•eš\r û¨5rHl§Bı…[}p\ÙM\ß[4\ç_Vş\Õ/\ßùQ\é¾UG;7\Ø$C.È²P®’dµ\Â-\\\è\ìƒ4@öQk\ä\n•\ê\Ñ\ÑÑ‹/zv\å=”óO–\Ì}õ½‡Ou·ZYAV“•e“wv\åuuu\É<[v\"»\"\Ø\0²ƒZ#\'¨TŒŒ\r\r-ÿÍ½÷=û…‚’‡¬#8d\Ùpùo¾\×\Ş~¾¯¯Ov%;$\Ø\0²€Z\Ãı¢©\î\è	<õ\Ú?<ò\â¼\ê\ïM5\ÕjÈ†²ùS¯ıı\éÀ±P(D°dµ†\ËES-e•T?³úö\Î\áS\ÓKµ\ZÃ§ŸY}‡ûÜ¹–\î\în‚\r ¨5\\N½W=44”¿\î{2-aª£Á~\ä\Å\Ûò\×\İ#Á–¶\ì\\½‡­ûw\àZ\Ô\Zn&óİ±±±‹/¾]ş‹ûıBõ‰’™§:ú’ø}\Ï^_¼ó­­­}}}rrCL¯dµ†›\É|÷Ò¥KÁÿ\ê}(ÿ–t?V66…=˜ó‰¦†öööşş~¹!¦\×\02„ZÃµ\Ô\Äzpp°`ó‚Ÿ,ùr÷ˆ¿g\äl÷\è=ò\ï\È\Ùğ#\á\áË£j\ÈUg#K\Îô„W•\Ïvª\Â†—^Y8zö§K\æl~\Ø\ï÷wuu\É\r1½!\Ô\Z®59±\\úÕ—7=\Ğq±\éw1C~\ìŠü«~Š,WK†Nv\\<\Ùqeµ«\ë_œ\\\'ú£\ìögK¿\Ò\Ğp¬­­Mnˆ\é5€¡\Öp§\è\Äzs\å/\ïY4§®eGK¿/2>‘Ï©\Ë\á\êò¹\ß\ä\nŸ¨uZ\ÂK>9WW®p.²I]`\Ç=‹şxÓ•\Í\Í\ÍL¯dµ†;©omõ÷÷\ç½u÷\Ã+n=Õ³ÿTo\Íi5z¨qªG.«%5§\Â#²°7r9²f\ä\ß‘\å‘£×ª\åª\Ş¯ø‹%o\İ\Õ\Ø\Øpşüy¹9õm.İ¿=\0·¡\Öp\'I\æğğpooøóeyo\İ\Õp\áã†È¸ğñ±+#²p,<\Öññ\ä\nö4¨\å\êBGdµ\È\n\áM®\\h¸ºùÇ’\êóo®¯¯rsr£\Ô\Z€\í¨5\Üi|||hh¨»»ûûOÿI\Ñö\'\ê\Ú>¬k\Ûù7<\êÕ…\Ö\èBùwG}dI½\\V\Ë[\Õ:Ñ­®,‰Y(+\Ë\Î\ï}úºC‡úı~¹9¹Q¹iİ¿=\0·¡\Öp\'õ¦ugg\ç\İ?ûşÁWœ}ÿ@`ë³[kWGxI\àıšÀû\êÂÉ…\ï\ËÊ‘\ÔU\êG5&W‹®)e\çw-¼vÿşß:uJnN½u­û·\à6\Ô\Z\î$\É…Bw=ş™Š\Åûü\ïÉ¨ü;y¡Yı¸9ò\ã\æ\ê\æ\Í\Ækeyx‰ZX\İ\İ|ó\ä\áõ\Ã+\ì9şö·ÿLuõ¾¦¦&¹9¹Qj\rÀv\Ô\Z\î[\ë\Z\×\í=½i\ï\éw¯ŒM†›\Ã?V~·ªù]uaoó»\á\Õ\Â\Éõ¯\\\Ûün\ì~dİ\ë¥\ÖûöUQk\0™C­\áN\ÑZß½ğ³›÷¿®ló¦\Éô6«K€U¶7]\éô&u­º<™\ê+y®ºò\Éu&·}÷½ß¾p\×\Âk¥\Ö\'Nœ \Ö\02„ZÃ¢µşşS²zë¿ª±«ı\Ñ×·\'_\ÇV/ƒ\ïó_}<ºÂ¾««©¢ã½˜\ï\É\Î\ï}\ê:j\r £¨5\Ü)Z\ë—\İôEÿ;ö\Ãe5-†Ïš%_b½<f\È\Î¶ì«¼ £¨5\Ü)Z\ë\ÅEÿô`şMq_ßª~‰+zùü\Õ\åõñ«\í¬\ãGd“óo^\\ôª««©5€Ì¡\Öp§\è7¸\ŞÙwÏ“Tuòİ†•W\Î|29\Zcş½rmect…Ê«›\\9³Ê•“¨Tª%ûš6\İó\äœ\â\Ï\íß¿Ÿop\Èj\rwŠ\Å\ï÷ÿ4\ï+/¼ó\'O2:yò\Ñ\Éqõt¤½\Æk~œ<i\ÌU²DvûÓ¼w\îüğĞ¡Cœ@\æPk¸SôÌ£@`Õ»?¹ÿ¹ÿ>ù7<¢\Õ\ã“ğ\åğ¸òc\ä\ÚÉ…\ê¯z„Gx\É\ä†‘?ò¡®\r\ïä“Ÿ<÷e\ÙyEEE}}=g9\Ô\Z\îı«\çÏŸoh8ú³e7IV£³\Ãğ§3O^ùS˜\'£\n3²\ä\ä•\ËWÿ€\æ\ä\Â\ÈÖ”şl\ÙW·—mÛ·o_cc#\Õ@\æPk¸Sô/fvuu577¿µ}\Ñ}\Ï~¡ªac÷È™Ñ³\İ#g{dŒ	ÿ;r¦{T]>şwô\Ì\äµ#g»#k†7Q+‡\Ç\Ù\È8S\Õø\î}\Ï^¿\æƒE»v\í:|ø01@FQk¸–\Ìq/]º\Û\Ú\Ú\Z\Z\Z–®ı\î#/\Î\ë>o\á\è>ıÈ‹·-]û\íÛ·\Ë\ÄZv.7!7$7\Ç\Ä\Z@&Pk¸V\ìô\Ú\ï÷\×\Õ\Õ-zõ›Ï¬¾=Y°\ÏM)\ÕÏ¬¾cÑ«·u\ë\Ö={ö\Ène\çL¬dµ†›©\éu{{{SSSõ\á\n©¬Ì°«O¼7YõX«l(›\ËN¶\í|o÷\î\İ”\İ\Ê\Î\å&˜X\Èj\r7S\Ó\ë‹/öõõµ¶¶?~üÀ\Ë\Ö~\ç¾g¿PPò\ĞTk-›È†²ùûï¿¿k\×.Ù•\ìPv+;—›`b\r s¨5\\Næ»£££CCC===\çÎkll”Ê®+{úÁü›²d\î«\ï=|ªó€u¤eYMV–M\Önz\ëÖ­2«–È®d‡²[Ù¹\Ük\0™C­\ár2\ßU\ß\æ\n…B\İ\İ\İ\ÒW™<xp\Ï\Ç\ï=ü³e_ıŞ¢9ÿ²ò¯~ùÎJ÷­:\Øù»Á&rA~”…r•¬ «\ÉÊ¥\ïoÙ¾}û={dsÙ‰\ìJv(»U\ß\Úbb\r s¨5\Ü/6\Ø2nmmmjjª««Û·oß®]»6U<Ÿ¿\î{Vü\åùü\İO\\û\í\Ç?-C.È²P®’JKK¥Ó²²l\"\Ê\æ²\Ù©\Ô\Z9!\Zì¡¡¡¾¾¾ööv¿\ß\ß\Ğ\Ğpøğa	pEE\ÅÎ;\Ë\Ê\Ê$\É|ğÁ¶¹ ?\ÊB¹JV\Õde\ÙD6”\Íe\'²+R\r ;¨5r…\nö\è\è\èÅ‹ûûû»ºº\Ú\ÚÚš››\ë\ë\ë:´ÿş\ê\ê\ê}1\äGY(W\É\n²š¬,›È†²¹\ìD½WMªdµFQÁ»t\é\Ò\à\à`0”ô?>ÈŒùÔ©SM\'\"\ÔeY(W\É\n²š¬,›È†²¹\ì„T\È\Zjœ\×l™(÷öövwwwvvv$…r•¬ «\Ñi\0ºPk\ä¨h³GFF†‡‡‡††$Æ¡²P®’d5:\r@j\r=òòò¢bY¯œ\ÎS.]¢š-\Æ\Ç\Ç\ÇL\ÈUj:\r@j\r=bkt¡5‹š]•\æ~\Ê\ÊÊ¤\Ğ3ù\Õ\0Àv\Ô\Z\ÙK\ë|&my\Ò]¥3G7\ÛO¬‚‚‚`08µ_	\02ŒZc¦\Òy™\Úb+‹[\Ç\Ûb[³\Éw:Q§\Ö\0ˆZc¦¦]k\ë¹uôZ\ë%\Ös\ë”óõD\Ô\Z€Qk\ÌH\ÒIj:¯E§ùbu\ÊW\ÂÓ¿œ\æÜº°°°»»\Û\â\Ø\0 û¨5f\Ê\ì\Õi³\ÇN‘S\Ô\ÆZ§Ü›R\\\\’^\0ºPk\Ì\ÔTkt5‹•-VHùJø\å„B[O¬/Sk\0D­1Sv\ÕÚ¢ Ö»²^\'n*Ÿr}j\rÀ¨5l8M\Ù\×\Ä\×Ã­÷œrŸ)÷p9½¹µ\Ç\ãinn¶>x\0\È2jl3{½:v¡YP-B›Î¼<¹µ\×\ëõù|iÿ6\0\r\Ô\Z0 \Ö\0ˆZ\Ô\Z€QkÀ ¬¬¬¶¶V÷Q\0€µ*#t\0PkÀ€Zp j\rPk\0D­ƒ\ê\êêŠŠ\n\İG\0\Ô\Z0ğù|^¯W÷Q\0€µ¨5\0¢Ö€µ\à@\Ô\Z0hhhØ²e‹\î£\0\0j\r\â\âb\İG\0\Ô\Z0 \Ö\0ˆZ\Ô\Z€QkÀ ­­m\íÚµº\0¨50iÅŠyFEEEº\n\0Â¨50i\ãÆ±©Ş¶m[II‰\îƒ€0j\rLºp\áÂ²e\ËTª—/_¾nİº@  û \0 ŒZWªZoŞ¼™—Á8µ®òù|K—.Uµ®­­\Õ}8\00‰Z+W®”ZŒ\é>\0˜D­ƒİ»wK­\Ë\Ë\Ëu\0\\E­™R/[¶,\n\é>\0¸ŠZ\0\àt\Ô\Z\0\0§£\Ö\0\08µ\0À\é¨5\0\0NG­\0p:jì™˜¸¼\ãh\ësŞºù«\Êdü\á‚5Œ)y+½r¿=VR³ñ hd\\÷\ã	 {¨5²¡wp\ä\é-‡¯YX¬=xn\Z?^¿\×\ß9 û±\r\Ô\Z\ç9èŸ³È£sK~\é\â­u»\Z~\'£o`ü\âğeFúC\İo/\í:}e\âS®{\Î[71¡û1a\Ô\Z$y¬¤Fu\åöWwúZ‚Úƒ\çš\Ñ\Ô>p\ï›{\Ô}{\ç¯w÷\è~´dµF©T\Ëüou\Å	\íyså©¶zAf\ÛÌ°£\Ö\È\ÏA¿JµE{\Õ\\<|-AõF\Ã\Ó[\ë~\Ìd\nµFFœ\ïR	YSuJ{\Ï\\?ªNvÊ³\"¹·\ë[zt?ò\02‚Z##\Ôk\àw¾¾[{\Érd,\ŞZ§^\×ı\È\Èj\rû\rŒ«©+\Ë\Ú\èW/f9\Çô\Zp!j\rû•\Ö\Ô<O{\Ãrj<ôNµ\Ü\íK¶\Õ\é~üØZ\Ã~<\ál\ä—ù´,§\ÆGZ\ån¿uy©\î\Ç€ı¨5\ì§\Î\İÁGÁ³<:‚#r·\ÏY\ä\Ñıø°µ†ınøù&\ÉFSû€ö€\å\ÚP\Ğıø°µ†ı\Ô	¶8±(µ`j\rû©ZkOWu\Ï\ë~üØZ\Ã~ÔšZ°µ†ı¨5µ`/j\rûQkj\rÀ^\Ô\Zö£\Ö\Ô\Z€½¨5\ìG­©5\0{Qk\ØOo­\çÏŸ½\Ëz\åtv˜ry:{£\Ö\0¦Z\Ã~Î©uÊ„\'šR\Ñ\ÕUi\î‡Z˜6j\rû\éªu\\,­ó™´\åIw•~†™[\Èj\rû9ynm‘\çtZn6ùfn\r £¨5ì§½\Ö\Ös\ë\èµ\ÖK¬\ç\Ö)\ç\ë\Ô\Z€¨5ì§±\Ö\é¿Xò•ğô/3·i\Ô\Zö\Óø¾u\ì¿\Öµ±\Ö)÷F­\Ìµ†ı´¿\ï”uO¼\Êú•ğ\ÄBkŸXSkÀÅ¨5\ì\ç´Z[4²Zo›˜|j\rÀv\Ô\ZösB­cSm¶Z\ÊuR\Ö\Ú\ì­kj\rÀ^\Ô\Zös\È÷­“.4ªEhÓ™—3·Q\Ô\Zö\ã<\á\Ô\Z€½¨5\ìG­©5\0{QkØZSk\0ö¢Ö°µ¦\Ö\0\ìE­a?jM­Ø‹Z\Ã~ÔšZ°µ†ı¨5µ`/j\rûQkj\rÀ^\Ô\Zö›³\È#\Íhj\Ğ^¯\\\ê\×ıø°µ†ı\æ­ôJ3ªNvj¯W®\r¹Û¯YX¬ûñ`?j\rû}\Í\ÉÆšªS\Ú\ë•S\ãĞ™¹\Û\ç.Ù¬ûñ`?j\rû½^yB²q\ï›{´,§\Æ\â­ur·/ğT\ë~üØZ\Ã~gº$Ÿzt] kH{\ÃrgÜ’_*wûc­º\0ö£\ÖÈˆ;½[\Êño›j´7,GÆ†~¹\Ã\ç,ò\\\×ı\à°µFFÔ·ô¨\éõ¡3=\ÚK\æú\ÑQŸ½ò„\îG@FPkdÊ³Wúq\Ã\Ï7ñzxFG\ßÀøüUerW\Ï[é˜\Ğı¨\ÈjL\ZW_åš»d³¯%¨½j®2«V©–¹õ™®İ9€L¡\Ö\È \çÀ-\ËKÕ—€WWœ\Ğ\Ş6—Íµõ¸Ü½õ\çzt?\Ú\02ˆZ#³†.\ßùúµšd/\ŞZ\Ç;\Ù3M\í/\í:¦>.C1«\\Z#\ã&&.—m•T«º¨¡&…Œ)\Äûğåñ^5¨5²D¢Rz$°ÀSM§g8®YX|ÿú½úù²;¨5\0\0NG­\0p:j\r\0€\ÓQk\0\0œZç¢¼¼¼”W%^Hºr¬ôo%\Í¢\ë\ä%Hy0±«¥\Ü\0Zç„¤%K\Z°i\×z\Z·u9\'Şº\ÅmY9µ0«Q\ëœ`¨\Äd^b­-n\ÎloqË“n\æS³\ä\'>3H³\Ö^¯7\å:\0M\ÔzVš\á\Ñ:ÀI/˜eÒ¬I#m=i¶\Ş\Ö\âæ¬Ÿ¤s´Iw\0\ÎA­g¥i\ä$\é\Ô3\é4vı\ØfûLó†.O½Ö±ûOºm\Ò_Ä¬\ÖÖ¿K\â\0€sP\ë\ÙÇ¬²Ö1+¥\Ù~,š—ş\Æ\İÊ”jm¶¡\Å:\ÖOD\Ò?`j\rÀi¨õ¬d1!¶\Ø\Äb\Ö{\Ù|.;Z\'\îª»½4\ÆI×Ÿö›\0\08µ•¦Wë”—“\î*g\0)ok\ZµN\'Ì‰û4+º\Å\ÑZ\ì\0‚Z\ÏJÓ«µ‹]%N“\î\Ó\âğ\Ìö“\æ‹\Øm­\Ãló”G›ò\0\0@;j=[%&*ıÆ¤SÊ¸¾Z\×:i_c¯J\ÜI\Êc°~2w);³Cµ8\0\0pj‹Ò™(\Çe;e\ÍJlûtÁ\ì†R>?Hü]¨5€YZñ¨5\0§¡\Ö@<j\rÀi¨5Zp\Zj\rÄ£\Ö\0œ†Zñ¨5\0§¡\Ö@<j\rÀi¨5Zp\Zj\rÄ£\Ö\0œ†Zñ¨5\0§¡\Ö@<j\rÀi¨5Zp\Zj\rÄ£\Ö\0œ†Zñ¨5\0§¡\Ö@<j\rÀi¨5Zp\Zj\rLZ±bE\Ü_\Â.**\Ò}P\0F­I7nŒMõ¶m\ÛJJJt\0„Qk`Ò…–-[¦R½|ùòu\ë\Ö\İ\0a\Ô\Z¸ª°°P\Õzó\æÍ¼À9¨5p•\Ï\ç[ºt©ªumm­\î\Ã€I\Ô\Z0X¹r¥Ôº  `llL÷±\0À$j\r\ìŞ½[j]^^®û@\0\à*j\rÈ”zÙ²e¡PH÷\0ÀU\Ô\Z\0\0§£\Ö\0\08µ\0À\é¨5\0\0NG­\0p:j\r\0€\ÓQkd\É\Ä\Ä\åG[Ÿó\Ö\Í_U&\ã¬aLc\Ì[\é•{ï±’šıC#\ãºU\0YB­‘q½ƒ#Oo9|\Í\Âb\í©s\ßøñú½ş\Îİ0€Œ£\Ö\È,\ÏAÿœE•–[òKo­\Û\Õğ;}\ã‡/3¦:Ô½÷Ò®c\Ñ\×\'>õ\èº\ç¼uºi\0™D­‘)Ò\ÇJjTQnu§¯%¨=u.M\í÷¾¹G\İ\Ãwşzw\ï\àˆ\î\Ç@¦PkdŠJµ\ÌüVWœ\Ğ6™j«wd¶\Íp+jŒğô«TKK´÷\Ìõ\Ã\×To7<½\å°\îG@FPk\Ø\ï|ßŠÇšªS\ÚK–#£\êd§<7’û¼¾¥G÷\ãÀ~\Ô\ZöS¯\ßùún\í\rË©±xkz=\\÷\ãÀ~\Ô\Z6\ZW“<>V–\å\Ñ70®^\Ò8r\é5\à6\Ô\Z6+­¨öz\å\àx\èj¹ó—l«\Óı¿\0€Í¨5l¶ÀF~™O{ºrp|p¤U\îü[——\êş_\0Àf\Ô\Z6Sg\í\à£\àZFGpD\îü9‹<ºÿ\0°µ†\Ínøù&	FSû€öt\å\æP\Z\Ğı¿\0€Í¨5l¦N­Å‰E©5\0Qk\ØL\ÕZ{´rv¨û_÷ÿ\06£Ö°µ¦\Ö\0lG­a3jM­ØZ\ÃfÔšZ°µ†Í¨5µ`;j\r›Qkj\rÀv\Ô\Z6£\Ö\Ô\Z€\í¨5lF­©5\0\ÛQk\Ølæµ?~Ê«/$]9Vú·’\æ\n\Ñu\æ\'Hy0±«¥Ü–Z Ö°\Ù4j´dI6\íZO\ã¶Ò‰q\â­[Ü–Å‘Sk\0Ö¨5l6½Z§¼6®gSªµuP-$İ¹Ew-\ÖO\ç™µ`†Z\ÃfZ^	7Ë¤Yÿ’F\ÚzÒœN\à-¤L;µ`Z\ÃfÓ«uÒ©g\Ò	h\ìú±\Ìö™\æ\rM£Ö±ûOºm\Ò_Ä¬\ÖÖ¿µrµ†Í¦]ë”—\ã\"NVÓŒ\ß4jm¶¡\Å:\ÖOD¨5\0\Ô\Z6\Ë\Ğ\Ü:ıj\ÊøYÌª\Ó\Ümbª-2lı#µj\r›ezn=\ÕZ§9ñj­\Ó	s\â>SN¬©5€¤¨5l–µ÷­/\ÆLF­\ç\Ğ\é\Ô\Ú,\Ûõ½\ëZ[<ÿ \Ö\0\ÒA­a³¬}&<¶¯ÖµN\Ú\×Ø«w’ò¬ŸL$\ítÊ¢Sk\0f¨5l–¡Z\Ç\Å,.\Û)hVb³\ØOu²(\å\n‰¿µ`†Z\Ãfœ\'\\\ï Ö€+QkØŒZSk\0¶£Ö°µ¦\Ö\0lG­a3jM­ØZ\ÃfÔšZ°µ†Í¨5µ`;j\r›Qkj\rÀv\Ô\Z6£\Ö\Ô\Z€\í¨5lF­©5\0\ÛQkØŒZSk\0¶£Ö°µ¦\Ö\0lG­a³9‹<R‹¦ö\í\İ\ÊÍ¡\î\İÿ\0ØŒZ\ÃfóVz¥U\';µw+7‡\Üù\×,,\Öı¿\0€Í¨5löı5{$kªNi\ïVCgz\äÎŸ»d³\îÿ\0lF­a³\×+OH0\î}söt\å\àX¼µN\îüj\İÿ\0ØŒZ\Ãfgº$Ÿzt] kH{½rmÜ’_*wşc­ºÿ\0°µ†ı\îüõniÆ¿mª\Ñ^¯œ\Zø\ånŸ³\Èsqd\\÷\06£Ö°_}Kš^:Ó£½a92:‚#\ê\Ó\à¯W\Ğıø°µFFüø7{¥7ü|¯‡gaô\rŒ\Ï_U&wø¼•Ş‰	İ=€ \ÖÈˆ¡‘qõU®¹K6ûZ‚\Ú{\æ\â!³j•j™[Ÿ\é\Z\Ğı\È\ÈjLñwÜ²¼T}ıwu\Å	\íUs\å\Ø\\P/€Ë\\®G÷c S¨52h\è\Òø½‘¯_«Iö\â­u¼“m\Ëhjxi\×1õ	pò¬ˆY5\àn\Ô\Z™51q¹\ìh«¤ZuE\r5dLc$Ş“/tŒ÷ª×£\Ö\È\ÉI\é‘ÀO5¶e\\³°øşõ{7ôóe- GPk\0\0œZ\0\àt\Ô\Z¸œ———òª\ÄIWeq+Iw¢\æ%HyC±«¥\ÜÀlD­‘‹’\Ö.i\ä¦]k³,ö2ğI\Ûl½¦Ù¡˜]¨5r‘u\Æç¸—§Xk‹«fø´ ñØ’\Ş(µ\\†Z\Ã\rf˜%\ë\0\'½`\ä4oÂ¢\Ğf»2{\ê@­w£\Öpƒid\Él²+¼^o\âc\'\Ùf7g}•\ÅÂ¸¸šÍ¹g\Òr¡¹¹9\éş©5\à&\Ô\Z³\ÅKÁ\Ö[™]Nú£\Ù,6\Í5{fxHI»›¸õ®¬À¬C­\áI³—¸<n—\Í\ç»Ó«uš¿B\Ò\'ı\Õb”\éuAAAuuµ]Ài¨5\Ü`zµ6»œôª)=°¸Å¤ûI\'Ì‰‡kll¬¢¢¢°°°­­-\å‘\0˜u¨5\Ü së¤»Šy[\ì3\é\á¥ş\Ø\Í-n\Â\ì\ï\î\î^»v­\×\ë¥Ö€\ËPk¸Db\Æ\Òo•Å¤6n.{9!½‰\Ç`6K¶X˜\Î\Ü\Ú\ây@š‡`ö¢Ö€iG“\Ît-B˜t‚¸¡uJWKšm³u\â\Êl{z÷	\0G¡\Ö@<\×LI\Û\Ú\Ú\n+**†‡‡u€¡\Ö@<\×\ÔZ©®®–f755\é>\0\ÓG­x.«µ…B%%%\'\ê>\0\ÓA­xî«µ\Ò\Ü\Ü,“l™j\é>\0SC­xn­µP_\Ë.**\nºÀPk ‹k­tww{½\ŞP(¤ûX\0¤…Zñ\\_k\Å\çó\Ö\Ö\Ö\ê>\0©Qk ^\ÔZ—••­]»V¯€cQk ^\î\ÔZ‘TK°\Ë\Ë\ËùZ6\àX\Ô\Z0b½ğ\ÂºBƒššš\Â\ÂÂ††\İ 	j\rƒÁ‚‚\İG¡G(Ú²e‹\Ç\ã\á|¥€\ÓPkÀ —k­477UVVòµlÀ9¨5`@­/G¾–-µ–fK¹u€0j\rP\ë¨\î\înÇ³e\Ë¾–\rhG­j§¡¡A¯4º\Ä\ï÷oØ°\ÙD­jHÂ¬\ÎW\Ú\Ö\Ö&÷O~~şò\å\ËKKKuC¨5`@­\Íttt¼õ\Ö[+V¬È‹x\å•WxW\È\Zj\rPko¿ıv^	6¯‡\ÙA­jm\æ\ã?\Î3zşù\çy=\Èj\rPk3EEE«V­’×¯__XXø\Úk¯I°W®\\yò\äIİ‡¸µ¨µ¹g€\Ïç«¬¬ôz½\Å\ÅÅ¿úÕ¯\Ô[÷¡\îG­j\rÀ¨5`@­8µ¨5\0¢Ö€µ\à@\Ô\Z0\è\è\è(**\Ò}\0`@­ƒ@ P\\\\¬û(\0À€Z\Ôzª&&.\ï8\Úúœ·nşª2¸`\r#\Í1o¥W\î±\ÇJj6ôŒ\ë~$\áh\Ô\Z0 \Ö\é\ëyz\Ë\ákkÏ;Æ\×\ïõw\è~T\áP\Ô\Z0 \Öiòô\ÏY\äQ™¹%¿tñÖº]\r¿“\Ñ70~qø2#¡î±—v‹¾&ñ©G\×=ç­›˜\Ğı\è\Ây¨5`@­S’–<VR£\êrû«;}-A\í\ÙsÁhj¸÷\Í=\ê^½ó×»{Gt?\Îpj\rP\ë”Tªe¸º\â„öÈ¹l\ÈT[½³ ³mfØˆE­jm\ÍsĞ¯R-]\Ñ\Ş6W_KP½\Åğô–Ãºm8µ¨µ…ó}C*$kªNi¯š‹G\Õ\ÉNy>$÷s}K\î\ÇNA­jmA½~\çë»µ÷\Ìõcñ\Ö:õz¸\î\ÇNA­jmfhd\\MøøXYF\ßÀ¸z\ã\È9¦\×£Ö€µ6SZP³=\í%Ë‘ñ\Ğ;\Õr‡/\ÙV§û‘‡#PkÀ€Z›Y\à	\Ç#¿Ì§=c92>8\Ò*wø­\ËKu?òpj\rPk3\ê|<k£#8\"wøœEİ<Z\Ô\Ú\Ì\r?\ß$ñhjĞ±\Ü\êƒºy8µ¨µuš-N,J­¡µšššJJJt…©ZkXN\ruŸ\ë~\ä\á\Ô\Z9!/\"öG³5}>Ÿ\×\ë\Í\ÊA\Í2ÔšZC#j\r§°(¨½û+wjm†ZSkhD­\áY«µõmQk3ÔšZC#j\rGÈ»\"qa:\Æ\í$\é~¨õQkj\r¨5œ\"1±I—[¯“\Î\ë}Rk3ÔšZC#j\r§˜^­\ã\æ\Í\Ô:s\ì­õüùóS^•x!\éÊ±,n%\éN\Ô\Âù	R\ŞP\ìj)·¥Ö˜9j\r§˜\É\Ü\Úb+jm—\Ö:i\í’FnÚµ¶h¿õµO\Úf\ë5©52Z\ÃA\ß]Nó}kµZ\â\å¸uWKD­\ÍÌ¼\Ö)¯kŞ”jşóƒ©>-H<¶¤7J­‘Q\Ô\Z0 \Öf´¿n\ä4oÂ¢\Ğf»2{\ê@­‘M\Ô\Z0 \Öff^k³\Énböb×½`¶\ÏôŸ˜µ\ÙlÎxqjÌ¡Ö€µ6cK­S^‹´EwÓ©uš\Ï\Ì\æ\Óq\ëX\ïŠZ#£¨5`@­\Ídanş,Ö–@Æ¦:e\Ñ\Í~¤\Ö\Èj\rPk3Ùœ[Oµ\Ö\Ók³ı¤\æ\Ä\ÃH9±¦\Ö\Èj\rPk3ZŞ·¾3a5K©Y;\Ó\ÒÙ¼\Ù\nO¨52ŠZ\ÔÚŒ–Ï„\ÇF×º\ÖI“o±0¹µ\Åó€4ƒZ\Ã.\Ô\Z0¨©©)//\×}N”…Z\Ç/.\Û)3i±¡uJWKšm³uÒ¹	j¢Ö€Ae„\î£p\"\ÎıA­E­jm†ZSkhD­jm†ZSkhD­jm†ZSkhD­jm†ZSkhD­jm†ZSkhD­jm†ZSkhD­jm†ZSkhD­jm†ZSkhD­jmf\Î\"”£©}@{\Ãrg¨û\\÷#G Ö€µ63o¥W\ÊQu²S{\Ãrg\È~\Í\Âbİ<Z\Ô\Ú\Ì÷\×\ì‘x¬©:¥½a92\é‘;|\î’Íºy8µ¨µ™\×+OH<\î}söŒ\å\ÈX¼µN\îğjİ<Z\Ô\ÚÌ™®‰Ç§]\è\Z\Ò^²\\·\ä—\Ê¾\ãX«\îG@­jm\á\Î_\ï–~üÛ¦\Z\í%sı\ØpÀ/wõœE‹#\ãºv8µ\Ê\Ë\Ëkjjt…CÕ·ô¨\éõ¡3=\Ú{\æ\â\ÑQŸ½ò„\î\ÇNA­¯\×\ëóùt…sıø7{¥\"7ü|¯‡ghô\rŒ\Ï_U&wò¼•Ş‰	İ7ƒZ\Ô\Ú\Ú\ĞÈ¸ú*\×\Ü%›}-A\ímsÙYµJµÌ­\Ït\r\è~´\á \Ô\Z0 \Ö)ù;nY^ª¾\n¼º\â„öÂ¹fl®\r¨Àå­?×£ûq†³PkÀ€Z§c\è\Òø½‘¯_«Iö\â­u¼“=\í\Ñ\Ô>ğÒ®c\ê\à2\ä™³j$¢Ö€µN\Ó\Ä\Äå²£­’j\Õ5\ÔÔ‘\æH¼÷^ş\è\ïU#)j\rP\ë)‘´”	,ğT\Ó\éikß¿~\ïÆƒ~¾¬\Ô\Z0 \Ö\0ˆZ\Ô\Z€QkÀ€Zp j\rPk\0D­j\rÀ¨5`@­8µ¨uú@YY™\î£\0rµ¨u:B¡PIIIqqqww·\îcrµ¨µµ±±±\Ê\ÊÊ‚‚‚¦¦&\İ\Ç\äj\rÈ”‘™‘{¦°°Pj-\Í\Ö},@n¡Ö€Aqqq \Ğ}\Ó\İ\İ\íñx\ä©L0\Ô},@.¢Ö€µ3<<\\QQ!S\ê\æ\æf\İ\Ç\ä.j\rP\ëX>ŸO:]]]­û@€\\G­j­´µµ­]»\Ö\ëõ†B!\İ\Ç€ZFªu^D\ìY¸Q\ÉsYY™¤Z‚…›j\rLµÖ™.htÿq\åÎššš\Â\Â\Â\Ú\Ú\ÚL\ß€)¡Ö€ck\éÛ’\ßZ:]^^><<œ¹[0=\Ô\Z0˜R­ó®H\\˜Î†q;IºŸ,\Ô:rb2À\á¨5`0Ã¹ulƒSn2¥\Öûœub2™RsBÀ\á¨5`Z\ÇÍ›µ\ÔZ\n]PPÀ‰É€YZÙœ[[l•\ÑZwwwË¯YRRÂ·³€Ù‚Z\ÓøW\â»\Ëi¾o­VK¼·N\âj\Ó6<<\\^^^XX\èœo©Hµõ}k{\Õ\Ö\ÖJ§kjjt€)£Ö€+k­NLVVV\ÆK\ßÀ,E­—\ÕZò\ìõz910\ÛQkÀ ¨¨¨££C÷QØ£ººº°°\Ğ\çó\é>\03E­ƒ‚‚ü	\ç\æ\æf\étEE\'&ÜZ³½\Ö\ê\Äd‡“nB­ƒ\Ù[kNL¸µfi­\Z\Z81\àb\Ô\Z0˜uµ\î\è\è(..Ş²e\ß\Î\\ŒZ³¨\Ö\ê\ÄdEEEnú\Ê€¤¨5`0[j][[+‡Ê‰É€A­\ç×º­­M\æ\Óeee|;\È\Ô\Z[±bE‘Q÷A\Å…B[¶lY»v­k\Î\ß M\Ô\ZÛ¸qclª·m\ÛVRR¢û ®\ZS\'&khh\Ğ},\04 \Ö@Ø…–-[¦RŸŸ¿n\İ:\ç|t«¹¹Y&úœ˜\Èe\Ô\Z˜$3WUk\Çã—ÁƒÁ \'‚“9Z“|>\ßÒ¥K¥\Ö7n¬­­\Õ{0ccc2™–\'2±\Ö{$\0œ€ZW­\\¹2??ÿ•W^\Ñ{F0ub²\ê\êjNL@¡\ÖÀU»w\ï–\éõ¶m\Ût\0\'&µ®’¹¬Ì­{zz²\Ó\Ã\Ã\Ãeeeœ˜@R\Ô\ZĞ¯¦¦¦  @û›\å\0‹Z:\ÉLZ\æ\Ó\å\å\å|;€j\r\è¡NLV\\\\Ì‰\É\0¤D­lS\'&+((\à\Äd\0\ÒD­«&L\Øx\Í\ÍÍ………|;@ú¨5ršŠñ\ï#\Æ\ÇÇ¥ £	d¡\\¥Ö™R¼O<¹aÃ†\è\Ò\İ\İ\İ\ê\Ädÿ_\0ˆZ#GE;-1\ê8s¸¾\á£Ê½o½]ù\æz5\ä\Ç\Ó{z‡††¤¸—.]R\åN³\Ù\Ò\æüüü\çŸş\Ã?”\Íe2]TTÄ‰\É\0LµFÎ‰vZ\"½Ã¦µ?üÙ¢\ë\æ>ş™®Œë¯ŒğO^7÷\Í{~$\ïlo…BRn\Év\ÊfK_x\áu\Öq¹À‰\É\0\ÌµFnQ–\â\Ê\ìyñ_\'ù\Ó\×\Ëxò¿ü\â7\î(ø\Öw<<\"C.È²P]+«\É\Êå¯¾\Ñ\ÓÕ\Øì¸›å¯¿şzôo.]ºô7\Ş\Ğò\Ëp\rj¢R\İ~üäŠ¿ù‡ğ\ìù\Ó\×?õù\×\ßÿğÑ·=OŸ?w.<Z[\Ã#rY)\Ş(+D³ÿµ¿=^õ\Û\Ş\Ş^i¶L GGGƒ]RR’gô«_ı\Ê\çó\éú­¸\0µF®P©şd{ù“r£tw\áµ_,ù\×ñŸk,´\Ù8\×*«É„[6	\ÏÂ¯›»\×ó^WWW¿L²\ã‚ıñ\Ç«¿ı\Ê+¯lÚ´iıúõ\çµ\×^+,,\Ôû\ë˜Õ¨5rB4\ÕÿÛ—¤¸+nûf{\å¾‘Nmï•¹u¸ôŸı³=Å`0lõvµL¦‹‹‹½^oee¥Ìª\0Ÿ0\Ô\Z\î§R\İğQ¥Jõ›\ßı\ç\áS§§šj5†OŸ.üöT°÷zJ’\0lG­\ár\Ñ÷ªŸ¹\áf©lÁ·¾3zö\ìôR­\Æh ğòw‡\ßóş\ÓTVl\0Y@­\ár’\Ï\á\á\áüy\'}Í»\å64$mp\×ÁÃ•+_~ó­¾\ãn5<<r¨°(\éÊƒy7}=¼\Ã[¿qª©©³³³¿¿_nellŒZ\Èj\r7S\ë]/¯–²>ñ¹/µWV%I\ïñ\ã\æ\èW¹\ã3\×?{ıMRñÄ­\Ú÷\î{\âş\\\Ö\Ùğ‹e@ ««+\n]ºt‰\é5€L \Öp3u\n”g®¿I²úÁ“ÿ‘\İÖŠJõ\n¹õ9÷`\ãñ¸m·>ö”úØ±úz\ÙSooø¬g\êKØºo\0nC­\áZjb½÷­·e\Ş,Mø\ä\ØÈ™3±#ğay:©V\ã—_ÿû¿?vó£\rO^7W®ú\Ï\ç_òûııııL¯dµ†kI2e¦[ğß• zxdğøñ¸!N3\Õj\È\ìÜ°‡\Æ\ã\ë\ï8ü}°ÿù­Æ††\Ø\é5µ`/j\r\×R/ƒ?ñ\Ù?“ }gc°®.XWù·.X[»kqş”R­F`\ÇN\Ùvr?µuG7l”‰û\Âk¿XWsP¦×¡PH}8\\÷oÀU¨5\\K’yúÀ¡ğ_\æø\ã/w\í\İ\ÛUU;\Â\'	Ÿz­e·õY³\í\Å\ïœ:y²½½=úb¸\î\ß€«Pk¸\Öøøø÷J¥\Ö/~\ãó\å;\Ãcg¹\Z‡\n‹\ÔyÂ§:\Ïıë¶²\á\\\Ù\áŠÛ¾)\ËKV466F_—›\Öı\Ûpj\rwRoZW¾¹^ªü\æwÿù\ìû\ïÇüi¤Z³¥¥±»*ø\Öw\Ô÷¸=\Zx\ë\Z@&Pk¸“\Ärttt\Ï\ë¤\Ök\ï{\àô»\ï\Æ\Ï:\íZ\ïaU\ì®ä©€ªõ‘#Gü~WW—:¯µ`#j\rwŠ«u\Ó\ÛoÇ\Ö:vWqµ~ĞŒZ°µ†;\ÅÖºğ\Î\ï\ÇÍ­Õ‰M¦7No\Ü»«\è+\á\Ô\Z@\æPk¸“ªuôSfq\ï[\Ï\äSfgK\r»\Êÿ\ëÿõx\ä)\Ô\Z@\æPk¸“ªõñ}û\Õ7¸\Ú\Ê\Ê&?\Å}eLó\\?ü\é\ä\Ë#oÛ±#ú\r.j\r s¨5\ÜI\Õ:\ØÓ»0rv”C«‹\â¾\'=½³£œ--İ‰š£/¼ö‹•|\Ê@\æPk¸“ú—„Sı-\êõ÷?¬\rŸ}\ì¿bş}\ák;¥To}\ì©\ÈY\Ìj¯œ­v\í}\Èò·}sÿo\Ë7¸\0dµ†kK8\Ë_}\ãñ\È_\Ê\ê>Pwp¿w»úó\\\éŒWÿ\îŸ\Zc7\ï®9¨şªÇº§~±ÿ~Î s¨5\\\ë÷¿ÿı¥K—:\ÛÛŸúÓ¯HSKşõ\ß\ãşWø\Ïp\íØ™w\Óm)Sšñ\Åmş«Ø‘\ç;w>|¸©©‰3\Èj\r\×Rµ\êø\Ï\ç_’¬>ñ¹/µ~ôqâŸ¸ll´øBW\ŞWo;´ºhü\\’?Œ­>_VôÈ¿\Ë\Ä:ö#f\Ô\Z€\í¨5\\+ú\Öu×…ù‘·¨ónı\Æ`Ccb°e„\Z+W¾,\Ó\åÕ·ß¥†$üHñ\Æñs\ç’şx\Ş\Í£¾\ĞUYQ!\ëØ—Áy\Ó\Z€\í¨5\\K’©¦\×ııı\ÇT¯‡¿|\Çİ£@\Ò`OÉ³\Z&+Œ¶´¼ø\ßV¯o/ö\È\Äú\èÑ£2±\î\èèˆ¾N­Ø‹Z\Ã\Í$œ£££2ß•Yï’-\ê\Û\\ÿø\İÁ\Æ\ä3\ì”cğøñ—#\'/[x\íKVHª\Õ;\ÖÑ‰5\Ü\Z@&Pk¸Ytz\n…ºººözJT°ónúzû\Ş}SMu{Uõ\â¯Ì‹¦zß¾}\ê5ğ@  ;¾c\Í\Ä\Z€\í¨5\\N½{=<<\Ü\ß\ß\ß\Ù\Ù)Á~\êOo\è\ìş|ıOl<N§6\È\Ê\êceO}ş\Æ\ØT«—\É\Î\å&x\Ç\Z@†Pk¸œš^«\×ÃƒÁ`GGÇ‘Êª¼[¿¡>ò½èº¹køÀ‘·\ß9s&1Ò²P®’\Ô÷ª\ÕGÄ·{bS-;”\İF_§\Ö\02Z\Ãıƒ}ª©\é?Ÿ\é™/|uò›ZŸ¹A²ÿµ¿}ù»e-C.È²P®R\ëÈ”z\İS¿¨¬¨P\ß\×\"\Õ\0²‰Z#\'\Ä»³³³¥¥\åX}}Éª‚—o¿\ë‰\Ï}\É\ìû\ÖrÕ‹\ßü§\r¿XV±s§úL\ÙÑ£G›ššds\Ù	©\Ô\Z¹\"6\Øııı]]]­­­2?nlh¨=PS\á)yõR\å\è·¿Lÿvm\ÍA\Õi5¥–\res\Ù	©\Ô\Z9$\Z\ì\á\á\áP(\Ô\Û\Û+óc\Õ\ìS\'OJ‰F‰¡–\ÈU²‚\ê´l\"\Ê\æ²R\r ;¨5r‹\nö\Ø\ØXø¤¤CC\Ñf···K‰[ZZ€?†ü(\å*YAuZM©es\Ù	©\Ô\Z9g\"\"®\Ù\Òà¾¾>‰qWDg„º,\å*YAV‹\ë4©\Ô\Z9*¶Ù£££*\ÛJ(Ft¡¬ «\Ñi\0ZPk\ä´h³\Åøø¸*wY(W©u\è4\0-¨5pÕ„	\İ\Ç \×ı<±g´<p9\Æ\0\0\0\0IEND®B`‚',1,'deviceFee.png'),(3,0,_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n\n<process name=\"è®¾å¤‡è´¹ç”¨æŠ¥é”€\" xmlns=\"http://jbpm.org/4.4/jpdl\">\r\n   <start g=\"239,15,48,48\" name=\"start1\">\r\n      <transition g=\"-71,-17\" name=\"to æäº¤ç”³è¯·\" to=\"æäº¤ç”³è¯·\"/>\r\n   </start>\r\n   <end g=\"239,389,48,48\" name=\"end1\"/>\r\n   <task assignee=\"#{application.applicationLogonName}\" g=\"193,95,140,64\" name=\"æäº¤ç”³è¯·\">\r\n      <transition g=\"-119,-17\" name=\"to å®¡æ‰¹ã€éƒ¨é—¨ç»ç†ã€‘\" to=\"å®¡æ‰¹ã€éƒ¨é—¨ç»ç†ã€‘\"/>\r\n   </task>\r\n   <task assignee=\"lisi\" g=\"192,191,142,69\" name=\"å®¡æ‰¹ã€éƒ¨é—¨ç»ç†ã€‘\">\r\n      <transition g=\"-107,-17\" name=\"to å®¡æ‰¹ã€æ€»ç»ç†ã€‘\" to=\"å®¡æ‰¹ã€æ€»ç»ç†ã€‘\"/>\n      <transition name=\"to end1\" to=\"end1\" g=\"-47,-17\"/>\r\n   </task>\r\n   <task assignee=\"wangwu\" g=\"350,288,138,65\" name=\"å®¡æ‰¹ã€æ€»ç»ç†ã€‘\">\r\n      <transition g=\"-47,-17\" name=\"to end1\" to=\"end1\"/>\r\n   </task>\r\n</process>',1,'deviceFee.jpdl.xml'),(10002,0,_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n\n<process name=\"è®¾å¤‡è´­ç½®è®¡åˆ’\" xmlns=\"http://jbpm.org/4.4/jpdl\">\n   <start name=\"start1\" g=\"239,15,48,48\">\n      <transition name=\"to æäº¤ç”³è¯·\" to=\"æäº¤ç”³è¯·\" g=\"-71,-17\"/>\n   </start>\n   <end name=\"end1\" g=\"239,389,48,48\"/>\n   <task name=\"æäº¤ç”³è¯·\" g=\"193,95,140,64\" assignee=\"#{application.applicationLogonName}\">\n      <transition name=\"to å®¡æ‰¹ã€éƒ¨é—¨ç»ç†ã€‘\" to=\"å®¡æ‰¹ã€éƒ¨é—¨ç»ç†ã€‘\" g=\"-119,-17\"/>\n   </task>\n   <task name=\"å®¡æ‰¹ã€éƒ¨é—¨ç»ç†ã€‘\" g=\"192,191,142,69\" assignee=\"lisi\">\n      <transition name=\"to å®¡æ‰¹ã€æ€»ç»ç†ã€‘\" to=\"å®¡æ‰¹ã€æ€»ç»ç†ã€‘\" g=\"-107,-17\"/>\n   </task>\n   <task name=\"å®¡æ‰¹ã€æ€»ç»ç†ã€‘\" g=\"194,292,138,65\" assignee=\"wangwu\">\n      <transition name=\"to end1\" to=\"end1\" g=\"-47,-17\"/>\n   </task>\r\n</process>',10001,'devicePlan.jpdl.xml'),(10003,0,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0µ\0\0\0û‰z\0\0-EIDATxœ\í\İ{pT×\àñ©ÊŸşÏ‰³	ñ$±3™\Ú\àÄ™š	\Îl¶\Ø$;S»q\ì\ÄÁqvb;~±;6Á#$ˆ\ì§\ä;€Qm	„‚@@B’A!h\ÑB ½GFH\êˆıuŸ¦\Õ\Ï\Û-\é\Ş>—\Û\ßO¢Z\İ\çŞ¾\ê¦\êÛ§_ú›\Ë\0\0À\ŞşF÷\0\0€¨5\0\0vG­\0°;j\r\0€\İQk\0\0\ìZ\0`w\Ô\Z\0\0»£\Ö\0\0\Øµ\0À\î¨5\0\0vG­\0°;j\r\0€\İQk\0\0\ìZ\0`w\Ô\Z\0\0»£\Ö\0\0\Øµ\0À\î¨5\0\0vG­\0°;j´611ñW?¯\×;‡\\¤\æ\Èd\İ\Ç MQk¤)\Õi‰ñ\è\è\è\ÈÈˆ\Ç\ãŠ\"g\ÊE2A¦\Édš\r@j´\ìô¥K—$\Æ\Û®Z¾şgÿ\ïwÿø³\ç¿x\Ï3\×ı\è\éOËò£œ)½`Uoo\ïÀÀ€L–Mh6€Ô£\ÖH#¡\ZXµù\ÉG3oş\é\ÂYÿ‘ıO¿\ï\ÅûVq\ïüd¸I†œ\åL¹H&È´U›Ÿ¸\Ğ\Ù\Ñ\ß\ßO³¤µFºP©»xñbş\îŒÇ²nyh\É\ì76=\Ş\Üy \ß\Ûf0d‚L“É²\É{»3ºººd-;‘]l\0©A­‘TªGGG=Ï²?Í»ÿ…/\ç>f\é\è!›È†\Ëşô\Óööó}}}²+\Ù!Á\Ô\Z\ÎLuG{\Ñ~ÿ‰W\çT\Ø4\ÕT«!\Ê\æ‹şó_O¹õôô\r\rl\0)@­\ápÁTKY%\ÕÏ¯¼£s¤yz©V£s\ä\Ôó+\ï”`Ÿ=\Û\Ú\İ\İM°¤\0µ†Ã©×ª=OV\îOeY<\ÃTƒıÄ«·g\å\Ş+Á–¶\ì\\½†­ûw\àX\Ô\ZN&\ë\İñññ‹/¾³\ë¥û_ørÕ‰Â™§:ø”øı/Ü·ó¥¶¶¶¾¾>¹\n¹\"–\×\0,B­\ád²Ş½t\éRÿõ>–uk²o+ŸÂ›\ÎÍº\åDSC{{ûÀÀ€\\\Ëk\0¡\Öp,µ°\Î)šÿĞ’¯uºzF\Ïtµ\È\è‘G\Ïø~õğSC.:\ã?§¥\Ç7A&Ÿ\éS|ú\Î»r\æØ™_.™Sô¸\Ë\å\ê\ê\ê’+by\rÀ\"\Ô\ZXX÷÷?ºô¯o|¸\ãb\Ó\'!C~\ìğøÿU?zü\ç«s<\';.\ì¸2mrş\ÅÀœ\à²\ÛG–~½¡\áØ¹s\ç\äŠX^°µ†3\ÖE¿¿w\á¬\Ú\Ö­õşñ±ü{VôP§\Ï\Ö&~¬\æ´ú\Îùø¬oLNN8\ëß¤Ö½\ãŞ…_Ø¸\'ûô\é\Ó,¯X‡ZÃ™Ô§¶2Ş¾\çñ\å·5÷\ìo\î=xJj4÷\Èiu\ÎÁf\ßğŸ\Ù\ë?\íŸ\éÿ÷€ÿ|ÿÁKÕrQ\ïÇ—ÿÃ’·\ïnll8ş¼\\ú4—\î\ß€\ÓPk8“$sdd¤·\×÷ş²Œ·\ïn¸ğaC‡\\øğØ•\á?sœy¬\ã\ÃÀ„{\Z\Ôù\êD‡š‚o“+\'\Z&7ÿPRıh\Ö-uuµn·[®N®”Z0µ†3y½^\Ç\Ó\İ\İ}\ßs»zû3µ\çşR{n‡ÿ_ß¨S\'Ú‚gÊ¿;\êü\ç\Ô\Éiu~›š\Ü\ê\Ê9!g\Êd\Ùù¼\ç®?t¨\Ú\år\É\ÕÉ•\ÊU\ëş\í8\rµ†3©­;;;\ïYğ\Ù-\Õ8pf\Ë÷\Ög¶tO\ß9\î-\İ[Ô‰3·\Èdÿu‘úQÀ´\àL9Sv~÷‚\ëö\ïÿ¨¹¹Y®N½t­û·\à4\Ô\Z\Î$\É\Z\Z\ê\è\è¸û\éÏ”Ÿ\È\Û\ç\Ú$£\Êÿo\à\Äiõc‘ÿÇ¢ª\ÓE\á—\Êù¾sÔ™U§ƒ›~ô\Í÷M\Øsü=ı™ªª}MMMrur¥\Ô\Z€\é¨5œ)´\Ö4\æ\î=µq\ï©\rW\ÆÆ°Oû~¬<µ¡òôub\ï\é\r¾Õ™ùW.=½!t?2§¬q½\Ôzß¾Jj\rÀ:\Ô\Z\Î¬õ=>[´ÿ_eOo¤÷´j°Xe{\ã•NoT—ªÓT_\Éså•\æ¶İ°\é£W\î^p\ÔúÄ‰\Ô\Z€E¨5œ)X\ëûı\íÊ­¿RObW¹‚\Ïo\ÇVOƒ\ïsM>\rœ°oršš›BNl’\Ï[t=µ`)j\rg\n\Öú\ÑÌ›»ú‡¾¹\ì`k\Ø{\ÍbŸc|~È?’ù\r	`)j\rg\n\Özñ\ê>šus\ÄÇ·\ê‚\â\n>?y~]ä´u¾ñ—\È\á\ß\äÑ¬[¯ş?UUU\Ô\Z€u¨5œ)ø	®÷\Ê2\î}öó•\'74\\¨¸ò\Í\'\Ñò\ï•K+\Zƒ:*&7¹ò\Í*W¾D¥B³¯i\ã½\Ï\Î\Ê\Ûùòşıûù\0\ëPk8Sğ\ÛQ\\.\×/3¾ş\Ê{ÿ7ğ%£/\rŒÉ¯#\í\r¿4\ê\ÇÀw‘†\\$\ç\Èn™q\ÓÎ9t\èßÀ:\Ô\Z\Îü\æQ·Û½b\ÃC¾ü\ß\Ãc0øW=>öö+?ú/\rœ©şª‡oø\Î	l8\èÿ#\êR\ßN>~\è\å¯\É\Î\Ë\Ë\Ë\ë\ê\êø\æQ\0Ö¡\Öp¦\à_õ8ş|C\Ã\ÑG2o–¬ÿfGØŸ\Î<y\åOaş)Lÿ9\'¯œüš3ıXSvøH\æ7¶—nÛ·o_cc#\Õ€u¨5œ)ø3»ººNŸ>ıöö…÷¿ğ\åÊ†‚\îÑ–±3İ£gzdŒµøşm\éS§[|ÿµ.=\Ó\íŸ\é\ÛDMö3ş\ÑRÙ¸\áşnXûş\Âİ»w>|˜¿˜	ÀR\Ô\Z%k\ÜK—.õ÷÷Ÿ;w®¡¡aéºŸ<ñ\êœÎ‘\æ~o\ÛG\çÈ©\'^½}\éºoß¾]Ö²s¹\n¹\"¹:\Ö\0¬@­\áX¡\Ëk—\ËU[[»ğ\ï=¿òXÁ>;¥T?¿òÎ…o|w\ëÖ­{ö\ì‘\İ\Ê\ÎYX°µ†“©\åõÀÀ@{{{SSS\Õ\ár©¬¬°«NlšÎªz¼M6”\Íe\'\Ûvn*++«®®–\İ\Ê\Î\å*XX°µ†“©\åõÅ‹ûúú\Ú\ÚÚ?~\àÀ\Ìu?¾ÿ…/\ç>6\ÕZ\Ë&²¡l¾eË–İ»wË®d‡²[Ù¹\\k\0Ö¡\Öp8Yïy<³g\Ï666JesKŸ{4ë–‡–\Ì~c\Ó\ãÍŒ#-dšL–M\Ömn\ëÖ­²ª–È®d‡²[Ù¹\\k\0Ö¡\Öp8Y\ïªOs\r\r\ruwwK_eA\\]]½\ç\ÃòœM?’ùŸ.œõ\Ùÿôû÷~Q¼o\Å÷\ÎO†›d\È	ùQÎ”‹d‚L“\É\Å[6oß¾}Ï=²¹\ìDv%;”İªOm±°`j\r\ç\r¶,…\Û\ÚÚšššjkk÷\íÛ·{÷\î\å¿\Ë\Êı\éü\åÿø³\ç¿x\Ï3\×ı\è\éOËò£œ)É„\â\âb\é´L–MdC\Ù\\v\"»\"\Õ\0RƒZ#-ƒ\íñxúúú\Ú\Û\Û].WCC\Ã\áÃ‡%À\å\å\å;w\î,--•$¿ÿşû\Ûü\ä„ü(g\ÊE2A¦\Éd\ÙD6”\Íe\'²+R\r 5¨5Ò…\nö\Ø\Ø\ØÅ‹ºººÎ;wúô\é\Æ\ÆÆºººC‡\íß¿¿ªªj_ùQÎ”‹d‚L“É²‰l(›\ËN\ÔkÕ¤\Z@\nPk¤\ìñññK—.\r÷÷÷KzÏŸ?\ïv»e\Å\Ü\Ü\Ü\Ü\äw\ÂO–3\å\"™ \Ód²l\"\Ê\æ²R\r e¨5\ÒND³e¡\Ü\Û\Û\Û\İ\İ\İ\Ù\Ù\ÙEÎ”‹d‚L£\Ó\0t¡\ÖHSÁfŒŒx<‰ñP9S.’	2NĞ…ZCŒŒŒ\à‰PÆ““\Ùa\ÂóC\ÏQ\Í^¯w<¹HÍ¡\Ó\0t¡\Ö\Ğ#´\Ö1\Ï4f°\Ãx%¹Ÿ\Ò\ÒR)ôL~5\00µFªE\Ä\Ò8Ÿ1[sWÉ¬\Ñ\ã\í\'TNNNÿ\Ô~%\0°µ\ÆL%ó4µÁV=6·Á¶ñ\ß\ÉDZ°!j™šv­\×\ÖÁK\Ï1^[\'\\¯G£\Ö\0lˆZcFb.R“y.:\É\'«>ü\é$\×Ö«V­\ê\î\î686\0H=j™Š÷\ìt¼‡.‘\Ô\ÄZ\'Ü›’——\çv»c^\0ºPk\Ì\ÔTksšÁdƒ		Ÿ	¿Uh\ã…õej\rÀ–¨5fÊ¬Z\ÔxW\Æs\"–ò	\çSk\06D­a‚\è\ålÂ¾F?n¼\ç„ûL¸‡\ËÉ­­óóóOŸ>m|ğ\0b\Ô\Z©\ïù\ê\Ğ3\ã\Õ ´É¬Ë“Y[—””\Ô\×\×\'ı\Û\0@*Pk µ`C\Ô\ZC­\ØµÂ”––\Ö\Ô\Ô\è>\n\0C­0~º\0\ÂPk µ`C\Ô\ZC­\Øµ\ÂTUU•——\ë>\n\0C­0õõõ%%%º\0\ÂPk µ`C\Ô\ZC­\Øµ\Â444lŞ¼Y÷Q\0@j\r„q»\İyyyº\0\ÂPk µ`C\Ô\ZC­\ØµÂœ;wnİºuº\0\ÂPk `ùò\å\áV¯^­û \0À‡Z¡©Ş¶m[aa¡\îƒ\0j\r\\¸p!33S¥zÙ²e¹¹¹n·[÷A€µ&­ZµJÕº¨¨ˆ§Á\Øµ&\Õ\×\×/]ºTÕº¦¦F÷\á\0@\0µ\ÂdggK­srr\Æ\Ç\Çu\0Pk LYY™\Ôz×®]º\0&Qk Œ,©333‡††t\0L¢\Ö\0\0\Øµ\0À\î¨5\0\0vG­\0°;j\r\0€\İQk\0\0\ìZ#u&&.\ï8\ÚörI\í\Ü¥2>5-cJcNv‰\ÜnO,¨vyF½º\ïO\0©C­‘\n½Ã£\Ïm>|\í‚<\íÁs\Òx`ı^W\ç \îû@*PkX.¿\Ú5ka¾\nÌ­YÅ‹·\Ö\înøDFß ÷\â\ÈeFòC\İn¯\í>|f\âš\'s_.©˜\Ğ}°µ†…¤\"OT]¹ãõ­ıÚƒ\ç˜\Ñ\Ô>8o\Íu\Û\ŞõVY\ïğ¨\î{€…¨5,¤R-ë¿•\å\'´\çÍ‘C–\Ú\êõYm³\ÂŒZ\Ã*ù\Õ.•j)Šöª9xÔ·ö«\Z\Û|X÷}À*\Ô\Z–8\ß\çQ	Y[Ù¬½g•\';\åQ‘\Ü\Úu­=º\ïy\0– Ö°„zü®7Ë´—,M\Æâ­µ\êùp\İ÷<\0KPk˜\Ï3\êUK=\ŞV–²\Ñ7\èUOf9\Ëò\Zp j\ró×¹\Õ:O{\Ã\Òj<ö^•\Ü\ìK¶\Õ\ê¾ÿ˜Z\Ã|óó}\Ù\È*­\×°´\Z\ïi“›ı¶eÅº\ï\0\æ£\Ö0Ÿú\î\Ş\n\â\Ñ\Ñ?*7û¬…ùº\ï\0\æ£\Ö0ß/n”l4µjXº\rõv\İ÷?\0óQk˜O}Á_,J­˜…Z\Ã|ª\Ö\ÚÓ•†C\İòº\ï\0\æ£\Ö0µ¦\Ö\0\ÌE­a>jM­˜‹Z\Ã|ÔšZ0µ†ù¨5µ`.j\róQkj\rÀ\\\Ô\Z\æ\Ó[\ë¹s\çO„2œ\ÌŸ\ÌŞ¨5€i \Ö0Ÿ}j0\áÑ¦TtuQ’û¡\Ö\0¦Z\Ã|ºjK\ã|\Æly\Ì]%Ÿa\Ö\Ö\0,B­a>;¯­\ròœL\Ë\ã-¾Y[°µ†ù´\×\Úxm¼\Ôø\ãµu\Âõ:µ`\"j\rói¬uòOV\'|&<ùÓ¬­XZ\Ã|\Z_·ı×¸ &\Ö:\áŞ¨5€¢\Ö0ŸögÂ£ã°\î\Ñ?]h\íkj\r8µ†ù\ìVkƒ‚&SV\ãm£“O­˜Z\Ã|v¨uhª\ãMK8\'a­\ã½tM­˜‹Z\Ã|6ù¼u\Ì3\ã\Õ ´É¬\ËY[°µ†ùøpj\rÀ\\\Ô\Z\æ£\Ö\Ô\Z€¹¨5\ÌG­©5\0sQk˜ZSk\0\æ¢\Ö0µ¦\Ö\0\ÌE­a>jM­˜‹Z\Ã|ÔšZ0µ†ù¨5µ`.j\ró\ÍZ˜/\Íhj\Ô^¯t\ê–\×}ÿ0µ†ù\æd—H3*Ovj¯Wº\r¹Ù¯]§ûş`>j\róİ·vdcme³öz¥\Õ8\Ô\Ò#7û\ì%Eº\ï\0\æ£\Ö0ß›\'$ó\Ö\ì\Ñ°´\Z‹·\Ö\Ê\Í>?¿J÷ıÀ|\Ô\Z\æk\é\Z”l\\ód®»Ë£½a\é3n\Í*–›}Ç±6\İ÷?\0óQkXâ®·Ê¤¿\ŞxP{\Ã\Òd¼{À%7ø¬…ùG½º\ï|\0\æ£Ö°D]kZ^j\é\Ñ^2ÇşQõnğ7+N\è¾\çX‚Z\Ã*üi¯ô\ã\Æ7ò|¸¥£o\Ğ;wE©\Ü\Ôs²K&&t\ß\ë\0¬A­aÏ¨W}”kö’¢ú\Ö~\íUs\äUµJµ¬­[ºu\ß\ç\0¬B­a!W\ç\à­ËŠÕ‡€W–Ÿ\Ğ\Ş6‡¢\Z·z\\nŞº³=º\ïm\0¢Ö°–\ç’wÿ\ã\×j‘½xk-¯d\Ïp4µ¾¶û˜z¸y<Äª\Zp<j\r\ËML\\.=\Ú&©VuQC-\nS\ZÑ·\á\ë\ãµj Pk¤ˆD¥øˆ{~~\á¸vAŞƒ\ë÷T»ø°>¨5\0\0vG­\0°;j\r\0€\İQk\0\0\ìZ§£ŒŒŒ„EŸˆ99Tò×’\ä„\àœŒ(	&tZ\ÂmÀ\æ¨uZˆY²˜›v­§q]—“ˆqôµ\\—Á‘Sk\0W5jŒ\Ì\ËS¬µÁ\Õ\Å\Û[\Äù17Oò¡C¼\äG?2H²\Ö%%%	\ç\0@*Q\ë«\Òˆ\Æy\"^&\ãõ/f¤\Í\Æ\Û\Z\\ñ‚d6\æÀ>¨õUi\Z9‰¹ôŒ¹\0\rz\"\Ş>“¼¢\ËS¯u\èşcnó‰Wk\ã\ß%ú\0\0À>¨õ\Õ\'^e¯”ñöcĞ¼\ä¯4\âZ¦T\ëx\Z\Ì1~ ’üSk\0vC­¯JbƒMV½—\ã¯e§Q\ë\èıOu·¡\'b\Æ8\æüip¼\0\0› \ÖW¥\é\Õ:\áé˜»J\æ@\Â\ëšF­“	sô>\ã\İ\àh\rv\06A­¯JÓ«u<»Š^\ÇÜ§Á\á\Å\ÛO’,B·5>Œx›\'<Ú„\0\0\ÚQ\ë«Ut¢’oL2¥Œ\è«q­cö5ô¢\è$<\ã™ğ·‹w¨\0\0öA­\ÓQ2\åˆl\'L`¼Ç‹}2\Ç\ïŠ>>ˆş]¨5€«\Zµ\"Qk\0vC­H\Ô\Z€\İPk µ`7\Ô\ZˆD­\Ø\rµ\"Qk\0vC­H\Ô\Z€\İPk µ`7\Ô\ZˆD­\Ø\rµ\"Qk\0vC­H\Ô\Z€\İPk µ`7\Ô\ZˆD­\Ø\rµ\"Qk\0vC­H\Ô\Z€\İPk µ`7\Ô\ZX¾|y\Ä_\Â^½zµ\îƒ\0j\r„¦zÛ¶m………º\n\0|¨5p\áÂ…\Ì\ÌL•\êeË–\å\æ\æº\İn\İ\0>\Ô\Z˜´j\Õ*Uë¢¢\"`\Ô\Z˜T__¿t\éRUëšš\Zİ‡\0\Ô\Z“-µ\Î\É\É\×},\0@­0eeeR\ë]»v\é>\0˜D­0²¤\Î\Ì\Ì\Z\Z\Ò} \00‰Z\0`w\Ô\Z\0\0»£\Ö\0\0\Øµ\0À\î¨5\0\0vG­\0°;j™˜¸¼\ãh\Û\Ë%µsW”\Êø\ÔüµŒiŒ9\Ù%r\ë=Ux° \Ú\åõ\ê¾W¤µ†\åz‡GŸ\Û|ø\Úy\ÚS\ç¼ñÀú½®\ÎA\İ÷0\0\ËQkX+¿\Ú5ka¾JË­YÅ‹·\Ö\înøDFß ÷\â\Èe\ÆT‡ºõ^\Û},øü\Ä5O\æ¾\\R;1¡û`%j\r«H?*<¨Šr\Ç;\ë[ûµ§\Îa£©}pŞš=\ê¾ë­²\Ş\áQ\İ÷9\0«PkXE¥ZV~+\ËOh›ƒ‡,µÕ«²\Úf…\r8µ†%ò«]*\Õ\Ò\í=sü¨o\íW/7<·ù°\î{€%¨5\Ìw¾Ï£â±¶²Y{\É\ÒdT\ì”\ÇFr›×µö\è¾ÿ˜Z\Ã|\ê9ğ»\Ş,\ÓŞ°´\Z‹·Öª\ç\Ãu\ßÿ\0\ÌG­a2Ï¨W-òx[YŠGß W=¥q\ä,\ËkÀi¨5LV\\\çV+<\íõJ\Ãñ\Ø{Ur\ã/\ÙV«û\0“Qk˜l~¾/Y¥õ\ÚÓ•†\ãı#mr\ãß¶¬X÷ÿ\0&£\Ö0™ú\Ö\Ş\n®etôÊ?ka¾\îÿ\0LF­a²_\Ü(ÁhjÔ®ô\êMºÿ\00µ†\É\ÔWkñÅ¢\Ô\Z€‰¨5L¦j­=Zi;\Ô\í¯û\0“Qk˜ŒZSk\0¦£\Ö0µ¦\Ö\0LG­a2jM­˜Z\ÃdÔšZ0µ†É¨5µ`:j\r“Qkj\rÀt\Ô\Z&£\Ö\Ô\Z€\é¨5L6óZÏ;7\áE\Ñ\'bN•üµ$9!8gn”„:-\á¶\Ô\Z\0µ†É¦Q\ë˜%‹°i\×z\Z×•LŒ£¯\İ\àºœZ0F­a²\é\Õ:\á¥=›R­ƒjğ  \æ\Î\rºk0?™G\Ô\Z@<\Ô\Z&\ÓòLx¼L\Æ\ë_\ÌH/š“	¼Áƒƒ„i§\Ö\0Pk˜lzµ¹ôŒ¹\0\rz\"\Ş>“¼¢i\Ô:tÿ1·ù‹Ä«µñ\ïB­4G­a²i\×:\á\éˆH\'“\Õ$\ã7Z\Ç\Û\Ğ`ñj\rÀ\0µ†\É,Z[\'¿BM?ƒUu’»NµA†¤\Ö\0’A­a2«\×\ÖS­u’ß©\Ö:™0G\ï3\áÂšZˆ‰Z\Ãd){\İúb\Èb\Ôx\rL­\ãeÛ ¾¡\×b\\kƒ\Ç\Ô\Z@2¨5L–²÷„‡öÕ¸\Ö1û\ZzQôNƒñƒ‰˜NXtj\r j\r“YTëˆ˜Ed;a\ã•8^ì§ºX–pBô¯@­\ÄC­a2¾\'\\\ï Ö€#Qk˜ŒZSk\0¦£\Ö0µ¦\Ö\0LG­a2jM­˜Z\ÃdÔšZ0µ†É¨5µ`:j\r“Qkj\rÀt\Ô\Z&£\Ö\Ô\Z€\é¨5LF­©5\0\ÓQk˜ŒZSk\0¦£\Ö0µ¦\Ö\0LG­a²Yó¥M\íƒÚ»•C\İşºÿ\00µ†\É\æd—H-*Ovj\ïVz¹ñ¯]§û\0“Qk˜ì¾µ{$k+›µw+\rÇ¡–¹ñg/)\Òı¿\0€É¨5Löf\Å		Æ¼5{´§+\r\Çâ­µr\ã\ÏÏ¯\Òı¿\0€É¨5L\Ö\Ò5(Á¸\æ\É\\w—G{½\ÒmÜšU,7şcmºÿ\00µ†ù\îz«Lšñ\ëµ\×+­Æ»\\r³\ÏZ˜qÔ«û¿\0\0“Qk˜¯®µG-¯µôhoXšŒşQõnğ7+N\è¾ÿ˜Z\Ãüi¯”\ã\Æ7ò|x\nFß w\îŠR¹Á\çd—LL\è¾\ïX€Z\ÃQ¯ú(\×\ì%Eõ­ı\Ú{\æ\à!«j•jY[·t\r\ê¾\çX‚Z\Ã*®\ÎÁ[—«ÿ®,?¡½jE5nõ¸\Ü\Èug{t\ß\ç\0¬B­a!\Ï%\ï<ÿÇ¯\Õ\"{ñ\ÖZ^\É6e4µ¾¶û˜z¸yTÄª\Zp6j\rkML\\.=\Ú&©V]QC-\ÓÑ·\ä\ë\ãµjÀñ¨5RArR|\Ä=?¿ŠN›2®]÷\àú½\Õ.>¬¤	j\r\0€\İQk\0\0\ìZ\0`w\Ô\Z\0\0»£Öˆ-###\áE\Ñ\'bNep-1w¢\ÎÌˆ’ğŠB§%\Ü\0lZ# f\íbFnÚµ7Á`	³\Í\Æ3\ã*\0\ØµF€qÆ¢×¸—§Xkƒ‹fø° ú\Øb^iòµ.))I8\0R‰Z;\Ö‘\Æy\Â8\ÉI^…A¡\ã\í*\ŞC‡i×šõ7\0»¡Ö5\ä\Ä[\ìFg/t~\è‰xûLş\ãµ9Şš;ú \r\â\Ô\ZÀUŠZ;“ÁSÁ\Æ[%<}9<\Ò1\'$y¥\É?2ˆ\Ù\İ\è9Æ»2>˜x;\0; Öe° 6\ØÄ¸ É¯b#ö9“_!fŒcşjfµ`7\ÔÚ±¦Wë„§c\î*™G\0\×s?É„9ú0.¬©5€«µv,+\Ö\Ö1wœ/¥ñ\Úó¨\âU\Ö\à\à#öoğÈ€Z¸JQk\'‹\ÎXòJf	\Ñi\ãZ\ÇL¾Á™É¬­\r$yÆ¿ \0\ØµFl\É,”#²0“\Z§4zZ\ÌlÇ›“\ÌU$ü\İ@#j\rD¢\Ö\0\ì†Z‘¨5\0»¡\Ö@$j\rÀn¨5‰Z°j\rD¢\Ö\0\ì†Z‘¨5\0»¡\Ö@$j\rÀn¨5‰Z°j\rD¢\Ö\0\ì†Z‘¨5\0»¡\Ö@$j\rÀn¨5‰Z°j\rD¢\Ö\0\ì†Z‘¨5\0»¡\Ö@$j\rÀn¨5°|ùòˆ¿„½zõj\İ\0>\Ô\Z(((Mõ¶m\Û\nu\0øPk \àÂ…™™™*\ÕË–-\Ë\Í\Íu»İº\n\0|¨50iÕªUª\ÖEEE<\rÀ>¨50©¾¾~\éÒ¥ª\Ö555º\0¨5&;;[j““3>>®ûX\0 €Za\Ê\ÊÊ¤Ö»v\í\Ò} \00‰ZadI™™944¤û@\0`µ\0À\î¨5\0\0vG­\0°;j\r\0€\İQk\0\0\ìZ\0`w\Ô\Z)51qy\ÇÑ¶—Kj\ç®(•ñ©ùkI9\Ù%r‹=Ux° \Ú\åõ\ê¾\'¤µFŠô>·ùğµò´g\Ï\ãõ{]ƒº\ïU\0)B­‘\nùÕ®YóUfn\Í*^¼µvw\Ã\'2ú½G.3’\ê{m÷±\às\×<™ûrI\íÄ„\î{€õ¨5¬%-yªğ ª\Ëo\ì¬o\í×=Œ¦öÁykö¨[õ®·\Êz‡Gu\ß\Ï\0¬E­a-•jY®,?¡=r²\ÔV¯,\Èj›6\àl\Ô\ZÊ¯v©TKW´·Í‘£¾µ_½\Äğ\Ü\æÃº\ïm\0¢Ö°\Êù>\n\É\Ú\Êf\íUsğ¨<\Ù)‡\äv®k\í\Ñ}Ÿ°\nµ†U\Ôs\àw½Y¦½g‹·Öª\ç\Ãu\ß\ç\0¬B­a	Ï¨W-øx[Y\nFß W=q\ä,\ËkÀ™¨5,Q\\\çV«=\í%K“ñ\Ø{Urƒ/\ÙV«û`	j\rK\Ì\Ï÷\Å#«´^{\Æ\Òd¼¤MnğÛ–\ë¾\çX‚Z\Ã\ê<x+x\ÊFGÿ¨\Ü\à³\æ\ë¾\çX‚Z\Ã7¾¸Q\â\Ñ\Ô>¨=c\é3\Ôt\ßó\0,A­a	õ5[|±(µ`\nj\rK¨ZkXZ\ru›\ë¾\çX‚Z\ÃÔšZ0µ†%¨5µ`\"j\rKPkj\rÀD\Ô\Z– \Ö\Ô\Z€‰¨5,A­©5\0QkX\Â\ÜZÏ;7\áE\Ñ\'bNep-1w¢Îœ%\á…NK¸-µZ\Ã3¬u\Ì\ÚÅŒÜ´km\Ğ~\ãK\r³\Í\Æ3©5€dPkXb\æµNxiDó¦T\ë\äLõaAô±Å¼Rj\r`J¨5,¡ı™p\ã$\'y…·«x¨5€™ Ö°\Ä\Ìko±½\Ğù¡\'\â\í3ùñ\Úo\Í}qj\r y\Ô\Z–0¥\Ö	OGDÚ »\É\Ô:\ÉGñ\Ö\ÓsŒwE­L	µ†%R°¶N~kJ CS°\èñ~¤\Ö\0¦‡Z\Ã©\\[Oµ\Ö\Ë\ëxûI&\ÌÑ‡‘paM­$‰Z\ÃZ^·¾²`—\Òx\íL2ü1Wóñ&<t \Ö\0¦„Z\ÃZ\Ş\Z]\ãZ\ÇL¾Á™É¬­\r$y\Ô\Z@<\Ô\Z–HA­#‚‘í„™4\Ø\Ğ8¥\Ñ\Óbf;Şœd®‚Zˆ@­a	¾\'<õƒZF­a	jM­˜ˆZ\ÃÔšZ0µ†%¨5µ`\"j\rKPkj\rÀD\Ô\Z– \Ö\Ô\Z€‰¨5,A­©5\0QkX‚ZSk\0&¢Ö°µ¦\Ö\0LD­a‰Yó¥M\íƒ\Ú–>C\İ\æº\ïy\0– Ö°Äœ\ì)G\å\ÉN\í\rKŸ!7øµòt\ßó\0,A­a‰û\Ö\î‘x¬­l\ÖŞ°4‡Zz\äŸ½¤H÷=À\Ô\Z–x³\â„\ÄcŞš=\Ú3–&cñ\ÖZ¹Á\ç\çW\é¾\çX‚Z\Ã-]ƒk\Ìuwy´—,Æ­Y\Årƒ\ï8Ö¦û`	j\r«\ÜõV™ô\ã\×j/™\ãÇ»\\rS\ÏZ˜qÔ«ûn`	j\r«Ôµö¨\åõ¡–\í=sğ\è\èU\ï³\â„\îû€U¨5,ôÀŸöJEn|q#Ï‡[4ú½sW”Ê<\'»dbB÷ı\rÀ2\Ô\ZòŒz\ÕG¹f/)ªo\í\×\Ş6‡\rYU«T\ËÚº¥kP÷½\rÀB\Ô\Z\ÖruŞº¬X}xeù	\í…s\Ì(ªq«\'Àå†­;Û£û~`-j\r\Ëy.y\çù?~­Ù‹·\ÖòJö´GSû\àk»©w€ËGB¬ªt@­‘\n—K¶IªUc\ÔPKCF’#ú\Ö{ıƒc¼V\r¤	jÔ‘´q\ÏÏ¯¢\Ó\Ó\×.\È{pıŞ‚j\Ö\Ò\nµ\0À\î¨5\0\0vG­\0°;j\r\0€\İQk\0\0\ìZ\0`w\Ô\Zi!\Ã/ôGƒ\É%%%\Ö\0Lµ†]\Ô\ÄıG”;õG\0SE­a)«u\Â\ë¢\Ö\0\ì†Z\Ã2®ˆ>3™\r#vs?\Ô\ZÀÕ‹Z\Ã.¢ó|\ã9Éœ0\Ş\ç\È\È\È+¯¼2¥#\0«Qk\Ø\Åôj±ny­ûûûsrr¦|ô\0`%j\r»˜\É\Ú\Ú`+j\rÀ¨5l$ú\Õ\å$_·VÓ¢OGÌ‰Z°!j\r„9w\îÜºu\ët\0„¡\Ö@·Û——§û(\0 µ\ÂPk\06D­0\Ô\Z€\rQk LCC\Ã\æÍ›u\0„¡\Ö@˜úúzşª\0»¡\Ö@j\rÀ†¨5†Z°!j\r„©ğ\Ó}\0†Za¨5\0¢\Ö@j\rÀ†¨5†Z°!j\r„)))©¯¯\×}\0†Za¨5\0¢\Ö@j\rÀ†¨5fó\æ\Í\r\r\rº\0\ÂPkÀgùò\å\áV¯^­û \0 €Z>¡©Ş¶m[aa¡\îƒ€\0j\rø\\¸p!33S¥:+++77\×\ív\ë>(\0 \Ö@ÀªU«T­\ßy\ç`+\Ô\Z¨¯¯_ºt©Ôº   ¦¦F÷\á\0À$j\rL\Ê\Î\Î\Î\Ê\Êú\Ãş0>>®ûX\0`µ&•••\ÉòzÛ¶mº\0\ÂPk`’,©em\İ\ÓÓ£û@\0 µ\0À\î¨5\0\0vG­\0°;j\r\0€\İQk`\ÒDº@º£\ÖHk*\Æõóz½\ã\ã\ãcQ\äL¹H\Í!\Ş\0´ \ÖHSÁNKŒ=ƒ-‡\ë\Z>¨\Øûö;kÖ«!?:p¨¿§\×\ãñŒŒŒ\\ºtI•›fH=j´\ì´Dzÿ»\×ıü‘…\×\Ï~ú37^7\\¾Ÿ½~öš{!\ïlo\Z\Z’rK¶i6€£\ÖH/ª\ÓR\\Y=/¾é›¾$ú\Ï~\ák¯~ûÎœü8ÿ\á\'d\È	ùQ\ÎT—\Ê4™¼\ë?ötuG7[÷\ïÀù¨5ÒˆJuûñ“\Ëÿ\åû¾\Õó§oXôÅ›\Ö?øø\Ñwò/:\å={\Ö7\Ú\Ú|\ÃZ\Î<’W ‚\Ù\Îú\æwW~\Ô\Û\Û+\Í#\Ø\0R€Z#]¨T¼}×³{“twÁu_)ü\Õoú\Ô{Ï¶\noœm“i²\à–M|«ğ\ëg\ï\Í\ß\Ô\Õ\Õ500 ‹l‚\r ¨5\ÒB0\Õş\ÛW¥¸\Ëoÿ^{Å¾‘\Z\ç>\Ü+kk_\é?ûw{òò;::úûû	6€ \Öp>•\ê†*Tª\×ü\ä\ßGšOM5\ÕjŒœ:µ\êG?SÁŞ›_H°¤µ†\Ã_«~ş\Æ[¤²9?øñØ™3\ÓKµ\Zcn÷\ëw\Ş\ã{\ÍûK7©¨$\Ø\0R€Z\Ã\á$Ÿ###Ys¾+}Í¸õ74\ÄlpWõ\áŠ\ì\×\×\Üû‹•wŞ£Fş\ÃOZµ:\æ\ä\á\ÆÆŒ›¿\å\Û\ám\ßnnj\ê\ì\ìk§\Ö\0¬@­\ádja½ûõ•R\Ög>÷\ÕöŠ\Ê\é=~\\\Âü(W\Øø\Ì\r/\Üp³T<z«ö½ûùü\ßËœw_\Êt»\İ]]]CCC—.]by\rÀ\n\Ô\ZN¦¾\åùn–¬¾ÿ\ìo££\ÛV^¡!7²\æn<±\íÖ§©Ï€««“=õöú¾õL}[÷\ï\rÀi¨5K-¬÷¾ı¬›¥©ƒmi	\î¿\ìJ&\Õjüş[ÿ:\êr…n>x´\á\Ù\ëg\ËEş\İk.—«££c``€\å5\0+Pk8–$SVº9ÿö	jş\ÃO?1$ÀI¦Z\rY‡\í¡ñøú÷}\ìş ±¡!tyM­˜‹ZÃ±\Ô\Ó\à\Ï|ö\ï$¨G\ß+è¯­\í¯­ñÿ[\Û_S³{qÖ”R­†{\ÇN\Ù6°ŸšÚ£\ï\È\Â}Áu_©=X-\Ë\ë\Î\ÎÎ¡¡!õ\æpİ¿=\0G¡\Öp,I\æ©‡|™\ã_\ëÚ»·«²2tø¾$|êµ–5z\Ä~\Ô{Í¶\ç½\×|òd{{{ğ\Épİ¿=\0G¡\Öp,¯\×{`S±\Ôú\Õo\ßy~\×N\ßØ¹KC«V«\ï	Ÿ\êX<ûŸÏ•\îğ\í\ä\Ê—\ßş=9¿pENcccğ\Ép¹jİ¿=\0G¡\Öp&õ¢uÅšõR\å5?ù÷3[¶„÷Ÿı\í4R­Æ™\â\â\Ğ]\åü\à\Ç\ês\\Gu»İ¼t\rÀ\n\Ô\Z\Î$±\Ûó\Ç\\©õºû>µaC\è\Èÿù/§]\ëı¯¬İ•<Pµ>r\äˆ\Ë\å\ê\ê\êR\ßkF­˜ˆZÃ™\"j\İô\Î;¡c†µ\İUD­ƒo4£\Ö\0LD­\áL¡µ^u\×}kkõ\Å&\Ó§\n\nBw|&œZ°µ†3©Z\ßeñºõL\Şev¦8lWYÿü¿öA\nµ`j\rgRµ>¾o¿ú×¹\Ò\ÒÀ»¸¯Œi~‚\ë\ç¿¼±\Üÿ†ğs;v?ÁE­X‡ZÃ™T­û{zø¿\å\Ğ\Ê\ÕŸ“Ş·£œ).İ‰Z£/¸\î+\å\å¼\Ë€u¨5œI}‚KÂ©şõú\ï¯ñ}û\Ø…üû\Ê7¿3¥To}j‘ÿ[\Ìj®|-ZÍºû–ó—\ßş½ı}\Ä\'¸\0X‡ZÃ±¼^¯„s\×|\Úÿ—²ºŒøpW\Évõç¹’o|÷‡\Ã\r¡›w¬V\Õ#w\ÑKû÷\ï\ç\ÛQ\0X‡ZÃ±şú×¿^ºt©³½}Ñ—¾.M-ü\Õo\"ş—\ï\Ïp\íØ™qó\í	S\í[š©\Ø\Ö÷W±ı\Êw\î<|øpSS\ß<\nÀ\"\Ô\Z¥j\íüó\ï^“¬>ó¹¯¶}ğaôŸ¸nl4ø@W\Æ7n?´rµ÷lŒ?Œ­\Ş_¶ú‰\ß\È\Â:ô-f\Ô\Z€\é¨5+ø\Òu×…Yş—¨3nûöpCct°e56Vd¿.\Ë\å•wÜ­†$üH^÷\ì\ÙX?qË¿¨tU”—\Ë\Â:ôip^´`:j\rÇ’dª\åõÀÀÀñ\Õ\êùğ\×\ï¼g\Ì\í\ìÀ<«g\ÂXk\ë«\ßÿ‘z|{^¾,¬=*ë\à\Ó\à\Ô\Z€¹¨5œL\Â966&\ë]Yõ(Ü¬>Í•óo?nŒ½\ÂN8†\İÿ\åe®ûJ\áŠIµz\Å:¸°\æ[°µ†“—\×CCC]]]{óU°3nşVû\Ş}SMu{e\Õ\â¯\Ï	¦zß¾}\ê9p·\Û-;¾b\Í\Â\Z€\é¨5N½z=22200\Ğ\Ù\Ù)Á^ô¥›|o:ûüß¯\èñ\á\Æ\ã\ÉtzğhƒLVo+[ôÅ›BS­\Ş\\&;—«\àk\0¡\Öp8µ¼VÏ‡÷÷÷wtt©¨Ì¸\í\Û\ê-\ß¯Ÿ½\î\çyg\ÃhKKt¤\åL¹H&¨\ÏU«·ˆo\Ï\ËMµ\ìPv|œZ°µ†óE»¹©\éÏ¿{\íù/#ğI­\Ï\Ü(\Ù\Îú\æw^¿óYCËò£œ)©9²¤\Î]ôREy¹ú¼©J\Ô\Zi!\"Ø­­­\Ç\ê\ê\nW\ä¼~\Ç\İ\Ï|\î«ñ>o-½ú½¾ûRfùÎ\ê=eGmjj’\Íe\'¤\Z@jPk¤‹\Ğ`tuuµµµ\Éú¸±¡¡\æÀÁòü\Â-+ÿ(Uùq{\Ş{¾\ÅôGûkV«N«%µl(›\ËNH5€Ô \ÖH#Á`ŒŒ\r\rõöö\ÊúX5»ù\äI)ñQ¿#!\Ô9r‘LP–MdC\Ù\\vBª¤µFzQÁ÷})©\Çlv{{»”¸µµ\Õ\ív»BÈr¦\\$T§Õ’Z6—j\0©A­‘v&ü\"š-\r\î\ë\ë“wùuú©\Ór¦\\$dZD§I5€Ô \ÖHS¡\ÍS\ÙV†BÏ”	2NĞ‚Z#­›-¼^¯*w9S.Rs\è4\0-¨50i\"\İ\Ç \İıÉ(Ì¢\á…\0\0\0\0IEND®B`‚',10001,'devicePlan.png'),(20002,0,_binary '¬\í\0sr\0(com.maben.dlxm.web.form.ProcessVariablesŸDS\í\Úk\0	L\0\rapplicationIDt\0Ljava/lang/Long;L\0applicationLogonNamet\0Ljava/lang/String;L\0applicationTemplateIDq\0~\0L\0applicationUserIDq\0~\0L\0applicationUserNameq\0~\0L\0	applyTimet\0Ljava/util/Date;L\0pathq\0~\0L\0statusq\0~\0L\0titleq\0~\0xpsr\0java.lang.Long;‹\äÌ#\ß\0J\0valuexr\0java.lang.Number†¬•”\à‹\0\0xp\0\0\0\0\0\0\0t\0zhangsansq\0~\0\0\0\0\0\0\0\0t\0 ff80808177d4279d0177d42e3d8e0004t\0zhangsansr\0java.util.DatehjKYt\0\0xpw\0\0w\à\ÇZxt\0–/Users/maben/Documents/projects/learn/ssh-dlxm/ssh-dlxm/out/artifacts/ssh_dlxm_war_exploded/upload/2021/02/27/83eb9c68-bb6e-4005-a82f-7ecf905555de.doct\01t\08è®¾å¤‡è´¹ç”¨æŠ¥é”€å•æ¨¡æ¿_zhangsan_2021-02-27 07:58:17',NULL,NULL);
/*!40000 ALTER TABLE `JBPM4_LOB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JBPM4_PARTICIPATION`
--

DROP TABLE IF EXISTS `JBPM4_PARTICIPATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `JBPM4_PARTICIPATION` (
  `DBID_` bigint NOT NULL,
  `DBVERSION_` int NOT NULL,
  `GROUPID_` varchar(255) DEFAULT NULL,
  `USERID_` varchar(255) DEFAULT NULL,
  `TYPE_` varchar(255) DEFAULT NULL,
  `TASK_` bigint DEFAULT NULL,
  `SWIMLANE_` bigint DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `FK_PART_TASK` (`TASK_`),
  KEY `FK_PART_SWIMLANE` (`SWIMLANE_`),
  KEY `IDX_PART_TASK` (`TASK_`),
  CONSTRAINT `FK_PART_SWIMLANE` FOREIGN KEY (`SWIMLANE_`) REFERENCES `JBPM4_SWIMLANE` (`DBID_`),
  CONSTRAINT `FK_PART_TASK` FOREIGN KEY (`TASK_`) REFERENCES `JBPM4_TASK` (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JBPM4_PARTICIPATION`
--

LOCK TABLES `JBPM4_PARTICIPATION` WRITE;
/*!40000 ALTER TABLE `JBPM4_PARTICIPATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `JBPM4_PARTICIPATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JBPM4_PROPERTY`
--

DROP TABLE IF EXISTS `JBPM4_PROPERTY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `JBPM4_PROPERTY` (
  `KEY_` varchar(255) NOT NULL,
  `VERSION_` int NOT NULL,
  `VALUE_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`KEY_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JBPM4_PROPERTY`
--

LOCK TABLES `JBPM4_PROPERTY` WRITE;
/*!40000 ALTER TABLE `JBPM4_PROPERTY` DISABLE KEYS */;
INSERT INTO `JBPM4_PROPERTY` VALUES ('next.dbid',4,'40001');
/*!40000 ALTER TABLE `JBPM4_PROPERTY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JBPM4_SWIMLANE`
--

DROP TABLE IF EXISTS `JBPM4_SWIMLANE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `JBPM4_SWIMLANE` (
  `DBID_` bigint NOT NULL,
  `DBVERSION_` int NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `ASSIGNEE_` varchar(255) DEFAULT NULL,
  `EXECUTION_` bigint DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `FK_SWIMLANE_EXEC` (`EXECUTION_`),
  KEY `IDX_SWIMLANE_EXEC` (`EXECUTION_`),
  CONSTRAINT `FK_SWIMLANE_EXEC` FOREIGN KEY (`EXECUTION_`) REFERENCES `JBPM4_EXECUTION` (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JBPM4_SWIMLANE`
--

LOCK TABLES `JBPM4_SWIMLANE` WRITE;
/*!40000 ALTER TABLE `JBPM4_SWIMLANE` DISABLE KEYS */;
/*!40000 ALTER TABLE `JBPM4_SWIMLANE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JBPM4_TASK`
--

DROP TABLE IF EXISTS `JBPM4_TASK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `JBPM4_TASK` (
  `DBID_` bigint NOT NULL,
  `CLASS_` char(1) NOT NULL,
  `DBVERSION_` int NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `DESCR_` longtext,
  `STATE_` varchar(255) DEFAULT NULL,
  `SUSPHISTSTATE_` varchar(255) DEFAULT NULL,
  `ASSIGNEE_` varchar(255) DEFAULT NULL,
  `FORM_` varchar(255) DEFAULT NULL,
  `PRIORITY_` int DEFAULT NULL,
  `CREATE_` datetime DEFAULT NULL,
  `DUEDATE_` datetime DEFAULT NULL,
  `PROGRESS_` int DEFAULT NULL,
  `SIGNALLING_` bit(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(255) DEFAULT NULL,
  `ACTIVITY_NAME_` varchar(255) DEFAULT NULL,
  `HASVARS_` bit(1) DEFAULT NULL,
  `SUPERTASK_` bigint DEFAULT NULL,
  `EXECUTION_` bigint DEFAULT NULL,
  `PROCINST_` bigint DEFAULT NULL,
  `SWIMLANE_` bigint DEFAULT NULL,
  `TASKDEFNAME_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `FK_TASK_SUPERTASK` (`SUPERTASK_`),
  KEY `FK_TASK_SWIML` (`SWIMLANE_`),
  KEY `IDX_TASK_SUPERTASK` (`SUPERTASK_`),
  CONSTRAINT `FK_TASK_SUPERTASK` FOREIGN KEY (`SUPERTASK_`) REFERENCES `JBPM4_TASK` (`DBID_`),
  CONSTRAINT `FK_TASK_SWIML` FOREIGN KEY (`SWIMLANE_`) REFERENCES `JBPM4_SWIMLANE` (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JBPM4_TASK`
--

LOCK TABLES `JBPM4_TASK` WRITE;
/*!40000 ALTER TABLE `JBPM4_TASK` DISABLE KEYS */;
INSERT INTO `JBPM4_TASK` VALUES (30001,'T',1,'å®¡æ‰¹ã€æ€»ç»ç†ã€‘',NULL,'open',NULL,'wangwu',NULL,0,'2021-02-27 11:48:44',NULL,NULL,_binary '','è®¾å¤‡è´¹ç”¨æŠ¥é”€.20001','å®¡æ‰¹ã€æ€»ç»ç†ã€‘',_binary '\0',NULL,20001,20001,NULL,'å®¡æ‰¹ã€æ€»ç»ç†ã€‘');
/*!40000 ALTER TABLE `JBPM4_TASK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JBPM4_VARIABLE`
--

DROP TABLE IF EXISTS `JBPM4_VARIABLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `JBPM4_VARIABLE` (
  `DBID_` bigint NOT NULL,
  `CLASS_` varchar(255) NOT NULL,
  `DBVERSION_` int NOT NULL,
  `KEY_` varchar(255) DEFAULT NULL,
  `CONVERTER_` varchar(255) DEFAULT NULL,
  `HIST_` bit(1) DEFAULT NULL,
  `EXECUTION_` bigint DEFAULT NULL,
  `TASK_` bigint DEFAULT NULL,
  `LOB_` bigint DEFAULT NULL,
  `DATE_VALUE_` datetime DEFAULT NULL,
  `DOUBLE_VALUE_` double DEFAULT NULL,
  `CLASSNAME_` varchar(255) DEFAULT NULL,
  `LONG_VALUE_` bigint DEFAULT NULL,
  `STRING_VALUE_` varchar(255) DEFAULT NULL,
  `TEXT_VALUE_` longtext,
  `EXESYS_` bigint DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `FK_VAR_LOB` (`LOB_`),
  KEY `FK_VAR_EXESYS` (`EXESYS_`),
  KEY `FK_VAR_TASK` (`TASK_`),
  KEY `FK_VAR_EXECUTION` (`EXECUTION_`),
  KEY `IDX_VAR_EXECUTION` (`EXECUTION_`),
  KEY `IDX_VAR_LOB` (`LOB_`),
  KEY `IDX_VAR_EXESYS` (`EXESYS_`),
  KEY `IDX_VAR_TASK` (`TASK_`),
  CONSTRAINT `FK_VAR_EXECUTION` FOREIGN KEY (`EXECUTION_`) REFERENCES `JBPM4_EXECUTION` (`DBID_`),
  CONSTRAINT `FK_VAR_EXESYS` FOREIGN KEY (`EXESYS_`) REFERENCES `JBPM4_EXECUTION` (`DBID_`),
  CONSTRAINT `FK_VAR_LOB` FOREIGN KEY (`LOB_`) REFERENCES `JBPM4_LOB` (`DBID_`),
  CONSTRAINT `FK_VAR_TASK` FOREIGN KEY (`TASK_`) REFERENCES `JBPM4_TASK` (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JBPM4_VARIABLE`
--

LOCK TABLES `JBPM4_VARIABLE` WRITE;
/*!40000 ALTER TABLE `JBPM4_VARIABLE` DISABLE KEYS */;
INSERT INTO `JBPM4_VARIABLE` VALUES (20003,'blob',0,'application','ser-bytes',_binary '\0',20001,NULL,20002,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `JBPM4_VARIABLE` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-28 16:26:15
