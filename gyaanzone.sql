-- MySQL dump 10.13  Distrib 5.5.31, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: gyaanzone
-- ------------------------------------------------------
-- Server version	5.5.31-0ubuntu0.12.04.2

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
  KEY `permission_id_refs_id_5886d21f` (`permission_id`),
  CONSTRAINT `group_id_refs_id_3cea63fe` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `permission_id_refs_id_5886d21f` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
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
  CONSTRAINT `content_type_id_refs_id_728de91f` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add redirect',5,'add_redirect'),(14,'Can change redirect',5,'change_redirect'),(15,'Can delete redirect',5,'delete_redirect'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add site',7,'add_site'),(20,'Can change site',7,'change_site'),(21,'Can delete site',7,'delete_site'),(22,'Can add Setting',8,'add_setting'),(23,'Can change Setting',8,'change_setting'),(24,'Can delete Setting',8,'delete_setting'),(25,'Can add Site permission',9,'add_sitepermission'),(26,'Can change Site permission',9,'change_sitepermission'),(27,'Can delete Site permission',9,'delete_sitepermission'),(28,'Can add Comment',10,'add_threadedcomment'),(29,'Can change Comment',10,'change_threadedcomment'),(30,'Can delete Comment',10,'delete_threadedcomment'),(31,'Can add Keyword',11,'add_keyword'),(32,'Can change Keyword',11,'change_keyword'),(33,'Can delete Keyword',11,'delete_keyword'),(34,'Can add assigned keyword',12,'add_assignedkeyword'),(35,'Can change assigned keyword',12,'change_assignedkeyword'),(36,'Can delete assigned keyword',12,'delete_assignedkeyword'),(37,'Can add Rating',13,'add_rating'),(38,'Can change Rating',13,'change_rating'),(39,'Can delete Rating',13,'delete_rating'),(40,'Can add Blog post',14,'add_blogpost'),(41,'Can change Blog post',14,'change_blogpost'),(42,'Can delete Blog post',14,'delete_blogpost'),(43,'Can add Blog Category',15,'add_blogcategory'),(44,'Can change Blog Category',15,'change_blogcategory'),(45,'Can delete Blog Category',15,'delete_blogcategory'),(46,'Can add Form',16,'add_form'),(47,'Can change Form',16,'change_form'),(48,'Can delete Form',16,'delete_form'),(49,'Can add Field',17,'add_field'),(50,'Can change Field',17,'change_field'),(51,'Can delete Field',17,'delete_field'),(52,'Can add Form entry',18,'add_formentry'),(53,'Can change Form entry',18,'change_formentry'),(54,'Can delete Form entry',18,'delete_formentry'),(55,'Can add Form field entry',19,'add_fieldentry'),(56,'Can change Form field entry',19,'change_fieldentry'),(57,'Can delete Form field entry',19,'delete_fieldentry'),(58,'Can add Page',20,'add_page'),(59,'Can change Page',20,'change_page'),(60,'Can delete Page',20,'delete_page'),(61,'Can add Rich text page',21,'add_richtextpage'),(62,'Can change Rich text page',21,'change_richtextpage'),(63,'Can delete Rich text page',21,'delete_richtextpage'),(64,'Can add Link',22,'add_link'),(65,'Can change Link',22,'change_link'),(66,'Can delete Link',22,'delete_link'),(67,'Can add Gallery',23,'add_gallery'),(68,'Can change Gallery',23,'change_gallery'),(69,'Can delete Gallery',23,'delete_gallery'),(70,'Can add Image',24,'add_galleryimage'),(71,'Can change Image',24,'change_galleryimage'),(72,'Can delete Image',24,'delete_galleryimage'),(73,'Can add Twitter query',25,'add_query'),(74,'Can change Twitter query',25,'change_query'),(75,'Can delete Twitter query',25,'delete_query'),(76,'Can add Tweet',26,'add_tweet'),(77,'Can change Tweet',26,'change_tweet'),(78,'Can delete Tweet',26,'delete_tweet'),(79,'Can add entrance test',27,'add_entrancetest'),(80,'Can change entrance test',27,'change_entrancetest'),(81,'Can delete entrance test',27,'delete_entrancetest'),(82,'Can add sub course',28,'add_subcourse'),(83,'Can change sub course',28,'change_subcourse'),(84,'Can delete sub course',28,'delete_subcourse'),(85,'Can add course type',29,'add_coursetype'),(86,'Can change course type',29,'change_coursetype'),(87,'Can delete course type',29,'delete_coursetype'),(88,'Can add course',30,'add_course'),(89,'Can change course',30,'change_course'),(90,'Can delete course',30,'delete_course'),(91,'Can add facilities',31,'add_facilities'),(92,'Can change facilities',31,'change_facilities'),(93,'Can delete facilities',31,'delete_facilities'),(94,'Can add university',32,'add_university'),(95,'Can change university',32,'change_university'),(96,'Can delete university',32,'delete_university'),(97,'Can add institution',33,'add_institution'),(98,'Can change institution',33,'change_institution'),(99,'Can delete institution',33,'delete_institution'),(100,'Can add institute course',34,'add_institutecourse'),(101,'Can change institute course',34,'change_institutecourse'),(102,'Can delete institute course',34,'delete_institutecourse'),(103,'Can add institute course session',35,'add_institutecoursesession'),(104,'Can change institute course session',35,'change_institutecoursesession'),(105,'Can delete institute course session',35,'delete_institutecoursesession'),(106,'Can add log entry',36,'add_logentry'),(107,'Can change log entry',36,'change_logentry'),(108,'Can delete log entry',36,'delete_logentry'),(109,'Can add comment',37,'add_comment'),(110,'Can change comment',37,'change_comment'),(111,'Can delete comment',37,'delete_comment'),(112,'Can moderate comments',37,'can_moderate'),(113,'Can add comment flag',38,'add_commentflag'),(114,'Can change comment flag',38,'change_commentflag'),(115,'Can delete comment flag',38,'delete_commentflag');
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
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
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
INSERT INTO `auth_user` VALUES (1,'prtouch','','','srikanth@prtouch.com','pbkdf2_sha256$10000$ItPMw7od5AS7$oTP4SP7x6sRnhROwAgCuINQtpIzd6RYA4KCsw/d00Aw=',1,1,1,'2013-06-20 17:16:15','2013-06-20 17:08:20');
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
  KEY `group_id_refs_id_f116770` (`group_id`),
  CONSTRAINT `user_id_refs_id_7ceef80f` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `group_id_refs_id_f116770` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
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
  KEY `permission_id_refs_id_67e79cb` (`permission_id`),
  CONSTRAINT `user_id_refs_id_dfbab7d` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `permission_id_refs_id_67e79cb` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
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
-- Table structure for table `blog_blogcategory`
--

