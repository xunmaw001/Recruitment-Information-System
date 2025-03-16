-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspm545m0
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615277004961 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (111,'2021-03-09 07:36:37',1,1,'提问1','回复1',1),(112,'2021-03-09 07:36:37',2,2,'提问2','回复2',2),(113,'2021-03-09 07:36:37',3,3,'提问3','回复3',3),(114,'2021-03-09 07:36:37',4,4,'提问4','回复4',4),(115,'2021-03-09 07:36:37',5,5,'提问5','回复5',5),(116,'2021-03-09 07:36:37',6,6,'提问6','回复6',6),(1615277004960,'2021-03-09 08:03:24',1615276701331,NULL,'‍请问线下招聘会到什么时候结束\r\n','5月9日\r\n',0);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspm545m0/upload/1615276364034.jpg'),(2,'picture2','http://localhost:8080/jspm545m0/upload/1615275673688.jpg'),(3,'picture3','http://localhost:8080/jspm545m0/upload/1615275681904.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussqiyexinxi`
--

DROP TABLE IF EXISTS `discussqiyexinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussqiyexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615276886829 DEFAULT CHARSET=utf8 COMMENT='企业信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussqiyexinxi`
--

LOCK TABLES `discussqiyexinxi` WRITE;
/*!40000 ALTER TABLE `discussqiyexinxi` DISABLE KEYS */;
INSERT INTO `discussqiyexinxi` VALUES (151,'2021-03-09 07:36:37',1,1,'用户名1','评论内容1','回复内容1'),(152,'2021-03-09 07:36:37',2,2,'用户名2','评论内容2','回复内容2'),(153,'2021-03-09 07:36:37',3,3,'用户名3','评论内容3','回复内容3'),(154,'2021-03-09 07:36:37',4,4,'用户名4','评论内容4','回复内容4'),(155,'2021-03-09 07:36:37',5,5,'用户名5','评论内容5','回复内容5'),(156,'2021-03-09 07:36:37',6,6,'用户名6','评论内容6','回复内容6'),(1615276886828,'2021-03-09 08:01:26',1615276572836,1615276701331,NULL,'很不错的企业',NULL);
/*!40000 ALTER TABLE `discussqiyexinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusszhaopinxinxi`
--

DROP TABLE IF EXISTS `discusszhaopinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusszhaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8 COMMENT='招聘信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusszhaopinxinxi`
--

LOCK TABLES `discusszhaopinxinxi` WRITE;
/*!40000 ALTER TABLE `discusszhaopinxinxi` DISABLE KEYS */;
INSERT INTO `discusszhaopinxinxi` VALUES (161,'2021-03-09 07:36:37',1,1,'用户名1','评论内容1','回复内容1'),(162,'2021-03-09 07:36:37',2,2,'用户名2','评论内容2','回复内容2'),(163,'2021-03-09 07:36:37',3,3,'用户名3','评论内容3','回复内容3'),(164,'2021-03-09 07:36:37',4,4,'用户名4','评论内容4','回复内容4'),(165,'2021-03-09 07:36:37',5,5,'用户名5','评论内容5','回复内容5'),(166,'2021-03-09 07:36:37',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusszhaopinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusszhaopinzixun`
--

DROP TABLE IF EXISTS `discusszhaopinzixun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusszhaopinzixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615276861202 DEFAULT CHARSET=utf8 COMMENT='招聘资讯评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusszhaopinzixun`
--

LOCK TABLES `discusszhaopinzixun` WRITE;
/*!40000 ALTER TABLE `discusszhaopinzixun` DISABLE KEYS */;
INSERT INTO `discusszhaopinzixun` VALUES (141,'2021-03-09 07:36:37',1,1,'用户名1','评论内容1','回复内容1'),(142,'2021-03-09 07:36:37',2,2,'用户名2','评论内容2','回复内容2'),(143,'2021-03-09 07:36:37',3,3,'用户名3','评论内容3','回复内容3'),(144,'2021-03-09 07:36:37',4,4,'用户名4','评论内容4','回复内容4'),(145,'2021-03-09 07:36:37',5,5,'用户名5','评论内容5','回复内容5'),(146,'2021-03-09 07:36:37',6,6,'用户名6','评论内容6','回复内容6'),(1615276861201,'2021-03-09 08:01:00',1615276323486,1615276701331,NULL,'rgrty',NULL);
/*!40000 ALTER TABLE `discusszhaopinzixun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615276974786 DEFAULT CHARSET=utf8 COMMENT='论坛表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (121,'2021-03-09 07:36:37','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(122,'2021-03-09 07:36:37','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(123,'2021-03-09 07:36:37','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(124,'2021-03-09 07:36:37','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(125,'2021-03-09 07:36:37','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(126,'2021-03-09 07:36:37','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1615276956456,'2021-03-09 08:02:36','面试成功的六要素','<p>面试成功的六要素</p>\n<p>1）JKGFGHF</p>\n<p>2)FGDGJTGFHTF</p>',0,1615276701331,'5','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gangweifenlei`
--

DROP TABLE IF EXISTS `gangweifenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gangweifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gangweifenlei` varchar(200) NOT NULL COMMENT '岗位分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gangweifenlei` (`gangweifenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1615276337507 DEFAULT CHARSET=utf8 COMMENT='岗位分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gangweifenlei`
--

LOCK TABLES `gangweifenlei` WRITE;
/*!40000 ALTER TABLE `gangweifenlei` DISABLE KEYS */;
INSERT INTO `gangweifenlei` VALUES (51,'2021-03-09 07:36:37','岗位分类1'),(52,'2021-03-09 07:36:37','岗位分类2'),(53,'2021-03-09 07:36:37','岗位分类3'),(54,'2021-03-09 07:36:37','岗位分类4'),(55,'2021-03-09 07:36:37','岗位分类5'),(56,'2021-03-09 07:36:37','岗位分类6'),(1615275633958,'2021-03-09 07:40:33','运营'),(1615276337506,'2021-03-09 07:52:17','人事');
/*!40000 ALTER TABLE `gangweifenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gerenjianli`
--

DROP TABLE IF EXISTS `gerenjianli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gerenjianli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `jiaoyujingli` varchar(200) DEFAULT NULL COMMENT '教育经历',
  `gongzuojingli` longtext COMMENT '工作经历',
  `gongzuoyeji` longtext COMMENT '工作业绩',
  `jineng` varchar(200) DEFAULT NULL COMMENT '技能',
  `ziwopingjia` varchar(200) DEFAULT NULL COMMENT '自我评价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615277069437 DEFAULT CHARSET=utf8 COMMENT='个人简历';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gerenjianli`
--

LOCK TABLES `gerenjianli` WRITE;
/*!40000 ALTER TABLE `gerenjianli` DISABLE KEYS */;
INSERT INTO `gerenjianli` VALUES (91,'2021-03-09 07:36:37','用户名1','姓名1','http://localhost:8080/jspm545m0/upload/gerenjianli_zhaopian1.jpg','联系电话1','邮箱1','教育经历1','工作经历1','工作业绩1','技能1','自我评价1'),(92,'2021-03-09 07:36:37','用户名2','姓名2','http://localhost:8080/jspm545m0/upload/gerenjianli_zhaopian2.jpg','联系电话2','邮箱2','教育经历2','工作经历2','工作业绩2','技能2','自我评价2'),(93,'2021-03-09 07:36:37','用户名3','姓名3','http://localhost:8080/jspm545m0/upload/gerenjianli_zhaopian3.jpg','联系电话3','邮箱3','教育经历3','工作经历3','工作业绩3','技能3','自我评价3'),(94,'2021-03-09 07:36:37','用户名4','姓名4','http://localhost:8080/jspm545m0/upload/gerenjianli_zhaopian4.jpg','联系电话4','邮箱4','教育经历4','工作经历4','工作业绩4','技能4','自我评价4'),(95,'2021-03-09 07:36:37','用户名5','姓名5','http://localhost:8080/jspm545m0/upload/gerenjianli_zhaopian5.jpg','联系电话5','邮箱5','教育经历5','工作经历5','工作业绩5','技能5','自我评价5'),(96,'2021-03-09 07:36:37','用户名6','姓名6','http://localhost:8080/jspm545m0/upload/gerenjianli_zhaopian6.jpg','联系电话6','邮箱6','教育经历6','工作经历6','工作业绩6','技能6','自我评价6'),(1615276495788,'2021-03-09 07:54:55','1','陈一','http://localhost:8080/jspm545m0/upload/1615276443068.jpg','13812312312','1233@qq.com','仲恺农业工程学院本科毕业','经销商担任品牌主管','开拓很多潜在客户\r\n','熟练使用办公软件，擅长数据分析','学习能力强'),(1615277069436,'2021-03-09 08:04:28','5','张明','http://localhost:8080/jspm545m0/upload/1615277028900.jpg','13812345678','456@qq.com','中山大学研究生','大学兼职\r\n','JGDFHGTF\r\n','计算机软件','性格开朗');
/*!40000 ALTER TABLE `gerenjianli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qiye`
--

DROP TABLE IF EXISTS `qiye`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qiye` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyezhanghao` varchar(200) NOT NULL COMMENT '企业账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `qiyeyouxiang` varchar(200) DEFAULT NULL COMMENT '企业邮箱',
  `qiyedizhi` varchar(200) DEFAULT NULL COMMENT '企业地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qiyezhanghao` (`qiyezhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615276520592 DEFAULT CHARSET=utf8 COMMENT='企业';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qiye`
--

LOCK TABLES `qiye` WRITE;
/*!40000 ALTER TABLE `qiye` DISABLE KEYS */;
INSERT INTO `qiye` VALUES (31,'2021-03-09 07:36:37','企业1','123456','企业名称1','http://localhost:8080/jspm545m0/upload/qiye_touxiang1.jpg','联系人1','13823888881','773890001@qq.com','企业地址1'),(32,'2021-03-09 07:36:37','企业2','123456','企业名称2','http://localhost:8080/jspm545m0/upload/qiye_touxiang2.jpg','联系人2','13823888882','773890002@qq.com','企业地址2'),(33,'2021-03-09 07:36:37','企业3','123456','企业名称3','http://localhost:8080/jspm545m0/upload/qiye_touxiang3.jpg','联系人3','13823888883','773890003@qq.com','企业地址3'),(34,'2021-03-09 07:36:37','企业4','123456','企业名称4','http://localhost:8080/jspm545m0/upload/qiye_touxiang4.jpg','联系人4','13823888884','773890004@qq.com','企业地址4'),(35,'2021-03-09 07:36:37','企业5','123456','企业名称5','http://localhost:8080/jspm545m0/upload/qiye_touxiang5.jpg','联系人5','13823888885','773890005@qq.com','企业地址5'),(36,'2021-03-09 07:36:37','企业6','123456','企业名称6','http://localhost:8080/jspm545m0/upload/qiye_touxiang6.jpg','联系人6','13823888886','773890006@qq.com','企业地址6'),(1615276520591,'2021-03-09 07:55:20','2','2','香雪制药','http://localhost:8080/jspm545m0/upload/1615276538452.jpg','张雪','13812312312','12@qq.com','梅州');
/*!40000 ALTER TABLE `qiye` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qiyexinxi`
--

DROP TABLE IF EXISTS `qiyexinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qiyexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `qiyeleixing` varchar(200) DEFAULT NULL COMMENT '企业类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `yuangongrenshu` varchar(200) DEFAULT NULL COMMENT '员工人数',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `qiyeyouxiang` varchar(200) DEFAULT NULL COMMENT '企业邮箱',
  `qiyejieshao` longtext COMMENT '企业介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615276572837 DEFAULT CHARSET=utf8 COMMENT='企业信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qiyexinxi`
--

LOCK TABLES `qiyexinxi` WRITE;
/*!40000 ALTER TABLE `qiyexinxi` DISABLE KEYS */;
INSERT INTO `qiyexinxi` VALUES (41,'2021-03-09 07:36:37','企业账号1','企业名称1','国有企业','http://localhost:8080/jspm545m0/upload/qiyexinxi_tupian1.jpg','20人以下','联系人1','联系方式1','企业邮箱1','企业介绍1'),(42,'2021-03-09 07:36:37','企业账号2','企业名称2','国有企业','http://localhost:8080/jspm545m0/upload/qiyexinxi_tupian2.jpg','20人以下','联系人2','联系方式2','企业邮箱2','企业介绍2'),(43,'2021-03-09 07:36:37','企业账号3','企业名称3','国有企业','http://localhost:8080/jspm545m0/upload/qiyexinxi_tupian3.jpg','20人以下','联系人3','联系方式3','企业邮箱3','企业介绍3'),(44,'2021-03-09 07:36:37','企业账号4','企业名称4','国有企业','http://localhost:8080/jspm545m0/upload/qiyexinxi_tupian4.jpg','20人以下','联系人4','联系方式4','企业邮箱4','企业介绍4'),(45,'2021-03-09 07:36:37','企业账号5','企业名称5','国有企业','http://localhost:8080/jspm545m0/upload/qiyexinxi_tupian5.jpg','20人以下','联系人5','联系方式5','企业邮箱5','企业介绍5'),(46,'2021-03-09 07:36:37','企业账号6','企业名称6','国有企业','http://localhost:8080/jspm545m0/upload/qiyexinxi_tupian6.jpg','20人以下','联系人6','联系方式6','企业邮箱6','企业介绍6'),(1615276572836,'2021-03-09 07:56:12','2','香雪制药','控股企业','http://localhost:8080/jspm545m0/upload/1615276551711.jpg','500人以上','张雪','13812312312','12@qq.com','广州市香雪制药股份有限公司（股票代码：300147）是一家中药现代化的领军企业和广东省高新技术企业，我司先后在广东、北京、山西、四川、重庆、安徽、云南和宁夏等地设立60多家分子公司，并投资兴建大规模的GMP、GAP基地，形成了新型大中药健康产业，在中国创造就业职位一万余个。\r\n');
/*!40000 ALTER TABLE `qiyexinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615276894738 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1615276829519,'2021-03-09 08:00:28',1615276701331,1615276323486,'zhaopinzixun','线下招聘会','http://localhost:8080/jspm545m0/upload/1615276313113.jpg'),(1615276879670,'2021-03-09 08:01:19',1615276701331,1615276572836,'qiyexinxi','香雪制药','http://localhost:8080/jspm545m0/upload/1615276551711.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','8yb52e4c0gu5klei54v23n0v5p059a1v','2021-03-09 07:39:12','2021-03-09 09:07:05'),(2,1615275704133,'1','yonghu','用户','ff5e2tl8l2f3lkinmsho02xrh8hp1qif','2021-03-09 07:41:49','2021-03-09 08:41:49'),(3,1615275871090,'2','qiye','企业','cchjrflon36u1qoonbi8hgd4w9kv27ha','2021-03-09 07:44:35','2021-03-09 08:44:36'),(4,1615276416471,'1','yonghu','用户','17a69shvsexdw3d34swnwolh6kit6bio','2021-03-09 07:53:41','2021-03-09 09:04:55'),(5,1615276520591,'2','qiye','企业','ivgzcfomyhbtm0pspb97kry5rao4mg3z','2021-03-09 07:55:25','2021-03-09 09:06:24'),(6,1615276701331,'5','yonghu','用户','g0gxf56ci95dpewfab5p9afz0xbluti9','2021-03-09 07:59:20','2021-03-09 09:06:50');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-09 07:36:37');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xingyelingyu`
--

DROP TABLE IF EXISTS `xingyelingyu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xingyelingyu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xingye` varchar(200) NOT NULL COMMENT '行业',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xingye` (`xingye`)
) ENGINE=InnoDB AUTO_INCREMENT=1615276345595 DEFAULT CHARSET=utf8 COMMENT='行业领域';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xingyelingyu`
--

LOCK TABLES `xingyelingyu` WRITE;
/*!40000 ALTER TABLE `xingyelingyu` DISABLE KEYS */;
INSERT INTO `xingyelingyu` VALUES (61,'2021-03-09 07:36:37','行业1'),(62,'2021-03-09 07:36:37','行业2'),(63,'2021-03-09 07:36:37','行业3'),(64,'2021-03-09 07:36:37','行业4'),(65,'2021-03-09 07:36:37','行业5'),(66,'2021-03-09 07:36:37','行业6'),(1615275645872,'2021-03-09 07:40:45','制药'),(1615276345594,'2021-03-09 07:52:25','银行');
/*!40000 ALTER TABLE `xingyelingyu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yingpinxinxi`
--

DROP TABLE IF EXISTS `yingpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yingpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `gangweimingcheng` varchar(200) DEFAULT NULL COMMENT '岗位名称',
  `gangweizhize` varchar(200) DEFAULT NULL COMMENT '岗位职责',
  `shangbandidian` varchar(200) DEFAULT NULL COMMENT '上班地点',
  `shangbanshijian` varchar(200) DEFAULT NULL COMMENT '上班时间',
  `xinzidaiyu` varchar(200) DEFAULT NULL COMMENT '薪资待遇',
  `shenqingriqi` date DEFAULT NULL COMMENT '申请日期',
  `gerenjianli` varchar(200) DEFAULT NULL COMMENT '个人简历',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615276915093 DEFAULT CHARSET=utf8 COMMENT='应聘信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yingpinxinxi`
--

LOCK TABLES `yingpinxinxi` WRITE;
/*!40000 ALTER TABLE `yingpinxinxi` DISABLE KEYS */;
INSERT INTO `yingpinxinxi` VALUES (81,'2021-03-09 07:36:37','企业账号1','企业名称1','岗位名称1','岗位职责1','上班地点1','上班时间1','薪资待遇1','2021-03-09','','用户名1','姓名1','联系电话1','是',''),(82,'2021-03-09 07:36:37','企业账号2','企业名称2','岗位名称2','岗位职责2','上班地点2','上班时间2','薪资待遇2','2021-03-09','','用户名2','姓名2','联系电话2','是',''),(83,'2021-03-09 07:36:37','企业账号3','企业名称3','岗位名称3','岗位职责3','上班地点3','上班时间3','薪资待遇3','2021-03-09','','用户名3','姓名3','联系电话3','是',''),(84,'2021-03-09 07:36:37','企业账号4','企业名称4','岗位名称4','岗位职责4','上班地点4','上班时间4','薪资待遇4','2021-03-09','','用户名4','姓名4','联系电话4','是',''),(85,'2021-03-09 07:36:37','企业账号5','企业名称5','岗位名称5','岗位职责5','上班地点5','上班时间5','薪资待遇5','2021-03-09','','用户名5','姓名5','联系电话5','是',''),(86,'2021-03-09 07:36:37','企业账号6','企业名称6','岗位名称6','岗位职责6','上班地点6','上班时间6','薪资待遇6','2021-03-09','','用户名6','姓名6','联系电话6','是',''),(1615276915092,'2021-03-09 08:01:54','2','香雪制药','人事专员','负责员工入职，异动，离职','梅州','9:00-17:30','5000','2021-03-09','http://localhost:8080/jspm545m0/upload/1615276912953.doc','5','张明','13812345678','是','请于下周一三点到公司进行面试');
/*!40000 ALTER TABLE `yingpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yingpinyaoqing`
--

DROP TABLE IF EXISTS `yingpinyaoqing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yingpinyaoqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `gangweimingcheng` varchar(200) DEFAULT NULL COMMENT '岗位名称',
  `gangweizhize` varchar(200) DEFAULT NULL COMMENT '岗位职责',
  `shangbandidian` varchar(200) DEFAULT NULL COMMENT '上班地点',
  `shangbanshijian` varchar(200) DEFAULT NULL COMMENT '上班时间',
  `yaoqingshijian` datetime DEFAULT NULL COMMENT '邀请时间',
  `yaoqingneirong` longtext COMMENT '邀请内容',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `qiyedizhi` varchar(200) DEFAULT NULL COMMENT '企业地址',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615276660806 DEFAULT CHARSET=utf8 COMMENT='应聘邀请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yingpinyaoqing`
--

LOCK TABLES `yingpinyaoqing` WRITE;
/*!40000 ALTER TABLE `yingpinyaoqing` DISABLE KEYS */;
INSERT INTO `yingpinyaoqing` VALUES (101,'2021-03-09 07:36:37','用户名1','姓名1','手机1','岗位名称1','岗位职责1','上班地点1','上班时间1','2021-03-09 15:36:37','邀请内容1','企业账号1','企业名称1','联系人1','联系方式1','企业地址1','是',''),(102,'2021-03-09 07:36:37','用户名2','姓名2','手机2','岗位名称2','岗位职责2','上班地点2','上班时间2','2021-03-09 15:36:37','邀请内容2','企业账号2','企业名称2','联系人2','联系方式2','企业地址2','是',''),(103,'2021-03-09 07:36:37','用户名3','姓名3','手机3','岗位名称3','岗位职责3','上班地点3','上班时间3','2021-03-09 15:36:37','邀请内容3','企业账号3','企业名称3','联系人3','联系方式3','企业地址3','是',''),(104,'2021-03-09 07:36:37','用户名4','姓名4','手机4','岗位名称4','岗位职责4','上班地点4','上班时间4','2021-03-09 15:36:37','邀请内容4','企业账号4','企业名称4','联系人4','联系方式4','企业地址4','是',''),(105,'2021-03-09 07:36:37','用户名5','姓名5','手机5','岗位名称5','岗位职责5','上班地点5','上班时间5','2021-03-09 15:36:37','邀请内容5','企业账号5','企业名称5','联系人5','联系方式5','企业地址5','是',''),(106,'2021-03-09 07:36:37','用户名6','姓名6','手机6','岗位名称6','岗位职责6','上班地点6','上班时间6','2021-03-09 15:36:37','邀请内容6','企业账号6','企业名称6','联系人6','联系方式6','企业地址6','是',''),(1615276660805,'2021-03-09 07:57:40','1','陈一','','人事专员','负责员工入职，异动，离职','梅州','9:00-17:30','2021-03-10 10:10:26','到我司进行面试','2','香雪制药','张雪','13812312312','梅州','是','可以');
/*!40000 ALTER TABLE `yingpinyaoqing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1615276701332 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (21,'2021-03-09 07:36:37','用户1','123456','姓名1','男','http://localhost:8080/jspm545m0/upload/yonghu_touxiang1.jpg','13823888881','773890001@qq.com'),(22,'2021-03-09 07:36:37','用户2','123456','姓名2','男','http://localhost:8080/jspm545m0/upload/yonghu_touxiang2.jpg','13823888882','773890002@qq.com'),(23,'2021-03-09 07:36:37','用户3','123456','姓名3','男','http://localhost:8080/jspm545m0/upload/yonghu_touxiang3.jpg','13823888883','773890003@qq.com'),(24,'2021-03-09 07:36:37','用户4','123456','姓名4','男','http://localhost:8080/jspm545m0/upload/yonghu_touxiang4.jpg','13823888884','773890004@qq.com'),(25,'2021-03-09 07:36:37','用户5','123456','姓名5','男','http://localhost:8080/jspm545m0/upload/yonghu_touxiang5.jpg','13823888885','773890005@qq.com'),(26,'2021-03-09 07:36:37','用户6','123456','姓名6','男','http://localhost:8080/jspm545m0/upload/yonghu_touxiang6.jpg','13823888886','773890006@qq.com'),(1615276416471,'2021-03-09 07:53:36','1','1','陈一','女','http://localhost:8080/jspm545m0/upload/1615276434473.jpg','13812312312','1233@qq.com'),(1615276701331,'2021-03-09 07:58:21','5','5','张明','男','http://localhost:8080/jspm545m0/upload/1615276777068.jpg','13812345678','456@qq.com');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhaopinxinxi`
--

DROP TABLE IF EXISTS `zhaopinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `qiyeyouxiang` varchar(200) DEFAULT NULL COMMENT '企业邮箱',
  `gangweimingcheng` varchar(200) NOT NULL COMMENT '岗位名称',
  `bangonghuanjing` varchar(200) NOT NULL COMMENT '办公环境',
  `gangweifenlei` varchar(200) DEFAULT NULL COMMENT '岗位分类',
  `xingye` varchar(200) DEFAULT NULL COMMENT '行业',
  `zhaopinrenshu` int(11) DEFAULT NULL COMMENT '招聘人数',
  `gangweizhize` longtext COMMENT '岗位职责',
  `renzhiyaoqiu` longtext COMMENT '任职要求',
  `shangbandidian` varchar(200) DEFAULT NULL COMMENT '上班地点',
  `shangbanshijian` varchar(200) DEFAULT NULL COMMENT '上班时间',
  `xinzidaiyu` int(11) DEFAULT NULL COMMENT '薪资待遇',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615276637744 DEFAULT CHARSET=utf8 COMMENT='招聘信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhaopinxinxi`
--

LOCK TABLES `zhaopinxinxi` WRITE;
/*!40000 ALTER TABLE `zhaopinxinxi` DISABLE KEYS */;
INSERT INTO `zhaopinxinxi` VALUES (71,'2021-03-09 07:36:37','企业账号1','企业名称1','联系人1','联系方式1','企业邮箱1','岗位名称1','http://localhost:8080/jspm545m0/upload/zhaopinxinxi_bangonghuanjing1.jpg','岗位分类1','行业1',1,'岗位职责1','任职要求1','上班地点1','上班时间1',1,'2021-03-09 15:36:37',1),(72,'2021-03-09 07:36:37','企业账号2','企业名称2','联系人2','联系方式2','企业邮箱2','岗位名称2','http://localhost:8080/jspm545m0/upload/zhaopinxinxi_bangonghuanjing2.jpg','岗位分类2','行业2',2,'岗位职责2','任职要求2','上班地点2','上班时间2',2,'2021-03-09 15:36:37',2),(73,'2021-03-09 07:36:37','企业账号3','企业名称3','联系人3','联系方式3','企业邮箱3','岗位名称3','http://localhost:8080/jspm545m0/upload/zhaopinxinxi_bangonghuanjing3.jpg','岗位分类3','行业3',3,'岗位职责3','任职要求3','上班地点3','上班时间3',3,'2021-03-09 15:36:37',3),(74,'2021-03-09 07:36:37','企业账号4','企业名称4','联系人4','联系方式4','企业邮箱4','岗位名称4','http://localhost:8080/jspm545m0/upload/zhaopinxinxi_bangonghuanjing4.jpg','岗位分类4','行业4',4,'岗位职责4','任职要求4','上班地点4','上班时间4',4,'2021-03-09 15:36:37',4),(75,'2021-03-09 07:36:37','企业账号5','企业名称5','联系人5','联系方式5','企业邮箱5','岗位名称5','http://localhost:8080/jspm545m0/upload/zhaopinxinxi_bangonghuanjing5.jpg','岗位分类5','行业5',5,'岗位职责5','任职要求5','上班地点5','上班时间5',5,'2021-03-09 15:59:59',11),(76,'2021-03-09 07:36:37','企业账号6','企业名称6','联系人6','联系方式6','企业邮箱6','岗位名称6','http://localhost:8080/jspm545m0/upload/zhaopinxinxi_bangonghuanjing6.jpg','岗位分类6','行业6',6,'岗位职责6','任职要求6','上班地点6','上班时间6',6,'2021-03-09 15:36:37',6),(1615276637743,'2021-03-09 07:57:17','2','香雪制药','张雪','13812312312','12@qq.com','人事专员','http://localhost:8080/jspm545m0/upload/1615276586265.jpg','人事','制药',5,'负责员工入职，异动，离职','1）大专以上学历\r\n2）相关专业优先\r\n','梅州','9:00-17:30',5000,'2021-03-09 16:01:58',2);
/*!40000 ALTER TABLE `zhaopinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhaopinzixun`
--

DROP TABLE IF EXISTS `zhaopinzixun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhaopinzixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zixunbiaoti` varchar(200) NOT NULL COMMENT '资讯标题',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `neirong` longtext COMMENT '内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615276323487 DEFAULT CHARSET=utf8 COMMENT='招聘资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhaopinzixun`
--

LOCK TABLES `zhaopinzixun` WRITE;
/*!40000 ALTER TABLE `zhaopinzixun` DISABLE KEYS */;
INSERT INTO `zhaopinzixun` VALUES (11,'2021-03-09 07:36:37','资讯标题1','类型1','http://localhost:8080/jspm545m0/upload/zhaopinzixun_tupian1.jpg','内容1','2021-03-09'),(12,'2021-03-09 07:36:37','资讯标题2','类型2','http://localhost:8080/jspm545m0/upload/zhaopinzixun_tupian2.jpg','内容2','2021-03-09'),(13,'2021-03-09 07:36:37','资讯标题3','类型3','http://localhost:8080/jspm545m0/upload/zhaopinzixun_tupian3.jpg','内容3','2021-03-09'),(14,'2021-03-09 07:36:37','资讯标题4','类型4','http://localhost:8080/jspm545m0/upload/zhaopinzixun_tupian4.jpg','内容4','2021-03-09'),(15,'2021-03-09 07:36:37','资讯标题5','类型5','http://localhost:8080/jspm545m0/upload/zhaopinzixun_tupian5.jpg','内容5','2021-03-09'),(16,'2021-03-09 07:36:37','资讯标题6','类型6','http://localhost:8080/jspm545m0/upload/zhaopinzixun_tupian6.jpg','内容6','2021-03-09'),(1615276323486,'2021-03-09 07:52:03','线下招聘会','招聘会','http://localhost:8080/jspm545m0/upload/1615276313113.jpg','资讯内容\r\n<img src=\"http://localhost:8080/jspm545m0/upload/1615276321993.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspm545m0/upload/1615276321993.jpg\">\r\n','2021-03-09');
/*!40000 ALTER TABLE `zhaopinzixun` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-10 15:00:31
