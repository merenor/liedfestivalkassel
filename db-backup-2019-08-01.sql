-- MySQL dump 10.13  Distrib 5.5.54, for debian-linux-gnu (x86_64)
--
-- Host: liedfestivalkassel.mysql.pythonanywhere-services.com    Database: liedfestivalkass$liedfestivalkass
-- ------------------------------------------------------
-- Server version	5.6.40-log

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add artist',7,'add_artist'),(20,'Can change artist',7,'change_artist'),(21,'Can delete artist',7,'delete_artist'),(22,'Can add ticket reservation',8,'add_ticketreservation'),(23,'Can change ticket reservation',8,'change_ticketreservation'),(24,'Can delete ticket reservation',8,'delete_ticketreservation'),(25,'Can add mail template',9,'add_mailtemplate'),(26,'Can change mail template',9,'change_mailtemplate'),(27,'Can delete mail template',9,'delete_mailtemplate'),(28,'Can add sponsor',10,'add_sponsor'),(29,'Can change sponsor',10,'change_sponsor'),(30,'Can delete sponsor',10,'delete_sponsor'),(31,'Can add concert',11,'add_concert'),(32,'Can change concert',11,'change_concert'),(33,'Can delete concert',11,'delete_concert'),(34,'Can add gast',12,'add_gast'),(35,'Can change gast',12,'change_gast'),(36,'Can delete gast',12,'delete_gast'),(37,'Can add footer',13,'add_footer'),(38,'Can change footer',13,'change_footer'),(39,'Can delete footer',13,'delete_footer'),(40,'Can add workshop reservation',14,'add_workshopreservation'),(41,'Can change workshop reservation',14,'change_workshopreservation'),(42,'Can delete workshop reservation',14,'delete_workshopreservation');
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
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$100000$fYXjOzeKXB67$5Jg3qdcOVktj2r/0dzbu4Qz6fs3EDXcSqel9sXJ0gt4=','2019-01-08 14:50:24.331495',1,'felix','','','felix@werthschulte.info',1,1,'2018-03-08 22:05:46.300189'),(2,'pbkdf2_sha256$100000$j766QrR6FfTX$2ElIIyz4b2rHCrGAV4BhYhGirvER1i6x7Br5CAPlRkE=','2018-04-20 05:03:19.394244',0,'gast','','','',0,1,'2018-03-09 17:15:31.551558'),(3,'pbkdf2_sha256$100000$AePhjxW8Nm4L$QmYAgaceoWvA4F1MHyJ0Yz5DKn1HIo+fjl8ejP9PUWE=','2019-01-08 14:49:38.070335',1,'michael','Michael','Kravtchin','m.kravtchin@liedfestival-kassel.de',1,1,'2018-05-27 13:48:53.000000');
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
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2018-03-09 17:15:31.690071','2','gast',1,'[{\"added\": {}}]',4,1),(2,'2018-03-24 14:56:32.418513','1','Hessisches Ministerium für Wissenschaft und Kunst',1,'[{\"added\": {}}]',10,1),(3,'2018-03-24 14:56:57.862927','2','Kassel - documenta-Stadt',1,'[{\"added\": {}}]',10,1),(4,'2018-03-24 14:57:03.869610','3','Hübner GmbH',1,'[{\"added\": {}}]',10,1),(5,'2018-03-24 14:57:30.978811','4','Von Waitzische Beteiligungen',1,'[{\"added\": {}}]',10,1),(6,'2018-03-24 14:57:37.138535','5','Herrn Dr. Ulrich Etscheit',1,'[{\"added\": {}}]',10,1),(7,'2018-03-24 14:57:42.714406','6','Herrn Oliver Goldenbow und Frau Cordula Ströher-Go',1,'[{\"added\": {}}]',10,1),(8,'2018-03-24 14:57:51.635394','7','B. Braun Melsungen',1,'[{\"added\": {}}]',10,1),(9,'2018-03-24 14:57:58.703376','8','Gemeinschaftspraxis Lehmann und Lehmann, Schauenbu',1,'[{\"added\": {}}]',10,1),(10,'2018-03-24 14:58:08.164883','9','Pianohaus Doppelstein',1,'[{\"added\": {}}]',10,1),(11,'2018-03-24 14:58:15.078082','10','Evangelische Philippus-Kirchengemeinde Kassel',1,'[{\"added\": {}}]',10,1),(12,'2018-03-24 14:58:22.605434','11','Musikakademie der Stadt Kassel »Louis Spohr«',1,'[{\"added\": {}}]',10,1),(13,'2018-03-24 15:04:00.307301','8','Gemeinschaftspraxis Lehmann und Lehmann, Schauenburg',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',10,1),(14,'2018-03-24 15:04:06.688332','6','Herrn Oliver Goldenbow und Frau Cordula Ströher-Goldenbow',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',10,1),(15,'2018-03-24 17:08:21.574586','1','2018-06-12 20:00:00+02:00 - Schwanengesang',1,'[{\"added\": {}}]',11,1),(16,'2018-03-24 17:08:56.606665','2','2018-06-14 20:00:00+02:00 - Winterreise',1,'[{\"added\": {}}]',11,1),(17,'2018-03-24 17:09:26.416381','3','2018-06-16 20:00:00+02:00 - Quartett im Konzert',1,'[{\"added\": {}}]',11,1),(18,'2018-03-24 17:09:56.523562','2','2018-06-14 20:00:00+02:00 - Winterreise',2,'[{\"changed\": {\"fields\": [\"text\"]}}]',11,1),(19,'2018-03-24 17:11:43.160326','1','karten_bestaetigung (\'Liedfestival Kassel 2018 - Ihre Kartenvorbestellung\')',1,'[{\"added\": {}}]',9,1),(20,'2018-03-24 17:41:20.785045','1','Traudl Schmaderer',1,'[{\"added\": {}}]',7,1),(21,'2018-03-24 17:41:41.975425','2','Maren Engelhardt',1,'[{\"added\": {}}]',7,1),(22,'2018-03-24 17:42:03.478523','3','Daniel Holzhauser',1,'[{\"added\": {}}]',7,1),(23,'2018-03-24 17:42:33.824613','4','Alberto Bertino',1,'[{\"added\": {}}]',7,1),(24,'2018-03-24 17:43:35.916681','5','Michael Kravtchin',1,'[{\"added\": {}}]',7,1),(25,'2018-03-24 17:44:34.653002','1','Traudl Schmaderer',2,'[{\"changed\": {\"fields\": [\"rang\"]}}]',7,1),(26,'2018-03-24 17:44:41.094147','2','Maren Engelhardt',2,'[{\"changed\": {\"fields\": [\"rang\"]}}]',7,1),(27,'2018-03-24 17:44:45.955453','3','Daniel Holzhauser',2,'[{\"changed\": {\"fields\": [\"rang\"]}}]',7,1),(28,'2018-03-24 17:44:53.176057','5','Michael Kravtchin',2,'[{\"changed\": {\"fields\": [\"rang\"]}}]',7,1),(29,'2018-03-24 17:44:57.211764','4','Alberto Bertino',2,'[{\"changed\": {\"fields\": [\"rang\"]}}]',7,1),(30,'2018-03-27 15:38:23.175031','3','Daniel Holzhauser',2,'[{\"changed\": {\"fields\": [\"bio\"]}}]',7,1),(31,'2018-03-27 15:39:26.902967','1','Traudl Schmaderer',2,'[{\"changed\": {\"fields\": [\"bio\"]}}]',7,1),(32,'2018-03-27 15:41:33.060083','2','Maren Engelhardt',2,'[{\"changed\": {\"fields\": [\"bio\"]}}]',7,1),(33,'2018-03-27 15:42:56.517907','4','Alberto Bertino',2,'[{\"changed\": {\"fields\": [\"bio\"]}}]',7,1),(34,'2018-03-27 15:44:03.681888','5','Michael Kravtchin',2,'[{\"changed\": {\"fields\": [\"bio\"]}}]',7,1),(35,'2018-03-27 15:44:26.591270','4','Alberto Bertino',2,'[{\"changed\": {\"fields\": [\"bio\", \"photo_credit\"]}}]',7,1),(36,'2018-03-27 15:45:37.848488','4','Alberto Bertino',2,'[{\"changed\": {\"fields\": [\"bio\"]}}]',7,1),(37,'2018-03-27 17:23:32.528723','1','Daniel Jenz',1,'[{\"added\": {}}]',12,1),(38,'2018-03-27 17:24:04.835481','1','Footer object (1)',1,'[{\"added\": {}}]',13,1),(39,'2018-04-06 17:45:08.528516','1','karten_bestaetigung (\'Liedfestival Kassel 2018 - Ihre Kartenvorbestellung\')',2,'[{\"changed\": {\"fields\": [\"text\"]}}]',9,1),(40,'2018-04-06 18:04:44.949856','1','karten_bestaetigung (\'Liedfestival Kassel 2018 - Ihre Kartenvorbestellung\')',2,'[{\"changed\": {\"fields\": [\"text\"]}}]',9,1),(41,'2018-04-19 12:48:22.705251','2','workshop_bestaetigung (\'Liedfestival Kassel: Anmeldung zum Workshop\')',1,'[{\"added\": {}}]',9,1),(42,'2018-04-19 15:58:56.639217','1','2018-06-12 20:00:00+02:00 - Schwanengesang',2,'[{\"changed\": {\"fields\": [\"text\"]}}]',11,1),(43,'2018-04-19 15:59:22.985440','1','2018-06-12 20:00:00+02:00 - Schwanengesang',2,'[{\"changed\": {\"fields\": [\"text\"]}}]',11,1),(44,'2018-04-19 15:59:51.711546','1','2018-06-12 20:00:00+02:00 - Schwanengesang',2,'[{\"changed\": {\"fields\": [\"text\"]}}]',11,1),(45,'2018-04-19 16:01:02.013439','1','Kassel - documenta-Stadt',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',10,1),(46,'2018-04-19 16:01:12.471126','2','Land Hessen',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',10,1),(47,'2018-04-19 16:01:33.525032','3','Kasseler Bank',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',10,1),(48,'2018-04-19 16:02:17.046349','4','Gerhard-Fieseler-Stiftung',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',10,1),(49,'2018-04-19 16:02:30.218313','6','Herrn Oliver Goldenbow und Frau Cordula Ströher-Goldenbow',2,'[]',10,1),(50,'2018-04-19 16:02:36.692185','5','Herrn Oliver Goldenbow und Frau Cordula Ströher-Goldenbow',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',10,1),(51,'2018-04-19 16:02:45.930110','6','und andere',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',10,1),(52,'2018-04-19 16:03:08.031484','11','Musikakademie der Stadt Kassel »Louis Spohr«',3,'',10,1),(53,'2018-04-19 16:03:08.046919','10','Evangelische Philippus-Kirchengemeinde Kassel',3,'',10,1),(54,'2018-04-19 16:03:08.064255','9','Pianohaus Doppelstein',3,'',10,1),(55,'2018-04-19 16:03:08.081844','8','Gemeinschaftspraxis Lehmann und Lehmann, Schauenburg',3,'',10,1),(56,'2018-04-19 16:03:08.102513','7','B. Braun Melsungen',3,'',10,1),(57,'2018-04-19 16:03:50.135403','6','sowie weitere Förderer und Sponsoren',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',10,1),(58,'2018-04-21 19:08:12.787775','1','karten_bestaetigung (\'Liedfestival Kassel 2018 - Ihre Kartenvorbestellung\')',2,'[]',9,1),(59,'2018-04-21 19:13:50.160475','2','workshop_bestaetigung (\'Liedfestival Kassel: Anmeldung zum Workshop\')',2,'[{\"changed\": {\"fields\": [\"text\"]}}]',9,1),(60,'2018-04-23 09:21:21.893880','1','2018-06-12 20:00:00+02:00 - Schwanengesang',2,'[{\"changed\": {\"fields\": [\"ticket_prices\"]}}]',11,1),(61,'2018-04-23 09:21:41.076511','2','2018-06-14 20:00:00+02:00 - Winterreise',2,'[{\"changed\": {\"fields\": [\"ticket_prices\"]}}]',11,1),(62,'2018-04-23 09:21:52.180872','3','2018-06-16 20:00:00+02:00 - Quartett im Konzert',2,'[{\"changed\": {\"fields\": [\"ticket_prices\"]}}]',11,1),(63,'2018-04-23 09:27:01.865459','1','karten_bestaetigung (\'Liedfestival Kassel 2018 - Ihre Kartenvorbestellung\')',2,'[{\"changed\": {\"fields\": [\"text\"]}}]',9,1),(64,'2018-04-23 09:31:38.983434','1','karten_bestaetigung (\'Liedfestival Kassel 2018 - Ihre Kartenvorbestellung\')',2,'[{\"changed\": {\"fields\": [\"text\"]}}]',9,1),(65,'2018-04-23 09:33:02.654294','1','karten_bestaetigung (\'Liedfestival Kassel 2018 - Ihre Kartenvorbestellung\')',2,'[{\"changed\": {\"fields\": [\"text\"]}}]',9,1),(66,'2018-04-23 15:24:40.671054','3','Kasseler Bank',3,'',10,1),(67,'2018-04-23 15:24:50.883906','5','Herrn Oliver Goldenbow und Frau Cordula Ströher-Goldenbow',2,'[]',10,1),(68,'2018-04-23 15:24:57.627054','12','Pianohaus Doppelstein',1,'[{\"added\": {}}]',10,1),(69,'2018-04-24 19:59:44.432553','2','workshop_bestaetigung (\'Liedfestival Kassel: Anmeldung zum Workshop\')',2,'[{\"changed\": {\"fields\": [\"text\"]}}]',9,1),(70,'2018-04-24 19:59:59.443511','1','karten_bestaetigung (\'Liedfestival Kassel 2018 - Ihre Kartenvorbestellung\')',2,'[]',9,1),(71,'2018-04-24 20:00:57.059151','2','workshop_bestaetigung (\'Liedfestival Kassel: Anmeldung zum Workshop\')',2,'[{\"changed\": {\"fields\": [\"text\"]}}]',9,1),(72,'2018-04-25 10:04:10.073326','2','Jens Josef',1,'[{\"added\": {}}]',12,1),(73,'2018-04-26 10:08:51.816658','1','Footer object (1)',2,'[{\"changed\": {\"fields\": [\"contact\"]}}]',13,1),(74,'2018-05-08 09:16:17.222313','2','2018-06-14 20:00:00+02:00 - Winterreise',2,'[{\"changed\": {\"fields\": [\"subtitle\"]}}]',11,1),(75,'2018-05-08 09:16:26.546738','2','2018-06-14 20:00:00+02:00 - Winterreise op. 89, D 911',2,'[{\"changed\": {\"fields\": [\"title\", \"subtitle\"]}}]',11,1),(76,'2018-05-08 09:16:50.820608','1','2018-06-12 20:00:00+02:00 - Schwanengesang D 957',2,'[{\"changed\": {\"fields\": [\"title\", \"subtitle\"]}}]',11,1),(77,'2018-05-08 09:21:07.296377','1','Younggi Do',2,'[{\"changed\": {\"fields\": [\"name\", \"bio\", \"picture\", \"photo_credit\"]}}]',12,1),(78,'2018-05-08 09:22:33.911977','2','2018-06-14 20:00:00+02:00 - Winterreise op. 89, D 911',2,'[{\"changed\": {\"fields\": [\"subtitle\"]}}]',11,1),(79,'2018-05-08 09:22:41.656154','2','2018-06-14 20:00:00+02:00 - Winterreise',2,'[{\"changed\": {\"fields\": [\"title\"]}}]',11,1),(80,'2018-05-08 09:22:51.397790','1','2018-06-12 20:00:00+02:00 - Schwanengesang',2,'[{\"changed\": {\"fields\": [\"title\", \"subtitle\"]}}]',11,1),(81,'2018-05-08 09:23:20.467698','3','2018-06-16 20:00:00+02:00 - Quartett im Konzert',2,'[{\"changed\": {\"fields\": [\"text\"]}}]',11,1),(82,'2018-05-08 09:23:44.698656','1','2018-06-12 20:00:00+02:00 - Schwanengesang',2,'[{\"changed\": {\"fields\": [\"text\"]}}]',11,1),(83,'2018-05-08 09:24:25.548335','1','2018-06-12 20:00:00+02:00 - Schwanengesang',2,'[{\"changed\": {\"fields\": [\"text\"]}}]',11,1),(84,'2018-05-08 09:24:40.319909','3','2018-06-16 20:00:00+02:00 - Quartett im Konzert',2,'[{\"changed\": {\"fields\": [\"text\"]}}]',11,1),(85,'2018-05-08 09:26:29.998260','13','23.04.2018 09:42 - Felix Werthschulte',3,'',8,1),(86,'2018-05-08 09:26:30.006192','12','23.04.2018 09:39 - Felix Werthschulte',3,'',8,1),(87,'2018-05-08 09:26:30.015986','11','23.04.2018 09:33 - Felix Werthschulte',3,'',8,1),(88,'2018-05-08 09:26:30.025505','10','23.04.2018 09:32 - Felix Werthschulte',3,'',8,1),(89,'2018-05-08 09:26:30.033279','9','23.04.2018 09:23 - Felix Werthschulte',3,'',8,1),(90,'2018-05-08 09:26:30.039336','8','15.04.2018 19:32 - Felix Werthschulte',3,'',8,1),(91,'2018-05-08 09:26:30.045213','7','15.04.2018 19:27 - Felix Werthschulte',3,'',8,1),(92,'2018-05-08 09:26:30.050960','6','15.04.2018 19:14 - Felix Werthschulte',3,'',8,1),(93,'2018-05-08 09:26:30.058722','5','06.04.2018 17:34 - A B',3,'',8,1),(94,'2018-05-08 09:26:30.065604','4','27.03.2018 15:23 - Jasper Jones',3,'',8,1),(95,'2018-05-08 09:26:30.080903','3','24.03.2018 17:16 - X Y',3,'',8,1),(96,'2018-05-08 09:26:30.087304','2','24.03.2018 17:12 - Georg Antonopoulos',3,'',8,1),(97,'2018-05-08 09:26:30.093085','1','24.03.2018 17:10 - Jasper Jones',3,'',8,1),(98,'2018-05-08 12:53:20.558285','1','2018-06-12 20:00:00+02:00 - Schwanengesang',2,'[{\"changed\": {\"fields\": [\"text\"]}}]',11,1),(99,'2018-05-08 12:54:51.634715','3','2018-06-16 20:00:00+02:00 - Quartett im Konzert',2,'[{\"changed\": {\"fields\": [\"text\"]}}]',11,1),(100,'2018-05-09 07:19:08.613327','3','2018-06-16 20:00:00+02:00 - Quartett im Konzert',2,'[{\"changed\": {\"fields\": [\"subtitle\", \"text\"]}}]',11,1),(101,'2018-05-25 17:14:19.437655','1','karten_bestaetigung (\'Liedfestival Kassel 2018 - Ihre Kartenvorbestellung\')',2,'[{\"changed\": {\"fields\": [\"text\"]}}]',9,1),(102,'2018-05-25 17:19:09.313257','1','karten_bestaetigung (\'Liedfestival Kassel 2018 - Ihre Kartenvorbestellung\')',2,'[{\"changed\": {\"fields\": [\"text\"]}}]',9,1),(103,'2018-05-27 13:44:07.827228','1','karten_bestaetigung (\'Liedfestival Kassel 2018 - Ihre Kartenvorbestellung\')',2,'[{\"changed\": {\"fields\": [\"text\"]}}]',9,1),(104,'2018-05-27 13:48:53.141173','3','michael',1,'[{\"added\": {}}]',4,1),(105,'2018-05-27 13:49:39.689169','3','michael',2,'[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"is_superuser\"]}}]',4,1),(106,'2018-05-27 13:49:55.045389','3','michael',2,'[{\"changed\": {\"fields\": [\"email\"]}}]',4,1),(107,'2018-05-27 13:51:31.866548','3','michael',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',4,1),(108,'2018-05-27 13:52:21.175473','3','michael',2,'[{\"changed\": {\"fields\": [\"is_staff\"]}}]',4,1),(109,'2018-05-27 16:40:43.642619','1','karten_bestaetigung (\'Liedfestival Kassel 2018 - Ihre Kartenvorbestellung\')',2,'[]',9,3);
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
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'home','artist'),(11,'home','concert'),(13,'home','footer'),(12,'home','gast'),(9,'home','mailtemplate'),(10,'home','sponsor'),(8,'home','ticketreservation'),(14,'home','workshopreservation'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-03-08 22:05:10.568718'),(2,'auth','0001_initial','2018-03-08 22:05:15.516902'),(3,'admin','0001_initial','2018-03-08 22:05:17.193385'),(4,'admin','0002_logentry_remove_auto_add','2018-03-08 22:05:17.213117'),(5,'contenttypes','0002_remove_content_type_name','2018-03-08 22:05:17.334955'),(6,'auth','0002_alter_permission_name_max_length','2018-03-08 22:05:17.399545'),(7,'auth','0003_alter_user_email_max_length','2018-03-08 22:05:17.458457'),(8,'auth','0004_alter_user_username_opts','2018-03-08 22:05:17.475753'),(9,'auth','0005_alter_user_last_login_null','2018-03-08 22:05:17.537297'),(10,'auth','0006_require_contenttypes_0002','2018-03-08 22:05:17.545424'),(11,'auth','0007_alter_validators_add_error_messages','2018-03-08 22:05:17.563337'),(12,'auth','0008_alter_user_username_max_length','2018-03-08 22:05:17.695986'),(13,'auth','0009_alter_user_last_name_max_length','2018-03-08 22:05:17.760194'),(14,'sessions','0001_initial','2018-03-08 22:05:18.289663'),(15,'home','0001_initial','2018-03-24 14:47:54.444184'),(16,'home','0002_auto_20180315_1239','2018-03-24 14:47:54.455616'),(17,'home','0003_artist_photo_credit','2018-03-24 14:47:54.788342'),(18,'home','0004_artist_instrument','2018-03-24 14:47:55.121496'),(19,'home','0005_ticketreservation','2018-03-24 14:47:57.663284'),(20,'home','0006_ticketreservation_anrede','2018-03-24 14:47:58.012106'),(21,'home','0007_mailtemplate','2018-03-24 14:47:58.876068'),(22,'home','0008_mailtemplate_subject','2018-03-24 14:47:59.200195'),(23,'home','0009_auto_20180322_2142','2018-03-24 14:48:00.987859'),(24,'home','0010_auto_20180323_2128','2018-03-24 14:48:02.570301'),(25,'home','0011_sponsor_rang','2018-03-24 14:48:02.905113'),(26,'home','0012_concert','2018-03-24 14:48:04.664861'),(27,'home','0013_auto_20180324_1601','2018-03-24 15:03:00.676943'),(28,'home','0014_artist_rang','2018-03-24 17:39:40.988209'),(29,'home','0015_gast','2018-03-27 17:21:13.548612'),(30,'home','0016_footer','2018-03-27 17:21:17.193851'),(31,'home','0017_auto_20180406_1947','2018-04-06 18:23:10.515316'),(32,'home','0018_ticketreservation_tickets_summe','2018-04-06 18:23:11.931394'),(33,'home','0019_ticketreservation_nachricht','2018-04-06 18:23:13.355400'),(34,'home','0020_auto_20180406_2016','2018-04-06 18:23:13.391434'),(35,'home','0021_workshopreservation','2018-04-06 19:56:05.456089'),(36,'home','0022_workshopreservation_ermaessigt','2018-04-19 12:45:49.476402'),(37,'home','0023_concert_ticket_prices','2018-04-23 09:20:25.596799');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
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
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('09fo7xb8bhm78qtz01gep3p651e6ejbh','NWY0MTU2YjIwZTU2MjQ0YmRiZjBlZjQ5ZWM4ZjA4ZWUwYTA2ZThmYzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZTBlNDY0YTlmNTFlOTIzMGFkMmJmODliODc4NWNjYWEwMGUwZmJkIn0=','2018-04-14 21:17:43.896972'),('3k6mvuyl9bdjnjv553hztr8pna3bu94g','OWU1YWYzODNjNjk2YTcxZDk4MTQ0NWQ3MmMxMzYxNmJhOWYwMmJhMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWM1Y2RmNWM1OGM3NjFjMTliOGVhMzVhMTRlNzRhMzliZGFhNzQyIn0=','2018-04-10 15:30:48.548802'),('3ulcqu0ph0z22pmjm26hkozc5ahve33i','NWY0MTU2YjIwZTU2MjQ0YmRiZjBlZjQ5ZWM4ZjA4ZWUwYTA2ZThmYzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZTBlNDY0YTlmNTFlOTIzMGFkMmJmODliODc4NWNjYWEwMGUwZmJkIn0=','2018-03-24 20:41:47.666798'),('5u07eoqc3ujtxglct2b1jg6jcl6yh5ni','NWY0MTU2YjIwZTU2MjQ0YmRiZjBlZjQ5ZWM4ZjA4ZWUwYTA2ZThmYzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZTBlNDY0YTlmNTFlOTIzMGFkMmJmODliODc4NWNjYWEwMGUwZmJkIn0=','2018-03-23 17:19:51.520015'),('6589rwdet8jw5cu38lqs5yycqo6f93hw','NWY0MTU2YjIwZTU2MjQ0YmRiZjBlZjQ5ZWM4ZjA4ZWUwYTA2ZThmYzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZTBlNDY0YTlmNTFlOTIzMGFkMmJmODliODc4NWNjYWEwMGUwZmJkIn0=','2018-03-24 19:46:14.827451'),('6f1bmu2oik1dvbidrkti55fpl6xgi3rl','OWU1YWYzODNjNjk2YTcxZDk4MTQ0NWQ3MmMxMzYxNmJhOWYwMmJhMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWM1Y2RmNWM1OGM3NjFjMTliOGVhMzVhMTRlNzRhMzliZGFhNzQyIn0=','2018-05-05 19:07:57.832207'),('6wz3vmxvew7y2g14kgoh6za0ccs84mt9','NWY0MTU2YjIwZTU2MjQ0YmRiZjBlZjQ5ZWM4ZjA4ZWUwYTA2ZThmYzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZTBlNDY0YTlmNTFlOTIzMGFkMmJmODliODc4NWNjYWEwMGUwZmJkIn0=','2018-03-23 17:16:08.917783'),('75wb5b7ts65qmuey7qg2ihs2otsh96r6','NWY0MTU2YjIwZTU2MjQ0YmRiZjBlZjQ5ZWM4ZjA4ZWUwYTA2ZThmYzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZTBlNDY0YTlmNTFlOTIzMGFkMmJmODliODc4NWNjYWEwMGUwZmJkIn0=','2018-04-19 17:45:51.078540'),('7j3u9lc58nvrmkfa5zmd11j0mv246aoy','OWU1YWYzODNjNjk2YTcxZDk4MTQ0NWQ3MmMxMzYxNmJhOWYwMmJhMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWM1Y2RmNWM1OGM3NjFjMTliOGVhMzVhMTRlNzRhMzliZGFhNzQyIn0=','2018-05-07 09:21:04.040829'),('7n560616w5rqnkvoa0hxvde9v485tk6z','Y2NiNjhkOGE5NTRiYWVkNDJjZmQwMWNmMWExOWYxNmM2NDgyNjllZjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxMTM0OGQ1ZWZhNjhkMGE4OWJhNzYyZTRlMDg2N2ZmNWNjNmQ4MjdmIn0=','2018-06-10 13:52:26.681384'),('82ecgpzv146358w8j47ibaljqevvwgu2','NWY0MTU2YjIwZTU2MjQ0YmRiZjBlZjQ5ZWM4ZjA4ZWUwYTA2ZThmYzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZTBlNDY0YTlmNTFlOTIzMGFkMmJmODliODc4NWNjYWEwMGUwZmJkIn0=','2018-04-07 16:12:13.971923'),('991ar5b83jgl8asdfu381tbzuulyljjy','NWY0MTU2YjIwZTU2MjQ0YmRiZjBlZjQ5ZWM4ZjA4ZWUwYTA2ZThmYzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZTBlNDY0YTlmNTFlOTIzMGFkMmJmODliODc4NWNjYWEwMGUwZmJkIn0=','2018-03-25 12:01:07.370703'),('9uw6719nrqwigry593tc5a34u39kg5au','NWY0MTU2YjIwZTU2MjQ0YmRiZjBlZjQ5ZWM4ZjA4ZWUwYTA2ZThmYzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZTBlNDY0YTlmNTFlOTIzMGFkMmJmODliODc4NWNjYWEwMGUwZmJkIn0=','2018-04-07 19:36:52.139667'),('adqdig3umxwm0b3phljtxkjvzq8rhftr','NWY0MTU2YjIwZTU2MjQ0YmRiZjBlZjQ5ZWM4ZjA4ZWUwYTA2ZThmYzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZTBlNDY0YTlmNTFlOTIzMGFkMmJmODliODc4NWNjYWEwMGUwZmJkIn0=','2018-04-22 15:38:54.021655'),('ag80zxvuwgh8bfuam84z67k9cqxe4dtf','OWU1YWYzODNjNjk2YTcxZDk4MTQ0NWQ3MmMxMzYxNmJhOWYwMmJhMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWM1Y2RmNWM1OGM3NjFjMTliOGVhMzVhMTRlNzRhMzliZGFhNzQyIn0=','2018-04-20 19:59:21.219428'),('d3351n1po49b84bo2ju7meivro6tdtn4','NWY0MTU2YjIwZTU2MjQ0YmRiZjBlZjQ5ZWM4ZjA4ZWUwYTA2ZThmYzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZTBlNDY0YTlmNTFlOTIzMGFkMmJmODliODc4NWNjYWEwMGUwZmJkIn0=','2018-03-23 18:46:54.702744'),('d8wxlbgo784qilvhoi3oqstggaudqhal','NWY0MTU2YjIwZTU2MjQ0YmRiZjBlZjQ5ZWM4ZjA4ZWUwYTA2ZThmYzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZTBlNDY0YTlmNTFlOTIzMGFkMmJmODliODc4NWNjYWEwMGUwZmJkIn0=','2018-04-19 19:47:23.939060'),('decfrbxc94uvv9wrxs68auez936gjmp3','NWY0MTU2YjIwZTU2MjQ0YmRiZjBlZjQ5ZWM4ZjA4ZWUwYTA2ZThmYzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZTBlNDY0YTlmNTFlOTIzMGFkMmJmODliODc4NWNjYWEwMGUwZmJkIn0=','2018-03-24 19:41:14.370799'),('dg2n18rd1zcrx2798hmbgd469i6qljdm','OWU1YWYzODNjNjk2YTcxZDk4MTQ0NWQ3MmMxMzYxNmJhOWYwMmJhMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWM1Y2RmNWM1OGM3NjFjMTliOGVhMzVhMTRlNzRhMzliZGFhNzQyIn0=','2018-03-23 06:03:33.988645'),('dqgyx3hkz1bovx5gjanhjvy3l49zpghr','OWU1YWYzODNjNjk2YTcxZDk4MTQ0NWQ3MmMxMzYxNmJhOWYwMmJhMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWM1Y2RmNWM1OGM3NjFjMTliOGVhMzVhMTRlNzRhMzliZGFhNzQyIn0=','2018-04-07 14:51:21.315675'),('evg5xfstjxdwr19ztjo09mal8wz2zbf1','OWU1YWYzODNjNjk2YTcxZDk4MTQ0NWQ3MmMxMzYxNmJhOWYwMmJhMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWM1Y2RmNWM1OGM3NjFjMTliOGVhMzVhMTRlNzRhMzliZGFhNzQyIn0=','2018-05-22 12:53:00.438612'),('f410idujj25scs7kzixa8kejcnnjk6y8','NWY0MTU2YjIwZTU2MjQ0YmRiZjBlZjQ5ZWM4ZjA4ZWUwYTA2ZThmYzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZTBlNDY0YTlmNTFlOTIzMGFkMmJmODliODc4NWNjYWEwMGUwZmJkIn0=','2018-04-20 15:23:34.175885'),('falce7cncm68sfhi0p9j0sw9y0p4wd4c','OWU1YWYzODNjNjk2YTcxZDk4MTQ0NWQ3MmMxMzYxNmJhOWYwMmJhMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWM1Y2RmNWM1OGM3NjFjMTliOGVhMzVhMTRlNzRhMzliZGFhNzQyIn0=','2018-03-22 22:06:12.926361'),('fga0ql0jc9ayfkrkwpmwxqfsegcfhcwn','NWY0MTU2YjIwZTU2MjQ0YmRiZjBlZjQ5ZWM4ZjA4ZWUwYTA2ZThmYzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZTBlNDY0YTlmNTFlOTIzMGFkMmJmODliODc4NWNjYWEwMGUwZmJkIn0=','2018-03-26 05:48:59.459866'),('frdk6ydmi837ls7o7834txxsfte7of3k','NWY0MTU2YjIwZTU2MjQ0YmRiZjBlZjQ5ZWM4ZjA4ZWUwYTA2ZThmYzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZTBlNDY0YTlmNTFlOTIzMGFkMmJmODliODc4NWNjYWEwMGUwZmJkIn0=','2018-04-20 10:27:46.657891'),('h3q7ad8l5bsqf55qqbbghnmsr5c8yhqa','NWY0MTU2YjIwZTU2MjQ0YmRiZjBlZjQ5ZWM4ZjA4ZWUwYTA2ZThmYzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZTBlNDY0YTlmNTFlOTIzMGFkMmJmODliODc4NWNjYWEwMGUwZmJkIn0=','2018-03-24 22:21:45.280685'),('h4g7hs4qoew7oj207bz99xxbgdq8fsw6','OWU1YWYzODNjNjk2YTcxZDk4MTQ0NWQ3MmMxMzYxNmJhOWYwMmJhMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWM1Y2RmNWM1OGM3NjFjMTliOGVhMzVhMTRlNzRhMzliZGFhNzQyIn0=','2019-01-22 14:50:24.340092'),('i24ymixwh3y7k2mwpveg1zv35h3xre7h','NWY0MTU2YjIwZTU2MjQ0YmRiZjBlZjQ5ZWM4ZjA4ZWUwYTA2ZThmYzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZTBlNDY0YTlmNTFlOTIzMGFkMmJmODliODc4NWNjYWEwMGUwZmJkIn0=','2018-03-23 19:15:19.358675'),('jqqlf942r6i5kra9q2f1thveb2nj6ueb','NWY0MTU2YjIwZTU2MjQ0YmRiZjBlZjQ5ZWM4ZjA4ZWUwYTA2ZThmYzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZTBlNDY0YTlmNTFlOTIzMGFkMmJmODliODc4NWNjYWEwMGUwZmJkIn0=','2018-03-24 21:15:34.633617'),('jxwwewx3nn0aomkmv0ng1jew93dfufu7','OWU1YWYzODNjNjk2YTcxZDk4MTQ0NWQ3MmMxMzYxNmJhOWYwMmJhMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWM1Y2RmNWM1OGM3NjFjMTliOGVhMzVhMTRlNzRhMzliZGFhNzQyIn0=','2018-04-20 17:36:10.755427'),('kuyg8kpeb6l5agk3b8j32q1pilu16huh','NWY0MTU2YjIwZTU2MjQ0YmRiZjBlZjQ5ZWM4ZjA4ZWUwYTA2ZThmYzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZTBlNDY0YTlmNTFlOTIzMGFkMmJmODliODc4NWNjYWEwMGUwZmJkIn0=','2018-04-29 19:13:11.490627'),('kvdztxtqfr0xsfc7je1hqxc83kzrt5qc','OWU1YWYzODNjNjk2YTcxZDk4MTQ0NWQ3MmMxMzYxNmJhOWYwMmJhMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWM1Y2RmNWM1OGM3NjFjMTliOGVhMzVhMTRlNzRhMzliZGFhNzQyIn0=','2018-05-23 07:18:05.683979'),('lb2yrm92wsq4qodjmlsmk8d6ct1jisuv','OWU1YWYzODNjNjk2YTcxZDk4MTQ0NWQ3MmMxMzYxNmJhOWYwMmJhMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWM1Y2RmNWM1OGM3NjFjMTliOGVhMzVhMTRlNzRhMzliZGFhNzQyIn0=','2018-04-10 17:25:03.145427'),('mefppvmgp2wqfwyww1bda9lqxs2w3fe6','OWU1YWYzODNjNjk2YTcxZDk4MTQ0NWQ3MmMxMzYxNmJhOWYwMmJhMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWM1Y2RmNWM1OGM3NjFjMTliOGVhMzVhMTRlNzRhMzliZGFhNzQyIn0=','2018-05-08 19:57:17.004504'),('mhkbrjhm8i20kt54uhggerfgmgm7y9zy','OWU1YWYzODNjNjk2YTcxZDk4MTQ0NWQ3MmMxMzYxNmJhOWYwMmJhMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWM1Y2RmNWM1OGM3NjFjMTliOGVhMzVhMTRlNzRhMzliZGFhNzQyIn0=','2018-06-08 17:07:14.172118'),('mqvq7s8jbo67s700v376otj7jkw5yeli','NWY0MTU2YjIwZTU2MjQ0YmRiZjBlZjQ5ZWM4ZjA4ZWUwYTA2ZThmYzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZTBlNDY0YTlmNTFlOTIzMGFkMmJmODliODc4NWNjYWEwMGUwZmJkIn0=','2018-03-25 09:56:53.191669'),('mu5rqa8085d39bu8wls14ihkdun803ji','OWU1YWYzODNjNjk2YTcxZDk4MTQ0NWQ3MmMxMzYxNmJhOWYwMmJhMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWM1Y2RmNWM1OGM3NjFjMTliOGVhMzVhMTRlNzRhMzliZGFhNzQyIn0=','2018-06-10 13:51:31.932606'),('mv14w29jgurh224asdtta9gfoofqhcoe','NWY0MTU2YjIwZTU2MjQ0YmRiZjBlZjQ5ZWM4ZjA4ZWUwYTA2ZThmYzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZTBlNDY0YTlmNTFlOTIzMGFkMmJmODliODc4NWNjYWEwMGUwZmJkIn0=','2018-04-17 09:11:29.800879'),('odo1sx5eqjib7lbvo3g096vlu5lfbxzt','NWY0MTU2YjIwZTU2MjQ0YmRiZjBlZjQ5ZWM4ZjA4ZWUwYTA2ZThmYzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZTBlNDY0YTlmNTFlOTIzMGFkMmJmODliODc4NWNjYWEwMGUwZmJkIn0=','2018-05-01 19:23:33.934310'),('okmaaauxotvyv6iyvod5zpb5n4ugj3et','NWY0MTU2YjIwZTU2MjQ0YmRiZjBlZjQ5ZWM4ZjA4ZWUwYTA2ZThmYzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZTBlNDY0YTlmNTFlOTIzMGFkMmJmODliODc4NWNjYWEwMGUwZmJkIn0=','2018-04-23 17:06:35.566973'),('pbod6ag01hereucgly7qcgsroflnv7x2','NWY0MTU2YjIwZTU2MjQ0YmRiZjBlZjQ5ZWM4ZjA4ZWUwYTA2ZThmYzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZTBlNDY0YTlmNTFlOTIzMGFkMmJmODliODc4NWNjYWEwMGUwZmJkIn0=','2018-05-04 05:03:19.520531'),('qwdimeku8kktmdjm4o51o99xj53333q8','NWY0MTU2YjIwZTU2MjQ0YmRiZjBlZjQ5ZWM4ZjA4ZWUwYTA2ZThmYzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZTBlNDY0YTlmNTFlOTIzMGFkMmJmODliODc4NWNjYWEwMGUwZmJkIn0=','2018-04-08 15:16:44.094596'),('r0quovslg7iyuh2ygnfxjtzvrgc8q2pe','OWU1YWYzODNjNjk2YTcxZDk4MTQ0NWQ3MmMxMzYxNmJhOWYwMmJhMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWM1Y2RmNWM1OGM3NjFjMTliOGVhMzVhMTRlNzRhMzliZGFhNzQyIn0=','2018-05-10 06:58:57.647926'),('ssj8efq84kdtbqyd1tj8p2e1z26bsa9b','NWY0MTU2YjIwZTU2MjQ0YmRiZjBlZjQ5ZWM4ZjA4ZWUwYTA2ZThmYzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZTBlNDY0YTlmNTFlOTIzMGFkMmJmODliODc4NWNjYWEwMGUwZmJkIn0=','2018-03-25 07:35:58.838343'),('t1mc20h8xvl9id3c5nnwmilnbg5pymvr','NWY0MTU2YjIwZTU2MjQ0YmRiZjBlZjQ5ZWM4ZjA4ZWUwYTA2ZThmYzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZTBlNDY0YTlmNTFlOTIzMGFkMmJmODliODc4NWNjYWEwMGUwZmJkIn0=','2018-04-15 13:59:15.398754'),('tav9wt2s29ozyeglptnex9dwh4j34gk3','OWU1YWYzODNjNjk2YTcxZDk4MTQ0NWQ3MmMxMzYxNmJhOWYwMmJhMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWM1Y2RmNWM1OGM3NjFjMTliOGVhMzVhMTRlNzRhMzliZGFhNzQyIn0=','2018-05-03 15:57:40.703306'),('vg8ek7kz7kgpcw4bzfmc1l7m8l3xvo5k','OWU1YWYzODNjNjk2YTcxZDk4MTQ0NWQ3MmMxMzYxNmJhOWYwMmJhMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWM1Y2RmNWM1OGM3NjFjMTliOGVhMzVhMTRlNzRhMzliZGFhNzQyIn0=','2018-05-09 10:03:39.675231'),('vqssrtg5fwxl6odr2aedwrgx1vkfa45q','OWU1YWYzODNjNjk2YTcxZDk4MTQ0NWQ3MmMxMzYxNmJhOWYwMmJhMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWM1Y2RmNWM1OGM3NjFjMTliOGVhMzVhMTRlNzRhMzliZGFhNzQyIn0=','2018-05-03 12:47:09.704473'),('vsjcrkczwn6mp3x3n8l8tpjau3r209ij','NWY0MTU2YjIwZTU2MjQ0YmRiZjBlZjQ5ZWM4ZjA4ZWUwYTA2ZThmYzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZTBlNDY0YTlmNTFlOTIzMGFkMmJmODliODc4NWNjYWEwMGUwZmJkIn0=','2018-03-24 22:37:00.651591'),('vz8lr0c7p0ouf328bmqnbtfc5yaloz35','NWY0MTU2YjIwZTU2MjQ0YmRiZjBlZjQ5ZWM4ZjA4ZWUwYTA2ZThmYzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZTBlNDY0YTlmNTFlOTIzMGFkMmJmODliODc4NWNjYWEwMGUwZmJkIn0=','2018-03-24 19:39:33.647598'),('w5r5w2id7iudnyens109x0gx3o0vwemb','NWY0MTU2YjIwZTU2MjQ0YmRiZjBlZjQ5ZWM4ZjA4ZWUwYTA2ZThmYzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZTBlNDY0YTlmNTFlOTIzMGFkMmJmODliODc4NWNjYWEwMGUwZmJkIn0=','2018-04-21 20:38:19.537246'),('x35a85wit2blgdd2vyne74e1sxhhzb31','NWY0MTU2YjIwZTU2MjQ0YmRiZjBlZjQ5ZWM4ZjA4ZWUwYTA2ZThmYzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZTBlNDY0YTlmNTFlOTIzMGFkMmJmODliODc4NWNjYWEwMGUwZmJkIn0=','2018-03-24 19:44:07.653469'),('y26psxk2jxbyzt58149r1t9vf2u3xfxe','NWY0MTU2YjIwZTU2MjQ0YmRiZjBlZjQ5ZWM4ZjA4ZWUwYTA2ZThmYzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZTBlNDY0YTlmNTFlOTIzMGFkMmJmODliODc4NWNjYWEwMGUwZmJkIn0=','2018-03-25 07:07:40.622659'),('y2ylp3s3ft0rh8v14obhb4b5i8gmghi9','NWY0MTU2YjIwZTU2MjQ0YmRiZjBlZjQ5ZWM4ZjA4ZWUwYTA2ZThmYzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZTBlNDY0YTlmNTFlOTIzMGFkMmJmODliODc4NWNjYWEwMGUwZmJkIn0=','2018-03-23 18:25:06.411263');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_artist`
--

DROP TABLE IF EXISTS `home_artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_artist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(254) NOT NULL,
  `bio` longtext NOT NULL,
  `picture` varchar(100) NOT NULL,
  `photo_credit` varchar(100) NOT NULL,
  `instrument` varchar(50) NOT NULL,
  `rang` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_artist`
--

LOCK TABLES `home_artist` WRITE;
/*!40000 ALTER TABLE `home_artist` DISABLE KEYS */;
INSERT INTO `home_artist` VALUES (1,'Traudl','Schmaderer','traudl@test.de','Traudl Schmaderer ist als Konzert-, Oratoriums- und Liedsängerin bekannt und trat in den letzten Jahren mit anspruchsvollen und zugleich meisterhaft interpretierten Konzertprojekten hervor, so unter 	anderem beim Musikfest Kassel mit dem Zyklus La Bonne Chanson von Gabriel Fauré und dem Buch der hängenden Gärten von Arnold Schönberg und bei den Kasseler Musiktagen mit Ich, Hiob von Thomas Daniel Schlee.\r\nIhre Gesangsausbildung erhielt sie in München bei Adalbert Kraus und Nurit Herzog-Gorén und im Rahmen von Meisterkursen bei Edith Mathis. Sie wirkte bei Uraufführungen zeitgenössischer Musik, bei zahlreichen Rundfunk- und CD-Einspielungen mit und tritt regelmäßig in vielen Orten Deutschlands auf. Neben ihrem umfangreichen Konzertrepertoire widmet sie sich zurzeit verstärkt der Kammermusik, gibt Liederabende und konzertiert mit verschiedenen Kammermusikensembles. Seit Langem ist sie als Gesangspädagogin tätig, zunächst an der Staatlichen Hochschule für Musik Frankfurt/Main und seit einigen Jahren auch in Kassel.','img/artists/traudl_schmaderer_4x3.jpg','privat','Sopran',1),(2,'Maren','Engelhardt','maren@test.de','Maren Engelhardt studierte in ihrer Heimatstadt Salzburg am Mozarteum sowie an der Wiener Musikuniversität bei KS Robert Holl, Lied und Oratorium. Bereits während ihres Studiums sang Sie mehrere Opernpartien an der Volksoper Wien. Seit 2009 gehört Maren Engelhardt dem Ensemble des Staatstheaters Kassel an.\r\nSie sang hier die unterschiedlichsten Rollen u.a. den Medoro in Händels „Orlando“, Siebel in Gounods „Faust“, Hänsel in Humperdincks „Hänsel und Gretel“, Annius in Mozarts „La clemenza di Tito“ und Dorabella in \"Cosi Fan tutte\", Valencienne in Lehárs „Die lustige Witwe“, die Hermia in Brittens „Midsummer Night´s Dream“, oder den Octavian in Strauss’ \"Der Rosenkavalier\".   \r\nEin großer Schwerpunkt ihrer musikalischen Tätigkeit liegt im Konzertbereich. Liederabende führten Sie ins Wiener Konzerthaus und den Musikverein. Mit besonderer Hingabe widmet sich Maren Engelhardt dem Liedgesang. Im Rahmen eines Maurice Ravel gewidmeten Kammermusikabends gab sie ihr hochgeschätztes Liederabend Debüt im Wiener Musikverein. Sie wurde eingeladen beim Eröffnungskonzert der Internationalen Schuberttage in Wien zu singen, gab gemeinsam mit KS Robert Holl und Ellen van Lier einen Mozart Liederabend in Krems, und war zu Gast bei den Schumanntagen sowie Schuberttagen in Dürnstein.\r\nMaren Engelhardt ist Mitglied der Wiener Vokal-Instrumental Solisten, ein Ensemble bestehend aus Musikern der Wiener Philharmoniker.','img/artists/maren_engelhardt_4x3.jpg','privat','Mezzosopran',2),(3,'Daniel','Holzhauser','daniel@test.de','Der Bariton Daniel Holzhauser studierte von 2010 - 2017 Gesang am Leopold-Mozart-Zentrum bei Prof. Dominik Wortig. Sein Studium begann er bei Marie Tremblay-Schmalhofer. Wichtige Impulse erhielt er durch Hartmut Elbert im Rahmen der bayerischen Singakademie, der er fünf Jahre lang angehörte. Zusätzlich studierte er Kunstliedbegleitung bei Rudi Spring. Seine Gesangstechnik wurde in Meisterkursen von Michael Nagy, Prof. KS Reinhard Leisenheimer, Prof. KS Roland Schubert, Prof. Alexander Schmalcz, Prof. Eric Schneider und Prof. Frieder Bernius abgerundet. Im Rahmen des Studiums sammelte er bereits erste Bühnenerfahrungen am Theater Augsburg in Mike Svobodas Erwin das Naturtalent und Meeting Dido. \r\nDer mehrfache erste Preisträger bei »Jugend musiziert« ist Kulturförderpreisträger der Stadt und des Landkreises Landsberg/Lech. \r\nIn der Spielzeit 2013/14 war er als Graf von Ceprano in Giuseppe Verdis Rigoletto am Theater Augsburg zu hören. Im Mai 2014 hatte er sein Debut bei der Münchner Biennale und dem Staatstheater Braunschweig mit der Uraufführung des Werkes Vivier. Ein Nachtprotokoll von Marko Nikodjevic. Im Januar 2015 führte er zusammen mit Rudi Spring die Winterreise von Franz Schubert auf. Mit der Spielzeit 2016/17 ist der junge Bariton Mitglied des Kasseler Opernensembles und wird dort in der nächsten Spielzeit unter anderem als Schaunard und Papageno zu hören sein.','img/artists/daniel_holzhauser_4x3.jpg','privat','Bariton',3),(4,'Alberto','Bertino','alberto@test.de','Alberto Bertino erwarb 1991, parallel zum Kompositionsstudium, das Diplom mit Auszeichnung im Fach Klavier am Conservatorio Statale di Musica \"Antonio Vivaldi\" in Alessandria (Italien). Dabei gewann er den Preis \"Ghislieri\" als bestes Diplom des Jahrgangs sowie den Preis \"Accademia Filarmonica\".\r\nEr setzte sein Studium an der \"Accademia Pianistica di Imola\", bei Boris Petrushansky und Alexander Lonquich, fort und belegte bedeutende Meisterklassen unter anderem bei Stanislav Bunin, Rosalyn Tureck, Dmitri Bashkirov, Tatjana Nikolajeva, Andràs Schiff und Mihail Voskressensky. Er studierte Orchesterdirigieren am Mozarteum Salzburg bei Michael Gielen und Klavier bei Peter Lang. Diese Studien setzte er in Turin und Kattowitz mit Andrzej Jasinski und Eugeniusz Knapik fort. 1995 gewann er den 1. Preis beim Klavierwettbewerb \"Città di Cesenatico\" und 1999 den 2. Platz beim \"Concorso Internazionale di Musica da Camera di Finale Ligure\". Darüber hinaus hat er in größeren Theatern in Italien dirigiert (Turin, Bergamo, Alba, Ravenna, Lodi, Chieti usw.).\r\nEr gibt Meisterkurse für Klavier und Kammermusik in Italien und in Polen, und arbeitet mit Sängern am Staatstheater Kassel. Seine Kompositionen \"Alma Redemptoris Mater”, \"Gloria Tibi Trinitas” und \"How make the day dawn?” wurden mit dem MDR-Rundfunkchor unter der Leitung von H. Arman in der Peterskirche in Leipzig uraufgeführt.\r\nAlberto Bertino unterrichtet Klavier und Korrepetition an der Musikakademie \"Louis Spohr\" der Stadt Kassel und ist Leiter des Chores und des Orchesters der Musikakademie.\r\nAls Pianist hat er verschiedene Aufnahme für den italienischen und polnischen Rundfunk sowie eine Aufnahme für das Label Naxos gemacht.','img/artists/alberto_bertino_4x3.jpg','N. Klinger','Klavier',5),(5,'Michael','Kravtchin','michael@test.de','Michael Kravtchin wurde in Moskau geboren. Frankfurt, Hannover, Detmold und Freiburg sind die Stationen seiner Musikausbildung. Insbesondere seine Begegnung mit dem großen Pianisten Anatol Ugorski hat ihn musikalisch und künstlerisch geprägt.\r\nMichael Kravtchin ist Preisträger beim internationalen Klavierwettbewerb \"Cita di Cantù\" in Italien. Er erhielt auch 	den Kritikerpreis. Seine Beschäftigung mit der Musik von Franz Graf von Pocci führte 2007 zur Veröffentlichung einer CD mit 	Ersteinspielungen mehrerer Werke Poccis. Außerdem nahm er das erste Buch der Préludes von Debussy und Schumanns 	Carnaval auf. Er trat mehrmals beim Musikfest in Kassel auf. Eine CD mit französischer Klaviermusik erschien als Konzertmitschnitt aus der Documenta-Halle Kassel.\r\nAls Kammermusiker von namhaften Solisten widmet er sich der ganzen Bandbreite des kammermusikalischen Repertoires. Er ist Kulturpreisträger der Stadt Kassel. Seine Solo- und Kammermusiktätigkeit führt ihn auch regelmäßig ins europäische Ausland, unter anderem in die Schweiz, nach Spanien und Frankreich. Michael Kravtchin leitet eine Klavierklasse an der Musikakademie „Louis Spohr“ der Stadt Kassel.','img/artists/michael_kravtchin_4x3.jpg','privat','Klavier',4);
/*!40000 ALTER TABLE `home_artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_concert`
--

DROP TABLE IF EXISTS `home_concert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_concert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `performance_date` datetime(6) NOT NULL,
  `location` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `subtitle` varchar(50) NOT NULL,
  `text` longtext NOT NULL,
  `ticket_prices` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_concert`
--

LOCK TABLES `home_concert` WRITE;
/*!40000 ALTER TABLE `home_concert` DISABLE KEYS */;
INSERT INTO `home_concert` VALUES (1,'2018-06-12 18:00:00.000000','Haus der Kirche, Kassel','Schwanengesang','Franz Schubert: Schwanengesang D 957','Lieder der Moderne von Alexander Zemlinsky und dem Kasseler Komponisten Jens Josef treten in einen spannenden Dialog mit Franz Schuberts letztem Liederzyklus. Es singt und spielt das piano.voce.ensemble.','20 € / 10 € (erm.)'),(2,'2018-06-14 18:00:00.000000','Musikakademie der Stadt Kassel »Louis Spohr«','Winterreise','Franz Schubert: Winterreise op. 89, D 911','Daniel Holzhauser, der junge vielversprechende Bariton am Kasseler Staatstheater, interpretiert zusammen mit Michael Kravtchin Schuberts »Winterreise«. Dazu ein weiteres großes Werk aus Schuberts späterem Schaffen, die »Trockenen Blumen« aus »Die schöne Müllerin« D 802 für Flöte und Klavier mit dem Kasseler Flötisten und Komponisten Jens Josef.','20 € / 10 € (erm.)'),(3,'2018-06-16 18:00:00.000000','Ev. Kirche Kassel-Rothenditmold','Quartett im Konzert','Johannes Brahms: Zigeunerlieder op. 103 & op. 112','Im abschließenden Ensemblekonzert steht das musikalische Schwergewicht Johannes Brahms mit seinen mitreißenden »Zigeunerliedern« für vier Sänger und zwei Pianisten im Zentrum. Quartette von Haydn (»Vierstimmige Gesänge«), Schubert (»Gebet«) und - als Entdeckung - den »Chansons à quatre voix« op. 39 von Florent Schmitt korrespondieren mit Brahms\' schwungvollen Melodien. Es singt und spielt das piano.voce.ensemble.','20 € / 10 € (erm.)');
/*!40000 ALTER TABLE `home_concert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_footer`
--

DROP TABLE IF EXISTS `home_footer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_footer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `impressum` longtext NOT NULL,
  `contact` varchar(254) NOT NULL,
  `disclaimer` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_footer`
--

LOCK TABLES `home_footer` WRITE;
/*!40000 ALTER TABLE `home_footer` DISABLE KEYS */;
INSERT INTO `home_footer` VALUES (1,'<p><strong>Liedfestival Kassel</strong><br />\r\nVeranstalter: piano.voce.ensemble<br/>\r\nin Kooperation mit dem Konzertverein Kassel</p>\r\n\r\n<p><strong>Verantwortlich für den Inhalt dieser Website:</strong></p>\r\n<p>Michael Kravtchin<br/>\r\nKirchweg 56<br />\r\n34119 Kassel</p>','kontakt@liedfestival-kassel.de','<h4>Disclaimer</h4>\r\n<p>Alle Angaben auf dieser Website wurden sorgfältig geprüft und werden regelmäßig auf den neusten Stand gebracht. Es kann jedoch keine volle Garantie dafür übernommen werden, dass alle Angaben zu jeder Zeit vollständig, richtig und in letzter Aktualität dargestellt sind.</p>\r\n<p>Für alle unsere Links auf dieser Website gilt: Wir haben alle Links sorgfältig inhaltlich geprüft und zu diesem Zeitpunkt für in Ordnung befunden. Da wir aber keinerlei Einfluss auf die Gestaltung oder inhaltliche Änderungen unserer gelinkten Seiten haben, distanzieren wir uns hiermit ausdrücklich von gelinkten Seiten, die gegen das Gesetz oder gegen gute Sitten verstoßen. Für den Inhalt der verlinkten Seiten ist ausschließlich ihr Betreiber verantwortlich.</p>\r\n<p>&nbsp;</p>\r\n<h4>Datenschutzerklärung</h4>\r\n<p>Da wir personenbezogene Daten über unser Kontaktformular von Ihnen erhalten, geben wir hier eine Datenschutzerklärung auf unserer Webseite ab.</p>\r\n<p>Alle durch die Nutzung von dieser Website eventuell angefallenen personenbezogenen Daten werden ausschließlich für das Liedfestival genutzt. Eine Weitergabe an Dritte findet nicht statt. Sie können jederzeit Ihre personenbezogenen Daten ändern oder löschen lassen. Schreiben Sie dazu einfach eine E-Mail.</p>');
/*!40000 ALTER TABLE `home_footer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_gast`
--

DROP TABLE IF EXISTS `home_gast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_gast` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `bio` longtext NOT NULL,
  `picture` varchar(100) NOT NULL,
  `photo_credit` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_gast`
--

LOCK TABLES `home_gast` WRITE;
/*!40000 ALTER TABLE `home_gast` DISABLE KEYS */;
INSERT INTO `home_gast` VALUES (1,'Younggi Do','<p>Der junge Tenor Younggi Moses Do stammt aus Korea und studierte Gesang an der Pusan National Universität und an der Musikhochschule Lübeck. Er gewann 2012 jeweils einen zweiten und\r\neinen dritten Preis bei Liedwettbewerben in Yeonji und Busan (Korea). Zu seinen gesungen Partien gehören Baron Kronthal (»Der Wildschütz«) und Goro (»Madama Butterfly«). Seine studierten Opern-Partien umfassen Ferrando (»Così fan tutte«), Tamino (»Die Zauberflöte«) und Nemorino (»L’elisir d’amore«).</p>\r\n<p>Darüber hinaus verfügt Younggi Do über ein großes Arien-Repertoire von Mozart bis Verdi und er pflegt mit regelmäßigen Auftritten seine Liebe für den Konzertbereich: Er war unter Ton Koopman in Bach-Kantaten zu hören und im April 2016 sang er zuletzt die Tenor-Partie in Mozarts »Requiem« in der Hamburger Laeiszhalle.</p>\r\n<p>Seit der Spielzeit 2017/18 ist Younggi Do Mitglied im Ensemble des Staatstheaters Kassel.</p>','img/artists/younggi_do_4x3.jpg','privat'),(2,'Jens Josef','<p>Jens Josef studierte Flöte an der Musikhochschule Frankfurt am Main bei Petr Brock und Paul Dahme; wichtige Anregungen erhielt er darüber hinaus von Andras Adorjan.</p>\r\n<p>Sein Repertoire reicht vom Barock bis zur Musik unserer Zeit, wobei die Musik seit der klassischen Moderne einen Schwerpunkt bildet. Entsprechend hat er eine ganze Reihe von Werken uraufgeführt und sich darüber hinaus mit anderen Stilen beschäftigt wie Jazz- und Popmusik oder freier Improvisation.</p>\r\n<p>Regelmäßig konzertiert Jens Josef als Solist und Kammermusiker im In- und Ausland. Er hat bei zahlreichen CD- und Rundfunkaufnahmen mitgewirkt.</p>\r\n<p>Von 2000 bis 2006 war er Dozent an der Akademie für Tonkunst in Darmstadt, von 2003 bis 2006 Dozent an der Musikhochschule Frankfurt am Main. Seit November 2006 ist er Leiter der Flötenklasse an der Musikakademie Kassel. Seine pädagogische Tätigkeit stellt für ihn eine wichtige Ergänzung zu seiner Arbeit als Interpret dar.</p>\r\n<p>Jens Josef sieht sich gleichermaßen als Komponist; hier ist er weitgehend Autodidakt, entscheidende Anstöße gaben jedoch Gerhard Müller-Hornbach und Rainer Kunad. Unter Josefs Werken finden sich zwei Opern, Orchesterwerke, Lieder und andere Vokalwerke sowie zahlreiche Kammermusik für die unterschiedlichsten Besetzungen. Er ist Gründungsmitglied der FGNM – Frankfurter Gesellschaft für Neue Musik.</p>','img/artists/jens_josef_4x3.jpg','privat');
/*!40000 ALTER TABLE `home_gast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_mailtemplate`
--

DROP TABLE IF EXISTS `home_mailtemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_mailtemplate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `text` longtext NOT NULL,
  `subject` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_mailtemplate`
--

LOCK TABLES `home_mailtemplate` WRITE;
/*!40000 ALTER TABLE `home_mailtemplate` DISABLE KEYS */;
INSERT INTO `home_mailtemplate` VALUES (1,'karten_bestaetigung','Sehr geehrte{% if r.get_anrede_display == \'Herr\' %}r{% endif %} {{ r.get_anrede_display }} {% if r.titel %}{{r.titel}} {% endif%}{{ r.last_name }},\r\n\r\nvielen Dank für Ihre Kartenvorbestellung für das Liedfestival Kassel!\r\n\r\nFolgende Kartenwünsche haben Sie aufgegeben:\r\n{% if r.tickets_schwanengesang %}- »Schwanengesang«: {{ r.tickets_schwanengesang }} Karten à 20,00 €{% endif %}\r\n{% if r.tickets_schwanengesang_erm %}- »Schwanengesang«: {{ r.tickets_schwanengesang_erm }} Karten à 10,00 € (ermäßigter Preis) {% endif %}\r\n{% if r.tickets_winterreise %}- »Winterreise«: {{ r.tickets_winterreise }} Karten à 20,00 € {% endif %}\r\n{% if r.tickets_winterreise_erm %}- »Winterreise«: {{ r.tickets_winterreise_erm }} Karten à 10,00 € (ermäßigter Preis){% endif %}\r\n{% if r.tickets_quartettimkonzert %}- »Quartett im Konzert«: {{ r.tickets_quartettimkonzert }} Karten à 20,00 €{% endif %}\r\n{% if r.tickets_quartettimkonzert_erm %}- »Quartett im Konzert«: {{ r.tickets_quartettimkonzert_erm }} Karten à 10,00 € (ermäßigter Preis){% endif %}\r\n{% if r.nachricht %}Ihre Nachricht:\r\n{{ r.nachricht }}{% endif %}\r\n\r\nFolgenden Kontaktdaten haben Sie eingegeben:\r\nName: {{ r.first_name }} {{ r.last_name }}\r\nAnschrift: {{ r.strasse }} {{ r.hausnummer }}, {{ r.plz }} {{ r.ort }}\r\nTelefon: {{ r.tel }}\r\nE-Mail: {{ r.email }}\r\n{% if r.nachricht %}Ihre Nachricht an uns: {{ r.nachricht }}{% endif %}\r\n\r\nWir möchten Sie darauf hinweisen, dass diese Kartenbestellung verbindlich ist.\r\nIhre Karten werden an der Abendkasse auf Ihren Namen bereitgehalten und können dort auch bezahlt werden.\r\n\r\nSchon jetzt wünschen wir Ihnen viel Freude mit den Veranstaltungen des Liedfestivals Kassel.\r\n\r\nMit freundlichen Grüßen\r\nLiedfestival Kassel\r\n\r\n-- \r\n\r\nLiedfestival Kassel\r\n9.-16. Juni 2018\r\nVeranstalter: piano.voce.ensemble\r\nin Kooperation mit dem Konzertverein Kassel\r\n\r\nDies ist eine automatisch generierte Nachricht.\r\nSollten Sie nicht der Urheber dieser Bestellung sein, setzen Sie sich bitte umgehend per E-Mail unter m.kravtchin@liedfestival-kassel.de mit dem Team des Liedfestivals Kassel in Verbindung.','Liedfestival Kassel 2018 - Ihre Kartenvorbestellung'),(2,'workshop_bestaetigung','Sehr geehrte{% if r.get_anrede_display == \'Herr\' %}r{% endif %} {{ r.get_anrede_display }} {% if r.titel %}{{r.titel}} {% endif%}{{ r.last_name }},\r\n\r\nDas piano.voce.ensemble freut sich über Ihre Anmeldung zum Workshop!\r\n\r\nSie haben sich mit folgenden Daten angemeldet:\r\nVorname: {{ r.first_name }}\r\nName: {{ r.last_name }}\r\nStraße / Hausnr.: {{ r.strasse }} {{ r.hausnummer }}\r\nPLZ / Ort: {{ r.plz }} {{ r.ort }}\r\nTelefon: {{ r.tel }}\r\nE-Mail: {{ r.email }}\r\nAlter: {{ r.alter }} Jahre\r\nStimmfach: {{ r.get_stimmfach_display }}\r\n\r\nBitte überweisen die Kursgebühr in Höhe von {% if r.ermaessigt %}40{% else %}50{% endif %},00 € bis zum 2. Juni 2018 auf folgendes Konto:\r\n\r\nIBAN: DE02 5205 0353 1004 6537 37\r\nKontoinhaberin: Gertraud Schmaderer\r\nVerwendungszweck: Kursgebühr Workshop Liedfestival Kassel\r\n\r\nWir werden uns in Kürze mit Ihnen persönlich in Verbindung setzen.\r\n\r\nMit freundlichen Grüßen\r\nLiedfestival Kassel\r\n\r\n-- \r\n\r\nLiedfestival Kassel\r\n9.-16. Juni 2018\r\nVeranstalter: piano.voce.ensemble\r\nin Kooperation mit dem Konzertverein Kassel\r\n\r\nDies ist eine automatisch generierte Nachricht.\r\nSollten Sie nicht der Urheber dieser Anmeldung sein, setzen Sie sich bitte umgehend per E-Mail unter m.kravtchin@liedfestival-kassel.de mit dem Team des Liedfestivals Kassel in Verbindung.','Liedfestival Kassel: Anmeldung zum Workshop');
/*!40000 ALTER TABLE `home_mailtemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_sponsor`
--

DROP TABLE IF EXISTS `home_sponsor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_sponsor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `rang` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_sponsor`
--

LOCK TABLES `home_sponsor` WRITE;
/*!40000 ALTER TABLE `home_sponsor` DISABLE KEYS */;
INSERT INTO `home_sponsor` VALUES (1,'Kassel - documenta-Stadt',1),(2,'Land Hessen',20),(4,'Gerhard-Fieseler-Stiftung',30),(5,'Herrn Oliver Goldenbow und Frau Cordula Ströher-Goldenbow',40),(6,'sowie weitere Förderer und Sponsoren',50),(12,'Pianohaus Doppelstein',41);
/*!40000 ALTER TABLE `home_sponsor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_ticketreservation`
--

DROP TABLE IF EXISTS `home_ticketreservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_ticketreservation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(254) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `tickets_schwanengesang` int(10) unsigned NOT NULL,
  `tickets_winterreise` int(10) unsigned NOT NULL,
  `tickets_quartettimkonzert` int(10) unsigned NOT NULL,
  `request_date` datetime(6) DEFAULT NULL,
  `anrede` int(11) NOT NULL,
  `hausnummer` varchar(4) NOT NULL,
  `ort` varchar(50) NOT NULL,
  `plz` varchar(5) NOT NULL,
  `strasse` varchar(50) NOT NULL,
  `titel` varchar(15) NOT NULL,
  `tickets_quartettimkonzert_erm` int(10) unsigned NOT NULL,
  `tickets_schwanengesang_erm` int(10) unsigned NOT NULL,
  `tickets_winterreise_erm` int(10) unsigned NOT NULL,
  `tickets_summe` double,
  `nachricht` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_ticketreservation`
--

LOCK TABLES `home_ticketreservation` WRITE;
/*!40000 ALTER TABLE `home_ticketreservation` DISABLE KEYS */;
INSERT INTO `home_ticketreservation` VALUES (1,'Diana','Friz','diana@friz.com','05691-4177',0,0,1,'2018-05-17 15:04:01.076976',2,'17','Bad Arolsen','34454','Georg-Friedrich-Str.','',0,0,0,0,''),(2,'Felix','Werthschulte','felix@werthschulte.info','0561-706758',2,2,2,'2018-05-25 17:19:16.522896',1,'75','Baunatal','34225','Theodor-Heuss-Allee','',2,2,2,0,'Eine Testnachricht.'),(3,'Regina','Kleinoth','kleinoth@live.de','05618704777',0,2,0,'2018-05-26 09:48:21.884283',2,'13','Kassel','34125','Grenzweg','',0,0,0,0,''),(4,'Felix','Werthschulte','felix@werthschulte.info','0561-7057678',2,2,2,'2018-05-27 13:46:11.502623',1,'75','Baunatal','34225','Theodor-Heuss-Allee','',2,2,2,0,'Eine Testnachricht.'),(5,'Michael','Kravtchin','michael.kravtchin@gmail.com','+4917624008248',2,2,2,'2018-05-28 07:06:56.756626',1,'56','Kassel','34119','Kirchweg, 56','',0,0,0,0,''),(6,'Hildegund','Röll','hi.roell@t-online.de','05665-7697',3,0,1,'2018-05-28 10:35:43.966663',2,'20','Baunatal','34225','Buchenhagener Str.','',0,0,0,0,'-  Ich würde gerne Ihrer  schönen  Konzertreihe\r\neintausend Euro spenden.\r\nBekomme ich von Ihnen eine Spendenquittung oder kann ich über den Konzertverein, dessen Mitglied ich bin, zweckgebunden an Ihr Ensemble diesen Betrag spenden?\r\n-  Ist es möglich , passiv als Zuhörerin  an den Workshops teilzunehmen?'),(7,'Hans-Martin','Rau','h-m.rau@t-online.de','05546/1219',3,2,2,'2018-06-04 09:13:04.819261',1,'31','Hann. Münden','34346','Mühlenberg','',0,0,0,0,''),(8,'antje','Haack','antjehaack@web.de','0561 522473',0,0,1,'2018-06-10 15:33:54.434760',2,'17','Niestetal','34266','Am Dachsacker','',0,0,0,0,''),(9,'Jürgen','Pasche','juergen@pasche.name','0561-876500',0,0,2,'2018-06-11 14:42:56.203000',1,'30','Kassel','34125','Wolfsäckerweg','',0,0,0,0,''),(10,'Dorothea','Kröll','dorokroell@web.de','0561-777824',1,0,0,'2018-06-12 08:26:29.507539',2,'57','Kassel','34119','Parkstrasse','',0,0,0,0,'Konzert am 12.6. im Haus derKirche: Ich hole die Karte an der Abendkasse ab.'),(11,'Mirjam','Ebersbach','mi_ebersbach@web.de','01702237970',0,2,0,'2018-06-14 11:54:49.382905',2,'67','Kassel','34119','Goethestr.','',0,0,0,0,'Guten Tag, ich war sicher, dass ich schon zwei Karten für das heutige Konzert auf die oben genannten Kontaktdaten bestellt habe, finde aber keine Bestätigung. Könnten Sie noch mal nachschauen und gg.falls zwei reservieren?\r\nDanke und beste Grüße,\r\nMirjam Ebersbach'),(12,'Hildegund','Röll','hi.roell@t-online.de','05665-7697',0,0,2,'2018-06-15 12:48:54.423954',2,'20','Baunatal','34225','Buchenhagener Str.','',0,0,0,0,'Fürs Konzert am 16.6.2018 noch 2 weitere Karten, also insgesamt 3 Karten insgesamt.');
/*!40000 ALTER TABLE `home_ticketreservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_workshopreservation`
--

DROP TABLE IF EXISTS `home_workshopreservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_workshopreservation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `anrede` int(11) NOT NULL,
  `titel` varchar(15) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `strasse` varchar(50) NOT NULL,
  `hausnummer` varchar(4) NOT NULL,
  `plz` varchar(5) NOT NULL,
  `ort` varchar(50) NOT NULL,
  `email` varchar(254) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `alter` int(10) unsigned NOT NULL,
  `stimmfach` int(11) NOT NULL,
  `ermaessigt` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_workshopreservation`
--

LOCK TABLES `home_workshopreservation` WRITE;
/*!40000 ALTER TABLE `home_workshopreservation` DISABLE KEYS */;
INSERT INTO `home_workshopreservation` VALUES (1,1,'','Felix','Werthschulte','Herkulesstraße','20','34119','Kassel','felix@werthschulte.info','0561-705768',27,4,1),(2,2,'Dr.','Lena','Werthschulte','Theodor-Heuss-Allee','75','34225','Baunatal','felix@werthschulte.info','05617057678',34,2,1),(3,1,'','Felix','Werthschulte','Theodor-Heuss-Allee','75','34225','Baunatal','felix@werthschulte.info','0561-7057678',29,1,1),(4,1,'','Felix','Werthschulte','Theodor-Heuss-Allee','75','34225','Baunatal','felix@werthschulte.info','05617057678',31,4,0),(5,1,'','Kai','Dumeier','Heinrich-Schütz-Allee','258c','34134','Kassel','kaidumei@googlemail.com','KS 474415',54,3,0),(6,1,'','Felix','Werthschulte','Theodor-Heuss-Allee','75','34225','Baunatal','felix@werthschulte.info','05617057678',31,4,0);
/*!40000 ALTER TABLE `home_workshopreservation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-08 15:01:45