DROP TABLE IF EXISTS `blog_blogcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_blogcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `slug` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id_refs_id_5db8f583` (`site_id`),
  CONSTRAINT `site_id_refs_id_5db8f583` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blogcategory`
--

LOCK TABLES `blog_blogcategory` WRITE;
/*!40000 ALTER TABLE `blog_blogcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_blogcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_blogpost`
--

DROP TABLE IF EXISTS `blog_blogpost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_blogpost` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments_count` int(11) NOT NULL,
  `keywords_string` varchar(500) NOT NULL,
  `rating_count` int(11) NOT NULL,
  `rating_sum` int(11) NOT NULL,
  `rating_average` double NOT NULL,
  `site_id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `slug` varchar(2000) DEFAULT NULL,
  `_meta_title` varchar(500) DEFAULT NULL,
  `description` longtext NOT NULL,
  `gen_description` tinyint(1) NOT NULL,
  `status` int(11) NOT NULL,
  `publish_date` datetime DEFAULT NULL,
  `expiry_date` datetime DEFAULT NULL,
  `short_url` varchar(200) DEFAULT NULL,
  `in_sitemap` tinyint(1) NOT NULL,
  `content` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  `allow_comments` tinyint(1) NOT NULL,
  `featured_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id_refs_id_72f12b99` (`site_id`),
  KEY `user_id_refs_id_6020e4f0` (`user_id`),
  CONSTRAINT `user_id_refs_id_6020e4f0` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `site_id_refs_id_72f12b99` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blogpost`
--

