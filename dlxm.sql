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
INSERT INTO `Elec_Application` VALUES (1,1,'设备费用报销单模板_zhangsan_2021-02-27 07:58:17','/Users/maben/Documents/projects/learn/ssh-dlxm/ssh-dlxm/out/artifacts/ssh_dlxm_war_exploded/upload/2021/02/27/83eb9c68-bb6e-4005-a82f-7ecf905555de.doc','ff80808177d4279d0177d42e3d8e0004','zhangsan','zhangsan','2021-02-27 07:58:17','1');
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
INSERT INTO `Elec_Application_Template` VALUES (1,'设备费用报销单模板','设备费用报销','/Users/maben/Documents/projects/learn/ssh-dlxm/ssh-dlxm/out/artifacts/ssh_dlxm_war_exploded/upload/2021/02/23/44f6400a-2cb7-461b-835d-d8fd57850c91.doc'),(2,'设备购置计划单模板','设备购置计划','/Users/maben/Documents/projects/learn/ssh-dlxm/ssh-dlxm/out/artifacts/ssh_dlxm_war_exploded/upload/2021/02/24/be6271fc-2eb1-4c19-8bdf-e81156c85929.doc');
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
INSERT INTO `Elec_ApproveInfo` VALUES (1,1,'李四统一',_binary '','ff80808177d4279d0177d42e6f670005','lisi','2021-02-27 11:48:44');
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
INSERT INTO `Elec_ExportFields` VALUES ('5-3','设备运行情况#创建日期','devRun#createDate','站点运行情况','stationRun');
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
INSERT INTO `Elec_Popedom` VALUES ('aa','仪器设备管理','device','技术设施维护管理','/aa'),('ab','设备校准检修','device','技术设施维护管理','/ab'),('ac','设备购置计划','device','技术设施维护管理','/ac'),('ad','资料图纸管理','informationAndPaper','技术资料图纸管理','/ad'),('ae','站点基本信息','station','站点设备运行管理','/ae'),('af','运行情况','station','站点设备运行管理','/af'),('ag','维护情况','station','站点设备运行管理','/ag'),('ah','监测台建筑管理','jct','监测台建筑管理','/ah'),('ai','用户管理','sysmng','系统管理','/system/elecUserAction_home.do'),('aj','角色管理','sysmng','系统管理','/system/elecRoleAction_home.do'),('ak','待办事宜','sysmng','系统管理','/system/elecCommonMsgAction_home.do'),('al','数据字典维护','sysmng','系统管理','/system/elecSystemDDLAction_home.do'),('am','审批流程管理','workflow','审批流转','/workflow/elecProcessDefinitionAction_home.do'),('an','申请模板管理','workflow','审批流转','/workflow/elecApplicationTemplateAction_home.do'),('ao','起草申请','workflow','审批流转','/workflow/elecApplicationFlowAction_home.do'),('ap','待我审批','workflow','审批流转','/workflow/elecApplicationFlowAction_myTaskHome.do'),('aq','我的申请查询','workflow','审批流转','/workflow/elecApplicationFlowAction_myApplicationHome.do'),('ba','首页显示','logon','登录','/system/elecMenuAction_home.do'),('bb','标题','logon','登录','/system/elecMenuAction_title.do'),('bc','菜单','logon','登录','/system/elecMenuAction_left.do'),('bd','改变框架','logon','登录','/system/elecMenuAction_change.do'),('be','加载主显示页面','logon','登录','/system/elecMenuAction_loading.do'),('bf','站点运行','logon','登录','/system/elecMenuAction_alermStation.do'),('bg','设备运行','logon','登录','/system/elecMenuAction_alermDevice.do'),('bh','重新登录','logon','登录','/system/elecMenuAction_logout.do'),('ca','保存','commonMsg','代办事宜','/system/elecCommonMsgAction_save.do'),('da','导出设置设置','exportFields','导出设置','/system/elecExportFieldsAction_setExportExcel.do'),('db','导出设置保存','exportFields','导出设置','/system/elecExportFieldsAction_saveSetExportExcel.do'),('ea','编辑','systemDdl','数据字典','/system/elecSystemDDLAction_edit.do'),('eb','保存','systemDdl','数据字典','/system/elecSystemDDLAction_save.do'),('fa','新增','user','用户管理','/system/elecUserAction_add.do'),('fb','保存','user','用户管理','/system/elecUserAction_save.do'),('fc','编辑','user','用户管理','/system/elecUserAction_edit.do'),('fd','删除','user','用户管理','/system/elecUserAction_delete.do'),('fe','验证登录名','user','用户管理','/system/elecUserAction_checkUser.do'),('ff','导出excel','user','用户管理','/system/elecUserAction_exportExcel.do'),('fg','excel导入页面','user','用户管理','/system/elecUserAction_importPage.do'),('fh','excel导入','user','用户管理','/system/elecUserAction_importData.do'),('fi','人员统计','user','用户管理','/system/elecUserAction_chartUser.do'),('ga','编辑','role','角色管理','/system/elecRoleAction_edit.do'),('gb','保存','role','角色管理','/system/elecRoleAction_save.do'),('ha','部署流程定义','applicationProcess','申请流程管理','/workflow/elecProcessDefinitionAction_add.do'),('hb','保存','applicationProcess','申请流程管理','/workflow/elecProcessDefinitionAction_save.do'),('hc','查看流程图','applicationProcess','申请流程管理','/workflow/elecProcessDefinitionAction_downloadProcessImage.do'),('hd','删除流程定义','applicationProcess','申请流程管理','/workflow/elecProcessDefinitionAction_delete.do'),('ia','新增','applicationTemplate','申请模板管理','/workflow/elecApplicationTemplateAction_add.do'),('ib','新增保存','applicationTemplate','申请模板管理','/workflow/elecApplicationTemplateAction_save.do'),('ic','编辑','applicationTemplate','申请模板管理','/workflow/elecApplicationTemplateAction_edit.do'),('id','编辑保存','applicationTemplate','申请模板管理','/workflow/elecApplicationTemplateAction_update.do'),('ie','删除','applicationTemplate','申请模板管理','/workflow/elecApplicationTemplateAction_delete.do'),('if','下载','applicationTemplate','申请模板管理','/workflow/elecApplicationTemplateAction_download.do'),('ja','提交申请页面','applicationFlow','申请流程管理','/workflow/elecApplicationFlowAction_submitApplication.do'),('jb','提交申请','applicationFlow','申请流程管理','/workflow/elecApplicationFlowAction_saveApplication.do'),('jc','我的申请查询首页','applicationFlow','申请流程管理','/workflow/elecApplicationFlowAction_myApplicationHome.do'),('jd','待我审批首页','applicationFlow','申请流程管理','/workflow/elecApplicationFlowAction_myTaskHome.do'),('je','跳转审批处理页面','applicationFlow','申请流程管理','/workflow/elecApplicationFlowAction_flowApprove.do'),('jf','下载','applicationFlow','申请流程管理','/workflow/elecApplicationFlowAction_download.do'),('jg','审核','applicationFlow','申请流程管理','/workflow/elecApplicationFlowAction_approve.do'),('jh','审核历史','applicationFlow','申请流程管理','/workflow/elecApplicationFlowAction_approvedHistory.do');
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
INSERT INTO `Elec_SystemDDL` VALUES (1,'建筑类型',1,'基建'),(2,'建筑类型',2,'基改'),(3,'建筑类型',3,'生活用房'),(4,'建筑类型',4,'道路'),(11,'设备类型',1,'电力设备dd'),(12,'设备类型',2,'天线设备'),(13,'设备类型',3,'通讯设备'),(14,'设备类型',4,'防雷设备'),(15,'设备类型',5,'办公设备'),(16,'设备类型',6,'电视机房设备'),(17,'设备类型',7,'广播机房设备'),(20,'设备状态',3,'维修'),(21,'所属单位',1,'540'),(22,'所属单位',2,'560'),(23,'所属单位',3,'成都台'),(24,'所属单位',4,'厦门台'),(25,'所属单位',5,'553台'),(26,'项目级别',1,'一级'),(27,'项目级别',2,'二级'),(28,'项目级别',3,'三级'),(29,'项目级别',4,'四级'),(30,'项目类型',1,'技改'),(31,'项目类型',2,'基建'),(32,'故障类型',1,'工控机'),(33,'故障类型',2,'接收机'),(34,'故障类型',3,'通讯'),(35,'故障类型',4,'供电'),(36,'故障类型',5,'天线'),(37,'站点类别',1,'国内遥控站'),(39,'站点类别',3,'国内采集点'),(40,'所属单位',6,'201台'),(41,'所属单位',7,'202台'),(42,'所属单位',8,'203台'),(43,'所属单位',9,'哈尔滨台'),(44,'所属单位',10,'西安台'),(45,'故障类型',6,'测量板卡'),(46,'所属单位',11,'中心'),(47,'故障类型',7,'设备'),(48,'故障类型',8,'网络'),(49,'站点类别',4,'国内'),(50,'所属单位',12,'北京台'),(51,'站点类别',5,'国外'),(52,'站点类别',2,'海外遥控站'),(57,'图纸类别',1,'国内图书'),(58,'图纸类别',2,'香港图书'),(59,'所属单位',13,'海南台'),(60,'项目级别',5,'五级'),(61,'项目级别',6,'六级'),(64,'是否在职',1,'是'),(65,'是否在职',2,'否'),(8,'岗位类型',4,'总经理'),(9,'岗位类型',5,'部门经理'),(10,'岗位类型',6,'员工'),(5,'角色类型',1,'系统管理员'),(6,'角色类型',2,'高级管理员'),(7,'角色类型',3,'中级管理员'),(8,'角色类型',4,'业务用户'),(9,'角色类型',5,'一般用户'),(10,'角色类型',6,'普通用户'),(66,'性别',1,'男'),(67,'性别',2,'女'),(68,'性别',3,'不男不女'),(69,'审核状态',1,'审核中'),(70,'审核状态',2,'审核不通过'),(71,'审核状态',3,'审核通过');
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
INSERT INTO `Elec_User` VALUES ('ff80808177a9b7f60177a9cd50750001','2','我最大','admin','E10ADC3949BA59ABBE56E057F20F883E','1','2021-02-16 00:00:00','123','','',NULL,'1',NULL,NULL,'超级管理员',NULL,NULL,NULL,NULL,'2021-02-16'),('ff80808177d4279d0177d42e3d8e0004','1','zhangsan','zhangsan','202CB962AC59075B964B07152D234B70','1',NULL,'','','',NULL,'1',NULL,NULL,'',NULL,NULL,'2021-02-24',NULL,'2021-02-24'),('ff80808177d4279d0177d42e6f670005','1','lisi','lisi','202CB962AC59075B964B07152D234B70','1',NULL,'','','',NULL,'1',NULL,NULL,'',NULL,NULL,'2021-02-24',NULL,'2021-02-24'),('ff80808177d4279d0177d42f27740006','3','wangwu','wangwu','202CB962AC59075B964B07152D234B70','1',NULL,'','','',NULL,'1',NULL,NULL,'',NULL,NULL,'2021-02-24',NULL,'2021-02-24');
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
INSERT INTO `JBPM4_DEPLOYPROP` VALUES (4,1,'设备费用报销','langid','jpdl-4.4',NULL),(5,1,'设备费用报销','pdid','设备费用报销-1',NULL),(6,1,'设备费用报销','pdkey','设备费用报销',NULL),(7,1,'设备费用报销','pdversion',NULL,1),(10004,10001,'设备购置计划','langid','jpdl-4.4',NULL),(10005,10001,'设备购置计划','pdid','设备购置计划-1',NULL),(10006,10001,'设备购置计划','pdkey','设备购置计划',NULL),(10007,10001,'设备购置计划','pdversion',NULL,1);
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
INSERT INTO `JBPM4_EXECUTION` VALUES (20001,'pvm',3,'审批【总经理】','设备费用报销-1',_binary '',NULL,NULL,'设备费用报销.20001','active-root',NULL,0,30002,NULL,20001,NULL,NULL,NULL);
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
INSERT INTO `JBPM4_HIST_ACTINST` VALUES (20005,'task',1,20001,'task','设备费用报销.20001','提交申请','2021-02-27 07:58:18','2021-02-27 07:58:18',79,'jbpm_no_task_outcome_specified_jbpm',1,20004),(20007,'task',1,20001,'task','设备费用报销.20001','审批【部门经理】','2021-02-27 07:58:18','2021-02-27 11:48:44',13825879,'to 审批【总经理】',1,20006),(30002,'task',0,20001,'task','设备费用报销.20001','审批【总经理】','2021-02-27 11:48:44',NULL,0,NULL,1,30001);
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
INSERT INTO `JBPM4_HIST_PROCINST` VALUES (20001,0,'设备费用报销.20001','设备费用报销-1',NULL,'2021-02-27 07:58:17',NULL,NULL,'active',NULL,1);
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
INSERT INTO `JBPM4_HIST_TASK` VALUES (20004,1,'设备费用报销.20001','jbpm_no_task_outcome_specified_jbpm','zhangsan',0,'completed','2021-02-27 07:58:18','2021-02-27 07:58:18',77,1,NULL),(20006,1,'设备费用报销.20001','to 审批【总经理】','lisi',0,'completed','2021-02-27 07:58:18','2021-02-27 11:48:44',13825883,1,NULL),(30001,0,'设备费用报销.20001',NULL,'wangwu',0,NULL,'2021-02-27 11:48:44',NULL,0,1,NULL);
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
INSERT INTO `JBPM4_LOB` VALUES (2,0,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0�\0\0�\0\0\0��z\0\01�IDATx�\�\�}t\�}\��\�?�\�\�Mc�\���_\�\��7�p۴vz\�c\'�\�6q\�\�\�vm\\\�4��\�1vd#\�2� \�\�\��\�#��\n�\�\Z$���\�\�VZ	����\�}Ĳ��3��f�\�~?\�9�\�\�\�\�h�s��\�\�\�.\0\0g�\�\0\0\0R�\�\0\08�\0�\�5\0\0NG�\0p:j\r\0�\�Qk\0\0��Z\0\�t\�\Z\0\0��\�\0\08�\0�\�5\0\0NG�\0p:j\r\0�\�Qk\0\0��Z\0\�t\�\Z\0\0��\�\0\08�\0�\�5r\�\�\�\�\�#\�\�\�\�L\�UjYY��\�Q\�\Z9JuZb<222<<<44488J \�*YAV��i6\0-�5rN�ӗ.]�o�)\\���\�����3����k����e\��Q\�U(\�\�\�\�\�e�\r ��5rHl�B��[}p\�M\�[4\�_V�\�/\��Q\�UG;7\�$C.ȏ�P��d�\�-�\\\�\��4@�Qk\�\n�\�\�\�ы/zv\�=��O�\�}���Ou��ZYAV��e�wv\�uuu\�<[v\"�\"\�\0��Z#\'�T���\r\r-�ͽ�=������#�8d\�p�o�\�\�~���Ov%;$\�\0��Z\����\�\�	<�\�?<�\�\�\�M5\�jȆ��S���\������P(D�d��\�ES-e�T?���\�\�S\�K�\Z�ç�Y}��ܹ�\�\�n�\r �5\\N�W=44��\�{2-�a���~\�\�\��\�\�#���\�\\����w\�Z\�\Zn&�ݱ���/�]�����B�����:���}\�^_�����}}}rrCL�d���\�|�ҥK��\�}(��t?V66��=�󉦆�����~�!�\�\02�Zõ\�\�zpp�`�,�r���g\�l�\�=�\�\�\���#\�\�ˣj\�Ug#K\��W��\�v��\����^Y8z��K\�l~\�\��wuu\�\r1��!\�\Z�59�\\�՗7=\�q�\�w1C~\����~�,WK�Nv\\<\�qe��\�_�\\\'��\��gK�\�\�p���Mn�\�5��\�p�\�\�zs\�/\�Y4��eGK�/2>�ϩ\�\�\��\�\�\n��uZ\�K>9WW��p.�I]`\�=��xӞ�\�\�\�L�d��;�om���\�u�\�+n=ճ�To\�i5z�q�G.�%5�\�#��7r9�f\�\��\��ת\�\����%o\�\�\�\�p��y�9�m.ݿ=\0��\�p\'I\���poo��eyo\�\�p\�ㆎȸ��+#�p�,<\���\�\n�4�\�\�BGd�\�\n\�M�\\h���ǒ\��o���rsr�\�\Z�\�5\�i|||hh�����O�I\��\'\�\�>�k\��7<\�Յ\�\�B�wG}dI�\\V\�[\�:ѭ�,�Y(+\�\�\�}��C���~�9�Q�iݿ=\0��\�p\'��ugg\�\�?���W�}�@`끳[kWGxI\�����\�Ʌ\�\�ʑ\�U\�G5&W��)e\�w-�v��ߞ:uJnN�u���\�6\�\Z\�$\��Bw=���\���\�ɨ��;y�Y��9�\�\�\�\�\�\�keyx�ZX\�\�|�\�\��\�+\�9����Lu����&�9�Qj\r�v\�\Z\�[\�\Z\�\�=�i\�\�w��M��\�?V�~���]uao�\�\�\�\���\\\��n\�~d�ݍ\�\���UQk\0�C�\�N\�Z߽����l�\��6�K�U�7]\��&u��<�\�+y���\�u&�}��߾p\�\�k�\�\'N��\�\02�ZÝ����S�z뿪���\�׷\'_\�V/�\��_}<�¾����㽘\�\�\�\�}\�:j\r ��5\�)Z\��\��E�;�\�e5-�Ϛ%_b�<f\�\��쫼 ��5\�)Z\�\�E��`�Mq_ߪ�~�+z��\�\���\��\�Gd��o^\\�����5�̡\�p�\�7�\�ٝwϓTu�݆�W\�|29\Zc��rmect��ʫ�\\9�ʕ��T�%��6\��\�\�\�\�߿�op\�j\rw��\�\���4\�+/��\'O2:y�\�\�q�t��\�k~�<i\�U�Dv�Ӽw\���СC�@\�Pk�S�̣�@`ջ?����>�7<�\�\��\���c\�\�Ʌ\�z�Gx\�\��?�\r\�䓟<�e\�yEEE}}=g�9\�\Z\���\�ϟoh8��e7IV��\��3O^�S�\'�\n3�\�\�\�W��\�\�\�\�֔�l\�W��m۷o_cc#\�@\�Pk�S�/fvuu577��}\�}\�~��ac�ș�ѳ\�#g{d��	�;r�{T]>�w�\�\�#g�#k�7Q+�\�\�\�8S\��\�}\�^�\�E�v\�:|�01@FQk��\�q/]�\�\�\�\Z\Z\Z���\�#/\�\�>o�\�\�>�ȋ�-]��\�۷\�\�Zv.7!7$7\�\�\Z@&Pk�V\��\�\��\�\�\�-z��Ϭ�=Y�\�M)\�Ϭ�cѫ�u\�\�={�\�ne\�L�d����\�u{{{SSS�\�\n��̰�O�7�Y�X�l(�\�N�\�|o�\�\��\�\�\�\�&�X\�j\r7S\�\�/������?~���\�\�~\�g�PP�\�Tk-�Ȇ���￿k\�.ٕ\�Pv+;��`b\r s�5\\N滣��CCC===\�Νkll�ʮ+{�����d\�\�=|��u�eYMV�M\�nz\�֭2���Ȯd��[ٹ\�k\0�C�\�r2\�U\�\�\n�B\�\�\�\�W�<xp\�\�\�=��e_�ޢ9���~�ΏJ��:\����&rA~��r�� �\�ʥ\�oپ}��={dsى\�Jv(�U\�\�bb\r s�5\�/6\�2nmmmjj���۷o߮]�6U<��\�{V�\����\�O\\�\�\�?-C.ȏ�P��JKK�Ӳ�l\"\�\�\���\�\Z9!\Z졡������v�\�\�\�\�p��a	pEE\�Ν;\�\�\�$\�|���� ?\�B�JV�\�de\�D6�\�e\'�+R\r ;�5r�\n�\�\�\�ŋ������\�\�ښ��\�\�\�:���\�\�\�}1\�GY(W\�\n���,�Ȇ��\�D�WM�d�FQ��t\�\�\�\�`0���?>Ȍ�ԩSM\'\"\�eY(W\�\n���,�Ȇ��\�T\�\Zj��\�l�(���vwwwvvv$��r�� �\�i\0�Pk\�h�GFF������$ơ�P��d5:\r@j\r=���bY��\�S.�]��-\�\�\�\�L\�Uj:\r@j\r=bk�t�5��]�\�~\�\�ʤ\�3�\�\0�v\�\Z\�K\�|&my\�]�3G7\�O����`08�_	\02�Zc�\�y�\�b+�[\�\�b[�\�w:Q�\�\0�Zc��]k\�u�Z\�%\�s\���D\�\Z�Qk\�H\�Ij:�E��bu\�W\�ӿ�\�ܺ�����\�\�\�\0 ��5f\�\�\�i�\�N�S\�\�Z�ܛR\\\\�^\0�Pk\�\�Tk�t5��-VH�J�\�B[O�/Sk\0�D�1Sv\�ڢ�ֻ�^\'n*�r}j\r���5l�8�M\�\�\�\�í��r�)�p9���\�\�inn�>x\0\�2j�l3{�:v�YP-B�μ<���\�\���|i�6\0�\r\�\Z0�\�\0�Z\�\Z�Qk�������V�Q\0��*#t\0Pk��Zp j\rPk\0D��\�\�ꊊ\n\�G\0\�\Z0��|^�W�Q\0���5\0�ր�\�@\�\Z0hhhزe�\�\0\0j\r�\�\�b\�G\0\�\Z0�\�\0�Z\�\Z�Qk����m\�ڵ��\0�50iŊyFEEE�\n\0¨50i\�ƍ��޶m[II�\��0j\rL�p\�²e\�T��/_�nݺ@ ���\0 �ZW�Zo޼���8����|K�.U����\�}8\00�Z+W��Z���\�>\0�D��ݻwK�\�\�\�u\0\\E��R/[�,\n\�>\0��Z\0\�t\�\Z\0\0��\�\0\08�\0�\�5\0\0NG�\0p:j�왘��\�h\�s޺��\�d�\�5�)�y+�r�=VR��hd\\�\�	 {�5��wp\�\�-��YX�=xn\Z?^�\�\�9����\r\�\Z\�9蟳ȣsK~\�\�u�\Z~\'�o`�\��eF�C\�o/\�:}e\�S��{\�[71��1�a\�\Z$y��Fu\��Ww�Z�ڃ\�\�\�>p\�{\�}{\�w��\�~�d�F�T\��ou\�	\�ys吩�zAf\�̰�\�\�\�A�J�E{\�\\<|-A�F\�\�[\�~\�d\n�FF�\�R	YSuJ{\�\\?�Nvʳ\"��\�[zt?�\02�Z##\�k\�w��[{\�rd,\�Z�^\��\�\�j\r�\r����+\�\�\�W/f9\��\Zp!j\r��\�\�<O{\�rj<�N�\�\�K�\�\�~�؏Z\�~<\�l\���,�\�GZ\�n�uy�\�\����5\�\�\��G��<:�#r�\�Y\�\�������n��&\�FS����\�\�P\�������\�	�8�(�`j\r��ZkOWu\�\�~�؏Z\�~ԚZ�����5�`/j\r�Qkj\r�^\�\Z��\�\�\Z���5\�G��5\0{Qk\�Oo�\�ϟ�\�z\�tv�ry:{�\�\0��Z\�~Ωuʄ\'�R\�\�Ui\�Z�6j\r�\�u\\,��\�Iw�~��[\�j\r�9ynm�\�tZn6�fn\r ��5짽\�\�s\�\�\�K�\�\�)\�\�\�\Z���5짱\�\�X����/3��i\�\Z�\���u\�\���\�)�F�\�������\�uO�\����\�Bk�XSk�Ũ5\�\�Z[4��Zo��|j\r�v\�\Z�sB�cSm�Z\�uR\�\�\�kj\r�^\�\Z�s\����.4�Ehә�3��Q\�\Z�\�<\�\�\Z���5\�G��5\0{Qk؏ZSk\0��ְ��\�\0\�E�a?jM�؋Z\�~ԚZ�����5�`/j\r�Qkj\r�^\�\Z���\�#\�hj\�^�\\\�\�������\��J3�Nvj�W�\r�ۯYX���`?j\r�}\�\�ƚ�S\�\�S\�Й�\�\�.٬��`?j\r��^yB�q\�{�,�\�\�ur�/�T\�~�؏Z\�~g�$�zt]�kH{\�rgܒ_*w��c��\0��\�Ȉ;�[\��o�j�7,GƆ~�\�\�,�\\\��\���FFԷ��\���3=\�K\��\�Q���\�G@FPkdʏ�W�q\�\�7�zxFG\����UerW\�[靘\���\�j�L\ZW_嚻d��%��j�2�V������ݏ9�L�\�\� \��-\�K՗�WW�\�\�6��͵��ܽ�\�zt?\�\02�Z#��.�\�����d/\�Z\�;\�3M\�/\�:�>.C�1�\\�Z#\�&&.�m�T����&��)�\���収�^5��5�D�Rz$��SM�g8�YX|�������;�5\0\0NG�\0p:j\r\0�\�Qk\0\0��Z碼���W%^H�r��o%\��\�\�%Hy0���\�\0�Z焤%K\Z�i\�z\Z�u9�\'޺\�mY9�0�Q\�`��\�d^�b�-n\�loq˓n�\�S�\�\'>3H�\�^�7\�:\0�M\�zV�\�\�:�I/�eҬI#m=i�\�\�\�欟�s�Iw\0\�A�g�i\�$\�\�3\�4v�\�f�L�.O�ֱ�O�m\�_Ĭ\�ֿK\�\0�sP\�\�Ǭ�֍1+�\�~,����\�\�ʔjm��\�:\�OD\�?`j\r�i���d1!�\�\�b\�{\�|.;�Z\'\������4\�Iן��\0\08����W딗�\�*�g\0)ok\Z�N\'̉�4+�\�\�Z\�\0�Z\�Jӫ��]%N��\�\�\��\���\��\�m�\�l�G��\0\0@;j=[%&*�ƤSʸ�Z\�:i_c�J\�I\�c�~2w�);�C�8\0\0pj��ҙ(\�e;e\�Jl�t��\�R>?H�]�5�Y�Z�5\0��\�@<j\r�i�5�Zp\Zj\rģ\�\0��Z�5\0��\�@<j\r�i�5�Zp\Zj\rģ\�\0��Z�5\0��\�@<j\r�i�5�Zp\Zj\rģ\�\0��Z�5\0��\�@<j\r�i�5�Zp\Zj\rLZ�bE\�_\�.**\�}P\0F��I7n�M��m\�JJJt\0�Qk`҅�-[�R�|��u\�\�\�\0a\�\Z����P\�z�\�ͼ�9�5p�\�\�[�t��umm�\�\��I\�\Z0X�r�Ժ��`llL��\0�$j\r\�޽[j]^^��@\0\�*j\rȔzٲe�PH��\0�U\�\Z\0\0��\�\0\08�\0�\�5\0\0NG�\0p:j\r\0�\�Qkd\�\�\�\�G[��\�\�_U&\��aLc\�[\�{ﱒ���C#\�U\0YB��q��#Oo9|\�\�b\�s\������\�ݏ0���\�\�,\�A��E��[�Ko�\�\��;}\��/3�:Խ�Үc\�\�\'>�\�\�u�i\0�D��)ҏ\�JjTQnu��%�=u.M\����G\�\�w�zw\�\��\�\�@�Pkd�J�\��VW�\�6�j�wd�\�p+j�����TKK��\��\�\�To7<�\�\�G@FPk\�\�|ߐ�ǚ�S\�K�#�\�d�<7�����G�\��~\�\Z�S��\���n\�\r˩�xk�z=\\�\��~\�\Z6\ZW�<>V�\�\�70�^\�8r�\�5\�6\�\Z6+����z\�\�x\�j��l�\���\0�ͨ5l��F~�O{�rp|p�U\��[��\��_\0�f\�\Z6Sg\�\�\�ZFGpD\��9�<��\0���\�n��&	FS���t\�\�P\Z\���\0�ͨ5l�N�ŉE�5\0Qk\�L\�Z{�rv��_��\06�ְ��\�\0lG�a3jM�؎Z\�fԚZ���ͨ5�`;j\r�Qkj\r�v\�\Z6�\�\�\Z�\�5lF��5\0\�Qk\�l浞?~ʫ/$]9V���\�\n\�u\�\'Hy0���ܖZ�ְ\�4j��dI6\�ZO\�҉q\�[ܖőSk\0֨5l6�Z��6�gS��uP-�$ݹEw-\�O\��`�Z\�fZ^	7ˤY��F\�zҜN\�-��L;�`�Z\�fӫuҩg\�	h\���\���\�\rM�ֱ�O�m\�_Ĭ\�ֿ�r��ͦ]딗\�\"�NVӌ\�4jm��\�:\�OD�5\0\�\Z6\�\�\�:�j\��Y̪\�\�mb�-2l�#��j\r�ezn=\�Z�9�j�\�	s\�>SN��5���5l����/\�LF�\�\�\�\�\�,\����\�Z[<��\�\0\�A�a��}&<��ֵN\�\�ثw����L$\�tʢSk\0f�5l��Z\�\�,.\�)hVb�\�Ou��(\�\n���`�Z\�f�\'\\\�ր+Qk،ZSk\0��ְ��\�\0lG�a3jM�؎Z\�fԚZ���ͨ5�`;j\r�Qkj\r�v\�\Z6�\�\�\Z�\�5lF��5\0\�Qk،ZSk\0��ְ��\�\0lG�a�9�<R���\�\�\�͡\�\��\0،Z\�f�Vz�U\';�w+7�\��\�,,\���\0�ͨ5l��5{$k�Ni\�V�Cgz\�Ο�d�\��\0lF�a�\�+OH0\�}s��t\�\�X��N\���j\��\0،Z\�fg�$�zt]�kH{�rmܒ_*w��c���\0����\���niƿm�\�^��\Z�\�n��\�sqd\\�\06�ְ_}K��^:ӣ�a92:�#\�\�\�W�\�����FF��7{�7�|��ga�\r�\�_U&w���މ	ݏ=��\�Ȉ��q�U��K6�Z�\�{\�\�!�j�j�[�\�\Z\��\�\�j�L�wܲ�T}�wu\�	\�Us\�\�\\P/�˝\\�G�c S�52h\�\�����_�I�\�u��m\�hjxi\�1�	p�Y5\�n\�\Z�51q�\�h��ZuE\r5dLc$ޓ/t���ף\�\�\�I\��O5��e\\�����{7��e- GPk\0\0��Z\0\�t\�\Z������\�IW�eq+Iw�\�%HyC���\��lD����\�.i\�]k�,��2�I\�l��١�]�5r�u\�縗�Xk��f�� �ؒ\�(�\\�Z\�\rf�%\�\0\'�`�\�4o¢\�f�2{\�@�w�\�p�id\�l�+�^o\�c\'\�f7g}�\�¸��͹g\�r���9\���5\�&\�\Z��\�K�\�[�]N��\�,6\�5{f�xHI���������C�\�I���<n�\�\�ӫu��B\�\'�\�b�\�uAAAuu�]�i�5\�`z�6����)=��Ť�I\'̉�kll���������-\�\0�u�5\� s뤻��y[\�3\�\��\�\�-n\�\�\�\�\�^�v�\�\�ր\�Pk�Db\�\�o�Ť6n.{9!��\�`6K�X�\�\�\�\�y@��`��րiG�\�t-B�t����uJWK�m�u\�\�l{z�	\0G�\�@<\�LI\�\�\�\n+**���u��\�@<\�\�Z����f755\�>\0\�G��x.���B%%%�\'\�>\0\�A��x\�\�\�,�l�j���\�>\0SC��xn��P_\�.**\n���Pk ��k�tww{�\�P(��X\0��Z�\\_k\�\��\�\�\�\�>\0�Qk ^�\�Z����]�V���cQk ^\�\�Z�TK�\�\�\��Z6\�X\�\Z0�b��\���B����\�\��\� 	j\r����\�G�G(ڲe�\�\�\�|��\�Pk� �k�477UVV�l�9�5`@�/G��-��fK�u�0j\rP\�\�\�n�ǳe\���\rhG�j���A��4�\�\��oذ��\�D�j�H¬\�W\�\�\�&�O~~��\�\�KKKu�C�5`@�\�ttt��\�[+V�ȋx\�WxW\�\Zj\rPko��v^	6��\�A�jm\�\�?\�3z��\�y=\�j\rPk3EEE�V��ׯ__XX�\�k�I�W�\\y�\�I݇�����g��\�竬��z�\�\�ſ�կ\�[��\�G�j\r���5`@�8��5\0�ր�\�@\�\Z0\�\�\�(**\�}\0`@��@ P\\\\��(\0��Z\�z�&&.\�8\����n��2�`\r#\�1o�W\�\�Jj6���\�~$\�h\�\Z0�\�\�\�yz\�\�kkϞ;Ə\�\��w\�~T\�P\�\Z0�\�i��\�Y\�Q��%�t�ֺ]\r��\�70~q�2#��v��&�G\�=筛�\��\�\�y�5`@�S��<VR�\�r��;}-A\�\�s�hj��\�=\�^��׻{Gt?\�pj\rP\�T�e��\��ȹl\�T[�� �mf؈E�jm\�sЯR-]\�\�6W_KP�\����úm8�����}C*$k�Ni���G\�\�Ny>$�s}K�\�\�NA�jmA�~\�뻵�\��c�\�:�z�\�\�NA�jmfhd\\M��XYF\���z\�\�9�\��ր�6SZP�=\�%ˑ�\�;\�r�/\�V����#Pk��Z�Y\�	\�#�̧=c92>8\�*w��\�Ku?�pj\rPk3\�|<k�#8\"w��Eݏ<�Z\�\�\�\r?\�$�hjО�\�\��y8���u�-N,J������JJJt��ZkXN\ru�\�~\�\�\�\Z9!/\"�G�5}>�\�\�\�\�A\�2ԚZC#j\r��(����+wjm�ZSkhD�\�Y���mQk3ԚZC#j\rGȻ\"qa:\�\�$\�~��Qkj\r��5�\"1�I�[��\�\�}Rk3ԚZC#j\r��^�\�\�\�\�:s\�����S^�x!\�ʱ,n%\�N\�\��	R\�P\�j)��֘9j\r��\�\�\�b+jm�\�:i\�Fnڵ�h����O\�f\�5�52�Z\�A\�]N�}k�Z\�\�uWKD�\�̼\�)��kޔj���>-H<��7J��Q\�\Z0�\�f��n�\�4o¢\�f�2{\�@��M\�\Z0�\�ff^k�\�nb�b׏�`�\�����\�lΝx�qj�̡ր�6cK�S^���Ewөu�\�\�\�\�q\�X\�Z#��5`@�\�dan��,֖@Ʀ:e\�\�~�\�\�j\rPk3ٜ[O�\�\�k���\�\�\�H9��\�\�j\rPk3Z޷�3a5K�Y;\�\�ټ\�\nO�52�Z\�ڌ�τ\�F׺\�I�o�0���\��4�Z\�.\�\Z0���)//\�}N��Z\�/.\�)3i��uJWK�m�uҹ	j��րAe�\�p\"\���A�E�jm�ZSkhD�jm�ZSkhD�jm�ZSkhD�jm�ZSkhD�jm�ZSkhD�jm�ZSkhD�jm�ZSkhD�jm�ZSkhD�jmf\�\"����}@{\�rg��\\�#G�ր�63o�W\�Qu�S{\�rg\�~\�\�bݏ<�Z\�\�\��\�\�x��:��a92�\�;|\�ͺy8����\�+OH<\�}s���\�\�X��N\���jݏ<�Z\�\�̙��ǧ]\�\Z\�^�\\�\�\��\�X�\�G�@�jm\�\�_\�~�ۦ\Z\�%s�\�p�/w��E��#\�v8�\�\�\�kjjt�Cշ��\���3=\�{\�\�\�Q���\�\�NA��\�\���t�s��7{�\"7�|��gh�\r�\�_U&w�މ	ݏ7�Z\�\�\�\�ȸ�*\�\�%�}-A\�msِY�J�̭\�t\r\�~�\� \�\Z0�\�)�;nY^��\n��\��¹fl�\r��厭?ף�q��Pk��Z�c\�\�����_�I�\�u��=\�\�\�>�Үc\�\�2\��j$�ր�N\�\�\�岣��j\�5\�Ԑ�\�H��^�\�\�U#)j\rP\�)���	,�T\�\�i�k߿~\�ƃ~��\�\Z0�\�\0�Z\�\Z�Qk��Zp j\rPk\0D�j\r���5`@�8��u��@YY�\�\0r��u:B�PIIIqqqww�\�cr�������\�\�ʂ����&\�\�\�j\rȔ���{���Pj-\�\�},@n�րAqqq \�}�\�\�\�\��x\�L0\�},@.�ր��3<<\\QQ!S\�\�\�f\�\�\�.j\rP\�X>�O:]]]��@�\\G�j�����]�\�\���B!\�\��ZF��u^D\�Y�Q\�sYY��Z�����j\rL�֙.ht�q\�ΐ���\�\�\�\�\�\�L\��)�ր�ck�\�ے\�Z:]^^><<��[0=\�\Z0�R��H\\�Άq;I��,\�:rb2�\�5`0ùul�Sn2�\���ub2�RsB�\�5`��Z\�͛�\�Z\n]PP��ɀY�Zٜ[[l�\�Zwww˯YRR·��قZ\��W\�\�i�o�VK��N\�j\�6<<\\^^^XX\�o�H��}k{\�\�\�J�kjjt�)�ր�+k�NLVVV\�K\��,E��\�Z�\��z910\�Qk�������C�Qأ�����\�\��\�>\03E�����	\�\�\�f\�tEE\'&܁Z��\�\�\�d���nB��\�[kNL��fi�\Z\Z81\�b\�\Z0�u�\�\�\�(..޲e\�\�\\�Z��\�\�\�dEEEn�\����5`0[j][[+�ʉɀA�\�׺��M\�\�eee|;\�\�\Z[�bE��Q�A\��B[�lY�v�k\�\� M\�\Z۸qcl��m\�VRR����\ZS\'&khh\�},\04�\�@؅�-[�R����n\�:\�|t���Y&���\�e\�\Z�$3WUk�\�㐗����\'��9�Z�|>\�ҥK�\�7n���\�{0ccc2��\'2�\�{$\0��ZW�\\�2??��W^\�{F0ub�\�\�jNL@�\��U�w\�\���m\�t\0\'&������̭{zz�\�\�\�\�eee��@R\�\ZЯ�����@��\�\0�Z:\�LZ\�\�\�\�\�|;�j\r\�NLV\\\\̉\�\0�D��lS\'&+((\�\�d\0\�D���&L\�x\�\�ͅ��|;@��5r���\�#\�\�ǥ��	d�\\�֙R�O�<�aÆ\�\�\�\�\�\�\�d�_\0�Z#GE;-1\�8s��\�ʽo�]�\�z5\�\�\�{z������.]R\�N�\�\�\����\��\�?�\�e2]TTĉ\�\0L�FΉvZ\"�æ�?�٢\�\�>����믌��O^7�\�{~$\�lo�BRn\�v\�fK�_x\�u\�q���\�\0\��FnQ��\�\�\�y�_\'�\�\�\�x��\�7\�(�\�w<<\"C.ȏ�P]+�\�\�対\�\�՝\�츛�寿�z�o.]��7\�\��\�p\rj��R\�~�䊿���\��\�\�?��\�\���ѷ=O�?w.<Z[\�#rY)\�(+D�����=^�\�\�\�^i�L�GGG�]RR�g��_�\�\��\����\0�F�P��d{��r�tw\�_,�\��k�,�\�8\�*�Ʉ[6	\�¯��\��^WWW�L�\���\�����\�+�lڴi����\�\�^+,,\��\��ը5rB4\��ۗ��+n�f{\��Nmu�����=Ş���`0l�v�L�����^oee�̪�\0�0\�\Z\�R\��Q�J��\��\�\�S���j5�O�.��T��zJ�\0lG�\�r\�����\�f�l���3z�\��R�\�h ��w�\���\��TVl\0Y@�\�r�\�\�\�\��y\'}ͻ\�64$mp\��Õ+_~���\�n5<<r��(\�ʃ��y7}=�\�[�q��������_nell�Z\�j\r7S\�]/���>�/�WV%I\��\�\�\�W�\�3\�?{�MR�ĭ\��\�{\��\\\�\���e�@���+\n]�t�\�5�L�\�p3u\n�g��I������\�֊J�\n���9�`\��m�>���ر�z\�Soo��g\�Kغo\0nC�\�Zjb����e\�,M�\�\�ș3�#�ay:�V\�_���?v�\rO^7W��\�\�_������L�d��kI2e�[��ߕ�zxd���!N3\�j\�\�ܰ�\�\�\�\�8�}����Ɔ�\�\�5�`/j\r\�R/�?�\�?��}gc��.XW��.X[�kq��R�F`\�N\�vr?�uG7l���\�k�XWsP�ם���PH}8\\�o�U�5\\K�y����_\��\�/w\�\�\�UU;\�\'	�z�e���Y�\�\�\�:y���=�b�\�\���Pk�\������J�\�/~\��\�;\�cg�\Z�\n�\�y§:\��붲\�\\\�\�۾)\�KV466F_��\��\�pj\rwRoZW��^��\�w��\��\�ǎ���i�Z������*�\�w\����=\Zx\�\Z@&Pk��\�rttt\�\�\�k\�{\���\�\�\�:\�Z\�aU\�䩀���#G�~WW�:��`#j\rw��u\�\�oǎ\�:vWq��~ЌZ���;\�ֺ�\�\�\�ͭՉM�7No\���\�+\�\�\Z@\�Pk���u�Sfq\�[\�\�SfgK\r�\��\���x\�)\�\Z@\�Pk�����}�\�7�\�\�\�&?\�}eL�\\?�\�\�\�#o۱#�\r.j\r s�5\�I\�:\�ӻ0rv�C��\�\'=����--�݉��/����|\�@\�Pk�����S�-\���?�\r�}\�b�}\�k;�To}\�\�Y\�j���v\�}\���}s�o\�7�\0d��k���K8\�_}\��\�_\�\�>Pw�p�w���\\\�W�\�\Zc7\�9���Ǻ�~��~Ύ s�5\\\������K�:\�۟�ӯHSK��\�\��W�\�p\�ؙw\�m)S���\�m��ؑ\�;w>|����3�\�j\r\�R�\��\�\�_��>�/�~�q⟸ll��BW\�Wo;��h�\\�?��>_V�ȿ\�\�:�#f\�\Z�\�5\\+�\�uׅ�����n�\�`Ccb�e�\Z+W�,\�\�շߥ�$�H�\��s\��x\�\���\�UYQ!\�ؗ�y\�\Z�\�5\\K���\����\�T���|\�ݣ�@\�`Oɳ\Z&+�����\�V��o/�\�\��\�ѣ2�\�\�舾N�؋Z\�\�$����2ߕY-\�\�\\��\��\�\�3\�c���#\'/[x\�KVH�\�;\�щ5\�\Z@&Pk�Ytz\n�����zJT��n�z�\�}SMu{U�\�̋�z߾}\�5�@  ;��c\�\�\Z�\�5\\N�{=<<\�\�\�\�\�\�)�~\�Oo\�\��|�Ol<�N��6\�\�\�ceO}�\�\�T��\�\�\�&x\�\Z@�Pk���^�\�Ã�`GGǑʪ�[��>�躹k����\�9s&1ҲP��\���\�Gķ{bS-;�\�F_�\�\02�Z\���}��\�?�\�/|u�Z��A�����}���e-C.ȏ�P�R\�Ȕz\�S����P\�\�\"\�\0��Z#\'\�������\�X}}ɪ��o�\�\�}\�\��\�rՋ\���\r�XV�s��L\�ѣG���ds\�	��\�\Z�\"6\����]]]���2?nlh�=PS\�)y�R\�\����L�vm\�A\�i5��\res\�	��\�\Z9$\Z\�\�\�\�P(\�\�\�+�c\�\�S\'OJ��F���\�U��\�l\"\�\�R\r ;�5r�\n�\�\�X���CC\�f���K�[ZZ��?��(\�*YAuZM�es\�	��\�\Z9g\"\"�\�\�྾>�qWDg��,\�*YAV�\�4��\�\Z9*�٣��*\�J(Ft�� �\�i\0ZPk\�h�\����*wY(W�u\�4\0-�5pՄ	\�\� \��<�g�<p9\�\0\0\0\0IEND�B`�',1,'deviceFee.png'),(3,0,_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n\n<process name=\"设备费用报销\" xmlns=\"http://jbpm.org/4.4/jpdl\">\r\n   <start g=\"239,15,48,48\" name=\"start1\">\r\n      <transition g=\"-71,-17\" name=\"to 提交申请\" to=\"提交申请\"/>\r\n   </start>\r\n   <end g=\"239,389,48,48\" name=\"end1\"/>\r\n   <task assignee=\"#{application.applicationLogonName}\" g=\"193,95,140,64\" name=\"提交申请\">\r\n      <transition g=\"-119,-17\" name=\"to 审批【部门经理】\" to=\"审批【部门经理】\"/>\r\n   </task>\r\n   <task assignee=\"lisi\" g=\"192,191,142,69\" name=\"审批【部门经理】\">\r\n      <transition g=\"-107,-17\" name=\"to 审批【总经理】\" to=\"审批【总经理】\"/>\n      <transition name=\"to end1\" to=\"end1\" g=\"-47,-17\"/>\r\n   </task>\r\n   <task assignee=\"wangwu\" g=\"350,288,138,65\" name=\"审批【总经理】\">\r\n      <transition g=\"-47,-17\" name=\"to end1\" to=\"end1\"/>\r\n   </task>\r\n</process>',1,'deviceFee.jpdl.xml'),(10002,0,_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n\n<process name=\"设备购置计划\" xmlns=\"http://jbpm.org/4.4/jpdl\">\n   <start name=\"start1\" g=\"239,15,48,48\">\n      <transition name=\"to 提交申请\" to=\"提交申请\" g=\"-71,-17\"/>\n   </start>\n   <end name=\"end1\" g=\"239,389,48,48\"/>\n   <task name=\"提交申请\" g=\"193,95,140,64\" assignee=\"#{application.applicationLogonName}\">\n      <transition name=\"to 审批【部门经理】\" to=\"审批【部门经理】\" g=\"-119,-17\"/>\n   </task>\n   <task name=\"审批【部门经理】\" g=\"192,191,142,69\" assignee=\"lisi\">\n      <transition name=\"to 审批【总经理】\" to=\"审批【总经理】\" g=\"-107,-17\"/>\n   </task>\n   <task name=\"审批【总经理】\" g=\"194,292,138,65\" assignee=\"wangwu\">\n      <transition name=\"to end1\" to=\"end1\" g=\"-47,-17\"/>\n   </task>\r\n</process>',10001,'devicePlan.jpdl.xml'),(10003,0,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0�\0\0�\0\0\0��z\0\0-EIDATx�\�\�{pTם\��ʟ�ω�	�$�3�\�\�ď��	\�l�\�$;S�q\�\��qvb;~�;6���#$�\��\�;�Q�m	��@@B��A!h\�B �G�FH\��u��\�\�\�-\�\�>�\�\�O��Z\�\�޾\�\�ۧ_��\�\0\0�\��F�\0\0��5\0\0vG�\0�;j\r\0�\�Qk\0\0\�Z\0`w\�\Z\0\0��\�\0\0\��\0�\�5\0\0vG�\0�;j\r\0�\�Qk\0\0\�Z\0`w\�\Z\0\0��\�\0\0\��\0�\�5\0\0vG�\0�;j��611�W?�\�;�\\�\�\�d\�\� MQk�)\�i��\�\�\�\�Ȉ\�\��\"g\�E2A�\�d�\r@j��\���K�$\�\��Z��g�\�w���\�x\�3\��\�\�Oː�)�`Uoo\����L�Mh6�ԣ\�H#��\ZX��\�G3o�\�\�Y���O�\�\��Vq\��d�I���\�L�H&ȴU���\�\�\�\�\�O���F�P��x�b�\�ǲnyh\�\�76=\�\�y�\�\�f0d�L�ɲ\�{�3���d�-;�]l\0�A��T�GGG=ϲ?ͻ��/\�>f\�\�!�Ȇ\���\����}}}�+\�!��\�\Z\�LuG�{\�~��W\�T�\�4\�T�!\�\���_O�����\r\rl\0)@�\�p�TKY%\�ϯ��s�yz�V�s\�\��+\�`�=\�\�\�\�M��\0��éת=OV\�OeY<\�T��ī�g\�\�+���\�\\����w\�X\�\ZN&\�\����/��\��_�rՉ�:����/ܐ�󥶶���>�\n�\"�\�\0,B�\�d�޽t\�R��>�uk�o+�\�ͺ\�DSC{{����\\\�k\0�\�p,��\�)��В�u��zF\�t��\�\�G\��~���SC.:\�?��\�7A&�\�S|�\��r\�ؙ_.��S��\�\�\�\�\�+by\r�\"\�\Z�XX��?���o|�\�b\�\'!C~\����U?z�\�s<\';.�\�2mr�\���\���\�G�~��\�عs\�\�X^���3\�E��w\�\�\������{V���P�\�\�&~�\��\����oLNN8\�ߤֽ\�ޅ_ظ\'��\�\�,�X�ZÙԧ�2޾\��\�5�\�o\�=xJ��j4�\�iu\��f\��\�\�?\�\�����|���KՏrQ\�Ǘ�Ò�\�nll8��\\��4�\�\��\�Pk8�$sdd��\������\�n��aC�\\��ؕ\�?s��y�\�\���{\Z\��\�D���o�+\'\Z&7�PR�h\�-uu�n�[�N��Z0��3y�^�\�\�\�\�}\�s�z�3�\��R{n��_ߨS\'ڂgʿ;\��\�\�\�iu~��\�\�\�9!g\�d\���\�?t�\�\�r\�\�ɕ\�U\��\�8\r��3��;;;\�Y�\�-\�8pf\��\�g�tO\�9\�-\�[ԉ�3�\�d�u��Q���\�L9Sv~��\��\�����Y�N�t���\�4\�\Z\�$\�\Z\Z\�\�\��\�ϔ�\�\�\�\�$�\��o\�\�i�c��Ǣ�\�E\�\���sԙU���~�\��M\�s��=����}MMMrur�\�\Z�\�5�)�\�4\�\�=�q\�\rW\�ưO�~�<����ub\�\�\r�ՙ��W.=�!t?2��q�\�z߾Jj\r�:\�\Z\���=>[��_eOo���j�Xe{\�NoT��ӁT_\�s啐\��ݰ\�W\�^p�\��ĉ\�\Z�E�5�)X\���\�ʭ�RObW��\�o�\�VO�\�sM>\r��or���BNl��\�[t=�`)j\rg\n\��\�̛�����\�`k\�{\�b�c|~Ȑ�?��\r�	`)j\rg\n\�z�\�>�us\�Ƿ\�\�\n�>?y~]䴝u��\�\�\�\�Ѭ[��?UUU\�\Z�u�5�)�	��\�2\�}��\'74\\���\�\'�\��\�K+\Z�:*&7��\�*W�D�B���i\�\�\�\�\�������\0\�Pk8S�\�Q\\.\�/3��\�{�7�%��/\r�ɯ#\�\r�4\�\��w��\\$\�\�n�q\�Ν9t\�ߎ�:\�\Z\��\�Q�۽b\�C��\�\�c0�W=>����+?�/\r�����o�\�	l8\��#\�R\�N>~\�\�\�\�\�\�\�\�\�\��\�Q\0֡\�p�\�_�8�|C\�\�G2o���fG؟\�<y\�Oa��)L�9\'������3�XSv�H\�7��n۷o_cc#\��u�5�)�3���N�>�������\�ʆ�\�і��3ݣgzd����m\�S�[|���.=\�\�\�\�DM��3�\�Rٸ\��nX��\�ݻw>|���	�R\�\Z�%k\�K�.����;w���a麟<�\�Α\�~o\�G\�ȩ\'^�}\�o߾]ֲs�\n�\"�:\�\0�@�\�X�\�k�\�U[[���\�=��X�>;�T?��΅o|w\�֭{�\�\�\�\�YX�����\����@{{{SSS\�\�r�����Nl�Ϊz�M6�\�e\'\�vn*++����\�\�\�\�*XX�����\��ŋ���\�\�ڎ?~\���\�u?���/\�>6\�Z\�&��l�e˖ݻwˮd��[ٹ\\k\0֡\�p8Y�y<�����g\�666JesK�{4떇�\�~c\�\�͝�#-d�L�M\�mn\�֭����Ȯd��[ٹ\\k\0֡\�p8Y\�Os\r\r\ruwwK_eA\\]]�\�\��M�?����.��\�����~Q�o\��\�O��d\�	�QΔ�d�L�\�\�[6o߾}Ϟ=��\�Dv%;�ݪOm��`j\r\�\r�,�\�\�ښ��jkk�\�۷{�\�\�\�\��\��\����\�x\�3\��\�\�Oː�)Ʉ\�\�b\�L�MdC\�\\v\"�\"\�\0R�Z#-�\��x���\�\�\�].WCC\�\�Ç%�\�\�\�;w\�,--�$����\��\��(g\�E2A�\�d\�D6�\�e\'�+R\r 5�5҅\n�\�\�\�ŋ���Ν;w��\�\�\�ƺ��C�\�߿���j_�QΔ�d�L�ɲ�l(�\�N\�kդ\Z@\nPk�\����K�.\r���Kzϟ?\�v�e\�\�\�\�\�\�w\�O��3\�\"� \�d�l\"\�\�R\r e�5\�ND�e�\�\�\�\�\�\�\�\�\�\�EΔ�d�L�\�\0t�\�HS�f������x<��P9S.�	2�NЅZC����\��PƓ�\�a\��C\�Q\�^�w<�H͡\�\0t�\�\�#�\�1\�4f�\�x%��\�\�R)�L~5\00�F�E\�\�8�1[sWɬ\�\�\�\'TNNN�\�~%\0��\�L%�4��V=6�����\�\�D�Z�!j���v��\�\��K�\�1^[\'\\�G�\�\0l�ZcFb.R�y.:\�\'�>��\�$\�֫V�\�\�\�686\0H=j����\�t��.�\�\�Z\'ܛ���\�v�c^\0�Pk\�\�Tks��d�		�	�Uh\��ej\r���5fʬZ\�xW\�s\"��	\�Sk\06D�a�\�\�l¾F?n�\��L��\�ɭ����O�>m|�\0�b\�\Z�\��\�\�3\�\� �ɬ˓Y[���\�\�\�\'�\�\0@*Pk �`C\�\ZC�\����\�\�\�\�>\n\0C��0~��\0\�Pk �`C\�\ZC�\��\�TUU���\�>\n\0C��0���%%%��\0\�Pk �`C\�\ZC�\��\�444l޼Y�Q\0@j\r�q�\�yyy��\0\�Pk �`C\�\ZC�\��;wnݺu��\0\�Pk `��\�\�V�^���\0��Z��޶m[aa�\�\0j\r\\�p!33S�zٲe���n�[�A��&�Z�Jպ�����\��&\�\�\�/]�Tպ��F�\�\0@\0�\�dggK�srr\�\�\�u\0Pk LYY�\�z׮]�\0&Qk �,�333���t\0L�\�\0\0\��\0�\�5\0\0vG�\0�;j\r\0�\�Qk\0\0\�Z#u&&.\�8\��rI\�\��2>5-cJcNv�\�nO,�vyF��\�O\0�C��\n�ã\�m>|\�<\��s\�x`�^W\�\��@*PkX.�\�5ka�\ṋYŋ�\�\�n�DFߠ�\�\�eF�C\�n�\�>|f\�\'s_.���\�}�����\"OT]�㍝���ڃ\�\�\�>8o\�u\�\��VY\��\�{���5,�R-뿕\�\'�\�͑C�\�\��Ym�\��Z\�*�\�.�j)���9xԷ��\Z�\�|X�}�*\�\Z�8\�\�Q	Y[٬�g��\';\�Q�\�\�u�=�\�y\0��ְ�z��7˴�,M\�⭵\��p\��<\0KPk�\�3\�UK=\�V��\�7\�UOf9\��\Zp j\r�׹\�:O{\�\�j<�^�\�\�K�\�\����Z\�|��}\�\�*�\���\Z\�i����eź\�\0\�\�0��\�\�\n�\�\�\�?*7�����\�\0\�\�0ߍ/n�l4�jX�\r�v\��?\0�Qk�O}�_,J���Z\�|�\�\�ӕ�C\��\�\0\�\�0��\�\0\�E�a>jM���Z\�|ԚZ0����5�`.j\r�Qkj\r�\\\�\Z\�\�[\�s\�O�2��\���\�ި5�i�\�0�}j�0\�ѦTtuQ���\�\0��Z\�|�jK\�|\�ly\�]%�a\�\�\0,B�a>;��\r�L\�\�-�Y[�����\�\�xm�\��\�u\��:�`\"j\r�i�u�OV\'|&<�Ӭ�X�Z\�|\Z_��׸�&\�:\�ި5��\�0��g£㝰\�\�?]h\�kj\r8���\�Vk��&SV\�m��O���Z\�|v�uh�\�MK8\'a�\�tM���Z\�|6��u\�3\�\� �ɬ\�Y[������pj\r�\\\�\Z\�\�\�\Z���5\�G��5\0sQk��ZSk\0\�\�0��\�\0\�E�a>jM���Z\�|ԚZ0����5�`.j\r�\�Z�/\�hj\�^�t\�\�}�0���\�d�H3*Ovj�W�\r�ٯ]����`>j\r�ݷv�dcme��z�\�8\�\�#7�\�%E�\�\0\�\�0ߛ\'$�\�\�\���\Z��\�\�\�>?�J���|\�\Z\�k\�\Z�l\\�d��ˣ�a\�3n\�*��}Ǳ6\��?\0�QkX⮷ʤ�\�xP{\�\�d�{�%7����G��\�|\0\�ְD]k�Z^j\�\�^2Ǐ��Q�n�7+N\�\�X�Z\�*�i��\�\�7�|���o\�;wE�\�\�s�K&&t\�\�\0�A�aϨW}�k����\�~\�Us\�U�J���[�u\�\�\0�B�a!W\�\�ˊՇ�W��\�\�6���\Z�z\\n޺�=�\�m\0�ְ�\�w��\�\�j��xk-�d\�p4�����z�y<Ī\Zp<j\r\�ML\\.=\�&�VuQC-\nS\Zѷ\�\�\�j Pk��D���{~~��\�vAރ\��T����>�5\0\0vG�\0�;j\r\0�\�Qk\0\0\�Z������E��99T�ג\�\���(	&tZ\�m�\�uZ�Y���v��q]���q��\\���Sk\0W5j���\�\�S���\�\�\�[\��17O�C�\�G?2H�\�%%%	\�\0@*Q\�\��\��y\"^&\��/f��\�\�\�\Z\\���d�6\��>��Ui\Z9���\0\r�z\"\�>���\�S�u\��cn��Wk\�\�%�\0\0�>��\�\'^e�����cм\�4\�Z�T\�x\Z\�1~ ��Sk\0vC��Jb�MV��\�e�Q\�\��Ou��\'b\�8\��ip�\0\0��\�W�\�\�:\�阻J\�@\�\�F��	s�>\�\�\�h\rv\06A��Jӫu<��^\�ܧ�\�\�\�O�,B�5>�x�\'<ڄ\0\0\�Q\�Ut��oL2��\�q�c�5��\�$<\���w�\0\0�A�\�Q2\�l\'L`�ǋ}2\�\�>>��]�5��\Z�\"Qk\0vC��H\�\Z�\�Pk �`7\�\Z�D�\�\r�\"Qk\0vC��H\�\Z�\�Pk �`7\�\Z�D�\�\r�\"Qk\0vC��H\�\Z�\�Pk �`7\�\Z�D�\�\r�\"Qk\0vC��H\�\Z�\�Pk �`7\�\ZX�|y\�_\�^�z�\�\0j\r��z۶m����\n\0|�5p\�\�\�L�\�e˖\�\�\�\�n\�\0>\�\Z��j\�*U뢢\"�`\�\Z�T__�t\�RU뚚\Z݇\0\�\Z���-�\�\�\�\�},\0@��0eeeR\�]�v\�>\0�D��0��\�\�\�\Z\Z\�} \00�Z\0`w\�\Z\0\0��\�\0\0\��\0�\�5\0\0vG�\0�;j�����\�h\�\�%�sW�\��\����i�9\�%r\�=Ux��\�\��\�W���\�z�G�\�|�\�y\�S\������\�A\��0\0\�QkX+�\�5ka�J˭Yŋ�\�\�n�DFߠ�\�\�e\�T���^\�},��\�5O\�\\R;1���`%j\r�H?�*<��r\�;\�[���\�a��}pޚ=\��뭲\�\�Q\��9\0�PkXE�ZV~+\�Oh���,�ի�\�f�\r8��%�]*\�\�\�=s��o\�W/7<���\�{�%�5\�w�ϣⱶ�Y{\�\�dT�\�\�Fr�׵�\����Z\�|\�9�\�,\�ް�\Z��֪\�\�u\��\0\�G�a2ϨW-�x[Y�GߠW=�q\�,\�k�i�5LV\\\�V+<\��J\��\�{Ur\�/\�V��\0�Qk�l~�/Y��\�ӕ�\��#mr\�߶�X��\0&�\�0��\�\�\n�et�ʍ?ka�\��\0LF�a�_\�(�hjԞ��\�M��\00��\�\�Wk�Ţ\�\Z���5L�j�=Zi;\�\��\0�Qk��ZSk\0��\�0��\�\0LG�a2jM���Z\�dԚZ0��ɨ5�`:j\r�Qkj\r�t\�\Z&�\�\�\Z�\�5L6�Zϝ;7\�E\�\'bN���$9!8gn��:-\�\�\Z\0��ɦQ\�%��i\�z\ZוL���\�\���Z0F�a�\�\�:\�=�R���j�  \�\�\r�k0?�G\�\Z@<\�\Z&\��Lx�L\�\�_\�H/��	�����i�\�\0Pk�lz����\0\r�z\"\�>���i\�:t�1����ī��\�B��4G�a�i\�:\�\�H\'�\�$\�7�Z\�\�\�`��j\r�\0��\�,Z[\'�BM?�Uu���N�A���\�\0�A�a2�\�\�S�u�ߩ\�:�0G\�3\�Z��Z\�d){\��b\�b\�x\r�L�\�e۠��\�b\\k�\�\�\Z@2�5L������ո\�1�\ZzQ�N�񃉘�NXtj\r j\r�YT눘Ed;a\�8^짺X��pB��@�\�C�a2�\'\\\�ր#Qk��ZSk\0��\�0��\�\0LG�a2jM���Z\�dԚZ0��ɨ5�`:j\r�Qkj\r�t\�\Z&�\�\�\Z�\�5LF��5\0\�Qk��ZSk\0��\�0��\�\0LG�a�Y�M\�ڻ��C\����\00��\�\�d�H-*Ovj\�Vz��]���\0�Qk�쾵{$k+��w+\rǡ���g/)\���\0�ɨ5L�f\�		Ƽ5{��+\r\�⭵r\�\�ϯ\���\0�ɨ5L\�\�5(��\�\�\\w�G{�\�mܚU,7��cm��\00���\�z�L��\��\�+�ƻ\\r�\�Z�qԫ��\0\0�Qk����G-���hoX����Q�n�7+N\����Z\��i��\�\�7�|x\nFߠw\�R��\�d�LL\�\�X�Z\��Q��(\�\�%E���\�{\�\�!�j�jY[�t\r\�\�X�Z\�*�\��[�����,?��j�E5n��\�\�ug{t\�\�\0�B�a!\�%\�<�ǯ\�\"{�\�Z^\�6e4�����z�yTĪ\Zp6j\rkML\\.=\�&�V]QC-\�ѷ\�\�\�j��5RArR|\�=?��N�2�]��\���\�.>��	j\r\0�\�Qk\0\0\�Z\0`w\�\Z\0\0��ֈ-###\�E\�\'bNep-1w�\�̈���B�%\�\0l�Z# f\�bFnڵ�7�`	�\�\�3\�*\0\��F�qƢ׸��Xk��f�� �\�b^i�.))I8\0R�Z;\��\��y\�8\�I^�A�\�\�*\�C�iך�7\0��֎5�\�\�[\�Fg/t~\�x�L�\�9ޚ;� \r\�\�\Z�U�Z;��S�\�[%<}9<\�1\'$y�\�?2�\�\�\�9ƻ2>�x;\0;�֎e� 6\�ĸ�ɯb#�9�_!f�c�jf�`7\�ڱ�W넧c\�*�G\0\�s?Ʉ9�0.��5���v,+\�\�1w�/��\��\�U\�\�\�#�o�ȀZ�JQk\'�\�X�Jf	\�i\�Z\�L���ɬ�\r$yƿ \0\��Fl\�,�#��0�\Z�4zZ\�lǛ�\�U$�\�@#j\rD�\�\0\�Z��5\0��\�@$j\r�n�5�Z�j\rD�\�\0\�Z��5\0��\�@$j\r�n�5�Z�j\rD�\�\0\�Z��5\0��\�@$j\r�n�5�Z�j\rD�\�\0\�Z��5\0��\�@$j\r�n�5�|�򈿄�z�j\�\0>\�\Z(((M��m\�\nu\0�Pk \����*\�˖-\�\�\�u�ݺ\n\0|�50iժU�\�EEE<\r�>�50���~\�ҥ�\�555�\0�5&;;[j���3>>��X\0 �Za\�\�ʤֻv\�\�} \00�ZadI���944��@\0`�\0�\�5\0\0vG�\0�;j\r\0�\�Qk\0\0\�Z\0`w\�\Z)51qy\�Ѷ�Kj\�(���kI�9\�%r�=Ux��\�\��\�\'��F���>����g\�\��{]���\�U\0)B��\n�ծY�Ufn\�*^��vw\�\'2��G.3�\�{m��\�s\�<��rI\�Ą\�{���5�%-y��\�o\�o\�מ=����yk��[���\�z�Gu\�\�\0�E�a-�jY�,?�=r�\�V�,\�j�6\�l\�\Zʯv�TKW��͑���_�\��\�\�ú\�m\0�ְ\��>�\n\�\�\�f\�Us�<\�)��\�v�k\�\�}��\n��U\�s\�w�Y��g���֪\�\�u\�\�\0�B�a	ϨW-�x[Y\nFߠW=�q\�,\�k���5,Q\\\�V�=\�%K��\�{Ur�/\�V���`	j\rK\�\��\�#��^{\�\�d��Mn�ۖ\�\�X�Z\�\�<x+x\�FG��\�\�\�\�\�X�Z\�7��Q\�\�\�>�=c\�3\�t\��\0,A�a	�5[|�(�`\nj\rK�ZkXZ\ru�\�\�X�Z\�ԚZ0��%�5�`\"j\rKPkj\r�D\�\Z��\�\�\Z���5,A��5\0QkX\�\�Zϝ;7\�E\�\'bNep-1w�Μ%\��NK�-��Z\�3�u\�\�Ōܴkm\�~\�K\r�\�\�3�5�dPkXb\�NxiD�T\�\�L�aA��żRj\r`J�5,���p\�$\'y����x�5���ְ\�\�ko���\���\'\�\�3��\�o\�}�qj\r y\�\Z�0�\�	OGDڠ�\�\�:\�G�\�\�s�wE�L	��%R��N~kJ CS��\��~�\�\0��Z\��\\[O�\�\�\�x�I&\�ч�paM�$�Z\�Z^���`��\�x\�L2�1W��&<t�\�\0��Z\�Z\�\Z]\�Z\�L���ɬ�\r$y\�\Z@<\�\Z�HA�#��턙4\�\�8�\�\�bf;ޜd��Z�@�a	�\'<��ZF�a	jM���Z\�ԚZ0��%�5�`\"j\rKPkj\r�D\�\Z��\�\�\Z���5,A��5\0QkX�ZSk\0&�ְ��\�\0LD�a�Y�M\�\��>C\�\�\�y\0��ְĜ\�)G\�\�N\�\rK�!7���t\��\0,A�a��\�\�x��l\�ް4�Zz\����H�=�\�\Z�x�\�\�cޚ=\�3�&c�\�Z��\�\�W\�\�X�Z\�-]��k�\�uwy��,ƭY\�r�\�8֦��`	j\r�\��V��\�\�j/�\�ǻ\\rS\�Z�qԫ�n`	j\r�Ե��\����\�=s�\�\�U\��\�\���U�5,����JEn|q#χ[4��sW�ʍ<\'�dbB��\r�2\�\Z�z\�G�f/)�o\�\�\�6�\rYU�T\�ں�kP��\r�B\�\Z\�ru޺�X}xe�	\�s\�(�q�\'�冭;ۣ�~`-j\r\�y.y\��?~�ً�\��J��GS�\�k���w�ːGB���t@��\n�K��I�Uc\�PKCF�#�\�{��c�V\r�	j�ԑ�q\�ϯ�\�\�\�.\�{p�ނj\�\�\n�\0�\�5\0\0vG�\0�;j\r\0�\�Qk\0\0\�Z\0`w\�\Zi!\�/�G�\�%%%\�\0L��]\�\��G�;�G\0SE�a)�u\�\�\�\0\�Z\�2��>3�\r#vs?\�\Z�ՋZ\�.��|\�9ɜ0\�\�\�\�\�+��2�#\0�Qk\�\��j�n�y����srr�|�\0`%j\r��\�\�\�`+j\r��5l$�\�\�$_�VӢOG̉��Z�!j\r�9w\�ܺu\�t\0��\�@�۝����(\0 �\�Pk\06D��0\�\Z�\rQk LCC\�\�͛u\0��\�@���z��\0��\�@j\r���5�Z�!j\r���\�}\0�Za�5\0�\�@j\r���5�Z�!j\r�)))���\�}\0�Za�5\0�\�@j\r���5f�\�\�\r\r\r��\0\�Pk�g��\�\�V�^���\0 �Z>��޶m[aa�\��\0j\r�\\�p!33S�:+++77\�\�v\�>(\0�\�@��U�T�\�y\��`+\�\Z���_�t�Ժ�����F�\�\0�$j\rL\�\�\�\�\�\��\��0>>��X\0`�&���\��z۶m�\0\�Pk`�,�em\�\�ӣ�@\0 �\0�\�5\0\0vG�\0�;j\r\0�\�Qk`\�D��@��\�Hk*\���z�\�\�\�cQ\�L�H\�!\�\0��\�HS�NK�=�-�\�\Z>�\���;k֫!?�:p���\�\�񌌌\\�tI��fH=j��\�Dz��\�����\�\�~�37^7\\���~��{!\�lo\Z\Z�rK�i6��\�H/�\�R\\Y=/�雾$�\�~\�k�~�Μ�8�\�\'d\�	�Q\�T�\�4��\�?�tuG7[�\����5҈Ju��\��\���\��oX�ś\�?��\�w�/�:\�={\�7\�\�|\�Z\�<�W �\�\��\�w�W~\�\�\�+\�#\�\0R�Z#]�T�}׳{�tw�u_)�\�o��\�{϶\no�m�i�\��M|��\�g\�\�\�\�\�\�500 �l�\r �5\�B0\��\�W��\�o�^{ž��\Z\�>\�+kk_\�?�w{��;::���	6��\�p>�\�*T�\��\�\�G�OM5\�j��:�\�G?S�ޛ_H����\�_�~�\�[��9?��ؙ3\�K�\Zcn�\�w\�\�{\��K7��$\�\0R�Z\�\�$�###Ys�+}͸�74\�lpW�\�\�\�\�\����wޣF�\�OZ�:\�\�\�\�ƌ��\�\�\�m\�nnj\�\�\��k�\�\0�@�\�dja����R\�g>�\���\�\�=~\\\��(W\��\�\r/\�p�T<z�������\�˜w_\�t�\�]]]CCC�.]by\r�\n\�\ZN��\��n����\�o��\�V^��!7�\�n<�\�֧�π���=�����L}[�\�\r�i�5K-����������mi	\�\�J&\�j��[�:\�r�n>x�\�\�\�g\�E�\�k.����c``�\�5\0+Pk8�$SV�9��	j�\�O?1$�I�Z\rY��\�����}\�����!tyM���Zñ\�\�\�\�|�\�$�G\�+语\���[\�_S�{q֔R��{\�N\�6���ڣ\�\�\�}�u_�=X-\�\�\�\�Ρ�!�\�pݿ=\0G�\�p,I\��|�\�_\�ڻ���2t��$|굖5z\�~\�{Ͷ\�\�|�d{{{�\�pݿ=\0G�\�p,�\�{`S�\��\�o\�y~\�N\�عK�C�V�\�	�\�X<��ϕ\��\�\�\��\��=9�pENccc�\�p�jݿ=\0G�\�p&��uŚ�R\�5?��3[������\�4R�ƙ\�\�\�]\��\�\�\�s\\G�u�ݼt\r�\n\�\Z\�$�\��\�\\����>�aC\�\���/�]\����ݕ<P�>r\�\�\�\�\�\�R\�kF���ZÙ\"j\��\�;�c��\�UD��o4�\�\0LD�\�L��^u\�}kk�\�&\��\n\nBw|&�Z���3�Z\�e��L\�ev�8lWY�����A\n�`j\rgR�>�o��׹\�\������i~�\�\���\����s;v?�E�X�ZÙT��{z��\�\�\�\����޷��).݉Z�/�\�+\�\�\��u�5�I}�K©���\��}�\����\�7�3�To}j��[\�j�|-Zͺ���\����}\�\'�\0X�Zñ�^��s\�|\��������pW\�v�繒o|��\�\r���w�V\�#w\�K��\�\�\�Q\0X�Zñ��׿^�t���}ї�.M-�\�o\"��\�\�p\�ؙq�\�	S\�[���\�\��W���\�w\�<|�pSS\�<\n�\"\�\Z��j\���\�^��>󹯶}�a���nl4�@W\�7n?�r��l�?��\�_���\�\�\�:�-f\�\Z�\�5+�\�uׅY���3n��pCct�e56Vd�.\�\�wܭ�$�H^��\�\�X�?�q˿�tU��\�\�:�ip^�`:j\rǒd�\������\�\���\�\�g\�\�\���<�g\�Xk\�\���z|{^�,��=*뎎�\�\�\�\�\Z���5�L\�966&\�]Y�(ܬ>͕�o?n��\�N8��\��\�e��J\�I�z\�:��\�[�����\�CCC]]]{�U�3n�V�\�}SMu{e\�\�\�	�z߾}\�9p�\�-;�b\�\�\Z�\�5N�z=22200\�\�\�)�^���|o:��߯\��\�\�\�\�tz�h�LVo+[�śBS�\�\\&;��\�k\0�\�p8��Vχ���wtt��̸\�\�\�-\����\�\�yg\�hKKt�\�L�H&�\�U���o\�\�M�\�Pv|�Z����E���\�Ͽ{\��/#�I�\�\�(\�\��\�w^��YCː�)�9��\�]�REy�����J\�\Zi!\"؝�����\�\�\�\nW\�~\�\�\�|\��>o-�����Rf�Ν\�=eG�mjj�\�e\'�\Z@jPk��\�`tuu���\������\�����\�-+�(U�q{\�{�\��G�kV�N�%�l(�\�NH5�Ԡ\�H#�`���\r\r���\��X5��\�I)�Q�#!\�9r�LP��MdC\�\\vB���FzQ��})�\�lv{{�����\�\�v�Bȏr�\\$T�ՒZ6���j\0�A��v&�\"�-\r\�\�\�w�u��\�r�\\$dZD�I5�Ԡ\�HS�\�S\�V�Bϔ	2�NЂZ#��-�^�*w9S.Rs\�4\0-�50i\"\�\� \��Ɏ(̢\�\0\0\0\0IEND�B`�',10001,'devicePlan.png'),(20002,0,_binary '�\�\0sr\0(com.maben.dlxm.web.form.ProcessVariables�DS\�\�k\0	L\0\rapplicationIDt\0Ljava/lang/Long;L\0applicationLogonNamet\0Ljava/lang/String;L\0applicationTemplateIDq\0~\0L\0applicationUserIDq\0~\0L\0applicationUserNameq\0~\0L\0	applyTimet\0Ljava/util/Date;L\0pathq\0~\0L\0statusq\0~\0L\0titleq\0~\0xpsr\0java.lang.Long;�\�̏#\�\0J\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0\0\0\0\0t\0zhangsansq\0~\0\0\0\0\0\0\0\0t\0 ff80808177d4279d0177d42e3d8e0004t\0zhangsansr\0java.util.Datehj�KYt\0\0xpw\0\0w\�\�Zxt\0�/Users/maben/Documents/projects/learn/ssh-dlxm/ssh-dlxm/out/artifacts/ssh_dlxm_war_exploded/upload/2021/02/27/83eb9c68-bb6e-4005-a82f-7ecf905555de.doct\01t\08设备费用报销单模板_zhangsan_2021-02-27 07:58:17',NULL,NULL);
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
INSERT INTO `JBPM4_TASK` VALUES (30001,'T',1,'审批【总经理】',NULL,'open',NULL,'wangwu',NULL,0,'2021-02-27 11:48:44',NULL,NULL,_binary '','设备费用报销.20001','审批【总经理】',_binary '\0',NULL,20001,20001,NULL,'审批【总经理】');
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
