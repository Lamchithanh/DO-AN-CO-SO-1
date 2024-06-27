-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: poject_db_1
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` bigint NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `street_address` varchar(255) DEFAULT NULL,
  `ward` varchar(255) DEFAULT NULL,
  `checkout_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_jndqcbov90f8rk2rs67x00hat` (`checkout_id`),
  UNIQUE KEY `UK_7rod8a71yep5vxasb0ms3osbg` (`user_id`),
  CONSTRAINT `FKda8tuywtf0gb6sedwk7la1pgi` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKln74fldy707b3y49pjj052tm6` FOREIGN KEY (`checkout_id`) REFERENCES `checkout` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'Cần Thơ','Ninh Kiều','thinh123','123','adlkasdl','An Bình',NULL,1),(2,'Cần Thơ','Ninh Kiều','nguyen viet an','098127635','doi dien an khanh','An Bình',NULL,152);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address_seq`
--

DROP TABLE IF EXISTS `address_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_seq`
--

LOCK TABLES `address_seq` WRITE;
/*!40000 ALTER TABLE `address_seq` DISABLE KEYS */;
INSERT INTO `address_seq` VALUES (101);
/*!40000 ALTER TABLE `address_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `id` bigint NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (1,'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Apple_logo_black.svg/732px-Apple_logo_black.svg.png','Apple'),(52,'https://logowik.com/content/uploads/images/tcl5707.logowik.com.webp','TCL'),(54,'https://1000logos.net/wp-content/uploads/2017/06/Samsung-Logo-2-500x281.png','Samsung'),(102,' https://1000logos.net/wp-content/uploads/2018/08/oppo-mobile-logo-768x432.jpg','Oppo'),(103,'https://1000logos.net/wp-content/uploads/2017/12/Casio-Logo-768x432.png','CASIO'),(152,'https://thietkelogo.mondial.vn/wp-content/uploads/2024/01/Mau_thiet_ke_logo_thuong_hieu_cong_ty_TISSOT_1.jpg','Tissot'),(153,'https://1000logos.net/wp-content/uploads/2017/06/Versace-logo-768x484.png','Versace'),(154,'https://1000logos.net/wp-content/uploads/2018/10/Omega-logo-768x432.png','OMEGA'),(202,'https://m.media-amazon.com/images/S/al-eu-726f4d26-7fdb/20a9d2aa-02f3-4c6f-9862-34f86c24db61.png','Horbaach'),(203,'https://upload.wikimedia.org/wikipedia/commons/3/32/Swanson_Vitamins_Primary_Logo.jpg?20240227173243','Swanson'),(204,'     https://downloadlogomienphi.com/sites/default/files/logos/download-logo-vector-elly-mien-phi.jpg','ELLY'),(252,'https://statics.vincom.com.vn/http/vincom-ho/thuong_hieu/anh_logo/PEDRO.png/7deb70027fd6e3d01121d90686b76723.webp','PEDRO'),(253,'https://logowik.com/content/uploads/images/skechers5769.logowik.com.webp','SKECHERS'),(254,'https://1000logos.net/wp-content/uploads/2018/04/New-Balance-Logo-768x432.png','NEW BALANCE'),(352,'https://1000logos.net/wp-content/uploads/2017/03/Lenovo-Logo-1-768x480.png','Lenovo');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand_seq`
--

DROP TABLE IF EXISTS `brand_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand_seq`
--

LOCK TABLES `brand_seq` WRITE;
/*!40000 ALTER TABLE `brand_seq` DISABLE KEYS */;
INSERT INTO `brand_seq` VALUES (451);
/*!40000 ALTER TABLE `brand_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` bigint NOT NULL,
  `total_discounted_price` double DEFAULT NULL,
  `total_item` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_9emlp6m95v5er2bcqkjsw48he` (`user_id`),
  CONSTRAINT `FKl70asp4l4w0jmbm1tqyofho4o` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,0,0,1),(2,0,0,2),(3,0,0,3),(4,0,0,4),(5,0,0,5),(52,0,0,52),(53,0,0,53),(102,0,0,102),(103,0,0,103),(104,0,0,104),(105,0,0,105),(106,0,0,106),(107,0,0,107),(108,0,0,108),(152,0,1,152),(153,0,0,153);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_item`
--

DROP TABLE IF EXISTS `cart_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_item` (
  `id` bigint NOT NULL,
  `check_status` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `quantity` int DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `total_price` double NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `cart_id` bigint DEFAULT NULL,
  `checkout_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1uobyhgl1wvgt1jpccia8xxs3` (`cart_id`),
  KEY `FKf1ybjf84289qeja48317ro13p` (`checkout_id`),
  KEY `FKjcyd5wv4igqnw413rgxbfu4nv` (`product_id`),
  CONSTRAINT `FK1uobyhgl1wvgt1jpccia8xxs3` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`),
  CONSTRAINT `FKf1ybjf84289qeja48317ro13p` FOREIGN KEY (`checkout_id`) REFERENCES `checkout` (`id`),
  CONSTRAINT `FKjcyd5wv4igqnw413rgxbfu4nv` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_item`
--

LOCK TABLES `cart_item` WRITE;
/*!40000 ALTER TABLE `cart_item` DISABLE KEYS */;
INSERT INTO `cart_item` VALUES (53,'false',NULL,517.5,2,NULL,1035,152,152,NULL,369);
/*!40000 ALTER TABLE `cart_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_item_seq`
--

DROP TABLE IF EXISTS `cart_item_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_item_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_item_seq`
--

LOCK TABLES `cart_item_seq` WRITE;
/*!40000 ALTER TABLE `cart_item_seq` DISABLE KEYS */;
INSERT INTO `cart_item_seq` VALUES (151);
/*!40000 ALTER TABLE `cart_item_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_seq`
--

DROP TABLE IF EXISTS `cart_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_seq`
--

LOCK TABLES `cart_seq` WRITE;
/*!40000 ALTER TABLE `cart_seq` DISABLE KEYS */;
INSERT INTO `cart_seq` VALUES (251);
/*!40000 ALTER TABLE `cart_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` bigint NOT NULL,
  `level` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `group_category` bigint DEFAULT NULL,
  `parent_category_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4wln2hkpwldn5juwa92a6qysy` (`group_category`),
  KEY `FKs2ride9gvilxy2tcuv7witnxc` (`parent_category_id`),
  CONSTRAINT `FK4wln2hkpwldn5juwa92a6qysy` FOREIGN KEY (`group_category`) REFERENCES `group_category` (`id`),
  CONSTRAINT `FKs2ride9gvilxy2tcuv7witnxc` FOREIGN KEY (`parent_category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,1,'do-dien-tu-va-cong-nghe',1,NULL),(2,2,'may-tinh-phu-kien',1,1),(3,3,'MayTinh-MayTinhBang',1,2),(52,1,'do-ho-hang-hieu',2,NULL),(53,2,'dong-ho-nu',2,52),(54,3,'',2,53),(55,1,'do-dien-tu-va-cong-nghe',3,NULL),(56,2,'may-tinh-phu-kien',3,55),(57,3,'MayTinh-MayTinhBang',3,56),(58,1,'do-dien-tu-va-cong-nghe',4,NULL),(59,2,'may-tinh-phu-kien',4,58),(60,3,'MayTinh-MayTinhBang',4,59),(61,1,'do-dien-tu-va-cong-nghe',5,NULL),(62,2,'may-tinh-phu-kien',5,61),(63,3,'MayTinh-MayTinhBang',5,62),(64,1,'do-dien-tu-va-cong-nghe',6,NULL),(65,2,'may-tinh-phu-kien',6,64),(66,3,'MayTinh-MayTinhBang',6,65),(67,1,'do-dien-tu-va-cong-nghe',7,NULL),(68,2,'may-tinh-phu-kien',7,67),(69,3,'MayTinh-MayTinhBang',7,68),(70,1,'do-dien-tu-va-cong-nghe',8,NULL),(71,2,'may-tinh-phu-kien',8,70),(72,3,'MayTinh-MayTinhBang',8,71),(73,1,'do-dien-tu-va-cong-nghe',9,NULL),(74,2,'may-tinh-phu-kien',9,73),(75,3,'MayTinh-MayTinhBang',9,74),(102,1,'do-dien-tu-va-cong-nghe',10,NULL),(103,2,'may-tinh-phu-kien',10,102),(104,3,'MayTinh-MayTinhBang',10,103),(105,1,'do-dien-tu-va-cong-nghe',11,NULL),(106,2,'may-tinh-phu-kien',11,105),(107,3,'MayTinh-MayTinhBang',11,106),(108,1,'do-dien-tu-va-cong-nghe',12,NULL),(109,2,'may-tinh-phu-kien',12,108),(110,3,'MayTinh-MayTinhBang',12,109),(111,1,'do-dien-tu-va-cong-nghe',13,NULL),(112,2,'may-tinh-phu-kien',13,111),(113,3,'MayTinh-MayTinhBang',13,112),(114,1,'do-dien-tu-va-cong-nghe',14,NULL),(115,2,'may-tinh-phu-kien',14,114),(116,3,'MayTinh-MayTinhBang',14,115),(152,1,'do-dien-tu-va-cong-nghe',15,NULL),(153,2,'may-tinh-phu-kien',15,152),(154,3,'MayTinh-MayTinhBang',15,153),(155,1,'do-dien-tu-va-cong-nghe',16,NULL),(156,2,'may-tinh-phu-kien',16,155),(157,3,'MayTinh-MayTinhBang',16,156),(158,1,'do-dien-tu-va-cong-nghe',17,NULL),(159,2,'may-tinh-phu-kien',17,158),(160,3,'MayTinh-MayTinhBang',17,159),(161,1,'do-dien-tu-va-cong-nghe',18,NULL),(162,2,'may-tinh-phu-kien',18,161),(163,3,'MayTinh-MayTinhBang',18,162),(202,1,'do-dien-tu-va-cong-nghe',19,NULL),(203,2,'may-tinh-phu-kien',19,202),(204,3,'MayTinh-MayTinhBang',19,203),(205,1,'do-dien-tu-va-cong-nghe',20,NULL),(206,2,'may-tinh-phu-kien',20,205),(207,3,'MayTinh-MayTinhBang',20,206),(208,1,'do-dien-tu-va-cong-nghe',21,NULL),(209,2,'may-tinh-phu-kien',21,208),(210,3,'MayTinh-MayTinhBang',21,209),(211,1,'do-dien-tu-va-cong-nghe',22,NULL),(212,2,'may-tinh-phu-kien',22,211),(213,3,'MayTinh-MayTinhBang',22,212),(214,1,'do-dien-tu-va-cong-nghe',23,NULL),(215,2,'may-tinh-phu-kien',23,214),(216,3,'MayTinh-MayTinhBang',23,215),(252,1,'do-dien-tu-va-cong-nghe',24,NULL),(253,2,'may-tinh-phu-kien',24,252),(254,3,'MayTinh-MayTinhBang',24,253),(255,1,'do-dien-tu-va-cong-nghe',25,NULL),(256,2,'may-tinh-phu-kien',25,255),(257,3,'MayTinh-MayTinhBang',25,256),(302,1,'do-dien-tu-va-cong-nghe',26,NULL),(303,2,'may-tinh-phu-kien',26,302),(304,3,'MayTinh-MayTinhBang',26,303),(305,1,'do-dien-tu-va-cong-nghe',27,NULL),(306,2,'may-tinh-phu-kien',27,305),(307,3,'MayTinh-MayTinhBang',27,306),(308,1,'do-dien-tu-va-cong-nghe',28,NULL),(309,2,'may-tinh-phu-kien',28,308),(310,3,'MayTinh-MayTinhBang',28,309),(311,1,'do-dien-tu-va-cong-nghe',29,NULL),(312,2,'may-tinh-phu-kien',29,311),(313,3,'MayTinh-MayTinhBang',29,312),(314,1,'do-dien-tu-va-cong-nghe',30,NULL),(315,2,'may-tinh-phu-kien',30,314),(316,3,'MayTinh-MayTinhBang',30,315),(317,1,'do-dien-tu-va-cong-nghe',31,NULL),(318,2,'may-tinh-phu-kien',31,317),(319,3,'MayTinh-MayTinhBang',31,318),(320,1,'do-dien-tu-va-cong-nghe',32,NULL),(321,2,'may-tinh-phu-kien',32,320),(322,3,'MayTinh-MayTinhBang',32,321),(323,1,'do-dien-tu-va-cong-nghe',33,NULL),(324,2,'may-tinh-phu-kien',33,323),(325,3,'MayTinh-MayTinhBang',33,324),(326,1,'do-dien-tu-va-cong-nghe',34,NULL),(327,2,'may-tinh-phu-kien',34,326),(328,3,'MayTinh-MayTinhBang',34,327),(329,1,'do-dien-tu-va-cong-nghe',35,NULL),(330,2,'may-tinh-phu-kien',35,329),(331,3,'MayTinh-MayTinhBang',35,330),(352,1,'do-dien-tu-va-cong-nghe',36,NULL),(353,2,'may-tinh-phu-kien',36,352),(354,3,'MayTinh-MayTinhBang',36,353),(355,1,'do-dien-tu-va-cong-nghe',37,NULL),(356,2,'may-tinh-phu-kien',37,355),(357,3,'MayTinh-MayTinhBang',37,356),(358,1,'do-dien-tu-va-cong-nghe',38,NULL),(359,2,'may-tinh-phu-kien',38,358),(360,3,'MayTinh-MayTinhBang',38,359),(361,1,'do-dien-tu-va-cong-nghe',39,NULL),(362,2,'may-tinh-phu-kien',39,361),(363,3,'MayTinh-MayTinhBang',39,362),(364,1,'do-dien-tu-va-cong-nghe',40,NULL),(365,2,'may-tinh-phu-kien',40,364),(366,3,'MayTinh-MayTinhBang',40,365),(367,1,'dong-ho-hang-hieu',41,NULL),(368,2,'dong-ho-nam',41,367),(369,3,'dong-ho-doanh-nhan',41,368),(370,1,'dong-ho-hang-hieu',42,NULL),(371,2,'dong-ho-nam',42,370),(372,3,'dong-ho-doanh-nhan',42,371),(402,1,'dong-ho-hang-hieu',43,NULL),(403,2,'dong-ho-nam',43,402),(404,3,'dong-ho-doanh-nhan',43,403),(405,1,'dong-ho-hang-hieu',44,NULL),(406,2,'dong-ho-nam',44,405),(407,3,'dong-ho-doanh-nhan',44,406),(408,1,'dong-ho-hang-hieu',45,NULL),(409,2,'dong-ho-nam',45,408),(410,3,'dong-ho-doanh-nhan',45,409),(411,1,'dong-ho-hang-hieu',46,NULL),(412,2,'dong-ho-nam',46,411),(413,3,'dong-ho-doanh-nhan',46,412),(414,1,'dong-ho-hang-hieu',47,NULL),(415,2,'dong-ho-nam',47,414),(416,3,'dong-ho-doanh-nhan',47,415),(417,1,'dong-ho-hang-hieu',48,NULL),(418,2,'dong-ho-nam',48,417),(419,3,'dong-ho-doanh-nhan',48,418),(420,1,'dong-ho-hang-hieu',49,NULL),(421,2,'dong-ho-nam',49,420),(422,3,'dong-ho-doanh-nhan',49,421),(423,1,'dong-ho-hang-hieu',50,NULL),(424,2,'dong-ho-nu',50,423),(425,3,'dong-ho-doanh-nhan',50,424),(426,1,'dong-ho-hang-hieu',51,NULL),(427,2,'dong-ho-nu',51,426),(428,3,'dong-ho-doanh-nhan',51,427),(429,1,'dong-ho-hang-hieu',52,NULL),(430,2,'dong-ho-nu',52,429),(431,3,'dong-ho-doanh-nhan',52,430),(432,1,'dong-ho-hang-hieu',53,NULL),(433,2,'dong-ho-nu',53,432),(434,3,'dong-ho-doanh-nhan',53,433),(435,1,'dong-ho-hang-hieu',54,NULL),(436,2,'dong-ho-nu',54,435),(437,3,'dong-ho-doanh-nhan',54,436),(438,1,'dong-ho-hang-hieu',55,NULL),(439,2,'dong-ho-nu',55,438),(440,3,'dong-ho-doanh-nhan',55,439),(441,1,'dong-ho-hang-hieu',56,NULL),(442,2,'dong-ho-nu',56,441),(443,3,'dong-ho-doanh-nhan',56,442),(444,1,'dong-ho-hang-hieu',57,NULL),(445,2,'dong-ho-nam',57,444),(446,3,'dong-ho-thong-minh',57,445),(447,1,'dong-ho-hang-hieu',58,NULL),(448,2,'dong-ho-nam',58,447),(449,3,'dong-ho-thong-minh',58,448),(450,1,'dong-ho-hang-hieu',59,NULL),(451,2,'dong-ho-nam',59,450),(452,3,'dong-ho-thong-minh',59,451),(453,1,'dong-ho-hang-hieu',60,NULL),(454,2,'dong-ho-nam',60,453),(455,3,'dong-ho-thong-minh',60,454),(456,1,'dong-ho-hang-hieu',61,NULL),(457,2,'dong-ho-nam',61,456),(458,3,'dong-ho-thong-minh',61,457),(459,1,'dong-ho-hang-hieu',62,NULL),(460,2,'dong-ho-nam',62,459),(461,3,'dong-ho-thong-minh',62,460),(462,1,'dong-ho-hang-hieu',63,NULL),(463,2,'dong-ho-nam',63,462),(464,3,'dong-ho-thong-minh',63,463),(465,1,'dong-ho-hang-hieu',64,NULL),(466,2,'dong-ho-nam',64,465),(467,3,'dong-ho-thong-minh',64,466),(502,1,'fado-mall',65,NULL),(503,2,'fado-mall',65,502),(504,3,'fado-mall',65,503),(505,1,'fado-mall',66,NULL),(506,2,'fado-mall',66,505),(507,3,'fado-mall',66,506),(508,1,'fado-mall',67,NULL),(509,2,'fado-mall',67,508),(510,3,'fado-mall',67,509),(511,1,'fado-mall',68,NULL),(512,2,'fado-mall',68,511),(513,3,'fado-mall',68,512),(514,1,'fado-mall',69,NULL),(515,2,'fado-mall',69,514),(516,3,'fado-mall',69,515),(517,1,'fado-mall',70,NULL),(518,2,'fado-mall',70,517),(519,3,'fado-mall',70,518),(520,1,'thoi-trang-nam',71,NULL),(521,2,'tui-vi-nam',71,520),(522,3,'tui-xach-nam',71,521),(523,1,'thoi-trang-nam',72,NULL),(524,2,'tui-vi-nam',72,523),(525,3,'tui-xach-nam',72,524),(526,1,'thoi-trang-nam',73,NULL),(527,2,'tui-vi-nam',73,526),(528,3,'tui-xach-nam',73,527),(529,1,'thoi-trang-nam',74,NULL),(530,2,'tui-vi-nam',74,529),(531,3,'tui-xach-nam',74,530),(532,1,'thoi-trang-nam',75,NULL),(533,2,'tui-vi-nam',75,532),(534,3,'tui-xach-nam',75,533),(552,1,'thoi-trang-nu',76,NULL),(553,2,'giay-dep-nu',76,552),(554,3,'sneaker-nu',76,553),(555,1,'thoi-trang-nu',77,NULL),(556,2,'giay-dep-nu',77,555),(557,3,'sneaker-nu',77,556),(558,1,'thoi-trang-nu',78,NULL),(559,2,'giay-dep-nu',78,558),(560,3,'sneaker-nu',78,559),(561,1,'thoi-trang-nu',79,NULL),(562,2,'giay-dep-nu',79,561),(563,3,'sneaker-nu',79,562),(564,1,'thoi-trang-nu',80,NULL),(565,2,'giay-dep-nu',80,564),(566,3,'sneaker-nu',80,565),(567,1,'do-dien-va-cong-nghe',81,NULL),(568,2,'tai-nghe',81,567),(569,3,'tai-nghe-game',81,568),(570,1,'do-dien-va-cong-nghe',82,NULL),(571,2,'tai-nghe',82,570),(572,3,'tai-nghe-game',82,571),(573,1,'do-dien-va-cong-nghe',83,NULL),(574,2,'tai-nghe',83,573),(575,3,'tai-nghe-game',83,574),(576,1,'do-dien-va-cong-nghe',84,NULL),(577,2,'tai-nghe',84,576),(578,3,'tai-nghe-game',84,577),(579,1,'do-dien-va-cong-nghe',85,NULL),(580,2,'tai-nghe',85,579),(581,3,'tai-nghe-game',85,580),(582,1,'do-dien-va-cong-nghe',86,NULL),(583,2,'tai-nghe',86,582),(584,3,'tai-nghe-game',86,583),(585,1,'do-dien-va-cong-nghe',87,NULL),(586,2,'tai-nghe',87,585),(587,3,'tai-nghe-game',87,586),(588,1,'do-dien-va-cong-nghe',88,NULL),(589,2,'tai-nghe',88,588),(590,3,'tai-nghe-game',88,589),(602,1,'do-ho-hang-hieu',89,NULL),(603,2,'dong-ho-nu',89,602),(604,3,'dong-ho-thoi-trang',89,603),(605,1,'do-ho-hang-hieu',90,NULL),(606,2,'dong-ho-nam',90,605),(607,3,'dong-ho-the-thao',90,606),(608,1,'',91,NULL),(609,2,'',91,608),(610,3,'',91,609),(611,1,'do-dien-tu-va-cong-nghe',92,NULL),(612,2,'dien-thoai-va-phu-kien',92,611),(613,3,'op-lung-va-cuong-luc-dien-thoai',92,612),(614,1,'do-ho-hang-hieu',93,NULL),(615,2,'dong-ho-nu',93,614),(616,3,'dong-ho-thoi-trang',93,615),(617,1,'',94,NULL),(618,2,'',94,617),(619,3,'',94,618),(620,1,'do-dien-tu-va-cong-nghe',95,NULL),(621,2,'may-tinh-phu-kien',95,620),(622,3,'MayTinh-MayTinhBang',95,621),(652,1,'do-dien-tu-va-cong-nghe',96,NULL),(653,2,'may-tinh-phu-kien',96,652),(654,3,'MayTinh-MayTinhBang',96,653);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_seq`
--

DROP TABLE IF EXISTS `category_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_seq`
--

LOCK TABLES `category_seq` WRITE;
/*!40000 ALTER TABLE `category_seq` DISABLE KEYS */;
INSERT INTO `category_seq` VALUES (751);
/*!40000 ALTER TABLE `category_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checkout`
--

DROP TABLE IF EXISTS `checkout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `checkout` (
  `id` bigint NOT NULL,
  `total_price` double NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_57l4c9phqkyf0khcnsf06tswl` (`user_id`),
  CONSTRAINT `FK2t04bbekmv496a8dkcmqsknrr` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checkout`
--

LOCK TABLES `checkout` WRITE;
/*!40000 ALTER TABLE `checkout` DISABLE KEYS */;
INSERT INTO `checkout` VALUES (1,0,1),(2,0,2),(3,0,3),(4,0,4),(5,0,5),(52,0,52),(53,0,53),(102,0,102),(103,0,103),(104,0,104),(105,0,105),(106,0,106),(107,0,107),(108,0,108),(152,0,152),(153,0,153);
/*!40000 ALTER TABLE `checkout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checkout_seq`
--

DROP TABLE IF EXISTS `checkout_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `checkout_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checkout_seq`
--

LOCK TABLES `checkout_seq` WRITE;
/*!40000 ALTER TABLE `checkout_seq` DISABLE KEYS */;
INSERT INTO `checkout_seq` VALUES (251);
/*!40000 ALTER TABLE `checkout_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colors` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `quantity` int NOT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK49y5poj9s3h8c0e4hbmas7nyx` (`product_id`),
  CONSTRAINT `FK49y5poj9s3h8c0e4hbmas7nyx` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` VALUES (50,'Trắng Starlight',0,261),(51,'Xanh Dương',0,261),(52,'Xám',0,261),(53,'Tím',0,261),(54,'Trắng Starlight',0,302),(55,'Xanh Dương',0,302),(56,'Xám',0,302),(57,'Tím',0,302),(58,'Trắng Starlight',0,303),(59,'Xanh Dương',0,303),(60,'Xám',0,303),(61,'Tím',0,303),(62,'Trắng Starlight',0,304),(63,'Xanh Dương',0,304),(64,'Xám',0,304),(65,'Tím',0,304),(66,'Trắng Starlight',0,305),(67,'Xanh Dương',0,305),(68,'Xám',0,305),(69,'Tím',0,305),(70,'Trắng Starlight',0,306),(71,'Xanh Dương',0,306),(72,'Xám',0,306),(73,'Tím',0,306),(82,'Đen',0,353),(83,'Xanh Dương',0,353),(84,'Trắng',0,353),(85,'Bạc',0,353),(86,'Đen',0,354),(87,'Xanh Dương',0,354),(88,'Trắng',0,354),(89,'Bạc',0,354),(94,'Đen',0,356),(95,'Xanh Dương',0,356),(96,'Trắng',0,356),(97,'Bạc',0,356),(98,'Đen',0,357),(99,'Xanh Dương',0,357),(100,'Trắng',0,357),(101,'Bạc',0,357),(102,'Đen',0,358),(103,'Xanh Dương',0,358),(104,'Trắng',0,358),(105,'Bạc',0,358),(106,'Đen',0,359),(107,'Xanh Dương',0,359),(108,'Trắng',0,359),(109,'Đen',0,360),(110,'Xanh Dương',0,360),(111,'Trắng',0,360),(112,'Đen',0,361),(113,'Xanh Dương',0,361),(114,'Trắng',0,361),(115,'Đen',0,362),(116,'Xanh Dương',0,362),(117,'Trắng',0,362),(118,'Đen',0,363),(119,'Xanh Dương',0,363),(120,'Trắng',0,363),(136,'Đen',0,369),(137,'Xanh Dương',0,369),(138,'Trắng',0,369),(139,'Đen',0,370),(140,'Xanh Dương',0,370),(141,'Trắng',0,370),(142,'Đen',0,371),(143,'Xanh Dương',0,371),(144,'Trắng',0,371),(145,'Đen',0,372),(146,'Xanh Dương',0,372),(147,'Trắng',0,372),(148,'Đen',0,373),(149,'Xanh Dương',0,373),(150,'Trắng',0,373),(153,'Đen',0,408),(154,'Nâu',0,408),(155,'Đen',0,409),(156,'Nâu',0,409),(157,'PT Đen',0,409),(158,'Đen',0,410),(159,'Nâu',0,410),(160,'Đen',0,411),(161,'Nâu',0,411),(162,'Đen',0,412),(163,'Nâu',0,412),(164,'Đen',0,452),(165,'Trắng',0,452),(166,'Đen',0,453),(167,'Trắng',0,453),(168,'Đen',0,454),(169,'Trắng',0,454),(170,'Đen',0,455),(171,'Trắng',0,455),(172,'Đen',0,456),(173,'Trắng',0,456),(174,'Trắng',200,459),(175,'Lam đá phiến',200,459),(176,'Xám',200,459),(177,'Trắng',200,460),(178,'Đen',200,460),(179,'Đỏ',200,460),(180,'Trắng',200,461),(181,'Đen',200,461),(182,'Đỏ',200,461),(183,'Trắng',200,462),(184,'Đen',200,462),(185,'Xám',200,462),(188,'red',0,552);
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_statistics`
--

DROP TABLE IF EXISTS `data_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_statistics` (
  `id` bigint NOT NULL,
  `dealhot_quantity` bigint DEFAULT NULL,
  `sale_amount_quantity` double NOT NULL,
  `user_quantity` bigint DEFAULT NULL,
  `product_quantity` bigint DEFAULT NULL,
  `store_number` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_statistics`
--

LOCK TABLES `data_statistics` WRITE;
/*!40000 ALTER TABLE `data_statistics` DISABLE KEYS */;
INSERT INTO `data_statistics` VALUES (103,5,155738.5,14,40,666);
/*!40000 ALTER TABLE `data_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_statistics_seq`
--

DROP TABLE IF EXISTS `data_statistics_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_statistics_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_statistics_seq`
--

LOCK TABLES `data_statistics_seq` WRITE;
/*!40000 ALTER TABLE `data_statistics_seq` DISABLE KEYS */;
INSERT INTO `data_statistics_seq` VALUES (201);
/*!40000 ALTER TABLE `data_statistics_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dealhot`
--

DROP TABLE IF EXISTS `dealhot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dealhot` (
  `id` bigint NOT NULL,
  `discount_percent` int NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `total_price` double NOT NULL,
  `brand_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKk2oxl7dutniu07r0hhotwocm` (`brand_id`),
  CONSTRAINT `FKk2oxl7dutniu07r0hhotwocm` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dealhot`
--

LOCK TABLES `dealhot` WRITE;
/*!40000 ALTER TABLE `dealhot` DISABLE KEYS */;
INSERT INTO `dealhot` VALUES (53,45,'https://cdn-beup.woka.io/uploads/banners/2023/07/06/Fado.VN_1688638855.4199.jpg',1200,'Tai Nghe Bluetooth',660,1),(54,45,'https://cdn-beup.woka.io/uploads/banners/2023/07/06/Fado.VN_1688631732.1104.jpg',1350,'Máy ảnh chính hãng Nhật Bản',742.5,52),(55,45,'https://cdn-beup.woka.io/uploads/banners/2024/01/11/Fado.VN_1704937885.4905.jpg',1400,'HÀNG HIỆU SALE NỬA GIÁ',770,102),(56,46,'https://cdn-beup.woka.io/uploads/banners/2023/12/02/Fado.VN_1701480696.4525.jpg',1550,'Thực Phẩm Chức Năng',837,202),(57,45,'https://cdn-beup.woka.io/uploads/banners/2023/11/30/Fado.VN_1701325922.5214.jpg',1400,'GUCCI LUXURY',770,154);
/*!40000 ALTER TABLE `dealhot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dealhot_seq`
--

DROP TABLE IF EXISTS `dealhot_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dealhot_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dealhot_seq`
--

LOCK TABLES `dealhot_seq` WRITE;
/*!40000 ALTER TABLE `dealhot_seq` DISABLE KEYS */;
INSERT INTO `dealhot_seq` VALUES (201);
/*!40000 ALTER TABLE `dealhot_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favourite_list`
--

DROP TABLE IF EXISTS `favourite_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favourite_list` (
  `id` bigint NOT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9md7yxyhgder1l4u1vwasrnb0` (`product_id`),
  CONSTRAINT `FK9md7yxyhgder1l4u1vwasrnb0` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favourite_list`
--

LOCK TABLES `favourite_list` WRITE;
/*!40000 ALTER TABLE `favourite_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `favourite_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favourite_list_seq`
--

DROP TABLE IF EXISTS `favourite_list_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favourite_list_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favourite_list_seq`
--

LOCK TABLES `favourite_list_seq` WRITE;
/*!40000 ALTER TABLE `favourite_list_seq` DISABLE KEYS */;
INSERT INTO `favourite_list_seq` VALUES (101);
/*!40000 ALTER TABLE `favourite_list_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_category`
--

DROP TABLE IF EXISTS `group_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_category`
--

LOCK TABLES `group_category` WRITE;
/*!40000 ALTER TABLE `group_category` DISABLE KEYS */;
INSERT INTO `group_category` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),(21),(22),(23),(24),(25),(26),(27),(28),(29),(30),(31),(32),(33),(34),(35),(36),(37),(38),(39),(40),(41),(42),(43),(44),(45),(46),(47),(48),(49),(50),(51),(52),(53),(54),(55),(56),(57),(58),(59),(60),(61),(62),(63),(64),(65),(66),(67),(68),(69),(70),(71),(72),(73),(74),(75),(76),(77),(78),(79),(80),(81),(82),(83),(84),(85),(86),(87),(88),(89),(90),(91),(92),(93),(94),(95),(96);
/*!40000 ALTER TABLE `group_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_item`
--

DROP TABLE IF EXISTS `order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_item` (
  `id` bigint NOT NULL,
  `check_status` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `quantity` int DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `total_price` double NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKt4dc2r9nbvbujrljv3e23iibt` (`order_id`),
  KEY `FK551losx9j75ss5d6bfsqvijna` (`product_id`),
  CONSTRAINT `FK551losx9j75ss5d6bfsqvijna` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `FKt4dc2r9nbvbujrljv3e23iibt` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item`
--

LOCK TABLES `order_item` WRITE;
/*!40000 ALTER TABLE `order_item` DISABLE KEYS */;
INSERT INTO `order_item` VALUES (1,'true',21365.5,6,'256GB',128193,1,1,261),(2,'true',5509.1,5,'256GB',27545.5,1,2,306),(52,'true',7356.8,1,NULL,7356.8,152,52,353);
/*!40000 ALTER TABLE `order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_item_seq`
--

DROP TABLE IF EXISTS `order_item_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_item_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item_seq`
--

LOCK TABLES `order_item_seq` WRITE;
/*!40000 ALTER TABLE `order_item_seq` DISABLE KEYS */;
INSERT INTO `order_item_seq` VALUES (151);
/*!40000 ALTER TABLE `order_item_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint NOT NULL,
  `create_at` datetime(6) DEFAULT NULL,
  `delivery_date` datetime(6) DEFAULT NULL,
  `order_status` varchar(255) DEFAULT NULL,
  `total_item` int NOT NULL,
  `total_price` double NOT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKel9kyl84ego2otj2accfd8mr7` (`user_id`),
  CONSTRAINT `FKel9kyl84ego2otj2accfd8mr7` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2024-06-14 07:21:12.418000','2024-06-18 07:21:12.418000','RECEIVED',1,128193,1),(2,'2024-06-14 14:34:25.217000','2024-06-18 14:34:25.217000','RECEIVED',1,27545.5,1),(52,'2024-06-15 14:00:33.746000','2024-06-19 14:00:33.746000','PENDING',1,7356.8,152),(53,'2024-06-15 14:02:27.009000','2024-06-19 14:02:27.009000','PENDING',0,0,152);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_seq`
--

DROP TABLE IF EXISTS `orders_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_seq`
--

LOCK TABLES `orders_seq` WRITE;
/*!40000 ALTER TABLE `orders_seq` DISABLE KEYS */;
INSERT INTO `orders_seq` VALUES (151);
/*!40000 ALTER TABLE `orders_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` bigint NOT NULL,
  `create_at` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `discount_persent` int NOT NULL,
  `discounted_price` double NOT NULL,
  `favourite_status` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `num_ratings` int DEFAULT NULL,
  `price` double NOT NULL,
  `quantity` int NOT NULL,
  `sold_at` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `total_amount_purchased` double NOT NULL,
  `brand_id` bigint DEFAULT NULL,
  `category_id` bigint DEFAULT NULL,
  `dealhot_id` bigint DEFAULT NULL,
  `operating_system` varchar(255) DEFAULT NULL,
  `screen` varchar(255) DEFAULT NULL,
  `chip` varchar(255) DEFAULT NULL,
  `ram` varchar(255) DEFAULT NULL,
  `storage_capacity` varchar(255) DEFAULT NULL,
  `connector` varchar(255) DEFAULT NULL,
  `front_camera` varchar(255) DEFAULT NULL,
  `rear_camera` varchar(255) DEFAULT NULL,
  `rechargeable_batteries` varchar(255) DEFAULT NULL,
  `the_firm` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKs6cydsualtsrprvlf2bb3lcam` (`brand_id`),
  KEY `FK1mtsbur82frn64de7balymq9s` (`category_id`),
  KEY `FKcavldsddr4p5yqcyuu08jsqk0` (`dealhot_id`),
  CONSTRAINT `FK1mtsbur82frn64de7balymq9s` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `FKcavldsddr4p5yqcyuu08jsqk0` FOREIGN KEY (`dealhot_id`) REFERENCES `dealhot` (`id`),
  CONSTRAINT `FKs6cydsualtsrprvlf2bb3lcam` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (261,'2024-06-14 00:31:18.518521','Thiết kế của Galaxy Tab A9+ 5G đem đến một sự tươi mới và tinh tế. Máy sở hữu một ngoại hình hiện đại và thanh lịch với mặt lưng phẳng và khung kim loại. Các góc bo tròn mềm mại làm cho máy có sự đối lập với những đường nét phẳng phiu nên trông khá thú vị',5,21365.5,'false','https://cdn.tgdd.vn/Products/Images/522/325506/ipad-air-13-inch-m2-wifi-kem-thumb-600x600.jpg',0,22490,0,'Mỹ','Máy tính bảng iPad Air 6 M2 13 inch WiFi 128GB',0,1,331,NULL,'iPadOS 17','13in Retina IPS LCD','Apple M2 8 nhân','8 GB','128 GB','Nghe gọi qua FaceTime','12 MP','12 MP','36.59 , Wh20 W','iPad (Apple)'),(302,'2024-06-14 08:14:13.543904','Thiết kế của Galaxy Tab A9+ 5G đem đến một sự tươi mới và tinh tế. Máy sở hữu một ngoại hình hiện đại và thanh lịch với mặt lưng phẳng và khung kim loại. Các góc bo tròn mềm mại làm cho máy có sự đối lập với những đường nét phẳng phiu nên trông khá thú vị',10,26091,'false','https://cdn.tgdd.vn/Products/Images/522/325513/ipad-pro-11-inch-m4-wifi-black-thumb-600x600.jpg',0,28990,0,'Mỹ','Máy tính bảng iPad Pro M4 11 inch WiFi 256GB ',0,1,354,NULL,'iPadOS 17','13in Retina IPS LCD','Apple M2 8 nhân','8 GB','128 GB','Nghe gọi qua FaceTime','12 MP','12 MP','36.59 , Wh20 W','iPad (Apple)'),(303,'2024-06-14 08:15:27.428062','Thiết kế của Galaxy Tab A9+ 5G đem đến một sự tươi mới và tinh tế. Máy sở hữu một ngoại hình hiện đại và thanh lịch với mặt lưng phẳng và khung kim loại. Các góc bo tròn mềm mại làm cho máy có sự đối lập với những đường nét phẳng phiu nên trông khá thú vị',8,1922.8000000000002,'false','https://cdn.tgdd.vn/Products/Images/522/320989/tcl-tab-10l-gen-2-black-thumb-600x600.jpg',0,2090,0,'Mỹ','Máy tính bảng TCL Tab 10L Gen 2 WiFi 3GB/32GB',0,1,357,NULL,'iPadOS 17','13in Retina IPS LCD','Apple M2 8 nhân','8 GB','128 GB','Nghe gọi qua FaceTime','12 MP','12 MP','36.59 , Wh20 W','iPad (Apple)'),(304,'2024-06-14 08:17:08.106187','Thiết kế của Galaxy Tab A9+ 5G đem đến một sự tươi mới và tinh tế. Máy sở hữu một ngoại hình hiện đại và thanh lịch với mặt lưng phẳng và khung kim loại. Các góc bo tròn mềm mại làm cho máy có sự đối lập với những đường nét phẳng phiu nên trông khá thú vị',15,6026.5,'false','https://cdn.tgdd.vn/Products/Images/522/247517/iPad-9-wifi-trang-600x600.jpg',0,7090,0,'Mỹ','Máy tính bảng iPad 9 WiFi 64GB',0,1,360,NULL,'iPadOS 17','13in Retina IPS LCD','Apple M2 8 nhân','8 GB','128 GB','Nghe gọi qua FaceTime','12 MP','12 MP','36.59 , Wh20 W','iPad (Apple)'),(305,'2024-06-14 08:18:25.312746','Thiết kế của Galaxy Tab A9+ 5G đem đến một sự tươi mới và tinh tế. Máy sở hữu một ngoại hình hiện đại và thanh lịch với mặt lưng phẳng và khung kim loại. Các góc bo tròn mềm mại làm cho máy có sự đối lập với những đường nét phẳng phiu nên trông khá thú vị',10,6021,'false','https://cdn.tgdd.vn/Products/Images/522/317623/samsung-galaxy-a9-plus-den-thumb-600x600.jpg',0,6690,0,'Mỹ','Máy tính bảng Samsung Galaxy Tab A9+ 5G 4GB/64GB',0,54,363,NULL,'iPadOS 17','13in Retina IPS LCD','Apple M2 8 nhân','8 GB','128 GB','Nghe gọi qua FaceTime','12 MP','12 MP','36.59 , Wh20 W','iPad (Apple)'),(306,'2024-06-14 08:20:49.385418','Thiết kế của Galaxy Tab A9+ 5G đem đến một sự tươi mới và tinh tế. Máy sở hữu một ngoại hình hiện đại và thanh lịch với mặt lưng phẳng và khung kim loại. Các góc bo tròn mềm mại làm cho máy có sự đối lập với những đường nét phẳng phiu nên trông khá thú vị',11,5509.1,'false','https://cdn.tgdd.vn/Products/Images/522/322613/oppo-pad-neo-6gb-thumb-1-600x600.jpg',0,6190,0,'Anh','Máy tính bảng OPPO Pad Neo WiFi 6GB/128GB',0,102,366,NULL,'iPadOS 17','13in Retina IPS LCD','Apple M2 8 nhân','8 GB','128 GB','Nghe gọi qua FaceTime','12 MP','12 MP','36.59 , Wh20 W','iPad (Apple)'),(353,'2024-06-14 13:56:02.117558','Đồng hồ chính hãng, xuất xứ Nhật Bản nên độ bền cao. Giá tầm trung, triệu đồng tại WatchStore .Thiết kế thanh lịch, sang trọng, khỏe khoắn với bộ 3 màu tương phản đen – bạc – đỏ. Mặt kính Mineral Crystal ',12,7356.8,'false','https://www.watchstore.vn/images/products/2024/05/17/resized/thiet-ke-chua-co-ten-9-_1715946698.webp',0,8360,0,'Mỹ','Tissot - Nam T095.410.36.127.00 Size 40 Mm',0,152,407,NULL,'','','','','','','','','',''),(354,'2024-06-14 14:00:42.701297','Đồng hồ chính hãng, xuất xứ Nhật Bản nên độ bền cao. Giá tầm trung, triệu đồng tại WatchStore .Thiết kế thanh lịch, sang trọng, khỏe khoắn với bộ 3 màu tương phản đen – bạc – đỏ. Mặt kính Mineral Crystal ',26,702.26,'false','https://www.watchstore.vn/images/products/2024/06/11/resized/casio-nam-mtp-vt01d-1budf_1718102507.webp',0,949,0,'Mỹ','Casio - Nam MTP-VT01D-1BUDF Size 40mm',0,103,410,NULL,'','','','','','','','','',''),(356,'2024-06-14 14:12:15.145066','Đồng hồ chính hãng, xuất xứ Nhật Bản nên độ bền cao. Giá tầm trung, triệu đồng tại WatchStore .Thiết kế thanh lịch, sang trọng, khỏe khoắn với bộ 3 màu tương phản đen – bạc – đỏ. Mặt kính Mineral Crystal ',26,1242.46,'false','https://www.watchstore.vn/images/products/2024/resized/1-khung-sp-913224839-1678629174-1712485160.webp',0,1679,0,'Mỹ','Casio - Nam MTP-1375L-7AVDF Size 42mm',0,103,416,NULL,'','','','','','','','','',''),(357,'2024-06-14 14:14:00.522742','Đồng hồ chính hãng, xuất xứ Nhật Bản nên độ bền cao. Giá tầm trung, triệu đồng tại WatchStore .Thiết kế thanh lịch, sang trọng, khỏe khoắn với bộ 3 màu tương phản đen – bạc – đỏ. Mặt kính Mineral Crystal ',26,2088.28,'false','https://www.watchstore.vn/images/products/2024/resized/1-khung-sp-1383270855-242703146-1712486194.webp',0,2822,0,'Nhật','Casio - Nam GA-2100-1A1DR Size 45.4mm',0,103,419,NULL,'','','','','','','','','',''),(358,'2024-06-14 14:15:31.741826','Đồng hồ chính hãng, xuất xứ Nhật Bản nên độ bền cao. Giá tầm trung, triệu đồng tại WatchStore .Thiết kế thanh lịch, sang trọng, khỏe khoắn với bộ 3 màu tương phản đen – bạc – đỏ. Mặt kính Mineral Crystal ',26,646.76,'false','https://www.watchstore.vn/images/products/2024/resized/1-khung-sp-1274501040-1790641903-1712486164.webp',0,874,0,'Nhật','Casio - Nam MTP-VD01L-1EVUDF Size 45mm',0,103,422,NULL,'','','','','','','','','',''),(359,'2024-06-14 14:20:36.354322','Đồng hồ chính hãng, xuất xứ Nhật Bản nên độ bền cao. Giá tầm trung, triệu đồng tại WatchStore .Thiết kế thanh lịch, sang trọng, khỏe khoắn với bộ 3 màu tương phản đen – bạc – đỏ. Mặt kính Mineral Crystal ',26,621.6,'false','https://www.watchstore.vn/images/products/2024/resized/la670wa-7df-1712483084.webp',0,840,0,'Nhật','Casio - Nữ LA670WA-7DF Size 30.3 × 24.6 Mm',0,103,425,NULL,'','','','','','','','','',''),(360,'2024-06-14 14:21:48.307532','Đồng hồ chính hãng, xuất xứ Nhật Bản nên độ bền cao. Giá tầm trung, triệu đồng tại WatchStore .Thiết kế thanh lịch, sang trọng, khỏe khoắn với bộ 3 màu tương phản đen – bạc – đỏ. Mặt kính Mineral Crystal ',26,591.26,'false','https://www.watchstore.vn/images/products/2024/resized/lw-204-4adf-1712487053.webp',0,799,0,'Nhật','Casio - Nữ LW-204-4ADF Size 38.9 × 35 Mm',0,103,428,NULL,'','','','','','','','','',''),(361,'2024-06-14 14:22:34.826088','Đồng hồ chính hãng, xuất xứ Nhật Bản nên độ bền cao. Giá tầm trung, triệu đồng tại WatchStore .Thiết kế thanh lịch, sang trọng, khỏe khoắn với bộ 3 màu tương phản đen – bạc – đỏ. Mặt kính Mineral Crystal ',26,1783.4,'false','https://www.watchstore.vn/images/products/2024/resized/gma-s2100-4adr-1712491090.webp',0,2410,0,'Nhật','Casio - Nữ GMA-S2100-4ADR Size 43mm',0,103,431,NULL,'','','','','','','','','',''),(362,'2024-06-14 14:25:44.999802','Đồng hồ chính hãng, xuất xứ Nhật Bản nên độ bền cao. Giá tầm trung, triệu đồng tại WatchStore .Thiết kế thanh lịch, sang trọng, khỏe khoắn với bộ 3 màu tương phản đen – bạc – đỏ. Mặt kính Mineral Crystal ',16,8326.08,'false','https://www.watchstore.vn/images/products/2024/resized/1-1667720770334-1712490899.webp',0,9912,0,'Mỹ','Versace - Nữ VEPX00921 Size 38mm',0,153,434,NULL,'','','','','','','','','',''),(363,'2024-06-14 14:26:38.368486','Đồng hồ chính hãng, xuất xứ Nhật Bản nên độ bền cao. Giá tầm trung, triệu đồng tại WatchStore .Thiết kế thanh lịch, sang trọng, khỏe khoắn với bộ 3 màu tương phản đen – bạc – đỏ. Mặt kính Mineral Crystal ',16,17640,'false','https://www.watchstore.vn/images/products/2024/resized/v16060017-1-1712493250.webp',0,21000,0,'Mỹ','Versace - Nữ V16060017 Size 35mm',0,153,437,NULL,'','','','','','','','','',''),(369,'2024-06-14 14:40:46.352961','Đồng hồ chính hãng, xuất xứ Nhật Bản nên độ bền cao. Giá tầm trung, triệu đồng tại WatchStore .Thiết kế thanh lịch, sang trọng, khỏe khoắn với bộ 3 màu tương phản đen – bạc – đỏ. Mặt kính Mineral Crystal ',25,517.5,'false','https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/795/10051201-apple-watch-s7-gps-45mm-vien-nhom-day-cao-su-xanh-duong-1.jpg',0,690,0,'Mỹ','Đồng hồ thông minh Gloryfit S8 Pro',0,1,455,NULL,'','','','','','','','','',''),(370,'2024-06-14 14:42:48.223836','Đồng hồ chính hãng, xuất xứ Nhật Bản nên độ bền cao. Giá tầm trung, triệu đồng tại WatchStore .Thiết kế thanh lịch, sang trọng, khỏe khoắn với bộ 3 màu tương phản đen – bạc – đỏ. Mặt kính Mineral Crystal ',0,990,'false','https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/597/10042243-dong-ho-thong-minh-samsung-galaxy-watch-fit-e-den-1.jpg',0,990,0,'Nhật','Đồng hồ thông minh Samsung Galaxy Fit E đen',0,54,458,NULL,'','','','','','','','','',''),(371,'2024-06-14 14:44:23.394635','Đồng hồ chính hãng, xuất xứ Nhật Bản nên độ bền cao. Giá tầm trung, triệu đồng tại WatchStore .Thiết kế thanh lịch, sang trọng, khỏe khoắn với bộ 3 màu tương phản đen – bạc – đỏ. Mặt kính Mineral Crystal ',43,5352.3,'false','https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/705/10047959-apple-watch-se-gps-44mm-vo-nhom-day-cao-su-trang-1.jpg',0,9390,0,'Mỹ','Apple Watch SE GPS 44mm Vỏ nhôm Dây cao su Trắng',0,1,461,NULL,'','','','','','','','','',''),(372,'2024-06-14 14:46:03.420620','Đồng hồ chính hãng, xuất xứ Nhật Bản nên độ bền cao. Giá tầm trung, triệu đồng tại WatchStore .Thiết kế thanh lịch, sang trọng, khỏe khoắn với bộ 3 màu tương phản đen – bạc – đỏ. Mặt kính Mineral Crystal ',42,7534.200000000001,'false','https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/868/apple-watch-s8-gps-45mm-vien-nhom-day-silicone-trang-starlight-1.jpg',0,12990,0,'Mỹ','Apple Watch S8 GPS 45mm viền nhôm dây silicone Trắng Starlight MNP23VN/A',0,1,464,NULL,'','','','','','','','','',''),(373,'2024-06-14 14:47:18.327531','Đồng hồ chính hãng, xuất xứ Nhật Bản nên độ bền cao. Giá tầm trung, triệu đồng tại WatchStore .Thiết kế thanh lịch, sang trọng, khỏe khoắn với bộ 3 màu tương phản đen – bạc – đỏ. Mặt kính Mineral Crystal ',0,10490,'false','https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/547/664.jpg',0,10490,0,'Mỹ','Apple WATCH SERIES 4 40MM SILVER - SEASHELL SPORT LOOP',0,1,467,NULL,'','','','','','','','','',''),(402,'2024-06-14 21:02:20.317570','Sản phẩm Horbaach 5-HTP Supplement 400mg Viên uống giảm căng thẳng cân bằng tâm trạng 120 viên của thương hiệu Horbaach với nhiều tính năng nổi bậc, là một sản phẩm được nhiều khách hàng trên thế giới lựa chọn.',20,710.4000000000001,'false','https://static.megavita.vn/uploads/product/2022/02/28/1646024486.2736.jpg',0,888,0,'Mỹ','Horbaach 5-HTP Supplement 400mg Viên uống giảm căng thẳng cân bằng tâm trạng 120 viên',0,202,504,NULL,'','','','','','','','','',''),(403,'2024-06-14 21:11:04.479554','Sản phẩm Horbaach 5-HTP Supplement 400mg Viên uống giảm căng thẳng cân bằng tâm trạng 120 viên của thương hiệu Horbaach với nhiều tính năng nổi bậc, là một sản phẩm được nhiều khách hàng trên thế giới lựa chọn.',13,559.41,'false','https://cdn-beup.woka.io/uploads/store-merchant/2022/08/08/Fado.VN_1659952185.5563.jpg',0,643,0,'Việt Nam','Horbaach Apple Cider Vinegar 2400mg - Viên uống giấm táo giảm cân 200 viên',0,202,507,NULL,'','','','','','','','','',''),(404,'2024-06-14 21:18:49.482009','Sản phẩm Horbaach 5-HTP Supplement 400mg Viên uống giảm căng thẳng cân bằng tâm trạng 120 viên của thương hiệu Horbaach với nhiều tính năng nổi bậc, là một sản phẩm được nhiều khách hàng trên thế giới lựa chọn.',17,315.4,'false','https://static.megavita.vn/uploads/product/2022/02/17/1645086657.6812.jpg',0,380,0,'Việt Nam','Swanson Full Spectrum Rhodiola Rosea Root 100 viên - Viên Uống Tăng Cường Miễn Dịch Giảm Stress.',0,203,510,NULL,'','','','','','','','','',''),(405,'2024-06-14 21:21:06.572013','Sản phẩm Horbaach 5-HTP Supplement 400mg Viên uống giảm căng thẳng cân bằng tâm trạng 120 viên của thương hiệu Horbaach với nhiều tính năng nổi bậc, là một sản phẩm được nhiều khách hàng trên thế giới lựa chọn.',3,290.03,'false','https://static.megavita.vn/uploads/product/2022/02/17/1645086657.6812.jpg',0,299,0,'Việt Nam','Viên Uống Giảm Stress Swanson Amino Acid 5-HTP Extra Strength 100mg 60 Viên',0,203,513,NULL,'','','','','','','','','',''),(408,'2024-06-14 21:42:05.033225','Lịch lãm trong mỗi tình huống để tự tin ngoại giao, thể hiện tiếng nói cá nhân mới là quý ông đích thực. Và một chiếc túi xách nam da thật đẹp sang trọng như ELLY HOMME – ETM25 sẽ là lựa chọn hoàn hảo cho trang phục mỗi ngày của quý ông!',17,2074.17,'false','https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2024/05/24070057/tui-xach-nam-cao-cap-da-that-elly-homme-etm25-16.jpg',0,2499,0,'Việt Nam','TÚI XÁCH NAM CAO CẤP DA THẬT ELLY HOMME – ETM25',0,204,522,NULL,'','','','','','','','','',''),(409,'2024-06-14 21:44:53.308572','Lịch lãm trong mỗi tình huống để tự tin ngoại giao, thể hiện tiếng nói cá nhân mới là quý ông đích thực. Và một chiếc túi xách nam da thật đẹp sang trọng như ELLY HOMME – ETM25 sẽ là lựa chọn hoàn hảo cho trang phục mỗi ngày của quý ông!',5,2279.0499999999997,'false','https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2024/01/07163751/tui-clutch-nam-da-that-elly-homme-ecm23-23-600x600.jpg',0,2399,0,'Việt Nam','TÚI CLUTCH NAM DA THẬT ELLY HOMME – ECM23',0,204,525,NULL,'','','','','','','','','',''),(410,'2024-06-14 21:46:18.298296','Lịch lãm trong mỗi tình huống để tự tin ngoại giao, thể hiện tiếng nói cá nhân mới là quý ông đích thực. Và một chiếc túi xách nam da thật đẹp sang trọng như ELLY HOMME – ETM25 sẽ là lựa chọn hoàn hảo cho trang phục mỗi ngày của quý ông!',10,2339.1,'false','https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2023/07/28223453/tui-clutch-nam-da-that-elly-homme-ecm14-2-600x600.jpg',0,2599,0,'Việt Nam','TÚI CLUTCH NAM DA THẬT ELLY HOMME – ECM14',0,204,528,NULL,'','','','','','','','','',''),(411,'2024-06-14 21:47:25.620547','Lịch lãm trong mỗi tình huống để tự tin ngoại giao, thể hiện tiếng nói cá nhân mới là quý ông đích thực. Và một chiếc túi xách nam da thật đẹp sang trọng như ELLY HOMME – ETM25 sẽ là lựa chọn hoàn hảo cho trang phục mỗi ngày của quý ông!',7,3719.0699999999997,'false','https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/07/11234038/z4957662788588_9110687da46d97b92c5bf1dc16baf1a5.jpg',0,3999,0,'Việt Nam','TÚI XÁCH NAM DA THẬT ELLY HOMME – ETM15',0,204,531,NULL,'','','','','','','','','',''),(412,'2024-06-14 21:48:44.255018','Lịch lãm trong mỗi tình huống để tự tin ngoại giao, thể hiện tiếng nói cá nhân mới là quý ông đích thực. Và một chiếc túi xách nam da thật đẹp sang trọng như ELLY HOMME – ETM25 sẽ là lựa chọn hoàn hảo cho trang phục mỗi ngày của quý ông!',5,2203.0499999999997,'false','https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2019/08/13123420/tui-xach-nam-cao-cap-da-that-ELLY-ETM11-0.jpg',0,2319,0,'Việt Nam','TÚI XÁCH NAM DA THẬT ELLY HOMME – ETM11',0,204,534,NULL,'','','','','','','','','',''),(452,'2024-06-15 08:53:11.866759','Lịch lãm trong mỗi tình huống để tự tin ngoại giao, thể hiện tiếng nói cá nhân mới là quý ông đích thực. Và một chiếc túi xách nam da thật đẹp sang trọng như ELLY HOMME – ETM25 sẽ là lựa chọn hoàn hảo cho trang phục mỗi ngày của quý ông!',10,1979.1000000000001,'false','https://product.hstatic.net/1000284478/product/41_pw1-56210071-1_1_e9299d0d574f48d1b82335ad7eb586b4_large.jpg',0,2199,0,'Việt Nam','PEDRO - Giày sneakers nữ cổ thấp Summit',0,252,554,NULL,'','','','','','','','','',''),(453,'2024-06-15 08:56:15.757177','Lịch lãm trong mỗi tình huống để tự tin ngoại giao, thể hiện tiếng nói cá nhân mới là quý ông đích thực. Và một chiếc túi xách nam da thật đẹp sang trọng như ELLY HOMME – ETM25 sẽ là lựa chọn hoàn hảo cho trang phục mỗi ngày của quý ông!',5,1795.5,'false','https://product.hstatic.net/1000284478/product/nttp_180125_1_3e2bf6168af94a688daa6db39909dfd7_large.jpg',0,1890,0,'Việt Nam','SKECHERS - Giày sneakers nữ cổ thấp Outdoor Stamina',0,253,557,NULL,'','','','','','','','','',''),(454,'2024-06-15 09:01:39.742749','Lịch lãm trong mỗi tình huống để tự tin ngoại giao, thể hiện tiếng nói cá nhân mới là quý ông đích thực. Và một chiếc túi xách nam da thật đẹp sang trọng như ELLY HOMME – ETM25 sẽ là lựa chọn hoàn hảo cho trang phục mỗi ngày của quý ông!',12,2727.12,'false','https://product.hstatic.net/1000284478/product/0cm_wl574zqd_1_e5c0a197c51b4f7bb7cda7ac606467ee_large.jpg',0,3099,0,'Việt Nam','NEW BALANCE - Giày sneakers nữ cổ thấp 574',0,254,560,NULL,'','','','','','','','','',''),(455,'2024-06-15 09:02:54.618371','Lịch lãm trong mỗi tình huống để tự tin ngoại giao, thể hiện tiếng nói cá nhân mới là quý ông đích thực. Và một chiếc túi xách nam da thật đẹp sang trọng như ELLY HOMME – ETM25 sẽ là lựa chọn hoàn hảo cho trang phục mỗi ngày của quý ông!',15,1699.1499999999999,'false','https://product.hstatic.net/1000284478/product/00w_bbw80www_1_a23b0881057b45da849cd89b8c73737f_large.jpg',0,1999,0,'Việt Nam','NEW BALANCE - Giày sneakers nữ cổ thấp BBW80',0,254,563,NULL,'','','','','','','','','',''),(456,'2024-06-15 09:04:07.632365','Lịch lãm trong mỗi tình huống để tự tin ngoại giao, thể hiện tiếng nói cá nhân mới là quý ông đích thực. Và một chiếc túi xách nam da thật đẹp sang trọng như ELLY HOMME – ETM25 sẽ là lựa chọn hoàn hảo cho trang phục mỗi ngày của quý ông!',15,1920.1499999999999,'false','https://product.hstatic.net/1000284478/product/00w_bb480lfd_1_80e8189235c840a5b26c903a6c2aa4a2_large.jpg',0,2259,0,'Việt Nam','NEW BALANCE - Giày sneakers unisex cổ thấp 480',0,254,566,NULL,'','','','','','','','','',''),(457,'2024-06-15 09:21:08.033679','Lịch lãm trong mỗi tình huống để tự tin ngoại giao, thể hiện tiếng nói cá nhân mới là quý ông đích thực. Và một chiếc túi xách nam da thật đẹp sang trọng như ELLY HOMME – ETM25 sẽ là lựa chọn hoàn hảo cho trang phục mỗi ngày của quý ông!',0,6199,'false','https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/MTJV3?wid=890&hei=890&fmt=jpeg&qlt=90&.v=1694014871985',0,6199,0,'Mỹ','AirPods Pro (thế hệ thứ 2) với Hộp Sạc MagSafe (USB-C)',0,1,572,NULL,'','','','','','','','','',''),(459,'2024-06-15 10:17:24.822845','Lịch lãm trong mỗi tình huống để tự tin ngoại giao, thể hiện tiếng nói cá nhân mới là quý ông đích thực. Và một chiếc túi xách nam da thật đẹp sang trọng như ELLY HOMME – ETM25 sẽ là lựa chọn hoàn hảo cho trang phục mỗi ngày của quý ông!',5,4749.05,'false','https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/MUW33?wid=890&hei=890&fmt=jpeg&qlt=90&.v=1712255584823',0,4999,0,'Mỹ','Beats Solo 4 – Tai Nghe Kiểu Áp Tai Không Dây – Mây Hồng',0,1,581,NULL,'','','','','','','','','',''),(460,'2024-06-15 10:22:30.709763','Lịch lãm trong mỗi tình huống để tự tin ngoại giao, thể hiện tiếng nói cá nhân mới là quý ông đích thực. Và một chiếc túi xách nam da thật đẹp sang trọng như ELLY HOMME – ETM25 sẽ là lựa chọn hoàn hảo cho trang phục mỗi ngày của quý ông!',5,3324.0499999999997,'false','https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/MJ503?wid=890&hei=890&fmt=jpeg&qlt=95&.v=1621538312000',0,3499,0,'Mỹ','Beats Studio Buds Tai nghe không dây đích thực khử tiếng ồn – Beats Đỏ',0,1,584,NULL,'','','','','','','','','',''),(461,'2024-06-15 10:25:02.851624','Lịch lãm trong mỗi tình huống để tự tin ngoại giao, thể hiện tiếng nói cá nhân mới là quý ông đích thực. Và một chiếc túi xách nam da thật đẹp sang trọng như ELLY HOMME – ETM25 sẽ là lựa chọn hoàn hảo cho trang phục mỗi ngày của quý ông!',7,12275.07,'false','https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/airpods-max-select-skyblue-202011?wid=890&hei=890&fmt=jpeg&qlt=90&.v=1604022365000',0,13199,0,'Mỹ',' Apple-AirPods Max',0,1,587,NULL,'','','','','','','','','',''),(462,'2024-06-15 10:26:16.754293','Lịch lãm trong mỗi tình huống để tự tin ngoại giao, thể hiện tiếng nói cá nhân mới là quý ông đích thực. Và một chiếc túi xách nam da thật đẹp sang trọng như ELLY HOMME – ETM25 sẽ là lựa chọn hoàn hảo cho trang phục mỗi ngày của quý ông!',10,7199.1,'false','https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/MQTR3?wid=890&hei=890&fmt=jpeg&qlt=90&.v=1687660671097',0,7999,0,'Mỹ',' Tai nghe không dây Beats Studio Pro — Vàng Sa Thạch',0,1,590,NULL,'','','','','','','','','',''),(552,'2024-06-26 09:14:56.051164','123',12,108.24,'false','https://cdn.tgdd.vn/Products/Images/522/325505/ipad-air-11-inch-m2-wifi-purple-thumb-600x600.jpg',0,123,0,'Nhật','abc',0,352,654,NULL,'asda','abc','asd','asd','asd','asd','asd','asd','asd','asd');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_seq`
--

DROP TABLE IF EXISTS `product_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_seq`
--

LOCK TABLES `product_seq` WRITE;
/*!40000 ALTER TABLE `product_seq` DISABLE KEYS */;
INSERT INTO `product_seq` VALUES (651);
/*!40000 ALTER TABLE `product_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating` (
  `id` bigint NOT NULL,
  `create_at` datetime(6) DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `product_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKlkuwie0au2dru36asng9nywmh` (`product_id`),
  KEY `FKpn05vbx6usw0c65tcyuce4dw5` (`user_id`),
  CONSTRAINT `FKlkuwie0au2dru36asng9nywmh` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `FKpn05vbx6usw0c65tcyuce4dw5` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating_seq`
--

DROP TABLE IF EXISTS `rating_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating_seq`
--

LOCK TABLES `rating_seq` WRITE;
/*!40000 ALTER TABLE `rating_seq` DISABLE KEYS */;
INSERT INTO `rating_seq` VALUES (1);
/*!40000 ALTER TABLE `rating_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `id` bigint NOT NULL,
  `create_at` datetime(6) DEFAULT NULL,
  `review` varchar(255) DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKiyof1sindb9qiqr9o8npj8klt` (`product_id`),
  KEY `FKiyf57dy48lyiftdrf7y87rnxi` (`user_id`),
  CONSTRAINT `FKiyf57dy48lyiftdrf7y87rnxi` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKiyof1sindb9qiqr9o8npj8klt` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_seq`
--

DROP TABLE IF EXISTS `review_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_seq`
--

LOCK TABLES `review_seq` WRITE;
/*!40000 ALTER TABLE `review_seq` DISABLE KEYS */;
INSERT INTO `review_seq` VALUES (1);
/*!40000 ALTER TABLE `review_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `size`
--

DROP TABLE IF EXISTS `size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `size` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `quantity` int NOT NULL,
  `colors_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKp72klsol2xav4keqlpyf4oadi` (`colors_id`),
  CONSTRAINT `FKp72klsol2xav4keqlpyf4oadi` FOREIGN KEY (`colors_id`) REFERENCES `colors` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=255 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `size`
--

LOCK TABLES `size` WRITE;
/*!40000 ALTER TABLE `size` DISABLE KEYS */;
INSERT INTO `size` VALUES (134,'128GB',60,50),(135,'256GB',67,50),(136,'512GB',34,50),(137,'1TB',25,50),(138,'128GB',60,51),(139,'256GB',67,51),(140,'512GB',34,51),(141,'128GB',60,52),(142,'256GB',67,52),(143,'128GB',60,53),(144,'256GB',67,53),(145,'128GB',60,54),(146,'256GB',67,54),(147,'512GB',34,54),(148,'1TB',25,54),(149,'128GB',60,55),(150,'256GB',67,55),(151,'512GB',34,55),(152,'128GB',60,56),(153,'256GB',67,56),(154,'128GB',60,57),(155,'256GB',67,57),(156,'128GB',60,58),(157,'256GB',67,58),(158,'512GB',34,58),(159,'1TB',25,58),(160,'128GB',60,59),(161,'256GB',67,59),(162,'512GB',34,59),(163,'128GB',60,60),(164,'256GB',67,60),(165,'128GB',60,61),(166,'256GB',67,61),(167,'128GB',60,62),(168,'256GB',67,62),(169,'512GB',34,62),(170,'1TB',25,62),(171,'128GB',60,63),(172,'256GB',67,63),(173,'512GB',34,63),(174,'128GB',60,64),(175,'256GB',67,64),(176,'128GB',60,65),(177,'256GB',67,65),(178,'128GB',60,66),(179,'256GB',67,66),(180,'512GB',34,66),(181,'1TB',25,66),(182,'128GB',60,67),(183,'256GB',67,67),(184,'512GB',34,67),(185,'128GB',60,68),(186,'256GB',67,68),(187,'128GB',60,69),(188,'256GB',67,69),(189,'128GB',60,70),(190,'256GB',67,70),(191,'512GB',34,70),(192,'1TB',25,70),(193,'128GB',60,71),(194,'256GB',67,71),(195,'512GB',34,71),(196,'128GB',60,72),(197,'256GB',67,72),(198,'128GB',60,73),(199,'256GB',67,73),(200,'35',123,164),(201,'36',53,164),(202,'37',45,164),(203,'38',54,164),(204,'39',10,164),(205,'35',123,165),(206,'36',53,165),(207,'37',45,165),(208,'38',54,165),(209,'39',10,165),(210,'35',123,166),(211,'36',53,166),(212,'37',45,166),(213,'38',54,166),(214,'39',10,166),(215,'35',123,167),(216,'36',53,167),(217,'37',45,167),(218,'38',54,167),(219,'39',10,167),(220,'35',123,168),(221,'36',53,168),(222,'37',45,168),(223,'38',54,168),(224,'39',10,168),(225,'35',123,169),(226,'36',53,169),(227,'37',45,169),(228,'38',54,169),(229,'39',10,169),(230,'35',123,170),(231,'36',53,170),(232,'37',45,170),(233,'38',54,170),(234,'39',10,170),(235,'35',123,171),(236,'36',53,171),(237,'37',45,171),(238,'38',54,171),(239,'39',10,171),(240,'35',123,172),(241,'36',53,172),(242,'37',45,172),(243,'38',54,172),(244,'39',10,172),(245,'35',123,173),(246,'36',53,173),(247,'37',45,173),(248,'38',54,173),(249,'39',10,173),(252,'1',1,188),(253,'2',1,188),(254,'3',2,188);
/*!40000 ALTER TABLE `size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL,
  `create_at` datetime(6) DEFAULT NULL,
  `date_of_birth_date_time` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `total_amount_purchased` double NOT NULL,
  `is_admin` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,NULL,'2024-06-12','thinh1@gmail.com','thinh26','nam','$2a$10$cHcD66zd.E7av7JGPfRbv.5U38Tij24JpwqjWONXhDtjei8uTnP3y','099999999999',0,NULL),(2,NULL,NULL,'thinh3@','thin23213129',NULL,'$2a$10$2S2POpxKPS3gVxd8jzgzzOiLv04Dx5OQpeyO.Q.YNfKJjAhaVuoii','123',0,NULL),(3,NULL,NULL,'thih3@','123',NULL,'$2a$10$lEMpLWOe4UNtgJhuiXrFAuXj9UVctHw0a/xVQCYthPwKbJ7qL/AUa','123',0,NULL),(4,NULL,NULL,'admin@','ADMIN',NULL,'$2a$10$mF8XK1kJ7dD7r/FMaYhiD.eeS3NS62ddWlK896Qc2dQrTQ1rmtMEu','0999999999',0,NULL),(5,NULL,NULL,'admin@gmail.com','Admin',NULL,'$2a$10$h85ML3UgeE74uBPGDvQxeO5gD2tPCD8IUg29p/mbZ9IjFnuxI6LDC','123',0,'true'),(52,NULL,NULL,'demo@','demo',NULL,'$2a$10$CZzjdS2MgW9hxE4cINFgp.oK1h3bCAPpi.MvKvVdAOaV2X3DxqPtS','123',0,NULL),(53,NULL,NULL,'demo1@','demo123',NULL,'$2a$10$iyilveS5dRqoSNf1w.xrqO4NpFcOe67Jv3/YzGKflWYCE1oPmFSxK','123',0,NULL),(102,NULL,NULL,'demo2@gmail.com','demo123',NULL,'$2a$10$JVokKmpSgpfR/3F8LSJTOeGuakIU1PwbCUNYMEWwLziqIc9Om4Rha','123',0,NULL),(103,NULL,NULL,'demo3@gmail.com','thinh1234',NULL,'$2a$10$XT.wsk.fLxL4G6YAmolBT.8WNKchPyYn.kjZiBEpqBpeR0gVzV9ni','123',0,NULL),(104,NULL,NULL,'thinh1@','thinh',NULL,'$2a$10$tiqqLA0MWJELImCgNj3lY.ft6U/nff3n5j/lyy4BP7UJ3cyT6Sz7i','123',0,NULL),(105,NULL,NULL,'demo5@gmail.com','thinh5',NULL,'$2a$10$SgoqV1dRs/dP.LDQBvfAUOpXgkMeq0tayjtN7db1QrN9IueQrsUIm','123',0,NULL),(106,NULL,NULL,'anonymous@gmail.com','anonymous',NULL,'$2a$10$DHmBhlMSdWXDnHS5h05rz.8le0GnQrXorWmINpc/ZoFijwwwagdzu','123',0,NULL),(107,NULL,NULL,'demo12@gmail.com','demo12',NULL,'$2a$10$J2NMYtdHDnrjL1OpIAxIveUloi/ZsXxKfsNln.85kLbk3p2oYj1Te','123',0,NULL),(108,NULL,NULL,'123@gmail.com','123',NULL,'$2a$10$Cl/wabhkaxeA3OUhLelr/.APbC51X5MAB4UzoqtEibXU/M2vUwSUW','123',0,NULL),(152,NULL,NULL,'nguyenan123@gmail.com','Duy',NULL,'$2a$10$mbLAFKyLflK8vZ/aoeu93.nIQtlwH06QmTzaXR9FcP6fp5aZBV/.y','09453624',0,NULL),(153,NULL,NULL,'thinh123@gmail.com','thinh',NULL,'$2a$10$9iMNM8dIGc7RRIk4Eo6cZ.ahQb5e9v.4mK6wqt7MmAx7T/M8wbdK2','123',0,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_favourite`
--

DROP TABLE IF EXISTS `user_favourite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_favourite` (
  `user_id` bigint NOT NULL,
  `favourite_id` bigint NOT NULL,
  PRIMARY KEY (`user_id`,`favourite_id`),
  KEY `FK5ptbwsxsfbo73b18ilg4pwnon` (`favourite_id`),
  CONSTRAINT `FK5ptbwsxsfbo73b18ilg4pwnon` FOREIGN KEY (`favourite_id`) REFERENCES `favourite_list` (`id`),
  CONSTRAINT `FKcxihg90q1v81n68x188dl6imk` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_favourite`
--

LOCK TABLES `user_favourite` WRITE;
/*!40000 ALTER TABLE `user_favourite` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_favourite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_seq`
--

DROP TABLE IF EXISTS `user_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_seq`
--

LOCK TABLES `user_seq` WRITE;
/*!40000 ALTER TABLE `user_seq` DISABLE KEYS */;
INSERT INTO `user_seq` VALUES (251);
/*!40000 ALTER TABLE `user_seq` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-27 11:37:38
