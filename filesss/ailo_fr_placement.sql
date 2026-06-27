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
-- Table structure for table `fr_placement`
--

DROP TABLE IF EXISTS `fr_placement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fr_placement` (
  `question_id` int NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `option_a` varchar(255) NOT NULL,
  `option_b` varchar(255) NOT NULL,
  `option_c` varchar(255) NOT NULL,
  `option_d` varchar(255) NOT NULL,
  `answer` char(1) NOT NULL,
  `difficulty` varchar(10) NOT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fr_placement`
--

LOCK TABLES `fr_placement` WRITE;
/*!40000 ALTER TABLE `fr_placement` DISABLE KEYS */;
INSERT INTO `fr_placement` (`question_id`, `question`, `option_a`, `option_b`, `option_c`, `option_d`, `answer`, `difficulty`) VALUES (1,'Bonjour, je _____ Marie.','suis','es','est','ai','A','A1'),(2,'Nous allons _____ cinéma ce soir.','au','à la','aux','du','A','A1'),(3,'Quel âge _____-tu ?','es','as','a','avez','B','A1'),(4,'Je voudrais _____ café, s’il vous plaît.','une','un','des','de la','B','A1'),(5,'Hier, nous _____ au restaurant.','allons','sommes allés','iront','allons aller','B','A1'),(6,'Si j’avais plus de temps, je _____ le français tous les jours.','pratiquerai','pratiquerais','pratiquais','pratique','B','B1'),(7,'Choisissez la phrase correcte : Il faut que je vais maintenant.','Il faut que je vais maintenant','Il faut que j’aille maintenant','Il faut que je vais aller','Il faut que j’irai maintenant','B','B1'),(8,'Marie travaille beaucoup _____ réussir son examen.','pour','parce que','malgré','depuis','A','B1'),(9,'Pourquoi Paul aime-t-il Lyon ?','Parce qu’il y a peu de personnes','Parce qu’il préfère conduire','Parce que la ville est pratique et sociale','Parce qu’il déteste les transports','C','B1'),(10,'Laquelle est la plus naturelle ?','Je suis intéressé par apprendre le français','Je suis intéressé à apprendre le français','Je m’intéresse apprendre le français','Je suis intéressé par l’apprentissage du français','D','B1'),(11,'Bien qu’il _____ fatigué, il est allé travailler.','est','soit','était','sera','B','B2'),(12,'Si les réseaux sociaux n’existaient pas, la communication moderne _____ très différente.','serait','sera','était','soit','A','B2'),(13,'Quel est le thème principal du texte ?','Les dangers des réseaux sociaux','L’apprentissage des langues via les médias numériques','Le cinéma français','Les plateformes de jeux vidéo','B','B2'),(14,'Quelle phrase est grammaticalement correcte ?','Les informations que tu m’as données étaient utiles','Les informations que tu m’as donné étaient utiles','Les informations que tu m’as donnée étaient utiles','Les informations que tu m’as donnés étaient utiles','A','B2'),(15,'Choisissez la phrase la plus naturelle et avancée : Les médias sociaux ont profondément transformé notre manière de communiquer et de consommer l’information.','Je pense que les médias sociaux sont bons','Les médias sociaux sont intéressants pour les jeunes','Les médias sociaux ont profondément transformé notre manière de communiquer et de consommer l’information','Les médias sociaux existent partout aujourd’hui','C','B2');
/*!40000 ALTER TABLE `fr_placement` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-07 20:32:58
