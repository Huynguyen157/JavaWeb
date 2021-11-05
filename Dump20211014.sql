-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: shop13
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `tbl_category`
--

DROP TABLE IF EXISTS `tbl_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `seo` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_internal_idx` (`parent_id`),
  CONSTRAINT `fk_internal` FOREIGN KEY (`parent_id`) REFERENCES `tbl_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='Bảng dữ liệu chứa danh mục sản phẩm';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_category`
--

LOCK TABLES `tbl_category` WRITE;
/*!40000 ALTER TABLE `tbl_category` DISABLE KEYS */;
INSERT INTO `tbl_category` VALUES (21,'Đồng hồ ','Đồng hồ',NULL,NULL,NULL,NULL,NULL,1,'dong-ho'),(22,'Phụ kiện ','Phụ kiện',NULL,NULL,NULL,NULL,NULL,1,'phu-kien'),(23,'Giày ','Giày',NULL,NULL,NULL,NULL,21,1,'giay'),(24,'Quần áo','Quần áo',NULL,NULL,NULL,NULL,23,1,'quan-ao');
/*!40000 ALTER TABLE `tbl_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_contact`
--

DROP TABLE IF EXISTS `tbl_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `request_type` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `message` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='Bảng dữ liệu chứa thông tin liên hệ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_contact`
--

LOCK TABLES `tbl_contact` WRITE;
/*!40000 ALTER TABLE `tbl_contact` DISABLE KEYS */;
INSERT INTO `tbl_contact` VALUES (3,'Quang Huy','Nguyễn ','Huynguyentuthan@gmail.com','dsjtjer','				dfjtrj									',NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `tbl_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_products`
--

DROP TABLE IF EXISTS `tbl_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` decimal(13,2) NOT NULL,
  `price_sale` decimal(13,2) DEFAULT NULL,
  `short_description` varchar(3000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `detail_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `avatar` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `seo` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `is_hot` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_category_products_idx` (`category_id`),
  CONSTRAINT `fk_category_products` FOREIGN KEY (`category_id`) REFERENCES `tbl_category` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='Bảng dữ liệu chứa danh mục sản phẩm';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_products`
--

LOCK TABLES `tbl_products` WRITE;
/*!40000 ALTER TABLE `tbl_products` DISABLE KEYS */;
INSERT INTO `tbl_products` VALUES (78,'Đồng hồ nam',500000.00,700000.00,'sdnjd','sdjs','product/avatar/m301_4_copy_600x600_600x600.jpg',21,NULL,NULL,NULL,NULL,1,'ong-ho-nam',0),(79,'Headphone ',800000.00,1000000.00,'Tai nghe chất lượng','Tai nghe chất lượng','product/avatar/7_13_600x600.jpg',22,NULL,NULL,NULL,NULL,1,'headphone',0),(80,'Giày thể thao',500000.00,800000.00,'Giày đẹp chất lượng tốt','Giày đẹp chất lượng tốt','product/avatar/1.jpg',23,NULL,NULL,NULL,NULL,1,'giay-the-thao',0),(81,'Áo hoddies ngắn tay',600000.00,900000.00,'Áo hoddies nam chất lượng cao','Áo hoddies nam chất lượng cao','product/avatar/07_1_3_600x600.jpg',24,NULL,NULL,NULL,NULL,1,'ao-hoddies-ngan-tay',1),(82,'Vòng đeo tay',200000.00,300000.00,'Vòng đeo tay phong thủy ','Vòng đeo tay phong thủy ','product/avatar/11_1_1_1_600x600.jpg',22,NULL,NULL,NULL,NULL,1,'vong-eo-tay',0),(83,'Mũ lưỡi chai',100000.00,250000.00,'Mũ lưỡi chai sơn cao cấp','Mũ lưỡi chai sơn cao cấp','product/avatar/01_2_1_600x600.jpg',22,NULL,NULL,NULL,NULL,1,'mu-luoi-chai',1),(84,'Đồng hồ nữ ',450000.00,600000.00,'Đồng hồ thời trang nữ\r\n','Đồng hồ thời trang nữ','product/avatar/sir66_5201_1__600x600.jpg',21,NULL,NULL,NULL,NULL,1,'ong-ho-nu',0),(85,'Giày da cao cấp',1200000.00,1300000.00,'Giay da cao cấp thời trang cho nam giới','Giay da cao cấp thời trang cho nam giới','product/avatar/20_4_3_600x600.jpg',23,NULL,NULL,NULL,NULL,1,'giay-da-cao-cap',0),(86,'Túi đeo chéo ',157000.00,200000.00,'Túi đeo chéo thời trang cho nam','Túi đeo chéo thời trang cho nam','product/avatar/71u07shnjdl__uy500__500x500.jpg',22,NULL,NULL,NULL,NULL,1,'tui-eo-cheo',0),(87,'Thắt lưng da',230000.00,320000.00,'Thắt lưng da cao cấp ','Thắt lưng da cao cấp ','product/avatar/shopify_rmw_belts_1_grande_600x600.jpg',22,NULL,NULL,NULL,NULL,1,'that-lung-da',0),(88,'Quần jean nam',500000.00,800000.00,'Quần jean rách gối ','Quần jean rách gối ','product/avatar/600x600_600x600.jpg',24,NULL,NULL,NULL,NULL,1,'quan-jean-nam',0),(89,'Nhẫn cưới ',999999.00,5000000.00,'Nhẫn cưới cao cấp ','Nhẫn cưới cao cấp','product/avatar/10_7_600x600.jpg',22,NULL,NULL,NULL,NULL,1,'nhan-cuoi',1),(90,'Áo cổ chéo ',500000.00,700000.00,'Áo cổ chéo nam phong cách','Áo cổ chéo nam phong cách','product/avatar/9818_600x600.jpg',24,NULL,NULL,NULL,NULL,1,'ao-co-cheo',1),(91,'Cà vạt',750000.00,890000.00,'Cà vạt cao cấp','Cà vạt cao cấp','product/avatar/15_1_2_600x600.jpg',22,NULL,NULL,NULL,NULL,1,'ca-vat',0);
/*!40000 ALTER TABLE `tbl_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_products_images`
--

DROP TABLE IF EXISTS `tbl_products_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_products_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `product_id` int NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `fk_product_images_idx` (`product_id`),
  CONSTRAINT `fk_product_images` FOREIGN KEY (`product_id`) REFERENCES `tbl_products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='Bảng dữ liệu danh sách ảnh sản phẩm';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_products_images`
--

LOCK TABLES `tbl_products_images` WRITE;
/*!40000 ALTER TABLE `tbl_products_images` DISABLE KEYS */;
INSERT INTO `tbl_products_images` VALUES (43,'m301_4_copy_600x600_600x600.jpg','F:/NguyenQuangHuy-PRJ-Lan 1/com.devpro.shop13/upload/product/pictures/m301_4_copy_600x600_600x600.jpg',78,NULL,NULL,NULL,NULL,1),(44,'7_13_600x600.jpg','F:/NguyenQuangHuy-PRJ-Lan 1/com.devpro.shop13/upload/product/pictures/7_13_600x600.jpg',79,NULL,NULL,NULL,NULL,1),(45,'1.jpg','F:/NguyenQuangHuy-PRJ-Lan 1/com.devpro.shop13/upload/product/pictures/1.jpg',80,NULL,NULL,NULL,NULL,1),(47,'07_1_3_600x600.jpg','product/pictures/07_1_3_600x600.jpg',81,NULL,NULL,NULL,NULL,1),(48,'11_1_1_1_600x600.jpg','F:/NguyenQuangHuy-PRJ-Lan 1/com.devpro.shop13/upload/product/pictures/11_1_1_1_600x600.jpg',82,NULL,NULL,NULL,NULL,1),(49,'01_2_1_600x600.jpg','F:/NguyenQuangHuy-PRJ-Lan 1/com.devpro.shop13/upload/product/pictures/01_2_1_600x600.jpg',83,NULL,NULL,NULL,NULL,1),(50,'sir66_5201_1__600x600.jpg','F:/NguyenQuangHuy-PRJ-Lan 1/com.devpro.shop13/upload/product/pictures/sir66_5201_1__600x600.jpg',84,NULL,NULL,NULL,NULL,1),(51,'20_4_3_600x600.jpg','F:/NguyenQuangHuy-PRJ-Lan 1/com.devpro.shop13/upload/product/pictures/20_4_3_600x600.jpg',85,NULL,NULL,NULL,NULL,1),(52,'71u07shnjdl__uy500__500x500.jpg','F:/NguyenQuangHuy-PRJ-Lan 1/com.devpro.shop13/upload/product/pictures/71u07shnjdl__uy500__500x500.jpg',86,NULL,NULL,NULL,NULL,1),(53,'shopify_rmw_belts_1_grande_600x600.jpg','F:/NguyenQuangHuy-PRJ-Lan 1/com.devpro.shop13/upload/product/pictures/shopify_rmw_belts_1_grande_600x600.jpg',87,NULL,NULL,NULL,NULL,1),(54,'600x600_600x600.jpg','F:/NguyenQuangHuy-PRJ-Lan 1/com.devpro.shop13/upload/product/pictures/600x600_600x600.jpg',88,NULL,NULL,NULL,NULL,1),(56,'9818_600x600.jpg','F:/NguyenQuangHuy-PRJ-Lan 1/com.devpro.shop13/upload/product/pictures/9818_600x600.jpg',90,NULL,NULL,NULL,NULL,1),(57,'15_1_2_600x600.jpg','F:/NguyenQuangHuy-PRJ-Lan 1/com.devpro.shop13/upload/product/pictures/15_1_2_600x600.jpg',91,NULL,NULL,NULL,NULL,1),(60,'10_7_600x600.jpg','product/pictures/10_7_600x600.jpg',89,NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_products_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_roles`
--

DROP TABLE IF EXISTS `tbl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `description` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='Bảng dữ liệu chứa thông tin roles';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_roles`
--

LOCK TABLES `tbl_roles` WRITE;
/*!40000 ALTER TABLE `tbl_roles` DISABLE KEYS */;
INSERT INTO `tbl_roles` VALUES (11,'ADMIN','ADMIN',NULL,NULL,NULL,NULL,1),(12,'GUEST','GUEST',NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_saleorder`
--

DROP TABLE IF EXISTS `tbl_saleorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_saleorder` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int DEFAULT NULL,
  `total` decimal(13,2) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `customer_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `customer_address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `seo` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `customer_phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `customer_email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `total_price` decimal(13,1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='Bảng dữ liệu chứa phiếu mua hàng';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_saleorder`
--

LOCK TABLES `tbl_saleorder` WRITE;
/*!40000 ALTER TABLE `tbl_saleorder` DISABLE KEYS */;
INSERT INTO `tbl_saleorder` VALUES (21,'ORDER-1632680652400',NULL,1.00,NULL,NULL,NULL,NULL,1,'nguyễn Quang huy','e4t42','ORDER-1632680652400','521414','Huynguyentuthan@gmail.com',245.0),(22,'ORDER-1633965278824',NULL,1.00,NULL,NULL,NULL,NULL,1,'nguyễn Quang huy','Hưng Hà - Thái Bình','ORDER-1633965278824','0981998821','Huynguyentuthan@gmail.com',1200000.0),(23,'ORDER-1633965347954',NULL,4.00,NULL,NULL,NULL,NULL,1,'nguyễn Quang huy','Hưng Hà - Thái Bình','ORDER-1633965347954','0981998821','Huynguyentuthan@gmail.com',2450000.0);
/*!40000 ALTER TABLE `tbl_saleorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_saleorder_products`
--

DROP TABLE IF EXISTS `tbl_saleorder_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_saleorder_products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `saleorder_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quality` int NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `fk_saleorder_product_idx` (`saleorder_id`),
  CONSTRAINT `fk_saleorder_product` FOREIGN KEY (`saleorder_id`) REFERENCES `tbl_saleorder` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='Bảng dữ liệu chứa phiếu mua hàng';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_saleorder_products`
--

LOCK TABLES `tbl_saleorder_products` WRITE;
/*!40000 ALTER TABLE `tbl_saleorder_products` DISABLE KEYS */;
INSERT INTO `tbl_saleorder_products` VALUES (29,21,72,1,NULL,NULL,NULL,NULL,1),(30,22,85,1,NULL,NULL,NULL,NULL,1),(31,23,85,1,NULL,NULL,NULL,NULL,1),(32,23,82,1,NULL,NULL,NULL,NULL,1),(33,23,84,1,NULL,NULL,NULL,NULL,1),(34,23,81,1,NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_saleorder_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_users`
--

DROP TABLE IF EXISTS `tbl_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='Bảng dữ liệu chứa thông tin người dùng';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_users`
--

LOCK TABLES `tbl_users` WRITE;
/*!40000 ALTER TABLE `tbl_users` DISABLE KEYS */;
INSERT INTO `tbl_users` VALUES (11,'admin','$2a$04$VfMI75Jcf5S/vx2ENFwUu.SjP.EbPjIJhScGMxKsTKTIlrEF9D.e6','admin@example.com',NULL,NULL,NULL,NULL,1),(12,'guest','$2a$04$zTk8tCMki7a8QE/QJlmyTumW/4suxwY8XPVVFBdP8feLPKryZxGV6','guest@example.com',NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_users_roles`
--

DROP TABLE IF EXISTS `tbl_users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_users_roles` (
  `user_id` int NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `fk_roles_idx` (`role_id`),
  CONSTRAINT `fk_roles` FOREIGN KEY (`role_id`) REFERENCES `tbl_roles` (`id`),
  CONSTRAINT `fk_users` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='bảng trung gian thể hiện quan hệ n-n của users và roles';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_users_roles`
--

LOCK TABLES `tbl_users_roles` WRITE;
/*!40000 ALTER TABLE `tbl_users_roles` DISABLE KEYS */;
INSERT INTO `tbl_users_roles` VALUES (11,11),(12,12);
/*!40000 ALTER TABLE `tbl_users_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-14 12:43:40
