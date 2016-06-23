-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	5.7.12-log

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
-- Table structure for table `bdr_student`
--

DROP TABLE IF EXISTS `bdr_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bdr_student` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `grade_id` bigint(20) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='边界-学生信息-仅涉及基础信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bdr_student`
--

LOCK TABLES `bdr_student` WRITE;
/*!40000 ALTER TABLE `bdr_student` DISABLE KEYS */;
/*!40000 ALTER TABLE `bdr_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edu_anouncement`
--

DROP TABLE IF EXISTS `edu_anouncement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `edu_anouncement` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `edu_admin_id` bigint(20) NOT NULL COMMENT '最后一次操作此公告的管理员',
  `path` varchar(45) NOT NULL COMMENT '网页在系统的路径',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edu_anouncement`
--

LOCK TABLES `edu_anouncement` WRITE;
/*!40000 ALTER TABLE `edu_anouncement` DISABLE KEYS */;
/*!40000 ALTER TABLE `edu_anouncement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edu_grade`
--

DROP TABLE IF EXISTS `edu_grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `edu_grade` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `major_id` bigint(20) NOT NULL COMMENT '专业外键',
  `grade` varchar(45) DEFAULT NULL COMMENT '年级自身 如"2013级"',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='年级';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edu_grade`
--

LOCK TABLES `edu_grade` WRITE;
/*!40000 ALTER TABLE `edu_grade` DISABLE KEYS */;
/*!40000 ALTER TABLE `edu_grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edu_school`
--

DROP TABLE IF EXISTS `edu_school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `edu_school` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL COMMENT '学校名',
  `address` varchar(45) DEFAULT NULL,
  `post_code` varchar(45) DEFAULT NULL COMMENT '邮编',
  `status` int(11) DEFAULT NULL COMMENT '-1 禁用 0 正常 1 假期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学校';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edu_school`
--

LOCK TABLES `edu_school` WRITE;
/*!40000 ALTER TABLE `edu_school` DISABLE KEYS */;
/*!40000 ALTER TABLE `edu_school` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eud_major`
--

DROP TABLE IF EXISTS `eud_major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eud_major` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `school_id` bigint(20) NOT NULL COMMENT '学校外键',
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='专业';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eud_major`
--

LOCK TABLES `eud_major` WRITE;
/*!40000 ALTER TABLE `eud_major` DISABLE KEYS */;
/*!40000 ALTER TABLE `eud_major` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `id` bigint(20) NOT NULL,
  `name` varchar(45) DEFAULT NULL COMMENT '姓名',
  `password` varchar(45) DEFAULT NULL COMMENT '密码',
  `status` int(11) DEFAULT NULL COMMENT '-1 禁用 0 离线 1 在线 ',
  `email` varchar(45) DEFAULT NULL COMMENT 'email',
  `telphone` varchar(45) CHARACTER SET big5 DEFAULT NULL COMMENT '手机号',
  `role` int(11) NOT NULL COMMENT '角色 0 管理员 1 家长 2 辅导员',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,'admin','a66abb5684c45962d887564f08346e8d',NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usr_edu_admin`
--

DROP TABLE IF EXISTS `usr_edu_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usr_edu_admin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL COMMENT '用户信息外键',
  `school_id` bigint(20) NOT NULL COMMENT '学校外键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学校管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usr_edu_admin`
--

LOCK TABLES `usr_edu_admin` WRITE;
/*!40000 ALTER TABLE `usr_edu_admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `usr_edu_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usr_par`
--

DROP TABLE IF EXISTS `usr_par`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usr_par` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint(20) NOT NULL COMMENT '用户基础信息表外键',
  `bdr_student_id` bigint(20) NOT NULL COMMENT '边界属性 学生ID not null',
  `name` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL COMMENT '住址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='家长用户信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usr_par`
--

LOCK TABLES `usr_par` WRITE;
/*!40000 ALTER TABLE `usr_par` DISABLE KEYS */;
/*!40000 ALTER TABLE `usr_par` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usr_teacher`
--

DROP TABLE IF EXISTS `usr_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usr_teacher` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL COMMENT '用户信息外键',
  `grade_id` bigint(20) NOT NULL COMMENT '绑定班级外键',
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='辅导员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usr_teacher`
--

LOCK TABLES `usr_teacher` WRITE;
/*!40000 ALTER TABLE `usr_teacher` DISABLE KEYS */;
/*!40000 ALTER TABLE `usr_teacher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-23  9:47:13