LOCK TABLES `blog_blogpost` WRITE;
/*!40000 ALTER TABLE `blog_blogpost` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_blogpost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_blogpost_categories`
--

DROP TABLE IF EXISTS `blog_blogpost_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_blogpost_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blogpost_id` int(11) NOT NULL,
  `blogcategory_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blogpost_id` (`blogpost_id`,`blogcategory_id`),
  KEY `blogcategory_id_refs_id_18bfd24f` (`blogcategory_id`),
  CONSTRAINT `blogcategory_id_refs_id_18bfd24f` FOREIGN KEY (`blogcategory_id`) REFERENCES `blog_blogcategory` (`id`),
  CONSTRAINT `blogpost_id_refs_id_2b0b7b71` FOREIGN KEY (`blogpost_id`) REFERENCES `blog_blogpost` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blogpost_categories`
--

LOCK TABLES `blog_blogpost_categories` WRITE;
/*!40000 ALTER TABLE `blog_blogpost_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_blogpost_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_blogpost_related_posts`
--

DROP TABLE IF EXISTS `blog_blogpost_related_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_blogpost_related_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_blogpost_id` int(11) NOT NULL,
  `to_blogpost_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `from_blogpost_id` (`from_blogpost_id`,`to_blogpost_id`),
  KEY `to_blogpost_id_refs_id_413362e3` (`to_blogpost_id`),
  CONSTRAINT `to_blogpost_id_refs_id_413362e3` FOREIGN KEY (`to_blogpost_id`) REFERENCES `blog_blogpost` (`id`),
  CONSTRAINT `from_blogpost_id_refs_id_413362e3` FOREIGN KEY (`from_blogpost_id`) REFERENCES `blog_blogpost` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blogpost_related_posts`
--

LOCK TABLES `blog_blogpost_related_posts` WRITE;
/*!40000 ALTER TABLE `blog_blogpost_related_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_blogpost_related_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conf_setting`
--

DROP TABLE IF EXISTS `conf_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conf_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `value` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id_refs_id_358fae2a` (`site_id`),
  CONSTRAINT `site_id_refs_id_358fae2a` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conf_setting`
--

LOCK TABLES `conf_setting` WRITE;
/*!40000 ALTER TABLE `conf_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `conf_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_sitepermission`
--

DROP TABLE IF EXISTS `core_sitepermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_sitepermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_refs_id_12134811` (`user_id`),
  CONSTRAINT `user_id_refs_id_12134811` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_sitepermission`
--

LOCK TABLES `core_sitepermission` WRITE;
/*!40000 ALTER TABLE `core_sitepermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_sitepermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_sitepermission_sites`
--

DROP TABLE IF EXISTS `core_sitepermission_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_sitepermission_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sitepermission_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sitepermission_id` (`sitepermission_id`,`site_id`),
  KEY `site_id_refs_id_573d8999` (`site_id`),
  CONSTRAINT `sitepermission_id_refs_id_67f0d2da` FOREIGN KEY (`sitepermission_id`) REFERENCES `core_sitepermission` (`id`),
  CONSTRAINT `site_id_refs_id_573d8999` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_sitepermission_sites`
--

LOCK TABLES `core_sitepermission_sites` WRITE;
/*!40000 ALTER TABLE `core_sitepermission_sites` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_sitepermission_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datamaster_course`
--

DROP TABLE IF EXISTS `datamaster_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datamaster_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `duration` varchar(50) DEFAULT NULL,
  `course_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `datamaster_course_279e212f` (`course_type_id`),
  CONSTRAINT `course_type_id_refs_id_5950929` FOREIGN KEY (`course_type_id`) REFERENCES `datamaster_coursetype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datamaster_course`
--

LOCK TABLES `datamaster_course` WRITE;
/*!40000 ALTER TABLE `datamaster_course` DISABLE KEYS */;
INSERT INTO `datamaster_course` VALUES (1,'B TEch','4',1);
/*!40000 ALTER TABLE `datamaster_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datamaster_coursetype`
--

DROP TABLE IF EXISTS `datamaster_coursetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datamaster_coursetype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_type` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datamaster_coursetype`
--

LOCK TABLES `datamaster_coursetype` WRITE;
/*!40000 ALTER TABLE `datamaster_coursetype` DISABLE KEYS */;
INSERT INTO `datamaster_coursetype` VALUES (1,'Full time'),(2,'Part time'),(3,'Distant'),(4,'Full time');
/*!40000 ALTER TABLE `datamaster_coursetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datamaster_entrancetest`
--

DROP TABLE IF EXISTS `datamaster_entrancetest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datamaster_entrancetest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `test_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datamaster_entrancetest`
--

LOCK TABLES `datamaster_entrancetest` WRITE;
/*!40000 ALTER TABLE `datamaster_entrancetest` DISABLE KEYS */;
INSERT INTO `datamaster_entrancetest` VALUES (1,'GTC'),(2,'ITC');
/*!40000 ALTER TABLE `datamaster_entrancetest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datamaster_subcourse`
--

DROP TABLE IF EXISTS `datamaster_subcourse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datamaster_subcourse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `datamaster_subcourse_b7271b` (`course_id`),
  CONSTRAINT `course_id_refs_id_28d14c5c` FOREIGN KEY (`course_id`) REFERENCES `datamaster_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datamaster_subcourse`
--

LOCK TABLES `datamaster_subcourse` WRITE;
/*!40000 ALTER TABLE `datamaster_subcourse` DISABLE KEYS */;
INSERT INTO `datamaster_subcourse` VALUES (1,'CSE',1);
/*!40000 ALTER TABLE `datamaster_subcourse` ENABLE KEYS */;
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
  KEY `content_type_id_refs_id_288599e6` (`content_type_id`),
  KEY `user_id_refs_id_c8665aa` (`user_id`),
  CONSTRAINT `user_id_refs_id_c8665aa` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `content_type_id_refs_id_288599e6` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2013-06-20 17:17:03',1,22,'9','Institutes',1,''),(2,'2013-06-20 17:34:42',1,22,'9','Institutes',2,'Changed slug.'),(3,'2013-06-20 17:38:15',1,31,'1','Sports',1,''),(4,'2013-06-20 17:38:27',1,31,'2','Library',1,''),(5,'2013-06-20 17:38:38',1,31,'3','Lab',1,''),(6,'2013-06-20 17:39:07',1,32,'1','University1',1,''),(7,'2013-06-20 17:40:37',1,29,'1','Full time',1,''),(8,'2013-06-20 17:40:49',1,29,'2','Part time',1,''),(9,'2013-06-20 17:40:59',1,29,'3','Distant',1,''),(10,'2013-06-20 17:41:05',1,30,'1','B TEch',1,''),(11,'2013-06-20 17:41:30',1,28,'1','CSE',1,''),(12,'2013-06-20 17:42:49',1,29,'4','Full time',1,''),(13,'2013-06-20 17:43:05',1,34,'1','B TEch',1,''),(14,'2013-06-20 17:43:49',1,27,'1','GTC',1,''),(15,'2013-06-20 17:44:00',1,27,'2','ITC',1,''),(16,'2013-06-20 17:45:37',1,33,'1','College1',1,''),(17,'2013-06-20 17:47:41',1,33,'2','College2',1,'');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_comment_flags`
