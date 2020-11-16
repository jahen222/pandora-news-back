-- MySQL dump 10.13  Distrib 5.7.32, for Linux (x86_64)
--
-- Host: localhost    Database: pandora_news
-- ------------------------------------------------------
-- Server version	5.7.32-0ubuntu0.18.04.1

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
-- Table structure for table `article_categories`
--

DROP TABLE IF EXISTS `article_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `language` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_categories`
--

LOCK TABLES `article_categories` WRITE;
/*!40000 ALTER TABLE `article_categories` DISABLE KEYS */;
INSERT INTO `article_categories` VALUES (1,'Economía','2020-11-15 02:29:58',1,1,'2020-11-15 06:29:55','2020-11-15 06:57:41',1),(2,'Economy','2020-11-15 02:30:14',1,1,'2020-11-15 06:30:11','2020-11-15 06:58:03',2),(3,'Política','2020-11-15 02:31:03',1,1,'2020-11-15 06:31:00','2020-11-15 06:31:03',1),(4,'Politics','2020-11-15 02:31:20',1,1,'2020-11-15 06:31:17','2020-11-15 06:31:20',2),(5,'Entretenimiento','2020-11-15 02:31:56',1,1,'2020-11-15 06:31:53','2020-11-15 06:58:37',1),(6,'Entertainment','2020-11-15 02:32:22',1,1,'2020-11-15 06:32:16','2020-11-15 06:59:02',2),(7,'Deportes','2020-11-15 02:33:07',1,1,'2020-11-15 06:33:04','2020-11-15 06:39:45',1),(8,'Sports','2020-11-15 02:33:27',1,1,'2020-11-15 06:33:24','2020-11-15 06:39:54',2),(9,'Ciencia y Tecnología','2020-11-15 02:33:56',1,1,'2020-11-15 06:33:53','2020-11-15 06:33:56',1),(10,'Science and Technology','2020-11-15 02:34:15',1,1,'2020-11-15 06:34:12','2020-11-15 06:34:15',2),(11,'Sucesos','2020-11-15 02:34:40',1,1,'2020-11-15 06:34:38','2020-11-15 07:00:03',1),(12,'Events','2020-11-15 02:34:57',1,1,'2020-11-15 06:34:54','2020-11-15 07:00:31',2),(13,'Opinión','2020-11-15 02:35:25',1,1,'2020-11-15 06:35:16','2020-11-15 06:35:26',1),(14,'Opinion','2020-11-15 02:35:36',1,1,'2020-11-15 06:35:33','2020-11-15 06:35:36',2),(15,'Estilo de Vida','2020-11-15 02:35:55',1,1,'2020-11-15 06:35:53','2020-11-15 06:35:55',1),(16,' Lifestyle','2020-11-15 02:36:18',1,1,'2020-11-15 06:36:15','2020-11-15 06:36:18',2),(17,'Salud','2020-11-15 02:37:01',1,1,'2020-11-15 06:36:56','2020-11-15 06:37:01',1),(18,' Health','2020-11-15 02:37:27',1,1,'2020-11-15 06:37:24','2020-11-15 06:37:27',2),(19,'Servicios','2020-11-15 02:39:06',1,1,'2020-11-15 06:39:03','2020-11-15 07:00:10',1),(20,'Services','2020-11-15 02:39:31',1,1,'2020-11-15 06:39:28','2020-11-15 07:00:45',2);
/*!40000 ALTER TABLE `article_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_subcategories`
--

DROP TABLE IF EXISTS `article_subcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_subcategories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `article_category` int(11) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_subcategories`
--

LOCK TABLES `article_subcategories` WRITE;
/*!40000 ALTER TABLE `article_subcategories` DISABLE KEYS */;
INSERT INTO `article_subcategories` VALUES (1,'Finanzas',1,'2020-11-15 03:02:37',1,1,'2020-11-15 07:02:25','2020-11-15 07:02:37'),(2,'Finance',2,'2020-11-15 03:03:21',1,1,'2020-11-15 07:02:47','2020-11-15 07:03:21'),(3,'Petróleo',1,'2020-11-15 03:03:51',1,1,'2020-11-15 07:03:48','2020-11-15 07:03:51'),(4,'Oil',2,'2020-11-15 03:04:03',1,1,'2020-11-15 07:04:01','2020-11-15 07:04:04'),(5,'Emprendimiento',1,'2020-11-15 03:05:25',1,1,'2020-11-15 07:05:22','2020-11-15 07:05:25'),(6,'Entrepreneurship',2,'2020-11-15 03:05:43',1,1,'2020-11-15 07:05:40','2020-11-15 07:05:44'),(7,'Fútbol',7,'2020-11-15 03:06:22',1,1,'2020-11-15 07:06:19','2020-11-15 07:06:23'),(8,'Football',8,'2020-11-15 03:06:40',1,1,'2020-11-15 07:06:38','2020-11-15 07:06:40'),(9,'Béisbol',7,'2020-11-15 03:08:06',1,1,'2020-11-15 07:08:03','2020-11-15 07:08:06'),(10,'Baseball',8,'2020-11-15 03:09:05',1,1,'2020-11-15 07:08:25','2020-11-15 07:09:05'),(11,'Congreso',3,'2020-11-15 03:09:23',1,1,'2020-11-15 07:09:18','2020-11-15 07:09:23'),(12,'Congress',4,'2020-11-15 03:09:51',1,1,'2020-11-15 07:09:43','2020-11-15 07:09:51'),(13,'Elecciones',3,'2020-11-15 03:10:28',1,1,'2020-11-15 07:10:19','2020-11-15 07:10:28'),(14,'Elections',4,'2020-11-15 03:10:53',1,1,'2020-11-15 07:10:49','2020-11-15 07:10:53'),(15,'Cine‎',5,'2020-11-15 03:11:29',1,1,'2020-11-15 07:11:26','2020-11-15 07:11:29'),(16,'Movies',6,'2020-11-15 03:11:54',1,1,'2020-11-15 07:11:48','2020-11-15 07:11:55'),(17,'Música‎',5,'2020-11-15 03:12:30',1,1,'2020-11-15 07:12:27','2020-11-15 07:12:30'),(18,'Music',6,'2020-11-15 03:12:54',1,1,'2020-11-15 07:12:50','2020-11-15 07:12:54'),(19,'Programación',9,'2020-11-15 03:18:37',1,1,'2020-11-15 07:18:30','2020-11-15 07:18:37'),(20,' Programming',10,'2020-11-15 03:18:55',1,1,'2020-11-15 07:18:52','2020-11-15 07:18:55'),(21,'Mascotas',15,'2020-11-15 03:19:43',1,1,'2020-11-15 07:19:39','2020-11-15 07:19:43'),(22,'Pets',16,'2020-11-15 03:20:00',1,1,'2020-11-15 07:19:56','2020-11-15 07:20:00'),(23,'Moda',15,'2020-11-15 03:22:13',1,1,'2020-11-15 07:22:10','2020-11-15 07:22:13'),(24,'Fashion',16,'2020-11-15 03:22:34',1,1,'2020-11-15 07:22:30','2020-11-15 07:22:34'),(25,'Operativos',11,'2020-11-15 03:24:47',1,1,'2020-11-15 07:24:43','2020-11-15 07:24:47'),(26,'Operative',12,'2020-11-15 03:25:09',1,1,'2020-11-15 07:25:06','2020-11-15 07:25:10'),(27,'Críticas',13,'2020-11-15 03:25:57',1,1,'2020-11-15 07:25:54','2020-11-15 07:25:57'),(28,' Critics',14,'2020-11-15 03:26:31',1,1,'2020-11-15 07:26:28','2020-11-15 07:26:31'),(29,'Covid-19',17,'2020-11-15 03:27:22',1,1,'2020-11-15 07:27:20','2020-11-15 07:27:23'),(30,'Covid-19',18,'2020-11-15 03:27:40',1,1,'2020-11-15 07:27:36','2020-11-15 07:27:40'),(31,'Fallas Eléctricas',19,'2020-11-15 03:29:07',1,1,'2020-11-15 07:29:03','2020-11-15 07:29:07'),(32,'Electrical Failures',20,'2020-11-15 03:29:38',1,1,'2020-11-15 07:29:35','2020-11-15 07:29:38');
/*!40000 ALTER TABLE `article_subcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_tags`
--

DROP TABLE IF EXISTS `article_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `language` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_tags`
--

LOCK TABLES `article_tags` WRITE;
/*!40000 ALTER TABLE `article_tags` DISABLE KEYS */;
INSERT INTO `article_tags` VALUES (1,'Venezuela','2020-11-15 04:04:43',1,1,'2020-11-15 08:04:02','2020-11-15 08:04:43',1),(2,'Venezuela','2020-11-15 04:05:00',1,1,'2020-11-15 08:04:57','2020-11-15 08:05:00',2);
/*!40000 ALTER TABLE `article_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext,
  `article_subcategory` int(11) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `author` int(11) DEFAULT NULL,
  `admin_user` int(11) DEFAULT NULL,
  `editor_pick` tinyint(1) DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles_article_tags__article_tags_articles`
--

DROP TABLE IF EXISTS `articles_article_tags__article_tags_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles_article_tags__article_tags_articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `article-tag_id` int(11) DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles_article_tags__article_tags_articles`
--

LOCK TABLES `articles_article_tags__article_tags_articles` WRITE;
/*!40000 ALTER TABLE `articles_article_tags__article_tags_articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `articles_article_tags__article_tags_articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles_authors__users_articles`
--

DROP TABLE IF EXISTS `articles_authors__users_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles_authors__users_articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles_authors__users_articles`
--

LOCK TABLES `articles_authors__users_articles` WRITE;
/*!40000 ALTER TABLE `articles_authors__users_articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `articles_authors__users_articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles_users__users_articles`
--

DROP TABLE IF EXISTS `articles_users__users_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles_users__users_articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles_users__users_articles`
--

LOCK TABLES `articles_users__users_articles` WRITE;
/*!40000 ALTER TABLE `articles_users__users_articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `articles_users__users_articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_store`
--

DROP TABLE IF EXISTS `core_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_store` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_store`
--

LOCK TABLES `core_store` WRITE;
/*!40000 ALTER TABLE `core_store` DISABLE KEYS */;
INSERT INTO `core_store` VALUES (1,'model_def_strapi::core-store','{\"uid\":\"strapi::core-store\",\"collectionName\":\"core_store\",\"info\":{\"name\":\"core_store\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"key\":{\"type\":\"string\"},\"value\":{\"type\":\"text\"},\"type\":{\"type\":\"string\"},\"environment\":{\"type\":\"string\"},\"tag\":{\"type\":\"string\"}}}','object',NULL,NULL),(2,'model_def_strapi::webhooks','{\"uid\":\"strapi::webhooks\",\"collectionName\":\"strapi_webhooks\",\"info\":{\"name\":\"Strapi webhooks\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"name\":{\"type\":\"string\"},\"url\":{\"type\":\"text\"},\"headers\":{\"type\":\"json\"},\"events\":{\"type\":\"json\"},\"enabled\":{\"type\":\"boolean\"}}}','object',NULL,NULL),(3,'model_def_strapi::permission','{\"uid\":\"strapi::permission\",\"collectionName\":\"strapi_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Permission\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"fields\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"model\":\"role\",\"plugin\":\"admin\"}}}','object',NULL,NULL),(4,'model_def_strapi::role','{\"uid\":\"strapi::role\",\"collectionName\":\"strapi_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Role\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"collection\":\"user\",\"via\":\"roles\",\"plugin\":\"admin\",\"attribute\":\"user\",\"column\":\"id\",\"isVirtual\":true},\"permissions\":{\"configurable\":false,\"plugin\":\"admin\",\"collection\":\"permission\",\"via\":\"role\",\"isVirtual\":true}}}','object',NULL,NULL),(5,'model_def_strapi::user','{\"uid\":\"strapi::user\",\"collectionName\":\"strapi_administrator\",\"kind\":\"collectionType\",\"info\":{\"name\":\"User\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"collection\":\"role\",\"collectionName\":\"strapi_users_roles\",\"via\":\"users\",\"dominant\":true,\"plugin\":\"admin\",\"configurable\":false,\"private\":true,\"attribute\":\"role\",\"column\":\"id\",\"isVirtual\":true},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true}}}','object',NULL,NULL),(6,'model_def_plugins::users-permissions.permission','{\"uid\":\"plugins::users-permissions.permission\",\"collectionName\":\"users-permissions_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"permission\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(7,'model_def_plugins::users-permissions.role','{\"uid\":\"plugins::users-permissions.role\",\"collectionName\":\"users-permissions_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"role\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"configurable\":false,\"plugin\":\"users-permissions\",\"isVirtual\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(8,'model_def_plugins::users-permissions.user','{\"uid\":\"plugins::users-permissions.user\",\"collectionName\":\"users-permissions_user\",\"kind\":\"collectionType\",\"info\":{\"name\":\"user\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(9,'model_def_plugins::upload.file','{\"uid\":\"plugins::upload.file\",\"collectionName\":\"upload_file\",\"kind\":\"collectionType\",\"info\":{\"name\":\"file\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"collection\":\"*\",\"filter\":\"field\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(10,'plugin_users-permissions_grant','{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/instagram/callback\"},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]}}','object','',''),(11,'plugin_upload_settings','{\"sizeOptimization\":true,\"responsiveDimensions\":true}','object','development',''),(12,'plugin_content_manager_configuration_content_types::strapi::permission','{\"uid\":\"strapi::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"Subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subject\",\"searchable\":true,\"sortable\":true}},\"fields\":{\"edit\":{\"label\":\"Fields\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Fields\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"Conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"created_at\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"fields\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}]]}}','object','',''),(13,'plugin_content_manager_configuration_content_types::strapi::role','{\"uid\":\"strapi::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"editRelations\":[\"users\",\"permissions\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6}]]}}','object','',''),(14,'plugin_content_manager_configuration_content_types::strapi::user','{\"uid\":\"strapi::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"Firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"Lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"RegistrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"RegistrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"IsActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"IsActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"Roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"editRelations\":[\"roles\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]]}}','object','',''),(15,'plugin_content_manager_configuration_content_types::plugins::users-permissions.permission','{\"uid\":\"plugins::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"type\",\"defaultSortBy\":\"type\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"controller\":{\"edit\":{\"label\":\"Controller\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Controller\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"enabled\":{\"edit\":{\"label\":\"Enabled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Enabled\",\"searchable\":true,\"sortable\":true}},\"policy\":{\"edit\":{\"label\":\"Policy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Policy\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"type\",\"controller\",\"action\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"controller\",\"size\":6}],[{\"name\":\"action\",\"size\":6},{\"name\":\"enabled\",\"size\":4}],[{\"name\":\"policy\",\"size\":6}]]}}','object','',''),(16,'plugin_content_manager_configuration_content_types::plugins::users-permissions.role','{\"uid\":\"plugins::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"type\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[\"permissions\",\"users\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]}}','object','',''),(17,'plugin_content_manager_configuration_content_types::plugins::upload.file','{\"uid\":\"plugins::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"AlternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AlternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"Caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"Width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"Height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"Formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"Hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"Ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"Mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"Size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"Url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"PreviewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreviewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"Provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider_metadata\",\"searchable\":false,\"sortable\":false}},\"related\":{\"edit\":{\"label\":\"Related\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"Related\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"editRelations\":[\"related\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}]]}}','object','',''),(18,'plugin_content_manager_configuration_content_types::plugins::users-permissions.user','{\"uid\":\"plugins::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":50,\"mainField\":\"username\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"confirmationToken\":{\"edit\":{\"label\":\"ConfirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ConfirmationToken\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":false,\"sortable\":false}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}},\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"Confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Confirmed\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]],\"editRelations\":[\"role\"]}}','object','',''),(19,'plugin_users-permissions_email','{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}','object','',''),(20,'plugin_users-permissions_advanced','{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}','object','',''),(21,'plugin_documentation_config','{\"restrictedAccess\":false}','object','',''),(22,'model_def_application::article-category.article-category','{\"uid\":\"application::article-category.article-category\",\"collectionName\":\"article_categories\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Article Category\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true,\"maxLength\":64},\"article_subcategories\":{\"collection\":\"article-subcategory\",\"via\":\"article_category\",\"isVirtual\":true},\"language\":{\"via\":\"article_categories\",\"model\":\"language\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(23,'plugin_content_manager_configuration_content_types::application::article-category.article-category','{\"uid\":\"application::article-category.article-category\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":50,\"mainField\":\"name\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"article_subcategories\":{\"edit\":{\"label\":\"Article_subcategories\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Article_subcategories\",\"searchable\":false,\"sortable\":false}},\"language\":{\"edit\":{\"label\":\"Language\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Language\",\"searchable\":false,\"sortable\":false}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\"],\"edit\":[[{\"name\":\"name\",\"size\":6}]],\"editRelations\":[\"language\",\"article_subcategories\"]}}','object','',''),(24,'model_def_application::article-subcategory.article-subcategory','{\"uid\":\"application::article-subcategory.article-subcategory\",\"collectionName\":\"article_subcategories\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Article Subcategory\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true,\"maxLength\":64},\"article_category\":{\"via\":\"article_subcategories\",\"model\":\"article-category\"},\"articles\":{\"via\":\"article_subcategory\",\"collection\":\"article\",\"isVirtual\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(25,'plugin_content_manager_configuration_content_types::application::article-subcategory.article-subcategory','{\"uid\":\"application::article-subcategory.article-subcategory\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":50,\"mainField\":\"name\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"article_category\":{\"edit\":{\"label\":\"Category\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Article_category\",\"searchable\":false,\"sortable\":false}},\"articles\":{\"edit\":{\"label\":\"Articles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"Articles\",\"searchable\":false,\"sortable\":false}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\"],\"edit\":[[{\"name\":\"name\",\"size\":6}]],\"editRelations\":[\"article_category\",\"articles\"]}}','object','',''),(26,'model_def_application::article.article','{\"uid\":\"application::article.article\",\"collectionName\":\"articles\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Article\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"title\":{\"type\":\"string\",\"required\":true,\"maxLength\":128},\"content\":{\"type\":\"richtext\",\"required\":true},\"media\":{\"collection\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"files\",\"images\",\"videos\"],\"plugin\":\"upload\",\"required\":true},\"article_subcategory\":{\"model\":\"article-subcategory\",\"via\":\"articles\"},\"admin_user\":{\"plugin\":\"admin\",\"model\":\"user\"},\"article_tags\":{\"via\":\"articles\",\"collection\":\"article-tag\",\"attribute\":\"article-tag\",\"column\":\"id\",\"isVirtual\":true},\"editor_pick\":{\"type\":\"boolean\",\"default\":false,\"required\":true},\"views\":{\"type\":\"integer\",\"min\":0,\"private\":false},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(27,'plugin_content_manager_configuration_content_types::application::article.article','{\"uid\":\"application::article.article\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":50,\"mainField\":\"title\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"DESC\"},\"metadatas\":{\"article_tags\":{\"edit\":{\"label\":\"Article_tags\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Article_tags\",\"searchable\":false,\"sortable\":false}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"media\":{\"edit\":{\"label\":\"Media\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Media\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"views\":{\"edit\":{\"label\":\"Views\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Views\",\"searchable\":true,\"sortable\":true}},\"editor_pick\":{\"edit\":{\"label\":\"Editor_pick\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Editor_pick\",\"searchable\":true,\"sortable\":true}},\"article_subcategory\":{\"edit\":{\"label\":\"Subcategory\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Article_subcategory\",\"searchable\":false,\"sortable\":false}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"content\":{\"edit\":{\"label\":\"Content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Content\",\"searchable\":false,\"sortable\":false}},\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"admin_user\":{\"edit\":{\"label\":\"Author\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"Admin_user\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"title\",\"media\",\"editor_pick\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"editor_pick\",\"size\":4}],[{\"name\":\"media\",\"size\":6},{\"name\":\"views\",\"size\":4}],[{\"name\":\"content\",\"size\":12}]],\"editRelations\":[\"article_subcategory\",\"admin_user\",\"article_tags\"]}}','object','',''),(28,'model_def_application::tag.tag','{\"uid\":\"application::tag.tag\",\"collectionName\":\"article_tags\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Article Tag\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"Name\":{\"type\":\"string\",\"required\":true,\"maxLength\":64},\"articles\":{\"collection\":\"article\",\"via\":\"tags\",\"dominant\":true,\"attribute\":\"article\",\"column\":\"id\",\"isVirtual\":true},\"language\":{\"type\":\"enumeration\",\"enum\":[\"spanish\",\"english\"],\"default\":\"spanish\",\"required\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(30,'model_def_application::article-tag.article-tag','{\"uid\":\"application::article-tag.article-tag\",\"collectionName\":\"article_tags\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Article Tag\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true,\"maxLength\":64},\"articles\":{\"collection\":\"article\",\"via\":\"article_tags\",\"dominant\":true,\"attribute\":\"article\",\"column\":\"id\",\"isVirtual\":true},\"language\":{\"model\":\"language\",\"via\":\"article_tags\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(31,'plugin_content_manager_configuration_content_types::application::article-tag.article-tag','{\"uid\":\"application::article-tag.article-tag\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":50,\"mainField\":\"name\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"articles\":{\"edit\":{\"label\":\"Articles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"Articles\",\"searchable\":false,\"sortable\":false}},\"language\":{\"edit\":{\"label\":\"Language\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Language\",\"searchable\":false,\"sortable\":false}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\"],\"edit\":[[{\"name\":\"name\",\"size\":6}]],\"editRelations\":[\"language\",\"articles\"]}}','object','',''),(32,'model_def_application::language.language','{\"uid\":\"application::language.language\",\"collectionName\":\"languages\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Language\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true,\"maxLength\":16},\"acronym\":{\"type\":\"string\",\"required\":true,\"maxLength\":16},\"article_categories\":{\"collection\":\"article-category\",\"via\":\"language\",\"isVirtual\":true},\"article_tags\":{\"via\":\"language\",\"collection\":\"article-tag\",\"isVirtual\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(33,'plugin_content_manager_configuration_content_types::application::language.language','{\"uid\":\"application::language.language\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"acronym\":{\"edit\":{\"label\":\"Acronym\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Acronym\",\"searchable\":true,\"sortable\":true}},\"article_categories\":{\"edit\":{\"label\":\"Article_categories\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Article_categories\",\"searchable\":false,\"sortable\":false}},\"article_tags\":{\"edit\":{\"label\":\"Article_tags\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Article_tags\",\"searchable\":false,\"sortable\":false}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"acronym\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"acronym\",\"size\":6}]],\"editRelations\":[\"article_categories\",\"article_tags\"]}}','object','','');
/*!40000 ALTER TABLE `core_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `acronym` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'Spanish','2020-11-11 19:19:41',1,1,'2020-11-11 23:19:34','2020-11-12 00:26:57','es-es'),(2,'English','2020-11-11 19:22:21',1,1,'2020-11-11 23:20:48','2020-11-12 00:26:46','en-us');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_administrator`
--

DROP TABLE IF EXISTS `strapi_administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strapi_administrator` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `registrationToken` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_administrator_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_administrator`
--

LOCK TABLES `strapi_administrator` WRITE;
/*!40000 ALTER TABLE `strapi_administrator` DISABLE KEYS */;
INSERT INTO `strapi_administrator` VALUES (1,'Admin','PN','AdminPN','adminpn@gmail.com','$2a$10$qeQw.QtDD1hLJpdzdZqlh.eGE7CEvUaiOSnMhxaX9UoSiBkkdkw86',NULL,NULL,1,NULL),(2,'Autor','PN','AutorPN','autorpn@gmail.com','$2a$10$4r.nTWZYhgp/t/cJxu.hzOaAu9MC6qvjG72e5MbVzruAOA4gkicwa',NULL,NULL,1,NULL),(3,'Editor','PN','EditorPN','editorpn@gmail.com','$2a$10$O54jYdUvG7zD4E/OAnvnxuQXrwwWuX.fI.PLtQM009NqzgOmnC5Ky',NULL,NULL,1,NULL);
/*!40000 ALTER TABLE `strapi_administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_permission`
--

DROP TABLE IF EXISTS `strapi_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strapi_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fields` longtext,
  `conditions` longtext,
  `role` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_permission`
--

LOCK TABLES `strapi_permission` WRITE;
/*!40000 ALTER TABLE `strapi_permission` DISABLE KEYS */;
INSERT INTO `strapi_permission` VALUES (1,'plugins::upload.read',NULL,NULL,'[]',2,'2020-11-04 00:02:12','2020-11-04 00:02:12'),(2,'plugins::upload.assets.create',NULL,NULL,'[]',2,'2020-11-04 00:02:12','2020-11-04 00:02:12'),(3,'plugins::upload.assets.update',NULL,NULL,'[]',2,'2020-11-04 00:02:12','2020-11-04 00:02:12'),(4,'plugins::upload.assets.download',NULL,NULL,'[]',2,'2020-11-04 00:02:12','2020-11-04 00:02:12'),(5,'plugins::upload.assets.copy-link',NULL,NULL,'[]',2,'2020-11-04 00:02:12','2020-11-04 00:02:12'),(6,'plugins::upload.read',NULL,NULL,'[\"admin::is-creator\"]',3,'2020-11-04 00:02:12','2020-11-04 00:02:12'),(7,'plugins::upload.assets.create',NULL,NULL,'[]',3,'2020-11-04 00:02:12','2020-11-04 00:02:12'),(8,'plugins::upload.assets.update',NULL,NULL,'[\"admin::is-creator\"]',3,'2020-11-04 00:02:12','2020-11-04 00:02:12'),(9,'plugins::upload.assets.download',NULL,NULL,'[]',3,'2020-11-04 00:02:12','2020-11-04 00:02:12'),(10,'plugins::upload.assets.copy-link',NULL,NULL,'[]',3,'2020-11-04 00:02:12','2020-11-04 00:02:12'),(14,'plugins::content-manager.explorer.delete','plugins::users-permissions.user',NULL,'[]',1,'2020-11-04 00:02:13','2020-11-04 00:02:13'),(15,'plugins::content-type-builder.read',NULL,NULL,'[]',1,'2020-11-04 00:02:13','2020-11-04 00:02:13'),(16,'plugins::upload.read',NULL,NULL,'[]',1,'2020-11-04 00:02:13','2020-11-04 00:02:13'),(17,'plugins::upload.assets.create',NULL,NULL,'[]',1,'2020-11-04 00:02:13','2020-11-04 00:02:13'),(18,'plugins::upload.assets.update',NULL,NULL,'[]',1,'2020-11-04 00:02:13','2020-11-04 00:02:13'),(19,'plugins::upload.assets.download',NULL,NULL,'[]',1,'2020-11-04 00:02:13','2020-11-04 00:02:13'),(20,'plugins::upload.assets.copy-link',NULL,NULL,'[]',1,'2020-11-04 00:02:13','2020-11-04 00:02:13'),(21,'plugins::upload.settings.read',NULL,NULL,'[]',1,'2020-11-04 00:02:13','2020-11-04 00:02:13'),(22,'plugins::content-manager.single-types.configure-view',NULL,NULL,'[]',1,'2020-11-04 00:02:13','2020-11-04 00:02:13'),(23,'plugins::content-manager.collection-types.configure-view',NULL,NULL,'[]',1,'2020-11-04 00:02:13','2020-11-04 00:02:13'),(24,'plugins::content-manager.components.configure-layout',NULL,NULL,'[]',1,'2020-11-04 00:02:13','2020-11-04 00:02:13'),(25,'plugins::users-permissions.roles.create',NULL,NULL,'[]',1,'2020-11-04 00:02:13','2020-11-04 00:02:13'),(26,'plugins::users-permissions.roles.read',NULL,NULL,'[]',1,'2020-11-04 00:02:13','2020-11-04 00:02:13'),(27,'plugins::users-permissions.roles.update',NULL,NULL,'[]',1,'2020-11-04 00:02:13','2020-11-04 00:02:13'),(28,'plugins::users-permissions.roles.delete',NULL,NULL,'[]',1,'2020-11-04 00:02:13','2020-11-04 00:02:13'),(29,'plugins::users-permissions.providers.read',NULL,NULL,'[]',1,'2020-11-04 00:02:13','2020-11-04 00:02:13'),(30,'plugins::users-permissions.providers.update',NULL,NULL,'[]',1,'2020-11-04 00:02:13','2020-11-04 00:02:13'),(31,'plugins::users-permissions.email-templates.read',NULL,NULL,'[]',1,'2020-11-04 00:02:13','2020-11-04 00:02:13'),(32,'plugins::users-permissions.email-templates.update',NULL,NULL,'[]',1,'2020-11-04 00:02:13','2020-11-04 00:02:14'),(33,'plugins::users-permissions.advanced-settings.read',NULL,NULL,'[]',1,'2020-11-04 00:02:14','2020-11-04 00:02:14'),(34,'plugins::users-permissions.advanced-settings.update',NULL,NULL,'[]',1,'2020-11-04 00:02:14','2020-11-04 00:02:14'),(35,'admin::marketplace.read',NULL,NULL,'[]',1,'2020-11-04 00:02:14','2020-11-04 00:02:14'),(36,'admin::marketplace.plugins.install',NULL,NULL,'[]',1,'2020-11-04 00:02:14','2020-11-04 00:02:14'),(37,'admin::marketplace.plugins.uninstall',NULL,NULL,'[]',1,'2020-11-04 00:02:14','2020-11-04 00:02:14'),(38,'admin::webhooks.create',NULL,NULL,'[]',1,'2020-11-04 00:02:14','2020-11-04 00:02:14'),(39,'admin::webhooks.read',NULL,NULL,'[]',1,'2020-11-04 00:02:14','2020-11-04 00:02:14'),(40,'admin::webhooks.update',NULL,NULL,'[]',1,'2020-11-04 00:02:14','2020-11-04 00:02:14'),(41,'admin::webhooks.delete',NULL,NULL,'[]',1,'2020-11-04 00:02:14','2020-11-04 00:02:14'),(42,'admin::users.create',NULL,NULL,'[]',1,'2020-11-04 00:02:14','2020-11-04 00:02:14'),(43,'admin::users.read',NULL,NULL,'[]',1,'2020-11-04 00:02:14','2020-11-04 00:02:14'),(44,'admin::users.update',NULL,NULL,'[]',1,'2020-11-04 00:02:14','2020-11-04 00:02:14'),(45,'admin::users.delete',NULL,NULL,'[]',1,'2020-11-04 00:02:14','2020-11-04 00:02:14'),(46,'admin::roles.create',NULL,NULL,'[]',1,'2020-11-04 00:02:14','2020-11-04 00:02:14'),(47,'admin::roles.read',NULL,NULL,'[]',1,'2020-11-04 00:02:14','2020-11-04 00:02:14'),(48,'admin::roles.update',NULL,NULL,'[]',1,'2020-11-04 00:02:14','2020-11-04 00:02:14'),(49,'admin::roles.delete',NULL,NULL,'[]',1,'2020-11-04 00:02:14','2020-11-04 00:02:14'),(50,'plugins::documentation.read',NULL,NULL,'[]',1,'2020-11-04 00:26:53','2020-11-04 00:26:53'),(51,'plugins::documentation.settings.update',NULL,NULL,'[]',1,'2020-11-04 00:26:53','2020-11-04 00:26:53'),(52,'plugins::documentation.settings.regenerate',NULL,NULL,'[]',1,'2020-11-04 00:26:53','2020-11-04 00:26:53'),(56,'plugins::content-manager.explorer.delete','application::article-category.article-category',NULL,'[]',1,'2020-11-04 02:46:07','2020-11-04 02:46:07'),(57,'plugins::content-manager.explorer.publish','application::article-category.article-category',NULL,'[]',1,'2020-11-04 02:46:07','2020-11-04 02:46:07'),(64,'plugins::content-manager.explorer.delete','application::article-subcategory.article-subcategory',NULL,'[]',1,'2020-11-04 02:47:40','2020-11-04 02:47:40'),(65,'plugins::content-manager.explorer.publish','application::article-subcategory.article-subcategory',NULL,'[]',1,'2020-11-04 02:47:40','2020-11-04 02:47:40'),(66,'plugins::content-manager.explorer.create','application::article-subcategory.article-subcategory','[\"name\",\"article_category\",\"articles\"]','[]',1,'2020-11-04 02:51:29','2020-11-11 23:46:39'),(68,'plugins::content-manager.explorer.read','application::article-subcategory.article-subcategory','[\"name\",\"article_category\",\"articles\"]','[]',1,'2020-11-04 02:51:29','2020-11-11 23:46:39'),(70,'plugins::content-manager.explorer.update','application::article-subcategory.article-subcategory','[\"name\",\"article_category\",\"articles\"]','[]',1,'2020-11-04 02:51:29','2020-11-11 23:46:39'),(72,'plugins::content-manager.explorer.delete','application::article.article',NULL,'[]',1,'2020-11-04 02:51:29','2020-11-04 02:51:29'),(73,'plugins::content-manager.explorer.publish','application::article.article',NULL,'[]',1,'2020-11-04 02:51:29','2020-11-04 02:51:29'),(75,'plugins::content-manager.explorer.create','plugins::users-permissions.user','[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]','[]',1,'2020-11-04 03:03:21','2020-11-04 07:41:19'),(77,'plugins::content-manager.explorer.read','plugins::users-permissions.user','[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]','[]',1,'2020-11-04 03:03:21','2020-11-04 07:41:19'),(79,'plugins::content-manager.explorer.update','plugins::users-permissions.user','[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]','[]',1,'2020-11-04 03:03:21','2020-11-04 07:41:19'),(80,'plugins::content-manager.explorer.create','application::article.article','[\"article_subcategory\",\"content\",\"media\",\"title\",\"editor_pick\"]','[\"admin::is-creator\"]',3,'2020-11-04 03:08:39','2020-11-13 05:26:34'),(81,'plugins::content-manager.explorer.read','application::article.article','[\"article_subcategory\",\"content\",\"media\",\"title\",\"editor_pick\"]','[\"admin::is-creator\"]',3,'2020-11-04 03:08:39','2020-11-13 05:26:34'),(82,'plugins::content-manager.explorer.update','application::article.article','[\"article_subcategory\",\"content\",\"media\",\"title\",\"editor_pick\"]','[\"admin::is-creator\"]',3,'2020-11-04 03:08:39','2020-11-13 05:26:34'),(83,'plugins::content-manager.explorer.delete','application::article.article',NULL,'[\"admin::is-creator\"]',3,'2020-11-04 03:08:39','2020-11-04 03:08:39'),(84,'plugins::content-manager.explorer.create','application::article-category.article-category','[\"article_subcategories\",\"name\"]','[]',2,'2020-11-04 03:08:54','2020-11-11 23:21:56'),(85,'plugins::content-manager.explorer.read','application::article-category.article-category','[\"article_subcategories\",\"name\"]','[]',2,'2020-11-04 03:08:54','2020-11-11 23:21:56'),(86,'plugins::content-manager.explorer.update','application::article-category.article-category','[\"article_subcategories\",\"name\"]','[]',2,'2020-11-04 03:08:54','2020-11-11 23:21:56'),(87,'plugins::content-manager.explorer.delete','application::article-category.article-category',NULL,'[]',2,'2020-11-04 03:08:54','2020-11-04 03:08:54'),(88,'plugins::content-manager.explorer.publish','application::article-category.article-category',NULL,'[]',2,'2020-11-04 03:08:54','2020-11-04 03:08:54'),(89,'plugins::content-manager.explorer.create','application::article-subcategory.article-subcategory','[\"article_category\",\"articles\",\"name\"]','[]',2,'2020-11-04 03:08:54','2020-11-11 23:46:39'),(90,'plugins::content-manager.explorer.read','application::article-subcategory.article-subcategory','[\"article_category\",\"articles\",\"name\"]','[]',2,'2020-11-04 03:08:54','2020-11-11 23:46:39'),(91,'plugins::content-manager.explorer.update','application::article-subcategory.article-subcategory','[\"article_category\",\"articles\",\"name\"]','[]',2,'2020-11-04 03:08:54','2020-11-11 23:46:39'),(92,'plugins::content-manager.explorer.delete','application::article-subcategory.article-subcategory',NULL,'[]',2,'2020-11-04 03:08:54','2020-11-04 03:08:54'),(93,'plugins::content-manager.explorer.publish','application::article-subcategory.article-subcategory',NULL,'[]',2,'2020-11-04 03:08:54','2020-11-04 03:08:54'),(94,'plugins::content-manager.explorer.create','application::article.article','[\"article_subcategory\",\"content\",\"media\",\"title\",\"editor_pick\"]','[]',2,'2020-11-04 03:08:54','2020-11-13 05:26:34'),(95,'plugins::content-manager.explorer.read','application::article.article','[\"article_subcategory\",\"content\",\"media\",\"title\",\"editor_pick\"]','[]',2,'2020-11-04 03:08:54','2020-11-13 05:26:34'),(96,'plugins::content-manager.explorer.update','application::article.article','[\"article_subcategory\",\"content\",\"media\",\"title\",\"editor_pick\"]','[]',2,'2020-11-04 03:08:54','2020-11-13 05:26:34'),(97,'plugins::content-manager.explorer.delete','application::article.article',NULL,'[]',2,'2020-11-04 03:08:54','2020-11-04 03:08:55'),(98,'plugins::content-manager.explorer.publish','application::article.article',NULL,'[]',2,'2020-11-04 03:08:55','2020-11-04 03:08:55'),(119,'plugins::content-manager.explorer.delete','application::article-tag.article-tag',NULL,'[]',1,'2020-11-05 23:38:08','2020-11-05 23:38:08'),(120,'plugins::content-manager.explorer.publish','application::article-tag.article-tag',NULL,'[]',1,'2020-11-05 23:38:08','2020-11-05 23:38:08'),(124,'plugins::content-manager.explorer.delete','application::language.language',NULL,'[]',1,'2020-11-11 23:02:22','2020-11-11 23:02:22'),(125,'plugins::content-manager.explorer.publish','application::language.language',NULL,'[]',1,'2020-11-11 23:02:22','2020-11-11 23:02:22'),(132,'plugins::content-manager.explorer.create','application::article-category.article-category','[\"name\",\"article_subcategories\",\"language\"]','[]',1,'2020-11-11 23:57:05','2020-11-11 23:57:05'),(133,'plugins::content-manager.explorer.read','application::article-category.article-category','[\"name\",\"article_subcategories\",\"language\"]','[]',1,'2020-11-11 23:57:05','2020-11-11 23:57:05'),(134,'plugins::content-manager.explorer.update','application::article-category.article-category','[\"name\",\"article_subcategories\",\"language\"]','[]',1,'2020-11-11 23:57:05','2020-11-11 23:57:05'),(138,'plugins::content-manager.explorer.create','application::article.article','[\"title\",\"content\",\"media\",\"article_subcategory\",\"admin_user\",\"article_tags\",\"editor_pick\",\"views\"]','[]',1,'2020-11-13 06:09:51','2020-11-13 06:09:51'),(139,'plugins::content-manager.explorer.read','application::article.article','[\"title\",\"content\",\"media\",\"article_subcategory\",\"admin_user\",\"article_tags\",\"editor_pick\",\"views\"]','[]',1,'2020-11-13 06:09:51','2020-11-13 06:09:51'),(140,'plugins::content-manager.explorer.update','application::article.article','[\"title\",\"content\",\"media\",\"article_subcategory\",\"admin_user\",\"article_tags\",\"editor_pick\",\"views\"]','[]',1,'2020-11-13 06:09:51','2020-11-13 06:09:51'),(141,'plugins::content-manager.explorer.create','application::article-tag.article-tag','[\"name\",\"articles\",\"language\"]','[]',1,'2020-11-15 08:03:06','2020-11-15 08:03:06'),(142,'plugins::content-manager.explorer.create','application::language.language','[\"name\",\"acronym\",\"article_categories\",\"article_tags\"]','[]',1,'2020-11-15 08:03:06','2020-11-15 08:03:06'),(143,'plugins::content-manager.explorer.read','application::article-tag.article-tag','[\"name\",\"articles\",\"language\"]','[]',1,'2020-11-15 08:03:06','2020-11-15 08:03:06'),(144,'plugins::content-manager.explorer.read','application::language.language','[\"name\",\"acronym\",\"article_categories\",\"article_tags\"]','[]',1,'2020-11-15 08:03:06','2020-11-15 08:03:06'),(145,'plugins::content-manager.explorer.update','application::article-tag.article-tag','[\"name\",\"articles\",\"language\"]','[]',1,'2020-11-15 08:03:06','2020-11-15 08:03:06'),(146,'plugins::content-manager.explorer.update','application::language.language','[\"name\",\"acronym\",\"article_categories\",\"article_tags\"]','[]',1,'2020-11-15 08:03:06','2020-11-15 08:03:06');
/*!40000 ALTER TABLE `strapi_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_role`
--

DROP TABLE IF EXISTS `strapi_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strapi_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_role_name_unique` (`name`),
  UNIQUE KEY `strapi_role_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_role`
--

LOCK TABLES `strapi_role` WRITE;
/*!40000 ALTER TABLE `strapi_role` DISABLE KEYS */;
INSERT INTO `strapi_role` VALUES (1,'Super Admin','strapi-super-admin','Super Admins can access and manage all features and settings.','2020-11-04 00:02:12','2020-11-04 00:02:12'),(2,'Editor','strapi-editor','Editors can manage and publish contents including those of other users.','2020-11-04 00:02:12','2020-11-04 00:02:12'),(3,'Author','strapi-author','Authors can manage the content they have created.','2020-11-04 00:02:12','2020-11-04 00:02:12');
/*!40000 ALTER TABLE `strapi_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_users_roles`
--

DROP TABLE IF EXISTS `strapi_users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strapi_users_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_users_roles`
--

LOCK TABLES `strapi_users_roles` WRITE;
/*!40000 ALTER TABLE `strapi_users_roles` DISABLE KEYS */;
INSERT INTO `strapi_users_roles` VALUES (1,1,1),(2,2,3),(3,3,2);
/*!40000 ALTER TABLE `strapi_users_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_webhooks`
--

DROP TABLE IF EXISTS `strapi_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strapi_webhooks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `headers` longtext,
  `events` longtext,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_webhooks`
--

LOCK TABLES `strapi_webhooks` WRITE;
/*!40000 ALTER TABLE `strapi_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_webhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_file`
--

DROP TABLE IF EXISTS `upload_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upload_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alternativeText` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext,
  `hash` varchar(255) NOT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) NOT NULL,
  `size` decimal(10,2) NOT NULL,
  `url` varchar(255) NOT NULL,
  `previewUrl` varchar(255) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `provider_metadata` longtext,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_file`
--

LOCK TABLES `upload_file` WRITE;
/*!40000 ALTER TABLE `upload_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `upload_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_file_morph`
--

DROP TABLE IF EXISTS `upload_file_morph`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upload_file_morph` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `upload_file_id` int(11) DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  `related_type` longtext,
  `field` longtext,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_file_morph`
--

LOCK TABLES `upload_file_morph` WRITE;
/*!40000 ALTER TABLE `upload_file_morph` DISABLE KEYS */;
/*!40000 ALTER TABLE `upload_file_morph` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_permission`
--

DROP TABLE IF EXISTS `users-permissions_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users-permissions_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `controller` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `policy` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_permission`
--

LOCK TABLES `users-permissions_permission` WRITE;
/*!40000 ALTER TABLE `users-permissions_permission` DISABLE KEYS */;
INSERT INTO `users-permissions_permission` VALUES (1,'content-manager','components','findcomponent',0,'',1,NULL,NULL),(2,'content-manager','components','findcomponent',0,'',2,NULL,NULL),(3,'content-manager','contentmanager','count',0,'',2,NULL,NULL),(4,'content-manager','components','listcomponents',0,'',2,NULL,NULL),(5,'content-manager','components','updatecomponent',0,'',1,NULL,NULL),(6,'content-manager','contentmanager','checkuidavailability',0,'',1,NULL,NULL),(7,'content-manager','components','updatecomponent',0,'',2,NULL,NULL),(8,'content-manager','contentmanager','checkuidavailability',0,'',2,NULL,NULL),(9,'content-manager','contentmanager','count',0,'',1,NULL,NULL),(10,'content-manager','components','listcomponents',0,'',1,NULL,NULL),(11,'content-manager','contentmanager','create',0,'',1,NULL,NULL),(12,'content-manager','contentmanager','create',0,'',2,NULL,NULL),(13,'content-manager','contentmanager','delete',0,'',1,NULL,NULL),(14,'content-manager','contentmanager','delete',0,'',2,NULL,NULL),(15,'content-manager','contentmanager','deletemany',0,'',1,NULL,NULL),(16,'content-manager','contentmanager','deletemany',0,'',2,NULL,NULL),(17,'content-manager','contentmanager','find',0,'',1,NULL,NULL),(18,'content-manager','contentmanager','find',0,'',2,NULL,NULL),(19,'content-manager','contentmanager','findone',0,'',1,NULL,NULL),(20,'content-manager','contentmanager','findone',0,'',2,NULL,NULL),(21,'content-manager','contentmanager','findrelationlist',0,'',1,NULL,NULL),(22,'content-manager','contentmanager','findrelationlist',0,'',2,NULL,NULL),(23,'content-manager','contentmanager','generateuid',0,'',1,NULL,NULL),(24,'content-manager','contentmanager','generateuid',0,'',2,NULL,NULL),(25,'content-manager','contentmanager','publish',0,'',1,NULL,NULL),(26,'content-manager','contentmanager','publish',0,'',2,NULL,NULL),(27,'content-manager','contentmanager','unpublish',0,'',1,NULL,NULL),(28,'content-manager','contentmanager','unpublish',0,'',2,NULL,NULL),(29,'content-manager','contentmanager','update',0,'',1,NULL,NULL),(30,'content-manager','contentmanager','update',0,'',2,NULL,NULL),(31,'content-manager','contenttypes','findcontenttype',0,'',1,NULL,NULL),(32,'content-manager','contenttypes','findcontenttype',0,'',2,NULL,NULL),(33,'content-manager','contenttypes','listcontenttypes',0,'',1,NULL,NULL),(34,'content-manager','contenttypes','listcontenttypes',0,'',2,NULL,NULL),(35,'content-manager','contenttypes','updatecontenttype',0,'',1,NULL,NULL),(36,'content-manager','contenttypes','updatecontenttype',0,'',2,NULL,NULL),(37,'content-type-builder','builder','getreservednames',0,'',1,NULL,NULL),(38,'content-type-builder','builder','getreservednames',0,'',2,NULL,NULL),(39,'content-type-builder','componentcategories','deletecategory',0,'',1,NULL,NULL),(40,'content-type-builder','componentcategories','deletecategory',0,'',2,NULL,NULL),(41,'content-type-builder','componentcategories','editcategory',0,'',1,NULL,NULL),(42,'content-type-builder','componentcategories','editcategory',0,'',2,NULL,NULL),(43,'content-type-builder','components','createcomponent',0,'',1,NULL,NULL),(44,'content-type-builder','components','createcomponent',0,'',2,NULL,NULL),(45,'content-type-builder','components','deletecomponent',0,'',1,NULL,NULL),(46,'content-type-builder','components','deletecomponent',0,'',2,NULL,NULL),(47,'content-type-builder','components','getcomponent',0,'',1,NULL,NULL),(48,'content-type-builder','components','getcomponent',0,'',2,NULL,NULL),(49,'content-type-builder','components','getcomponents',0,'',1,NULL,NULL),(50,'content-type-builder','components','getcomponents',0,'',2,NULL,NULL),(51,'content-type-builder','components','updatecomponent',0,'',1,NULL,NULL),(52,'content-type-builder','components','updatecomponent',0,'',2,NULL,NULL),(53,'content-type-builder','connections','getconnections',0,'',1,NULL,NULL),(54,'content-type-builder','connections','getconnections',0,'',2,NULL,NULL),(55,'content-type-builder','contenttypes','createcontenttype',0,'',1,NULL,NULL),(56,'content-type-builder','contenttypes','createcontenttype',0,'',2,NULL,NULL),(57,'content-type-builder','contenttypes','deletecontenttype',0,'',1,NULL,NULL),(58,'content-type-builder','contenttypes','deletecontenttype',0,'',2,NULL,NULL),(59,'content-type-builder','contenttypes','getcontenttype',0,'',1,NULL,NULL),(60,'content-type-builder','contenttypes','getcontenttype',0,'',2,NULL,NULL),(61,'content-type-builder','contenttypes','getcontenttypes',0,'',1,NULL,NULL),(62,'content-type-builder','contenttypes','getcontenttypes',0,'',2,NULL,NULL),(63,'content-type-builder','contenttypes','updatecontenttype',0,'',1,NULL,NULL),(64,'content-type-builder','contenttypes','updatecontenttype',0,'',2,NULL,NULL),(65,'email','email','send',0,'',1,NULL,NULL),(66,'email','email','send',0,'',2,NULL,NULL),(67,'upload','upload','count',0,'',1,NULL,NULL),(68,'upload','upload','count',0,'',2,NULL,NULL),(69,'upload','upload','destroy',0,'',1,NULL,NULL),(70,'upload','upload','destroy',0,'',2,NULL,NULL),(71,'upload','upload','find',0,'',1,NULL,NULL),(72,'upload','upload','find',0,'',2,NULL,NULL),(73,'upload','upload','findone',0,'',1,NULL,NULL),(74,'upload','upload','findone',0,'',2,NULL,NULL),(75,'upload','upload','getsettings',0,'',1,NULL,NULL),(76,'upload','upload','getsettings',0,'',2,NULL,NULL),(77,'upload','upload','search',0,'',1,NULL,NULL),(78,'upload','upload','search',0,'',2,NULL,NULL),(79,'upload','upload','updatesettings',0,'',1,NULL,NULL),(80,'upload','upload','updatesettings',0,'',2,NULL,NULL),(81,'upload','upload','upload',0,'',1,NULL,NULL),(82,'upload','upload','upload',0,'',2,NULL,NULL),(83,'users-permissions','auth','callback',0,'',1,NULL,NULL),(84,'users-permissions','auth','callback',1,'',2,NULL,NULL),(85,'users-permissions','auth','connect',1,'',1,NULL,NULL),(86,'users-permissions','auth','connect',1,'',2,NULL,NULL),(87,'users-permissions','auth','emailconfirmation',0,'',1,NULL,NULL),(88,'users-permissions','auth','emailconfirmation',1,'',2,NULL,NULL),(89,'users-permissions','auth','forgotpassword',0,'',1,NULL,NULL),(90,'users-permissions','auth','forgotpassword',1,'',2,NULL,NULL),(91,'users-permissions','auth','register',0,'',1,NULL,NULL),(92,'users-permissions','auth','register',1,'',2,NULL,NULL),(93,'users-permissions','auth','resetpassword',0,'',1,NULL,NULL),(94,'users-permissions','auth','resetpassword',1,'',2,NULL,NULL),(95,'users-permissions','auth','sendemailconfirmation',0,'',1,NULL,NULL),(96,'users-permissions','auth','sendemailconfirmation',0,'',2,NULL,NULL),(97,'users-permissions','user','count',0,'',1,NULL,NULL),(98,'users-permissions','user','count',0,'',2,NULL,NULL),(99,'users-permissions','user','create',0,'',1,NULL,NULL),(100,'users-permissions','user','create',0,'',2,NULL,NULL),(101,'users-permissions','user','destroy',0,'',1,NULL,NULL),(102,'users-permissions','user','destroy',0,'',2,NULL,NULL),(103,'users-permissions','user','destroyall',0,'',1,NULL,NULL),(104,'users-permissions','user','destroyall',0,'',2,NULL,NULL),(105,'users-permissions','user','find',0,'',1,NULL,NULL),(106,'users-permissions','user','find',0,'',2,NULL,NULL),(107,'users-permissions','user','findone',0,'',1,NULL,NULL),(108,'users-permissions','user','findone',0,'',2,NULL,NULL),(109,'users-permissions','user','me',1,'',1,NULL,NULL),(110,'users-permissions','user','me',1,'',2,NULL,NULL),(111,'users-permissions','user','update',0,'',1,NULL,NULL),(112,'users-permissions','user','update',0,'',2,NULL,NULL),(113,'users-permissions','userspermissions','createrole',0,'',1,NULL,NULL),(114,'users-permissions','userspermissions','createrole',0,'',2,NULL,NULL),(115,'users-permissions','userspermissions','deleterole',0,'',1,NULL,NULL),(116,'users-permissions','userspermissions','deleterole',0,'',2,NULL,NULL),(117,'users-permissions','userspermissions','getadvancedsettings',0,'',1,NULL,NULL),(118,'users-permissions','userspermissions','getadvancedsettings',0,'',2,NULL,NULL),(119,'users-permissions','userspermissions','getemailtemplate',0,'',1,NULL,NULL),(120,'users-permissions','userspermissions','getemailtemplate',0,'',2,NULL,NULL),(121,'users-permissions','userspermissions','getpermissions',0,'',1,NULL,NULL),(122,'users-permissions','userspermissions','getpermissions',0,'',2,NULL,NULL),(123,'users-permissions','userspermissions','getpolicies',0,'',1,NULL,NULL),(124,'users-permissions','userspermissions','getpolicies',0,'',2,NULL,NULL),(125,'users-permissions','userspermissions','getproviders',0,'',1,NULL,NULL),(126,'users-permissions','userspermissions','getproviders',0,'',2,NULL,NULL),(127,'users-permissions','userspermissions','getrole',0,'',1,NULL,NULL),(128,'users-permissions','userspermissions','getrole',0,'',2,NULL,NULL),(129,'users-permissions','userspermissions','getroles',0,'',1,NULL,NULL),(130,'users-permissions','userspermissions','getroles',0,'',2,NULL,NULL),(131,'users-permissions','userspermissions','getroutes',0,'',1,NULL,NULL),(132,'users-permissions','userspermissions','getroutes',0,'',2,NULL,NULL),(133,'users-permissions','userspermissions','index',0,'',1,NULL,NULL),(134,'users-permissions','userspermissions','index',0,'',2,NULL,NULL),(135,'users-permissions','userspermissions','searchusers',0,'',1,NULL,NULL),(136,'users-permissions','userspermissions','searchusers',0,'',2,NULL,NULL),(137,'users-permissions','userspermissions','updateadvancedsettings',0,'',1,NULL,NULL),(138,'users-permissions','userspermissions','updateadvancedsettings',0,'',2,NULL,NULL),(139,'users-permissions','userspermissions','updateemailtemplate',0,'',1,NULL,NULL),(140,'users-permissions','userspermissions','updateemailtemplate',0,'',2,NULL,NULL),(141,'users-permissions','userspermissions','updateproviders',0,'',1,NULL,NULL),(142,'users-permissions','userspermissions','updateproviders',0,'',2,NULL,NULL),(143,'users-permissions','userspermissions','updaterole',0,'',1,NULL,NULL),(144,'users-permissions','userspermissions','updaterole',0,'',2,NULL,NULL),(145,'documentation','documentation','deletedoc',0,'',1,NULL,NULL),(146,'documentation','documentation','deletedoc',0,'',2,NULL,NULL),(147,'documentation','documentation','getinfos',0,'',1,NULL,NULL),(148,'documentation','documentation','getinfos',0,'',2,NULL,NULL),(149,'documentation','documentation','index',0,'',1,NULL,NULL),(150,'documentation','documentation','index',0,'',2,NULL,NULL),(151,'documentation','documentation','login',0,'',1,NULL,NULL),(152,'documentation','documentation','login',0,'',2,NULL,NULL),(153,'documentation','documentation','loginview',0,'',1,NULL,NULL),(154,'documentation','documentation','loginview',0,'',2,NULL,NULL),(155,'documentation','documentation','regeneratedoc',0,'',1,NULL,NULL),(156,'documentation','documentation','regeneratedoc',0,'',2,NULL,NULL),(157,'documentation','documentation','updatesettings',0,'',1,NULL,NULL),(158,'documentation','documentation','updatesettings',0,'',2,NULL,NULL),(159,'application','article-category','count',0,'',1,NULL,NULL),(160,'application','article-category','count',0,'',2,NULL,NULL),(161,'application','article-category','create',0,'',1,NULL,NULL),(162,'application','article-category','create',0,'',2,NULL,NULL),(163,'application','article-category','delete',0,'',1,NULL,NULL),(164,'application','article-category','delete',0,'',2,NULL,NULL),(165,'application','article-category','find',0,'',1,NULL,NULL),(166,'application','article-category','find',1,'',2,NULL,NULL),(167,'application','article-category','findone',0,'',1,NULL,NULL),(168,'application','article-category','findone',1,'',2,NULL,NULL),(169,'application','article-category','update',0,'',1,NULL,NULL),(170,'application','article-category','update',0,'',2,NULL,NULL),(171,'application','article-subcategory','count',0,'',1,NULL,NULL),(172,'application','article-subcategory','count',0,'',2,NULL,NULL),(173,'application','article-subcategory','create',0,'',1,NULL,NULL),(174,'application','article-subcategory','create',0,'',2,NULL,NULL),(175,'application','article-subcategory','delete',0,'',1,NULL,NULL),(176,'application','article-subcategory','delete',0,'',2,NULL,NULL),(177,'application','article-subcategory','find',0,'',1,NULL,NULL),(178,'application','article-subcategory','find',1,'',2,NULL,NULL),(179,'application','article-subcategory','findone',0,'',1,NULL,NULL),(180,'application','article-subcategory','findone',1,'',2,NULL,NULL),(181,'application','article-subcategory','update',0,'',1,NULL,NULL),(182,'application','article-subcategory','update',0,'',2,NULL,NULL),(183,'application','article','count',0,'',1,NULL,NULL),(184,'application','article','count',0,'',2,NULL,NULL),(185,'application','article','create',0,'',1,NULL,NULL),(186,'application','article','create',0,'',2,NULL,NULL),(187,'application','article','delete',0,'',1,NULL,NULL),(188,'application','article','delete',0,'',2,NULL,NULL),(189,'application','article','find',0,'',1,NULL,NULL),(190,'application','article','find',1,'',2,NULL,NULL),(191,'application','article','findone',0,'',1,NULL,NULL),(192,'application','article','findone',1,'',2,NULL,NULL),(193,'application','article','update',0,'',1,NULL,NULL),(194,'application','article','update',0,'',2,NULL,NULL),(207,'application','article-tag','count',0,'',1,NULL,NULL),(208,'application','article-tag','count',0,'',2,NULL,NULL),(209,'application','article-tag','create',0,'',1,NULL,NULL),(210,'application','article-tag','create',0,'',2,NULL,NULL),(211,'application','article-tag','delete',0,'',1,NULL,NULL),(212,'application','article-tag','delete',0,'',2,NULL,NULL),(213,'application','article-tag','find',0,'',1,NULL,NULL),(214,'application','article-tag','find',1,'',2,NULL,NULL),(215,'application','article-tag','findone',0,'',1,NULL,NULL),(216,'application','article-tag','findone',1,'',2,NULL,NULL),(217,'application','article-tag','update',0,'',1,NULL,NULL),(218,'application','article-tag','update',0,'',2,NULL,NULL),(219,'application','language','count',0,'',1,NULL,NULL),(220,'application','language','count',0,'',2,NULL,NULL),(221,'application','language','create',0,'',1,NULL,NULL),(222,'application','language','create',0,'',2,NULL,NULL),(223,'application','language','delete',0,'',1,NULL,NULL),(224,'application','language','delete',0,'',2,NULL,NULL),(225,'application','language','find',0,'',1,NULL,NULL),(226,'application','language','find',1,'',2,NULL,NULL),(227,'application','language','findone',0,'',1,NULL,NULL),(228,'application','language','findone',1,'',2,NULL,NULL),(229,'application','language','update',0,'',1,NULL,NULL),(230,'application','language','update',0,'',2,NULL,NULL);
/*!40000 ALTER TABLE `users-permissions_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_role`
--

DROP TABLE IF EXISTS `users-permissions_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users-permissions_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users-permissions_role_type_unique` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_role`
--

LOCK TABLES `users-permissions_role` WRITE;
/*!40000 ALTER TABLE `users-permissions_role` DISABLE KEYS */;
INSERT INTO `users-permissions_role` VALUES (1,'Authenticated','Default role given to authenticated user.','authenticated',NULL,NULL),(2,'Public','Default role given to unauthenticated user.','public',NULL,NULL);
/*!40000 ALTER TABLE `users-permissions_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_user`
--

DROP TABLE IF EXISTS `users-permissions_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users-permissions_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `confirmationToken` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users-permissions_user_username_unique` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_user`
--

LOCK TABLES `users-permissions_user` WRITE;
/*!40000 ALTER TABLE `users-permissions_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `users-permissions_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-15  0:05:50
