-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: tsquare
-- ------------------------------------------------------
-- Server version	8.0.23-0ubuntu0.20.04.1

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
-- Table structure for table `attendees`
--

DROP TABLE IF EXISTS `attendees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendees` (
  `event_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `attending` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendees`
--

LOCK TABLES `attendees` WRITE;
/*!40000 ALTER TABLE `attendees` DISABLE KEYS */;
INSERT INTO `attendees` VALUES (1,1,1),(2,1,1),(3,1,1),(3,11,1),(3,12,1),(3,13,1),(3,14,1),(3,15,1),(1,11,1),(1,12,0),(1,13,1),(1,14,0),(1,15,1),(2,11,0),(2,12,1);
/*!40000 ALTER TABLE `attendees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dms`
--

DROP TABLE IF EXISTS `dms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dms` (
  `dm_id` int NOT NULL AUTO_INCREMENT,
  `sender` int DEFAULT NULL,
  `receiver` int DEFAULT NULL,
  `sent` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dms`
--

LOCK TABLES `dms` WRITE;
/*!40000 ALTER TABLE `dms` DISABLE KEYS */;
INSERT INTO `dms` VALUES (2,1,2,'2021-04-05 16:28:09','Hi'),(3,2,1,'2021-04-05 16:28:30','Oh, hello there man'),(4,1,2,'2021-04-05 16:28:42','May we have a conversation?'),(5,2,1,'2021-04-05 16:28:55','How can one converse at a time like this?'),(6,1,2,'2021-04-05 16:29:15','Like this: bing, bang, bing bang boom'),(7,2,1,'2021-04-05 16:29:29','Your song spoke to my heart'),(8,1,2,'2021-04-05 16:29:38','Okay'),(9,1,3,'2021-04-05 16:39:35','Knock Knock'),(10,3,1,'2021-04-05 16:39:47','Who dat?'),(11,1,3,'2021-04-05 16:40:07','Oh, I\'m sorry, I thought you were someone else'),(12,3,1,'2021-04-05 16:40:17','Oh, I\'m sorry, I thought you were someone else who?'),(13,1,3,'2021-04-05 16:40:40','Never message me again or I will contact the authorities'),(14,3,1,'2021-04-05 16:40:55','Okay');
/*!40000 ALTER TABLE `dms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `event_id` int NOT NULL AUTO_INCREMENT,
  `group_id` int DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `address_1` varchar(255) DEFAULT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zipcode` char(5) DEFAULT NULL,
  `event_date` datetime DEFAULT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,1,'Group Coding at Stephen\'s','We\'re gonna write some JavaScript while watching Sister Wives','1600 Pennsylvania Avenue','Apartment 3',NULL,'OH','44124','2021-04-10 20:00:00'),(2,1,'Extra Self Assessment','We miss having self assessments, so we\'re gonna make some for ourselves','1600 Pennsylvania Avenue','Apartment 3',NULL,'OH','44124','2021-04-12 16:00:00'),(3,1,'Syntax Error Cookout','We will be eating non-expired beef in the park','123 Park Street','',NULL,'OH','44124','2021-04-20 17:30:00'),(4,2,'Outdoor Lecture','A.G. Pennypacker will be giving a talk on his new book titled \"Horses: Man\'s Best Friend? The Case Against Dogs\"','123 Park Street','',NULL,'OH','44124','2021-04-16 14:00:00'),(5,2,'Cookout in the Park','We will be hosting our annual cookout serving our four legged friends who didn\'t make it this year.','123 Park Street','',NULL,'OH','44124','2021-04-28 18:00:00');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forum` (
  `forum_post_id` int NOT NULL AUTO_INCREMENT,
  `group_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`forum_post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (1,1,1,'2021-04-05 17:02:18','What a dope forum to post on!'),(3,1,1,'2021-04-05 17:05:27','Syntax error? More like byntax error!');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_replies`
--

DROP TABLE IF EXISTS `forum_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forum_replies` (
  `reply_id` int NOT NULL AUTO_INCREMENT,
  `group_id` int DEFAULT NULL,
  `forum_post_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`reply_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_replies`
--

LOCK TABLES `forum_replies` WRITE;
/*!40000 ALTER TABLE `forum_replies` DISABLE KEYS */;
INSERT INTO `forum_replies` VALUES (1,1,1,1,'2021-04-05 17:08:53','Syntax error? More like byntax error!'),(2,1,1,2,'2021-04-05 17:09:27','That joke was dumb! Also you replied to your own post.');
/*!40000 ALTER TABLE `forum_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups_table`
--

DROP TABLE IF EXISTS `groups_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groups_table` (
  `group_id` int NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) DEFAULT NULL,
  `description` text,
  `category` enum('outdoors','music','cooking','animals','hobbies','religious') DEFAULT NULL,
  `owner_id` int DEFAULT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_table`
--

LOCK TABLES `groups_table` WRITE;
/*!40000 ALTER TABLE `groups_table` DISABLE KEYS */;
INSERT INTO `groups_table` VALUES (1,'JavaScript Meet Up','We meet up and write code','religious',1),(2,'Cleveland Horse Enthusiasts','We are enthusiastic about horses!','animals',2);
/*!40000 ALTER TABLE `groups_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `group_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`group_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,1),(1,2),(1,11),(1,12),(1,13),(1,14),(1,15),(2,1),(2,3),(2,4),(2,5),(2,6),(2,7),(2,8);
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `post_id` int NOT NULL AUTO_INCREMENT,
  `group_id` int DEFAULT NULL,
  `author` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(255) DEFAULT NULL,
  `body` text,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,1,1,'2021-04-05 14:00:00','Don\'t forget to bring your own food to the cookout!','Last time we had a cookout some people forgot to bring their own food (Jane), and then caused a scene (Jane). Let\'s not have that happen again.'),(2,1,1,'2021-04-05 14:00:00','Thank You Everyone Who Attended Last Month\'s Coding Exercise','It was dope');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Stephen','Hyde','stephen@friend.horse'),(2,'Fred','Flintstone','fred@gmail.com'),(3,'Sam','Smith','arbyslover@email.com'),(4,'Dante','Alghieri','author@inferno.com'),(5,'Thomas','McHorseradish','thomas@gmail.com'),(6,'Billy','Jones','billy@gmail.com'),(7,'Timmy','McLastname','timmy@gmail.com'),(8,'Jane','Waterson','jane@gmail.com'),(9,'Alfred','Freeman','alf@gmail.com'),(10,'Ezekial','McHarrypotter','em@gmail.com'),(11,'Colleen','McCohort','colleen@gmail.com'),(12,'JiHang','McCohort','jihang@gmail.com'),(13,'Adrian','McCohort','adrain@gmail.com'),(14,'Joe','McCohort','joe@gmail.com'),(15,'Ross','McCohort','ross@gmail.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-05 13:45:37