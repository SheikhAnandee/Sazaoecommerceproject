-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `abouts`
--

DROP TABLE IF EXISTS `abouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abouts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abouts`
--

LOCK TABLES `abouts` WRITE;
/*!40000 ALTER TABLE `abouts` DISABLE KEYS */;
INSERT INTO `abouts` VALUES (1,'<p><strong>About Sazao</strong></p><p>Sazao is your go-to online marketplace, connecting you with a diverse range of products from trusted vendors. We aim to make shopping easy, secure, and enjoyable, offering everything you need in one place. At Sazao, quality and customer satisfaction are our top priorities. Discover more, shop smart, and experience the best with Sazao.</p>','2024-08-29 16:05:24','2024-08-29 16:05:24');
/*!40000 ALTER TABLE `abouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `advertisements`
--

DROP TABLE IF EXISTS `advertisements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `advertisements` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advertisements`
--

LOCK TABLES `advertisements` WRITE;
/*!40000 ALTER TABLE `advertisements` DISABLE KEYS */;
INSERT INTO `advertisements` VALUES (3,'homepage_section_banner_two','{\"banner_one\":{\"banner_url\":\"test\",\"status\":1,\"banner_image\":\"uploads\\/media_66cd2ac7bbc8b_jpg\"},\"banner_two\":{\"banner_url\":\"mjhbgvc\",\"status\":1,\"banner_image\":\"uploads\\/media_66cd1e43f190c_jpg\"}}','2024-08-26 23:34:29','2024-08-27 14:29:12'),(5,'productpage_banner_section','{\"banner_one\":{\"banner_url\":\"http:\\/\\/ecommerce.test\\/\",\"status\":1,\"banner_image\":\"uploads\\/media_66cd1c7da8459_jpg\"}}','2024-08-27 00:23:25','2024-08-27 16:03:09'),(7,'homepage_section_banner_three','{\"banner_one\":{\"banner_url\":\"testbvg\",\"status\":1,\"banner_image\":\"uploads\\/media_66cd26c393eb0_jpg\"},\"banner_two\":{\"banner_url\":\"mjhbgvc\",\"status\":1,\"banner_image\":\"uploads\\/media_66cd234a75ebd_jpg\"},\"banner_three\":{\"banner_url\":\"testmnbvc\",\"status\":1,\"banner_image\":\"uploads\\/media_66cd234a76322_jpg\"}}','2024-08-27 00:52:26','2024-08-27 01:07:15'),(8,'homepage_section_banner_four','{\"banner_one\":{\"banner_url\":\"jhgfdsz\",\"status\":1,\"banner_image\":\"uploads\\/media_66cd2e28e2c18_jpg\"}}','2024-08-27 01:38:48','2024-08-27 15:04:31'),(9,'cartpage_banner_section','{\"banner_one\":{\"banner_url\":\"mnbvc\",\"status\":1,\"banner_image\":\"uploads\\/media_66ce01983ec67_jpg\"},\"banner_two\":{\"banner_url\":\"nbv\",\"status\":1,\"banner_image\":\"uploads\\/media_66ce01983f102_jpg\"}}','2024-08-27 01:44:25','2024-08-27 16:40:56'),(10,'homepage_section_banner_one','{\"banner_one\":{\"banner_url\":\"http:\\/\\/ecommerce.test\\/\",\"status\":1,\"banner_image\":\"uploads\\/media_66cddcd95a50b_jpg\"}}','2024-08-27 13:16:34','2024-08-27 14:04:09');
/*!40000 ALTER TABLE `advertisements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_categories`
--

DROP TABLE IF EXISTS `blog_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_categories`
--

LOCK TABLES `blog_categories` WRITE;
/*!40000 ALTER TABLE `blog_categories` DISABLE KEYS */;
INSERT INTO `blog_categories` VALUES (1,'Fashion','fashion',1,'2024-08-30 16:08:25','2024-08-30 18:27:42'),(2,'Home Decore','home-decore',1,'2024-08-30 18:28:13','2024-08-30 18:28:13');
/*!40000 ALTER TABLE `blog_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_comments`
--

DROP TABLE IF EXISTS `blog_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_comments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `blog_id` int NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_comments`
--

LOCK TABLES `blog_comments` WRITE;
/*!40000 ALTER TABLE `blog_comments` DISABLE KEYS */;
INSERT INTO `blog_comments` VALUES (1,3,4,'nice blog','2024-08-31 09:32:06','2024-08-31 09:32:06');
/*!40000 ALTER TABLE `blog_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `category_id` int NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (3,1,1,'uploads/media_66d24e9968d72_jpg','test blog','test-blog','<p>mnbvcmnbvc<strong style=\"margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br></span><strong style=\"margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br></span><strong style=\"margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><span style=\"font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\"><br></span></p>','kjhvc','bvojhgcxcvb',1,'2024-08-30 16:58:33','2024-08-30 18:29:15'),(4,1,2,'uploads/media_66d24fd46c78a_jpg','test blog 1','test-blog-1','<strong style=\"margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br></span><strong style=\"margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><span style=\"font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\"><br></span>',NULL,NULL,1,'2024-08-30 17:03:48','2024-08-30 18:29:01');
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `logo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (2,'uploads/media_66c65156445fa_jpg','mobile express','mobile-express',1,1,'2024-07-25 04:13:23','2024-08-21 20:43:02'),(3,'uploads/media_66c6517337ee1_jpg','wholesale','wholesale',1,1,'2024-08-21 20:27:36','2024-08-21 20:43:31'),(4,'uploads/media_66c651e77f5e6_jpg','khaleque and sons','khaleque-and-sons',1,1,'2024-08-21 20:45:27','2024-08-21 20:45:27'),(5,'uploads/media_66c6520308612_jpg','littele india','littele-india',1,1,'2024-08-21 20:45:55','2024-08-21 20:45:55'),(6,'uploads/media_66c652399c77d_jpg','meenaclick','meenaclick',1,1,'2024-08-21 20:46:49','2024-08-21 20:46:49'),(7,'uploads/media_66c6525201a9f_jpg','unimart','unimart',1,1,'2024-08-21 20:47:14','2024-08-21 20:47:14'),(8,'uploads/media_66c6527362505_jpg','bengalmeat','bengalmeat',1,1,'2024-08-21 20:47:47','2024-08-21 20:47:47');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (9,'Fashion','fashion','fas fa-tshirt',1,'2024-07-18 04:15:00','2024-08-28 07:12:35'),(10,'Electronics','electronics','fas fa-tv',1,'2024-07-18 04:15:36','2024-07-18 04:15:36'),(11,'Furniture','furniture','fas fa-couch',1,'2024-07-18 04:38:49','2024-07-18 04:38:49'),(12,'Smart Phones','smart-phones','fas fa-mobile-alt',1,'2024-07-18 04:40:29','2024-07-18 04:40:29'),(13,'Home & Garden','home-garden','fas fa-home',1,'2024-07-18 04:41:22','2024-07-18 04:41:22'),(14,'Accessories','accessories','fas fa-camera',1,'2024-07-18 04:43:25','2024-07-18 04:43:25'),(15,'Health and Beauty','health-and-beauty','fas fa-heart',1,'2024-07-18 04:44:55','2024-07-18 04:44:55'),(16,'Gift Ideas','gift-ideas','fas fa-gift',1,'2024-07-18 04:45:29','2024-07-18 04:45:29'),(17,'Games and Toys','games-and-toys','fas fa-gamepad',0,'2024-07-18 04:46:02','2024-07-18 07:14:25'),(19,'Hot Promotions','hot-promotions','fas fa-star',0,'2024-07-18 06:54:27','2024-07-18 07:08:43');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `child_categories`
--

DROP TABLE IF EXISTS `child_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `child_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `sub_category_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `child_categories`
--

LOCK TABLES `child_categories` WRITE;
/*!40000 ALTER TABLE `child_categories` DISABLE KEYS */;
INSERT INTO `child_categories` VALUES (5,9,9,'Trending','trending',1,'2024-07-18 05:27:56','2024-07-18 05:27:56'),(6,9,9,'Clothing','clothing',1,'2024-07-18 05:28:36','2024-07-18 05:28:36'),(7,9,9,'Bags','bags',1,'2024-07-18 05:28:58','2024-07-24 11:14:14'),(8,10,19,'Camera','camera',1,'2024-07-24 11:14:47','2024-07-24 11:14:47'),(9,9,21,'formal pant','formal-pant',1,'2024-07-25 00:00:24','2024-07-25 00:00:24');
/*!40000 ALTER TABLE `child_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cod_settings`
--

DROP TABLE IF EXISTS `cod_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cod_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cod_settings`
--

LOCK TABLES `cod_settings` WRITE;
/*!40000 ALTER TABLE `cod_settings` DISABLE KEYS */;
INSERT INTO `cod_settings` VALUES (1,1,'2024-09-01 12:38:15','2024-09-01 12:38:15');
/*!40000 ALTER TABLE `cod_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coupons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int NOT NULL,
  `max_use` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `discount_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` double NOT NULL,
  `status` tinyint(1) NOT NULL,
  `total_used` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
INSERT INTO `coupons` VALUES (1,'5%Discount','123coupon',100,3,'2024-07-28','2024-09-11','percent',15,1,0,'2024-07-27 12:59:39','2024-07-27 13:05:48'),(3,'bumpercoupon','123',10,5,'2024-07-30','2024-08-28','percent',50,1,0,'2024-07-30 04:30:56','2024-08-18 16:15:39');
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_configurations`
--

DROP TABLE IF EXISTS `email_configurations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_configurations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `host` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `port` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `encryption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_configurations`
--

LOCK TABLES `email_configurations` WRITE;
/*!40000 ALTER TABLE `email_configurations` DISABLE KEYS */;
INSERT INTO `email_configurations` VALUES (1,'support@sazao.com','sandbox.smtp.mailtrap.io','a58f2d0635b1ab','59ddbab4eacb37','2525','tls','2024-08-25 19:55:26','2024-08-26 20:19:11');
/*!40000 ALTER TABLE `email_configurations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flash_sale_items`
--

DROP TABLE IF EXISTS `flash_sale_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flash_sale_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `flash_sale_id` int NOT NULL,
  `show_at_home` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flash_sale_items`
--

LOCK TABLES `flash_sale_items` WRITE;
/*!40000 ALTER TABLE `flash_sale_items` DISABLE KEYS */;
INSERT INTO `flash_sale_items` VALUES (9,9,1,1,1,'2024-08-23 21:38:14','2024-08-23 21:38:14'),(10,8,1,1,1,'2024-08-23 21:38:27','2024-08-28 07:11:49'),(11,7,1,1,1,'2024-08-23 21:38:48','2024-08-23 21:38:48');
/*!40000 ALTER TABLE `flash_sale_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flash_sales`
--

DROP TABLE IF EXISTS `flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flash_sales`
--

LOCK TABLES `flash_sales` WRITE;
/*!40000 ALTER TABLE `flash_sales` DISABLE KEYS */;
INSERT INTO `flash_sales` VALUES (1,'2024-12-24','2024-07-26 07:37:47','2024-08-18 11:00:43');
/*!40000 ALTER TABLE `flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `footer_grid_threes`
--

DROP TABLE IF EXISTS `footer_grid_threes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `footer_grid_threes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `footer_grid_threes`
--

LOCK TABLES `footer_grid_threes` WRITE;
/*!40000 ALTER TABLE `footer_grid_threes` DISABLE KEYS */;
INSERT INTO `footer_grid_threes` VALUES (1,'About Us','http://ecommerce.test/',1,'2024-08-25 14:10:24','2024-08-25 14:15:40');
/*!40000 ALTER TABLE `footer_grid_threes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `footer_grid_twos`
--

DROP TABLE IF EXISTS `footer_grid_twos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `footer_grid_twos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `footer_grid_twos`
--

LOCK TABLES `footer_grid_twos` WRITE;
/*!40000 ALTER TABLE `footer_grid_twos` DISABLE KEYS */;
INSERT INTO `footer_grid_twos` VALUES (2,'FAQ','http://ecommerce.test/',1,'2024-08-25 13:17:38','2024-08-25 14:16:04');
/*!40000 ALTER TABLE `footer_grid_twos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `footer_infos`
--

DROP TABLE IF EXISTS `footer_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `footer_infos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `logo` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `copyright` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `footer_infos`
--

LOCK TABLES `footer_infos` WRITE;
/*!40000 ALTER TABLE `footer_infos` DISABLE KEYS */;
INSERT INTO `footer_infos` VALUES (1,'uploads/media_66ca47ffe3da1_png','01212133','sazao123@gmail.com','E-14/X, ICT Tower (14th Floor), Agargaon, Dhaka - 1207, Bangladesh.','Copyright © 2024 Sazao shop. All Rights Reserved.','2024-08-24 20:38:24','2024-08-24 20:52:15');
/*!40000 ALTER TABLE `footer_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `footer_socials`
--

DROP TABLE IF EXISTS `footer_socials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `footer_socials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `footer_socials`
--

LOCK TABLES `footer_socials` WRITE;
/*!40000 ALTER TABLE `footer_socials` DISABLE KEYS */;
INSERT INTO `footer_socials` VALUES (1,'fab fa-facebook-f','facebook','https://www.facebook.com/',1,'2024-08-24 21:29:11','2024-08-24 21:29:11'),(2,'fab fa-twitter','twitter','https://x.com/',1,'2024-08-24 21:44:17','2024-08-24 21:51:03'),(3,'fab fa-whatsapp','whatsapp','https://web.whatsapp.com/',1,'2024-08-24 21:45:13','2024-08-24 21:45:13'),(4,'fab fa-instagram','instagram','https://www.instagram.com/',1,'2024-08-24 21:46:23','2024-08-24 21:46:23'),(5,'fab fa-linkedin-in','linkedin','https://bd.linkedin.com/',1,'2024-08-24 21:48:20','2024-08-24 21:48:20');
/*!40000 ALTER TABLE `footer_socials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `footer_titles`
--

DROP TABLE IF EXISTS `footer_titles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `footer_titles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `footer_grid_two_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_grid_three_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `footer_titles`
--

LOCK TABLES `footer_titles` WRITE;
/*!40000 ALTER TABLE `footer_titles` DISABLE KEYS */;
INSERT INTO `footer_titles` VALUES (1,'More Links','Help Links','2024-08-25 13:40:48','2024-08-25 14:08:42');
/*!40000 ALTER TABLE `footer_titles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_settings`
--

DROP TABLE IF EXISTS `general_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `general_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `layout` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `currency_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_zone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_settings`
--

LOCK TABLES `general_settings` WRITE;
/*!40000 ALTER TABLE `general_settings` DISABLE KEYS */;
INSERT INTO `general_settings` VALUES (1,'Sazao','LTR','contact@sazao.com','+69522145000001','E-14/X, ICT Tower (14th Floor), Agargaon, Dhaka - 1207, Bangladesh.','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3650.1435090089785!2d90.42196781465853!3d23.81349539228068!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c62fb95f16c1%3A0xb333248370356dee!2sJamuna%20Future%20Park!5e0!3m2!1sen!2sbd!4v1639724859199!5m2!1sen!2sbd','USD','$','Asia/Dhaka','2024-08-18 16:53:28','2024-09-01 08:06:03');
/*!40000 ALTER TABLE `general_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_page_settings`
--

DROP TABLE IF EXISTS `home_page_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_page_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_page_settings`
--

LOCK TABLES `home_page_settings` WRITE;
/*!40000 ALTER TABLE `home_page_settings` DISABLE KEYS */;
INSERT INTO `home_page_settings` VALUES (3,'product_slider_section_two','{\"category\":\"10\",\"sub_category\":\"19\",\"child_category\":null}','2024-08-22 14:16:35','2024-08-23 22:48:01'),(4,'product_slider_section_three','[{\"category\":\"9\",\"sub_category\":\"9\",\"child_category\":null},{\"category\":\"10\",\"sub_category\":null,\"child_category\":\"7\"}]','2024-08-22 15:43:14','2024-08-22 15:55:17'),(5,'popular_category_section','[{\"category\":\"9\",\"sub_category\":null,\"child_category\":null},{\"category\":\"9\",\"sub_category\":\"9\",\"child_category\":null},{\"category\":\"9\",\"sub_category\":\"9\",\"child_category\":\"6\"},{\"category\":\"10\",\"sub_category\":null,\"child_category\":null}]','2024-08-23 22:03:55','2024-08-23 22:05:05'),(6,'product_slider_section_one','{\"category\":\"10\",\"sub_category\":null,\"child_category\":null}','2024-08-23 23:11:34','2024-08-23 23:11:34');
/*!40000 ALTER TABLE `home_page_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logo_settings`
--

DROP TABLE IF EXISTS `logo_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logo_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `logo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logo_settings`
--

LOCK TABLES `logo_settings` WRITE;
/*!40000 ALTER TABLE `logo_settings` DISABLE KEYS */;
INSERT INTO `logo_settings` VALUES (1,'uploads/media_66d4639a9993f_png','uploads/media_66d4638248317_png','2024-09-01 06:52:18','2024-09-01 06:52:42');
/*!40000 ALTER TABLE `logo_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2024_07_12_204349_create_sliders_table',2),(6,'2024_07_15_080356_create_categories_table',3),(7,'2024_07_16_063755_create_sub_categories_table',4),(8,'2024_07_16_105706_remove_icon_from_sub_categories_table',5),(9,'2024_07_16_184814_create_sub_categories_table',6),(10,'2024_07_17_074125_create_child_categories_table',7),(11,'2024_07_17_105757_create_child_categories_table',8),(12,'2024_07_18_185849_create_brands_table',9),(15,'2024_07_18_210531_create_vendors_table',10),(19,'2024_07_19_073456_create_products_table',11),(20,'2024_07_20_104051_create_product_image_galleries_table',12),(22,'2024_07_20_131844_create_product_variant_items_table',13),(35,'2024_07_20_125918_create_product_variants_table',14),(36,'2024_07_20_192330_create_product_variant_items_table',14),(37,'2024_07_21_090759_add_shop_name_to_vendors_table',15),(40,'2024_07_23_061150_create_flash_sales_table',16),(41,'2024_07_23_061219_create_flash_sale_items_table',16),(46,'2024_07_24_073919_create_general_settings_table',17),(48,'2024_07_26_045119_create_product_variant_items_table',18),(51,'2024_07_26_062444_create_products_table',19),(52,'2024_07_26_100953_create_flashsales_table',20),(55,'2024_07_26_102118_create_flash_sales_table',21),(56,'2024_07_26_102615_create_flash_sale_items_table',21),(57,'2024_07_26_105803_create_flash_sale_items_table',22),(58,'2024_07_26_111139_create_flash_sale_items_table',23),(59,'2024_07_26_112333_create_flash_sales_table',24),(60,'2024_07_26_112405_create_flash_sale_items_table',24),(61,'2024_07_26_130733_create_flash_sales_table',25),(62,'2024_07_26_130742_create_flash_sale_items_table',25),(70,'2024_07_27_164423_create_general_settings_table',26),(71,'2024_07_27_183232_create_coupons_table',27),(76,'2024_07_27_191402_create_shipping_rules_table',28),(77,'2024_07_27_201537_create_shipping_rules_table',29),(78,'2024_07_27_210005_create_user_addresses_table',30),(79,'2024_08_01_132539_create_paypal_settings_table',31),(80,'2024_08_10_182645_create_orders_table',32),(81,'2024_08_10_183015_create_order_products_table',32),(82,'2024_08_10_183212_create_transactions_table',32),(98,'2024_08_10_191725_create_stripe_settings_table',33),(100,'2024_08_18_134940_create_vendors_table',34),(101,'2024_08_18_173809_add_shop_name_to_vendors_table',35),(102,'2024_08_18_224726_create_general_settings_table',36),(103,'2024_08_21_195048_create_home_page_settings_table',37),(104,'2024_08_24_183307_create_wishlists_table',38),(105,'2024_08_25_020811_create_footer_infos_table',39),(106,'2024_08_25_030429_create_footer_socials_table',40),(107,'2024_08_25_182026_create_footer_grid_twos_table',41),(108,'2024_08_25_193348_create_footer_titles_table',42),(109,'2024_08_25_195557_create_footer_grid_threes_table',43),(112,'2024_08_25_203954_create_email_configurations_table',44),(113,'2024_08_26_202025_create_newsletter_subscribers_table',45),(115,'2024_08_27_033450_create_advertisements_table',46),(116,'2024_08_28_180634_create_product_reviews_table',47),(117,'2024_08_28_181621_create_product_review_galleries_table',47),(118,'2024_08_29_205559_create_vendor_conditions_table',48),(119,'2024_08_29_214013_create_abouts_table',49),(120,'2024_08_29_222051_create_terms_and_conditions_table',50),(121,'2024_08_30_214952_create_blog_categories_table',51),(122,'2024_08_30_222934_create_blogs_table',52),(123,'2024_08_31_145006_create_blog_comments_table',53),(124,'2024_09_01_124119_create_logo_settings_table',54),(125,'2024_09_01_183020_create_cod_settings_table',55);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletter_subscribers`
--

DROP TABLE IF EXISTS `newsletter_subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletter_subscribers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verified_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_verified` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletter_subscribers`
--

LOCK TABLES `newsletter_subscribers` WRITE;
/*!40000 ALTER TABLE `newsletter_subscribers` DISABLE KEYS */;
INSERT INTO `newsletter_subscribers` VALUES (5,'test@gmail.com','Hj5KQ8PGu7W8Cn7EqDUnNmkHX','0','2024-08-26 20:10:46','2024-08-26 20:10:46'),(6,'1730700@iub.edu.bd','verified','1','2024-08-26 20:26:35','2024-08-26 20:31:03');
/*!40000 ALTER TABLE `newsletter_subscribers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_products`
--

DROP TABLE IF EXISTS `order_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `vendor_id` int NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `variants` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `variant_total` int DEFAULT NULL,
  `unit_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_products`
--

LOCK TABLES `order_products` WRITE;
/*!40000 ALTER TABLE `order_products` DISABLE KEYS */;
INSERT INTO `order_products` VALUES (42,31,8,1,'Dress','{\"Colour\":{\"name\":\"Red\",\"price\":0}}',0,'245',1,'2024-08-18 16:14:06','2024-08-18 16:14:06'),(43,31,7,1,'jacket','{\"size\":{\"name\":\"small\",\"price\":10},\"colour\":{\"name\":\"red\",\"price\":10}}',20,'100',1,'2024-08-18 16:14:06','2024-08-18 16:14:06'),(44,32,7,1,'jacket','{\"size\":{\"name\":\"small\",\"price\":10},\"colour\":{\"name\":\"red\",\"price\":10}}',20,'100',3,'2024-08-18 16:16:49','2024-08-18 16:16:49'),(45,33,8,1,'Dress','{\"Colour\":{\"name\":\"Red\",\"price\":0}}',0,'245',2,'2024-08-18 16:20:44','2024-08-18 16:20:44'),(46,34,9,1,'Camera','{\"colour\":{\"name\":\"black\",\"price\":0}}',0,'40',2,'2024-08-18 16:24:09','2024-08-18 16:24:09'),(47,35,10,2,'Test Product','{\"test variant\":{\"name\":\"test variant item\",\"price\":0}}',0,'195',2,'2024-08-18 19:00:12','2024-08-18 19:00:12'),(48,35,7,1,'jacket','{\"size\":{\"name\":\"small\",\"price\":10},\"colour\":{\"name\":\"red\",\"price\":10}}',20,'100',1,'2024-08-18 19:00:12','2024-08-18 19:00:12'),(49,36,8,1,'Dress','{\"Colour\":{\"name\":\"Red\",\"price\":0}}',0,'245',2,'2024-08-21 12:08:56','2024-08-21 12:08:56'),(50,36,7,1,'jacket','{\"size\":{\"name\":\"small\",\"price\":10},\"colour\":{\"name\":\"red\",\"price\":10}}',20,'100',1,'2024-08-21 12:08:56','2024-08-21 12:08:56'),(51,37,9,1,'Camera','{\"colour\":{\"name\":\"black\",\"price\":0}}',0,'40',1,'2024-08-21 13:22:51','2024-08-21 13:22:51'),(52,37,8,1,'Dress','{\"Colour\":{\"name\":\"Red\",\"price\":0}}',0,'245',1,'2024-08-21 13:22:51','2024-08-21 13:22:51'),(53,37,7,1,'jacket','{\"size\":{\"name\":\"small\",\"price\":10},\"colour\":{\"name\":\"red\",\"price\":10}}',20,'100',1,'2024-08-21 13:22:51','2024-08-21 13:22:51'),(54,37,10,2,'Test Product','{\"test variant\":{\"name\":\"test variant item\",\"price\":0}}',0,'195',1,'2024-08-21 13:22:51','2024-08-21 13:22:51'),(55,38,9,1,'Camera','{\"colour\":{\"name\":\"black\",\"price\":0}}',0,'40',1,'2024-08-28 12:56:41','2024-08-28 12:56:41'),(56,39,11,2,'Test Product2','[]',0,'10',2,'2024-08-28 15:47:52','2024-08-28 15:47:52'),(57,40,11,2,'Test Product2','[]',0,'10',1,'2024-08-31 14:14:29','2024-08-31 14:14:29');
/*!40000 ALTER TABLE `order_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invocie_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `sub_total` double NOT NULL,
  `amount` double NOT NULL,
  `currency_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_qty` int NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` int NOT NULL,
  `order_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `shpping_method` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (31,'14805',2,365,415,'USD','$',2,'stripe',1,'{\"id\":5,\"user_id\":2,\"name\":\"Vendor\",\"email\":\"vendor123@gmail.com\",\"phone\":\"4675898\",\"country\":\"Bangladesh\",\"state\":\"Dhaka\",\"city\":\"Dhaka\",\"zip\":\"1204\",\"address\":\"192\\/1 West Jurain\",\"created_at\":\"2024-08-15T16:12:11.000000Z\",\"updated_at\":\"2024-08-15T16:12:11.000000Z\"}','{\"id\":3,\"name\":\"Express Delivery\",\"type\":\"flat_cost\",\"cost\":50}','null','delivered','2024-08-18 16:14:06','2024-08-31 14:19:06'),(32,'308693',3,360,230,'USD','$',1,'stripe',1,'{\"id\":1,\"user_id\":3,\"name\":\"TestUser1\",\"email\":\"testuser123@gmail.com\",\"phone\":\"12312213\",\"country\":\"Bangladesh\",\"state\":\"Dhaka\",\"city\":\"Dhaka\",\"zip\":\"1204\",\"address\":\"192\\/1 West Jurain\",\"created_at\":\"2024-07-27T15:07:22.000000Z\",\"updated_at\":\"2024-07-27T15:08:35.000000Z\"}','{\"id\":3,\"name\":\"Express Delivery\",\"type\":\"flat_cost\",\"cost\":50}','{\"coupon_name\":\"bumpercoupon\",\"coupon_code\":\"123\",\"discount_type\":\"percent\",\"discount\":50}','dropped_off','2024-08-18 16:16:49','2024-08-18 16:59:12'),(33,'121418',3,490,540,'USD','$',1,'stripe',1,'{\"id\":1,\"user_id\":3,\"name\":\"TestUser1\",\"email\":\"testuser123@gmail.com\",\"phone\":\"12312213\",\"country\":\"Bangladesh\",\"state\":\"Dhaka\",\"city\":\"Dhaka\",\"zip\":\"1204\",\"address\":\"192\\/1 West Jurain\",\"created_at\":\"2024-07-27T15:07:22.000000Z\",\"updated_at\":\"2024-07-27T15:08:35.000000Z\"}','{\"id\":3,\"name\":\"Express Delivery\",\"type\":\"flat_cost\",\"cost\":50}','null','out_for_delivery','2024-08-18 16:20:44','2024-08-30 15:33:42'),(34,'581814',2,80,130,'USD','$',1,'stripe',1,'{\"id\":5,\"user_id\":2,\"name\":\"Vendor\",\"email\":\"vendor123@gmail.com\",\"phone\":\"4675898\",\"country\":\"Bangladesh\",\"state\":\"Dhaka\",\"city\":\"Dhaka\",\"zip\":\"1204\",\"address\":\"192\\/1 West Jurain\",\"created_at\":\"2024-08-15T16:12:11.000000Z\",\"updated_at\":\"2024-08-15T16:12:11.000000Z\"}','{\"id\":3,\"name\":\"Express Delivery\",\"type\":\"flat_cost\",\"cost\":50}','null','processed_and_ready_to_ship','2024-08-18 16:24:08','2024-08-18 16:58:51'),(35,'274727',2,510,560,'USD','$',2,'stripe',1,'{\"id\":5,\"user_id\":2,\"name\":\"Vendor\",\"email\":\"vendor123@gmail.com\",\"phone\":\"4675898\",\"country\":\"Bangladesh\",\"state\":\"Dhaka\",\"city\":\"Dhaka\",\"zip\":\"1204\",\"address\":\"192\\/1 West Jurain\",\"created_at\":\"2024-08-15T16:12:11.000000Z\",\"updated_at\":\"2024-08-15T16:12:11.000000Z\"}','{\"id\":3,\"name\":\"Express Delivery\",\"type\":\"flat_cost\",\"cost\":50}','null','pending','2024-08-18 19:00:12','2024-08-18 19:09:50'),(36,'385157',3,610,660,'USD','$',2,'stripe',1,'{\"id\":1,\"user_id\":3,\"name\":\"TestUser1\",\"email\":\"testuser123@gmail.com\",\"phone\":\"12312213\",\"country\":\"Bangladesh\",\"state\":\"Dhaka\",\"city\":\"Dhaka\",\"zip\":\"1204\",\"address\":\"192\\/1 West Jurain\",\"created_at\":\"2024-07-27T15:07:22.000000Z\",\"updated_at\":\"2024-07-27T15:08:35.000000Z\"}','{\"id\":3,\"name\":\"Express Delivery\",\"type\":\"flat_cost\",\"cost\":50}','null','pending','2024-08-21 12:08:56','2024-08-21 12:08:56'),(37,'678382',2,600,650,'USD','$',4,'stripe',1,'{\"id\":5,\"user_id\":2,\"name\":\"Vendor\",\"email\":\"vendor123@gmail.com\",\"phone\":\"4675898\",\"country\":\"Bangladesh\",\"state\":\"Dhaka\",\"city\":\"Dhaka\",\"zip\":\"1204\",\"address\":\"192\\/1 West Jurain\",\"created_at\":\"2024-08-15T16:12:11.000000Z\",\"updated_at\":\"2024-08-15T16:12:11.000000Z\"}','{\"id\":3,\"name\":\"Express Delivery\",\"type\":\"flat_cost\",\"cost\":50}','null','out_for_delivery','2024-08-21 13:22:51','2024-08-30 15:32:06'),(38,'916608',3,40,90,'USD','$',1,'stripe',1,'{\"id\":1,\"user_id\":3,\"name\":\"TestUser1\",\"email\":\"testuser123@gmail.com\",\"phone\":\"12312213\",\"country\":\"Bangladesh\",\"state\":\"Dhaka\",\"city\":\"Dhaka\",\"zip\":\"1204\",\"address\":\"192\\/1 West Jurain\",\"created_at\":\"2024-07-27T21:07:22.000000Z\",\"updated_at\":\"2024-07-27T21:08:35.000000Z\"}','{\"id\":3,\"name\":\"Express Delivery\",\"type\":\"flat_cost\",\"cost\":50}','null','canceled','2024-08-28 12:56:41','2024-08-30 15:34:40'),(39,'280855',3,20,70,'USD','$',1,'stripe',1,'{\"id\":1,\"user_id\":3,\"name\":\"TestUser1\",\"email\":\"testuser123@gmail.com\",\"phone\":\"12312213\",\"country\":\"Bangladesh\",\"state\":\"Dhaka\",\"city\":\"Dhaka\",\"zip\":\"1204\",\"address\":\"192\\/1 West Jurain\",\"created_at\":\"2024-07-27T21:07:22.000000Z\",\"updated_at\":\"2024-07-27T21:08:35.000000Z\"}','{\"id\":3,\"name\":\"Express Delivery\",\"type\":\"flat_cost\",\"cost\":50}','null','delivered','2024-08-28 15:47:52','2024-08-28 15:49:12'),(40,'104937',3,10,60,'USD','$',1,'stripe',1,'{\"id\":3,\"user_id\":3,\"name\":\"Anandee\",\"email\":\"1730700@iub.edu.bd\",\"phone\":\"1212133\",\"country\":\"Bangladesh\",\"state\":\"Dhaka\",\"city\":\"Dhaka\",\"zip\":\"1204\",\"address\":\"121212\",\"created_at\":\"2024-07-31T10:15:51.000000Z\",\"updated_at\":\"2024-07-31T10:15:51.000000Z\"}','{\"id\":3,\"name\":\"Express Delivery\",\"type\":\"flat_cost\",\"cost\":50}','null','delivered','2024-08-31 14:14:29','2024-08-31 14:20:49');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
INSERT INTO `password_reset_tokens` VALUES ('admin@gmail.com','$2y$12$N3Kr/7V3joNdFu0J8y93We65O5PqFihG959ppG/sU7aK.GqJkzzCS','2024-08-26 16:08:06'),('user@gmail.com','$2y$12$A01L0BW.NGjoa9SfQ7r47uBGVgB5Z.D3mo/Uy9GYoK2MmszaGiZiq','2024-08-26 16:14:31'),('vendor@gmail.com','$2y$12$yVQ2T7iiR4MtXx3DoZWrg.H42nf0mMB8cOQHrxHj3jQonKYAOv68W','2024-07-12 06:22:58');
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paypal_settings`
--

DROP TABLE IF EXISTS `paypal_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paypal_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL,
  `mode` tinyint(1) NOT NULL,
  `country_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_rate` double NOT NULL,
  `client_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paypal_settings`
--

LOCK TABLES `paypal_settings` WRITE;
/*!40000 ALTER TABLE `paypal_settings` DISABLE KEYS */;
INSERT INTO `paypal_settings` VALUES (1,1,0,'India','INR',1,'1234','123','2024-08-10 06:22:27','2024-08-15 14:25:09');
/*!40000 ALTER TABLE `paypal_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_image_galleries`
--

DROP TABLE IF EXISTS `product_image_galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_image_galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_image_galleries`
--

LOCK TABLES `product_image_galleries` WRITE;
/*!40000 ALTER TABLE `product_image_galleries` DISABLE KEYS */;
INSERT INTO `product_image_galleries` VALUES (7,'uploads/media_66c1cd8a01d00_jpg',7,'2024-08-18 10:31:38','2024-08-18 10:31:38'),(8,'uploads/media_66c1d19b59627_jpg',8,'2024-08-18 10:48:59','2024-08-18 10:48:59');
/*!40000 ALTER TABLE `product_image_galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_review_galleries`
--

DROP TABLE IF EXISTS `product_review_galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_review_galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_review_id` int NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_review_galleries`
--

LOCK TABLES `product_review_galleries` WRITE;
/*!40000 ALTER TABLE `product_review_galleries` DISABLE KEYS */;
INSERT INTO `product_review_galleries` VALUES (1,1,'uploads/media_66cf7924cf0bd_jpg','2024-08-28 13:23:16','2024-08-28 13:23:16'),(2,2,'uploads/media_66cf9ba1099d0_jpg','2024-08-28 15:50:25','2024-08-28 15:50:25');
/*!40000 ALTER TABLE `product_review_galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_reviews`
--

DROP TABLE IF EXISTS `product_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL,
  `vendor_id` int NOT NULL,
  `review` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_reviews`
--

LOCK TABLES `product_reviews` WRITE;
/*!40000 ALTER TABLE `product_reviews` DISABLE KEYS */;
INSERT INTO `product_reviews` VALUES (1,9,3,1,'good product','5',1,'2024-08-28 13:23:16','2024-08-28 13:23:16'),(2,11,3,2,'test review','3',1,'2024-08-28 15:50:25','2024-08-28 15:54:31');
/*!40000 ALTER TABLE `product_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_variant_items`
--

DROP TABLE IF EXISTS `product_variant_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_variant_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_variant_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_variant_items`
--

LOCK TABLES `product_variant_items` WRITE;
/*!40000 ALTER TABLE `product_variant_items` DISABLE KEYS */;
INSERT INTO `product_variant_items` VALUES (29,25,'large',0,1,1,'2024-08-18 10:42:19','2024-08-18 10:42:19'),(30,25,'small',10,1,1,'2024-08-18 10:42:47','2024-08-18 10:45:38'),(31,26,'Black',15,1,1,'2024-08-18 10:44:56','2024-08-18 10:44:56'),(32,26,'red',10,1,1,'2024-08-18 10:45:21','2024-08-18 10:45:21'),(33,27,'Blue',15,1,1,'2024-08-18 10:50:18','2024-08-18 10:50:18'),(34,27,'Red',0,1,1,'2024-08-18 10:50:42','2024-08-18 10:50:42'),(35,28,'black',0,1,1,'2024-08-18 10:53:10','2024-08-18 10:53:10'),(36,29,'test variant item',0,1,1,'2024-08-18 11:52:47','2024-08-18 11:52:47');
/*!40000 ALTER TABLE `product_variant_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_variants`
--

DROP TABLE IF EXISTS `product_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_variants` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_variants`
--

LOCK TABLES `product_variants` WRITE;
/*!40000 ALTER TABLE `product_variants` DISABLE KEYS */;
INSERT INTO `product_variants` VALUES (25,7,'size',1,'2024-08-18 10:32:21','2024-08-18 10:32:21'),(26,7,'colour',1,'2024-08-18 10:44:32','2024-08-18 10:44:32'),(27,8,'Colour',1,'2024-08-18 10:49:32','2024-08-18 10:49:32'),(28,9,'colour',1,'2024-08-18 10:52:49','2024-08-18 10:52:49'),(29,10,'test variant',1,'2024-08-18 11:52:09','2024-08-18 11:52:09');
/*!40000 ALTER TABLE `product_variants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_id` int NOT NULL,
  `category_id` int NOT NULL,
  `sub_category_id` int DEFAULT NULL,
  `child_category_id` int DEFAULT NULL,
  `brand_id` int NOT NULL,
  `qty` int NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_link` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL,
  `offer_price` double DEFAULT NULL,
  `offer_start_date` date DEFAULT NULL,
  `offer_end_date` date DEFAULT NULL,
  `product_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `is_approved` int NOT NULL DEFAULT '0',
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (7,'jacket','jacket','uploads/media_66c1cb880d210_jpg',1,9,9,6,3,493,'sdfghjkjbvcx','<p>lidfghjklknbvcxcvbnm,.,mnbd</p>','https://www.youtube.com/watch?v=R5Xaml_NyRI','sdtgh',150,100,'2024-08-18','2024-11-18','new_arrival',1,1,'xcvbn','kjhgfddfghjmnb','2024-08-18 10:23:04','2024-08-24 10:58:06'),(8,'Dress','dress','uploads/media_66c1d15800480_jpg',1,9,9,5,3,494,'mnbvcxcvb','<p>jhgfdxzcvbnm,mnbvc</p>',NULL,'sdtgh',250,245,'2024-08-18','2024-11-18','featured_product',1,1,'jhg','jhgfdxk','2024-08-18 10:47:52','2024-08-28 07:05:38'),(9,'Camera','camera','uploads/media_66c1d267059e1_jpg',1,10,19,8,6,496,'mjhgfcx','<p>mnbvckjhgfdbnm</p>',NULL,'sdtgh',45,40,'2024-08-18','2024-11-18','top_product',1,1,'kjhgfds','kjhgfds','2024-08-18 10:52:23','2024-08-28 12:56:41'),(10,'Test Product','test-product','uploads/media_66c1e00e5195c_jpg',2,10,19,NULL,2,497,'mnbvc','<p>kjhgvc</p>',NULL,'sdtgh',200,195,'2024-08-18','2024-11-18','best_product',1,0,'hv','mnbv,mnbvc','2024-08-18 11:50:38','2024-08-23 21:19:24'),(11,'Test Product2','test-product2','uploads/media_66c20f36db437_jpg',2,10,NULL,NULL,2,397,'vgfds','<p>dfgfds</p>',NULL,'xcv',10,NULL,'2024-08-18','2024-11-18','top_product',1,1,'bvcxzcvcv','hgfdsdfg','2024-08-18 15:11:50','2024-08-31 14:14:29');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_rules`
--

DROP TABLE IF EXISTS `shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_cost` double DEFAULT NULL,
  `cost` double NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_rules`
--

LOCK TABLES `shipping_rules` WRITE;
/*!40000 ALTER TABLE `shipping_rules` DISABLE KEYS */;
INSERT INTO `shipping_rules` VALUES (1,'Free Delivery','min_cost',3000,0,1,'2024-07-27 14:20:22','2024-07-27 14:23:23'),(3,'Express Delivery','flat_cost',NULL,50,1,'2024-07-27 14:24:18','2024-07-27 14:24:18');
/*!40000 ALTER TABLE `shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `banner` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `starting_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sliders`
--

LOCK TABLES `sliders` WRITE;
/*!40000 ALTER TABLE `sliders` DISABLE KEYS */;
INSERT INTO `sliders` VALUES (1,'uploads/media_669423d39f140_jpg','new arrivals','men\'s fashion','99','http://ecommerce.test/admin/slider/create',1,1,'2024-07-13 02:03:03','2024-07-14 13:46:21'),(9,'uploads/media_66942782b1e62_jpg','new arrivals','kid\'s fashion','49.00','http://ecommerce.test/admin/slider/create',2,1,'2024-07-14 13:31:14','2024-07-14 14:01:49'),(10,'uploads/media_669427d458020_jpg','new arrivals','winter collection','99','http://ecommerce.test/admin/slider/create',3,1,'2024-07-14 13:32:36','2024-07-14 14:02:00');
/*!40000 ALTER TABLE `sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stripe_settings`
--

DROP TABLE IF EXISTS `stripe_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stripe_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL,
  `mode` tinyint(1) NOT NULL,
  `country_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_rate` double NOT NULL,
  `client_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stripe_settings`
--

LOCK TABLES `stripe_settings` WRITE;
/*!40000 ALTER TABLE `stripe_settings` DISABLE KEYS */;
INSERT INTO `stripe_settings` VALUES (1,1,0,'United States','USD',1,'pk_test_51PmKcOA9HRkhTSS0LaauqIxho389DLZ3vWaN9LWO804L6O5urwTizRlTeJnquqGyPOKSf7lscgmYuUsoYtykEFPE00j7k7oWCj','sk_test_51PmKcOA9HRkhTSS0UkGw9CHwkS2VGWJXivpSDsXH4X9ww9VjMTtJrrt1SD1DJjBD1shLO4tdS1Gy0cruIsWpZXFB00QSRcynLD','2024-08-18 16:09:54','2024-08-18 16:09:54');
/*!40000 ALTER TABLE `stripe_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_categories`
--

DROP TABLE IF EXISTS `sub_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_categories`
--

LOCK TABLES `sub_categories` WRITE;
/*!40000 ALTER TABLE `sub_categories` DISABLE KEYS */;
INSERT INTO `sub_categories` VALUES (9,9,'New Arrivals','new-arrivals',1,'2024-07-18 05:13:45','2024-07-18 05:13:45'),(19,10,'Home Audio & Theaters','home-audio-theaters',1,'2024-07-18 06:04:49','2024-07-18 07:08:32'),(21,9,'Pant','pant',1,'2024-07-24 23:59:40','2024-07-24 23:59:40');
/*!40000 ALTER TABLE `sub_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terms_and_conditions`
--

DROP TABLE IF EXISTS `terms_and_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `terms_and_conditions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terms_and_conditions`
--

LOCK TABLES `terms_and_conditions` WRITE;
/*!40000 ALTER TABLE `terms_and_conditions` DISABLE KEYS */;
INSERT INTO `terms_and_conditions` VALUES (1,'<p><strong>Sazao Terms and Conditions</strong></p><p>Welcome to Sazao! By using our website, you agree to the following terms:</p><ol><li><strong>Account</strong>: You must be 18 or older to create an account.</li><li><strong>Purchases</strong>: All sales are final, subject to our return policy.</li><li><strong>Payments</strong>: Secure payment methods are required for all transactions.</li><li><strong>Privacy</strong>: We respect your privacy and protect your personal information.</li><li><strong>Prohibited Use</strong>: Any illegal or harmful activity is strictly forbidden.</li><li><strong>Liability</strong>: Sazao is not responsible for any damages arising from your use of the site.</li></ol><p>By continuing to use Sazao, you accept these terms.</p>','2024-08-29 16:32:25','2024-08-29 16:32:25');
/*!40000 ALTER TABLE `terms_and_conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `amount_real_currency` double NOT NULL,
  `amount_real_currency_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (31,31,'ch_3PpBjzA9HRkhTSS01b2R0DHJ','stripe',415,415,'USD','2024-08-18 16:14:06','2024-08-18 16:14:06'),(32,32,'ch_3PpBmgA9HRkhTSS00njbpXQo','stripe',230,230,'USD','2024-08-18 16:16:49','2024-08-18 16:16:49'),(33,33,'ch_3PpBqOA9HRkhTSS01zOeHkaD','stripe',540,540,'USD','2024-08-18 16:20:44','2024-08-18 16:20:44'),(34,34,'ch_3PpBtkA9HRkhTSS00BW7s3PD','stripe',130,130,'USD','2024-08-18 16:24:09','2024-08-18 16:24:09'),(35,35,'ch_3PpEKmA9HRkhTSS00zihy9Hk','stripe',560,560,'USD','2024-08-18 19:00:12','2024-08-18 19:00:12'),(36,36,'ch_3PqDLOA9HRkhTSS00zlqPPVZ','stripe',660,660,'USD','2024-08-21 12:08:56','2024-08-21 12:08:56'),(37,37,'ch_3PqEUtA9HRkhTSS01WW19Wil','stripe',650,650,'USD','2024-08-21 13:22:51','2024-08-21 13:22:51'),(38,38,'ch_3Psr2nA9HRkhTSS01MQeergQ','stripe',90,90,'USD','2024-08-28 12:56:41','2024-08-28 12:56:41'),(39,39,'ch_3PstiTA9HRkhTSS00eJKQOJc','stripe',70,70,'USD','2024-08-28 15:47:52','2024-08-28 15:47:52'),(40,40,'ch_3PtxgjA9HRkhTSS01BccNgtR','stripe',60,60,'USD','2024-08-31 14:14:29','2024-08-31 14:14:29');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_addresses`
--

DROP TABLE IF EXISTS `user_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_addresses`
--

LOCK TABLES `user_addresses` WRITE;
/*!40000 ALTER TABLE `user_addresses` DISABLE KEYS */;
INSERT INTO `user_addresses` VALUES (1,3,'TestUser1','testuser123@gmail.com','12312213','Bangladesh','Dhaka','Dhaka','1204','192/1 West Jurain','2024-07-27 15:07:22','2024-07-27 15:08:35'),(3,3,'Anandee','1730700@iub.edu.bd','1212133','Bangladesh','Dhaka','Dhaka','1204','121212','2024-07-31 04:15:51','2024-07-31 04:15:51'),(4,1,'Anandee','testuser123@gmail.com','012312213','Bangladesh','Dhaka','Dhaka','1204','192/1 West Jurain','2024-08-14 06:18:08','2024-08-14 06:18:08'),(5,2,'Vendor','vendor123@gmail.com','4675898','Bangladesh','Dhaka','Dhaka','1204','192/1 West Jurain','2024-08-15 16:12:11','2024-08-15 16:12:11');
/*!40000 ALTER TABLE `user_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','vendor','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin123','adminuser','/uploads/1816069668_IMG-20230218-WA0060.jpg',NULL,'admin@gmail.com','admin','active',NULL,'$2y$12$puxfzuohjlYz.8CStP6iCuXvX5ZmdXYOcT.Y8MOWkC1CX5YsaGivC',NULL,NULL,'2024-07-11 04:12:48'),(2,'Vendor user','vendoruser','/uploads/934468778_frontal-portrait-serious-looking-businessman-260nw-1706382364-ezgif.com-webp-to-jpg-converter.jpg',NULL,'vendor@gmail.com','vendor','active',NULL,'$2y$12$Ib4qklE5AwYYPY3Kk3aCpOdhigImA2IMzMgz23rEX2/yWDY6Uf2EW',NULL,NULL,'2024-07-12 14:28:00'),(3,'Anandee','user','/uploads/1164698655_female-call-center-agent.jpg',NULL,'user@gmail.com','user','active',NULL,'$2y$12$wYr9tDQMjwXirwqzjpdGiu1bU26Hu.eLnzPlEBzNcgMduHyA1JXAC',NULL,NULL,'2024-08-29 13:26:08'),(4,'TestUser',NULL,NULL,NULL,'testuser@gmail.com','user','active',NULL,'$2y$12$Ztki0yInPT/WS8aARSqM1.0PT1ChW318cbCut2mVZ12LxkrS65KDa',NULL,'2024-07-11 10:22:15','2024-08-29 14:25:37'),(6,'seller',NULL,NULL,NULL,'seller@gmail.com','vendor','active',NULL,'$2y$12$8CKYYy89Xgj.TQqMZw0ne.7lATIlFXWqi8D0lTa99lieE3m5c9fO2',NULL,'2024-08-29 12:44:13','2024-08-29 14:51:29'),(7,'user1',NULL,NULL,NULL,'user1@gmail.com','user','active',NULL,'$2y$12$jOMnxF7EgHFVsH8ODbSj1OXRH2NKiYnPrFt99.KcUODH4ntE/t2QW',NULL,'2024-08-30 13:31:57','2024-08-30 13:31:57'),(9,'user2',NULL,NULL,NULL,'user2@gmail.com','user','active',NULL,'$2y$12$Ik79ypW6Omog3/GTiVG5K.TopWuf3MObC/uoE8ya/Eap9e.QTcLt6',NULL,'2024-08-30 13:44:40','2024-08-30 13:44:40'),(10,'user3',NULL,NULL,NULL,'user3@gmail.com','user','active',NULL,'$2y$12$M6H6MvxpLQNuVZcJlgfRIuEqLEPsq6Im9wh0rNLxMivo4YzB2C4NS',NULL,'2024-08-30 13:46:19','2024-08-30 13:46:19');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor_conditions`
--

DROP TABLE IF EXISTS `vendor_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor_conditions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_conditions`
--

LOCK TABLES `vendor_conditions` WRITE;
/*!40000 ALTER TABLE `vendor_conditions` DISABLE KEYS */;
INSERT INTO `vendor_conditions` VALUES (1,'<h3><div class=\"flex max-w-full flex-col flex-grow\"><div data-message-author-role=\"assistant\" data-message-id=\"82803c6c-30e8-4baf-8dde-4f0035aae443\" dir=\"auto\" class=\"min-h-[20px] text-message flex w-full flex-col items-end gap-2 break-words [.text-message+&amp;]:mt-5 overflow-x-auto whitespace-normal\"><div class=\"flex w-full flex-col gap-1 empty:hidden first:pt-[3px]\"><div class=\"markdown prose w-full break-words dark:prose-invert dark\"><p><strong><span style=\"font-family: &quot;Times New Roman&quot;;\">Sazao Vendor Terms</span></strong></p><ol><li><strong><span style=\"font-family: &quot;Times New Roman&quot;;\">Eligibility</span></strong><span style=\"font-family: &quot;Times New Roman&quot;;\">: Vendors must be 18 or older.</span></li><li><strong><span style=\"font-family: &quot;Times New Roman&quot;;\">Product Listings</span></strong><span style=\"font-family: &quot;Times New Roman&quot;;\">: Ensure accurate and truthful product details.</span></li><li><strong><span style=\"font-family: &quot;Times New Roman&quot;;\">Order Fulfillment</span></strong><span style=\"font-family: &quot;Times New Roman&quot;;\">: Timely and correct delivery is required.</span></li><li><strong><span style=\"font-family: &quot;Times New Roman&quot;;\">Fees</span></strong><span style=\"font-family: &quot;Times New Roman&quot;;\">: A commission is charged on each sale.</span></li><li><strong><span style=\"font-family: &quot;Times New Roman&quot;;\">Prohibited Items</span></strong><span style=\"font-family: &quot;Times New Roman&quot;;\">: Illegal or counterfeit products are banned.</span></li><li><strong><span style=\"font-family: &quot;Times New Roman&quot;;\">Termination</span></strong><span style=\"font-family: &quot;Times New Roman&quot;;\">: Accounts may be terminated for violations.</span></li></ol><p><span style=\"font-family: &quot;Times New Roman&quot;;\">By registering, you agree to these terms.</span><span style=\"font-family: &quot;Times New Roman&quot;;\">﻿</span></p></div></div></div></div></h3>','2024-08-29 15:20:30','2024-08-29 15:38:18');
/*!40000 ALTER TABLE `vendor_conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendors`
--

DROP TABLE IF EXISTS `vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `banner` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fb_link` text COLLATE utf8mb4_unicode_ci,
  `tw_link` text COLLATE utf8mb4_unicode_ci,
  `insta_link` text COLLATE utf8mb4_unicode_ci,
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendors`
--

LOCK TABLES `vendors` WRITE;
/*!40000 ALTER TABLE `vendors` DISABLE KEYS */;
INSERT INTO `vendors` VALUES (1,'uploads/media_66c1ca5363cda_jpg','12321312','admin@gmail.com','Dhaka','test description','https://www.facebook.com/profile.php?id=100010259101868',NULL,NULL,1,'2024-08-18 10:07:59','2024-08-18 11:46:42','Admin shop',1),(2,'uploads/media_66c1d962c9a2c_jpg','12321312','vendor@gmail.com','Dhaka','shop description',NULL,NULL,NULL,2,'2024-08-18 11:13:53','2024-08-18 11:43:57','Vendor shop',1),(3,'uploads/media_66d0c04d45970_jpg','01212133','test@iub.edu.bd','121212','mnbvc',NULL,NULL,NULL,3,'2024-08-29 12:39:09','2024-08-29 13:26:08','test 1 shop',0),(4,'uploads/media_66d0c2c0d2a05_jpg','01212133','seller@gmail.com','121212','kjhgfdsdfghjk',NULL,NULL,NULL,6,'2024-08-29 12:49:36','2024-08-29 13:39:57','seller shop',1);
/*!40000 ALTER TABLE `vendors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlists`
--

DROP TABLE IF EXISTS `wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlists`
--

LOCK TABLES `wishlists` WRITE;
/*!40000 ALTER TABLE `wishlists` DISABLE KEYS */;
INSERT INTO `wishlists` VALUES (2,7,3,'2024-08-24 19:05:13','2024-08-24 19:05:13'),(3,8,3,'2024-08-24 19:05:14','2024-08-24 19:05:14'),(4,9,3,'2024-08-24 19:05:15','2024-08-24 19:05:15');
/*!40000 ALTER TABLE `wishlists` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-02  4:28:47
