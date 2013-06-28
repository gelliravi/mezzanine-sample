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
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add redirect',5,'add_redirect'),(14,'Can change redirect',5,'change_redirect'),(15,'Can delete redirect',5,'delete_redirect'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add site',7,'add_site'),(20,'Can change site',7,'change_site'),(21,'Can delete site',7,'delete_site'),(22,'Can add Setting',8,'add_setting'),(23,'Can change Setting',8,'change_setting'),(24,'Can delete Setting',8,'delete_setting'),(25,'Can add Site permission',9,'add_sitepermission'),(26,'Can change Site permission',9,'change_sitepermission'),(27,'Can delete Site permission',9,'delete_sitepermission'),(28,'Can add Comment',10,'add_threadedcomment'),(29,'Can change Comment',10,'change_threadedcomment'),(30,'Can delete Comment',10,'delete_threadedcomment'),(31,'Can add Keyword',11,'add_keyword'),(32,'Can change Keyword',11,'change_keyword'),(33,'Can delete Keyword',11,'delete_keyword'),(34,'Can add assigned keyword',12,'add_assignedkeyword'),(35,'Can change assigned keyword',12,'change_assignedkeyword'),(36,'Can delete assigned keyword',12,'delete_assignedkeyword'),(37,'Can add Rating',13,'add_rating'),(38,'Can change Rating',13,'change_rating'),(39,'Can delete Rating',13,'delete_rating'),(40,'Can add Blog post',14,'add_blogpost'),(41,'Can change Blog post',14,'change_blogpost'),(42,'Can delete Blog post',14,'delete_blogpost'),(43,'Can add Blog Category',15,'add_blogcategory'),(44,'Can change Blog Category',15,'change_blogcategory'),(45,'Can delete Blog Category',15,'delete_blogcategory'),(46,'Can add Form',16,'add_form'),(47,'Can change Form',16,'change_form'),(48,'Can delete Form',16,'delete_form'),(49,'Can add Field',17,'add_field'),(50,'Can change Field',17,'change_field'),(51,'Can delete Field',17,'delete_field'),(52,'Can add Form entry',18,'add_formentry'),(53,'Can change Form entry',18,'change_formentry'),(54,'Can delete Form entry',18,'delete_formentry'),(55,'Can add Form field entry',19,'add_fieldentry'),(56,'Can change Form field entry',19,'change_fieldentry'),(57,'Can delete Form field entry',19,'delete_fieldentry'),(58,'Can add Page',20,'add_page'),(59,'Can change Page',20,'change_page'),(60,'Can delete Page',20,'delete_page'),(61,'Can add Rich text page',21,'add_richtextpage'),(62,'Can change Rich text page',21,'change_richtextpage'),(63,'Can delete Rich text page',21,'delete_richtextpage'),(64,'Can add Link',22,'add_link'),(65,'Can change Link',22,'change_link'),(66,'Can delete Link',22,'delete_link'),(67,'Can add Gallery',23,'add_gallery'),(68,'Can change Gallery',23,'change_gallery'),(69,'Can delete Gallery',23,'delete_gallery'),(70,'Can add Image',24,'add_galleryimage'),(71,'Can change Image',24,'change_galleryimage'),(72,'Can delete Image',24,'delete_galleryimage'),(73,'Can add Twitter query',25,'add_query'),(74,'Can change Twitter query',25,'change_query'),(75,'Can delete Twitter query',25,'delete_query'),(76,'Can add Tweet',26,'add_tweet'),(77,'Can change Tweet',26,'change_tweet'),(78,'Can delete Tweet',26,'delete_tweet'),(79,'Can add entrance test',27,'add_entrancetest'),(80,'Can change entrance test',27,'change_entrancetest'),(81,'Can delete entrance test',27,'delete_entrancetest'),(82,'Can add sub course',28,'add_subcourse'),(83,'Can change sub course',28,'change_subcourse'),(84,'Can delete sub course',28,'delete_subcourse'),(85,'Can add course type',29,'add_coursetype'),(86,'Can change course type',29,'change_coursetype'),(87,'Can delete course type',29,'delete_coursetype'),(88,'Can add course',30,'add_course'),(89,'Can change course',30,'change_course'),(90,'Can delete course',30,'delete_course'),(91,'Can add facilities',31,'add_facilities'),(92,'Can change facilities',31,'change_facilities'),(93,'Can delete facilities',31,'delete_facilities'),(94,'Can add university',32,'add_university'),(95,'Can change university',32,'change_university'),(96,'Can delete university',32,'delete_university'),(97,'Can add institution',33,'add_institution'),(98,'Can change institution',33,'change_institution'),(99,'Can delete institution',33,'delete_institution'),(100,'Can add institute course',34,'add_institutecourse'),(101,'Can change institute course',34,'change_institutecourse'),(102,'Can delete institute course',34,'delete_institutecourse'),(103,'Can add institute course session',35,'add_institutecoursesession'),(104,'Can change institute course session',35,'change_institutecoursesession'),(105,'Can delete institute course session',35,'delete_institutecoursesession'),(106,'Can add log entry',36,'add_logentry'),(107,'Can change log entry',36,'change_logentry'),(108,'Can delete log entry',36,'delete_logentry'),(109,'Can add comment',37,'add_comment'),(110,'Can change comment',37,'change_comment'),(111,'Can delete comment',37,'delete_comment'),(112,'Can moderate comments',37,'can_moderate'),(113,'Can add comment flag',38,'add_commentflag'),(114,'Can change comment flag',38,'change_commentflag'),(115,'Can delete comment flag',38,'delete_commentflag'),(116,'Can add migration history',39,'add_migrationhistory'),(117,'Can change migration history',39,'change_migrationhistory'),(118,'Can delete migration history',39,'delete_migrationhistory'),(122,'Can add contact form',42,'add_contactform'),(123,'Can change contact form',42,'change_contactform'),(124,'Can delete contact form',42,'delete_contactform'),(125,'Can add user',43,'add_userprofile'),(126,'Can change user',43,'change_userprofile'),(127,'Can delete user',43,'delete_userprofile'),(128,'Can add entrance test',8,'add_entrancetest'),(129,'Can change entrance test',8,'change_entrancetest'),(130,'Can delete entrance test',8,'delete_entrancetest'),(131,'Can add sub course',9,'add_subcourse'),(132,'Can change sub course',9,'change_subcourse'),(133,'Can delete sub course',9,'delete_subcourse'),(134,'Can add course type',10,'add_coursetype'),(135,'Can change course type',10,'change_coursetype'),(136,'Can delete course type',10,'delete_coursetype'),(137,'Can add course',11,'add_course'),(138,'Can change course',11,'change_course'),(139,'Can delete course',11,'delete_course'),(140,'Can add user profile',12,'add_userprofile'),(141,'Can change user profile',12,'change_userprofile'),(142,'Can delete user profile',12,'delete_userprofile'),(143,'Can add contact form',13,'add_contactform'),(144,'Can change contact form',13,'change_contactform'),(145,'Can delete contact form',13,'delete_contactform'),(146,'Can add migration history',14,'add_migrationhistory'),(147,'Can change migration history',14,'change_migrationhistory'),(148,'Can delete migration history',14,'delete_migrationhistory'),(149,'Can add log entry',15,'add_logentry'),(150,'Can change log entry',15,'change_logentry'),(151,'Can delete log entry',15,'delete_logentry'),(152,'Can add comment',16,'add_comment'),(153,'Can change comment',16,'change_comment'),(154,'Can delete comment',16,'delete_comment'),(155,'Can moderate comments',16,'can_moderate'),(156,'Can add comment flag',17,'add_commentflag'),(157,'Can change comment flag',17,'change_commentflag'),(158,'Can delete comment flag',17,'delete_commentflag');
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
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$10000$T4ygGtbAF9Zh$20TWxbBGxCSAMPaxJx+jSo8yLcJ0bLknLeb1YDHRp8o=','2013-06-27 18:47:59',1,'prtouch','','','srikanth@prtouch.com',1,1,'2013-06-27 18:47:59');
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
  CONSTRAINT `user_id_refs_id_40c41112` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `group_id_refs_id_274b862c` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
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
  CONSTRAINT `user_id_refs_id_4dc23c39` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `permission_id_refs_id_35d9ac25` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
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
  `slug` varchar(2000),
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) NOT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_blogcategory_99732b5c` (`site_id`),
  CONSTRAINT `site_id_refs_id_93afc60f` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
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
  `status` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `title` varchar(500) NOT NULL,
  `short_url` varchar(200) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL,
  `expiry_date` datetime DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `slug` varchar(2000),
  `comments_count` int(11) NOT NULL,
  `keywords_string` varchar(500) NOT NULL,
  `site_id` int(11) NOT NULL,
  `rating_average` double NOT NULL,
  `rating_count` int(11) NOT NULL,
  `allow_comments` tinyint(1) NOT NULL,
  `featured_image` varchar(255),
  `gen_description` tinyint(1) NOT NULL,
  `_meta_title` varchar(500),
  `in_sitemap` tinyint(1) NOT NULL,
  `rating_sum` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_blogpost_6340c63c` (`user_id`),
  KEY `blog_blogpost_99732b5c` (`site_id`),
  CONSTRAINT `site_id_refs_id_ac21095f` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`),
  CONSTRAINT `user_id_refs_id_01a962b8` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
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
  UNIQUE KEY `blog_blogpost_categories_blogpost_id_6e7842ec_uniq` (`blogpost_id`,`blogcategory_id`),
  KEY `blog_blogpost_categories_3beb7885` (`blogpost_id`),
  KEY `blog_blogpost_categories_29db1e0f` (`blogcategory_id`),
  CONSTRAINT `blogcategory_id_refs_id_91693b1c` FOREIGN KEY (`blogcategory_id`) REFERENCES `blog_blogcategory` (`id`),
  CONSTRAINT `blogpost_id_refs_id_6a2ad936` FOREIGN KEY (`blogpost_id`) REFERENCES `blog_blogpost` (`id`)
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
  UNIQUE KEY `blog_blogpost_related_posts_from_blogpost_id_6b16df8b_uniq` (`from_blogpost_id`,`to_blogpost_id`),
  KEY `blog_blogpost_related_posts_69f74308` (`from_blogpost_id`),
  KEY `blog_blogpost_related_posts_bb78a3ca` (`to_blogpost_id`),
  CONSTRAINT `to_blogpost_id_refs_id_6404941b` FOREIGN KEY (`to_blogpost_id`) REFERENCES `blog_blogpost` (`id`),
  CONSTRAINT `from_blogpost_id_refs_id_6404941b` FOREIGN KEY (`from_blogpost_id`) REFERENCES `blog_blogpost` (`id`)
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
  `value` varchar(2000) NOT NULL,
  `name` varchar(50) NOT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `conf_setting_99732b5c` (`site_id`),
  CONSTRAINT `site_id_refs_id_29e7e142` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
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
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `user_id_refs_id_b319fa2a` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
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
  UNIQUE KEY `core_sitepermission_sites_sitepermission_id_7e3badd5_uniq` (`sitepermission_id`,`site_id`),
  KEY `core_sitepermission_sites_0780734a` (`sitepermission_id`),
  KEY `core_sitepermission_sites_99732b5c` (`site_id`),
  CONSTRAINT `site_id_refs_id_91a6d9d4` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`),
  CONSTRAINT `sitepermission_id_refs_id_7dccdcbd` FOREIGN KEY (`sitepermission_id`) REFERENCES `core_sitepermission` (`id`)
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
  KEY `datamaster_course_0ce887d1` (`course_type_id`),
  CONSTRAINT `course_type_id_refs_id_66e5b71f` FOREIGN KEY (`course_type_id`) REFERENCES `datamaster_coursetype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datamaster_course`
