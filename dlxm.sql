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
INSERT INTO `Elec_Popedom` VALUES ('aa','仪器设备管理','device','技术设施维护管理','/aa'),('ab','设备校准检修','device','技术设施维护管理','/ab'),('ac','设备购置计划','device','技术设施维护管理','/ac'),('ad','资料图纸管理','informationAndPaper','技术资料图纸管理','/ad'),('ae','站点基本信息','station','站点设备运行管理','/ae'),('af','运行情况','station','站点设备运行管理','/af'),('ag','维护情况','station','站点设备运行管理','/ag'),('ah','监测台建筑管理','jct','监测台建筑管理','/ah'),('ai','用户管理','sysmng','系统管理','/system/elecUserAction_home.do'),('aj','角色管理','sysmng','系统管理','/system/elecRoleAction_home.do'),('ak','待办事宜','sysmng','系统管理','/system/elecCommonMsgAction_home.do'),('al','数据字典维护','sysmng','系统管理','/system/elecSystemDDLAction_home.do'),('am','审批流程管理','workflow','审批流转','/workflow/elecProcessDefinitionAction_home.do'),('an','申请模板管理','workflow','审批流转','/workflow/elecApplicationTemplateAction_home.do'),('ao','起草申请','workflow','审批流转','/workflow/elecApplicationFlowAction_home.do'),('ap','待我审批','workflow','审批流转','/workflow/elecApplicationFlowAction_myTaskHome.do'),('aq','我的申请查询','workflow','审批流转','/workflow/elecApplicationFlowAction_myApplicationHome.do'),('ba','首页显示','logon','登录','/system/elecMenuAction_home.do'),('bb','标题','logon','登录','/system/elecMenuAction_title.do'),('bc','菜单','logon','登录','/system/elecMenuAction_left.do'),('bd','改变框架','logon','登录','/system/elecMenuAction_change.do'),('be','加载主显示页面','logon','登录','/system/elecMenuAction_loading.do'),('bf','站点运行','logon','登录','/system/elecMenuAction_alermStation.do'),('bg','设备运行','logon','登录','/system/elecMenuAction_alermDevice.do'),('bh','重新登录','logon','登录','/system/elecMenuAction_logout.do'),('ca','保存','commonMsg','代办事宜','/system/elecCommonMsgAction_save.do'),('da','导出设置设置','exportFields','导出设置','/system/elecExportFieldsAction_setExportExcel.do'),('db','导出设置保存','exportFields','导出设置','/system/elecExportFieldsAction_saveSetExportExcel.do'),('ea','编辑','systemDdl','数据字典','/system/elecSystemDDLAction_edit.do'),('eb','保存','systemDdl','数据字典','/system/elecSystemDDLAction_save.do'),('fa','新增','user','用户管理','/system/elecUserAction_add.do'),('fb','保存','user','用户管理','/system/elecUserAction_save.do'),('fc','编辑','user','用户管理','/system/elecUserAction_edit.do'),('fd','删除','user','用户管理','/system/elecUserAction_delete.do'),('fe','验证登录名','user','用户管理','/system/elecUserAction_checkUser.do'),('ff','导出excel','user','用户管理','/system/elecUserAction_exportExcel.do'),('fg','excel导入页面','user','用户管理','/system/elecUserAction_importPage.do'),('fh','excel导入','user','用户管理','/system/elecUserAction_importData.do'),('fi','人员统计','user','用户管理','/system/elecUserAction_chartUser.do'),('ga','编辑','role','角色管理','/system/elecRoleAction_edit.do'),('gb','保存','role','角色管理','/system/elecRoleAction_save.do'),('ha','部署流程定义','applicationProcess','申请流程管理','/workflow/elecProcessDefinitionAction_add.do'),('hb','保存','applicationProcess','申请流程管理','/workflow/elecProcessDefinitionAction_save.do'),('hc','查看流程图','applicationProcess','申请流程管理','/workflow/elecProcessDefinitionAction_downloadProcessImage.do'),('hd','删除流程定义','applicationProcess','申请流程管理','/workflow/elecProcessDefinitionAction_delete.do'),('ia','新增','applicationTemplate','申请模板管理','/workflow/elecApplicationTemplateAction_add.do'),('ib','新增保存','applicationTemplate','申请模板管理','/workflow/elecApplicationTemplateAction_save.do'),('ic','编辑','applicationTemplate','申请模板管理','/workflow/elecApplicationTemplateAction_edit.do'),('id','编辑保存','applicationTemplate','申请模板管理','/workflow/elecApplicationTemplateAction_update.do'),('ie','删除','applicationTemplate','申请模板管理','/workflow/elecApplicationTemplateAction_delete.do'),('ie','下载','applicationTemplate','申请模板管理','/workflow/elecApplicationTemplateAction_download.do'),('ja','提交申请页面','applicationFlow','申请流程管理','/workflow/elecApplicationFlowAction_submitApplication.do'),('jb','提交申请','applicationFlow','申请流程管理','/workflow/elecApplicationFlowAction_saveApplication.do'),('jc','我的申请查询首页','applicationFlow','申请流程管理','/workflow/elecApplicationFlowAction_myApplicationHome.do'),('jd','待我审批首页','applicationFlow','申请流程管理','/workflow/elecApplicationFlowAction_myTaskHome.do'),('je','跳转审批处理页面','applicationFlow','申请流程管理','/workflow/elecApplicationFlowAction_flowApprove.do'),('jf','下载','applicationFlow','申请流程管理','/workflow/elecApplicationFlowAction_download.do'),('jg','审核','applicationFlow','申请流程管理','/workflow/elecApplicationFlowAction_approve.do'),('jh','审核历史','applicationFlow','申请流程管理','/workflow/elecApplicationFlowAction_approvedHistory.do');
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
INSERT INTO `Elec_Role_Popedom` VALUES ('1','aa@ab@ac@ad@ae@af@ag@ah@ai@aj@ak@al@am@an@ao@ap@aq@ba@bb@bc@bd@be@bf@bg@bh@ca@da@db@ea@eb@fa@fb@fc@fd@fe@ff@fg@fh@fi@ga@gb@ha@hb@hc@hd@ja@jb@jc@jd@je@jf@jg@jh@ia@ib@ic@id@ie@ie',NULL,NULL,NULL,NULL),('2','ai@aj@ak',NULL,NULL,NULL,NULL),('3','ai@ak@al@ba@bb@bc@bd@be@bf@bg@ca@ea@eb@fb@fc',NULL,NULL,NULL,NULL);
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
INSERT INTO `Elec_SystemDDL` VALUES (1,'建筑类型',1,'基建'),(2,'建筑类型',2,'基改'),(3,'建筑类型',3,'生活用房'),(4,'建筑类型',4,'道路'),(11,'设备类型',1,'电力设备dd'),(12,'设备类型',2,'天线设备'),(13,'设备类型',3,'通讯设备'),(14,'设备类型',4,'防雷设备'),(15,'设备类型',5,'办公设备'),(16,'设备类型',6,'电视机房设备'),(17,'设备类型',7,'广播机房设备'),(20,'设备状态',3,'维修'),(21,'所属单位',1,'540'),(22,'所属单位',2,'560'),(23,'所属单位',3,'成都台'),(24,'所属单位',4,'厦门台'),(25,'所属单位',5,'553台'),(26,'项目级别',1,'一级'),(27,'项目级别',2,'二级'),(28,'项目级别',3,'三级'),(29,'项目级别',4,'四级'),(30,'项目类型',1,'技改'),(31,'项目类型',2,'基建'),(32,'故障类型',1,'工控机'),(33,'故障类型',2,'接收机'),(34,'故障类型',3,'通讯'),(35,'故障类型',4,'供电'),(36,'故障类型',5,'天线'),(37,'站点类别',1,'国内遥控站'),(39,'站点类别',3,'国内采集点'),(40,'所属单位',6,'201台'),(41,'所属单位',7,'202台'),(42,'所属单位',8,'203台'),(43,'所属单位',9,'哈尔滨台'),(44,'所属单位',10,'西安台'),(45,'故障类型',6,'测量板卡'),(46,'所属单位',11,'中心'),(47,'故障类型',7,'设备'),(48,'故障类型',8,'网络'),(49,'站点类别',4,'国内'),(50,'所属单位',12,'北京台'),(51,'站点类别',5,'国外'),(52,'站点类别',2,'海外遥控站'),(57,'图纸类别',1,'国内图书'),(58,'图纸类别',2,'香港图书'),(59,'所属单位',13,'海南台'),(60,'项目级别',5,'五级'),(61,'项目级别',6,'六级'),(64,'是否在职',1,'是'),(65,'是否在职',2,'否'),(8,'岗位类型',4,'总经理'),(9,'岗位类型',5,'部门经理'),(10,'岗位类型',6,'员工'),(5,'角色类型',1,'系统管理员'),(6,'角色类型',2,'高级管理员'),(7,'角色类型',3,'中级管理员'),(8,'角色类型',4,'业务用户'),(9,'角色类型',5,'一般用户'),(10,'角色类型',6,'普通用户'),(66,'性别',1,'男'),(67,'性别',2,'女'),(68,'性别',3,'不男不女');
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
INSERT INTO `Elec_User` VALUES ('1','1','test','test','202CB962AC59075B964B07152D234B70','1','2021-02-14 00:00:00','111','13700000000','1647123441@qq.com','13800000000','1','2021-02-14 00:00:00',NULL,'remark',NULL,NULL,NULL,NULL,'2021-02-16'),('ff808081779fb13b01779fb27b8e0002','4','2大人','2','202CB962AC59075B964B07152D234B70','1','2021-02-14 00:00:00','123','13700000000','1@qq.com',NULL,'1','2021-02-15 00:00:00',NULL,'111123',NULL,NULL,NULL,NULL,'2021-02-16'),('ff80808177a9b7f60177a9cd50750001','2','我最大','admin','E10ADC3949BA59ABBE56E057F20F883E','1','2021-02-16 00:00:00','123','','',NULL,'1',NULL,NULL,'超级管理员',NULL,NULL,NULL,NULL,'2021-02-16');
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
INSERT INTO `Elec_User_Role` VALUES (5,'ff80808177a9b7f60177a9cd50750001','1',NULL,NULL,NULL),(10,'ff808081779fb13b01779fb27b8e0002','3',NULL,NULL,NULL);
/*!40000 ALTER TABLE `Elec_User_Role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-17 14:16:24