--

DROP TABLE IF EXISTS `django_comment_flags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_comment_flags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `flag` varchar(30) NOT NULL,
  `flag_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`comment_id`,`flag`),
  KEY `comment_id_refs_id_373a05f7` (`comment_id`),
  CONSTRAINT `user_id_refs_id_603c4dcb` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `comment_id_refs_id_373a05f7` FOREIGN KEY (`comment_id`) REFERENCES `django_comments` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_comment_flags`
--

LOCK TABLES `django_comment_flags` WRITE;
/*!40000 ALTER TABLE `django_comment_flags` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_comment_flags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_comments`
--

DROP TABLE IF EXISTS `django_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_pk` longtext NOT NULL,
  `site_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(75) NOT NULL,
  `user_url` varchar(200) NOT NULL,
  `comment` longtext NOT NULL,
  `submit_date` datetime NOT NULL,
  `ip_address` char(15) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `is_removed` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `content_type_id_refs_id_d5868a5` (`content_type_id`),
  KEY `site_id_refs_id_7248df08` (`site_id`),
  KEY `user_id_refs_id_7e9ddfef` (`user_id`),
  CONSTRAINT `user_id_refs_id_7e9ddfef` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `content_type_id_refs_id_d5868a5` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `site_id_refs_id_7248df08` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_comments`
--

