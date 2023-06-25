-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: knjigomat
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Razno'),(2,'Romani'),(3,'Djecije'),(4,'Zdravlje'),(5,'Klasici'),(6,'Psihologija'),(7,'Duhovitost');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` int NOT NULL,
  `created_time` timestamp NOT NULL,
  `text` varchar(160) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `post_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_comment_post1_idx` (`post_id`),
  KEY `fk_comment_user1_idx` (`user_id`),
  CONSTRAINT `fk_comment_post1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`),
  CONSTRAINT `fk_comment_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'2022-04-26 07:06:36','lobortis est phasellus sit amet erat nulla tempus vivamus in',0,17,64),(2,'2022-12-13 22:53:58','morbi odio odio elementum eu interdum eu tincidunt',0,34,28),(3,'2022-08-02 09:05:23','nunc purus phasellus in felis donec',0,11,94),(4,'2022-07-01 11:43:13','a suscipit nulla elit ac',0,36,65),(5,'2022-03-17 23:47:31','suspendisse potenti nullam porttitor lacus at turpis donec',0,50,59),(6,'2023-03-08 09:59:45','sollicitudin mi sit amet lobortis',0,46,41),(7,'2022-11-04 13:40:14','sollicitudin ut suscipit a feugiat et eros',0,71,56),(8,'2022-03-11 03:08:51','in purus eu magna vulputate',0,58,67),(9,'2022-07-15 22:40:17','magna ac consequat metus sapien ut nunc vestibulum',0,52,92),(10,'2022-09-22 00:47:03','suspendisse ornare consequat lectus in est',0,75,76),(11,'2022-08-12 15:09:36','libero nam dui proin leo',0,84,97),(12,'2022-07-17 14:59:33','suscipit ligula in lacus curabitur at ipsum ac',0,54,61),(13,'2022-08-02 14:54:23','nibh quisque id justo sit amet sapien dignissim',0,8,92),(14,'2022-03-23 16:12:07','sociis natoque penatibus et magnis dis parturient montes',0,100,19),(15,'2022-09-20 01:39:24','velit eu est congue elementum in',0,87,80),(16,'2022-10-16 05:45:24','eu nibh quisque id justo sit amet sapien',0,97,24),(17,'2022-08-19 12:49:16','est phasellus sit amet erat nulla tempus vivamus in',0,73,72),(18,'2022-08-15 09:23:05','sem praesent id massa id nisl',0,41,74),(19,'2022-12-14 20:09:55','maecenas tristique est et tempus semper est quam',0,1,82),(20,'2022-03-29 12:30:32','lacus purus aliquet at feugiat',0,41,99),(21,'2022-12-27 04:13:15','dictumst morbi vestibulum velit id pretium iaculis diam erat',0,28,15),(22,'2022-08-02 17:55:46','ante ipsum primis in faucibus orci luctus et ultrices',0,58,25),(23,'2022-09-16 14:48:42','integer tincidunt ante vel ipsum',0,86,75),(24,'2022-08-26 09:14:26','curae donec pharetra magna vestibulum aliquet ultrices erat tortor',0,79,43),(25,'2022-04-11 12:49:28','curae duis faucibus accumsan odio curabitur convallis duis consequat',0,48,28),(26,'2022-12-29 12:41:33','a odio in hac habitasse platea dictumst',0,64,97),(27,'2022-05-31 13:48:07','ipsum primis in faucibus orci luctus et ultrices posuere cubilia',0,9,16),(28,'2022-04-17 19:16:11','vehicula condimentum curabitur in libero ut massa volutpat',0,96,42),(29,'2023-01-07 20:09:47','etiam justo etiam pretium iaculis justo in',0,44,49),(30,'2022-07-28 13:43:08','nascetur ridiculus mus etiam vel',0,76,84),(31,'2022-04-20 06:40:50','cubilia curae nulla dapibus dolor vel est donec odio',0,17,68),(32,'2022-10-01 16:05:43','varius ut blandit non interdum in',0,31,11),(33,'2022-04-13 12:53:08','sodales scelerisque mauris sit amet eros suspendisse accumsan',0,88,9),(34,'2022-10-13 23:44:00','nulla pede ullamcorper augue a suscipit nulla elit ac',0,91,100),(35,'2023-01-11 03:45:50','quisque porta volutpat erat quisque erat eros viverra',0,30,12),(36,'2022-05-22 09:41:38','est risus auctor sed tristique in tempus sit amet sem',0,17,59),(37,'2023-01-09 18:47:14','malesuada in imperdiet et commodo vulputate justo in blandit ultrices',0,63,92),(38,'2022-08-17 06:59:43','fusce congue diam id ornare imperdiet sapien urna pretium nisl',0,25,74),(39,'2022-04-10 21:48:09','semper porta volutpat quam pede lobortis ligula',0,24,9),(40,'2022-06-12 22:37:57','ligula nec sem duis aliquam convallis',0,85,13),(41,'2022-03-22 02:10:39','at ipsum ac tellus semper interdum',0,8,62),(42,'2022-09-01 02:47:52','felis sed lacus morbi sem',0,34,21),(43,'2022-03-26 11:26:11','suspendisse potenti cras in purus eu magna vulputate luctus cum',0,52,56),(44,'2022-08-28 10:54:43','vulputate luctus cum sociis natoque penatibus et magnis dis',0,54,42),(45,'2022-12-24 05:10:51','nisl duis bibendum felis sed',0,55,84),(46,'2023-03-02 17:56:03','donec dapibus duis at velit',0,30,18),(47,'2022-09-21 22:13:01','nisl ut volutpat sapien arcu sed augue',0,44,11),(48,'2022-09-20 13:19:56','lectus in est risus auctor sed tristique in',0,87,59),(49,'2023-02-18 07:44:57','faucibus orci luctus et ultrices posuere cubilia',0,9,78),(50,'2022-05-04 03:22:15','ligula nec sem duis aliquam convallis nunc proin at',0,26,70),(51,'2022-05-10 00:07:05','accumsan tortor quis turpis sed ante vivamus tortor',0,18,79),(52,'2022-07-10 00:13:36','sem mauris laoreet ut rhoncus aliquet pulvinar sed',0,27,22),(53,'2022-07-08 14:49:11','amet justo morbi ut odio cras',0,40,15),(54,'2022-06-05 16:10:45','erat nulla tempus vivamus in felis eu sapien cursus vestibulum',0,10,3),(55,'2022-04-20 01:26:59','arcu adipiscing molestie hendrerit at vulputate vitae',0,73,75),(56,'2023-03-07 23:17:40','vestibulum aliquet ultrices erat tortor',0,26,8),(57,'2022-04-24 20:13:45','eu orci mauris lacinia sapien quis',0,88,59),(58,'2022-09-28 02:00:59','tincidunt eget tempus vel pede morbi porttitor lorem id ligula',0,58,91),(59,'2023-02-26 07:59:12','metus aenean fermentum donec ut mauris eget massa tempor',0,75,89),(60,'2023-01-24 00:40:39','neque duis bibendum morbi non quam nec dui luctus rutrum',0,80,99),(61,'2022-07-13 08:27:54','nec condimentum neque sapien placerat ante nulla justo aliquam',0,62,22),(62,'2022-06-19 09:47:01','purus sit amet nulla quisque arcu libero rutrum',0,86,25),(63,'2022-04-13 14:41:00','neque aenean auctor gravida sem',0,91,68),(64,'2022-06-01 06:17:11','aenean auctor gravida sem praesent id massa id',0,55,78),(65,'2022-08-01 04:34:56','nunc vestibulum ante ipsum primis',0,63,56),(66,'2023-02-17 17:22:43','id ligula suspendisse ornare consequat lectus in est risus',0,93,84),(67,'2022-10-13 19:12:52','sapien non mi integer ac neque duis bibendum',0,34,62),(68,'2022-07-05 02:33:46','ut suscipit a feugiat et eros vestibulum ac est',0,35,79),(69,'2022-10-06 05:40:28','id ligula suspendisse ornare consequat lectus',0,66,98),(70,'2022-07-14 17:07:15','cubilia curae donec pharetra magna vestibulum aliquet ultrices',0,36,5),(71,'2022-04-24 03:23:55','habitasse platea dictumst maecenas ut',0,84,67),(72,'2022-10-15 11:53:20','urna pretium nisl ut volutpat sapien arcu sed augue aliquam',0,8,72),(73,'2022-11-26 10:13:35','nunc viverra dapibus nulla suscipit ligula in lacus curabitur',0,63,18),(74,'2022-03-29 12:27:34','ultrices vel augue vestibulum ante ipsum primis in faucibus orci',0,81,36),(75,'2022-03-23 01:31:28','cursus vestibulum proin eu mi nulla',0,29,68),(76,'2022-07-03 12:24:28','cursus urna ut tellus nulla ut erat id mauris',0,6,20),(77,'2022-05-09 09:12:00','eget tincidunt eget tempus vel pede',0,21,11),(78,'2022-06-28 21:40:15','nulla sed accumsan felis ut at dolor quis odio consequat',0,19,77),(79,'2022-11-28 07:40:53','luctus et ultrices posuere cubilia',0,9,70),(80,'2022-11-01 11:47:56','ultrices aliquet maecenas leo odio condimentum id',0,3,28),(81,'2022-04-05 01:23:44','nam congue risus semper porta volutpat quam pede',0,48,85),(82,'2022-09-22 02:24:15','sit amet consectetuer adipiscing elit',0,29,58),(83,'2022-09-06 12:59:25','posuere cubilia curae donec pharetra magna vestibulum',0,14,83),(84,'2022-03-10 21:30:27','montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis',0,54,78),(85,'2022-09-08 05:53:18','duis bibendum morbi non quam',0,14,71),(86,'2022-11-08 14:38:54','dignissim vestibulum vestibulum ante ipsum',0,16,89),(87,'2022-03-30 19:22:59','eu nibh quisque id justo sit amet sapien',0,47,98),(88,'2023-02-20 12:28:52','quam a odio in hac habitasse platea dictumst maecenas ut',0,25,67),(89,'2022-07-20 07:24:51','sem sed sagittis nam congue risus semper porta volutpat',0,29,25),(90,'2022-09-18 12:22:09','diam in magna bibendum imperdiet nullam orci pede venenatis',0,33,48),(91,'2022-04-29 22:03:07','eget vulputate ut ultrices vel augue vestibulum',0,47,23),(92,'2022-10-03 09:23:23','curabitur at ipsum ac tellus semper',0,63,30),(93,'2022-03-19 10:11:26','vestibulum sed magna at nunc commodo placerat',0,98,83),(94,'2022-11-01 13:29:23','cursus id turpis integer aliquet massa id lobortis convallis',0,50,75),(95,'2023-02-19 04:52:26','ut massa volutpat convallis morbi odio odio',0,73,28),(96,'2022-04-18 01:15:53','vitae nisi nam ultrices libero non mattis pulvinar nulla',0,18,20),(97,'2022-09-16 23:44:48','nullam sit amet turpis elementum ligula vehicula consequat morbi',0,79,34),(98,'2022-03-10 09:46:37','congue diam id ornare imperdiet sapien urna pretium nisl ut',0,83,52),(99,'2023-02-09 14:46:36','magnis dis parturient montes nascetur ridiculus mus',0,37,54),(100,'2022-11-09 01:51:33','nunc vestibulum ante ipsum primis in faucibus orci',0,40,69);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sender_id` int NOT NULL,
  `receiver_id` int NOT NULL,
  `text` varchar(160) NOT NULL,
  `created_time` timestamp NOT NULL,
  `chat_id` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_message_user1_idx` (`sender_id`),
  KEY `fk_message_user2_idx` (`receiver_id`),
  CONSTRAINT `fk_message_user1` FOREIGN KEY (`sender_id`) REFERENCES `user` (`id`),
  CONSTRAINT `fk_message_user2` FOREIGN KEY (`receiver_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (1,102,4,'pozdrav','2023-06-17 18:46:13','102#4'),(2,102,4,'Cijena knjige? ','2023-06-17 18:46:41','102#4');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo`
--

DROP TABLE IF EXISTS `photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `photo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `photo_url` varchar(100) NOT NULL,
  `post_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_photo_post1_idx` (`post_id`),
  CONSTRAINT `fk_photo_post1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo`
--

LOCK TABLES `photo` WRITE;
/*!40000 ALTER TABLE `photo` DISABLE KEYS */;
INSERT INTO `photo` VALUES (1,'http://dummyimage.com/138x100.png/ff4444/ffffff',1),(2,'http://dummyimage.com/105x100.png/dddddd/000000',2),(3,'http://dummyimage.com/237x100.png/5fa2dd/ffffff',3),(4,'http://dummyimage.com/123x100.png/cc0000/ffffff',4),(5,'http://dummyimage.com/182x100.png/dddddd/000000',5),(6,'http://dummyimage.com/186x100.png/cc0000/ffffff',6),(7,'http://dummyimage.com/228x100.png/ff4444/ffffff',7),(8,'http://dummyimage.com/187x100.png/dddddd/000000',8),(9,'http://dummyimage.com/191x100.png/cc0000/ffffff',9),(10,'http://dummyimage.com/225x100.png/ff4444/ffffff',10),(11,'http://dummyimage.com/190x100.png/ff4444/ffffff',11),(12,'http://dummyimage.com/202x100.png/5fa2dd/ffffff',12),(13,'http://dummyimage.com/208x100.png/ff4444/ffffff',13),(14,'http://dummyimage.com/182x100.png/ff4444/ffffff',14),(15,'http://dummyimage.com/222x100.png/cc0000/ffffff',15),(16,'http://dummyimage.com/173x100.png/ff4444/ffffff',16),(17,'http://dummyimage.com/245x100.png/5fa2dd/ffffff',17),(18,'http://dummyimage.com/104x100.png/5fa2dd/ffffff',18),(19,'http://dummyimage.com/112x100.png/5fa2dd/ffffff',19),(20,'http://dummyimage.com/222x100.png/5fa2dd/ffffff',20),(21,'http://dummyimage.com/190x100.png/dddddd/000000',21),(22,'http://dummyimage.com/147x100.png/5fa2dd/ffffff',22),(23,'http://dummyimage.com/183x100.png/cc0000/ffffff',23),(24,'http://dummyimage.com/175x100.png/cc0000/ffffff',24),(25,'http://dummyimage.com/112x100.png/dddddd/000000',25),(26,'http://dummyimage.com/218x100.png/cc0000/ffffff',26),(27,'http://dummyimage.com/227x100.png/dddddd/000000',27),(28,'http://dummyimage.com/135x100.png/cc0000/ffffff',28),(29,'http://dummyimage.com/136x100.png/5fa2dd/ffffff',29),(30,'http://dummyimage.com/219x100.png/dddddd/000000',30),(31,'http://dummyimage.com/247x100.png/dddddd/000000',31),(32,'http://dummyimage.com/171x100.png/dddddd/000000',32),(33,'http://dummyimage.com/237x100.png/5fa2dd/ffffff',33),(34,'http://dummyimage.com/210x100.png/ff4444/ffffff',34),(35,'http://dummyimage.com/152x100.png/5fa2dd/ffffff',35),(36,'http://dummyimage.com/117x100.png/ff4444/ffffff',36),(37,'http://dummyimage.com/204x100.png/ff4444/ffffff',37),(38,'http://dummyimage.com/105x100.png/dddddd/000000',38),(39,'http://dummyimage.com/192x100.png/ff4444/ffffff',39),(40,'http://dummyimage.com/103x100.png/ff4444/ffffff',40),(41,'http://dummyimage.com/238x100.png/cc0000/ffffff',41),(42,'http://dummyimage.com/141x100.png/5fa2dd/ffffff',42),(43,'http://dummyimage.com/129x100.png/dddddd/000000',43),(44,'http://dummyimage.com/176x100.png/ff4444/ffffff',44),(45,'http://dummyimage.com/236x100.png/5fa2dd/ffffff',45),(46,'http://dummyimage.com/124x100.png/5fa2dd/ffffff',46),(47,'http://dummyimage.com/188x100.png/5fa2dd/ffffff',47),(48,'http://dummyimage.com/233x100.png/5fa2dd/ffffff',48),(49,'http://dummyimage.com/193x100.png/5fa2dd/ffffff',49),(50,'http://dummyimage.com/110x100.png/5fa2dd/ffffff',50),(51,'http://dummyimage.com/238x100.png/ff4444/ffffff',51),(52,'http://dummyimage.com/135x100.png/cc0000/ffffff',52),(53,'http://dummyimage.com/237x100.png/ff4444/ffffff',53),(54,'http://dummyimage.com/144x100.png/5fa2dd/ffffff',54),(55,'http://dummyimage.com/178x100.png/5fa2dd/ffffff',55),(56,'http://dummyimage.com/207x100.png/dddddd/000000',56),(57,'http://dummyimage.com/148x100.png/5fa2dd/ffffff',57),(58,'http://dummyimage.com/168x100.png/5fa2dd/ffffff',58),(59,'http://dummyimage.com/221x100.png/5fa2dd/ffffff',59),(60,'http://dummyimage.com/149x100.png/5fa2dd/ffffff',60),(61,'http://dummyimage.com/214x100.png/5fa2dd/ffffff',61),(62,'http://dummyimage.com/113x100.png/cc0000/ffffff',62),(63,'http://dummyimage.com/161x100.png/dddddd/000000',63),(64,'http://dummyimage.com/195x100.png/ff4444/ffffff',64),(65,'http://dummyimage.com/119x100.png/5fa2dd/ffffff',65),(66,'http://dummyimage.com/204x100.png/5fa2dd/ffffff',66),(67,'http://dummyimage.com/127x100.png/cc0000/ffffff',67),(68,'http://dummyimage.com/205x100.png/5fa2dd/ffffff',68),(69,'http://dummyimage.com/119x100.png/ff4444/ffffff',69),(70,'http://dummyimage.com/189x100.png/cc0000/ffffff',70),(71,'http://dummyimage.com/216x100.png/cc0000/ffffff',71),(72,'http://dummyimage.com/170x100.png/5fa2dd/ffffff',72),(73,'http://dummyimage.com/129x100.png/cc0000/ffffff',73),(74,'http://dummyimage.com/120x100.png/5fa2dd/ffffff',74),(75,'http://dummyimage.com/198x100.png/cc0000/ffffff',75),(76,'http://dummyimage.com/130x100.png/cc0000/ffffff',76),(77,'http://dummyimage.com/134x100.png/ff4444/ffffff',77),(78,'http://dummyimage.com/236x100.png/5fa2dd/ffffff',78),(79,'http://dummyimage.com/106x100.png/ff4444/ffffff',79),(80,'http://dummyimage.com/235x100.png/ff4444/ffffff',80),(81,'http://dummyimage.com/125x100.png/5fa2dd/ffffff',81),(82,'http://dummyimage.com/158x100.png/ff4444/ffffff',82),(83,'http://dummyimage.com/202x100.png/ff4444/ffffff',83),(84,'http://dummyimage.com/156x100.png/cc0000/ffffff',84),(85,'http://dummyimage.com/244x100.png/5fa2dd/ffffff',85),(86,'http://dummyimage.com/196x100.png/5fa2dd/ffffff',86),(87,'http://dummyimage.com/208x100.png/dddddd/000000',87),(88,'http://dummyimage.com/100x100.png/cc0000/ffffff',88),(89,'http://dummyimage.com/165x100.png/ff4444/ffffff',89),(90,'http://dummyimage.com/103x100.png/cc0000/ffffff',90),(91,'http://dummyimage.com/175x100.png/dddddd/000000',91),(92,'http://dummyimage.com/107x100.png/cc0000/ffffff',92),(93,'http://dummyimage.com/102x100.png/dddddd/000000',93),(94,'http://dummyimage.com/200x100.png/ff4444/ffffff',94),(95,'http://dummyimage.com/201x100.png/ff4444/ffffff',95),(96,'http://dummyimage.com/144x100.png/cc0000/ffffff',96),(97,'http://dummyimage.com/146x100.png/5fa2dd/ffffff',97),(98,'http://dummyimage.com/228x100.png/5fa2dd/ffffff',98),(99,'http://dummyimage.com/134x100.png/ff4444/ffffff',99),(100,'http://dummyimage.com/173x100.png/dddddd/000000',100),(101,'http://res.cloudinary.com/dmoekbwh0/image/upload/v1687027461/v13i8833jhwkjyukvgra.jpg',101);
/*!40000 ALTER TABLE `photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(45) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `author_name` varchar(45) DEFAULT NULL,
  `created_time` timestamp NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `category_id` int NOT NULL,
  `user_id` int NOT NULL,
  `state` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_post_category_idx` (`category_id`),
  KEY `fk_post_user1_idx` (`user_id`),
  CONSTRAINT `fk_post_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `fk_post_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,'Nader Group','bnussii0',582.50,'Bryce Nussii','2023-01-09 17:29:46',0,3,1,''),(2,'O\'Keefe, Turcotte and Hayes','lst1',109.60,'Levin St Louis','2022-09-21 19:04:51',0,1,2,''),(3,'Weimann-West','scoonan2',525.30,'Susanne Coonan','2022-06-20 12:08:05',0,4,3,''),(4,'Dickens Group','ecuree3',893.70,'Eleonore Curee','2023-03-05 17:10:14',0,7,4,''),(5,'Buckridge-Dicki','uraincin4',217.50,'Ulrica Raincin','2022-11-09 16:51:23',0,3,5,''),(6,'Casper and Sons','isouza5',182.20,'Irv Souza','2022-04-25 12:07:15',0,7,6,''),(7,'Schuppe and Sons','amitroshinov6',847.20,'Adan Mitroshinov','2022-07-11 17:09:12',0,5,7,''),(8,'Dare-Keebler','ekeay7',191.80,'Ervin Keay','2022-07-29 15:56:45',0,5,8,''),(9,'Barrows Group','ifarmiloe8',709.30,'Ines Farmiloe','2022-12-12 14:03:45',0,3,9,''),(10,'Jerde-Hills','tbohling9',199.90,'Tally Bohling','2022-07-09 00:06:01',0,6,10,''),(11,'Hilpert-Padberg','sleppoa',460.00,'Sebastiano Leppo','2022-06-16 17:10:12',0,6,1,''),(12,'Ledner-Borer','jmcgintyb',215.90,'Josie McGinty','2022-10-27 06:32:24',0,1,2,''),(13,'Klein-Auer','bbrockhousec',999.20,'Bree Brockhouse','2022-09-27 07:39:32',0,1,3,''),(14,'Stokes-Jones','pmatleyd',144.10,'Pietrek Matley','2022-09-15 14:52:59',0,6,4,''),(15,'Keeling-Hoeger','pstonee',135.20,'Pearce Stone','2023-01-24 19:16:52',0,6,5,''),(16,'Tillman and Sons','jkeoghanef',145.10,'Jorrie Keoghane','2022-11-22 17:19:09',0,6,6,''),(17,'Berge-Hermiston','dpagittg',495.70,'Darlene Pagitt','2023-01-06 14:20:59',0,2,7,''),(18,'Mosciski LLC','agiamellih',109.50,'Alan Giamelli','2022-10-15 13:13:07',0,3,8,''),(19,'Fahey and Sons','wjahneri',814.50,'Westbrooke Jahner','2023-02-02 03:52:20',0,2,9,''),(20,'Bogan-Spinka','kflarityj',84.20,'Korney Flarity','2022-11-17 23:55:31',0,5,1,''),(21,'VonRueden, Hoeger and Tromp','bcoleridgek',780.70,'Brandy Coleridge','2023-01-12 08:28:55',0,1,2,''),(22,'Gusikowski Group','chinchonl',449.50,'Carmencita Hinchon','2022-07-23 04:51:03',0,2,3,''),(23,'Mann-Bartell','mclowsm',831.00,'Milly Clows','2022-11-27 20:10:25',0,5,4,''),(24,'Yost Group','garnaldon',440.70,'Gabriele Arnaldo','2022-11-24 06:08:17',0,1,5,''),(25,'Carter-Feest','wposselwhiteo',225.10,'Wenona Posselwhite','2022-05-08 17:49:10',0,3,6,''),(26,'Johns Inc','scaukillp',124.00,'Smitty Caukill','2022-04-03 19:44:42',0,7,7,''),(27,'Walter-Braun','abastinq',291.00,'Allina Bastin','2023-01-19 06:53:22',0,7,8,''),(28,'Thompson-Morissette','rcourvertr',899.10,'Roberto Courvert','2022-10-08 11:30:15',0,3,9,''),(29,'Collier, Fritsch and Barton','cbrolechans',189.50,'Charmaine Brolechan','2022-11-14 08:42:14',0,4,1,''),(30,'Raynor Group','rpardont',332.10,'Russ Pardon','2022-09-12 00:01:22',0,6,2,''),(31,'Wehner Group','seadu',978.70,'Sheeree Ead','2022-11-20 21:38:21',0,2,3,''),(32,'Kertzmann-Yundt','fhuygenv',593.90,'Freddie Huygen','2022-06-18 07:48:36',0,6,4,''),(33,'Ritchie-Flatley','dstennettw',603.00,'Dave Stennett','2022-12-20 06:10:31',0,3,5,''),(34,'Cummings, Grady and Rippin','cmirandax',807.40,'Cymbre Miranda','2023-01-06 05:11:46',0,3,6,''),(35,'Considine-Reichel','jabbyssy',388.20,'Jessamine Abbyss','2022-07-28 21:16:22',0,2,7,''),(36,'Smitham Group','cortz',647.70,'Carlee Ort','2023-02-12 18:11:20',0,6,8,''),(37,'Lynch Group','acreech10',98.30,'Alexine Creech','2023-02-20 17:12:55',0,3,9,''),(38,'Tremblay, Klocko and Lowe','mslipper11',527.20,'Mitchell Slipper','2022-07-09 06:51:32',0,5,1,''),(39,'Osinski Inc','abrotherhood12',751.10,'Amalia Brotherhood','2022-10-25 19:07:35',0,7,2,''),(40,'Lebsack, Pagac and Stracke','lsnoddy13',294.20,'Lela Snoddy','2022-03-12 05:41:22',0,7,3,''),(41,'Luettgen LLC','lmatushevich14',953.60,'Lenard Matushevich','2023-01-20 15:43:17',0,2,4,''),(42,'Rice-Wiegand','mmaps15',408.70,'Mavra Maps','2022-07-17 16:46:15',0,1,5,''),(43,'Mohr and Sons','ccoiley16',701.80,'Celina Coiley','2022-12-20 08:44:11',0,5,6,''),(44,'Bode-Carroll','msouthey17',623.30,'Marinna Southey','2022-11-28 01:34:15',0,4,7,''),(45,'Pouros-Emard','isowray18',188.40,'Ingemar Sowray','2022-07-30 15:46:41',0,3,8,''),(46,'Anderson, Halvorson and Kuhlman','igummery19',976.60,'Isaac Gummery','2022-12-17 15:55:49',0,2,9,''),(47,'Wiegand and Sons','lquinion1a',77.60,'Latashia Quinion','2022-06-17 09:20:06',0,1,1,''),(48,'Smitham and Sons','adrejer1b',832.40,'Antonie Drejer','2022-08-01 05:30:31',0,7,2,''),(49,'Prohaska and Sons','jdate1c',24.20,'Julie Date','2022-08-17 05:51:47',0,5,3,''),(50,'Bergnaum, Wilkinson and Parker','crawls1d',21.10,'Cthrine Rawls','2022-05-22 21:17:28',0,7,4,''),(51,'Schowalter, Kub and Padberg','pdivis1e',702.40,'Padraig Divis','2022-08-28 05:17:20',0,6,5,''),(52,'Harber, Kozey and Bednar','fkobu1f',541.30,'Floyd Kobu','2022-06-01 18:09:27',0,2,6,''),(53,'Crona, Kling and Kiehn','dbantham1g',774.10,'Dasha Bantham','2022-08-14 14:00:51',0,4,7,''),(54,'Schamberger, Tillman and Padberg','hskain1h',577.20,'Horacio Skain','2022-09-17 06:11:39',0,5,8,''),(55,'Glover-Donnelly','skelmere1i',747.20,'Shawn Kelmere','2022-11-15 01:05:59',0,4,9,''),(56,'Kulas, Batz and Emmerich','hflatman1j',243.90,'Hobey Flatman','2022-04-03 15:45:47',0,6,1,''),(57,'Nader, Skiles and Wiza','bryton1k',911.30,'Bunni Ryton','2023-01-26 03:57:13',0,4,2,''),(58,'Yundt, Ondricka and Welch','kcratere1l',331.80,'Kristofor Cratere','2023-01-16 16:14:32',0,6,3,''),(59,'Weissnat Inc','gmolineux1m',587.50,'Gerik Molineux','2022-06-13 14:15:55',0,7,4,''),(60,'Deckow, Marquardt and Jerde','centwhistle1n',163.60,'Catlaina Entwhistle','2022-11-20 21:30:56',0,7,5,''),(61,'Hilll, Cartwright and Renner','cbuesnel1o',118.50,'Catrina Buesnel','2022-06-16 16:47:39',0,6,6,''),(62,'Swift-Hansen','dgulberg1p',854.20,'Delila Gulberg','2022-05-06 11:36:03',0,6,7,''),(63,'Weimann LLC','iewan1q',124.80,'Ilise Ewan','2022-07-22 20:16:43',0,1,8,''),(64,'Yost Inc','hattree1r',249.50,'Haley Attree','2022-07-18 13:24:53',0,2,9,''),(65,'Lakin Group','lmeneer1s',221.50,'Lisle Meneer','2023-02-01 18:55:04',0,5,1,''),(66,'Maggio Inc','fphilimore1t',511.30,'Findley Philimore','2023-01-06 18:38:59',0,5,2,''),(67,'Schaden Group','ebellinger1u',47.70,'Elston Bellinger','2022-06-23 18:32:50',0,1,3,''),(68,'Brown, Kohler and Kuhn','jturbill1v',962.30,'Johny Turbill','2022-06-04 03:15:15',0,4,4,''),(69,'Smitham-Mitchell','zelph1w',231.60,'Zack Elph','2022-09-16 11:48:39',0,1,5,''),(70,'Rogahn-Senger','cmaytom1x',382.50,'Clementina Maytom','2023-02-08 06:44:37',0,2,6,''),(71,'Dicki LLC','dstrahan1y',167.70,'Daile Strahan','2022-10-28 09:28:55',0,1,7,''),(72,'Hackett-Schaden','obolderson1z',406.60,'Onfroi Bolderson','2022-12-02 02:35:53',0,5,8,''),(73,'Stehr and Sons','krosendall20',866.00,'Koenraad Rosendall','2023-02-23 10:40:13',0,1,9,''),(74,'Armstrong, Price and Sanford','mbeauchop21',633.10,'Mariquilla Beauchop','2022-06-21 06:11:05',0,6,1,''),(75,'Blick-Will','bgylle22',259.90,'Brody Gylle','2022-07-04 02:54:42',0,1,2,''),(76,'Johnston-Anderson','shambling23',485.60,'Seline Hambling','2023-02-01 20:34:49',0,4,3,''),(77,'Oberbrunner, Kirlin and O\'Connell','jungaretti24',693.20,'Jamill Ungaretti','2023-01-10 14:33:14',0,5,4,''),(78,'Jacobson LLC','rbrackpool25',390.40,'Rhody Brackpool','2022-03-26 08:30:39',0,4,5,''),(79,'Cummings, Shanahan and Kemmer','emcalroy26',94.00,'Emmey McAlroy','2022-11-21 01:15:30',0,6,6,''),(80,'Schuster, Quigley and O\'Keefe','nroyce27',283.70,'Nickey Royce','2022-05-14 07:42:19',0,1,7,''),(81,'Rippin, Bednar and Batz','hhellcat28',822.20,'Hildegaard Hellcat','2022-04-26 17:51:21',0,3,8,''),(82,'Skiles, Mayer and Williamson','nowlner29',965.90,'Nobie Owlner','2022-11-20 02:10:43',0,6,9,''),(83,'O\'Reilly-Crona','grydeard2a',642.00,'Ginelle Rydeard','2022-11-07 18:38:32',0,6,1,''),(84,'Mann, Kub and Crooks','adugdale2b',372.10,'Alyosha Dugdale','2023-01-01 06:11:20',0,3,2,''),(85,'Brown-Bednar','amurdoch2c',660.70,'Alphonso Murdoch','2022-09-08 01:57:56',0,7,3,''),(86,'Luettgen, McCullough and Langworth','jgorthy2d',802.20,'Julie Gorthy','2022-06-25 08:59:34',0,1,4,''),(87,'Pagac Inc','mjacquemet2e',516.40,'Maisie Jacquemet','2022-12-19 20:43:18',0,7,5,''),(88,'Walker LLC','pbrunsdon2f',832.30,'Pyotr Brunsdon','2023-02-11 12:14:20',0,2,6,''),(89,'Adams, Hauck and Schroeder','nchazelas2g',197.40,'Nannette Chazelas','2022-09-24 07:23:20',0,5,7,''),(90,'Schneider and Sons','etrimmill2h',989.30,'Ethelred Trimmill','2023-02-05 11:21:23',0,7,8,''),(91,'Paucek-Moore','bfawcus2i',73.40,'Bruis Fawcus','2022-07-25 06:13:29',0,7,9,''),(92,'McGlynn, Toy and Carter','ecristofalo2j',776.50,'Ezmeralda Cristofalo','2023-01-07 03:56:55',0,6,1,''),(93,'Upton, Williamson and Jakubowski','mpol2k',350.90,'Morse Pol','2022-06-12 07:24:52',0,1,2,''),(94,'Weissnat, Mueller and Goldner','sguerra2l',184.40,'Stephani Guerra','2023-02-21 12:12:53',0,4,3,''),(95,'Brekke, Quitzon and Yundt','htout2m',39.10,'Hashim Tout','2022-09-17 11:09:53',0,7,4,''),(96,'Kub, Robel and Hartmann','sbollon2n',143.10,'Storm Bollon','2023-02-01 14:23:44',0,6,5,''),(97,'Purdy and Sons','smcavinchey2o',657.20,'Sven McAvinchey','2022-10-01 09:04:41',0,3,6,''),(98,'Price-Dooley','amontague2p',747.50,'Ashien Montague','2022-10-12 00:50:40',0,2,7,''),(99,'Windler, Kassulke and Kemmer','mtoderbrugge2q',255.70,'Mohammed Toderbrugge','2022-08-26 02:24:03',0,7,8,''),(100,'Rath, Thiel and Quitzon','voxbury2r',879.40,'Valentine Oxbury','2023-02-06 16:34:46',0,7,9,''),(101,'Na drini cuprija','aaaa',33.00,'Ivo Andric','2023-06-17 18:41:22',1,2,102,'Staro');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report` (
  `id` int NOT NULL AUTO_INCREMENT,
  `report_text` varchar(500) NOT NULL,
  `created_time` timestamp NOT NULL,
  `user_id` int NOT NULL,
  `post_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_report_user1_idx` (`user_id`),
  KEY `fk_report_post1_idx` (`post_id`),
  CONSTRAINT `fk_report_post1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`),
  CONSTRAINT `fk_report_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
INSERT INTO `report` VALUES (8,'prijava 3123123','2023-06-23 18:17:50',102,2),(9,'aloeee','2023-06-23 18:32:02',102,1);
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(300) NOT NULL,
  `role` varchar(45) NOT NULL,
  `account_confirmed` tinyint(1) NOT NULL,
  `phone_number` varchar(45) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Zechariah','Wrenn','M','zwrenn0@buzzfeed.com','zwrenn0','6RSWqNkEYqJX','ADMIN',0,'967-876-4155',0),(2,'Jewell','Polo','Z','jpolo1@dropbox.com','jpolo1','00OIcMleg8Dx','ADMIN',1,'138-868-7936',0),(3,'Guendolen','Munkley','Z','gmunkley2@nymag.com','gmunkley2','hsRWL3HDj7','ADMIN',0,'340-309-7776',0),(4,'Clim','Searl','M','csearl3@ucoz.ru','csearl3','VUuwXiL0gEIt','Marketing Assistant',0,'173-401-3510',0),(5,'Holden','Huckster','M','hhuckster4@who.int','hhuckster4','9EYZHztS','Physical Therapy Assistant',0,'712-217-2322',0),(6,'Vanessa','Pirrone','Z','vpirrone5@drupal.org','vpirrone5','hgiyMX','VP Marketing',1,'302-278-4179',0),(7,'Bernarr','Alliker','M','balliker6@i2i.jp','balliker6','2jISzjSLkV','Registered Nurse',1,'964-858-6142',0),(8,'Billy','Wolfe','Z','bwolfe7@wikimedia.org','bwolfe7','8QmAJfu0DixZ','Professor',1,'964-394-3945',0),(9,'Aime','Spowage','Z','aspowage8@upenn.edu','aspowage8','BOK6cK7EV','Software Test Engineer I',1,'361-341-5264',0),(10,'Patrice','Phaup','Z','pphaup9@w3.org','pphaup9','ZJGxpXlbqxh6','Paralegal',0,'500-690-8754',0),(11,'Shelba','Breeder','Z','sbreedera@google.pl','sbreedera','9cgSeV','Registered Nurse',0,'255-251-5064',0),(12,'Sutherland','Goudman','M','sgoudmanb@google.co.jp','sgoudmanb','qPp9ibHT6O','Editor',1,'513-869-3884',0),(13,'Kyle','Realph','Z','krealphc@bbb.org','krealphc','Thi41Yi','Software Consultant',0,'640-687-3425',0),(14,'Justine','Muehle','Z','jmuehled@alibaba.com','jmuehled','rAALIYJxalW','Staff Accountant II',1,'842-309-0252',0),(15,'Wadsworth','Rossoni','M','wrossonie@odnoklassniki.ru','wrossonie','XyVDVg','Administrative Assistant IV',0,'153-412-2363',0),(16,'Monro','Colcomb','M','mcolcombf@comsenz.com','mcolcombf','XaKWfYIzY','VP Product Management',1,'713-360-6125',0),(17,'Mercedes','Lovelady','Z','mloveladyg@answers.com','mloveladyg','klgrwn','Community Outreach Specialist',0,'772-541-1708',0),(18,'Kenon','Browne','M','kbrowneh@friendfeed.com','kbrowneh','4I6itd8fq6','Marketing Assistant',0,'721-431-7341',0),(19,'Etheline','Davidi','Z','edavidii@imageshack.us','edavidii','LNZb153KRr','Web Designer I',0,'408-691-5438',0),(20,'Sarina','Bras','Z','sbrasj@harvard.edu','sbrasj','doikNlJ703NI','Human Resources Manager',0,'586-225-6405',0),(21,'Zidelio','Chape','M','fchapek@taobao.com','fchapek','9m7ZapQrih','Computer Systems Analyst I',1,'904-689-7878',0),(22,'Temp','Domotor','M','tdomotorl@soup.io','tdomotorl','z4kiBr11Wdt','Executive Secretary',1,'149-214-6737',0),(23,'Nisse','Clines','Z','nclinesm@jalbum.net','nclinesm','J0DxdyUoB','Nurse',1,'702-435-2858',0),(24,'Tripp','Reimer','M','treimern@cdc.gov','treimern','tbAEKLG0AwZ','VP Sales',1,'660-789-4835',0),(25,'Katee','Eul','Z','keulo@timesonline.co.uk','keulo','13ES21cGD','Geological Engineer',1,'733-455-5533',0),(26,'Dael','Paffot','Z','dpaffotp@ucsd.edu','dpaffotp','4CZSmYprO8','Research Assistant III',0,'546-701-6888',0),(27,'Melesa','Rainforth','Z','mrainforthq@google.de','mrainforthq','P0rDHq','Computer Systems Analyst IV',1,'949-717-2609',0),(28,'Sarah','MacPharlain','Z','smacpharlainr@google.co.uk','smacpharlainr','Z665PyK','Marketing Manager',0,'412-846-0399',0),(29,'Glendon','Cassel','M','gcassels@cbslocal.com','gcassels','f1jBIm','Database Administrator IV',1,'692-705-3122',0),(30,'Ed','Lemerle','M','elemerlet@yale.edu','elemerlet','g78BCvVNuCoO','Data Coordiator',0,'857-376-0104',0),(31,'Leeann','Blakeborough','Z','lblakeboroughu@weibo.com','lblakeboroughu','jYgLdpdUt','Budget/Accounting Analyst II',0,'422-380-9723',0),(32,'Brittni','Cansdill','Z','bcansdillv@hp.com','bcansdillv','8b4hw7NTdy','Research Assistant IV',0,'307-315-7570',0),(33,'Byram','Kingswoode','M','bkingswoodew@pinterest.com','bkingswoodew','MOJMOlBup','Legal Assistant',1,'753-214-0621',0),(34,'Davin','Walkden','M','dwalkdenx@reference.com','dwalkdenx','Jfa09SCSw','VP Quality Control',1,'145-255-3220',0),(35,'Bili','Nann','Z','bnanny@independent.co.uk','bnanny','bQo4ZcHEVXn','Business Systems Development Analyst',0,'672-292-9492',0),(36,'Erasmus','Edgeler','M','eedgelerz@bloomberg.com','eedgelerz','rmX3yZEClG','Computer Systems Analyst II',1,'965-940-9406',0),(37,'Carley','Skrine','Z','cskrine10@aol.com','cskrine10','7qln6e','Office Assistant IV',1,'169-667-4886',0),(38,'Lanie','Geddis','M','lgeddis11@gmpg.org','lgeddis11','gSsvNW2zqT','Staff Accountant IV',1,'242-467-8650',0),(39,'Wylie','Kerswill','M','wkerswill12@china.com.cn','wkerswill12','kSNmevqI00','Database Administrator I',0,'879-481-8922',0),(40,'Earvin','Nassau','M','enassau13@icq.com','enassau13','1V0Ki3Hy','Civil Engineer',0,'424-539-5685',0),(41,'Myles','Nussen','M','mnussen14@1und1.de','mnussen14','3B0lqDSbZc','Dental Hygienist',1,'676-756-8850',0),(42,'Rorke','Druett','M','rdruett15@ebay.com','rdruett15','yI6EZxb','Technical Writer',1,'802-727-7031',0),(43,'Berky','Mottram','M','bmottram16@google.ca','bmottram16','Q3hkwBj7865m','Dental Hygienist',0,'231-730-1671',0),(44,'Sol','Roff','M','sroff17@merriam-webster.com','sroff17','wUr85zOOy','Recruiter',1,'482-582-4968',0),(45,'Dorolice','Constantine','Z','dconstantine18@nymag.com','dconstantine18','c0zybitnM','Web Designer II',1,'619-641-9631',0),(46,'Phyllida','Collett','Z','pcollett19@wikispaces.com','pcollett19','ckbTgZi','Accounting Assistant I',1,'424-559-0496',0),(47,'Devin','Worsnip','Z','dworsnip1a@ask.com','dworsnip1a','tTAMLCdhYi','Paralegal',0,'784-927-8159',0),(48,'Andreana','Janoschek','Z','ajanoschek1b@dailymail.co.uk','ajanoschek1b','oJHnUAjZN','Environmental Specialist',1,'308-604-4675',0),(49,'Suki','Lukes','Z','slukes1c@e-recht24.de','slukes1c','SiD2jYJ8','Design Engineer',0,'642-894-4976',0),(50,'Judd','Jizhaki','M','jjizhaki1d@springer.com','jjizhaki1d','piNRokpBUy','Health Coach IV',0,'561-712-5993',0),(51,'Carly','Lifton','Z','clifton1e@chron.com','clifton1e','TAZbJmS','Chemical Engineer',0,'528-773-3539',0),(52,'Jo ann','Pirozzi','Z','jpirozzi1f@bluehost.com','jpirozzi1f','EWgqeJ','Zood Chemist',0,'701-116-7699',0),(53,'Luise','Darkins','Z','ldarkins1g@alibaba.com','ldarkins1g','wrYizOTKc3e','Help Desk Operator',1,'918-571-8406',0),(54,'Abbey','Kinder','Z','akinder1h@jigsy.com','akinder1h','6aqbGmliX4','Marketing Manager',0,'172-251-1051',0),(55,'Billie','Chalke','Z','bchalke1i@etsy.com','bchalke1i','l9e9xKk','Sales Associate',1,'492-976-0344',0),(56,'Ewan','Trask','M','etrask1j@umn.edu','etrask1j','29ux2Eq5nV3c','Senior Sales Associate',1,'797-958-4804',0),(57,'Carlie','Brummell','M','cbrummell1k@nps.gov','cbrummell1k','BwA4fdi0k4wo','Internal Auditor',1,'928-525-7796',0),(58,'Thorpe','Bodsworth','M','tbodsworth1l@deviantart.com','tbodsworth1l','OfK4uxyvWh','Structural Engineer',0,'576-553-4881',0),(59,'Gian','Acuna','M','gacuna1m@yellowpages.com','gacuna1m','dCLiRP','Analyst Programmer',0,'321-978-8955',0),(60,'Jillie','Bruyet','Z','jbruyet1n@t.co','jbruyet1n','yuimbn5bTu3C','Librarian',1,'614-471-3023',0),(61,'Merl','Domerq','Z','mdomerq1o@altervista.org','mdomerq1o','88hZxnMdZt','Quality Control Specialist',0,'998-415-4965',0),(62,'Orel','Janzen','Z','ojanzen1p@deviantart.com','ojanzen1p','qfZUw1tRva','Product Engineer',1,'210-759-2711',0),(63,'Clarke','Bridle','M','cbridle1q@printfriendly.com','cbridle1q','rODjjJz65','Desktop Support Technician',1,'912-909-3295',0),(64,'Sebastiano','Newstead','M','snewstead1r@de.vu','snewstead1r','zsgYfE','Internal Auditor',0,'504-515-6858',0),(65,'Skell','BoHlingolsen','M','sbohlingolsen1s@nydailynews.com','sbohlingolsen1s','LediCMUmm','Editor',1,'597-875-3857',0),(66,'Danny','Daubeny','M','ddaubeny1t@miitbeian.gov.cn','ddaubeny1t','UuENft','Administrative Assistant II',0,'744-581-1559',0),(67,'Laural','Mazzeo','Z','lmazzeo1u@1und1.de','lmazzeo1u','3CJz0Mk34C','Staff Accountant II',1,'334-427-8095',0),(68,'Rebecka','MacCarrick','Z','rmaccarrick1v@timesonline.co.uk','rmaccarrick1v','8jwQ9KZVxwwp','Administrative Officer',0,'306-682-2252',0),(69,'Lorrin','Martygin','Z','lmartygin1w@umn.edu','lmartygin1w','tZWCoDdcj','Safety Technician IV',0,'774-897-5706',0),(70,'Jed','Rissom','M','jrissom1x@tuttocitta.it','jrissom1x','CJh2OQZ52K','Help Desk Technician',1,'875-699-7378',0),(71,'Magdaia','Cloute','Z','mcloute1y@google.ca','mcloute1y','3IBATrRl','Media Manager IV',1,'645-805-2575',0),(72,'Ailey','McAreavey','Z','amcareavey1z@devhub.com','amcareavey1z','8AeNOOONAgf','Clinical Specialist',0,'566-181-7411',0),(73,'Em','Lorimer','Z','elorimer20@intel.com','elorimer20','zKoiqHn93l8i','Programmer I',1,'758-730-6593',0),(74,'Rachelle','Ishaki','Z','rishaki21@sciencedaily.com','rishaki21','aGrbLGNVfTW','Assistant Media Planner',1,'455-989-9894',0),(75,'Blinny','Marran','Z','bmarran22@themeforest.net','bmarran22','hZw0SYT','Human Resources Manager',1,'595-214-7878',0),(76,'Dulcinea','Schwandt','Z','dschwandt23@cbslocal.com','dschwandt23','mIUPz7x','Engineer II',0,'736-935-6249',0),(77,'Chickie','Kitcherside','M','ckitcherside24@who.int','ckitcherside24','sylhQPZ5','Geological Engineer',1,'902-965-4094',0),(78,'Suzy','Alcorn','Z','salcorn25@woothemes.com','salcorn25','uaZZAZiEbPJ','Cost Accountant',0,'150-538-1008',0),(79,'Mychal','Grzelczak','M','mgrzelczak26@techcrunch.com','mgrzelczak26','QpgOlIxYhyZf','Budget/Accounting Analyst II',0,'518-262-6411',0),(80,'Bastian','Coppock.','M','bcoppock27@businessinsider.com','bcoppock27','29rL5aZ','Staff Scientist',1,'261-974-2628',0),(81,'Teodor','Kobierski','M','tkobierski28@github.com','tkobierski28','Cchjlgm4jl','Staff Scientist',0,'484-947-6797',0),(82,'Goldarina','Zerron','Z','gferron29@sciencedaily.com','gferron29','po5LqOqJbVK','Computer Systems Analyst II',1,'467-343-7285',0),(83,'Zrederick','Keasey','M','fkeasey2a@oaic.gov.au','fkeasey2a','NHR42SZ0L5','Assistant Manager',0,'548-580-1853',0),(84,'Court','Maddyson','M','cmaddyson2b@dion.ne.jp','cmaddyson2b','twAY3BRhc','Quality Engineer',0,'334-846-5686',0),(85,'Mile','Reckless','M','mreckless2c@engadget.com','mreckless2c','w5epzN79ax','Analog Circuit Design manager',1,'966-810-1112',0),(86,'Georgine','Baldwin','Z','gbaldwin2d@tripadvisor.com','gbaldwin2d','gf14m8g','Tax Accountant',1,'643-816-1296',0),(87,'Carmine','Jaume','M','cjaume2e@goo.gl','cjaume2e','bflaEWO','Human Resources Manager',0,'429-315-8548',0),(88,'Daniella','Devon','Z','ddevon2f@geocities.com','ddevon2f','J4Vt6a9V','Dental Hygienist',1,'678-361-2541',0),(89,'Agnola','Gentzsch','Z','agentzsch2g@yellowbook.com','agentzsch2g','GZ0clI','Data Coordiator',0,'277-692-6499',0),(90,'Shaun','Harniman','Z','sharniman2h@sun.com','sharniman2h','V2scUXsDpQ','Senior Cost Accountant',0,'826-138-4655',0),(91,'Stearn','Askin','M','saskin2i@imgur.com','saskin2i','ltZ10qN','Account Executive',1,'900-786-6899',0),(92,'Linn','Grogor','M','lgrogor2j@chron.com','lgrogor2j','AMZxHPWY','Recruiting Manager',0,'180-811-8617',0),(93,'Lindsay','Sinnott','M','lsinnott2k@shinystat.com','lsinnott2k','GPs3vBdR','Operator',0,'222-107-9569',0),(94,'Katie','Haymes','Z','khaymes2l@prweb.com','khaymes2l','YUEtQsGoH','Chief Design Engineer',1,'599-889-0628',0),(95,'Harvey','Tabor','M','htabor2m@columbia.edu','htabor2m','QPhEnDlph','Computer Systems Analyst I',0,'798-618-8938',0),(96,'Rance','Baigent','M','rbaigent2n@wikipedia.org','rbaigent2n','MVy1ZlR','Systems Administrator I',0,'463-133-4152',0),(97,'Washington','Rzehor','M','wrzehor2o@ed.gov','wrzehor2o','Evzvvcu9','General Manager',0,'835-641-0625',0),(98,'Murielle','Van Arsdale','Z','mvanarsdale2p@foxnews.com','mvanarsdale2p','67X0HVZnqQHD','Technical Writer',1,'637-125-4211',0),(99,'Sheff','Vasyatkin','M','svasyatkin2q@shop-pro.jp','svasyatkin2q','bL2liG','Design Engineer',0,'834-713-5277',0),(100,'Brandy','Attride','Z','battride2r@businessinsider.com','battride2r','J7Q5BUy','VP Product Management',0,'233-280-3044',0),(101,'sergej','soldat','M','segej.s.soldat20@gmail.com','sergej','$2a$10$Ngm3uDeYsf9WA7uttecKMes/PuyvRSr.B/Ulh1P1XwC6S7bw2w3Mi','USER',0,'123412321',0),(102,'sergej','soldat','M','sergej.s.soldat20@gmail.com','sega20','$2a$10$X9M3OjoMHqb2sO5hxXNFie8JSXwk1ih4XX0Xc9djwYmAGwcdGs56a','ADMIN',1,'123123123',0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-25 14:48:30
