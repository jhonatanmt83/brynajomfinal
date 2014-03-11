-- MySQL dump 10.13  Distrib 5.5.32, for Linux (x86_64)
--
-- Host: localhost    Database: brynajom
-- ------------------------------------------------------
-- Server version	5.5.32-cll-lve

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
-- Current Database: `brynajom`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `brynajom` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `brynajom`;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_5f412f9a` (`group_id`),
  KEY `auth_group_permissions_83d7f98b` (`permission_id`),
  CONSTRAINT `group_id_refs_id_f4b32aac` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `permission_id_refs_id_6ba0f519` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_37ef4eb4` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_d043b34a` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add site',6,'add_site'),(17,'Can change site',6,'change_site'),(18,'Can delete site',6,'delete_site'),(19,'Can add log entry',7,'add_logentry'),(20,'Can change log entry',7,'change_logentry'),(21,'Can delete log entry',7,'delete_logentry'),(22,'Can add Slider',8,'add_slider'),(23,'Can change Slider',8,'change_slider'),(24,'Can delete Slider',8,'delete_slider'),(25,'Can add Cliente',9,'add_cliente'),(26,'Can change Cliente',9,'change_cliente'),(27,'Can delete Cliente',9,'delete_cliente'),(28,'Can add Tipo de servicio',10,'add_servicio'),(29,'Can change Tipo de servicio',10,'change_servicio'),(30,'Can delete Tipo de servicio',10,'delete_servicio'),(31,'Can add Noticia',11,'add_noticia'),(32,'Can change Noticia',11,'change_noticia'),(33,'Can delete Noticia',11,'delete_noticia'),(34,'Can add Proyecto',12,'add_proyecto'),(35,'Can change Proyecto',12,'change_proyecto'),(36,'Can delete Proyecto',12,'delete_proyecto'),(37,'Can add ImagenProyecto',13,'add_imagenproyecto'),(38,'Can change ImagenProyecto',13,'change_imagenproyecto'),(39,'Can delete ImagenProyecto',13,'delete_imagenproyecto'),(40,'Can add Brynajom',14,'add_informacion'),(41,'Can change Brynajom',14,'change_informacion'),(42,'Can delete Brynajom',14,'delete_informacion'),(43,'Can add Empresa',15,'add_empresa'),(44,'Can change Empresa',15,'change_empresa'),(45,'Can delete Empresa',15,'delete_empresa'),(46,'Can add Categoria Equipo',16,'add_tipoequipo'),(47,'Can change Categoria Equipo',16,'change_tipoequipo'),(48,'Can delete Categoria Equipo',16,'delete_tipoequipo'),(49,'Can add Equipo',17,'add_equipo'),(50,'Can change Equipo',17,'change_equipo'),(51,'Can delete Equipo',17,'delete_equipo'),(52,'Can add Puesto',18,'add_puesto'),(53,'Can change Puesto',18,'change_puesto'),(54,'Can delete Puesto',18,'delete_puesto'),(55,'Can add Postulante',19,'add_postulante'),(56,'Can change Postulante',19,'change_postulante'),(57,'Can delete Postulante',19,'delete_postulante'),(58,'Can add Postulante',20,'add_comentario'),(59,'Can change Postulante',20,'change_comentario'),(60,'Can delete Postulante',20,'delete_comentario'),(61,'Can add captcha store',21,'add_captchastore'),(62,'Can change captcha store',21,'change_captchastore'),(63,'Can delete captcha store',21,'delete_captchastore');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$10000$91Z92ityjpdW$ZVdFBGCy9rDz78GWLm+f+u8QeNU9ZkisLNLquO0WhSI=','2014-02-13 17:28:15',1,'admin','','','brynajomweb@gmail.com',1,1,'2013-12-13 16:36:29');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_6340c63c` (`user_id`),
  KEY `auth_user_groups_5f412f9a` (`group_id`),
  CONSTRAINT `group_id_refs_id_274b862c` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_id_refs_id_40c41112` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_6340c63c` (`user_id`),
  KEY `auth_user_user_permissions_83d7f98b` (`permission_id`),
  CONSTRAINT `permission_id_refs_id_35d9ac25` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_id_refs_id_4dc23c39` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `captcha_captchastore`
--

DROP TABLE IF EXISTS `captcha_captchastore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `captcha_captchastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) NOT NULL,
  `response` varchar(32) NOT NULL,
  `hashkey` varchar(40) NOT NULL,
  `expiration` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `captcha_captchastore`
--

LOCK TABLES `captcha_captchastore` WRITE;
/*!40000 ALTER TABLE `captcha_captchastore` DISABLE KEYS */;
INSERT INTO `captcha_captchastore` VALUES (1,'IYFU','iyfu','a0b2486639db2ef2b501846d2d62b8404bd4de98','2013-12-13 18:12:23'),(2,'UAXI','uaxi','e547fa01b70d965926deb6e14678982cfe7230ed','2013-12-16 07:48:54'),(3,'FLVD','flvd','e03b312997301e0a3bff39f6eb806f3f2dc04a37','2013-12-16 14:17:31'),(4,'HOLA','hola','3a2fdb3199f86e260fd8c1fc451ac11b297f83df','2013-12-16 15:54:19'),(5,'MCBG','mcbg','3bab0a5ff726b7e97f9c64ad22200415e5d7b8e6','2013-12-16 17:03:43'),(6,'QWZI','qwzi','c5eac51cf4bd417b733b9b96d16c6e6b3e07b560','2013-12-16 17:04:33'),(7,'GFSC','gfsc','2af4684655b0b5a0db92696887f2a6c40d512ed7','2013-12-16 19:28:03'),(8,'UMFA','umfa','14bd154055aac8309e19c4d9f2c02d6e2f689441','2013-12-19 15:23:01'),(9,'JZTR','jztr','cd21dbc8fe89d8e2d695eb6085daaa5328e481a7','2013-12-19 16:18:54'),(10,'IGGA','igga','c1be207701f0a1272cd62e37abc7794fa45ebd1d','2013-12-23 19:34:29'),(11,'VOFE','vofe','f17612e1b499611bc70dda4a3bcd38af2e35a9c4','2013-12-27 12:38:24'),(12,'BLGQ','blgq','c44d3db92922d8979ede0fa4b7e191e21eb0b776','2013-12-27 12:38:56'),(13,'LJZU','ljzu','859e6602746b1dbc2790ece04c44998f1376d357','2013-12-27 13:00:46'),(14,'TVHM','tvhm','321a88feac3b09ff960573de0eb2d0ad7ff3b39f','2014-01-02 20:14:29'),(15,'FUXK','fuxk','928cb86eea6cfd46a37f53dfba735347fd92a41a','2014-01-05 02:20:30'),(16,'SUAC','suac','e4f7e6e4a245530126d5855d64f2fa7d8a158aeb','2014-01-06 18:35:10'),(17,'FDYV','fdyv','fde0eb99842721e7a4048640875b9d4eb1a276b9','2014-01-06 23:03:09'),(18,'AOQF','aoqf','ae42253c42fbd6a7a2a7a1e24ea7e52949627066','2014-01-07 11:42:56'),(19,'ZTBL','ztbl','a2f75b4bcc446a02d940d63039975b2849a6b8ae','2014-01-07 14:41:56'),(20,'OQGB','oqgb','2fbfa3043c430ca66f4b9a23c462a2bc15c55330','2014-01-07 14:50:29'),(21,'CKGY','ckgy','3f81811b4712ae55e71081065904dd906dfb1bd7','2014-01-07 22:40:15'),(22,'WNVQ','wnvq','b820954194e7f15ced6929a48bd80d3f62bcb05a','2014-01-10 16:35:36'),(23,'PLHP','plhp','b849a657cbb852b3bde0918186a59ef97f3749d7','2014-01-10 17:44:40'),(24,'OLAL','olal','378e39a3c4f024d512127ac41b3e2a3d468f2bbe','2014-01-10 17:44:49'),(25,'CCEM','ccem','e52f3d748aaea4f62c505a83359642e70e3d0727','2014-01-10 17:49:01'),(26,'COTB','cotb','f31f1abf8af89e184f635a881477f710047bb0da','2014-01-11 17:09:52'),(27,'SKTB','sktb','45c57c1c4af8dc471673ec12bd429a8a66a061aa','2014-01-11 17:22:16'),(28,'PEFK','pefk','327bb6629f51e223a390acc92ce01c2890d6534f','2014-01-11 17:23:21'),(29,'BSJG','bsjg','c9f683c392c0ce11368876a6a677d5d3f1b40a26','2014-01-12 19:18:09'),(30,'JEDB','jedb','c6fa8096630869271bbe051f10e94e1a9d3ff6fb','2014-01-12 19:28:56'),(31,'REWK','rewk','5d734f3858b15157a832752f7d73a2a8558968c7','2014-01-12 19:28:57'),(32,'FWVC','fwvc','854d0c1558815a2b92e000bdb5fdd571e47d9357','2014-01-13 00:37:55'),(33,'SFCX','sfcx','3ae3e941d80d5a8b6d7fe980a1d973421e1122ab','2014-01-13 17:08:17'),(34,'ENQI','enqi','08525e9269c419b68a91af3d17ba498763ffd4ad','2014-01-13 20:41:36'),(35,'JASU','jasu','9fcd69c5f5f0ea465bd8323a554a40e1ed5cc48c','2014-01-14 00:48:50'),(36,'OOQL','ooql','172daa3a09dc921a25b99d999ada80e913e11c2a','2014-01-14 21:53:01'),(37,'TGHQ','tghq','30ed9890dddf95e0722b738765963e037e40deb3','2014-01-14 22:24:22'),(38,'AUXI','auxi','bbca0c487d7b48aa9508bb1dc025ad7d7a3a0895','2014-01-14 22:48:59'),(39,'EHBO','ehbo','37df14e06eb431aced63f67dde6db43345e9fae4','2014-01-15 02:12:31'),(40,'YOND','yond','0a2ce46a70ef869b4060ae15013a1462b8acac2d','2014-01-15 02:12:39'),(41,'MAFH','mafh','4c1a4d4d4abfde2732105efd59554d94d7fd5008','2014-01-15 06:05:45'),(42,'PLJU','plju','654be4c2db1d822e817806f126da1d704952387d','2014-01-16 08:27:03'),(43,'VBLY','vbly','7f11014acd5f195c237f0f12e97ed6173da8eb01','2014-01-16 22:16:43'),(44,'MUIZ','muiz','e7bf77d6035ef9d551e2cab717380cbe7340502e','2014-01-16 22:16:44'),(45,'ZLGC','zlgc','54e7d2534deda24c69de6291a2abc9786205380e','2014-01-16 22:39:43'),(46,'AYGW','aygw','1a9cf5a8eafd7b526f4b648f5f2d7426641908a0','2014-01-16 22:39:51'),(47,'GUEN','guen','80b69e054dc25be1f2a2fc64c91d51ffab216c27','2014-01-16 22:40:52'),(48,'RSUF','rsuf','ce6d825457195a8330a7380b0d8bb78f7f862b6e','2014-01-16 22:41:09'),(49,'NPKW','npkw','13570d6841a90ded3e2a24bbc5c6330adc190b71','2014-01-16 22:42:18'),(50,'ULWX','ulwx','acc51d4aba4674f85b72910685ff360a13891f8c','2014-01-16 22:55:59'),(51,'NBHN','nbhn','36f2c6c13265f0733b0e6582f0f887ee107165b0','2014-01-17 16:37:04'),(52,'ECZX','eczx','1f6cf17307b5876c5a0ab02c82e197f4284adc3e','2014-01-17 16:44:37'),(53,'XJPR','xjpr','e6c0e1902031fddfff2163a9a845490167655e76','2014-01-17 16:48:41'),(54,'KUJZ','kujz','5532de2c7e3077f35481cf6a49bf8c83452c6e2f','2014-01-17 17:13:14'),(55,'IVEI','ivei','776e0abbe944d6c122a3988f8f2ee217474d194e','2014-01-17 17:21:00'),(56,'FEFJ','fefj','ac648f5b26366cc76b35094aa75e9d541cf2107c','2014-01-17 17:22:02'),(57,'CKEV','ckev','c8017d691d7f5393824858de2361723c7f605def','2014-01-17 17:26:46'),(58,'UHGI','uhgi','6b6962b0dcc43541c3f2a5e292f3d4f6dacff8a8','2014-01-20 04:49:15'),(59,'JYTD','jytd','2c6ed623aa98fa58b98312528ed916ac922e8da1','2014-01-20 20:18:35'),(60,'UDVA','udva','596b29dbafb90fead22911487fc208af3f21eab9','2014-01-20 21:10:51'),(61,'WEXF','wexf','c80c9e554b50cdf18a48bbfc164bd376e18d02fd','2014-01-20 21:12:06'),(62,'EIHD','eihd','569f5e402dabffbb4fb6e4f502ddc6f1d9e1f496','2014-01-20 21:12:48'),(63,'NZCL','nzcl','a99d25a6963dd591f4dec97a0b663cdb3cda11ec','2014-01-21 18:16:53'),(64,'TYEJ','tyej','1ef7ce3c9a9d4e12d29ee5f07037878ff26f8a35','2014-01-22 03:18:43'),(65,'UTQH','utqh','5ef85bb8f16d806e7e82312d10b5c933bea7d80d','2014-01-22 03:23:33'),(66,'IZMU','izmu','d31fb66f06def490d98a9884a17c5bb52a764d3b','2014-01-22 15:59:34'),(67,'ONSK','onsk','831b66a06d7c2e8c92e36a0b4665aff1f1adeb25','2014-01-22 16:01:01'),(68,'FYWU','fywu','1e716a37c569ebaa2091b1076b1d3587a2bc8be8','2014-01-22 17:43:44'),(69,'MZON','mzon','05e111bbcad80a2c27a4541c8e3f5f8aa72fa355','2014-01-23 16:31:45'),(70,'CJVL','cjvl','1eaeefb511cdd8677676610b043e3802b95642a1','2014-01-23 20:39:12'),(71,'VLMU','vlmu','5613d64db8c7331705db1cfe1ff16ce7f049e179','2014-01-28 16:39:32'),(72,'URYD','uryd','318a27cc2261d960042cdca58189802328dec97c','2014-01-28 22:55:34'),(73,'OTIG','otig','0717e3825f5df4eafb26684b2d8f1bc9d3047b4a','2014-01-29 22:23:30'),(74,'VRNG','vrng','452617a6a8c2c6ce06a54340db4fd227b180aa36','2014-01-29 22:24:19'),(75,'KKPK','kkpk','b96efb4d25d84dd118863bf33c5fb91d9bc0ae98','2014-01-30 19:25:26'),(76,'LCYA','lcya','d72e9b087868e727175503775b61fd9093a61051','2014-01-30 19:30:06'),(77,'NSYB','nsyb','17e2383f7ae95054989ec6eba8e73ac437e77730','2014-01-30 20:19:37'),(78,'LGBQ','lgbq','fdc9f9afa8d2801f2a0481bb40b6894e46466a86','2014-01-30 20:19:42'),(79,'XQXC','xqxc','4302b8b97c93a18805c04090b3fff39757561871','2014-02-04 14:04:16'),(80,'PZQC','pzqc','1a4a8296aa509d7e924697314a3daa105f1f212e','2014-02-04 14:04:39'),(81,'CYKG','cykg','3c9e23a281135f4a25e42acb67b6e17ae6684682','2014-02-04 14:14:17'),(82,'FBDL','fbdl','79b27a8802647c570e258403383e5b8715459e67','2014-02-04 14:19:20'),(83,'YJRK','yjrk','98880d97012c6889f121433409600f99b7190f99','2014-02-04 21:00:49'),(84,'TKQM','tkqm','51e0d00d1674ca0312250c7ce78a91103730228c','2014-02-07 14:58:57'),(85,'ZMOW','zmow','17eb1107b1fe01c22b1c39709c0ff83e31442f5a','2014-02-08 19:13:24'),(86,'UXLM','uxlm','195bc50c77c7653bec3ecd6ef0d624f2ccc50762','2014-02-09 22:25:44'),(87,'JGQZ','jgqz','23cadff24d580a7914358a2dc5d88b19a9fe2616','2014-02-09 22:28:19'),(88,'EYRD','eyrd','5f0e8dcb9d81da8604bf0c24d53a418338741873','2014-02-10 17:48:39'),(89,'BXFN','bxfn','a6492a99e8a90e85ca40b512616dd7086b274a53','2014-02-11 22:11:05'),(90,'KWQW','kwqw','9930aca8688d02dbb769d01d92c5003ab7bee78e','2014-02-11 22:11:15'),(91,'RXKI','rxki','63e9f33a3f219ac55871e7f08911c87528f1efc0','2014-02-12 11:48:19'),(92,'GVRN','gvrn','dd1ae45ddcf5a23f6f232d41d723bd5a477f6258','2014-02-13 16:32:13'),(93,'IJYD','ijyd','1e4f4b5215a48bb32c67bbf2b712789ff81600de','2014-02-14 08:01:51'),(94,'SIPG','sipg','2d8b8d9c8826769b6397fa2d89b5dc0e06ad8607','2014-02-14 14:36:08'),(95,'WKBE','wkbe','5be8271f9582914b1c5ccb898441a152eab0c48e','2014-02-14 15:53:36'),(96,'ZADI','zadi','45ca1321c8e23b6402a0ebb90bdf226de5d1fe92','2014-02-17 17:09:56'),(97,'JPFR','jpfr','bd3a667e55595b97530cae548e970cea9a7da81a','2014-02-18 01:24:22'),(98,'BETM','betm','aaf4de6cdd8644e71c8b87131135fb12564b7f45','2014-02-18 04:32:53'),(99,'WNCH','wnch','f563b3bc0ff1da9f6c69e08368b486c26ccb3d89','2014-02-18 04:34:28'),(100,'FRCR','frcr','d1444fe304d5362ccf34ca87697b5d9c233f7bdc','2014-02-18 14:11:08'),(101,'EQCH','eqch','14787c3b96dcf69c5ba2f0282575e7f38984dd4b','2014-02-18 19:06:50'),(102,'XPNB','xpnb','bb285b801cca678fc0ff26c5347788ea991fb316','2014-02-18 19:16:14'),(103,'EVBA','evba','dc3f06ef57ee3ae1cbfd2679971f857e3d65cb85','2014-02-19 04:12:03');
/*!40000 ALTER TABLE `captcha_captchastore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_6340c63c` (`user_id`),
  KEY `django_admin_log_37ef4eb4` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_93d2d1f8` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `user_id_refs_id_c0d12874` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2013-12-13 16:44:55',1,14,'1','Brynajom',1,''),(2,'2013-12-13 16:48:13',1,15,'1','Brynajom',1,''),(3,'2013-12-13 16:49:51',1,8,'1','Imagen1',1,''),(4,'2013-12-13 16:50:18',1,8,'2','Imagen2',1,''),(5,'2013-12-13 16:50:42',1,8,'3','Imagen3',1,''),(6,'2013-12-13 16:51:02',1,8,'4','Imagen4',1,''),(7,'2013-12-13 16:52:29',1,10,'1','INFRAESTRUCTURA E INMOBILIARIA',1,''),(8,'2013-12-13 16:53:07',1,10,'2','TROCHAS CARROZABLES',1,''),(9,'2013-12-13 16:53:39',1,10,'3','OBRAS HIDRÁULICAS Y SANEAMIENTO',1,''),(10,'2013-12-13 16:54:15',1,10,'4','MINERÍA SUBTERRÁNEA',1,''),(11,'2013-12-13 16:54:46',1,10,'5','MINERÍA SUPERFICIAL',1,''),(12,'2013-12-13 16:55:15',1,10,'6','CARRETERAS, PAVIMENTACIÓN',1,''),(13,'2013-12-13 17:20:03',1,16,'1','MAQUINARIA PESADA Y SEMIPESADA',1,''),(14,'2013-12-13 17:20:32',1,16,'2','VEHÍCULOS PESADOS Y LIVIANOS',1,''),(15,'2013-12-13 17:20:46',1,16,'3','EQUIPOS DE PERFORACIÓN',1,''),(16,'2013-12-13 17:21:01',1,16,'4','EQUIPOS DE IMPERMEABILIZACIÓN',1,''),(17,'2013-12-13 17:21:14',1,16,'5','EQUIPOS DE TOPOGRAFÍA',1,''),(18,'2013-12-13 17:21:29',1,16,'6','EQUIPOS DE TALLER MANTENIMIENTO MECÁNICO',1,''),(19,'2013-12-13 17:21:45',1,16,'7','OTROS EQUIPOS',1,''),(20,'2013-12-13 18:03:52',1,11,'1','REPRESA HUARMISLLA - HUANCAVELICA',1,''),(21,'2014-01-11 17:21:04',1,15,'1','Brynajom',2,'Modificado/a organigrama.'),(22,'2014-01-11 17:22:25',1,15,'1','Brynajom',2,'Modificado/a organigrama.'),(23,'2014-01-11 17:48:57',1,14,'1','Brynajom',2,'Modificado/a imagenvideo1.'),(24,'2014-01-11 17:52:08',1,10,'3','OBRAS HIDRÁULICAS Y SANEAMIENTO',2,'Modificado/a imagen.'),(25,'2014-01-11 18:06:02',1,16,'4','EQUIPOS DE IMPERMEABILIZACIÓN',2,'Modificado/a imagen.'),(26,'2014-01-11 18:06:21',1,16,'6','EQUIPOS DE TALLER MANTENIMIENTO MECÁNICO',2,'Modificado/a imagen.'),(27,'2014-01-11 18:06:33',1,16,'3','EQUIPOS DE PERFORACIÓN',2,'Modificado/a imagen.'),(28,'2014-01-11 18:06:44',1,16,'5','EQUIPOS DE TOPOGRAFÍA',2,'Modificado/a imagen.'),(29,'2014-01-16 22:31:49',1,10,'6','CARRETERAS Y PAVIMENTACIÓN',2,'Modificado/a nombre.'),(30,'2014-01-17 16:22:17',1,9,'18','SOUTH AMERICA MINERALS AND CHEMICALS S.A.C',2,'Modificado/a url.'),(31,'2014-01-17 16:25:51',1,9,'17','PROVIAS RURAL',2,'Modificado/a url.'),(32,'2014-01-17 16:27:55',1,9,'16','MINERA FORTUNA SILVER',2,'Modificado/a url.'),(33,'2014-01-17 16:28:44',1,9,'15','MUNICIPIO DE ACOBAMBILLA',2,'Modificado/a nombre y url.'),(34,'2014-01-17 16:29:49',1,9,'14','MUNICIPALIDAD DISTRITAL DE ANCHONGA',2,'Modificado/a url.'),(35,'2014-01-17 16:30:17',1,9,'13','MINISTERIO DE TRASPORTES Y COMUNICACIONES ',2,'Modificado/a url.'),(36,'2014-01-17 16:30:57',1,9,'12',' MS SINAYCOCHA',2,'Modificado/a url.'),(37,'2014-01-17 16:31:26',1,9,'11','MINERA DUVAZ',2,'Modificado/a url.'),(38,'2014-01-17 16:31:55',1,9,'10','MINERA CAUDALOSA',2,'Modificado/a url.'),(39,'2014-01-17 16:32:40',1,9,'9','MINERA BATEAS',2,'Modificado/a url.'),(40,'2014-01-17 16:33:00',1,9,'8','MUNICIPALIDAD LA JOYA ',2,'Modificado/a url.'),(41,'2014-01-17 16:33:24',1,9,'7','GOBIERNO REGIONAL DE HUANCAVELICA',2,'Modificado/a url.'),(42,'2014-01-17 16:36:26',1,9,'4','FONCODES',2,'Modificado/a url.'),(43,'2014-01-17 16:36:45',1,9,'3','DOE RUN',2,'Modificado/a url.'),(44,'2014-01-17 16:37:12',1,9,'2','MUNICIPALIDAD DISTRITAL DE CORIS',2,'Modificado/a url.'),(45,'2014-01-17 16:38:54',1,9,'1','MUNICIPALIDAD DISTRITAL DE ANCO',2,'Modificado/a nombre y url.'),(46,'2014-01-17 16:40:31',1,9,'5','FRANC-OR RESOURCES ',2,'Modificado/a url.'),(47,'2014-01-17 16:52:05',1,17,'143','PICKUP K2700 CAMIÓN FURGON CARGA W4B - 886\r\n',2,'Modificado/a descripcion.'),(48,'2014-01-17 16:53:12',1,17,'83',' CAMIÓN BARANDA D1K 729 \r\n',2,'Modificado/a descripcion.'),(49,'2014-01-17 16:53:18',1,17,'82',' CAMIÓN BARANDA W2T - 707 \r\n',2,'Modificado/a descripcion.'),(50,'2014-01-17 16:53:24',1,17,'81',' CAMIÓN BARANDA W2V - 845 \r\n',2,'Modificado/a descripcion.'),(51,'2014-01-17 16:53:29',1,17,'80',' CAMIÓN BARANDA W2S - 920 \r\n',2,'Modificado/a descripcion.'),(52,'2014-01-17 16:53:36',1,17,'79',' CAMIÓN DE CARGA WAI - 810 \r\n',2,'Modificado/a descripcion.'),(53,'2014-01-17 16:53:42',1,17,'78','FM 26 CAMIÓN CISTERNA AGUA W1U-833 \r\n',2,'Modificado/a descripcion.'),(54,'2014-01-17 16:53:47',1,17,'77',' CAMIÓN CISTERNA AGUA W1C-906 \r\n',2,'Modificado/a descripcion.'),(55,'2014-01-17 16:54:09',1,17,'76','HD72 CAMIÓN COMBUSTIBLE W1D-816 \r\n',2,'Modificado/a descripcion.'),(56,'2014-01-17 16:54:22',1,17,'44','740B N°3 CAMIÓN ARTICULADO\r\n',2,'Modificado/a descripcion.'),(57,'2014-01-17 17:00:34',1,17,'44','740B N°3 CAMIÓN ARTICULADO\r\n',2,'No ha cambiado ningún campo.'),(58,'2014-01-17 17:01:43',1,17,'43','740 STD. N°3 CAMIÓN ARTICULADO\r\n',2,'Modificado/a descripcion.'),(59,'2014-01-17 17:01:52',1,17,'42','740 STD. N°2 CAMIÓN ARTICULADO\r\n',2,'Modificado/a descripcion.'),(60,'2014-01-17 17:02:04',1,17,'41','740 STD. N°1 CAMIÓN ARTICULADO\r\n',2,'Modificado/a descripcion.'),(61,'2014-01-20 19:41:23',1,15,'1','Brynajom',2,'Modificado/a politicas_seguridad.'),(62,'2014-01-20 19:42:10',1,15,'1','Brynajom',2,'Modificado/a politicas_seguridad.'),(63,'2014-01-20 19:45:33',1,15,'1','Brynajom',2,'Modificado/a politicas_ambientales.'),(64,'2014-01-20 19:47:01',1,15,'1','Brynajom',2,'Modificado/a politicas_ambientales.'),(65,'2014-01-20 19:50:24',1,15,'1','Brynajom',2,'Modificado/a politicas_ambientales.'),(66,'2014-01-20 19:51:34',1,15,'1','Brynajom',2,'Modificado/a politicas_ambientales.'),(67,'2014-01-20 19:52:55',1,15,'1','Brynajom',2,'Modificado/a politicas_ambientales.'),(68,'2014-01-20 19:56:37',1,15,'1','Brynajom',2,'Modificado/a plan_estrategico.'),(69,'2014-01-20 19:57:58',1,15,'1','Brynajom',2,'Modificado/a plan_estrategico.'),(70,'2014-01-20 19:59:19',1,15,'1','Brynajom',2,'Modificado/a plan_estrategico.'),(71,'2014-01-20 20:03:42',1,15,'1','Brynajom',2,'Modificado/a plan_estrategico y politicas_seguridad.'),(72,'2014-01-20 20:06:01',1,15,'1','Brynajom',2,'Modificado/a politicas_ambientales.'),(73,'2014-01-20 20:08:41',1,15,'1','Brynajom',2,'Modificado/a politicas_ambientales.'),(74,'2014-01-21 16:13:14',1,15,'1','Brynajom',2,'Modificado/a quienes_somos.'),(75,'2014-01-21 16:14:59',1,15,'1','Brynajom',2,'Modificado/a quienes_somos y gestion_empresarial.'),(76,'2014-01-21 16:15:53',1,15,'1','Brynajom',2,'Modificado/a gestion_empresarial.'),(77,'2014-01-21 16:16:41',1,15,'1','Brynajom',2,'Modificado/a gestion_empresarial.'),(78,'2014-01-21 16:25:13',1,15,'1','Brynajom',2,'No ha cambiado ningún campo.'),(79,'2014-01-23 01:50:42',1,15,'1','Brynajom',2,'Modificado/a politicas_ambientales.');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'content type','contenttypes','contenttype'),(5,'session','sessions','session'),(6,'site','sites','site'),(7,'log entry','admin','logentry'),(8,'Slider','web','slider'),(9,'Cliente','web','cliente'),(10,'Tipo de servicio','web','servicio'),(11,'Noticia','web','noticia'),(12,'Proyecto','web','proyecto'),(13,'ImagenProyecto','web','imagenproyecto'),(14,'Brynajom','web','informacion'),(15,'Empresa','web','empresa'),(16,'Categoria Equipo','web','tipoequipo'),(17,'Equipo','web','equipo'),(18,'Puesto','web','puesto'),(19,'Postulante','web','postulante'),(20,'Postulante','web','comentario'),(21,'captcha store','captcha','captchastore');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_b7b81f0c` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('25s7f82pefhpck4dpdyb4zxf4bbgvqja','YTNlZWExMTNmNGEyZjFkMmE2YTgwNWQzOTUzYzBkMGEzNTYxMjg0YTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-01-31 04:10:40'),('2utdpv5f2icjmvlf2govqwp6fhuwd2p4','YTNlZWExMTNmNGEyZjFkMmE2YTgwNWQzOTUzYzBkMGEzNTYxMjg0YTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-01-30 22:29:40'),('3blv0wymjufsrn5ja8b2h4cee24f8e8s','YTNlZWExMTNmNGEyZjFkMmE2YTgwNWQzOTUzYzBkMGEzNTYxMjg0YTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2013-12-30 15:48:50'),('5lydohmbamvnipfm3eci0lurhw24ail1','YTNlZWExMTNmNGEyZjFkMmE2YTgwNWQzOTUzYzBkMGEzNTYxMjg0YTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-01-30 22:29:53'),('8kmykx9wh7b11m0lkwtlgckb9pd5a2rj','YTNlZWExMTNmNGEyZjFkMmE2YTgwNWQzOTUzYzBkMGEzNTYxMjg0YTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-01-24 15:45:36'),('9knxzfslgaa1s23f8vqmme0y5jrevn2w','YTNlZWExMTNmNGEyZjFkMmE2YTgwNWQzOTUzYzBkMGEzNTYxMjg0YTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2013-12-27 17:37:57'),('a7c7hxdi2wzkmtlfvo831jxm53iymjcd','YTNlZWExMTNmNGEyZjFkMmE2YTgwNWQzOTUzYzBkMGEzNTYxMjg0YTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2013-12-27 16:37:51'),('b38oln8ht7xbv6uxr8oqtpvb7815zadp','YTNlZWExMTNmNGEyZjFkMmE2YTgwNWQzOTUzYzBkMGEzNTYxMjg0YTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2013-12-27 16:43:07'),('dmxp565f5igc6jcgsyd7lj0pximgph28','NGVmZjE0ODRjMWE1NzViMDA0ZGQ5ZDEzMTc3NWRlNjcwMDIyMzc3Yjp7fQ==','2013-12-30 14:13:59'),('gctgwyhngeod79mbopbjoh683gwu36bg','YTNlZWExMTNmNGEyZjFkMmE2YTgwNWQzOTUzYzBkMGEzNTYxMjg0YTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-02-27 17:28:15'),('h52o7o2iieue2tgqwwanv9gjld2axdvq','YTNlZWExMTNmNGEyZjFkMmE2YTgwNWQzOTUzYzBkMGEzNTYxMjg0YTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-02-03 19:48:48'),('olemcax48lgieh3dmrar8nnqwg745axs','NGVmZjE0ODRjMWE1NzViMDA0ZGQ5ZDEzMTc3NWRlNjcwMDIyMzc3Yjp7fQ==','2014-02-06 20:34:53'),('org2ewess00i4tgz5r69o9n7tyko82bn','NGVmZjE0ODRjMWE1NzViMDA0ZGQ5ZDEzMTc3NWRlNjcwMDIyMzc3Yjp7fQ==','2014-02-06 01:55:41'),('qfastfw4ijnc6ddc9c1fglu04btuezq8','Zjg2N2E0Nzg2NWVlNjUyNjg1ODU3ODI0MmRkMTFlYjk0N2UzNjliZjp7InRlc3Rjb29raWUiOiJ3b3JrZWQifQ==','2013-12-27 16:37:29'),('t5tdnr7bllozoeqpi8imwa7h80wqvnwu','YTNlZWExMTNmNGEyZjFkMmE2YTgwNWQzOTUzYzBkMGEzNTYxMjg0YTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2013-12-27 16:38:15'),('yrnxjnp6no7nbrnozqh5fkr761q2rqoj','YTNlZWExMTNmNGEyZjFkMmE2YTgwNWQzOTUzYzBkMGEzNTYxMjg0YTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-01-31 16:19:51');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_cliente`
