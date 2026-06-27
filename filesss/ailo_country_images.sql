-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ailo
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `country_images`
--

DROP TABLE IF EXISTS `country_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `language` varchar(20) NOT NULL,
  `location_name` varchar(100) DEFAULT NULL,
  `image_url` text NOT NULL,
  `city` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country_images`
--

LOCK TABLES `country_images` WRITE;
/*!40000 ALTER TABLE `country_images` DISABLE KEYS */;
INSERT INTO `country_images` (`id`, `language`, `location_name`, `image_url`, `city`, `country`, `created_at`) VALUES (1,'Spanish','Edificio Metropoli, Gran vía','https://images.unsplash.com/photo-1543783207-ec64e4d95325?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Madrid','Spain','2026-06-03 18:29:50'),(2,'Spanish','Cap Formentor','https://plus.unsplash.com/premium_photo-1716138192476-f34e85ad43c2?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',NULL,'Spain','2026-06-03 20:30:09'),(4,'Spanish','Cala Molins','https://plus.unsplash.com/premium_photo-1716138192562-71754b66e0cb?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',NULL,'Spain','2026-06-03 20:33:07'),(5,'Spanish',NULL,'https://images.unsplash.com/photo-1583422409516-2895a77efded?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Barcelona','Spain','2026-06-03 20:33:07'),(6,'Spanish',NULL,'https://images.unsplash.com/photo-1573611030146-ff6916c398fa?q=80&w=1051&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Sevilla','Spain','2026-06-03 20:34:06'),(7,'Spanish','Castillo Gibralfaro','https://images.unsplash.com/photo-1512753360435-329c4535a9a7?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Malaga','Spain','2026-06-03 20:34:56'),(8,'Spanish','','https://images.unsplash.com/photo-1533224081996-0a96a8481e89?q=80&w=764&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Montecorto','Spain','2026-06-03 20:36:04'),(18,'French','Bonnieux','https://frenchmoments.eu/wp-content/uploads/2023/10/Bonnieux-16-copyright-French-Moments-1024x683.jpg','Provence','France','2026-06-06 22:40:04'),(19,'French','Lacoste','https://frenchmoments.eu/wp-content/uploads/2023/10/Bonnieux-Countryside-30-copyright-French-Moments-1024x682.jpg','Provence','France','2026-06-06 22:40:04'),(20,'French','Roussillon and Mont Ventoux','https://frenchmoments.eu/wp-content/uploads/2023/10/Roussillon-05-copyright-French-Moments-1024x683.jpg','Provence','France','2026-06-06 22:40:04'),(21,'French','Gordes ','https://frenchmoments.eu/wp-content/uploads/2023/10/Gordes-09-copyright-French-Moments.jpg','Provence','France','2026-06-06 22:40:04'),(22,'French','Port of Marseille','https://www.afrenchcollection.com/wp-content/uploads/2021/01/Marseille-1024-x-695.jpg','Côte d\' Azur','France','2026-06-06 22:40:04'),(23,'French','Trégastel','https://www.afrenchcollection.com/wp-content/uploads/2020/03/Brittany-Tregastel-1024-x-695.jpg','Brittany','France','2026-06-06 22:40:04'),(24,'French','Mont Saint-Michel','https://www.afrenchcollection.com/wp-content/uploads/2020/03/Tour-page-photos-1024-x-695.jpg','Normandy','France','2026-06-06 22:40:04'),(25,'French',NULL,'https://www.afrenchcollection.com/wp-content/uploads/2016/10/Toulouse.jpg','Toulouse','France','2026-06-06 22:40:04'),(26,'French','Sacre Coeur','https://www.afrenchcollection.com/wp-content/uploads/2021/01/3.jpg','Montmartre, Paris','France','2026-06-06 22:40:04'),(27,'French','Villefranche-sur-Mer','https://www.afrenchcollection.com/wp-content/uploads/2021/01/Blog-post-1024-x-695.jpg','Nice','France','2026-06-06 22:40:04');
/*!40000 ALTER TABLE `country_images` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-07 20:32:56