LOCK TABLES `django_comments` WRITE;
/*!40000 ALTER TABLE `django_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_comments` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'content type','contenttypes','contenttype'),(5,'redirect','redirects','redirect'),(6,'session','sessions','session'),(7,'site','sites','site'),(8,'Setting','conf','setting'),(9,'Site permission','core','sitepermission'),(10,'Comment','generic','threadedcomment'),(11,'Keyword','generic','keyword'),(12,'assigned keyword','generic','assignedkeyword'),(13,'Rating','generic','rating'),(14,'Blog post','blog','blogpost'),(15,'Blog Category','blog','blogcategory'),(16,'Form','forms','form'),(17,'Field','forms','field'),(18,'Form entry','forms','formentry'),(19,'Form field entry','forms','fieldentry'),(20,'Page','pages','page'),(21,'Rich text page','pages','richtextpage'),(22,'Link','pages','link'),(23,'Gallery','galleries','gallery'),(24,'Image','galleries','galleryimage'),(25,'Twitter query','twitter','query'),(26,'Tweet','twitter','tweet'),(27,'entrance test','datamaster','entrancetest'),(28,'sub course','datamaster','subcourse'),(29,'course type','datamaster','coursetype'),(30,'course','datamaster','course'),(31,'facilities','institute','facilities'),(32,'university','institute','university'),(33,'institution','institute','institution'),(34,'institute course','institute','institutecourse'),(35,'institute course session','institute','institutecoursesession'),(36,'log entry','admin','logentry'),(37,'comment','comments','comment'),(38,'comment flag','comments','commentflag');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_redirect`
--

DROP TABLE IF EXISTS `django_redirect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_redirect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) NOT NULL,
  `old_path` varchar(200) NOT NULL,
  `new_path` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `site_id` (`site_id`,`old_path`),
  CONSTRAINT `site_id_refs_id_4aa27aa6` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_redirect`
--

LOCK TABLES `django_redirect` WRITE;
/*!40000 ALTER TABLE `django_redirect` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_redirect` ENABLE KEYS */;
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
  PRIMARY KEY (`session_key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('91e2de339c322f7ac96d72392dac1c82','MWQ0NWE2ODcxMDlmMDU3MjExNDE5N2RkMjQzNThkNDA1MGQ1YzVhNDqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tl\nbmRxA1UNX2F1dGhfdXNlcl9pZHEEigEBdS4=\n','2013-07-04 17:16:15');
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
INSERT INTO `django_site` VALUES (1,'127.0.0.1:8000','Default');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_field`
--

DROP TABLE IF EXISTS `forms_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `_order` int(11) DEFAULT NULL,
  `form_id` int(11) NOT NULL,
  `label` varchar(200) NOT NULL,
  `field_type` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `choices` varchar(1000) NOT NULL,
  `default` varchar(2000) NOT NULL,
  `placeholder_text` varchar(100) NOT NULL,
  `help_text` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `form_id_refs_page_ptr_id_1926fc04` (`form_id`),
  CONSTRAINT `form_id_refs_page_ptr_id_1926fc04` FOREIGN KEY (`form_id`) REFERENCES `forms_form` (`page_ptr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_field`
--

LOCK TABLES `forms_field` WRITE;
/*!40000 ALTER TABLE `forms_field` DISABLE KEYS */;
INSERT INTO `forms_field` VALUES (1,0,3,'Name',1,1,1,'','','',''),(2,1,3,'Email',3,1,1,'','','',''),(3,2,3,'Subject',6,1,1,'Billing, Sales, Support','','',''),(4,3,3,'Message',2,1,1,'','','','');
/*!40000 ALTER TABLE `forms_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_fieldentry`
--

DROP TABLE IF EXISTS `forms_fieldentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_fieldentry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `value` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id_refs_id_573675b4` (`entry_id`),
  CONSTRAINT `entry_id_refs_id_573675b4` FOREIGN KEY (`entry_id`) REFERENCES `forms_formentry` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_fieldentry`
--

LOCK TABLES `forms_fieldentry` WRITE;
/*!40000 ALTER TABLE `forms_fieldentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `forms_fieldentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_form`
--

DROP TABLE IF EXISTS `forms_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_form` (
  `page_ptr_id` int(11) NOT NULL,
  `content` longtext NOT NULL,
  `button_text` varchar(50) NOT NULL,
  `response` longtext NOT NULL,
  `send_email` tinyint(1) NOT NULL,
  `email_from` varchar(75) NOT NULL,
  `email_copies` varchar(200) NOT NULL,
  `email_subject` varchar(200) NOT NULL,
  `email_message` longtext NOT NULL,
  PRIMARY KEY (`page_ptr_id`),
  CONSTRAINT `page_ptr_id_refs_id_1d5610fd` FOREIGN KEY (`page_ptr_id`) REFERENCES `pages_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_form`
--

LOCK TABLES `forms_form` WRITE;
/*!40000 ALTER TABLE `forms_form` DISABLE KEYS */;
INSERT INTO `forms_form` VALUES (3,'<p>Fill in the form below to get in touch with us.</p>','Submit','<p>Thanks for getting in touch with us. We\'ll get back to you as soon as possible.</p>',1,'','','','');
/*!40000 ALTER TABLE `forms_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_formentry`
--

DROP TABLE IF EXISTS `forms_formentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_formentry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL,
  `entry_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `form_id_refs_page_ptr_id_681481de` (`form_id`),
  CONSTRAINT `form_id_refs_page_ptr_id_681481de` FOREIGN KEY (`form_id`) REFERENCES `forms_form` (`page_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_formentry`
--

LOCK TABLES `forms_formentry` WRITE;
/*!40000 ALTER TABLE `forms_formentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `forms_formentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries_gallery`
--

DROP TABLE IF EXISTS `galleries_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galleries_gallery` (
  `page_ptr_id` int(11) NOT NULL,
  `content` longtext NOT NULL,
  `zip_import` varchar(100) NOT NULL,
  PRIMARY KEY (`page_ptr_id`),
  CONSTRAINT `page_ptr_id_refs_id_2812b6ef` FOREIGN KEY (`page_ptr_id`) REFERENCES `pages_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries_gallery`
--

LOCK TABLES `galleries_gallery` WRITE;
/*!40000 ALTER TABLE `galleries_gallery` DISABLE KEYS */;
INSERT INTO `galleries_gallery` VALUES (8,'<p>A demo gallery of cities from around the world.</p>','gallery.zip');
/*!40000 ALTER TABLE `galleries_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries_galleryimage`
--

DROP TABLE IF EXISTS `galleries_galleryimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galleries_galleryimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `_order` int(11) DEFAULT NULL,
  `gallery_id` int(11) NOT NULL,
  `file` varchar(200) NOT NULL,
  `description` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gallery_id_refs_page_ptr_id_cdf4e25` (`gallery_id`),
  CONSTRAINT `gallery_id_refs_page_ptr_id_cdf4e25` FOREIGN KEY (`gallery_id`) REFERENCES `galleries_gallery` (`page_ptr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries_galleryimage`
--

LOCK TABLES `galleries_galleryimage` WRITE;
/*!40000 ALTER TABLE `galleries_galleryimage` DISABLE KEYS */;
INSERT INTO `galleries_galleryimage` VALUES (1,0,8,'uploads/gallery/Amsterdam, Holland.jpg','Amsterdam  Holland'),(2,1,8,'uploads/gallery/Asturias, Brazil.jpg','Asturias  Brazil'),(3,2,8,'uploads/gallery/Athens, Greece.jpg','Athens  Greece'),(4,3,8,'uploads/gallery/Austin, USA.jpg','Austin  USA');
/*!40000 ALTER TABLE `galleries_galleryimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generic_assignedkeyword`
--

DROP TABLE IF EXISTS `generic_assignedkeyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generic_assignedkeyword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `_order` int(11) DEFAULT NULL,
  `keyword_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `object_pk` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `content_type_id_refs_id_abf056c` (`content_type_id`),
  KEY `keyword_id_refs_id_3a2a6ccd` (`keyword_id`),
  CONSTRAINT `keyword_id_refs_id_3a2a6ccd` FOREIGN KEY (`keyword_id`) REFERENCES `generic_keyword` (`id`),
  CONSTRAINT `content_type_id_refs_id_abf056c` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generic_assignedkeyword`
--

LOCK TABLES `generic_assignedkeyword` WRITE;
/*!40000 ALTER TABLE `generic_assignedkeyword` DISABLE KEYS */;
/*!40000 ALTER TABLE `generic_assignedkeyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generic_keyword`
--

DROP TABLE IF EXISTS `generic_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generic_keyword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `slug` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id_refs_id_61ab9647` (`site_id`),
  CONSTRAINT `site_id_refs_id_61ab9647` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generic_keyword`
--

LOCK TABLES `generic_keyword` WRITE;
/*!40000 ALTER TABLE `generic_keyword` DISABLE KEYS */;
/*!40000 ALTER TABLE `generic_keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generic_rating`
--

DROP TABLE IF EXISTS `generic_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generic_rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` int(11) NOT NULL,
  `rating_date` datetime DEFAULT NULL,
  `content_type_id` int(11) NOT NULL,
  `object_pk` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `content_type_id_refs_id_5b2266af` (`content_type_id`),
  KEY `user_id_refs_id_690581ed` (`user_id`),
  CONSTRAINT `user_id_refs_id_690581ed` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `content_type_id_refs_id_5b2266af` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generic_rating`
--

LOCK TABLES `generic_rating` WRITE;
/*!40000 ALTER TABLE `generic_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `generic_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generic_threadedcomment`
--

DROP TABLE IF EXISTS `generic_threadedcomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generic_threadedcomment` (
  `comment_ptr_id` int(11) NOT NULL,
  `rating_count` int(11) NOT NULL,
  `rating_sum` int(11) NOT NULL,
  `rating_average` double NOT NULL,
  `by_author` tinyint(1) NOT NULL,
  `replied_to_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`comment_ptr_id`),
  KEY `replied_to_id_refs_comment_ptr_id_4a3d2005` (`replied_to_id`),
  CONSTRAINT `comment_ptr_id_refs_id_16f39c27` FOREIGN KEY (`comment_ptr_id`) REFERENCES `django_comments` (`id`),
  CONSTRAINT `replied_to_id_refs_comment_ptr_id_4a3d2005` FOREIGN KEY (`replied_to_id`) REFERENCES `generic_threadedcomment` (`comment_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generic_threadedcomment`
--

LOCK TABLES `generic_threadedcomment` WRITE;
/*!40000 ALTER TABLE `generic_threadedcomment` DISABLE KEYS */;
/*!40000 ALTER TABLE `generic_threadedcomment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institute_facilities`
--

DROP TABLE IF EXISTS `institute_facilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institute_facilities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institute_facilities`
--

LOCK TABLES `institute_facilities` WRITE;
/*!40000 ALTER TABLE `institute_facilities` DISABLE KEYS */;
INSERT INTO `institute_facilities` VALUES (1,'Sports'),(2,'Library'),(3,'Lab');
/*!40000 ALTER TABLE `institute_facilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institute_institutecourse`
--

DROP TABLE IF EXISTS `institute_institutecourse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institute_institutecourse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_id` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `sub_courses_id` int(11) NOT NULL,
  `course_type_id` int(11) NOT NULL,
  `annual_fees` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `institute_institutecourse_632e075f` (`name_id`),
  KEY `institute_institutecourse_544a144a` (`sub_courses_id`),
  KEY `institute_institutecourse_279e212f` (`course_type_id`),
  CONSTRAINT `course_type_id_refs_id_53b5eca3` FOREIGN KEY (`course_type_id`) REFERENCES `datamaster_coursetype` (`id`),
  CONSTRAINT `name_id_refs_id_14f9c2df` FOREIGN KEY (`name_id`) REFERENCES `datamaster_course` (`id`),
  CONSTRAINT `sub_courses_id_refs_id_6d1a912` FOREIGN KEY (`sub_courses_id`) REFERENCES `datamaster_subcourse` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institute_institutecourse`
--

LOCK TABLES `institute_institutecourse` WRITE;
/*!40000 ALTER TABLE `institute_institutecourse` DISABLE KEYS */;
INSERT INTO `institute_institutecourse` VALUES (1,1,4,1,4,10000);
/*!40000 ALTER TABLE `institute_institutecourse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institute_institutecoursesession`
--

DROP TABLE IF EXISTS `institute_institutecoursesession`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institute_institutecoursesession` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `institutecourse_id` int(11) NOT NULL,
  `current` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `institute_institutecoursesession_b977c23` (`institutecourse_id`),
  CONSTRAINT `institutecourse_id_refs_id_29d1e6b8` FOREIGN KEY (`institutecourse_id`) REFERENCES `institute_institutecourse` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institute_institutecoursesession`
--

LOCK TABLES `institute_institutecoursesession` WRITE;
/*!40000 ALTER TABLE `institute_institutecoursesession` DISABLE KEYS */;
/*!40000 ALTER TABLE `institute_institutecoursesession` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institute_institution`
--

DROP TABLE IF EXISTS `institute_institution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institute_institution` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `address` varchar(300) NOT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `email` varchar(200) NOT NULL,
  `year_of_establishment` int(11) NOT NULL,
  `type_of_institution` varchar(50) NOT NULL,
  `university_id` int(11) NOT NULL,
  `courses_id` int(11) NOT NULL,
  `aicte_approved` tinyint(1) NOT NULL,
  `academic_section_start_date` date NOT NULL,
  `minimum_eligibility` varchar(100) NOT NULL,
  `total_seats` int(11) NOT NULL,
  `other_courses` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `institute_institution_35724202` (`university_id`),
  KEY `institute_institution_45dc405f` (`courses_id`),
  CONSTRAINT `courses_id_refs_id_5d0b20a3` FOREIGN KEY (`courses_id`) REFERENCES `institute_institutecourse` (`id`),
  CONSTRAINT `university_id_refs_id_413893ec` FOREIGN KEY (`university_id`) REFERENCES `institute_university` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institute_institution`
--

LOCK TABLES `institute_institution` WRITE;
/*!40000 ALTER TABLE `institute_institution` DISABLE KEYS */;
INSERT INTO `institute_institution` VALUES (1,'College1','Address1','City1','State1','www.website1.com','1111111111','email@website1.com',1989,'GOVERNMENT',1,1,1,'2013-06-20','Twelfth Pass',100,'MBA'),(2,'College2','Address2','City2','State2','www.website2.com','2222222222','email@website2.com',1992,'PRIVATE',1,1,1,'2013-06-20','Twelfth Pass',100,'MCA');
/*!40000 ALTER TABLE `institute_institution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institute_institution_entrance_test`
--

DROP TABLE IF EXISTS `institute_institution_entrance_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institute_institution_entrance_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `institution_id` int(11) NOT NULL,
  `entrancetest_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `institution_id` (`institution_id`,`entrancetest_id`),
  KEY `institute_institution_entrance_test_5e29f20d` (`institution_id`),
  KEY `institute_institution_entrance_test_5efd9aea` (`entrancetest_id`),
  CONSTRAINT `institution_id_refs_id_5fab0253` FOREIGN KEY (`institution_id`) REFERENCES `institute_institution` (`id`),
  CONSTRAINT `entrancetest_id_refs_id_6394572e` FOREIGN KEY (`entrancetest_id`) REFERENCES `datamaster_entrancetest` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institute_institution_entrance_test`
--

LOCK TABLES `institute_institution_entrance_test` WRITE;
/*!40000 ALTER TABLE `institute_institution_entrance_test` DISABLE KEYS */;
INSERT INTO `institute_institution_entrance_test` VALUES (1,1,1),(2,2,2);
/*!40000 ALTER TABLE `institute_institution_entrance_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institute_institution_facilities`
--

DROP TABLE IF EXISTS `institute_institution_facilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institute_institution_facilities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `institution_id` int(11) NOT NULL,
  `facilities_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `institution_id` (`institution_id`,`facilities_id`),
  KEY `institute_institution_facilities_5e29f20d` (`institution_id`),
  KEY `institute_institution_facilities_645db37d` (`facilities_id`),
  CONSTRAINT `institution_id_refs_id_7e412f08` FOREIGN KEY (`institution_id`) REFERENCES `institute_institution` (`id`),
  CONSTRAINT `facilities_id_refs_id_3856979c` FOREIGN KEY (`facilities_id`) REFERENCES `institute_facilities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institute_institution_facilities`
--

LOCK TABLES `institute_institution_facilities` WRITE;
/*!40000 ALTER TABLE `institute_institution_facilities` DISABLE KEYS */;
INSERT INTO `institute_institution_facilities` VALUES (1,1,1),(2,1,2),(3,2,2),(4,2,3);
/*!40000 ALTER TABLE `institute_institution_facilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institute_university`
--

DROP TABLE IF EXISTS `institute_university`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institute_university` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institute_university`
--

LOCK TABLES `institute_university` WRITE;
/*!40000 ALTER TABLE `institute_university` DISABLE KEYS */;
INSERT INTO `institute_university` VALUES (1,'University1');
/*!40000 ALTER TABLE `institute_university` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_link`
--

DROP TABLE IF EXISTS `pages_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_link` (
  `page_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`page_ptr_id`),
  CONSTRAINT `page_ptr_id_refs_id_4cf4c646` FOREIGN KEY (`page_ptr_id`) REFERENCES `pages_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_link`
--

LOCK TABLES `pages_link` WRITE;
/*!40000 ALTER TABLE `pages_link` DISABLE KEYS */;
INSERT INTO `pages_link` VALUES (9);
/*!40000 ALTER TABLE `pages_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_page`
--

DROP TABLE IF EXISTS `pages_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keywords_string` varchar(500) NOT NULL,
  `site_id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `slug` varchar(2000) DEFAULT NULL,
  `_meta_title` varchar(500) DEFAULT NULL,
  `description` longtext NOT NULL,
  `gen_description` tinyint(1) NOT NULL,
  `status` int(11) NOT NULL,
  `publish_date` datetime DEFAULT NULL,
  `expiry_date` datetime DEFAULT NULL,
  `short_url` varchar(200) DEFAULT NULL,
  `in_sitemap` tinyint(1) NOT NULL,
  `_order` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `in_menus` varchar(100) DEFAULT NULL,
  `titles` varchar(1000) DEFAULT NULL,
  `content_model` varchar(50) DEFAULT NULL,
  `login_required` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id_refs_id_353c0eed` (`parent_id`),
  KEY `site_id_refs_id_69e8ee39` (`site_id`),
  CONSTRAINT `site_id_refs_id_69e8ee39` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`),
  CONSTRAINT `parent_id_refs_id_353c0eed` FOREIGN KEY (`parent_id`) REFERENCES `pages_page` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_page`
--

LOCK TABLES `pages_page` WRITE;
/*!40000 ALTER TABLE `pages_page` DISABLE KEYS */;
INSERT INTO `pages_page` VALUES (1,'',1,'Blog','blog',NULL,'Blog',1,2,NULL,NULL,NULL,1,1,NULL,'1,2,3','Blog','richtextpage',0),(2,'',1,'About','about',NULL,'About us',1,2,NULL,NULL,NULL,1,0,NULL,'1,2,3','About','richtextpage',0),(3,'',1,'Contact','contact',NULL,'Fill in the form below to get in touch with us.',1,2,NULL,NULL,NULL,1,3,NULL,'1,2,3','Contact','form',0),(4,'',1,'Team','about/team',NULL,'Team',1,2,NULL,NULL,NULL,1,0,2,'1,2,3','About / Team','richtextpage',0),(5,'',1,'History','about/history',NULL,'History',1,2,NULL,NULL,NULL,1,1,2,'1,2,3','About / History','richtextpage',0),(6,'',1,'Legals','contact/legals',NULL,'Legals',1,2,NULL,NULL,NULL,1,0,3,'1,2,3','Contact / Legals','richtextpage',0),(8,'',1,'Gallery','gallery',NULL,'A demo gallery of cities from around the world.',1,2,'2013-06-20 17:08:32',NULL,NULL,1,2,NULL,'1,2,3','Gallery','gallery',0),(9,'',1,'Institutes','institute/listofinstitutions',NULL,'Institutes',1,2,'2013-06-20 17:17:01',NULL,NULL,0,4,NULL,'1,2,3','Institutes','link',0);
/*!40000 ALTER TABLE `pages_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_richtextpage`
--

DROP TABLE IF EXISTS `pages_richtextpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_richtextpage` (
  `page_ptr_id` int(11) NOT NULL,
  `content` longtext NOT NULL,
  PRIMARY KEY (`page_ptr_id`),
  CONSTRAINT `page_ptr_id_refs_id_65588a18` FOREIGN KEY (`page_ptr_id`) REFERENCES `pages_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_richtextpage`
--

LOCK TABLES `pages_richtextpage` WRITE;
/*!40000 ALTER TABLE `pages_richtextpage` DISABLE KEYS */;
INSERT INTO `pages_richtextpage` VALUES (1,'<p>Blog</p>'),(2,'<p>About us</p>'),(4,'<p>Team</p>'),(5,'<p>History</p>'),(6,'<p>Legals</p>');
/*!40000 ALTER TABLE `pages_richtextpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twitter_query`
--

DROP TABLE IF EXISTS `twitter_query`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `twitter_query` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) NOT NULL,
  `value` varchar(140) NOT NULL,
  `interested` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twitter_query`
--

LOCK TABLES `twitter_query` WRITE;
/*!40000 ALTER TABLE `twitter_query` DISABLE KEYS */;
INSERT INTO `twitter_query` VALUES (1,'search','django mezzanine',1);
/*!40000 ALTER TABLE `twitter_query` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twitter_tweet`
--

DROP TABLE IF EXISTS `twitter_tweet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `twitter_tweet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `remote_id` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `text` longtext,
  `profile_image_url` varchar(200) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `retweeter_profile_image_url` varchar(200) DEFAULT NULL,
  `retweeter_user_name` varchar(100) DEFAULT NULL,
  `retweeter_full_name` varchar(100) DEFAULT NULL,
  `query_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `query_id_refs_id_525328e2` (`query_id`),
  CONSTRAINT `query_id_refs_id_525328e2` FOREIGN KEY (`query_id`) REFERENCES `twitter_query` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twitter_tweet`
--

LOCK TABLES `twitter_tweet` WRITE;
/*!40000 ALTER TABLE `twitter_tweet` DISABLE KEYS */;
/*!40000 ALTER TABLE `twitter_tweet` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-06-20 23:22:34