--

DROP TABLE IF EXISTS `web_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `url` varchar(250) DEFAULT NULL,
  `imagen` varchar(100) NOT NULL,
  `orden` int(11) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_cliente`
--

LOCK TABLES `web_cliente` WRITE;
/*!40000 ALTER TABLE `web_cliente` DISABLE KEYS */;
INSERT INTO `web_cliente` VALUES (1,'MUNICIPALIDAD DISTRITAL DE ANCO','http://www.datosperu.org/peru-municipalidad-distrital-de-anco.php','cliente/None/anco.jpg',1,1),(2,'MUNICIPALIDAD DISTRITAL DE CORIS','http://municoris.gob.pe/?id=detalle&cod_not=158','cliente/None/CORISSS.jpg',2,1),(3,'DOE RUN','http://www.doerun.com.pe/','cliente/None/doerun_4.210x200.JPG',3,1),(4,'FONCODES','http://www.foncodes.gob.pe/','cliente/None/FONCODES.jpg',4,1),(5,'FRANC-OR RESOURCES ','http://www.infomine.com/index/companies/FRANC-OR_RESOURCES_PERU_S.A.C..html','cliente/None/FRANC - OR RESOURCES.jpg',5,1),(6,'GERENCIA SUB REGIONAL DE ACOBAMBILLA','','cliente/None/GERENCIA SUB REG, ACOBAMBILLA.jpg',6,1),(7,'GOBIERNO REGIONAL DE HUANCAVELICA','http://www.regionhuancavelica.gob.pe/','cliente/None/GRHYCA.jpg',7,1),(8,'MUNICIPALIDAD LA JOYA ','http://municipalidadlajoya.gob.pe/?','cliente/None/LA JOYA.jpg',8,1),(9,'MINERA BATEAS','http://www.datosperu.org/peru-minera-bateas-sac.php','cliente/None/MINERA BATEAS.jpg',9,1),(10,'MINERA CAUDALOSA','http://www.datosperu.org/peru-cia-minera-caudalosa-sa.php','cliente/None/MINERA CAUDALOSA.jpg',10,1),(11,'MINERA DUVAZ','http://www.datosperu.org/peru-sociedad-minera-austria-duvaz-sac.php','cliente/None/MINERA DUVAS.jpg',11,1),(12,' MS SINAYCOCHA','http://www.datosperu.org/registro-marcas-ms-minera-sinaycocha-sac-509841.php','cliente/None/MS SINAYCOCHA.jpg',12,1),(13,'MINISTERIO DE TRASPORTES Y COMUNICACIONES ','http://www.mtc.gob.pe/?','cliente/None/MTC.jpg',13,1),(14,'MUNICIPALIDAD DISTRITAL DE ANCHONGA','http://www.munianchonga.gob.pe/?','cliente/None/MUNICIP ANCHONGA.jpg',14,1),(15,'MUNICIPIO DE ACOBAMBILLA','http://www.muniacobambilla.gob.pe/?','cliente/None/MUNICIPIO ACOBAMBILLA.jpg',15,1),(16,'MINERA FORTUNA SILVER','http://www.fortunasilver.com/s/Home.asp','cliente/None/ortuna silver.jpg',16,1),(17,'PROVIAS RURAL','http://www.datosperu.org/peru-provias-descentralizado.php','cliente/None/PROVIAS.jpg',17,1),(18,'SOUTH AMERICA MINERALS AND CHEMICALS S.A.C','http://www.datosperu.org/peru-south-america-minerals-and-chemicals-sac.php','cliente/None/SOUTH AMERICA MINERALS AND CHEMICALS.jpg',18,1);
/*!40000 ALTER TABLE `web_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_comentario`
--

DROP TABLE IF EXISTS `web_comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_comentario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(250) NOT NULL,
  `apellidos` varchar(250) NOT NULL,
  `email` varchar(75) NOT NULL,
  `comentario` longtext NOT NULL,
  `fecha` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_comentario`
--

LOCK TABLES `web_comentario` WRITE;
/*!40000 ALTER TABLE `web_comentario` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_comentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_empresa`
--

DROP TABLE IF EXISTS `web_empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_empresa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL,
  `mision` longtext NOT NULL,
  `vision` longtext NOT NULL,
  `objetivos` longtext NOT NULL,
  `valores` longtext NOT NULL,
  `mapa` longtext NOT NULL,
  `quienes_somos` longtext NOT NULL,
  `gestion_empresarial` longtext NOT NULL,
  `organigrama` longtext NOT NULL,
  `plan_estrategico` longtext NOT NULL,
  `politicas_seguridad` longtext NOT NULL,
  `politicas_ambientales` longtext NOT NULL,
  `certificados` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_empresa`
--

LOCK TABLES `web_empresa` WRITE;
/*!40000 ALTER TABLE `web_empresa` DISABLE KEYS */;
INSERT INTO `web_empresa` VALUES (1,'Brynajom','<p>Satisfacer las necesidades y expectativas de nuestros clientes, brindando servicios de calidad, resolviendo necesidades primordiales en Miner&iacute;a, Construcci&oacute;n y Servicios M&uacute;ltiples, m&aacute;s all&aacute; de las obligaciones pactadas, favoreciendo el desempe&ntilde;o profesional de nuestros integrantes y respetando el medio ambiente en armon&iacute;a con las comunidades en las que opera, bas&aacute;ndose en procesos sostenibles como fin estrat&eacute;gico.</p>\r\n','<p>Ser reconocidos como la empresa l&iacute;der, confiable y de mayor prestigio a nivel mundial, brindando nuestros servicios de manera oportuna, confiable y transparente, cumpliendo con los est&aacute;ndares de Seguridad y Salud en el sistema integrado de gesti&oacute;n, medio ambiente y responsabilidad social. Apoyados en nuestra experiencia, convertirnos en una empresa de construcci&oacute;n y miner&iacute;a con proyectos propios.</p>\r\n','<p>El objetivo de BRYNAJOM S.R.L. es trabajar con cumplimiento, calidad, eficiencia, seguridad y seriedad, proyectos de gran envergadura, que garanticen nuestra competitividad en las nuevas circunstancias del mercado. Contribuyendo de esta manera al desarrollo social, econ&oacute;mico y tecnol&oacute;gico del pa&iacute;s.</p>\r\n','<p>- Trabajo en Equipo<br />\r\n- Integridad<br />\r\n- Confianza<br />\r\n- Solidez<br />\r\n- Liderazgo<br />\r\n- Innovaci&oacute;n</p>\r\n','<iframe width=\"100%\" height=\"300\" frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" src=\"https://maps.google.com.pe/maps/ms?msa=0&amp;msid=211257266986931564227.0004dceaa9eecd5ff3928&amp;hl=es&amp;ie=UTF8&amp;t=h&amp;ll=-10.055403,-76.904297&amp;spn=12.954274,24.56543&amp;z=5&amp;output=embed\"></iframe><br /><small><p class=\"titulo-video text-center\"><strong>Ver <a href=\"https://maps.google.com.pe/maps/ms?msa=0&amp;msid=211257266986931564227.0004dceaa9eecd5ff3928&amp;hl=es&amp;ie=UTF8&amp;t=h&amp;ll=-10.055403,-76.904297&amp;spn=12.954274,24.56543&amp;z=5&amp;source=embed\" style=\"color:#0000FF;text-align:left\">BRYNAJOM S.R.L.</a> en un mapa más grande</small></strong></p>','<p><strong>&nbsp; &nbsp; &nbsp;</strong></p>\r\n\r\n<p>BRYNAJOM, es una empresa Peruana de la regi&oacute;n central del Pa&iacute;s, que se crea con la misi&oacute;n de brindar servicios competitivos al mercado nacional e internacional. Somos especialistas en el dise&ntilde;o y construcci&oacute;n de obras civiles y mineras; contamos con un selecto staff de profesionales de gran experiencia y una gran flota de equipos propios, para el desarrollo y ejecuci&oacute;n de proyectos en los sectores minero, construcci&oacute;n, energ&eacute;tico, irrigaci&oacute;n, transporte y medio ambiente. A los cuales venimos sirviendo desde hace 10 a&ntilde;os, manejando inversiones y propiedades de los grupos econ&oacute;micos m&aacute;s importantes del pa&iacute;s.</p>\r\n\r\n<p>La empresa BRYNAJOM tiene como compromiso hacia sus clientes ofrecer servicios de calidad, respetando los Est&aacute;ndares de Seguridad y Salud en el sistema integrado de gesti&oacute;n, medio ambiente y responsabilidad social, usando herramientas administrativas din&aacute;micas que permitan satisfacer sus necesidades y expectativas.</p>\r\n\r\n<p>Actualmente BRYNAJOM S.R.L. tiene como objetivo la eficiente ejecuci&oacute;n de obras con una adecuada gesti&oacute;n de la producci&oacute;n, para lo cual se preocupa permanentemente de capacitar a su equipo de ingenieros y profesionales.</p>\r\n\r\n<ul>\r\n	<li><u>VALORES</u>:</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Trabajo en Equipo</li>\r\n	<li>Integridad</li>\r\n	<li>Confianza</li>\r\n	<li>Solidez</li>\r\n	<li>Liderazgo</li>\r\n	<li>Innovaci&oacute;n</li>\r\n</ul>\r\n','<p><strong>ORGANIZACI&Oacute;N</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nuestra organizaci&oacute;n est&aacute; basada en el sistema de delegar funciones de poder entre nuestros colaboradores, para simplificar nuestras actividades, dichas personas gozan de nuestra entera confianza, a fin de asegurar la correcta ejecuci&oacute;n de nuestros trabajos.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>DIRECCI&Oacute;N</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>En nuestro proceso administrativo, se act&uacute;a con liderazgo hacia nuestros colaboradores usando las herramientas de trabajo en equipo, motivaci&oacute;n, autoaprendizaje y autoestima.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>La comunicaci&oacute;n que usamos es horizontal y emp&aacute;tica ya que se trata de una empresa relativamente nueva con una cultura organizacional diferente a las dem&aacute;s, y que por su n&uacute;mero de personal es f&aacute;cil de usar las herramientas necesarias. La conducta de los recursos humanos se adecua a la pol&iacute;tica de la empresa.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>No se improvisan las actividades no programadas, se planea todo. Las discrepancias basadas en el conocimiento, experiencia y habilidad son bien recibidas por la empresa y se da reconocimiento a quien lo plantee.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>CONTROL</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>El proceso de control de todas nuestras actividades es estricto en cada uno de los procesos y en la medida como se presenten sobre todo en el proceso de planeamiento.</p>\r\n\r\n<p><span style=\"line-height: 1.6em;\">Se tiene implementado un sistema de informaci&oacute;n gerencial para la correcta toma de decisiones.</span></p>\r\n\r\n<p><span style=\"line-height: 1.6em;\">El control es preventivo obteni&eacute;ndose siempre la calidad total en todos los procesos.</span></p>\r\n','<p><img alt=\"\" src=\"http://www.brynajom.com.pe/media/uploads/2014/01/11/ORGANIGRAMA (2).jpg\" style=\"width: 100%; height: 100%;\" /></p>\r\n','<p><span style=\"font-family: Arial, serif;\">La empresa est&aacute; obligada a competir, porque de ella depende su permanencia en la sociedad, entonces se decide hoy para alcanzar metas en el futuro, se usa la hoja de ruta para seguir un camino que permita alcanzar los objetivos trazados.</span></p>\r\n','<div align=\"JUSTIFY\" style=\"margin-bottom: 0.28cm;\"><font face=\"Arial, sans-serif\">Estamos comprometidos en efectuar nuestras operaciones cuidando la integridad, la salud y el bienestar de nuestros trabajadores, considerando al Recurso Humano, como el m&aacute;s valioso capital de la Empresa.</font></div>\r\n\r\n<div align=\"JUSTIFY\" style=\"margin-bottom: 0.28cm;\">&nbsp;</div>\r\n\r\n<div align=\"JUSTIFY\" style=\"margin-bottom: 0.28cm;\"><font face=\"Arial, sans-serif\">Somos conscientes que es responsabilidad de cada empresa preservar la integridad f&iacute;sica y la salud de sus trabajadores, por eso hemos implementado sistemas de prevenci&oacute;n de riesgos y una pol&iacute;tica de puertas abiertas para evitar todo tipo de incidente. Exigiendo el estricto cumplimiento de los est&aacute;ndares, normas y procedimientos relacionados a la prevenci&oacute;n de riesgos y salud ocupacional establecidos o que se establezcan.</font></div>\r\n\r\n<div align=\"JUSTIFY\" style=\"margin-bottom: 0.28cm;\">&nbsp;</div>\r\n\r\n<div align=\"JUSTIFY\" style=\"margin-bottom: 0.28cm;\"><font face=\"Arial, sans-serif\">En&nbsp;<strong>BRYNAJOM S.R.L</strong>. entendemos que el mejoramiento de la productividad, est&aacute; en controlar los efectos que producen los incidentes; lograr el cambio del comportamiento riesgoso hacia una cultura de conducta segura, capacitando y sensibilizando a todo nuestro personal con t&eacute;cnicas de manejo de riesgos y valores humanos.</font></div>\r\n\r\n<div align=\"JUSTIFY\" style=\"margin-bottom: 0.28cm;\"><font face=\"Arial, sans-serif\">Sabemos que una competitividad sostenible, se realiza protegiendo en forma eficaz nuestro recurso activo m&aacute;s importante, nuestros trabajadores.</font></div>\r\n\r\n<div align=\"JUSTIFY\" style=\"margin-bottom: 0.28cm;\">&nbsp;</div>\r\n\r\n<div align=\"JUSTIFY\" style=\"margin-bottom: 0.28cm;\"><font face=\"Arial, sans-serif\">La administraci&oacute;n de la seguridad y salud ocupacional integrar&aacute; el planeamiento, organizaci&oacute;n, comunicaci&oacute;n, capacitaci&oacute;n, direcci&oacute;n, evaluaci&oacute;n y monitoreo del comportamiento, con el fin de asegurar que se tomen todas las medidas razonables orientadas a prevenir la ocurrencia de accidentes.</font></div>\r\n\r\n<div align=\"JUSTIFY\" style=\"margin-bottom: 0.28cm;\">&nbsp;</div>\r\n\r\n<div align=\"JUSTIFY\" style=\"margin-bottom: 0.28cm;\"><font face=\"Arial, sans-serif\">Para alcanzar el &eacute;xito de esta pol&iacute;tica, todos nosotros debemos asumir nuestro trabajo en concordancia con ella, protegiendo de manera razonable nuestra seguridad y salud. As&iacute; tambi&eacute;n como la de nuestros colegas y terceros que podr&iacute;an ser afectados por nuestras acciones o actos. Aceptar que trabajar con seguridad es una condici&oacute;n inherente al empleado.</font></div>\r\n','<p align=\"JUSTIFY\" style=\"margin-right: 0.08cm; margin-bottom: 0.28cm;\"><font face=\"Arial, sans-serif\">En&nbsp;<b>BRYNAJOM S.R.L</b>, el respeto, la conservaci&oacute;n y protecci&oacute;n ambiental, son compromisos fundamentales durante el desarrollo de todos los procesos de la empresa, compromisos que hacemos viables a trav&eacute;s de la aplicaci&oacute;n de instrumentos de gesti&oacute;n ambiental compatibles con los principios de Desarrollo Sostenible. Protegiendo ambientes cuya integridad geogr&aacute;fica muestra una armoniosa relaci&oacute;n entre el hombre y la naturaleza, albergando importantes valores naturales, est&eacute;ticos y culturales.</font></p>\r\n\r\n<p align=\"JUSTIFY\" style=\"margin-right: 0.08cm; margin-bottom: 0.28cm;\"><font face=\"Arial, sans-serif\">Es por ello que nos comprometemos con el Desarrollo Sostenible atendiendo los siguientes principios:</font></p>\r\n\r\n<p align=\"JUSTIFY\" style=\"margin-right: 0.08cm; margin-bottom: 0.28cm;\"><font face=\"Arial, sans-serif\">* Garantizar que nuestras operaciones y procesos actuales y futuros cumplan con la legislaci&oacute;n ambiental aplicable. Identificando, previniendo y minimizando impactos ambientales negativos, derivados de nuestras actividades, instalaciones y servicios.</font></p>\r\n\r\n<p align=\"JUSTIFY\" style=\"margin-right: 0.08cm; margin-bottom: 0.28cm;\"><font face=\"Arial, sans-serif\">* Identificar y gestionar el impacto adverso sobre el ambiente, en concordancia con el principio b&aacute;sico de prevenci&oacute;n, en todas las etapas de nuestros procesos, desde la evaluaci&oacute;n y planificaci&oacute;n inicial de proyectos hasta la gesti&oacute;n de operaciones y abandono de las mismas a trav&eacute;s del cumplimiento de nuestros objetivos y metas ambientales.</font></p>\r\n\r\n<p align=\"JUSTIFY\" style=\"margin-right: 0.08cm; margin-bottom: 0.28cm;\"><font face=\"Arial, sans-serif\">* Motivar, entrenar y educar a nuestro personal para que efect&uacute;e sus labores de una manera </font><span style=\"font-size: 10pt; line-height: 115%; font-family: Arial, sans-serif;\">ambientalmente&nbsp;</span><font face=\"Arial, sans-serif\">responsable.</font></p>\r\n\r\n<p align=\"JUSTIFY\" style=\"margin-right: 0.08cm; margin-bottom: 0.28cm;\"><font face=\"Arial, sans-serif\">* Llevar a cabo revisiones y auditorias </font><span style=\"font-size: 10pt; line-height: 115%; font-family: Arial, sans-serif;\">peri&oacute;dicas&nbsp;</span><font face=\"Arial, sans-serif\">sobre nuestro Sistema de </font><span style=\"font-size: 10pt; line-height: 115%; font-family: Arial, sans-serif;\">Gesti&oacute;n&nbsp;</span><font face=\"Arial, sans-serif\">Ambiental para verificar y evaluar el cumplimiento de los objetivos y metas ambientales.</font></p>\r\n\r\n<p style=\"margin-bottom: 0.28cm;\"><font face=\"Arial, sans-serif\">* Mantener a disposici&oacute;n de la comunidad en general nuestra pol&iacute;tica, as&iacute; como el avance de nuestro desempe&ntilde;o ambiental.</font></p>\r\n','<p><font face=\"Arial, serif\" style=\"line-height: 1.6em;\"><b>Certificado de Honor &ldquo;MASTER en Alta Gerencia&rdquo;</b></font><font face=\"Arial, serif\" style=\"line-height: 1.6em;\">, recibido por el Consejo Superior Internacional de Prensa a nombre del Centro Iberoamericano de Altos Estudios Econ&oacute;micos, Financieros y Comercio Exterior y Centro Internacional de la Empresa Peruana Emergente. Otorgado al Ing. Jos&eacute; Manuel Guerra Urruche, por su gran capacidad para dirigir empresas y trayectoria empresarial de &eacute;xito. Lima, 22 de Julio del 2011.</font></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><font face=\"Arial, serif\" style=\"line-height: 1.6em;\"><b>Certificado de Honor &ldquo;Master en Liderazgo Gerencial&rdquo;,&nbsp;</b></font><font face=\"Arial, serif\" style=\"line-height: 1.6em;\">otorgado al Ing. Jos&eacute; Manuel Guerra Urruche por su Excelencia y Liderazgo Gerencial en la Empresa Peruana del A&ntilde;o. Lima, 16 de Abril del 2010.</font></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><font face=\"Arial, serif\"><b>Certificado de Honor &ldquo;Master Internacional en Gesti&oacute;n Gerencial&rdquo;&nbsp;</b></font><font face=\"Arial, serif\">por &Eacute;XITO AWARDS 2010</font><font face=\"Arial, serif\"><b>,&nbsp;</b></font><font face=\"Arial, serif\">otorgado al Ing. Jos&eacute; Manuel Guerra Urruche por su Sobresaliente Desempe&ntilde;o Gerenciando a la Empresa m&aacute;s Importante de su Pa&iacute;s. Noviembre del 2010.</font></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ldquo;<font face=\"Arial, serif\"><b>Certificado Internacional de Excelencia Empresarial&rdquo;&nbsp;</b></font><font face=\"Arial, serif\">por &Eacute;XITO AWARDS 2010</font><font face=\"Arial, serif\"><b>,&nbsp;</b></font><font face=\"Arial, serif\">otorgado a BRYNAJOM S.R.L. por su Liderazgo y Exitosa Gesti&oacute;n como la Empresa m&aacute;s Destacada de su Pa&iacute;s. Noviembre del 2010.</font></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><font face=\"Arial, serif\"><b>Certificado de Honor &ldquo;Testimonio de Excelencia 2009&rdquo;,&nbsp;</b></font><font face=\"Arial, serif\">otorgado a BRYNAJOM S.R.L. en Reconocimiento a su Calidad y Liderazgo como la Empresa m&aacute;s Destacada del A&ntilde;o. Lima, 16 de Abril del 2010.</font></p>\r\n\r\n<p><font face=\"Arial, serif\">&nbsp;</font></p>\r\n\r\n<div>&nbsp;</div>\r\n');
/*!40000 ALTER TABLE `web_empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_equipo`
--

DROP TABLE IF EXISTS `web_equipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_equipo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` longtext NOT NULL,
  `modelo_equipo` varchar(50) DEFAULT NULL,
  `marca_equipo` varchar(50) NOT NULL,
  `serie_equipo` varchar(50) NOT NULL,
  `potencia` varchar(50) DEFAULT NULL,
  `anio` varchar(4) NOT NULL,
  `propiedad` varchar(50) NOT NULL,
  `capacidad` varchar(50) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `tipo_de_equipo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `web_equipo_13e6c9bf` (`tipo_de_equipo_id`),
  CONSTRAINT `tipo_de_equipo_id_refs_id_bf476dea` FOREIGN KEY (`tipo_de_equipo_id`) REFERENCES `web_tipoequipo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_equipo`
--

LOCK TABLES `web_equipo` WRITE;
/*!40000 ALTER TABLE `web_equipo` DISABLE KEYS */;
INSERT INTO `web_equipo` VALUES (1,'EXC. HIDRAULICA SOBRE ORUGA\r\n','336DL. N°1','CATERPILLAR','M4T00961','200/268','2011','PROPIO ','2.40 m4','listaequipo/1/336DL. N°1.jpg',1),(2,'EXC. HIDRAULICA SOBRE ORUGA\r\n','336DL. N°2','CATERPILLAR','M4T00963','200/268','2011','PROPIO ','2.40 m4','listaequipo/2/336DL. N°2.jpg',1),(3,'EXC. HIDRAULICA SOBRE ORUGA\r\n','330DL','CATERPILLAR','JLP00468','200/268','2009','PROPIO ','2.40 m4','listaequipo/3/330DL.jpg',1),(4,'EXC. HIDRAULICA SOBRE ORUGA\r\n','329 DL 1','CATERPILLAR','MNB00622','180/250','2010','PROPIO ','2.30 m3','listaequipo/4/329 DL 1.jpg',1),(5,'EXC. HIDRAULICA SOBRE ORUGA\r\n','329 DL 2','CATERPILLAR','MNB01346','180/250','2010','PROPIO ','2.30 m3','',1),(6,'EXC. HIDRAULICA SOBRE ORUGA\r\n','329 DL 3','CATERPILLAR','MNB01292','180/250','2010','PROPIO ','2.30 m3','',1),(7,'EXC. HIDRAULICA SOBRE ORUGA\r\n','329 DL 4','CATERPILLAR','MNB01290','180/250','2010','PROPIO ','2.30 m3','',1),(8,'EXC. HIDRAULICA SOBRE ORUGA\r\n','325DL. N°1','CATERPILLAR','T2S00298','152/204','2008','PROPIO ','2.30 m3','listaequipo/8/325DL. N°1.jpg',1),(9,'EXC. HIDRAULICA SOBRE ORUGA\r\n','325DL. N°2','CATERPILLAR','SCR00618','152/204','2009','PROPIO ','2.07 m3','listaequipo/9/325DL. N°2.jpg',1),(10,'EXC. HIDRAULICA SOBRE ORUGA\r\n','325DL. N°3','CATERPILLAR','LAL00517','152/204','2010','PROPIO ','2.60 m3','listaequipo/10/325DL. N°3.jpg',1),(11,'EXC. HIDRAULICA SOBRE ORUGA\r\n','322BL','CATERPILLAR','8NR00230','120/161','1997','PROPIO ','1.80 m3','listaequipo/11/322BL.jpg',1),(12,'TRACTOR SOBRE ORUGA\r\n','D7R II. N°1','CATERPILLAR','AEC01948','192/258','2009','PROPIO ','','listaequipo/12/D7R II. N°1.jpg',1),(13,'TRACTOR SOBRE ORUGA\r\n','D7R II. N°2','CATERPILLAR','BRM00988','192/258','2011','PROPIO ','','listaequipo/13/D7R II. N°2.jpg',1),(14,'TRACTOR SOBRE ORUGA\r\n','D6T','CATERPILLAR','SMC00130','159/213','2008','PROPIO ','','listaequipo/14/D6T.jpg',1),(15,'TRACTOR SOBRE ORUGA\r\n','D6D','CATERPILLAR','9FK00774','105/140','1988','PROPIO ','','listaequipo/15/D6D.jpg',1),(16,'TRACTOR SOBRE ORUGA\r\n','D6D','CATERPILLAR','75W01913','98/128','1981','PROPIO ','','listaequipo/16/D6D1.jpg',1),(17,'SCOOPTRAMP\r\n','R1600G. N°1','CATERPILLAR','9PP78004','200/268','2010','PROPIO ','4.86 m3','listaequipo/17/R1600G. N°1.jpg',1),(18,'SCOOPTRAMP\r\n','R1600G. N°2','CATERPILLAR','9YZ00666','200/268','2012','PROPIO ','4.86 m3','listaequipo/18/R1600G. N°2.jpg',1),(19,'SCOOPTRAMP\r\n','R1600G. N°3','CATERPILLAR','9YZ00680','200/268','2012','PROPIO ','4.86 m3','listaequipo/19/R1600G. N°3.jpg',1),(20,'SCOOPTRAMP\r\n','R1700G. N°1','CATERPILLAR','SBR00954','200/268','2012','PROPIO ','4.86 m3','',1),(21,'SCOOPTRAMP\r\n','R1700G. N°2','CATERPILLAR','SBR00976','200/268','2012','PROPIO ','4.86 m3','',1),(22,'DUMP TRUCK DUX-1\r\n','DT33N','DUX','1236','400','2012','PROPIO ','30 TN','listaequipo/22/DT33N.jpg',1),(23,'DUMP TRUCK DUX-2\r\n','DT33N','DUX','1237','400','2012','PROPIO ','30 TN','',1),(24,'CARGADOR FRONTAL\r\n','962H. N°1','CATERPILLAR','M3G00302','172/230','2007','PROPIO ','3.50 m3','listaequipo/24/962H. N°1.jpg',1),(25,'CARGADOR FRONTAL\r\n','962H. N°2','CATERPILLAR','M3G00790','172/230','2011','PROPIO ','3.50 m3','listaequipo/25/962H. N°2.jpg',1),(26,'CARGADOR FRONTAL\r\n','962H. N°3','CATERPILLAR','M3G01325','172/230','2012','PROPIO ','3.50 m3','',1),(27,'CARGADOR FRONTAL\r\n','950F','CATERPILLAR','2LM00744','126/170','1999','PROPIO ','3.00 m3','listaequipo/27/950F.jpg',1),(28,'RODILLO VIBRATORIO\r\n','CS-533E. N°1','CATERPILLAR','BZE00841','93/125','2008','PROPIO ','10 TN','listaequipo/28/CS-533E. N°1.jpg',1),(29,'RODILLO VIBRATORIO\r\n','CS-533E. N°2','CATERPILLAR','BZE01018','97/130','2009','PROPIO ','10 TN','listaequipo/29/CS-533E. N°2.jpg',1),(30,'RODILLO VIBRATORIO\r\n','CS-56E. N°2','CATERPILLAR','C5S00939','97/130','2012','PROPIO ','12 TN','listaequipo/30/CS-56E. N°2.jpg',1),(31,'MOTONIVELADORA\r\n','140H','CATERPILLAR','5HM03656','138/185','2008','PROPIO ','','listaequipo/31/140H.jpg',1),(32,'MOTONIVELADORA\r\n','140M','CATERPILLAR','B9D03950','138/185','2012','PROPIO ','','listaequipo/32/140M.jpg',1),(33,'RETROEXCAVADORA\r\n','420E. N°1','CATERPILLAR','HLS02676','93/124','2008','PROPIO ','','listaequipo/33/420E. N°1.jpg',1),(34,'RETROEXCAVADORA\r\n','420E. N°2','CATERPILLAR','PRA01258','93/124','2010','PROPIO ','','listaequipo/34/420E. N°2.jpg',1),(35,'RETROEXCAVADORA\r\n','416E. N°3','CATERPILLAR','LMS02450','93/124','2013','PROPIO ','','',1),(36,'MINICARGADOR\r\n','246C','CATERPILLAR','JAY02425','','2008','PROPIO ','','listaequipo/36/246C.jpg',1),(37,'MINICARGADOR\r\n','236B','CATERPILLAR','A9H02524','','2012','PROPIO ','','',1),(38,'MONTACARGA\r\n','CAT','CATERPILLAR','AT18C30495','','2012','PROPIO ','','',1),(39,'MIXER\r\n','CARMIX 2.5 TT','CATERPILLAR','D25-G53','63/84.5','2010','PROPIO ','','listaequipo/39/CARMIX 2.5 TT.jpg',1),(40,'MIXER\r\n','CARMIX 3.5 TT','CATERPILLAR','DIS A77','63/84.5','2010','PROPIO ','','listaequipo/40/CARMIX 3.5 TT.jpg',1),(41,'CAMIÓN ARTICULADO\r\n','740 STD. N°1','CATERPILLAR','B1P05875','338/453','2011','PROPIO ','24M3','listaequipo/41/740 STD. N°1.jpg',2),(42,'CAMIÓN ARTICULADO\r\n','740 STD. N°2','CATERPILLAR','B1P05887','338/453','2011','PROPIO ','24M3','listaequipo/42/740 STD. N°2.jpg',2),(43,'CAMIÓN ARTICULADO\r\n','740 STD. N°3','CATERPILLAR','B1P05911','338/453','2011','PROPIO ','24M3','listaequipo/None/CAMION ARTICULADO 740 STD. N°3.jpg',2),(44,'CAMIÓN ARTICULADO\r\n','740B N°3','CATERPILLAR','L4E01129','338/453','2012','PROPIO ','24M3','',2),(45,'VOLQUETE WP-9742\r\n','TRAKKER','IVECO','8ATE3TRT08X060031','279/380','2007','PROPIO ','10 M3','',2),(46,'VOLQUETE WP-9744\r\n','TRAKKER','IVECO','8ATE3TRT08X060029','279/380','2007','PROPIO ','10 M3','',2),(47,'VOLQUETE WIF-911\r\n','SEMIRROQUERA','IVECO','8ATE3TSTOAX070948','309/414','2010','PROPIO ','10 M3','',2),(48,'VOLQUETE WIG-915\r\n','SEMIRROQUERA','IVECO','8ATE3TSTOAX070947','309/414','2010','PROPIO ','10 M3','',2),(49,'VOLQUETE W2E-833\r\n','TRAKKER 380T42ADN','IVECO','8ATE3TSTOAX071394','309/414','2010','PROPIO ','16 M3','listaequipo/49/TRAKKER.jpg',2),(50,'VOLQUETE W2E-862\r\n','TRAKKER 380T42ADN','IVECO','8ATE3TSTOBX071990','309/414','2010','PROPIO ','16 M3','',2),(51,'VOLQUETE W2E-831\r\n','TRAKKER 380T42ADN','IVECO','8ATE3TSTOBX072332','309/414','2010','PROPIO ','16 M3','',2),(52,'VOLQUETE W2E-860\r\n','TRAKKER 380T42ADN','IVECO','8ATE3TSTOBX071843','309/414','2010','PROPIO ','16 M3','',2),(53,'VOLQUETE W2I-930\r\n','TRAKKER 380T42ADN','IVECO','8ATE3TSTOBX072331','309/414','2010','PROPIO ','16 M3','',2),(54,'VOLQUETE W2Q-872\r\n','TRAKKER 380T42H','IVECO','8ATE3TSTOBX074220','309/414','2010','PROPIO ','16 M3','',2),(55,'VOLQUETE W2M-837\r\n','TRAKKER 380T42H','IVECO','8ATE3TSTOBX073225','309/414','2010','PROPIO ','16 M3','',2),(56,'VOLQUETE W2Q-884\r\n','TRAKKER 380T42H','IVECO','8ATE3TSTOBX073826','309/414','2010','PROPIO ','16 M3','',2),(57,'VOLQUETE W2T-943\r\n','TRAKKER 380T42H','IVECO','8ATE3TSTOBX072398','309/414','2010','PROPIO ','16 M3','',2),(58,'VOLQUETE W2U-859\r\n','TRAKKER 380T42H','IVECO','8ATE3TSTOBX071969','309/414','2010','PROPIO ','16 M3','',2),(59,'VOLQUETE COB-801\r\n','FMX','VOLVO','93KJS02D9BE778182','324/440','2011','PROPIO ','16 M3','listaequipo/59/imagen.jpg',2),(60,'VOLQUETE COY-892\r\n','FMX','VOLVO','YV2JS02D6BA715057','324/440','2011','PROPIO ','16 M3','',2),(61,'VOLQUETE B7K-760\r\n','FMX','VOLVO','YV2JS02DOCA727299','324/440','2012','PROPIO ','16 M3','',2),(62,'VOLQUETE B7J-768\r\n','FMX','VOLVO','YV2JS02D6CA727291','324/440','2012','PROPIO ','16 M3','',2),(63,'VOLQUETE B70-796\r\n','FMX','VOLVO','YV2JS02DOCA727321','324/440','2012','PROPIO ','16 M3','',2),(64,'VOLQUETE B7M-746\r\n','FMX','VOLVO','YV2JS02D1CA727313','324/440','2012','PROPIO ','16 M3','',2),(65,'VOLQUETE B7K-798\r\n','FMX','VOLVO','YV2JS02D1CA727294','324/440','2012','PROPIO ','16 M3','',2),(66,'VOLQUETE B7R-733\r\n','FMX','VOLVO','YV2JS02D7CA727302','324/440','2012','PROPIO ','16 M3','',2),(67,'VOLQUETE D1W-706\r\n','FMX','VOLVO','93KJS02D3CE792211','324/440','2012','PROPIO ','16 M3','',2),(68,'VOLQUETE D2R-789\r\n','FMX','VOLVO','93KJS02D3CE792639','324/440','2012','PROPIO ','16 M3','',2),(69,'VOLQUETE XI-2468\r\n','N12 6x4','VOLVO','9BVN2BDXNG200370','298/400','1992','PROPIO ','10 M3','',2),(70,'VOLQUETE XI-3390\r\n','N10 6x4','VOLVO','9BVN2B2DORE643021','','1994','PROPIO ','10 M3','',2),(71,'VOLQUETE XQ-7954\r\n','N12 6x4','VOLVO','9BVN2B4DOXG203152','420CV','1999','PROPIO ','10 M3','',2),(72,'CAMA BAJA A2D-981\r\n','CAMA BAJA','TRAMONTANA','8S9RT20030CEUS032','','2010','PROPIO ','','',2),(73,'CAMA BAJA B5Y-988 \r\n','CAMA BAJA','TRAMONTANA','8S9RT24111CEU8068','','2011','PROPIO','','',2),(74,'TRAKTO REMOLCADOR D4B 764 \r\n','FMX','VOLVO','9BVJS02D6DDE794190','309/414','2012','PROPIO','','listaequipo/74/TRAKTO REMOLCADOR D4B 764.jpg',2),(75,'TRAKTO REMOLCADOR W1F-914 \r\n','STRALIS HD740 S42TZ','IVECO','8ATS2SSH09X069095','309/414','2010','PROPIO','','listaequipo/75/TRAKTO REMOLCADOR W1F-914.jpg',2),(76,'CAMIÓN COMBUSTIBLE W1D-816 \r\n','HD72','HYUNDAI','KMFGA17AP9C096393','191/256','2008','PROPIO','1,500 GLN','listaequipo/76/CAMION COMBUSTIBLE W1D-816.jpg',2),(77,'CAMIÓN CISTERNA AGUA W1C-906 \r\n','','YUEJIN','LNJXNPL369K101180','','2009','PROPIO','3,000 GLN','listaequipo/77/CAMION CISTERNA AGUA W1C-906_1.jpg',2),(78,'CAMIÓN CISTERNA AGUA W1U-833 \r\n','FM 26','HINO','JHDFKIJRUAXX13313','191/256','2010','PROPIO','3,000 GLN','listaequipo/78/CAMION CISTERNA AGUA W1U-833.jpg',2),(79,'CAMIÓN DE CARGA WAI - 810 \r\n','','YUEJIN','LNJXJPJ199K600830','','2009','PROPIO','','listaequipo/79/CAMION DE CARGA WAI - 810.jpg',2),(80,'CAMIÓN BARANDA W2S - 920 \r\n','','HYUNDAI','KMFGA17LPBC156694','','2010','PROPIO','','',2),(81,'CAMIÓN BARANDA W2V - 845 \r\n','','HYUNDAI','KMFGA17LPBC156693','','2010','PROPIO','','',2),(82,'CAMIÓN BARANDA W2T - 707 \r\n','','HINO','JHHYCLOH3CK002171','','2012','PROPIO','','listaequipo/82/CAMION BARANDA W2T - 707.jpg',2),(83,'CAMIÓN BARANDA D1K 729 \r\n','','HYUNDAI','D4DDCS13320','','2012','PROPIO','','',2),(84,'OMNIBUS W1U - 960 \r\n','','TOYOTA','JTGFH5182B3002003','','2010','PROPIO','','',2),(85,'OMNIBUS B9M - 321 \r\n','','HYUNDAI','KMJHG17LPBC050987','','2011','PROPIO','','',2),(86,'CAMIONETA PICKUP OP-2221 \r\n','4x4 HILUX','TOYOTA','MROFZ22G680657534','','2008','PROPIO','','',2),(87,'CAMIONETA PICKUP OP-2223 \r\n','4x4 HILUX','TOYOTA','MROFZ22G180657537','','2008','PROPIO','','listaequipo/87/CAMIONETA PICKUP OP-2223 4x4 HILUX.jpg',2),(88,'CAMIONETA PICKUP W1N-846 \r\n','4x4 HILUX','TOYOTA','MROFZ29G1A1586863','','2010','PROPIO','','',2),(90,'CAMIONETA PICKUP W2S-859 \r\n','4x4 HILUX','TOYOTA','MROFR22G6A0571307','','2010','PROPIO','','',2),(91,'CAMIONETA PICKUP W2S-857 \r\n','4x4 HILUX','TOYOTA','MROFR22GOA0571318','','2010','PROPIO','','',2),(92,'CAMIONETA PICKUP W2S-899 \r\n','4x4 HILUX','TOYOTA','MROFR22G5A0571069','','2010','PROPIO','','',2),(93,'CAMIONETA PICKUP PQT-390 \r\n','4x4 HILUX','TOYOTA','MROFZ29G991556800','','2008','PROPIO','','',2),(94,'CAMIONETA PICKUP W3K-949 \r\n','4x4 HILUX','TOYOTA','MROFR22G8B0594394','','2011','PROPIO','','',2),(95,'CAMIONETA PICKUP W3K-948 \r\n','4x4 HILUX','TOYOTA','MROFR22G8B0595050','','2011','PROPIO','','',2),(96,'CAMIONETA PICKUP W3K-947 \r\n','4x4 HILUX','TOYOTA','MROFZ29G4B1625589','','2011','PROPIO','','',2),(97,'CAMIONETA PICKUP W3Y-878 \r\n','4x4 HILUX','TOYOTA','MROFR22G4CO669321','','2011','PROPIO','','',2),(98,'CAMIONETA PICKUP W3Y-879 \r\n','4x4 HILUX','TOYOTA','MROFR22G1CO0669163','','2011','PROPIO','','',2),(99,'CAMIONETA PICKUP W3N 721 \r\n','4x4 HILUX','TOYOTA','MROFZ22GXC1066271','','2012','PROPIO','','',2),(100,'CAMIONETA PICKUP W3N 722 \r\n','4x4 HILUX','TOYOTA','MROFZ22G5C1183658','','2012','PROPIO','','',2),(101,'CAMIONETA PICKUP W3Z-838 \r\n','4x4 HILUX','TOYOTA','MROFZ22G1D1186610','','2013','PROPIO','','',2),(102,'CAMIONETA PICKUP W3Z-839 \r\n','4x4 HILUX','TOYOTA','MROFZ22G3D1187435','','2013','PROPIO','','',2),(103,'TRACK DRILL \r\n','350','JOY','S/N','','1998','PROPIO','','',3),(104,'JUMBO MONOMATIC 1 \r\n','H105D','TAMROCK','97AD221','55/560','2005','PROPIO','','listaequipo/104/H105D.jpg',3),(105,'JUMBO BOOMER 282-2 \r\n','','ATLAS COPCO','AV0110530','','2012','PROPIO','','listaequipo/105/JUMBO BOOMER 282-2.jpg',3),(106,'JUMBO BOOMER 282-3 \r\n','','ATLAS COPCO','AV012A448','','2012','PROPIO','','',3),(107,'COMPRESORA DE AIRE \r\n','','SULLAIR','S/N','','1998','PROPIO ','','listaequipo/107/COMPRESORA DE AIRE.jpg',3),(108,'COMPRESORA NEUMATICA \r\n','P250-WIR','INGERSOLL RAND','315368UHK389 ','79','2001','PROPIO ','','listaequipo/108/COMPRESORA NEUMATICA.jpg',3),(109,'COMPRESORA COMPAIR \r\n','C76','COMPAIR','WCA1G0813A1A20116 ','','2008','PROPIO','','',3),(110,'COMPRESORA COMPAIR \r\n','C76','COMPAIR','WCA1G0813CAA20133 ','','2013','PROPIO','','',3),(111,'COMPRESORA COMPAIR \r\n','C76','COMPAIR','WCAAG0813A1A20116 ','','2013','PROPIO','','',3),(112,'COMPRESORA COMPAIR \r\n','C62','COMPAIR','WCA1F121081720003 ','','2012','PROPIO','','listaequipo/112/C62.jpg',3),(113,'MARTILLO PERFORADOR DE RETRO \r\n','','CATERPILLAR','S/N','','2010','PROPIO ','','',3),(114,'COMPRESORA NEUMATICA \r\n','A 125','ATLAS COPCO','AIA0108996 ','80','1998','PROPIO','','',3),(115,'MARTILLOS NEUMATICOS (08 UND) \r\n','','ATLAS COPCO','S/N','','2004','PROPIO ','','',3),(116,'MAQUINA EXTRUSORA - EXTRUDER WELDING (04 UND)\r\n','MA - 36 ','ADDR ','DE 56070 ','','2008','PROPIO ','','listaequipo/116/MA - 36.jpg',4),(117,'MAQUINA CUÑA - WEDGE - IT SERIE 2000 (03 UND)\r\n','','W / CASE ','CW 2000 B ','','2008','PROPIO','','listaequipo/117/MAQUINA CUÑA - WEDGE - IT SERIE 2000 (03 UND).jpg',4),(118,'LEISTER (4)\r\n','TRIAK ','CASE ','CH-6060SARNEN ','','2009','PROPIO ','','',4),(119,'MAQUINA DE COSER (2)\r\n','GK26-1A ','LUIS SEW ','S/N','','2009','PROPIO ','','listaequipo/119/GK26-1A.jpg',4),(120,'EQUIPOS DE CONTROL DE CALIDAD\r\n','','S/N','S/N','','2012','PROPIO ','','listaequipo/120/EQUIPOS DE CONTROL DE CALIDAD.jpg',4),(121,'ESTACION TOTAL\r\n','GTS- 236 W','TOP CON','283560','','2007','PROPIO','','listaequipo/121/GTS- 236 W.jpg',5),(122,'ESTACION TOTAL\r\n','GTS- 236 W','TOP CON','302378','','2008','PROPIO','','',5),(123,'ESTACION TOTAL (02)\r\n','','LEICA','S/N','','2011','PROPIO ','','listaequipo/123/ESTACION TOTAL (02).jpg',5),(124,'NAVEGADOR (GPS)\r\n','GPS - 60','GARMIN','37772517','','2007','PROPIO','','',5),(125,'TEODOLITO ELECTRONICO\r\n','NE 101','NIKON','S/N','','2006','PROPIO ','','',5),(126,'NIVEL TOPOGRAFICO (05 UND)\r\n','GPT 3005 W','TOP CON','S/N','','2007','PROPIO','','',5),(127,'MAQUINA DE SOLDAR\r\n','R-440','HOBART','S/N','','2007','PROPIO ','','',6),(128,'COMPRESORA DE AIRE\r\n','PE 30T60M','MEBA','S/N','2.24 / 3','2010','PROPIO','','',6),(129,'AMOLADORA\r\n','','BOSH','S/N','0.18 / 0.25','2008','PROPIO','','',6),(130,'COMPRESORA DE AIRE\r\n','750H','SULLAIR','S/N','105/140','2006','PROPIO','','',6),(131,'PLANCHA COMPACTADORA (06UND)\r\n','M-8','MAQUIMAC','S/N','8','2007','PROPIO','','listaequipo/131/M-8.jpg',7),(132,'GENERADOR ELECTRICO (02UND)\r\n','3306','CATERPILLAR','B8D01432','','2011','PROPIO','','listaequipo/132/3306.jpg',7),(133,'MOTOSOLDADORA\r\n','VANTAGE 500','CATERPILLAR','U1110505445','','2011','PROPIO','','',7),(134,'GRUPO ELECTROGENO\r\n','GEP65-11','CATERPILLAR','OLY00000VLES00745','','2011','PROPIO','','',7),(135,'LUMINARIA TEREX (05 UND)\r\n','RL 4000','TEREX','RL411-4263','','2011','PROPIO','','listaequipo/135/RL 4000.jpg',7),(136,'MAQUINA DE SOLDAR\r\n','R-440','HOBART PERU','HF 8657','','1998','PROPIO','','',7),(137,'MEZCLADORA DE CONCRETO (06UND)\r\n','11 P3','HONDA','S/N','8','2006','PROPIO','','listaequipo/137/11 P3.jpg',7),(138,'VIBRADOR DE CONCRETO (08 UND)\r\n','','HONDA','S/N','','1999','PROPIO','','',7),(139,'RADIOS MOTOROLA (25 UND)\r\n','PRO 5150','MOTOROLA','S/N','','2007','PROPIO','','',7),(140,'ZARANDAS 3,50 X 5 (02)\r\n','','S/N','S/N','','2000','PROPIO','','',7),(141,'MAQUINA DE TERMOFUSION (02)\r\n','WIDOS 4900 ','WIDOS ','S/N','','2011','PROPIO','','listaequipo/141/WIDOS 4900.jpg',4),(142,'MAQUINA DE TERMOFUSION (01)\r\n','WIDOS 5500 ','WIDOS ','S/N','','2013','PROPIO','','',4),(143,'CAMIÓN FURGON CARGA W4B - 886\r\n','PICKUP K2700','KIA','KNCSGX71AD7756566','','2013','PROPIO','2TN','listaequipo/143/CAMION FURGON CARGA W4B - 886.jpg',2),(144,'LABORATORIO DE SUELOS\r\n','COMPLETO (04)','S/N','S/N','','2013','PROPIO','','listaequipo/144/LABORATORIO DE SUELOS.jpg',5);
/*!40000 ALTER TABLE `web_equipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_imagenproyecto`
--

DROP TABLE IF EXISTS `web_imagenproyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_imagenproyecto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proyecto_id` int(11) NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `descripcion` longtext,
  `principal` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `web_imagenproyecto_c565d5e0` (`proyecto_id`),
  CONSTRAINT `proyecto_id_refs_id_cf24d24b` FOREIGN KEY (`proyecto_id`) REFERENCES `web_proyecto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_imagenproyecto`
--

LOCK TABLES `web_imagenproyecto` WRITE;
/*!40000 ALTER TABLE `web_imagenproyecto` DISABLE KEYS */;
INSERT INTO `web_imagenproyecto` VALUES (1,2,'proyecto/2/2. Construccion de diques.JPG','',0),(2,2,'proyecto/2/2. Presa Puquiococha DUVAZ.JPG','',0),(3,2,'proyecto/2/2. Presa Puquiococha Etapa I.jpg','',0),(4,2,'proyecto/2/2. Trabajos en Cantera Ticlio.JPG','',0),(5,3,'proyecto/3/1. Deposito Relaves N°3 Etapa 1B.jpg','',0),(6,4,'proyecto/4/2. Adenda Presa Const. Dique proteccion.jpg','',0),(7,4,'proyecto/4/2. Adenda Sistema Instalacion Tuberia HDPE.jpg','',0),(8,5,'proyecto/5/3.Recrecimiento Dep. Relaves N °2 Inst. Geomalla.jpg','',0),(9,5,'proyecto/5/3. Recrecimiento Deposito de Relaves N°2.JPG','',0),(10,5,'proyecto/5/3. Recrecimiento Deposito N°2 Bateas.jpg','',0),(11,6,'proyecto/6/4. Sistema de Interconexion de bombas.jpg','',0),(12,6,'proyecto/6/4. Termofusion de Tuberias HDPE.jpg','',0),(13,7,'proyecto/7/5. Casetas de bombeo de relaves.jpg','',0),(14,7,'proyecto/7/5. Inst. Tub HDPE.JPG','',0),(15,7,'proyecto/7/5. Sistema de transporte de relaves.jpg','',0),(16,8,'proyecto/8/6. Deposito Relaves San Francisco Etapa I.jpg','',0),(17,8,'proyecto/8/6. Deposito San Francisco Etapa I.JPG','',0),(18,8,'proyecto/8/6. Drenaje Subterraneo San Francisco.jpg','',0),(19,11,'proyecto/11/3. Cierre Relavera A Fase 2.jpg','',0),(20,12,'proyecto/12/4. Construccion Poza Rublo almacenamiento relaves derramados.JPG','',0),(21,12,'proyecto/12/4. Deposito de TopSoil San Inocente.JPG','',0),(22,12,'proyecto/12/4. Dique de Poza Rublo.jpg','',0),(23,13,'proyecto/13/5. Acceso Gaviones Caudalosa.JPG','',0),(24,13,'proyecto/13/5. Construccion dique C - Caudalosa.JPG','',0),(25,13,'proyecto/13/5. Dique Arranque Dep. Relaves C.JPG','',0),(26,13,'proyecto/13/5. Dique C.JPG','',0),(27,13,'proyecto/13/5. Dique Deposito C - Caudalosa.JPG','',0),(28,13,'proyecto/13/5. Movimiento Tierras Dique C.JPG','',0),(29,14,'proyecto/14/1. CC-044-13. Nuevo Drenaje Area Norte.jpg','',0),(30,14,'proyecto/14/1. CC-044-13. Nuevo Drenaje Area Norte2.jpg','',0),(31,15,'proyecto/15/2. CC-003-13. Drenaje Chancadora Sur.jpg','',0),(32,15,'proyecto/15/2. CC-003-13. Transporte de relaves.JPG','',0),(33,16,'proyecto/16/3. CC-056-12. Transporte relave chacapampa2.JPG','',0),(34,16,'proyecto/16/3. CC-056-12. Transporte Relave Chacapampa.jpg','',0),(35,17,'proyecto/17/4. CC-051-12. Drenaje Zona Norte.jpg','',0),(36,17,'proyecto/17/4. CC-051-12. Movimiento de relave.JPG','',0),(37,17,'proyecto/17/4. CC-051-12. Transporte de relave de zona norte.JPG','',0),(38,17,'proyecto/17/4. CC-051-12. Transporte de relaves.jpg','',0),(39,18,'proyecto/18/5. CC-039-12. Estabilidad Fisica Espesador.jpg','',0),(40,18,'proyecto/18/5. CC-039-12. Estabilidad Fisica Espesador2.jpg','',0),(41,19,'proyecto/19/6. CC-020-12. Transporte de relave ZONA TUNEL.JPG','',0),(42,20,'proyecto/20/7. CC-005-12. Transporte de relaves.JPG','',0),(43,20,'proyecto/20/7. CC-005-12. Transporte de relaves2.jpg','',0),(44,21,'proyecto/21/8. CC-030-11. Transporte relave Chancadora.JPG','',0),(45,21,'proyecto/21/8. CC-030-11. Transporte relave Zona Norte Este y Oeste.JPG','',0),(46,22,'proyecto/22/9. CC-020-11. Contrafuerte.JPG','',0),(47,22,'proyecto/22/9. CC-020-11. Contrafuerte Estabilizador.jpg','',0),(48,23,'proyecto/23/10. CC-007-11. Dep. Relaves Chacapampa.jpg','',0),(49,23,'proyecto/23/10. CC-007-11. Dep. Relaves Chacapampa1.jpg','',0),(50,23,'proyecto/23/10. CC-007-11. Dep. Relaves Chacapampa2.jpg','',0),(51,23,'proyecto/23/10. CC-007-11. Dep. Relaves Chacapampa3.jpg','',0),(52,24,'proyecto/24/11. CC-005-11. Colocacion de pernos.JPG','',0),(53,24,'proyecto/24/11. CC-005-11. Instalacion de Cimbras.jpg','',0),(54,24,'proyecto/24/11. CC-005-11. Instalacion de mallas y pernos.JPG','',0),(55,24,'proyecto/24/11. CC-005-11. Limpieza de material con Scoop.JPG','',0),(56,24,'proyecto/24/11. CC-005-11. Portal de salida Tunel.jpg','',0),(57,24,'proyecto/24/11. CC-005-11. Shocreteo de tunel.JPG','',0),(58,24,'proyecto/24/11. CC-005-11. Tunel y Acceso Chacapampa.jpg','',0),(59,24,'proyecto/24/11. CC-005-11. Tunel y Acceso Chacapampa2.jpg','',0),(60,24,'proyecto/24/11. CC-005-11. Tunel y Acceso Chacapampa3.JPG','',0),(61,25,'proyecto/25/12. CC-003-11. Dep. Zona Tunel (fondo).JPG','',0),(62,25,'proyecto/25/12. CC-003-11. Deposito Zona Tunel.jpg','',0),(63,26,'proyecto/26/13. CC-019-12. Camiones DUX Cobriza.JPG','',0),(64,26,'proyecto/26/13. CC-019-12. Jumbo Atlas.JPG','',0),(65,26,'proyecto/26/13. CC-019-12. Jumbo Monomatic.JPG','',0),(66,26,'proyecto/26/13. CC-019-12. Jumbo Oldemburg.JPG','',0),(67,26,'proyecto/26/13. CC-019-12. Scoops CAT.JPG','',0),(68,26,'proyecto/26/13. CC-019-12. Trabajos en Interior Mina.jpg','',0),(69,27,'proyecto/27/14. Repar. Geosint. Chanc Nort-Sur.jpg','',0),(70,28,'proyecto/28/15. CC-019-11. Canaleta de concreto.jpg','',0),(71,28,'proyecto/28/15. CC-019-11. Remed. Geosint y Drenaje Area Norte Oeste.jpg','',0),(72,29,'proyecto/29/16. POSER 12236. Dique de arranque Contrafuerte.jpg','',0),(73,29,'proyecto/29/16. POSER 12236. Repar. Geosint y SD Todas la presas.jpg','',0),(74,30,'proyecto/30/17. POSER 12167. Extraccion de Relave.jpg','',0),(75,30,'proyecto/30/17. POSER 12167. Transporte de Relave.jpg','',0),(76,30,'proyecto/30/17. POSER 12235. Transporte de Relave.jpg','',0),(77,30,'proyecto/30/17. POSER 12237. Transporte de Relave.jpg','',0),(78,31,'proyecto/31/18. CC-016-10. Pozas de contingencia.jpg','',0),(79,32,'proyecto/32/19. POSER 12059. Rep. Geosint Area Norte.jpg','',0),(80,32,'proyecto/32/19. POSER 12197. Rep. geosint. y drenaje Area Norte.jpg','',0),(81,32,'proyecto/32/19. POSER 12199. Transp Relave Sobresaturado.jpg','',0),(82,33,'proyecto/33/20. CC-011-10. 3er Recrec. Presa Chancadora.JPG','',0),(83,33,'proyecto/33/20. CC-011-10. Chancadora 3er Recrecimiento.JPG','',0),(84,33,'proyecto/33/20. CC-011-10. Chancadora 3 Filtro.JPG','',0),(85,33,'proyecto/33/20. CC-011-10. Chancadora 3 Norte.JPG','',0),(86,33,'proyecto/33/20. CC-011-10. Drenaje Chancadora 3.JPG','',0),(87,33,'proyecto/33/20. CC-011-10. Filtro presa chancadora 3.JPG','',0),(88,34,'proyecto/34/21. CC-031-09. 2do Recrec. Presa Chancadora.jpg','',0),(89,34,'proyecto/34/21. CC-031-09. 2do Recrec. Presa Chancadora Norte.JPG','',0),(90,34,'proyecto/34/21. CC-031-09. Chancadora 2.jpg','',0),(91,34,'proyecto/34/21. CC-031-09. Chancadora 2 Norte.JPG','',0),(92,34,'proyecto/34/21. CC-031-09. Drenaje Chancadora 2 Norte.JPG','',0),(93,35,'proyecto/35/22. CC-009-07. Diques de Presa Area Norte.jpg','',0),(94,35,'proyecto/35/22. CC-009-07. Diques de Relave Area Norte.jpg','',0),(95,35,'proyecto/35/22. CC-044-07. Corte de terreno.JPG','',0),(96,35,'proyecto/35/22. CC-044-07. Corte e Impermeabil. de talud.JPG','',0),(97,35,'proyecto/35/22. CC-044-07. Estabilizacion de talud.jpg','',0),(98,35,'proyecto/35/22. CC-044-07. Perfilado del talud.jpg','',0),(99,35,'proyecto/35/22. CC-054-07. Presa Zona Norte 1ra Etapa..jpg','',0),(100,35,'proyecto/35/22. CC-054-07. Presa Zona Norte  2da Etapa.JPG','',0),(101,35,'proyecto/35/22. CC-054-07. Presa Zona Norte Drenaje.JPG','',0),(102,36,'proyecto/36/23. CC-011-08. Recrec. Relleno Sanit. Platanal.JPG','',0),(103,36,'proyecto/36/23. Presa Platanal.jpg','',0),(104,37,'proyecto/37/24. POSER 11656. Mantt. Chonta-Cobriza.jpg','',0),(105,37,'proyecto/37/24. POSER 11656. Mantt. Chonta-Cobriza afirmado.jpg','',0),(106,38,'proyecto/38/25. CC-012-08. Trocha Pukatoro.JPG','',0),(107,38,'proyecto/38/25. CC-015-08. Trocha Pukatoro.jpg','',0),(108,38,'proyecto/38/25. CC-035-07. Plataforma de perforacion Choccec.jpg','',0),(109,38,'proyecto/38/25. CC-035-07. Trocha Choccec Carhuancho.png','',0),(110,39,'proyecto/39/26. POSER 11166. Remed. Limonar Norte.jpg','',0),(111,39,'proyecto/39/26. POSER 11271. Remed. Limonar Sur.jpg','',0),(112,39,'proyecto/39/26. POSER 11348. Espesador.JPG','',0),(113,39,'proyecto/39/26. POSER 11718. Transp. Relave Zona Norte-Taza Norte.jpg','',0),(114,42,'proyecto/42/1. Agua Potable La Joya - Arequipa.jpg','',0),(115,42,'proyecto/42/1. Excavacio red de Agua La Joya - Arequipa.jpg','',0),(116,43,'proyecto/43/2. Presa Huarmislla - Huancavelica.JPG','',0),(117,43,'proyecto/43/2. Sistema Riego Huarmislla - Huancavelica.JPG','',0),(118,48,'proyecto/48/7. Carretera Baños termales.JPG','',0),(119,48,'proyecto/48/7. Muro Carretera Baños Termales - Pampalca.JPG','',0),(120,53,'proyecto/53/12. Carretera Tucuccasa - Paucarbamba.JPG','',0),(121,54,'proyecto/54/13. Laguna de Oxidacion Pucara - Jaen.JPG','',0),(122,57,'proyecto/57/16. Carretera Manzanayocc - Churcampa.JPG','',0),(123,56,'proyecto/56/15. Trocha Anco.JPG','',0),(124,56,'proyecto/56/15. Trocha Carrozable Santa Rosa - Anco.JPG','',0),(125,58,'proyecto/58/17. Trocha Carrozable Relave - Churcampa.JPG','',0),(126,61,'proyecto/61/20. Carretera Acobamba - Huancavelica.jpg','',0),(127,61,'proyecto/61/20. Trabajos en Cantera Acobamba.JPG','',0);
/*!40000 ALTER TABLE `web_imagenproyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_informacion`
--

DROP TABLE IF EXISTS `web_informacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_informacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `direccion` longtext NOT NULL,
  `telefono` longtext NOT NULL,
  `facebook` varchar(200) NOT NULL,
  `twitter` varchar(200) DEFAULT NULL,
  `youtube` varchar(200) NOT NULL,
  `googleplus` varchar(200) NOT NULL,
  `video1` longtext NOT NULL,
  `titulovideo1` varchar(200) NOT NULL,
  `imagenvideo1` varchar(100) NOT NULL,
  `video2` longtext,
  `titulovideo2` varchar(200) DEFAULT NULL,
  `imagenvideo2` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_informacion`
--

LOCK TABLES `web_informacion` WRITE;
/*!40000 ALTER TABLE `web_informacion` DISABLE KEYS */;
INSERT INTO `web_informacion` VALUES (1,'Brynajom','brynajom@hotmail.com','<p text-center=\"\">Direcci&oacute;n Fiscal Lima: Av. Las Palmeras N&deg; 540, Interior 101F, Urb. Parque Monterrico &ndash; La Molina - Lima.<br />\r\nDirecci&oacute;n Huancayo: Prolongaci&oacute;n Grau N&deg; 2533 &ndash; El Tambo &ndash; Huancayo.</p>\r\n','<p text-center=\"\">RPM: #09576946<br />\r\nRPC: 09576946<br />\r\nTel: 064-676946</p>\r\n','https://www.facebook.com/pages/Brynajom/239838632837233','','https://www.youtube.com/channel/UCtil8WscaQkh0rWHrWXOQ7g','https://plus.google.com/114436472156619183744/posts','http://www.youtube.com/embed/J9OEVEFC4DI','Titulo 1','video/1/video1.png','http://www.youtube.com/embed/Q-VOMJS-9kM','Titulo 2','');
/*!40000 ALTER TABLE `web_informacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_noticia`
--

DROP TABLE IF EXISTS `web_noticia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_noticia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `descripcion` longtext NOT NULL,
  `fecha` datetime NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `video` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_noticia`
--

LOCK TABLES `web_noticia` WRITE;
/*!40000 ALTER TABLE `web_noticia` DISABLE KEYS */;
INSERT INTO `web_noticia` VALUES (1,'REPRESA HUARMISLLA - HUANCAVELICA','Se viene ejecutando los trabajos de la contruccion de la represa huarmislla de 30 metros de altura con fines de optimización de uso del agua del rio la cual sera transportada a travez de 13 kilometros de tubería de diametros desde 100 mm hasta 650 mm (PVC Y HDPE) y derivada en diferentes puntos de su recorrido','2013-12-13 18:03:52','','');
/*!40000 ALTER TABLE `web_noticia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_postulante`
--

DROP TABLE IF EXISTS `web_postulante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_postulante` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(250) NOT NULL,
  `apellidos` varchar(250) NOT NULL,
  `curriculum` varchar(100) NOT NULL,
  `puesto_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `web_postulante_bcd83b9d` (`puesto_id`),
  CONSTRAINT `puesto_id_refs_id_9f1f4b24` FOREIGN KEY (`puesto_id`) REFERENCES `web_puesto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_postulante`
--

LOCK TABLES `web_postulante` WRITE;
/*!40000 ALTER TABLE `web_postulante` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_postulante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_proyecto`
--

DROP TABLE IF EXISTS `web_proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_proyecto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entidad` varchar(250) NOT NULL,
  `lugar` varchar(250) NOT NULL,
  `proyecto` longtext NOT NULL,
  `final` date DEFAULT NULL,
  `ejecutandose` tinyint(1) NOT NULL,
  `monto` decimal(10,2) DEFAULT NULL,
  `categoria_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `web_proyecto_5f2644f7` (`categoria_id`),
  CONSTRAINT `categoria_id_refs_id_e4bc7c83` FOREIGN KEY (`categoria_id`) REFERENCES `web_servicio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_proyecto`
--

LOCK TABLES `web_proyecto` WRITE;
/*!40000 ALTER TABLE `web_proyecto` DISABLE KEYS */;
INSERT INTO `web_proyecto` VALUES (1,'SOCIEDAD MINERA AUSTRIA DUVAZ.  ','MOROCOCHA JUNIN','RECRECIMIENTO DEL SECTOR OESTE DE LA PRESA PUQUIOCOCHA.\r\nETAPA II\r\n',NULL,1,0.00,2),(2,'SOCIEDAD MINERA AUSTRIA DUVAZ.  ','MOROCOCHA JUNIN','AMPLIACION LATERAL OESTE DE LA RELAVERA PUQUIOCOCHA.\r\nETAPA I\r\n','2013-02-01',0,804257.47,2),(3,'MINERA BATEAS SAC. CAYLLOMA.','AREQUIPA','CONSTRUCCION DEL DEPOSITO DE RELAVES N°3 – ETAPA IB\r\n',NULL,1,2417943.60,2),(4,'MINERA BATEAS SAC. CAYLLOMA.','AREQUIPA','ADENDA N°1 Y N°2 DE OBRA POR LA CONSTRUCCION DEL DEPOSITO\r\n DE RELAVES Y SISTEMA DE TRANSPORTE\r\n','2013-02-01',0,680238.12,2),(5,'MINERA BATEAS SAC. CAYLLOMA.','AREQUIPA','RECRECIMIENTO DEL DEPOSITO DE RELAVES N°2 ZONA SUR\r\n','2012-09-01',0,246337.53,2),(6,'MINERA BATEAS SAC. CAYLLOMA.','AREQUIPA','OBRAS CIVILES E INSTALACION DE TUB.HDPE DEL SIST. DE\r\nINTERCONEXION PARA LA CASA DE BOMBAS.\r\n','2012-09-01',0,84026.47,2),(7,'MINERA BATEAS SAC. CAYLLOMA.','AREQUIPA','CONSTRUCCION DEL SISTEMA DE TRANSPORTE Y DISPOSICION DE\r\nRELAVES EN EL DEPOSITO SAN FRANCISCO\r\n','2012-07-01',0,1261562.02,2),(8,'MINERA BATEAS SAC. CAYLLOMA.','AREQUIPA','CONSTRUCCION DEL NUEVO DEPOSITO DE RELAVES BATEAS Y OBRAS\r\nAUXILIARES – ETAPA I\r\n','2011-12-01',0,2448254.76,2),(9,'MINERA CAUDALOSA.','HUACHOCOLPA. HUANCAVELICA','1RA ETAPA DE LA CONSTRUCCION ANTES DE INICIO DE OPERACIÓN \r\nDEL DEPOSITO DE RELAVES “C”\r\n',NULL,1,1269442.18,2),(10,'MINERA CAUDALOSA.','HUACHOCOLPA. HUANCAVELICA','CONSTRUCCION DE LA RELAVERA “C”\r\n','2012-12-01',0,3014433.93,2),(11,'MINERA CAUDALOSA.','HUACHOCOLPA. HUANCAVELICA','CIERRE DE LA RELAVERA “A” FASE 2\r\n','2012-09-01',0,1183574.10,2),(12,'MINERA CAUDALOSA.','HUACHOCOLPA. HUANCAVELICA','CONSTRUCCION DE UN DIQUE DE ESTABILIZACION Y OBRAS \r\nCOMPLEMENTARIAS – POZA RUBLO PARA ALMACENAMIENTO DE\r\n','2011-12-01',0,1626509.58,2),(13,'MINERA CAUDALOSA.','HUACHOCOLPA. HUANCAVELICA','DIQUE DE ARRANQUE DEL DEPOSITO DE RELAVES “C” Y \r\nREUBICACION PARCIAL DEL ACCESO A HUACHOCOLPA\r\n','2010-05-01',0,1578200.00,2),(14,'DOE RUN PERU SRL. MINA COBRIZA.','HUANCAVELICA','RECUPERACION DEL SISTEMA DE SUBDRENAJE DE LA RELAVERA\r\nAREA NORTE. CC-044-13\r\n','2013-05-01',0,146000.00,2),(15,'DOE RUN PERU SRL. MINA COBRIZA.','HUANCAVELICA','TRANSPORTE DE RELAVES PARA GENERAR ESPACIOS EN LAS\r\nRELAVERAS CHANCADORA Y AREA NORTE. CC-003-13\r\n','2013-04-01',0,1535450.00,2),(16,'DOE RUN PERU SRL. MINA COBRIZA.','HUANCAVELICA','TRANSPORTE DE RELAVES Y COBERTURA DEL DEPOSITO\r\nCHACAPAMPA. CC-056-12\r\n',NULL,1,7705000.00,2),(17,'DOE RUN PERU SRL. MINA COBRIZA.','HUANCAVELICA','TRANSPORTE DE RELAVES PARA GENERAR ESPACIOS EN LAS\r\nRELAVERAS CHANCADORA Y AREA NORTE. CC-051-12\r\n','2012-10-01',0,926000.00,2),(18,'DOE RUN PERU SRL. MINA COBRIZA.','HUANCAVELICA','ESTABILIDAD FISICA DEL DEPOSITO TEMPORAL DE RELAVES – AREA\r\nESPESADOR. CC-039-12\r\n','2013-05-01',0,327000.00,2),(19,'DOE RUN PERU SRL. MINA COBRIZA.','HUANCAVELICA','TRANSPORTE Y RELLENO DE MATERIAL DE RELAVE DESHUMEDECIDO\r\nA LA RELAVERA ZONA TUNEL. CC-020-12\r\n','2012-12-01',0,1743630.00,2),(20,'DOE RUN PERU SRL. MINA COBRIZA.','HUANCAVELICA','TRANSPORTE DE RELAVES Y REMEDIACION DE GEOMEMBRANAS. CC-\r\n005-12\r\n','2012-05-01',0,1194000.00,2),(21,'DOE RUN PERU SRL. MINA COBRIZA.','HUANCAVELICA','TRANSPORTE DE RELAVES DESDE PRESA CHANCADORA Y AREA\r\nNORTE HACIA ESPESADOR ANTIGUO, CONTRAFUERTE, AREA TUNEL.\r\nCC-030-11\r\n','2011-12-01',0,999000.00,2),(22,'DOE RUN PERU SRL. MINA COBRIZA.','HUANCAVELICA','CONTRAFUERTE ESTABILIZADOR DEL DEPOSITO DE RELAVES NORTE-\r\nNORTE. CC-020-11\r\n','2011-10-01',0,830154.65,2),(23,'DOE RUN PERU SRL. MINA COBRIZA.','HUANCAVELICA','CONSTRUCCION DE LA 1RA ETAPA DEL DEPOSITO DE RELAVES\r\nCHACAPAMPA. CC-007-11\r\n','2013-03-01',0,3387981.49,2),(24,'DOE RUN PERU SRL. MINA COBRIZA.','HUANCAVELICA','CONSTRUCCION DE ACCESO Y TUNEL A DEPOSITO CHACAPAMPA. CC-\r\n005-11\r\n','2012-09-01',0,2538363.83,2),(25,'DOE RUN PERU SRL. MINA COBRIZA.','HUANCAVELICA','CONSTRUCCION DEL DEPOSITO DE RELAVES ZONA TUNEL. CC-003-11\r\n','2011-12-01',0,1036546.21,2),(26,'DOE RUN PERU SRL. MINA COBRIZA.','HUANCAVELICA','DESARROLLO Y PREPARACION DE LA PROFUNDIZACION DEL AREA DE\r\nPUMAGAYOC. CC-019-12\r\n',NULL,1,2000000.00,3),(27,'DOE RUN PERU SRL. MINA COBRIZA.','HUANCAVELICA','- REPARACION Y REMEDIACION DE GEOSINTETICOS Y SISTEMAS DE\r\nDRENAJE DE PRESA CHANCADORA 3 (LADO NORTE Y LADO SUR)\r\n- REPARACION DE GEOSINTETICOS RELLENO SANITARIO PLATANAL.\r\n','2011-07-01',0,75620.09,2),(28,'DOE RUN PERU SRL. MINA COBRIZA.','HUANCAVELICA','REPARACION GEOSINT. PRESA AREA NORTE OESTE, CONST. CORTINA\r\nZONA ESPESADOR, APERTURA TROCHA NIVEL 80, CONSTRUCCION DE\r\n','2011-04-01',0,150035.62,2),(29,'DOE RUN PERU SRL. MINA COBRIZA.','HUANCAVELICA','- REPARACION DE GEOSINTETICOS Y TUBERIAS DE DRENAJE EN LOS\r\nVASOS DE LAS RELAVERAS: CHANCADORA NORTE, AREA NORTE,\r\n- CONSTRUCCION DE LA BASE DEL CONTRAFUERTE. POSER 12236\r\n\r\n','2011-04-01',0,175147.70,2),(30,'DOE RUN PERU SRL. MINA COBRIZA.','HUANCAVELICA','CONSTRUCCION DE DIQUES DE RELAVE EN DEPOSITOS DE RELAVE\r\nNORTE NORTE Y ESPESADOR ANTIGUO, TRANSPORTADOS DESDE\r\n','2011-06-01',0,1674000.00,2),(31,'DOE RUN PERU SRL. MINA COBRIZA.','HUANCAVELICA','CONSTRUCCION DE LAS POZAS DE CONTINGENCIA DE CONCRETO\r\nPARA ALMACENAMIENTO DE RELAVE. CC-016-10\r\n','2011-05-01',0,1956523.54,2),(32,'DOE RUN PERU SRL. MINA COBRIZA.','HUANCAVELICA','- TRANSPORTE DE RELAVES SOBRESATURADO DESDE CHANCADORA\r\nSUR 3 HACIA LA ZONA NORTE NORTE. POSER 12199\r\n- REPARACION DE GEOSINTETICOS Y SISTEMAS DE DRENAJE EN\r\nPRESAS DE RELAVES. POSER 12197.\r\n- REPARACION DE GEOSINTETICOS, CANAL DE CORONACION DEL\r\nVASO DE LA PRESA AREA NORTE. POSER 12059.\r\n\r\n','2010-12-01',0,61837.35,2),(33,'DOE RUN PERU SRL. MINA COBRIZA.','HUANCAVELICA','TERCER RECRECIMIENTO DEL DEPOSITO DE RELAVES – AREA\r\nCHANCADORA – LIMONAR. CC-011-10\r\n','2010-10-01',0,2754879.71,2),(34,'DOE RUN PERU SRL. MINA COBRIZA.','HUANCAVELICA','RECRECIMIENTO DE LA PRESA LIMONAR – 2DA ETAPA. MINA\r\nCOBRIZA. CC-031-09\r\n','2009-12-01',0,566845.45,2),(35,'DOE RUN PERU SRL. MINA COBRIZA.','HUANCAVELICA','- AMPLIACION DE LA PRESA DE RELAVES “AREA NORTE”\r\n(IMPERMEABILIZACION Y SISTEMA DE DRENAJE. CC-054-07\r\n- CONSTRUCCION DE DIQUES DE RELAVE DE LA AMPLIACION DE LA\r\nPRESA AREA NORTE. CC-009-07\r\n- CORTE DE TERRENO PARA CONSTRUCCION DE PLATAFORMA. CC-\r\n044-07\r\n','2008-11-01',0,1736608.02,2),(36,'DOE RUN PERU SRL. MINA COBRIZA.','HUANCAVELICA','RECRECIMIENTO DEL RELLENO SANITARIO “EL PLATANAL”. CC-011-08\r\n','2008-10-01',0,117075.71,4),(37,'DOE RUN PERU SRL. MINA COBRIZA.','HUANCAVELICA','MANTENIMIENTO DE CARRETERA: CHONTA – COBRIZA. POSER 11656\r\n','2008-12-01',0,275817.37,5),(38,'DOE RUN PERU SRL. MINA COBRIZA.','HUANCAVELICA','CONSTRUCCION DE LA TROCHA CARROZABLE MAYHUAVILCA –\r\nPUKATORO. CC-012-08\r\n','2008-10-01',0,326258.09,5),(39,'DOE RUN PERU SRL. MINA COBRIZA.','HUANCAVELICA','- REMEDIACION DEL SISTEMA DE DRENAJE DE LA PRESA LIMONAR –\r\nLADOS NORTE Y SUR. POSER 11166, POSER 11271.\r\n- TRASLADO Y CONFORMACION DE RELAVE DE PRESA ZONA NORTE A\r\nTAZA NORTE. POSER 11718.\r\n- CARGUIO Y TRANSPORTE DE RELAVE DESDE EL ESPESADOR HASTA\r\nPRESA LIMONAR. POSER 11348\r\n\r\n','2008-10-01',0,341447.64,2),(40,'DOE RUN PERU SRL. MINA COBRIZA.','HUANCAVELICA','- ALQUILER DE MAQUINARIA PESADA PARA OPERACIONES EN MINA.\r\n- ALQUILER DE MAQUINARIA PESADA PARA OPERACIONES EN MINA\r\n(TRACTOR ORUGA Y CARGADOR FRONTAL)\r\n','2008-10-01',0,259214.65,2),(41,'DOE RUN PERU SRL. MINA COBRIZA.','HUANCAVELICA','- CONSTRUCCION DE ESTABLO EN LA COMUNIDAD DE CHACAPALPA.\r\n- CONSTRUCCION DE UN MODULO PARA ANIMALES MENORES EN LA\r\nCOMUNIDAD DE PUCARA.\r\n- CONDUCCION DE AGUA MEDIANTE TUBERIAS A 1KM DEL PUENTE\r\nDEL DISTRITO DE HUARI.\r\n','2006-10-01',0,100000.00,6),(42,'MUNICIPALIDAD DISTRITAL LA JOYA ','AREQUIPA','AMPLIACION DEL SERVICIO DE AGUA POTABLE EN LA ASOCIACION\r\nDE VIVIENDA A.A.H.H ALTO LA CANO. LA JOYA / AREQUIPA\r\n',NULL,1,1359971.12,4),(43,'MUNICIPALIDAD DISTRITAL ANCHOGA','ANCHONGA','CONSTRUCCION DEL SISTEMA DE RIEGO (REPRESA Y CANAL DE\r\nCONDUCCION TUB. HDPE) HUARMISLLA, PARCO ALTO. ANGARAES -\r\n',NULL,1,7162969.78,4),(44,'GOBIERNO REGIONAL DE HUANCAVELICA','HUANCAVELICA','MANTENIMIENTO\r\nPERIODICO\r\nCARRETERA\r\nISLAPAMPA\r\n–\r\nLLIHUAPAMPA – TINTAY PUNCO. TAYACAJA / HUANCAVELICA\r\n','2013-06-13',0,682667.48,5),(45,'GOBIERNO REGIONAL DE HUANCAVELICA','HUANCAVELICA','MANTENIMIENTO PERIODICO CARRETERA SURCUBAMBA –\r\nUCHUYSIHUAS – LLIHUAPAMPA. TAYACAJA / HUANCAVELICA\r\n','2013-06-13',0,714538.34,5),(46,'SENATI','PASCO','CONSTRUCCION DEL TALLER DE MAQUINARIA PESADA, AULAS Y\r\nSSHH DE LA SEDE DE SENATI. CERRO DE PASCO / PASCO\r\n','2013-03-01',0,780807.30,6),(47,'SENATI','PASCO','CONSTRUCCION DE HANGAR, CERCO PERIMETRICO, SSHH,\r\nVESTUARIOS Y LOSA DE SENATI. CERRO DE PASCO / PASCO.\r\n','2012-11-01',0,724007.12,6),(48,'EMPRESA COMUNAL SERV. MULT. R.L','PAMPALCA','MEJORAMIENTO DEL TRAMO DE LA CARRETERA EXPANSION –\r\nBAÑOS TERMALES. CORIS / CHURCAMPA / HUANCAVELICA\r\n','2013-05-01',0,2360000.00,5),(49,'SENATI','HUANCAVELICA','CONSTRUCCION NUEVA SEDE DE SENATI HUANCAVELICA \r\n','2012-07-01',0,3457103.95,6),(50,'MUNICIPALIDAD DISTRITAL DE PANGOA','SATIPO - JUNIN','MEJORAMIENTO DE LA CARRETERA VECINAL PORVENIR (SAN \r\nRAMON) VALLE SANGARENI. SATIPO / JUNIN \r\n','2011-04-01',0,1073364.73,5),(51,'MUN. DIST. PAUCARBAMBA','CHURCAMPA - HUANCAVELICA','AMPLIACION Y MEJORAMIENTO DEL SISTEMA DE AGUA POTABLE Y \r\nALCANTARILLADO DEL CP PAUCARBAMBA \r\n','2010-06-01',0,1190538.49,4),(52,'MUNICIPALIDAD DISTRITAL DE PAUCARBAMBA ','HUANCAVELICA','MOVIMIENTO DE TIERRAS PARA LA CONSTRUCCION DEL ESTADIO \r\nMUNICIPAL PAUCARBAMBA \r\n','2009-07-01',0,212899.50,5),(53,'GERENCIA SUB REGIONAL CHURCAMPA','HUANCAVELICA','MEJORAMIENTO Y CONSTRUC. CARRETERA TUCUCCASA – \r\n  PAUCARBAMBA – CHINCHIHUASI. HUANCAVELICA \r\n','2010-12-01',0,1095514.55,5),(54,'MUNICIPALIDAD DISTRITAL PUCARA ','JAEN - CAJAMARCA','LAGUNAS DE OXIDACION DE LA AMPLIACION DEL SISTEMA DE AGUA \r\nPOTABLE DE LA LOCALIDAD DE PUCARA – JAEN / CAJAMARCA \r\n','2010-03-01',0,953079.26,4),(55,'MUNICIPALIDAD DISTRITAL CHINCHIHUASI','HUANCAVELICA','MEJORAMIENTO DEL CAMINO VECINAL CHINCHIHUASI – SANTA \r\n  CRUZ DE MILPO. HUANCAVELICA. \r\n','2010-06-01',0,1544483.59,5),(56,'MUNICIPALIDAD DISTRITAL ANCO','CHURCAMPA ','MEJORAMIENTO DE LA CARRETERA SANTA ELENA – CUYOCC – SANTA ROSA – LA LIBERTAD. CHURCAMPA / HUANCAVELICA \r\n','2010-10-01',0,1472123.47,5),(57,'MUNICIPALIDAD DISTRITAL ANCO','CHURCAMPA - HUANCAVELICA','CONSTRUCCION DE LA CARRETERA MANZANAYOCC – CHACHASPATA. CHURCAMPA / HUANCAVELICA \r\n','2009-09-01',0,198941.09,5),(58,'MUNICIPALIDAD DISTRITAL ANCO','CHURCAMPA - HUANCAVELICA','CONSTRUCCION TROCHA CARROZABLE RELAVE – SANTA ROSA DE  CUYOCC. CHURCAMPA / HUANCAVELICA. \r\n','2009-03-01',0,390835.55,5),(59,'MUNICIPALIDAD DISTRITAL ANCO','CHURCAMPA - HUANCAVELICA','APERTURA DE ACCESO PARA CONSTRUCCION DEL PUENTE DE \r\nINTEGRACION ANCO ANDABAMBA. CHURCAMPA / HUANCAVELICA \r\n','2008-10-01',0,193000.00,5),(60,'MUNICIPALIDAD DISTRITAL ANCO','CHURCAMPA - HUANCAVELICA','MOVIMIENTO DE TIERRAS PARA LA CONSTRUCCION DEL ESTADIO DE \r\nLA COMUNIDAD DE QUICLLO. CHURCAMPA / HUANCAVELICA \r\n','2009-10-01',0,20400.00,5),(61,'GERENCIA SUB REGIONAL ACOBAMBA','HUANCAVELICA','MEJORAMIENTO DEL CAMINO DEPARTAMENTAL PALMIRA ALTA – \r\n  ACOBAMBA (20KM). ACOBAMBA / HUANCAVELICA \r\n','2008-12-01',0,811567.35,5),(62,'MUNICIPALIDAD DISTRITAL DE ACOBAMBILLA ','HUANCAVELICA','MEJORAMIENTO CARRETERA ASCENCION –  ANCCAPA.  ACOBAMBILLA / HUANCAVELICA \r\n','2008-10-01',0,238140.10,5),(63,'MUNICIPALIDAD DISTRITAL DE CHINCHIHUASI','FONCODES','ALQUILER DE MAQUINARIA PARA LA CONSTRUCCION DE LA TROCHA \r\nARMA PATACANCHA CALLQUI. \r\n','2005-12-01',0,95000.00,5),(64,'FRANC-OR RESOURCES PERU SAC ','FRANC-OR RESOURCES PERU SAC ','CONSTRUCCION Y LIMPIEZA DE ACCESO DEL PROYECTO MINERO \r\nMARIO. CHONGOS ALTO / HUANCAYO / JUNIN \r\n','2006-06-01',0,155000.00,5),(65,'SAMAC SAC ','SAMAC SAC ','LIMPIEZA, MANT., PERFILADO Y COMPACTADO DE AFIRMADO, \r\nACCESO DERECHO MINERO AURECA. LA OROYA / JUNIN \r\n','2007-09-01',0,168000.00,5),(66,'INPROMIC SAC ','INPROMIC SAC ','RECRECIMIENTO DE LA RELAVERA N°6 MHAR TUNEL VOLCAN \r\n','2006-08-01',0,235000.00,2);
/*!40000 ALTER TABLE `web_proyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_puesto`
--

DROP TABLE IF EXISTS `web_puesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_puesto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `descripcion` longtext NOT NULL,
  `imagen` longtext,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_final` date DEFAULT NULL,
  `mostrar` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_puesto`
--

LOCK TABLES `web_puesto` WRITE;
/*!40000 ALTER TABLE `web_puesto` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_puesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_servicio`
--

DROP TABLE IF EXISTS `web_servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_servicio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` longtext,
  `imagen` varchar(100) NOT NULL,
  `orden` int(11) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_servicio`
--

LOCK TABLES `web_servicio` WRITE;
/*!40000 ALTER TABLE `web_servicio` DISABLE KEYS */;
INSERT INTO `web_servicio` VALUES (1,'INFRAESTRUCTURA E INMOBILIARIA','<p><font face=\"Arial, serif\">Contamos con un selecto staff de profesionales de Arquitectura e Ingenier&iacute;a Civil, quienes ejecutan proyectos relacionados con la mejora de calidad de vida de los habitantes de nuestro pa&iacute;s.</font></p>\r\n\r\n<p><font face=\"Arial, serif\">Somos el soporte para el desarrollo de actividades necesarias en toda organizaci&oacute;n estructural de las ciudades y empresas tales como:</font></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><font face=\"Arial, serif\">Construcci&oacute;n de edificaciones.</font></p>\r\n	</li>\r\n	<li>\r\n	<p><font face=\"Arial, serif\">Viviendas unifamiliares.</font></p>\r\n	</li>\r\n	<li>\r\n	<p><font face=\"Arial, serif\">Inmuebles comerciales.</font></p>\r\n	</li>\r\n	<li>\r\n	<p><font face=\"Arial, serif\">Departamentos Urruche.</font></p>\r\n	</li>\r\n	<li>\r\n	<p><font face=\"Arial, serif\">Edificio Brynajom.</font></p>\r\n	</li>\r\n	<li>\r\n	<p><font face=\"Arial, serif\">Departamentos Progreso.</font></p>\r\n	</li>\r\n	<li>\r\n	<p><font face=\"Arial, serif\">Estacionamiento Piura.</font></p>\r\n	</li>\r\n	<li>\r\n	<p><font face=\"Arial, serif\">Construcciones de todo tipo.</font></p>\r\n	</li>\r\n</ul>\r\n\r\n<p><font face=\"Arial, serif\">Cumplimos y sobrepasamos las expectativas de nuestros clientes, a&uacute;n en las condiciones m&aacute;s dif&iacute;ciles.</font></p>\r\n\r\n<div>&nbsp;</div>\r\n','servicio/None/ii.jpg',1,1),(2,'TROCHAS CARROZABLES','<p><font face=\"Arial, serif\">La geolog&iacute;a, geograf&iacute;a y relieves topogr&aacute;ficos peruanos son diversos y muy accidentados, sum&aacute;ndole a ello condiciones hidrol&oacute;gicas y de precipitaciones variables que constituyen del suelo peruano, uno de los m&aacute;s dif&iacute;ciles de trabajar. Pero sin embargo se debe construir sobre ellas obras necesarias para la interconexi&oacute;n de los pueblos, por su desarrollo e integraci&oacute;n y del pa&iacute;s en general.</font></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><font face=\"Arial, serif\">Corte cerrado y a media ladera para la construcci&oacute;n de trochas.</font></p>\r\n	</li>\r\n	<li>\r\n	<p><font face=\"Arial, serif\">Perforaci&oacute;n y voladura para corte en roca fija y suelta.</font></p>\r\n	</li>\r\n	<li>\r\n	<p><font face=\"Arial, serif\">Conformaci&oacute;n y estabilizaci&oacute;n de taludes con banquetas.</font></p>\r\n	</li>\r\n	<li>\r\n	<p><font face=\"Arial, serif\">Obras de arte y drenaje.</font></p>\r\n	</li>\r\n	<li>\r\n	<p><font face=\"Arial, serif\">Manejo de explosivos.</font></p>\r\n	</li>\r\n</ul>\r\n','servicio/None/tc.JPG',2,1),(3,'OBRAS HIDRÁULICAS Y SANEAMIENTO','<p><font face=\"Arial, serif\">La planificaci&oacute;n y la gesti&oacute;n de los recursos h&iacute;dricos son la base de partida en el dimensionamiento de obras como: presas, canales, obras en entorno fluvial y drenaje. Hemos desarrollado proyectos de gran magnitud como:</font></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><font face=\"Arial, serif\">Construcci&oacute;n de lagunas de oxidaci&oacute;n.</font></p>\r\n	</li>\r\n	<li>\r\n	<p><font face=\"Arial, serif\">Obras de agua potable y alcantarillado.</font></p>\r\n	</li>\r\n	<li>\r\n	<p><font face=\"Arial, serif\">Construcci&oacute;n de reservorios de agua.</font></p>\r\n	</li>\r\n	<li>\r\n	<p><font face=\"Arial, serif\">Manejo de cuencas.</font></p>\r\n	</li>\r\n	<li>\r\n	<p><font face=\"Arial, serif\">Defensas rivere&ntilde;as y enrocadas.</font></p>\r\n	</li>\r\n	<li>\r\n	<p><font face=\"Arial, serif\">Encauzamiento de r&iacute;os y cauces.</font></p>\r\n	</li>\r\n	<li>\r\n	<p><font face=\"Arial, serif\">Construcci&oacute;n de represas de agua.</font></p>\r\n	</li>\r\n	<li>\r\n	<p><font face=\"Arial, serif\">Consolidaci&oacute;n de suelos para cimentaci&oacute;n de represas, a trav&eacute;s de taladros inyectados con cemento.</font></p>\r\n	</li>\r\n	<li>\r\n	<p><font face=\"Arial, serif\">Sistema de conducci&oacute;n de agua a trav&eacute;s de tuber&iacute;as PVC (embone), HDPE Corrugada variable (Electrofusi&oacute;n), HPDE Solida SDR Variable (Termofusi&oacute;n).</font></p>\r\n	</li>\r\n	<li>\r\n	<p><font face=\"Arial, serif\">Obras de concreto y met&aacute;licas para construcci&oacute;n de buzones, tomas, cajas.</font></p>\r\n	</li>\r\n	<li>\r\n	<p><font face=\"Arial, serif\">Captaci&oacute;n y encauzamiento de agua para generaci&oacute;n de energ&iacute;a de centrales el&eacute;ctricas.</font></p>\r\n	</li>\r\n</ul>\r\n','servicio/3/oh.JPG',3,1),(4,'MINERÍA SUBTERRÁNEA','<p><font face=\"Arial, serif\">Hacemos realidad proyectos complejos, que demandan de nuestra gente una gran solidez t&eacute;cnica, entrega y profesionalismo en la ejecuci&oacute;n de galer&iacute;as, rampas positivas y negativas (rectas y en espiral) con y sin sostenimiento, para las diferentes empresas mineras del pa&iacute;s.</font></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><font face=\"Arial, serif\">DOE RUN PER&Uacute; &ndash; UNIDAD MINERA COBRIZA</font></p>\r\n\r\n<p><font face=\"Arial, serif\">Desde el a&ntilde;o 2012, Brynajom viene ejecutando la construcci&oacute;n de rampas negativas en Zig Zag, rampas positivas, galer&iacute;as, cruceros, en dimensiones de 5 x 4 y 6 x 5 metros, utilizando jumbos Atlas Copco modelo Rocket boomer 282 y scoops CAT R1700. Tambi&eacute;n se han ejecutado: c&aacute;maras de perforaci&oacute;n diamantina y c&aacute;maras para perforaci&oacute;n con Raise Boring, de dimensiones entre 6 a 8 metros de altura. El objetivo fundamental de &eacute;ste trabajo es continuar con la profundizaci&oacute;n del &Aacute;rea Pumagayoc, zona principal de producci&oacute;n de la Mina Cobriza.</font></p>\r\n\r\n<p><font face=\"Arial, serif\">Adicionalmente, tambi&eacute;n se ha construido un t&uacute;nel de 6 x 7 metros, con instalaci&oacute;n de cimbras met&aacute;licas, pernos de anclaje y shotcrete por v&iacute;a h&uacute;meda en casi toda la longitud del t&uacute;nel. &Eacute;ste t&uacute;nel es el &uacute;nico acceso que tiene la Planta Concentradora Pampa de Coris para el transporte de relaves deshumedecidos desde sus relaveras temporales, donde depositan relave h&uacute;medo, hacia su relavera Chacapampa para su disposici&oacute;n final en forma compactada y encapsulada.</font></p>\r\n\r\n<div>&nbsp;</div>\r\n','servicio/None/msub.JPG',4,1),(5,'MINERÍA SUPERFICIAL','<p><font face=\"Arial, serif\">Trabajamos con las principales empresas mineras del Per&uacute;, contamos con la capacidad instalada y amplia experiencia para ejecutar proyectos mineros en sus diversas etapas y procesos, asegurando costos con presupuestos reales y generaci&oacute;n de valor a los clientes.</font></p>\r\n\r\n<p><font face=\"Arial, serif\">Nuestra experiencia abarca la elaboraci&oacute;n de estudios de ingenier&iacute;a, geotecnia, geomec&aacute;nica y supervisi&oacute;n.</font></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><font face=\"Arial, serif\">Ejecutamos el Proyecto Integral para la construcci&oacute;n de dep&oacute;sitos de relaves, desarrollando lo siguiente:</font></p>\r\n	</li>\r\n</ul>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><font face=\"Arial, serif\">Construcci&oacute;n de la presa de relave con diques conformados con materiales como: morr&eacute;nico, relave, desmonte de mina, roca, material de corte, etc.</font></p>\r\n	</li>\r\n	<li>\r\n	<p><font face=\"Arial, serif\">Estabilizaci&oacute;n e Impermeabilizaci&oacute;n de la presa con geosint&eacute;ticos (geotextil, geomembrana, geomallas, geocompuestos), as&iacute; como la construcci&oacute;n de sistemas de sub drenaje y drenaje con tuber&iacute;as corrugadas HDPE perforadas y solidas de diferentes di&aacute;metros.</font></p>\r\n	</li>\r\n	<li>\r\n	<p><font face=\"Arial, serif\">Construcci&oacute;n del sistema de conducci&oacute;n de relave, a trav&eacute;s de tuber&iacute;as lisas HDPE solidas de distintos di&aacute;metros y SDR, soldadas por Termofusi&oacute;n, Electrofusi&oacute;n y el m&eacute;todo que sea necesario.</font></p>\r\n	</li>\r\n	<li>\r\n	<p><font face=\"Arial, serif\">Instalaci&oacute;n de obras electromec&aacute;nicas para el sistema de bombeo de relave y recirculaci&oacute;n de agua.</font></p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><font face=\"Arial, serif\">Cierre temporal y definitivo de dep&oacute;sitos de relave.</font></p>\r\n	</li>\r\n	<li>\r\n	<p><font face=\"Arial, serif\">Obras de Estabilizaci&oacute;n de taludes de dep&oacute;sitos de relave y obras complementarias.</font></p>\r\n	</li>\r\n	<li>\r\n	<p><font face=\"Arial, serif\">Construcci&oacute;n de Pad de Lixiviaci&oacute;n.</font></p>\r\n	</li>\r\n	<li>\r\n	<p><font face=\"Arial, serif\">Recrecimiento de dep&oacute;sitos de relave.</font></p>\r\n	</li>\r\n	<li>\r\n	<p><font face=\"Arial, serif\">Manejo de relaves en general. Evacuaci&oacute;n de relave de presas para su reutilizaci&oacute;n, remediando y mejorando el sistema de drenaje.</font></p>\r\n	</li>\r\n	<li>\r\n	<p><font face=\"Arial, serif\">Construcci&oacute;n, estabilizaci&oacute;n y cierre de botaderos.</font></p>\r\n	</li>\r\n	<li>\r\n	<p><font face=\"Arial, serif\">Perforaci&oacute;n rotativa (NQ, HQ) para inyecci&oacute;n de columnas de Jet Grouting.</font></p>\r\n	</li>\r\n	<li>\r\n	<p><font face=\"Arial, serif\">Dise&ntilde;os y detalle de Ingenier&iacute;a.</font></p>\r\n	</li>\r\n	<li>\r\n	<p><font face=\"Arial, serif\">Trabajos de perforaci&oacute;n diamantina.</font></p>\r\n	</li>\r\n</ul>\r\n','servicio/None/msuper.JPG',5,1),(6,'CARRETERAS Y PAVIMENTACIÓN','<p><font face=\"Arial, serif\">Ofrecemos soluciones diferentes en Dise&ntilde;o, Construcci&oacute;n y Operaci&oacute;n de proyectos de infraestructura carretera de Clase Mundial, integrando equipos multidisciplinarios de ingenier&iacute;a y construcci&oacute;n.</font></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><font color=\"#000000\"><font face=\"Arial, serif\">Ejecutamos la explotaci&oacute;n de canteras para la obtenci&oacute;n de material granular (sub base, base) para la conformaci&oacute;n de pavimentos, as&iacute; mismo la obtenci&oacute;n de material grueso (filtros, rocas) para la estabilizaci&oacute;n y mejoramiento de suelos, adem&aacute;s de la utilizaci&oacute;n de geosint&eacute;ticos como geotextiles y geomallas.</font></font></p>\r\n	</li>\r\n	<li>\r\n	<p><font color=\"#000000\"><font face=\"Arial, serif\">Contamos con una chancadora para procesamiento de materiales.</font></font></p>\r\n	</li>\r\n	<li>\r\n	<p><font color=\"#000000\"><font face=\"Arial, serif\">Se realiza todo tipo de trabajo de movimiento de tierras (corte en material suelto, corte en roca suelta y fija), a media ladera o corte cerrado para la conformaci&oacute;n de carreteras.</font></font></p>\r\n	</li>\r\n	<li>\r\n	<p><font color=\"#000000\"><font face=\"Arial, serif\">Se realiza la construcci&oacute;n de pavimentos r&iacute;gidos y flexibles.</font></font></p>\r\n	</li>\r\n	<li>\r\n	<p><font color=\"#000000\"><font face=\"Arial, serif\">Se realiza la construcci&oacute;n de obras de arte para contenci&oacute;n de suelos (muros, gaviones, etc.) y para control de drenaje (alcantarillas, badenes, cunetas, etc.).</font></font></p>\r\n	</li>\r\n	<li>\r\n	<p><font color=\"#000000\"><font face=\"Arial, serif\">Se realiza todo tipo de obras de movimiento de tierras, obras de drenaje y pavimentaci&oacute;n de pistas de concreto y asfalto.</font></font></p>\r\n	</li>\r\n	<li>\r\n	<p><font color=\"#000000\"><font face=\"Arial, serif\">Construcci&oacute;n de pontones, puentes, t&uacute;neles y pasos a desnivel.</font></font></p>\r\n	</li>\r\n	<li>\r\n	<p><font color=\"#000000\"><font face=\"Arial, serif\">Construcci&oacute;n de autopistas, carreteras y caminos.</font></font></p>\r\n	</li>\r\n	<li>\r\n	<p><font color=\"#000000\"><font face=\"Arial, serif\">Pavimentaci&oacute;n de carreteras y autopistas.</font></font></p>\r\n	</li>\r\n	<li>\r\n	<p><font color=\"#000000\"><font face=\"Arial, serif\">Mantenimiento de autopistas, carreteras y caminos.&nbsp;</font></font></p>\r\n	</li>\r\n</ul>\r\n','servicio/None/otro_Servicio.jpg',6,1);
/*!40000 ALTER TABLE `web_servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_slider`
--

DROP TABLE IF EXISTS `web_slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` longtext,
  `imagen` varchar(100) NOT NULL,
  `orden` int(11) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_slider`
--

LOCK TABLES `web_slider` WRITE;
/*!40000 ALTER TABLE `web_slider` DISABLE KEYS */;
INSERT INTO `web_slider` VALUES (1,'Imagen1','Esta imagen bla bla bla bla','slider/None/VISION.JPG',1,1),(2,'Imagen2','otra imagen bla bla','slider/None/VALORES.JPG',2,1),(3,'Imagen3','Otra mas aasdhasds','slider/None/OBJETIVOS.JPG',3,1),(4,'Imagen4','y la ultima afadsdsad','slider/None/MISION.JPG',4,1);
/*!40000 ALTER TABLE `web_slider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_tipoequipo`
--

DROP TABLE IF EXISTS `web_tipoequipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_tipoequipo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `descripcion` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_tipoequipo`
--

LOCK TABLES `web_tipoequipo` WRITE;
/*!40000 ALTER TABLE `web_tipoequipo` DISABLE KEYS */;
INSERT INTO `web_tipoequipo` VALUES (1,'MAQUINARIA PESADA Y SEMIPESADA','categoriaequipo/None/maquinaria_pesada.png',''),(2,'VEHÍCULOS PESADOS Y LIVIANOS','categoriaequipo/None/vehiculos_pesados.png',''),(3,'EQUIPOS DE PERFORACIÓN','categoriaequipo/3/equipo_perforacion.png',''),(4,'EQUIPOS DE IMPERMEABILIZACIÓN','categoriaequipo/4/equipo_impermeabilizacion.png',''),(5,'EQUIPOS DE TOPOGRAFÍA','categoriaequipo/5/equipo_topografia.png',''),(6,'EQUIPOS DE TALLER MANTENIMIENTO MECÁNICO','categoriaequipo/6/equipo_mantenimiento.png',''),(7,'OTROS EQUIPOS','categoriaequipo/None/equipo_otro.png','');
/*!40000 ALTER TABLE `web_tipoequipo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-02-19 16:56:02
