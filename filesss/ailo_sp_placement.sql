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
-- Table structure for table `sp_placement`
--

DROP TABLE IF EXISTS `sp_placement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sp_placement` (
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
-- Dumping data for table `sp_placement`
--

LOCK TABLES `sp_placement` WRITE;
/*!40000 ALTER TABLE `sp_placement` DISABLE KEYS */;
INSERT INTO `sp_placement` (`question_id`, `question`, `option_a`, `option_b`, `option_c`, `option_d`, `answer`, `difficulty`) VALUES (1,'Yo _____ de Nigeria.','es','soy','eres','está','B','A1'),(2,'¿Dónde _____ el baño?','están','es','está','somos','C','A1'),(3,'Nosotros _____ español todos los días.','estudiamos','estudia','estudian','estudio','A','A1'),(4,'A María le gusta _____ música.','el','la','los','una','B','A1'),(5,'Ayer _____ al supermercado con mi madre.','voy','fui','iba','iré','B','A1'),(6,'Si tuviera más dinero, _____ viajar por el mundo.','voy a','viajaría','viajé','viajaré','B','B1'),(7,'Espero que tú _____ mañana.','vienes','vendrás','vengas','venir','C','B1'),(8,'El libro _____ estoy leyendo es muy interesante.','que','quien','donde','cuyo','A','B1'),(9,'¿Por qué Marta trabaja desde casa?','Porque no tiene trabajo','Porque quiere viajar','Porque quiere más comodidad y tiempo','Porque odia a su familia','C','B1'),(10,'¿Cuál frase suena más natural?','Estoy interesado para aprender español','Estoy interesado en aprender español','Estoy interesante en español','Intereso aprender español','B','B1'),(11,'Aunque _____ cansado, fue al trabajo.','está','estuvo','estuviera','estaba','C','B2'),(12,'Si las redes sociales no existieran, nuestra forma de comunicarnos _____ muy diferente.','será','fuera','sería','es','C','B2'),(13,'¿Cuál es la idea principal?','Los jóvenes no estudian idiomas','El aprendizaje digital está cambiando la forma de aprender idiomas','Los podcasts son aburridos','Las escuelas desaparecerán','B','B2'),(14,'¿Cuál oración es correcta?','Las personas que conocí ayer eran muy simpáticos','Las personas que conocí ayer era muy simpáticos','Las personas que conocí ayer fueron muy simpático','Las personas que conocí ayer es simpáticos','A','B2'),(15,'Elige la opción más avanzada y natural:','Las redes sociales son populares','Muchas personas usan Instagram todos los días','Las plataformas digitales han transformado profundamente la manera en que las personas consumen información y se relacionan entre sí','Internet es muy importante hoy','C','B2');
/*!40000 ALTER TABLE `sp_placement` ENABLE KEYS */;
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