--

LOCK TABLES `datamaster_course` WRITE;
/*!40000 ALTER TABLE `datamaster_course` DISABLE KEYS */;
INSERT INTO `datamaster_course` VALUES (1,'B Tech','4',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datamaster_coursetype`
--

LOCK TABLES `datamaster_coursetype` WRITE;
/*!40000 ALTER TABLE `datamaster_coursetype` DISABLE KEYS */;
INSERT INTO `datamaster_coursetype` VALUES (1,'Full time'),(2,'Full time');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datamaster_entrancetest`
--

LOCK TABLES `datamaster_entrancetest` WRITE;
/*!40000 ALTER TABLE `datamaster_entrancetest` DISABLE KEYS */;
INSERT INTO `datamaster_entrancetest` VALUES (1,'GTC');
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
  KEY `datamaster_subcourse_6234103b` (`course_id`),
  CONSTRAINT `course_id_refs_id_bb626610` FOREIGN KEY (`course_id`) REFERENCES `datamaster_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datamaster_subcourse`
--

LOCK TABLES `datamaster_subcourse` WRITE;
/*!40000 ALTER TABLE `datamaster_subcourse` DISABLE KEYS */;
INSERT INTO `datamaster_subcourse` VALUES (1,'cse',1);
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
  KEY `django_admin_log_6340c63c` (`user_id`),
  KEY `django_admin_log_37ef4eb4` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_93d2d1f8` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `user_id_refs_id_c0d12874` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2013-06-27 17:32:01',1,37,'1','asdfgh',1,''),(2,'2013-06-27 17:32:22',1,38,'1','University1',1,''),(3,'2013-06-27 17:32:46',1,10,'1','Full time',1,''),(4,'2013-06-27 17:32:49',1,11,'1','B Tech',1,''),(5,'2013-06-27 17:33:13',1,9,'1','cse',1,''),(6,'2013-06-27 17:33:24',1,10,'2','Full time',1,''),(7,'2013-06-27 17:33:32',1,40,'1','B Tech',1,''),(8,'2013-06-27 17:33:40',1,8,'1','GTC',1,''),(9,'2013-06-27 17:33:58',1,39,'1','asdfgh',1,'');
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
  KEY `django_comment_flags_6340c63c` (`user_id`),
  KEY `django_comment_flags_3925f323` (`comment_id`),
  KEY `django_comment_flags_9f00eb17` (`flag`),
  CONSTRAINT `user_id_refs_id_73e17509` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `comment_id_refs_id_669ff450` FOREIGN KEY (`comment_id`) REFERENCES `django_comments` (`id`)
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
  KEY `django_comments_37ef4eb4` (`content_type_id`),
  KEY `django_comments_99732b5c` (`site_id`),
  KEY `django_comments_6340c63c` (`user_id`),
  CONSTRAINT `user_id_refs_id_c4f1d065` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `content_type_id_refs_id_5ce75e49` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `site_id_refs_id_c6498c81` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'content type','contenttypes','contenttype'),(5,'redirect','redirects','redirect'),(6,'session','sessions','session'),(7,'site','sites','site'),(8,'entrance test','datamaster','entrancetest'),(9,'sub course','datamaster','subcourse'),(10,'course type','datamaster','coursetype'),(11,'course','datamaster','course'),(12,'user profile','registration','userprofile'),(13,'contact form','zone','contactform'),(14,'migration history','south','migrationhistory'),(15,'log entry','admin','logentry'),(16,'comment','comments','comment'),(17,'comment flag','comments','commentflag'),(18,'Setting','conf','setting'),(19,'Site permission','core','sitepermission'),(20,'Page','pages','page'),(21,'Rich text page','pages','richtextpage'),(22,'Link','pages','link'),(23,'Blog post','blog','blogpost'),(24,'Blog Category','blog','blogcategory'),(25,'Comment','generic','threadedcomment'),(26,'Keyword','generic','keyword'),(27,'assigned keyword','generic','assignedkeyword'),(28,'Rating','generic','rating'),(29,'Form','forms','form'),(30,'Field','forms','field'),(31,'Form entry','forms','formentry'),(32,'Form field entry','forms','fieldentry'),(33,'Gallery','galleries','gallery'),(34,'Image','galleries','galleryimage'),(35,'Twitter query','twitter','query'),(36,'Tweet','twitter','tweet'),(37,'facilities','institute','facilities'),(38,'university','institute','university'),(39,'institution','institute','institution'),(40,'institute course','institute','institutecourse'),(41,'institute course session','institute','institutecoursesession');
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
  KEY `django_redirect_99732b5c` (`site_id`),
  KEY `django_redirect_acd0874a` (`old_path`),
  CONSTRAINT `site_id_refs_id_390e2add` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
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
  PRIMARY KEY (`session_key`),
  KEY `django_session_b7b81f0c` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('3uui19cuul009w4olcald9cfmqkyqonu','MWQ0NWE2ODcxMDlmMDU3MjExNDE5N2RkMjQzNThkNDA1MGQ1YzVhNDqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigEBdS4=','2013-07-11 17:31:39');
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
  `_order` int(11) DEFAULT NULL,
  `form_id` int(11) NOT NULL,
  `default` varchar(2000) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `label` varchar(200) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `help_text` varchar(100) NOT NULL,
  `choices` varchar(1000) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `placeholder_text` varchar(100) NOT NULL,
  `field_type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `forms_field_c3d79a6c` (`form_id`),
  CONSTRAINT `form_id_refs_page_ptr_id_5a752766` FOREIGN KEY (`form_id`) REFERENCES `forms_form` (`page_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_field`
--

LOCK TABLES `forms_field` WRITE;
/*!40000 ALTER TABLE `forms_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `forms_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_fieldentry`
--

DROP TABLE IF EXISTS `forms_fieldentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_fieldentry` (
  `entry_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(2000),
  PRIMARY KEY (`id`),
  KEY `forms_fieldentry_e8d920b6` (`entry_id`),
  CONSTRAINT `entry_id_refs_id_e329b086` FOREIGN KEY (`entry_id`) REFERENCES `forms_formentry` (`id`)
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
  `email_message` longtext NOT NULL,
  `page_ptr_id` int(11) NOT NULL,
  `email_copies` varchar(200) NOT NULL,
  `button_text` varchar(50) NOT NULL,
  `response` longtext NOT NULL,
  `content` longtext NOT NULL,
  `send_email` tinyint(1) NOT NULL,
  `email_subject` varchar(200) NOT NULL,
  `email_from` varchar(75) NOT NULL,
  PRIMARY KEY (`page_ptr_id`),
  CONSTRAINT `page_ptr_id_refs_id_fe19b67b` FOREIGN KEY (`page_ptr_id`) REFERENCES `pages_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_form`
--

LOCK TABLES `forms_form` WRITE;
/*!40000 ALTER TABLE `forms_form` DISABLE KEYS */;
/*!40000 ALTER TABLE `forms_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_formentry`
--

DROP TABLE IF EXISTS `forms_formentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_formentry` (
  `entry_time` datetime NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `forms_formentry_c3d79a6c` (`form_id`),
  CONSTRAINT `form_id_refs_page_ptr_id_4d605921` FOREIGN KEY (`form_id`) REFERENCES `forms_form` (`page_ptr_id`)
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
  CONSTRAINT `page_ptr_id_refs_id_75804475` FOREIGN KEY (`page_ptr_id`) REFERENCES `pages_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries_gallery`
--

LOCK TABLES `galleries_gallery` WRITE;
/*!40000 ALTER TABLE `galleries_gallery` DISABLE KEYS */;
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
  KEY `galleries_galleryimage_579c518c` (`gallery_id`),
  CONSTRAINT `gallery_id_refs_page_ptr_id_d6457fc6` FOREIGN KEY (`gallery_id`) REFERENCES `galleries_gallery` (`page_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries_galleryimage`
--

LOCK TABLES `galleries_galleryimage` WRITE;
/*!40000 ALTER TABLE `galleries_galleryimage` DISABLE KEYS */;
/*!40000 ALTER TABLE `galleries_galleryimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generic_assignedkeyword`
--

DROP TABLE IF EXISTS `generic_assignedkeyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generic_assignedkeyword` (
  `content_type_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword_id` int(11) NOT NULL,
  `object_pk` int(11) DEFAULT NULL,
  `_order` int(11),
  PRIMARY KEY (`id`),
  KEY `generic_assignedkeyword_37ef4eb4` (`content_type_id`),
  KEY `generic_assignedkeyword_0e202173` (`keyword_id`),
  CONSTRAINT `content_type_id_refs_id_c36d959c` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `keyword_id_refs_id_aa70ce50` FOREIGN KEY (`keyword_id`) REFERENCES `generic_keyword` (`id`)
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
  `slug` varchar(2000),
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) NOT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `generic_keyword_99732b5c` (`site_id`),
  CONSTRAINT `site_id_refs_id_f6393455` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
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
  `content_type_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` int(11) NOT NULL,
  `object_pk` int(11) DEFAULT NULL,
  `rating_date` datetime,
  `user_id` int(11),
  PRIMARY KEY (`id`),
  KEY `generic_rating_37ef4eb4` (`content_type_id`),
  KEY `generic_rating_6340c63c` (`user_id`),
  CONSTRAINT `user_id_refs_id_9436ba96` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `content_type_id_refs_id_1c638e93` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
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
  `by_author` tinyint(1) NOT NULL,
  `comment_ptr_id` int(11) NOT NULL,
  `replied_to_id` int(11) DEFAULT NULL,
  `rating_count` int(11) NOT NULL,
  `rating_average` double NOT NULL,
  `rating_sum` int(11) NOT NULL,
  PRIMARY KEY (`comment_ptr_id`),
  KEY `generic_threadedcomment_148afc3c` (`replied_to_id`),
  CONSTRAINT `comment_ptr_id_refs_id_d4c241e5` FOREIGN KEY (`comment_ptr_id`) REFERENCES `django_comments` (`id`),
  CONSTRAINT `replied_to_id_refs_comment_ptr_id_83bd8e31` FOREIGN KEY (`replied_to_id`) REFERENCES `generic_threadedcomment` (`comment_ptr_id`)
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institute_facilities`
--

LOCK TABLES `institute_facilities` WRITE;
/*!40000 ALTER TABLE `institute_facilities` DISABLE KEYS */;
INSERT INTO `institute_facilities` VALUES (1,'asdfgh');
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
  KEY `institute_institutecourse_4da47e07` (`name_id`),
  KEY `institute_institutecourse_84842d9e` (`sub_courses_id`),
  KEY `institute_institutecourse_0ce887d1` (`course_type_id`),
  CONSTRAINT `course_type_id_refs_id_c362fcb0` FOREIGN KEY (`course_type_id`) REFERENCES `datamaster_coursetype` (`id`),
  CONSTRAINT `name_id_refs_id_7ed8d5db` FOREIGN KEY (`name_id`) REFERENCES `datamaster_course` (`id`),
  CONSTRAINT `sub_courses_id_refs_id_8503bab1` FOREIGN KEY (`sub_courses_id`) REFERENCES `datamaster_subcourse` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institute_institutecourse`
--

LOCK TABLES `institute_institutecourse` WRITE;
/*!40000 ALTER TABLE `institute_institutecourse` DISABLE KEYS */;
INSERT INTO `institute_institutecourse` VALUES (1,1,4,1,2,120000);
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
  KEY `institute_institutecoursesession_76c64230` (`institutecourse_id`),
  CONSTRAINT `institutecourse_id_refs_id_e813002f` FOREIGN KEY (`institutecourse_id`) REFERENCES `institute_institutecourse` (`id`)
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
  `logo` varchar(100),
  PRIMARY KEY (`id`),
  KEY `institute_institution_b4775056` (`university_id`),
  KEY `institute_institution_cb003464` (`courses_id`),
  CONSTRAINT `courses_id_refs_id_eccc8a5a` FOREIGN KEY (`courses_id`) REFERENCES `institute_institutecourse` (`id`),
  CONSTRAINT `university_id_refs_id_7a958a87` FOREIGN KEY (`university_id`) REFERENCES `institute_university` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institute_institution`
--

LOCK TABLES `institute_institution` WRITE;
/*!40000 ALTER TABLE `institute_institution` DISABLE KEYS */;
INSERT INTO `institute_institution` VALUES (1,'asdfgh','address1','Bangalore','Karnataka','www.website1.com','1234567890','demo@demo.com',1989,'GOVERNMENT',1,1,0,'2013-06-27','Tenth pass',90,'MBA','uploads/institutes/logo-delhi_1.png');
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
  UNIQUE KEY `institute_institution_entrance_tes_institution_id_113d4f0c_uniq` (`institution_id`,`entrancetest_id`),
  KEY `institute_institution_entrance_test_71bbc151` (`institution_id`),
  KEY `institute_institution_entrance_test_f0ae7bf4` (`entrancetest_id`),
  CONSTRAINT `entrancetest_id_refs_id_5c836dc3` FOREIGN KEY (`entrancetest_id`) REFERENCES `datamaster_entrancetest` (`id`),
  CONSTRAINT `institution_id_refs_id_8c433224` FOREIGN KEY (`institution_id`) REFERENCES `institute_institution` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institute_institution_entrance_test`
--

LOCK TABLES `institute_institution_entrance_test` WRITE;
/*!40000 ALTER TABLE `institute_institution_entrance_test` DISABLE KEYS */;
INSERT INTO `institute_institution_entrance_test` VALUES (1,1,1);
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
  UNIQUE KEY `institute_institution_facilities_institution_id_7e89921c_uniq` (`institution_id`,`facilities_id`),
  KEY `institute_institution_facilities_71bbc151` (`institution_id`),
  KEY `institute_institution_facilities_4723e4d8` (`facilities_id`),
  CONSTRAINT `facilities_id_refs_id_2c3da900` FOREIGN KEY (`facilities_id`) REFERENCES `institute_facilities` (`id`),
  CONSTRAINT `institution_id_refs_id_d1e51201` FOREIGN KEY (`institution_id`) REFERENCES `institute_institution` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institute_institution_facilities`
--

LOCK TABLES `institute_institution_facilities` WRITE;
/*!40000 ALTER TABLE `institute_institution_facilities` DISABLE KEYS */;
INSERT INTO `institute_institution_facilities` VALUES (1,1,1);
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
  CONSTRAINT `page_ptr_id_refs_id_2adddb0b` FOREIGN KEY (`page_ptr_id`) REFERENCES `pages_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_link`
--

LOCK TABLES `pages_link` WRITE;
/*!40000 ALTER TABLE `pages_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_page`
--

DROP TABLE IF EXISTS `pages_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_page` (
  `status` int(11) NOT NULL,
  `_order` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `description` longtext NOT NULL,
  `title` varchar(500) NOT NULL,
  `short_url` varchar(200) DEFAULT NULL,
  `login_required` tinyint(1) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `expiry_date` datetime DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `titles` varchar(1000) DEFAULT NULL,
  `content_model` varchar(50) DEFAULT NULL,
  `slug` varchar(2000),
  `keywords_string` varchar(500) NOT NULL,
  `site_id` int(11) NOT NULL,
  `gen_description` tinyint(1) NOT NULL,
  `in_menus` varchar(100),
  `_meta_title` varchar(500),
  `in_sitemap` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_page_410d0aac` (`parent_id`),
  KEY `pages_page_99732b5c` (`site_id`),
  CONSTRAINT `parent_id_refs_id_68963b8e` FOREIGN KEY (`parent_id`) REFERENCES `pages_page` (`id`),
  CONSTRAINT `site_id_refs_id_70c9ac77` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_page`
--

LOCK TABLES `pages_page` WRITE;
/*!40000 ALTER TABLE `pages_page` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_richtextpage`
--

DROP TABLE IF EXISTS `pages_richtextpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_richtextpage` (
  `content` longtext NOT NULL,
  `page_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`page_ptr_id`),
  CONSTRAINT `page_ptr_id_refs_id_558d29bc` FOREIGN KEY (`page_ptr_id`) REFERENCES `pages_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_richtextpage`
--

LOCK TABLES `pages_richtextpage` WRITE;
/*!40000 ALTER TABLE `pages_richtextpage` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_richtextpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_userprofile`
--

DROP TABLE IF EXISTS `registration_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `account_type` varchar(50) NOT NULL,
  `institution_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `registration_userprofile_71bbc151` (`institution_id`),
  CONSTRAINT `user_id_refs_id_1ce26a54` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_userprofile`
--

LOCK TABLES `registration_userprofile` WRITE;
/*!40000 ALTER TABLE `registration_userprofile` DISABLE KEYS */;
INSERT INTO `registration_userprofile` VALUES (1,4,'STUDENT',1),(2,5,'STUDENT',1);
/*!40000 ALTER TABLE `registration_userprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `south_migrationhistory`
--

DROP TABLE IF EXISTS `south_migrationhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `south_migrationhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(255) NOT NULL,
  `migration` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `south_migrationhistory`
--

LOCK TABLES `south_migrationhistory` WRITE;
/*!40000 ALTER TABLE `south_migrationhistory` DISABLE KEYS */;
INSERT INTO `south_migrationhistory` VALUES (1,'conf','0001_initial','2013-06-27 17:27:31'),(2,'conf','0002_auto__add_field_setting_site','2013-06-27 17:27:32'),(3,'conf','0003_update_site_setting','2013-06-27 17:27:32'),(4,'conf','0004_ssl_account_settings_rename','2013-06-27 17:27:32'),(5,'core','0001_initial','2013-06-27 17:27:32'),(6,'pages','0001_initial','2013-06-27 17:27:35'),(7,'pages','0002_auto__del_field_page__keywords__add_field_page_keywords_string__chg_fi','2013-06-27 17:27:35'),(8,'blog','0001_initial','2013-06-27 17:27:40'),(9,'blog','0002_auto','2013-06-27 17:27:42'),(10,'blog','0003_categories','2013-06-27 17:27:42'),(11,'blog','0004_auto__del_field_blogpost_category','2013-06-27 17:27:42'),(12,'blog','0005_auto__del_comment__add_field_blogpost_comments_count__chg_field_blogpo','2013-06-27 17:27:43'),(13,'blog','0006_auto__del_field_blogpost__keywords__add_field_blogpost_keywords_string','2013-06-27 17:27:44'),(14,'core','0002_auto__del_keyword','2013-06-27 17:27:44'),(15,'core','0003_auto__add_sitepermission','2013-06-27 17:27:46'),(16,'core','0004_set_site_permissions','2013-06-27 17:27:46'),(17,'core','0005_auto__chg_field_sitepermission_user__del_unique_sitepermission_user','2013-06-27 17:27:47'),(18,'generic','0001_initial','2013-06-27 17:27:49'),(19,'generic','0002_auto__add_keyword__add_assignedkeyword','2013-06-27 17:27:50'),(20,'generic','0003_auto__add_rating','2013-06-27 17:27:51'),(21,'generic','0004_auto__chg_field_rating_object_pk__chg_field_assignedkeyword_object_pk','2013-06-27 17:27:54'),(22,'generic','0005_keyword_site','2013-06-27 17:27:55'),(23,'generic','0006_move_keywords','2013-06-27 17:27:55'),(24,'generic','0007_auto__add_field_assignedkeyword__order','2013-06-27 17:27:56'),(25,'generic','0008_set_keyword_order','2013-06-27 17:27:56'),(26,'generic','0009_auto__chg_field_keyword_title__chg_field_keyword_slug','2013-06-27 17:27:57'),(27,'generic','0009_auto__del_field_threadedcomment_email_hash','2013-06-27 17:27:57'),(28,'generic','0010_auto__chg_field_keyword_slug__chg_field_keyword_title','2013-06-27 17:27:57'),(29,'generic','0011_auto__add_field_threadedcomment_rating_count__add_field_threadedcommen','2013-06-27 17:27:58'),(30,'generic','0012_auto__add_field_rating_rating_date','2013-06-27 17:27:59'),(31,'generic','0013_auto__add_field_threadedcomment_rating_sum','2013-06-27 17:27:59'),(32,'generic','0014_auto__add_field_rating_user','2013-06-27 17:28:00'),(33,'blog','0007_auto__add_field_blogpost_site','2013-06-27 17:28:02'),(34,'blog','0008_auto__add_field_blogpost_rating_average__add_field_blogpost_rating_cou','2013-06-27 17:28:03'),(35,'blog','0009_auto__chg_field_blogpost_content','2013-06-27 17:28:03'),(36,'blog','0010_category_site_allow_comments','2013-06-27 17:28:05'),(37,'blog','0011_comment_site_data','2013-06-27 17:28:05'),(38,'blog','0012_auto__add_field_blogpost_featured_image','2013-06-27 17:28:06'),(39,'blog','0013_auto__chg_field_blogpost_featured_image','2013-06-27 17:28:06'),(40,'blog','0014_auto__add_field_blogpost_gen_description','2013-06-27 17:28:06'),(41,'blog','0015_auto__chg_field_blogcategory_title__chg_field_blogcategory_slug__chg_f','2013-06-27 17:28:08'),(42,'blog','0016_add_field_blogpost__meta_title','2013-06-27 17:28:08'),(43,'blog','0017_add_field_blogpost__related_posts','2013-06-27 17:28:10'),(44,'blog','0018_auto__add_field_blogpost_in_sitemap','2013-06-27 17:28:10'),(45,'blog','0019_auto__add_field_blogpost_rating_sum','2013-06-27 17:28:11'),(46,'forms','0001_initial','2013-06-27 17:28:13'),(47,'forms','0002_auto__add_field_field_placeholder_text','2013-06-27 17:28:14'),(48,'forms','0003_auto__chg_field_field_field_type','2013-06-27 17:28:16'),(49,'forms','0004_auto__chg_field_form_response__chg_field_form_content','2013-06-27 17:28:16'),(50,'forms','0005_auto__chg_field_fieldentry_value','2013-06-27 17:28:16'),(51,'pages','0003_auto__add_field_page_site','2013-06-27 17:28:18'),(52,'pages','0004_auto__del_contentpage__add_richtextpage','2013-06-27 17:28:18'),(53,'pages','0005_rename_contentpage','2013-06-27 17:28:18'),(54,'pages','0006_auto__add_field_page_gen_description','2013-06-27 17:28:18'),(55,'pages','0007_auto__chg_field_page_slug__chg_field_page_title','2013-06-27 17:28:19'),(56,'pages','0008_auto__add_link','2013-06-27 17:28:20'),(57,'pages','0009_add_field_page_in_menus','2013-06-27 17:28:20'),(58,'pages','0010_set_menus','2013-06-27 17:28:20'),(59,'pages','0011_delete_nav_flags','2013-06-27 17:28:21'),(60,'pages','0012_add_field_page__meta_title','2013-06-27 17:28:22'),(61,'pages','0013_auto__add_field_page_in_sitemap','2013-06-27 17:28:22'),(62,'galleries','0001_initial','2013-06-27 17:28:24'),(63,'twitter','0001_initial','2013-06-27 17:28:25'),(64,'twitter','0002_auto__chg_field_query_value','2013-06-27 17:28:26'),(65,'institute','0001_initial','2013-06-27 17:28:33'),(66,'institute','0002_auto__add_field_institution_logo','2013-06-27 17:28:34'),(67,'institute','0003_auto__chg_field_institution_logo','2013-06-27 17:28:34');
/*!40000 ALTER TABLE `south_migrationhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twitter_query`
--

DROP TABLE IF EXISTS `twitter_query`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `twitter_query` (
  `interested` tinyint(1) NOT NULL,
  `type` varchar(10) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(140) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twitter_query`
--

LOCK TABLES `twitter_query` WRITE;
/*!40000 ALTER TABLE `twitter_query` DISABLE KEYS */;
/*!40000 ALTER TABLE `twitter_query` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twitter_tweet`
--

DROP TABLE IF EXISTS `twitter_tweet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `twitter_tweet` (
  `retweeter_profile_image_url` varchar(200) DEFAULT NULL,
  `text` longtext,
  `created_at` datetime DEFAULT NULL,
  `remote_id` varchar(50) NOT NULL,
  `retweeter_user_name` varchar(100) DEFAULT NULL,
  `profile_image_url` varchar(200) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `query_id` int(11) NOT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `retweeter_full_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `twitter_tweet_1f3ceafc` (`query_id`),
  CONSTRAINT `query_id_refs_id_b81595a6` FOREIGN KEY (`query_id`) REFERENCES `twitter_query` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twitter_tweet`
--

LOCK TABLES `twitter_tweet` WRITE;
/*!40000 ALTER TABLE `twitter_tweet` DISABLE KEYS */;
/*!40000 ALTER TABLE `twitter_tweet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zone_contactform`
--

DROP TABLE IF EXISTS `zone_contactform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zone_contactform` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `topic` varchar(100) NOT NULL,
  `message` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zone_contactform`
--

LOCK TABLES `zone_contactform` WRITE;
/*!40000 ALTER TABLE `zone_contactform` DISABLE KEYS */;
/*!40000 ALTER TABLE `zone_contactform` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-06-28  0:20:44
