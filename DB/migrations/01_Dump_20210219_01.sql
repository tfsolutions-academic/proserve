CREATE DATABASE  IF NOT EXISTS `proserve` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `proserve`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: proserve
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
-- Table structure for table `components_contact_addresses`
--

DROP TABLE IF EXISTS `components_contact_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_contact_addresses` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_contact_addresses`
--

LOCK TABLES `components_contact_addresses` WRITE;
/*!40000 ALTER TABLE `components_contact_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_contact_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_contact_phones`
--

DROP TABLE IF EXISTS `components_contact_phones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_contact_phones` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `whatsapp` tinyint(1) DEFAULT NULL,
  `primary` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_contact_phones`
--

LOCK TABLES `components_contact_phones` WRITE;
/*!40000 ALTER TABLE `components_contact_phones` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_contact_phones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_features_amenties`
--

DROP TABLE IF EXISTS `components_features_amenties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_features_amenties` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `CarParking` tinyint(1) DEFAULT NULL,
  `Restrooms` tinyint(1) DEFAULT NULL,
  `AirConditioning` tinyint(1) DEFAULT NULL,
  `Kitchen` tinyint(1) DEFAULT NULL,
  `Furnitures` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_features_amenties`
--

LOCK TABLES `components_features_amenties` WRITE;
/*!40000 ALTER TABLE `components_features_amenties` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_features_amenties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_store`
--

DROP TABLE IF EXISTS `core_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_store` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_store`
--

LOCK TABLES `core_store` WRITE;
/*!40000 ALTER TABLE `core_store` DISABLE KEYS */;
INSERT INTO `core_store` VALUES (1,'model_def_strapi::core-store','{\"uid\":\"strapi::core-store\",\"collectionName\":\"core_store\",\"info\":{\"name\":\"core_store\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"key\":{\"type\":\"string\"},\"value\":{\"type\":\"text\"},\"type\":{\"type\":\"string\"},\"environment\":{\"type\":\"string\"},\"tag\":{\"type\":\"string\"}}}','object',NULL,NULL),(2,'model_def_strapi::webhooks','{\"uid\":\"strapi::webhooks\",\"collectionName\":\"strapi_webhooks\",\"info\":{\"name\":\"Strapi webhooks\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"name\":{\"type\":\"string\"},\"url\":{\"type\":\"text\"},\"headers\":{\"type\":\"json\"},\"events\":{\"type\":\"json\"},\"enabled\":{\"type\":\"boolean\"}}}','object',NULL,NULL),(3,'model_def_strapi::permission','{\"uid\":\"strapi::permission\",\"collectionName\":\"strapi_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Permission\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"fields\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"model\":\"role\",\"plugin\":\"admin\"}}}','object',NULL,NULL),(4,'model_def_strapi::role','{\"uid\":\"strapi::role\",\"collectionName\":\"strapi_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Role\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"collection\":\"user\",\"via\":\"roles\",\"plugin\":\"admin\",\"attribute\":\"user\",\"column\":\"id\",\"isVirtual\":true},\"permissions\":{\"configurable\":false,\"plugin\":\"admin\",\"collection\":\"permission\",\"via\":\"role\",\"isVirtual\":true}}}','object',NULL,NULL),(5,'model_def_strapi::user','{\"uid\":\"strapi::user\",\"collectionName\":\"strapi_administrator\",\"kind\":\"collectionType\",\"info\":{\"name\":\"User\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"collection\":\"role\",\"collectionName\":\"strapi_users_roles\",\"via\":\"users\",\"dominant\":true,\"plugin\":\"admin\",\"configurable\":false,\"private\":true,\"attribute\":\"role\",\"column\":\"id\",\"isVirtual\":true},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true}}}','object',NULL,NULL),(6,'model_def_plugins::users-permissions.permission','{\"uid\":\"plugins::users-permissions.permission\",\"collectionName\":\"users-permissions_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"permission\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(7,'model_def_plugins::users-permissions.role','{\"uid\":\"plugins::users-permissions.role\",\"collectionName\":\"users-permissions_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"role\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"configurable\":false,\"plugin\":\"users-permissions\",\"isVirtual\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(8,'model_def_plugins::users-permissions.user','{\"uid\":\"plugins::users-permissions.user\",\"collectionName\":\"users-permissions_user\",\"kind\":\"collectionType\",\"info\":{\"name\":\"user\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(9,'model_def_plugins::upload.file','{\"uid\":\"plugins::upload.file\",\"collectionName\":\"upload_file\",\"kind\":\"collectionType\",\"info\":{\"name\":\"file\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"collection\":\"*\",\"filter\":\"field\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(10,'plugin_users-permissions_grant','{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/instagram/callback\"},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]}}','object','',''),(11,'plugin_upload_settings','{\"sizeOptimization\":true,\"responsiveDimensions\":true}','object','development',''),(12,'plugin_content_manager_configuration_content_types::plugins::upload.file','{\"uid\":\"plugins::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"AlternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AlternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"Caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"Width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"Height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"Formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"Hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"Ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"Mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"Size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"Url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"PreviewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreviewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"Provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider_metadata\",\"searchable\":false,\"sortable\":false}},\"related\":{\"edit\":{\"label\":\"Related\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"Related\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"editRelations\":[\"related\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}]]}}','object','',''),(13,'plugin_content_manager_configuration_content_types::strapi::user','{\"uid\":\"strapi::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"Firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"Lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"RegistrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"RegistrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"IsActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"IsActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"Roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"editRelations\":[\"roles\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]]}}','object','',''),(14,'plugin_content_manager_configuration_content_types::plugins::users-permissions.permission','{\"uid\":\"plugins::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"type\",\"defaultSortBy\":\"type\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"controller\":{\"edit\":{\"label\":\"Controller\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Controller\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"enabled\":{\"edit\":{\"label\":\"Enabled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Enabled\",\"searchable\":true,\"sortable\":true}},\"policy\":{\"edit\":{\"label\":\"Policy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Policy\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"type\",\"controller\",\"action\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"controller\",\"size\":6}],[{\"name\":\"action\",\"size\":6},{\"name\":\"enabled\",\"size\":4}],[{\"name\":\"policy\",\"size\":6}]]}}','object','',''),(15,'plugin_content_manager_configuration_content_types::strapi::role','{\"uid\":\"strapi::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"editRelations\":[\"users\",\"permissions\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6}]]}}','object','',''),(16,'plugin_content_manager_configuration_content_types::strapi::permission','{\"uid\":\"strapi::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"Subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subject\",\"searchable\":true,\"sortable\":true}},\"fields\":{\"edit\":{\"label\":\"Fields\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Fields\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"Conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"created_at\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"fields\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}]]}}','object','',''),(17,'plugin_content_manager_configuration_content_types::plugins::users-permissions.role','{\"uid\":\"plugins::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"type\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[\"permissions\",\"users\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]}}','object','',''),(18,'plugin_content_manager_configuration_content_types::plugins::users-permissions.user','{\"uid\":\"plugins::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"ConfirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ConfirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"Confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]]}}','object','',''),(19,'plugin_users-permissions_email','{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}','object','',''),(20,'plugin_users-permissions_advanced','{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}','object','',''),(21,'model_def_application::venue.venue','{\"uid\":\"application::venue.venue\",\"collectionName\":\"venues\",\"kind\":\"collectionType\",\"info\":{\"name\":\"venue\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"name\":{\"type\":\"string\"},\"capacity\":{\"type\":\"integer\"},\"address\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"contact.address\"},\"amenties\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"features.amenties\"},\"Contacts\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"contact.phone\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(22,'plugin_content_manager_configuration_content_types::application::venue.venue','{\"uid\":\"application::venue.venue\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"capacity\":{\"edit\":{\"label\":\"Capacity\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Capacity\",\"searchable\":true,\"sortable\":true}},\"address\":{\"edit\":{\"label\":\"Address\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Address\",\"searchable\":false,\"sortable\":false}},\"amenties\":{\"edit\":{\"label\":\"Amenties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Amenties\",\"searchable\":false,\"sortable\":false}},\"Contacts\":{\"edit\":{\"label\":\"Contacts\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Contacts\",\"searchable\":false,\"sortable\":false}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"published_at\",\"created_at\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"capacity\",\"size\":4}],[{\"name\":\"address\",\"size\":12}],[{\"name\":\"amenties\",\"size\":12}],[{\"name\":\"Contacts\",\"size\":12}]],\"editRelations\":[]}}','object','',''),(23,'plugin_documentation_config','{\"restrictedAccess\":false}','object','',''),(24,'model_def_contact.address','{\"uid\":\"contact.address\",\"collectionName\":\"components_contact_addresses\",\"info\":{\"name\":\"address\",\"icon\":\"address-card\"},\"options\":{\"timestamps\":false},\"attributes\":{\"address1\":{\"type\":\"string\"},\"address2\":{\"type\":\"string\"},\"city\":{\"type\":\"string\"},\"state\":{\"type\":\"string\"},\"pincode\":{\"type\":\"string\"}}}','object',NULL,NULL),(25,'plugin_content_manager_configuration_components::contact.address','{\"uid\":\"contact.address\",\"isComponent\":true,\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"address1\",\"defaultSortBy\":\"address1\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"address1\":{\"edit\":{\"label\":\"Address1\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Address1\",\"searchable\":true,\"sortable\":true}},\"address2\":{\"edit\":{\"label\":\"Address2\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Address2\",\"searchable\":true,\"sortable\":true}},\"city\":{\"edit\":{\"label\":\"City\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"City\",\"searchable\":true,\"sortable\":true}},\"state\":{\"edit\":{\"label\":\"State\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"State\",\"searchable\":true,\"sortable\":true}},\"pincode\":{\"edit\":{\"label\":\"Pincode\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Pincode\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"address1\",\"address2\",\"city\"],\"edit\":[[{\"name\":\"address1\",\"size\":6},{\"name\":\"address2\",\"size\":6}],[{\"name\":\"city\",\"size\":6},{\"name\":\"state\",\"size\":6}],[{\"name\":\"pincode\",\"size\":6}]],\"editRelations\":[]}}','object','',''),(26,'model_def_features.amenties','{\"uid\":\"features.amenties\",\"collectionName\":\"components_features_amenties\",\"info\":{\"name\":\"amenties\",\"icon\":\"box-open\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"CarParking\":{\"type\":\"boolean\"},\"Restrooms\":{\"type\":\"boolean\",\"default\":true},\"AirConditioning\":{\"type\":\"boolean\",\"default\":true},\"Kitchen\":{\"type\":\"boolean\"},\"Furnitures\":{\"type\":\"boolean\"}}}','object',NULL,NULL),(27,'plugin_content_manager_configuration_components::features.amenties','{\"uid\":\"features.amenties\",\"isComponent\":true,\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"CarParking\":{\"edit\":{\"label\":\"CarParking\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"CarParking\",\"searchable\":true,\"sortable\":true}},\"Restrooms\":{\"edit\":{\"label\":\"Restrooms\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Restrooms\",\"searchable\":true,\"sortable\":true}},\"AirConditioning\":{\"edit\":{\"label\":\"AirConditioning\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AirConditioning\",\"searchable\":true,\"sortable\":true}},\"Kitchen\":{\"edit\":{\"label\":\"Kitchen\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Kitchen\",\"searchable\":true,\"sortable\":true}},\"Furnitures\":{\"edit\":{\"label\":\"Furnitures\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Furnitures\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"CarParking\",\"Restrooms\",\"AirConditioning\"],\"edit\":[[{\"name\":\"CarParking\",\"size\":4},{\"name\":\"Restrooms\",\"size\":4},{\"name\":\"AirConditioning\",\"size\":4}],[{\"name\":\"Kitchen\",\"size\":4},{\"name\":\"Furnitures\",\"size\":4}]],\"editRelations\":[]}}','object','',''),(28,'model_def_contact.phone','{\"uid\":\"contact.phone\",\"collectionName\":\"components_contact_phones\",\"info\":{\"name\":\"Phone\",\"icon\":\"address-book\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"name\":{\"type\":\"string\"},\"number\":{\"type\":\"string\"},\"whatsapp\":{\"type\":\"boolean\"},\"primary\":{\"type\":\"boolean\"}}}','object',NULL,NULL),(29,'plugin_content_manager_configuration_components::contact.phone','{\"uid\":\"contact.phone\",\"isComponent\":true,\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"number\":{\"edit\":{\"label\":\"Number\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Number\",\"searchable\":true,\"sortable\":true}},\"whatsapp\":{\"edit\":{\"label\":\"Whatsapp\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Whatsapp\",\"searchable\":true,\"sortable\":true}},\"primary\":{\"edit\":{\"label\":\"Primary\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Primary\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"number\",\"whatsapp\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"number\",\"size\":6}],[{\"name\":\"whatsapp\",\"size\":4},{\"name\":\"primary\",\"size\":4}]],\"editRelations\":[]}}','object','',''),(30,'model_def_application::event.event','{\"uid\":\"application::event.event\",\"collectionName\":\"events\",\"kind\":\"collectionType\",\"info\":{\"name\":\"event\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"name\":{\"type\":\"string\"},\"description\":{\"type\":\"richtext\"},\"start_date\":{\"type\":\"datetime\"},\"end_date\":{\"type\":\"datetime\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"marriage\",\"birthday\",\"retirement\",\"expo\",\"spritual\",\"other\"]},\"venue\":{\"model\":\"venue\"},\"orgainizer\":{\"model\":\"orgainizer\"},\"RSVPContent\":{\"type\":\"richtext\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(31,'plugin_content_manager_configuration_content_types::application::event.event','{\"uid\":\"application::event.event\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":false,\"sortable\":false}},\"start_date\":{\"edit\":{\"label\":\"Start_date\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Start_date\",\"searchable\":true,\"sortable\":true}},\"end_date\":{\"edit\":{\"label\":\"End_date\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"End_date\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"venue\":{\"edit\":{\"label\":\"Venue\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Venue\",\"searchable\":false,\"sortable\":false}},\"orgainizer\":{\"edit\":{\"label\":\"Orgainizer\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Orgainizer\",\"searchable\":false,\"sortable\":false}},\"RSVPContent\":{\"edit\":{\"label\":\"RSVPContent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"RSVPContent\",\"searchable\":false,\"sortable\":false}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"start_date\",\"end_date\"],\"edit\":[[{\"name\":\"name\",\"size\":6}],[{\"name\":\"description\",\"size\":12}],[{\"name\":\"start_date\",\"size\":6},{\"name\":\"end_date\",\"size\":6}],[{\"name\":\"type\",\"size\":6}],[{\"name\":\"RSVPContent\",\"size\":12}]],\"editRelations\":[\"venue\",\"orgainizer\"]}}','object','',''),(32,'model_def_application::orgainizer.orgainizer','{\"uid\":\"application::orgainizer.orgainizer\",\"collectionName\":\"orgainizers\",\"kind\":\"collectionType\",\"info\":{\"name\":\"orgainizer\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"name\":{\"type\":\"string\"},\"contact\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"contact.phone\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(33,'plugin_content_manager_configuration_content_types::application::orgainizer.orgainizer','{\"uid\":\"application::orgainizer.orgainizer\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"contact\":{\"edit\":{\"label\":\"Contact\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Contact\",\"searchable\":false,\"sortable\":false}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"published_at\",\"created_at\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6}],[{\"name\":\"contact\",\"size\":12}]]}}','object','',''),(34,'model_def_application::rsvp.rsvp','{\"uid\":\"application::rsvp.rsvp\",\"collectionName\":\"rsvps\",\"kind\":\"collectionType\",\"info\":{\"name\":\"RSVP\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"event\":{\"model\":\"event\"},\"adult\":{\"type\":\"integer\"},\"kids\":{\"type\":\"integer\"},\"name\":{\"type\":\"string\"},\"phone\":{\"type\":\"string\",\"required\":true,\"unique\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(35,'plugin_content_manager_configuration_content_types::application::rsvp.rsvp','{\"uid\":\"application::rsvp.rsvp\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"event\":{\"edit\":{\"label\":\"Event\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Event\",\"searchable\":false,\"sortable\":false}},\"adult\":{\"edit\":{\"label\":\"Adult\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Adult\",\"searchable\":true,\"sortable\":true}},\"kids\":{\"edit\":{\"label\":\"Kids\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Kids\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"phone\":{\"edit\":{\"label\":\"Phone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Phone\",\"searchable\":true,\"sortable\":true}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"adult\",\"kids\",\"name\"],\"edit\":[[{\"name\":\"adult\",\"size\":4},{\"name\":\"kids\",\"size\":4}],[{\"name\":\"name\",\"size\":6},{\"name\":\"phone\",\"size\":6}]],\"editRelations\":[\"event\"]}}','object','','');
/*!40000 ALTER TABLE `core_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `venue` int DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `orgainizer` int DEFAULT NULL,
  `RSVPContent` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orgainizers`
--

DROP TABLE IF EXISTS `orgainizers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orgainizers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orgainizers`
--

LOCK TABLES `orgainizers` WRITE;
/*!40000 ALTER TABLE `orgainizers` DISABLE KEYS */;
/*!40000 ALTER TABLE `orgainizers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orgainizers_components`
--

DROP TABLE IF EXISTS `orgainizers_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orgainizers_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL,
  `order` int unsigned NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int NOT NULL,
  `orgainizer_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orgainizer_id_fk` (`orgainizer_id`),
  CONSTRAINT `orgainizer_id_fk` FOREIGN KEY (`orgainizer_id`) REFERENCES `orgainizers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orgainizers_components`
--

LOCK TABLES `orgainizers_components` WRITE;
/*!40000 ALTER TABLE `orgainizers_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `orgainizers_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rsvps`
--

DROP TABLE IF EXISTS `rsvps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rsvps` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `event` int DEFAULT NULL,
  `adult` int DEFAULT NULL,
  `kids` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rsvps_phone_unique` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rsvps`
--

LOCK TABLES `rsvps` WRITE;
/*!40000 ALTER TABLE `rsvps` DISABLE KEYS */;
/*!40000 ALTER TABLE `rsvps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_administrator`
--

DROP TABLE IF EXISTS `strapi_administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_administrator` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_administrator`
--

LOCK TABLES `strapi_administrator` WRITE;
/*!40000 ALTER TABLE `strapi_administrator` DISABLE KEYS */;
INSERT INTO `strapi_administrator` VALUES (1,'proserve','admin',NULL,'proserve_admin@proserve.com','$2a$10$i6jwH/4yj15YiXNOV1N3e.vedbHvFq5w3fkek0gG5CPDYKUHaCy6S',NULL,NULL,1,NULL);
/*!40000 ALTER TABLE `strapi_administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_permission`
--

DROP TABLE IF EXISTS `strapi_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_permission` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fields` longtext,
  `conditions` longtext,
  `role` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_permission`
--

LOCK TABLES `strapi_permission` WRITE;
/*!40000 ALTER TABLE `strapi_permission` DISABLE KEYS */;
INSERT INTO `strapi_permission` VALUES (1,'plugins::upload.read',NULL,NULL,'[]',2,'2021-02-18 23:10:22','2021-02-18 23:10:22'),(2,'plugins::upload.assets.create',NULL,NULL,'[]',2,'2021-02-18 23:10:22','2021-02-18 23:10:22'),(3,'plugins::upload.assets.update',NULL,NULL,'[]',2,'2021-02-18 23:10:22','2021-02-18 23:10:22'),(4,'plugins::upload.assets.download',NULL,NULL,'[]',2,'2021-02-18 23:10:22','2021-02-18 23:10:22'),(5,'plugins::upload.assets.copy-link',NULL,NULL,'[]',2,'2021-02-18 23:10:22','2021-02-18 23:10:22'),(6,'plugins::upload.read',NULL,NULL,'[\"admin::is-creator\"]',3,'2021-02-18 23:10:23','2021-02-18 23:10:23'),(7,'plugins::upload.assets.create',NULL,NULL,'[]',3,'2021-02-18 23:10:23','2021-02-18 23:10:23'),(8,'plugins::upload.assets.update',NULL,NULL,'[\"admin::is-creator\"]',3,'2021-02-18 23:10:23','2021-02-18 23:10:23'),(9,'plugins::upload.assets.download',NULL,NULL,'[]',3,'2021-02-18 23:10:23','2021-02-18 23:10:23'),(10,'plugins::upload.assets.copy-link',NULL,NULL,'[]',3,'2021-02-18 23:10:23','2021-02-18 23:10:23'),(11,'plugins::content-manager.explorer.create','plugins::users-permissions.user','[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]','[]',1,'2021-02-18 23:10:23','2021-02-18 23:10:24'),(12,'plugins::content-manager.explorer.read','plugins::users-permissions.user','[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]','[]',1,'2021-02-18 23:10:23','2021-02-18 23:10:24'),(13,'plugins::content-manager.explorer.update','plugins::users-permissions.user','[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]','[]',1,'2021-02-18 23:10:23','2021-02-18 23:10:24'),(14,'plugins::content-manager.explorer.delete','plugins::users-permissions.user',NULL,'[]',1,'2021-02-18 23:10:23','2021-02-18 23:10:24'),(15,'plugins::content-type-builder.read',NULL,NULL,'[]',1,'2021-02-18 23:10:23','2021-02-18 23:10:24'),(16,'plugins::upload.read',NULL,NULL,'[]',1,'2021-02-18 23:10:23','2021-02-18 23:10:24'),(17,'plugins::upload.assets.create',NULL,NULL,'[]',1,'2021-02-18 23:10:23','2021-02-18 23:10:24'),(18,'plugins::upload.assets.update',NULL,NULL,'[]',1,'2021-02-18 23:10:23','2021-02-18 23:10:24'),(19,'plugins::upload.assets.download',NULL,NULL,'[]',1,'2021-02-18 23:10:23','2021-02-18 23:10:24'),(20,'plugins::upload.assets.copy-link',NULL,NULL,'[]',1,'2021-02-18 23:10:23','2021-02-18 23:10:24'),(21,'plugins::upload.settings.read',NULL,NULL,'[]',1,'2021-02-18 23:10:24','2021-02-18 23:10:24'),(22,'plugins::content-manager.single-types.configure-view',NULL,NULL,'[]',1,'2021-02-18 23:10:24','2021-02-18 23:10:24'),(23,'plugins::content-manager.collection-types.configure-view',NULL,NULL,'[]',1,'2021-02-18 23:10:24','2021-02-18 23:10:25'),(24,'plugins::content-manager.components.configure-layout',NULL,NULL,'[]',1,'2021-02-18 23:10:24','2021-02-18 23:10:25'),(25,'plugins::users-permissions.roles.create',NULL,NULL,'[]',1,'2021-02-18 23:10:24','2021-02-18 23:10:25'),(26,'plugins::users-permissions.roles.read',NULL,NULL,'[]',1,'2021-02-18 23:10:24','2021-02-18 23:10:25'),(27,'plugins::users-permissions.roles.update',NULL,NULL,'[]',1,'2021-02-18 23:10:24','2021-02-18 23:10:25'),(28,'plugins::users-permissions.roles.delete',NULL,NULL,'[]',1,'2021-02-18 23:10:24','2021-02-18 23:10:25'),(29,'plugins::users-permissions.providers.read',NULL,NULL,'[]',1,'2021-02-18 23:10:24','2021-02-18 23:10:25'),(30,'plugins::users-permissions.providers.update',NULL,NULL,'[]',1,'2021-02-18 23:10:24','2021-02-18 23:10:25'),(31,'plugins::users-permissions.email-templates.read',NULL,NULL,'[]',1,'2021-02-18 23:10:25','2021-02-18 23:10:25'),(32,'plugins::users-permissions.email-templates.update',NULL,NULL,'[]',1,'2021-02-18 23:10:25','2021-02-18 23:10:26'),(33,'plugins::users-permissions.advanced-settings.read',NULL,NULL,'[]',1,'2021-02-18 23:10:26','2021-02-18 23:10:26'),(34,'plugins::users-permissions.advanced-settings.update',NULL,NULL,'[]',1,'2021-02-18 23:10:26','2021-02-18 23:10:26'),(35,'admin::marketplace.read',NULL,NULL,'[]',1,'2021-02-18 23:10:26','2021-02-18 23:10:26'),(36,'admin::marketplace.plugins.install',NULL,NULL,'[]',1,'2021-02-18 23:10:26','2021-02-18 23:10:26'),(37,'admin::marketplace.plugins.uninstall',NULL,NULL,'[]',1,'2021-02-18 23:10:26','2021-02-18 23:10:26'),(38,'admin::webhooks.create',NULL,NULL,'[]',1,'2021-02-18 23:10:26','2021-02-18 23:10:26'),(39,'admin::webhooks.read',NULL,NULL,'[]',1,'2021-02-18 23:10:26','2021-02-18 23:10:26'),(40,'admin::webhooks.update',NULL,NULL,'[]',1,'2021-02-18 23:10:26','2021-02-18 23:10:26'),(41,'admin::webhooks.delete',NULL,NULL,'[]',1,'2021-02-18 23:10:26','2021-02-18 23:10:26'),(42,'admin::users.create',NULL,NULL,'[]',1,'2021-02-18 23:10:26','2021-02-18 23:10:26'),(43,'admin::users.read',NULL,NULL,'[]',1,'2021-02-18 23:10:26','2021-02-18 23:10:27'),(44,'admin::users.update',NULL,NULL,'[]',1,'2021-02-18 23:10:27','2021-02-18 23:10:27'),(45,'admin::users.delete',NULL,NULL,'[]',1,'2021-02-18 23:10:27','2021-02-18 23:10:27'),(46,'admin::roles.create',NULL,NULL,'[]',1,'2021-02-18 23:10:27','2021-02-18 23:10:27'),(47,'admin::roles.read',NULL,NULL,'[]',1,'2021-02-18 23:10:27','2021-02-18 23:10:27'),(48,'admin::roles.update',NULL,NULL,'[]',1,'2021-02-18 23:10:27','2021-02-18 23:10:27'),(49,'admin::roles.delete',NULL,NULL,'[]',1,'2021-02-18 23:10:27','2021-02-18 23:10:28'),(53,'plugins::content-manager.explorer.delete','application::venue.venue',NULL,'[]',1,'2021-02-18 23:16:20','2021-02-18 23:16:20'),(54,'plugins::content-manager.explorer.publish','application::venue.venue',NULL,'[]',1,'2021-02-18 23:16:20','2021-02-18 23:16:20'),(55,'plugins::documentation.read',NULL,NULL,'[]',1,'2021-02-18 23:17:34','2021-02-18 23:17:34'),(56,'plugins::documentation.settings.update',NULL,NULL,'[]',1,'2021-02-18 23:17:34','2021-02-18 23:17:34'),(57,'plugins::documentation.settings.regenerate',NULL,NULL,'[]',1,'2021-02-18 23:17:34','2021-02-18 23:17:34'),(73,'plugins::content-manager.explorer.delete','application::event.event',NULL,'[]',1,'2021-02-18 23:41:09','2021-02-18 23:41:09'),(74,'plugins::content-manager.explorer.publish','application::event.event',NULL,'[]',1,'2021-02-18 23:41:09','2021-02-18 23:41:09'),(78,'plugins::content-manager.explorer.delete','application::orgainizer.orgainizer',NULL,'[]',1,'2021-02-18 23:42:53','2021-02-18 23:42:53'),(79,'plugins::content-manager.explorer.publish','application::orgainizer.orgainizer',NULL,'[]',1,'2021-02-18 23:42:53','2021-02-18 23:42:53'),(80,'plugins::content-manager.explorer.create','application::orgainizer.orgainizer','[\"name\",\"contact.name\",\"contact.number\",\"contact.whatsapp\",\"contact.primary\"]','[]',1,'2021-02-18 23:44:25','2021-02-18 23:44:25'),(81,'plugins::content-manager.explorer.create','application::venue.venue','[\"name\",\"capacity\",\"address.address1\",\"address.address2\",\"address.city\",\"address.state\",\"address.pincode\",\"amenties.CarParking\",\"amenties.Restrooms\",\"amenties.AirConditioning\",\"amenties.Kitchen\",\"amenties.Furnitures\",\"Contacts.name\",\"Contacts.number\",\"Contacts.whatsapp\",\"Contacts.primary\"]','[]',1,'2021-02-18 23:44:25','2021-02-18 23:44:25'),(82,'plugins::content-manager.explorer.read','application::orgainizer.orgainizer','[\"name\",\"contact.name\",\"contact.number\",\"contact.whatsapp\",\"contact.primary\"]','[]',1,'2021-02-18 23:44:25','2021-02-18 23:44:25'),(83,'plugins::content-manager.explorer.read','application::venue.venue','[\"name\",\"capacity\",\"address.address1\",\"address.address2\",\"address.city\",\"address.state\",\"address.pincode\",\"amenties.CarParking\",\"amenties.Restrooms\",\"amenties.AirConditioning\",\"amenties.Kitchen\",\"amenties.Furnitures\",\"Contacts.name\",\"Contacts.number\",\"Contacts.whatsapp\",\"Contacts.primary\"]','[]',1,'2021-02-18 23:44:25','2021-02-18 23:44:25'),(84,'plugins::content-manager.explorer.update','application::orgainizer.orgainizer','[\"name\",\"contact.name\",\"contact.number\",\"contact.whatsapp\",\"contact.primary\"]','[]',1,'2021-02-18 23:44:25','2021-02-18 23:44:25'),(85,'plugins::content-manager.explorer.update','application::venue.venue','[\"name\",\"capacity\",\"address.address1\",\"address.address2\",\"address.city\",\"address.state\",\"address.pincode\",\"amenties.CarParking\",\"amenties.Restrooms\",\"amenties.AirConditioning\",\"amenties.Kitchen\",\"amenties.Furnitures\",\"Contacts.name\",\"Contacts.number\",\"Contacts.whatsapp\",\"Contacts.primary\"]','[]',1,'2021-02-18 23:44:25','2021-02-18 23:44:25'),(89,'plugins::content-manager.explorer.create','application::event.event','[\"name\",\"description\",\"start_date\",\"end_date\",\"type\",\"venue\",\"orgainizer\",\"RSVPContent\"]','[]',1,'2021-02-18 23:49:31','2021-02-18 23:49:31'),(90,'plugins::content-manager.explorer.read','application::event.event','[\"name\",\"description\",\"start_date\",\"end_date\",\"type\",\"venue\",\"orgainizer\",\"RSVPContent\"]','[]',1,'2021-02-18 23:49:31','2021-02-18 23:49:31'),(91,'plugins::content-manager.explorer.update','application::event.event','[\"name\",\"description\",\"start_date\",\"end_date\",\"type\",\"venue\",\"orgainizer\",\"RSVPContent\"]','[]',1,'2021-02-18 23:49:31','2021-02-18 23:49:31'),(92,'plugins::content-manager.explorer.create','application::rsvp.rsvp','[\"event\",\"adult\",\"kids\",\"name\",\"phone\"]','[]',1,'2021-02-18 23:53:03','2021-02-18 23:53:46'),(93,'plugins::content-manager.explorer.read','application::rsvp.rsvp','[\"event\",\"adult\",\"kids\",\"name\",\"phone\"]','[]',1,'2021-02-18 23:53:03','2021-02-18 23:53:46'),(94,'plugins::content-manager.explorer.update','application::rsvp.rsvp','[\"event\",\"adult\",\"kids\",\"name\",\"phone\"]','[]',1,'2021-02-18 23:53:03','2021-02-18 23:53:46'),(95,'plugins::content-manager.explorer.delete','application::rsvp.rsvp',NULL,'[]',1,'2021-02-18 23:53:03','2021-02-18 23:53:03'),(96,'plugins::content-manager.explorer.publish','application::rsvp.rsvp',NULL,'[]',1,'2021-02-18 23:53:03','2021-02-18 23:53:03');
/*!40000 ALTER TABLE `strapi_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_role`
--

DROP TABLE IF EXISTS `strapi_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_role` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_role_name_unique` (`name`),
  UNIQUE KEY `strapi_role_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_role`
--

LOCK TABLES `strapi_role` WRITE;
/*!40000 ALTER TABLE `strapi_role` DISABLE KEYS */;
INSERT INTO `strapi_role` VALUES (1,'Super Admin','strapi-super-admin','Super Admins can access and manage all features and settings.','2021-02-18 23:10:21','2021-02-18 23:10:21'),(2,'Editor','strapi-editor','Editors can manage and publish contents including those of other users.','2021-02-18 23:10:21','2021-02-18 23:10:21'),(3,'Author','strapi-author','Authors can manage the content they have created.','2021-02-18 23:10:22','2021-02-18 23:10:22');
/*!40000 ALTER TABLE `strapi_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_users_roles`
--

DROP TABLE IF EXISTS `strapi_users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_users_roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_users_roles`
--

LOCK TABLES `strapi_users_roles` WRITE;
/*!40000 ALTER TABLE `strapi_users_roles` DISABLE KEYS */;
INSERT INTO `strapi_users_roles` VALUES (1,1,1);
/*!40000 ALTER TABLE `strapi_users_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_webhooks`
--

DROP TABLE IF EXISTS `strapi_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_webhooks` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `headers` longtext,
  `events` longtext,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upload_file` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alternativeText` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `formats` longtext,
  `hash` varchar(255) NOT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) NOT NULL,
  `size` decimal(10,2) NOT NULL,
  `url` varchar(255) NOT NULL,
  `previewUrl` varchar(255) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `provider_metadata` longtext,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upload_file_morph` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `upload_file_id` int DEFAULT NULL,
  `related_id` int DEFAULT NULL,
  `related_type` longtext,
  `field` longtext,
  `order` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users-permissions_permission` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `controller` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `policy` varchar(255) DEFAULT NULL,
  `role` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=310 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_permission`
--

LOCK TABLES `users-permissions_permission` WRITE;
/*!40000 ALTER TABLE `users-permissions_permission` DISABLE KEYS */;
INSERT INTO `users-permissions_permission` VALUES (1,'content-manager','components','findcomponent',0,'',1,NULL,NULL),(2,'content-manager','components','findcomponent',0,'',2,NULL,NULL),(3,'content-manager','components','listcomponents',0,'',1,NULL,NULL),(4,'content-manager','components','listcomponents',0,'',2,NULL,NULL),(5,'content-manager','components','updatecomponent',0,'',1,NULL,NULL),(6,'content-manager','components','updatecomponent',0,'',2,NULL,NULL),(7,'content-manager','contentmanager','checkuidavailability',0,'',1,NULL,NULL),(8,'content-manager','contentmanager','checkuidavailability',0,'',2,NULL,NULL),(9,'content-manager','contentmanager','count',0,'',1,NULL,NULL),(10,'content-manager','contentmanager','count',0,'',2,NULL,NULL),(11,'content-manager','contentmanager','create',0,'',1,NULL,NULL),(12,'content-manager','contentmanager','create',0,'',2,NULL,NULL),(13,'content-manager','contentmanager','delete',0,'',1,NULL,NULL),(14,'content-manager','contentmanager','delete',0,'',2,NULL,NULL),(15,'content-manager','contentmanager','deletemany',0,'',1,NULL,NULL),(16,'content-manager','contentmanager','deletemany',0,'',2,NULL,NULL),(17,'content-manager','contentmanager','find',0,'',1,NULL,NULL),(18,'content-manager','contentmanager','find',0,'',2,NULL,NULL),(19,'content-manager','contentmanager','findone',0,'',1,NULL,NULL),(20,'content-manager','contentmanager','findone',0,'',2,NULL,NULL),(21,'content-manager','contentmanager','findrelationlist',0,'',1,NULL,NULL),(22,'content-manager','contentmanager','findrelationlist',0,'',2,NULL,NULL),(23,'content-manager','contentmanager','generateuid',0,'',1,NULL,NULL),(24,'content-manager','contentmanager','generateuid',0,'',2,NULL,NULL),(25,'content-manager','contentmanager','publish',0,'',1,NULL,NULL),(26,'content-manager','contentmanager','publish',0,'',2,NULL,NULL),(27,'content-manager','contentmanager','unpublish',0,'',1,NULL,NULL),(28,'content-manager','contentmanager','unpublish',0,'',2,NULL,NULL),(29,'content-manager','contentmanager','update',0,'',1,NULL,NULL),(30,'content-manager','contentmanager','update',0,'',2,NULL,NULL),(31,'content-manager','contenttypes','findcontenttype',0,'',1,NULL,NULL),(32,'content-manager','contenttypes','findcontenttype',0,'',2,NULL,NULL),(33,'content-manager','contenttypes','listcontenttypes',0,'',1,NULL,NULL),(34,'content-manager','contenttypes','listcontenttypes',0,'',2,NULL,NULL),(35,'content-manager','contenttypes','updatecontenttype',0,'',1,NULL,NULL),(36,'content-manager','contenttypes','updatecontenttype',0,'',2,NULL,NULL),(37,'content-type-builder','builder','getreservednames',0,'',1,NULL,NULL),(38,'content-type-builder','builder','getreservednames',0,'',2,NULL,NULL),(39,'content-type-builder','componentcategories','deletecategory',0,'',1,NULL,NULL),(40,'content-type-builder','componentcategories','deletecategory',0,'',2,NULL,NULL),(41,'content-type-builder','componentcategories','editcategory',0,'',1,NULL,NULL),(42,'content-type-builder','componentcategories','editcategory',0,'',2,NULL,NULL),(43,'content-type-builder','components','createcomponent',0,'',1,NULL,NULL),(44,'content-type-builder','components','createcomponent',0,'',2,NULL,NULL),(45,'content-type-builder','components','deletecomponent',0,'',1,NULL,NULL),(46,'content-type-builder','components','deletecomponent',0,'',2,NULL,NULL),(47,'content-type-builder','components','getcomponent',0,'',1,NULL,NULL),(48,'content-type-builder','components','getcomponent',0,'',2,NULL,NULL),(49,'content-type-builder','components','getcomponents',0,'',1,NULL,NULL),(50,'content-type-builder','components','getcomponents',0,'',2,NULL,NULL),(51,'content-type-builder','components','updatecomponent',0,'',1,NULL,NULL),(52,'content-type-builder','components','updatecomponent',0,'',2,NULL,NULL),(53,'content-type-builder','connections','getconnections',0,'',1,NULL,NULL),(54,'content-type-builder','connections','getconnections',0,'',2,NULL,NULL),(55,'content-type-builder','contenttypes','createcontenttype',0,'',1,NULL,NULL),(56,'content-type-builder','contenttypes','createcontenttype',0,'',2,NULL,NULL),(57,'content-type-builder','contenttypes','deletecontenttype',0,'',1,NULL,NULL),(58,'content-type-builder','contenttypes','deletecontenttype',0,'',2,NULL,NULL),(59,'content-type-builder','contenttypes','getcontenttype',0,'',1,NULL,NULL),(60,'content-type-builder','contenttypes','getcontenttype',0,'',2,NULL,NULL),(61,'content-type-builder','contenttypes','getcontenttypes',0,'',1,NULL,NULL),(62,'content-type-builder','contenttypes','getcontenttypes',0,'',2,NULL,NULL),(63,'content-type-builder','contenttypes','updatecontenttype',0,'',1,NULL,NULL),(64,'content-type-builder','contenttypes','updatecontenttype',0,'',2,NULL,NULL),(65,'email','email','send',0,'',1,NULL,NULL),(66,'email','email','send',0,'',2,NULL,NULL),(67,'upload','upload','count',0,'',1,NULL,NULL),(68,'upload','upload','count',0,'',2,NULL,NULL),(69,'upload','upload','destroy',0,'',1,NULL,NULL),(70,'upload','upload','destroy',0,'',2,NULL,NULL),(71,'upload','upload','find',0,'',1,NULL,NULL),(72,'upload','upload','find',0,'',2,NULL,NULL),(73,'upload','upload','findone',0,'',1,NULL,NULL),(74,'upload','upload','findone',0,'',2,NULL,NULL),(75,'upload','upload','getsettings',0,'',1,NULL,NULL),(76,'upload','upload','getsettings',0,'',2,NULL,NULL),(77,'upload','upload','search',0,'',1,NULL,NULL),(78,'upload','upload','search',0,'',2,NULL,NULL),(79,'upload','upload','updatesettings',0,'',1,NULL,NULL),(80,'upload','upload','updatesettings',0,'',2,NULL,NULL),(81,'upload','upload','upload',0,'',1,NULL,NULL),(82,'upload','upload','upload',0,'',2,NULL,NULL),(83,'users-permissions','auth','callback',0,'',1,NULL,NULL),(84,'users-permissions','auth','callback',1,'',2,NULL,NULL),(85,'users-permissions','auth','connect',1,'',1,NULL,NULL),(86,'users-permissions','auth','connect',1,'',2,NULL,NULL),(87,'users-permissions','auth','emailconfirmation',0,'',1,NULL,NULL),(88,'users-permissions','auth','emailconfirmation',1,'',2,NULL,NULL),(89,'users-permissions','auth','forgotpassword',0,'',1,NULL,NULL),(90,'users-permissions','auth','forgotpassword',1,'',2,NULL,NULL),(91,'users-permissions','auth','register',0,'',1,NULL,NULL),(92,'users-permissions','auth','register',1,'',2,NULL,NULL),(93,'users-permissions','auth','resetpassword',0,'',1,NULL,NULL),(94,'users-permissions','auth','resetpassword',1,'',2,NULL,NULL),(95,'users-permissions','auth','sendemailconfirmation',0,'',1,NULL,NULL),(96,'users-permissions','auth','sendemailconfirmation',0,'',2,NULL,NULL),(97,'users-permissions','user','count',0,'',1,NULL,NULL),(98,'users-permissions','user','count',0,'',2,NULL,NULL),(99,'users-permissions','user','create',0,'',1,NULL,NULL),(100,'users-permissions','user','create',0,'',2,NULL,NULL),(101,'users-permissions','user','destroy',0,'',1,NULL,NULL),(102,'users-permissions','user','destroy',0,'',2,NULL,NULL),(103,'users-permissions','user','destroyall',0,'',1,NULL,NULL),(104,'users-permissions','user','destroyall',0,'',2,NULL,NULL),(105,'users-permissions','user','find',0,'',1,NULL,NULL),(106,'users-permissions','user','find',0,'',2,NULL,NULL),(107,'users-permissions','user','findone',0,'',1,NULL,NULL),(108,'users-permissions','user','findone',0,'',2,NULL,NULL),(109,'users-permissions','user','me',1,'',1,NULL,NULL),(110,'users-permissions','user','me',1,'',2,NULL,NULL),(111,'users-permissions','user','update',0,'',1,NULL,NULL),(112,'users-permissions','user','update',0,'',2,NULL,NULL),(113,'users-permissions','userspermissions','createrole',0,'',1,NULL,NULL),(114,'users-permissions','userspermissions','createrole',0,'',2,NULL,NULL),(115,'users-permissions','userspermissions','deleterole',0,'',1,NULL,NULL),(116,'users-permissions','userspermissions','deleterole',0,'',2,NULL,NULL),(117,'users-permissions','userspermissions','getadvancedsettings',0,'',1,NULL,NULL),(118,'users-permissions','userspermissions','getadvancedsettings',0,'',2,NULL,NULL),(119,'users-permissions','userspermissions','getemailtemplate',0,'',1,NULL,NULL),(120,'users-permissions','userspermissions','getemailtemplate',0,'',2,NULL,NULL),(121,'users-permissions','userspermissions','getpermissions',0,'',1,NULL,NULL),(122,'users-permissions','userspermissions','getpermissions',0,'',2,NULL,NULL),(123,'users-permissions','userspermissions','getpolicies',0,'',1,NULL,NULL),(124,'users-permissions','userspermissions','getpolicies',0,'',2,NULL,NULL),(125,'users-permissions','userspermissions','getproviders',0,'',1,NULL,NULL),(126,'users-permissions','userspermissions','getproviders',0,'',2,NULL,NULL),(127,'users-permissions','userspermissions','getrole',0,'',1,NULL,NULL),(128,'users-permissions','userspermissions','getrole',0,'',2,NULL,NULL),(129,'users-permissions','userspermissions','getroles',0,'',1,NULL,NULL),(130,'users-permissions','userspermissions','getroles',0,'',2,NULL,NULL),(131,'users-permissions','userspermissions','getroutes',0,'',1,NULL,NULL),(132,'users-permissions','userspermissions','getroutes',0,'',2,NULL,NULL),(133,'users-permissions','userspermissions','index',0,'',1,NULL,NULL),(134,'users-permissions','userspermissions','index',0,'',2,NULL,NULL),(135,'users-permissions','userspermissions','searchusers',0,'',1,NULL,NULL),(136,'users-permissions','userspermissions','searchusers',0,'',2,NULL,NULL),(137,'users-permissions','userspermissions','updateadvancedsettings',0,'',1,NULL,NULL),(138,'users-permissions','userspermissions','updateadvancedsettings',0,'',2,NULL,NULL),(139,'users-permissions','userspermissions','updateemailtemplate',0,'',1,NULL,NULL),(140,'users-permissions','userspermissions','updateemailtemplate',0,'',2,NULL,NULL),(141,'users-permissions','userspermissions','updateproviders',0,'',1,NULL,NULL),(142,'users-permissions','userspermissions','updateproviders',0,'',2,NULL,NULL),(143,'users-permissions','userspermissions','updaterole',0,'',1,NULL,NULL),(144,'users-permissions','userspermissions','updaterole',0,'',2,NULL,NULL),(145,'application','venue','count',0,'',1,NULL,NULL),(146,'application','venue','count',0,'',2,NULL,NULL),(147,'application','venue','create',0,'',1,NULL,NULL),(148,'application','venue','create',0,'',2,NULL,NULL),(149,'application','venue','delete',0,'',1,NULL,NULL),(150,'application','venue','delete',0,'',2,NULL,NULL),(151,'application','venue','find',0,'',1,NULL,NULL),(152,'application','venue','find',0,'',2,NULL,NULL),(153,'application','venue','findone',0,'',1,NULL,NULL),(154,'application','venue','findone',0,'',2,NULL,NULL),(155,'application','venue','update',0,'',1,NULL,NULL),(156,'application','venue','update',0,'',2,NULL,NULL),(157,'documentation','documentation','deletedoc',0,'',1,NULL,NULL),(158,'documentation','documentation','deletedoc',0,'',2,NULL,NULL),(159,'documentation','documentation','getinfos',0,'',1,NULL,NULL),(160,'documentation','documentation','getinfos',0,'',2,NULL,NULL),(161,'documentation','documentation','index',0,'',1,NULL,NULL),(162,'documentation','documentation','index',0,'',2,NULL,NULL),(163,'documentation','documentation','login',0,'',1,NULL,NULL),(164,'documentation','documentation','login',0,'',2,NULL,NULL),(165,'documentation','documentation','loginview',0,'',1,NULL,NULL),(166,'documentation','documentation','loginview',0,'',2,NULL,NULL),(167,'documentation','documentation','regeneratedoc',0,'',1,NULL,NULL),(168,'documentation','documentation','regeneratedoc',0,'',2,NULL,NULL),(169,'documentation','documentation','updatesettings',0,'',1,NULL,NULL),(170,'documentation','documentation','updatesettings',0,'',2,NULL,NULL),(171,'application','event','count',0,'',1,NULL,NULL),(172,'application','event','count',0,'',2,NULL,NULL),(173,'application','event','create',0,'',1,NULL,NULL),(174,'application','event','create',0,'',2,NULL,NULL),(175,'application','event','delete',0,'',1,NULL,NULL),(176,'application','event','delete',0,'',2,NULL,NULL),(177,'application','event','find',0,'',1,NULL,NULL),(178,'application','event','find',0,'',2,NULL,NULL),(179,'application','event','findone',0,'',1,NULL,NULL),(180,'application','event','findone',0,'',2,NULL,NULL),(181,'application','event','update',0,'',1,NULL,NULL),(182,'application','event','update',0,'',2,NULL,NULL),(183,'application','orgainizer','count',0,'',1,NULL,NULL),(184,'application','orgainizer','count',0,'',2,NULL,NULL),(185,'application','orgainizer','create',0,'',1,NULL,NULL),(186,'application','orgainizer','create',0,'',2,NULL,NULL),(187,'application','orgainizer','delete',0,'',1,NULL,NULL),(188,'application','orgainizer','delete',0,'',2,NULL,NULL),(189,'application','orgainizer','find',0,'',1,NULL,NULL),(190,'application','orgainizer','find',0,'',2,NULL,NULL),(191,'application','orgainizer','findone',0,'',1,NULL,NULL),(192,'application','orgainizer','findone',0,'',2,NULL,NULL),(193,'application','orgainizer','update',0,'',1,NULL,NULL),(194,'application','orgainizer','update',0,'',2,NULL,NULL),(195,'application','rsvp','count',0,'',1,NULL,NULL),(196,'application','rsvp','count',0,'',2,NULL,NULL),(197,'application','rsvp','create',0,'',1,NULL,NULL),(198,'application','rsvp','create',0,'',2,NULL,NULL),(199,'application','rsvp','delete',0,'',1,NULL,NULL),(200,'application','rsvp','delete',0,'',2,NULL,NULL),(201,'application','rsvp','find',0,'',1,NULL,NULL),(202,'application','rsvp','find',0,'',2,NULL,NULL),(203,'application','rsvp','findone',0,'',1,NULL,NULL),(204,'application','rsvp','findone',0,'',2,NULL,NULL),(205,'application','rsvp','update',0,'',1,NULL,NULL),(206,'application','rsvp','update',0,'',2,NULL,NULL),(207,'application','event','find',0,'',3,NULL,NULL),(208,'application','event','findone',0,'',3,NULL,NULL),(209,'application','event','count',0,'',3,NULL,NULL),(210,'application','event','create',0,'',3,NULL,NULL),(211,'application','event','update',0,'',3,NULL,NULL),(212,'application','event','delete',0,'',3,NULL,NULL),(213,'application','orgainizer','find',0,'',3,NULL,NULL),(214,'application','orgainizer','findone',0,'',3,NULL,NULL),(215,'application','orgainizer','count',0,'',3,NULL,NULL),(216,'application','orgainizer','create',0,'',3,NULL,NULL),(217,'application','orgainizer','update',0,'',3,NULL,NULL),(218,'application','orgainizer','delete',0,'',3,NULL,NULL),(219,'application','rsvp','find',0,'',3,NULL,NULL),(220,'application','rsvp','findone',0,'',3,NULL,NULL),(221,'application','rsvp','count',0,'',3,NULL,NULL),(222,'application','rsvp','create',0,'',3,NULL,NULL),(223,'application','rsvp','update',0,'',3,NULL,NULL),(224,'application','rsvp','delete',0,'',3,NULL,NULL),(225,'application','venue','find',0,'',3,NULL,NULL),(226,'application','venue','findone',0,'',3,NULL,NULL),(227,'application','venue','count',0,'',3,NULL,NULL),(228,'application','venue','create',0,'',3,NULL,NULL),(229,'application','venue','update',0,'',3,NULL,NULL),(230,'application','venue','delete',0,'',3,NULL,NULL),(231,'content-manager','components','listcomponents',0,'',3,NULL,NULL),(232,'content-manager','components','findcomponent',0,'',3,NULL,NULL),(233,'content-manager','components','updatecomponent',0,'',3,NULL,NULL),(234,'content-manager','contentmanager','generateuid',0,'',3,NULL,NULL),(235,'content-manager','contentmanager','checkuidavailability',0,'',3,NULL,NULL),(236,'content-manager','contentmanager','find',0,'',3,NULL,NULL),(237,'content-manager','contentmanager','findone',0,'',3,NULL,NULL),(238,'content-manager','contentmanager','count',0,'',3,NULL,NULL),(239,'content-manager','contentmanager','create',0,'',3,NULL,NULL),(240,'content-manager','contentmanager','update',0,'',3,NULL,NULL),(241,'content-manager','contentmanager','delete',0,'',3,NULL,NULL),(242,'content-manager','contentmanager','deletemany',0,'',3,NULL,NULL),(243,'content-manager','contentmanager','publish',0,'',3,NULL,NULL),(244,'content-manager','contentmanager','unpublish',0,'',3,NULL,NULL),(245,'content-manager','contentmanager','findrelationlist',0,'',3,NULL,NULL),(246,'content-manager','contenttypes','listcontenttypes',0,'',3,NULL,NULL),(247,'content-manager','contenttypes','findcontenttype',0,'',3,NULL,NULL),(248,'content-manager','contenttypes','updatecontenttype',0,'',3,NULL,NULL),(249,'content-type-builder','builder','getreservednames',0,'',3,NULL,NULL),(250,'content-type-builder','componentcategories','editcategory',0,'',3,NULL,NULL),(251,'content-type-builder','componentcategories','deletecategory',0,'',3,NULL,NULL),(252,'content-type-builder','components','getcomponents',0,'',3,NULL,NULL),(253,'content-type-builder','components','getcomponent',0,'',3,NULL,NULL),(254,'content-type-builder','components','createcomponent',0,'',3,NULL,NULL),(255,'content-type-builder','components','updatecomponent',0,'',3,NULL,NULL),(256,'content-type-builder','components','deletecomponent',0,'',3,NULL,NULL),(257,'content-type-builder','connections','getconnections',0,'',3,NULL,NULL),(258,'content-type-builder','contenttypes','getcontenttypes',0,'',3,NULL,NULL),(259,'content-type-builder','contenttypes','getcontenttype',0,'',3,NULL,NULL),(260,'content-type-builder','contenttypes','createcontenttype',0,'',3,NULL,NULL),(261,'content-type-builder','contenttypes','updatecontenttype',0,'',3,NULL,NULL),(262,'content-type-builder','contenttypes','deletecontenttype',0,'',3,NULL,NULL),(263,'documentation','documentation','getinfos',0,'',3,NULL,NULL),(264,'documentation','documentation','index',0,'',3,NULL,NULL),(265,'documentation','documentation','loginview',0,'',3,NULL,NULL),(266,'documentation','documentation','login',0,'',3,NULL,NULL),(267,'documentation','documentation','regeneratedoc',0,'',3,NULL,NULL),(268,'documentation','documentation','deletedoc',0,'',3,NULL,NULL),(269,'documentation','documentation','updatesettings',0,'',3,NULL,NULL),(270,'email','email','send',0,'',3,NULL,NULL),(271,'upload','upload','find',0,'',3,NULL,NULL),(272,'upload','upload','findone',0,'',3,NULL,NULL),(273,'upload','upload','count',0,'',3,NULL,NULL),(274,'upload','upload','destroy',0,'',3,NULL,NULL),(275,'upload','upload','updatesettings',0,'',3,NULL,NULL),(276,'upload','upload','getsettings',0,'',3,NULL,NULL),(277,'upload','upload','upload',0,'',3,NULL,NULL),(278,'upload','upload','search',0,'',3,NULL,NULL),(279,'users-permissions','auth','callback',0,'',3,NULL,NULL),(280,'users-permissions','auth','resetpassword',0,'',3,NULL,NULL),(281,'users-permissions','auth','connect',0,'',3,NULL,NULL),(282,'users-permissions','auth','forgotpassword',0,'',3,NULL,NULL),(283,'users-permissions','auth','register',0,'',3,NULL,NULL),(284,'users-permissions','auth','emailconfirmation',0,'',3,NULL,NULL),(285,'users-permissions','auth','sendemailconfirmation',0,'',3,NULL,NULL),(286,'users-permissions','user','create',0,'',3,NULL,NULL),(287,'users-permissions','user','update',0,'',3,NULL,NULL),(288,'users-permissions','user','find',0,'',3,NULL,NULL),(289,'users-permissions','user','findone',0,'',3,NULL,NULL),(290,'users-permissions','user','count',0,'',3,NULL,NULL),(291,'users-permissions','user','destroy',0,'',3,NULL,NULL),(292,'users-permissions','user','destroyall',0,'',3,NULL,NULL),(293,'users-permissions','user','me',0,'',3,NULL,NULL),(294,'users-permissions','userspermissions','createrole',0,'',3,NULL,NULL),(295,'users-permissions','userspermissions','deleterole',0,'',3,NULL,NULL),(296,'users-permissions','userspermissions','getpermissions',0,'',3,NULL,NULL),(297,'users-permissions','userspermissions','getpolicies',0,'',3,NULL,NULL),(298,'users-permissions','userspermissions','getrole',0,'',3,NULL,NULL),(299,'users-permissions','userspermissions','getroles',0,'',3,NULL,NULL),(300,'users-permissions','userspermissions','getroutes',0,'',3,NULL,NULL),(301,'users-permissions','userspermissions','index',0,'',3,NULL,NULL),(302,'users-permissions','userspermissions','searchusers',0,'',3,NULL,NULL),(303,'users-permissions','userspermissions','updaterole',0,'',3,NULL,NULL),(304,'users-permissions','userspermissions','getemailtemplate',0,'',3,NULL,NULL),(305,'users-permissions','userspermissions','updateemailtemplate',0,'',3,NULL,NULL),(306,'users-permissions','userspermissions','getadvancedsettings',0,'',3,NULL,NULL),(307,'users-permissions','userspermissions','updateadvancedsettings',0,'',3,NULL,NULL),(308,'users-permissions','userspermissions','getproviders',0,'',3,NULL,NULL),(309,'users-permissions','userspermissions','updateproviders',0,'',3,NULL,NULL);
/*!40000 ALTER TABLE `users-permissions_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_role`
--

DROP TABLE IF EXISTS `users-permissions_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users-permissions_role` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users-permissions_role_type_unique` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_role`
--

LOCK TABLES `users-permissions_role` WRITE;
/*!40000 ALTER TABLE `users-permissions_role` DISABLE KEYS */;
INSERT INTO `users-permissions_role` VALUES (1,'Authenticated','Default role given to authenticated user.','authenticated',NULL,NULL),(2,'Public','Default role given to unauthenticated user.','public',NULL,NULL),(3,'Orgainizer','event orgainizer','orgainizer',NULL,NULL);
/*!40000 ALTER TABLE `users-permissions_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_user`
--

DROP TABLE IF EXISTS `users-permissions_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users-permissions_user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `confirmationToken` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `role` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users-permissions_user_username_unique` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_user`
--

LOCK TABLES `users-permissions_user` WRITE;
/*!40000 ALTER TABLE `users-permissions_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `users-permissions_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venues`
--

DROP TABLE IF EXISTS `venues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venues` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `capacity` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venues`
--

LOCK TABLES `venues` WRITE;
/*!40000 ALTER TABLE `venues` DISABLE KEYS */;
/*!40000 ALTER TABLE `venues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venues_components`
--

DROP TABLE IF EXISTS `venues_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venues_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL,
  `order` int unsigned NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int NOT NULL,
  `venue_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `venue_id_fk` (`venue_id`),
  CONSTRAINT `venue_id_fk` FOREIGN KEY (`venue_id`) REFERENCES `venues` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venues_components`
--

LOCK TABLES `venues_components` WRITE;
/*!40000 ALTER TABLE `venues_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `venues_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'proserve'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-19 11:47:23
