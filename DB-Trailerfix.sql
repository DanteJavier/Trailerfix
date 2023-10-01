CREATE DATABASE  IF NOT EXISTS `trailerfix` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `trailerfix`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: trailerfix
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `actores`
--

DROP TABLE IF EXISTS `actores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actores` (
  `idactor` int NOT NULL AUTO_INCREMENT,
  `nombreactor` varchar(45) NOT NULL,
  PRIMARY KEY (`idactor`)
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actores`
--

LOCK TABLES `actores` WRITE;
/*!40000 ALTER TABLE `actores` DISABLE KEYS */;
INSERT INTO `actores` VALUES (1,'Adam Nagaitis'),(2,'Adeel Akhtar'),(3,'Aidan Gallagher'),(4,'Alana Cavanaugh'),(5,'Alice Braga'),(6,'Alicia Vikander'),(7,'Amy Manson'),(8,'Amybeth McNulty'),(9,'Angus Macfadyen'),(10,'Anya Taylor-Joy'),(11,'Awkwafina'),(12,'Benjamin Sokolow'),(13,'Bill Skarsgård'),(14,'Bill Hader'),(15,'Brett Cullen'),(16,'Bruce Harwood'),(17,'Bryce Dallas Howard'),(18,'Burn Gorman'),(19,'Cailee Spaeny'),(20,'Caitriona Balfe'),(21,'Camila Mendes'),(22,'Candice Patton'),(23,'Carl Weathers'),(24,'Carlos Valdes'),(25,'Casey Cott'),(26,'Chadwick Boseman'),(27,'Charlie Tahan'),(28,'Chloe Pirrie'),(29,'Chris Bartlett'),(30,'Chris Evans'),(31,'Chris Hemsworth'),(32,'Chris Messina'),(33,'Chris Pratt'),(34,'Christian Bale'),(35,'Claire Foy'),(36,'Claire Selby'),(37,'Colin Farrell'),(38,'Common'),(39,'Corey Johnson'),(40,'Corey Stoll'),(41,'Corrine Koslo'),(42,'Courteney Cox'),(43,'Dalila Bela'),(44,'Danai Gurira'),(45,'Daniel Kaluuya'),(46,'Danielle Panabaker'),(47,'Dash Mihok'),(48,'David Castañeda'),(49,'David Duchovny'),(50,'David Harbour'),(51,'David Schwimmer'),(52,'Domhnall Gleeson'),(53,'Dominic Mafham'),(54,'Dwayne Johnson'),(55,'Ed Harris'),(56,'Elliot Page'),(57,'Emilia Clarke'),(58,'Emily Bayiokos'),(59,'Emily Watson'),(60,'Emma Thompson'),(61,'Emmy Raver-Lampman'),(62,'Enver Gjokaj'),(63,'Evan Rachel Wood'),(64,'Ewan McGregor'),(65,'Florence Pugh'),(66,'Frances Conroy'),(67,'Gana Bayarsaikhan'),(68,'Geena Davis'),(69,'Génesis Rodríguez'),(70,'Geraldine James'),(71,'Giancarlo Esposito'),(72,'Gillian Anderson'),(73,'Grant Gustin'),(74,'Gwyneth Paltrow'),(75,'Harry Melling'),(76,'Helena Bonham Carter'),(77,'Henry Cavill'),(78,'Ioan Gruffudd'),(79,'Irrfan Khan'),(80,'Isaiah Mustafa'),(81,'Jack Black'),(82,'James McAvoy'),(83,'James Weber Brown'),(84,'Janina Elkin'),(85,'Jared Harris'),(86,'Jason Clarke'),(87,'Jay Ryan'),(88,'Jeff Daniels'),(89,'Jeffrey Wright'),(90,'Jennifer Aniston'),(91,'Jennifer Ehle'),(92,'Jeremy Renner'),(93,'Jesse L. Martin'),(94,'Jessica Chastain'),(95,'Jessie Buckley'),(96,'Jim Parsons'),(97,'Jing Tian'),(98,'Joaquin Phoenix'),(99,'John Boyega'),(100,'John Malkovich'),(101,'Johnny Galecki'),(102,'Jon Bernthal'),(103,'Jorja Fox'),(104,'Josh Lucas'),(105,'Jude Law'),(106,'Judy Greer'),(107,'Jurnee Smollett'),(108,'Kaley Cuoco'),(109,'Karen Gillan'),(110,'Kate Mara'),(111,'Kate Walsh'),(112,'Kate Winslet'),(113,'Kerry Bishé'),(114,'Kevin Hart'),(115,'Kit Harington'),(116,'Kristen Wiig'),(117,'Kunal Nayyar'),(118,'Kyle Chandler'),(119,'Laurence Fishburne'),(120,'Lee Pace'),(121,'Lena Headey'),(122,'Lia Williams'),(123,'Lili Reinhart'),(124,'Lisa Kudrow'),(125,'Lorina Kamburova'),(126,'Louis Partridge'),(127,'Lucas Jade Zumann'),(128,'Luke Allen-Gale'),(129,'Luke Hemsworth'),(130,'Lupita Nyong\'o'),(131,'Mackenzie Davis'),(132,'Mädchen Amick'),(133,'Madelaine Petsch'),(134,'Margot Robbie'),(135,'Marion Cotillard'),(136,'Marisol Nichols'),(137,'Mark Ruffalo'),(138,'Martin Freeman'),(139,'Mary Elizabeth Winstead'),(140,'Matt Damon'),(141,'Matt LeBlanc'),(142,'Matt Smith'),(143,'Matthew Perry'),(144,'Mayim Bialik'),(145,'Melissa Rauch'),(146,'Michael B. Jordan'),(147,'Michael Peña'),(148,'Millie Bobby Brown'),(149,'Miranda Cosgrove'),(150,'Misty Rosas'),(151,'Mitch Pileggi'),(152,'Moses Ingram'),(153,'Nick Jonas'),(154,'Nick Robinson'),(155,'Nikolaj Coster-Waldau'),(156,'Nina Bergman'),(157,'Noah Jupe'),(158,'O.T. Fagbenle'),(159,'Olivia Colman'),(160,'Omar Epps'),(161,'Omar Sy'),(162,'Oscar Isaac'),(163,'Patrick Fugit'),(164,'Paul Ritter'),(165,'Peter Dinklage'),(166,'Peter Ferdinando'),(167,'R. H. Thomson'),(168,'Rachel Weisz'),(169,'Ray Winstone'),(170,'Rhona Mitra'),(171,'Rinko Kikuchi'),(172,'Rio Hackford'),(173,'Robert De Niro'),(174,'Robert Downey Jr.'),(175,'Robert Patrick'),(176,'Robert Sheehan'),(177,'Rosie Perez'),(178,'Ryan Gosling'),(179,'Salli Richardson-Whitfield'),(180,'Sam Claflin'),(181,'Scarlett Johansson'),(182,'Scoot McNairy'),(183,'Scott Eastwood'),(184,'Sean Bean'),(185,'Shea Whigham'),(186,'Simon Helberg'),(187,'Sonoya Mizuno'),(188,'Sophie Turner'),(189,'Stacy Martin'),(190,'Stellan Skarsgård'),(191,'Tessa Thompson'),(192,'Thandie Newton'),(193,'Theo James'),(194,'Thomas Brodie-Sangster'),(195,'Tobias Menzies'),(196,'Toby Huss'),(197,'Toby Jones'),(198,'Tom Braidwood'),(199,'Tom Cavanagh'),(200,'Tom Hopper'),(201,'Vanessa Kirby'),(202,'Vincent D\'Onofrio'),(203,'Vincent Piazza'),(204,'Will Smith'),(205,'William Hurt'),(206,'Willow Smith'),(207,'Zazie Beetz'),(208,'Pedro Pascal');
/*!40000 ALTER TABLE `actores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categoria` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Serie'),(2,'Película');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generos`
--

DROP TABLE IF EXISTS `generos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generos` (
  `idgenero` int NOT NULL AUTO_INCREMENT,
  `genero` varchar(45) NOT NULL,
  PRIMARY KEY (`idgenero`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generos`
--

LOCK TABLES `generos` WRITE;
/*!40000 ALTER TABLE `generos` DISABLE KEYS */;
INSERT INTO `generos` VALUES (1,'Ciencia Ficción'),(2,'Fantasía'),(3,'Drama'),(4,'Sucesos'),(5,'Hechos verídicos'),(6,'Crimen'),(7,'Suspenso'),(8,'Aventura'),(9,'Acción'),(10,'Comedia'),(11,'Familia'),(12,'Western'),(13,'Tecnología'),(14,'Historia'),(15,'Intriga'),(16,'Terror'),(17,'Hechos verídicos.'),(18,'Ficcíon');
/*!40000 ALTER TABLE `generos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generotrailer`
--

DROP TABLE IF EXISTS `generotrailer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generotrailer` (
  `idtrailer` int NOT NULL,
  `idgenero` int NOT NULL,
  PRIMARY KEY (`idtrailer`,`idgenero`),
  KEY `fkagenero_idx` (`idgenero`),
  CONSTRAINT `fkagenero` FOREIGN KEY (`idgenero`) REFERENCES `generos` (`idgenero`),
  CONSTRAINT `fkatrailer` FOREIGN KEY (`idtrailer`) REFERENCES `catalogo` (`idtrailers`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generotrailer`
--

LOCK TABLES `generotrailer` WRITE;
/*!40000 ALTER TABLE `generotrailer` DISABLE KEYS */;
INSERT INTO `generotrailer` VALUES (3,1),(4,1),(8,1),(10,1),(14,1),(16,1),(20,1),(22,1),(27,1),(30,1),(31,1),(35,1),(2,2),(3,2),(4,2),(5,2),(6,2),(9,2),(10,2),(11,2),(17,2),(19,2),(21,2),(23,2),(24,2),(28,2),(32,2),(33,2),(35,2),(1,3),(2,3),(5,3),(6,3),(7,3),(9,3),(12,3),(13,3),(14,3),(15,3),(17,3),(18,3),(25,3),(26,3),(28,3),(29,3),(30,3),(31,3),(33,3),(34,3),(5,4),(1,5),(15,5),(7,6),(7,7),(18,7),(20,7),(22,7),(23,7),(26,7),(28,7),(31,7),(32,7),(8,8),(9,8),(21,8),(24,8),(25,8),(29,8),(30,8),(32,8),(8,9),(18,9),(19,9),(20,9),(24,9),(27,9),(29,9),(35,9),(11,10),(12,10),(19,10),(21,10),(12,11),(13,11),(17,13),(25,14),(2,15),(6,15),(26,15),(13,16),(16,16),(23,16),(27,16),(33,16),(34,17);
/*!40000 ALTER TABLE `generotrailer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reparto`
--

DROP TABLE IF EXISTS `reparto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reparto` (
  `idtrailer` int NOT NULL,
  `idactor` int NOT NULL,
  PRIMARY KEY (`idtrailer`,`idactor`),
  KEY `fkactores_idx` (`idactor`),
  CONSTRAINT `fkactores` FOREIGN KEY (`idactor`) REFERENCES `actores` (`idactor`),
  CONSTRAINT `fktrailer` FOREIGN KEY (`idtrailer`) REFERENCES `catalogo` (`idtrailers`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reparto`
--

LOCK TABLES `reparto` WRITE;
/*!40000 ALTER TABLE `reparto` DISABLE KEYS */;
INSERT INTO `reparto` VALUES (15,1),(6,2),(4,3),(17,4),(33,5),(31,6),(27,7),(13,8),(22,9),(5,10),(21,11),(26,12),(23,13),(23,14),(7,15),(14,16),(32,17),(35,18),(35,19),(25,20),(2,21),(10,22),(3,23),(10,24),(2,25),(24,26),(33,27),(5,28),(3,29),(8,30),(8,31),(19,32),(32,33),(1,34),(25,34),(34,35),(31,36),(18,37),(18,38),(31,39),(34,40),(13,41),(12,42),(13,43),(24,44),(24,45),(10,46),(33,47),(4,48),(14,49),(29,50),(12,51),(31,52),(27,53),(21,54),(16,55),(4,56),(9,57),(26,58),(15,59),(33,60),(4,61),(22,62),(16,63),(19,64),(29,65),(7,66),(31,67),(18,68),(26,69),(13,70),(3,71),(14,72),(10,73),(28,74),(5,75),(1,76),(6,76),(6,77),(18,78),(32,79),(23,80),(21,81),(23,82),(27,83),(5,84),(15,85),(34,86),(23,87),(30,88),(16,89),(12,90),(28,91),(8,92),(10,93),(18,94),(23,94),(30,94),(15,95),(11,96),(35,97),(7,98),(35,99),(18,100),(11,101),(25,102),(22,103),(25,104),(28,105),(32,106),(19,107),(11,108),(21,109),(30,110),(22,111),(28,112),(17,113),(21,114),(9,115),(30,116),(11,117),(34,118),(28,119),(17,120),(9,121),(20,122),(2,123),(12,124),(27,125),(6,126),(13,127),(27,128),(16,129),(24,130),(17,131),(2,132),(2,133),(19,134),(28,135),(2,136),(8,137),(24,138),(19,139),(25,140),(28,140),(30,140),(12,141),(1,142),(12,143),(11,144),(11,145),(24,146),(30,147),(6,148),(22,149),(3,150),(14,151),(5,152),(21,153),(32,154),(9,155),(27,156),(25,157),(29,158),(1,159),(22,160),(32,161),(31,162),(34,163),(15,164),(9,165),(20,166),(13,167),(29,168),(29,169),(20,170),(35,171),(3,172),(7,173),(8,174),(14,175),(4,176),(19,177),(34,178),(33,179),(6,180),(8,181),(29,181),(17,182),(35,183),(30,184),(7,185),(11,186),(31,187),(9,188),(20,189),(15,190),(16,191),(16,192),(20,193),(5,194),(1,195),(17,196),(20,197),(14,198),(10,199),(1,200),(4,200),(32,202),(26,203),(33,204),(29,205),(33,206),(7,207),(3,208);
/*!40000 ALTER TABLE `reparto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogo`
--

DROP TABLE IF EXISTS `catalogo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalogo` (
  `idtrailers` int NOT NULL AUTO_INCREMENT,
  `poster` varchar(45) NOT NULL,
  `titulo` varchar(70) NOT NULL,
  `idcategoria` int NOT NULL,
  `resumen` longtext NOT NULL,
  `temporadas` int DEFAULT NULL,
  `trailer` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idtrailers`),
  KEY `idcategoria_idx` (`idcategoria`),
  CONSTRAINT `fkcategoriatrailer` FOREIGN KEY (`idcategoria`) REFERENCES `categorias` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogo`
--

LOCK TABLES `catalogo` WRITE;
/*!40000 ALTER TABLE `catalogo` DISABLE KEYS */;
INSERT INTO `catalogo` VALUES (1,'/posters/1.jpg','The Crown',1,'Este drama narra las rivalidades políticas y el romance de la reina Isabel II, así como los sucesos que moldearon la segunda mitad del siglo XX.',4,NULL),(2,'/posters/2.jpg','Riverdale',1,'El paso a la edad adulta incluye sexo, romance, escuela y familia. Para Archie y sus amigos, también hay misterios oscuros.',5,NULL),(3,'/posters/3.jpg','The Mandalorian',1,'Ambientada tras la caída del Imperio y antes de la aparición de la Primera Orden, la serie sigue los pasos de un pistolero solitario en las aventuras que protagoniza en los confines de la galaxia, donde no alcanza la autoridad de la Nueva República.',2,'https://www.youtube.com/embed/aOC8E8z_ifw'),(4,'/posters/4.jpg','The Umbrella Academy',1,'La muerte de su padre reúne a unos hermanos distanciados y con extraordinarios poderes que descubren impactantes secretos y una amenaza que se cierne sobre la humanidad.',1,NULL),(5,'/posters/5.jpg','Gambito de Dama',1,'En los cincuenta, una joven de un orfanato descubre que tiene un increíble don para el ajedrez y recorre el arduo camino a la fama mientras lucha contra las adicciones.',1,NULL),(6,'/posters/6.jpg','Enola Holmes',2,'La hermana menor de Sherlock, descubre que su madre ha desaparecido y se dispone a encontrarla. En su búsqueda, saca a relucir el sabueso que corre por sus venas y se encuentra con una conspiración que gira en torno a un misterioso lord, demostrando que su ilustre hermano no es el único talento en la familia.',NULL,NULL),(7,'/posters/7.jpg','Guasón',2,'Arthur Fleck (Phoenix) es un hombre ignorado por la sociedad, cuya motivación en la vida es hacer reír. Pero una serie de trágicos acontecimientos le llevarán a ver el mundo de otra forma. Película basada en el popular personaje de DC Comics Joker, conocido como archivillano de Batman, pero que en este film tomará un cariz más realista y oscuro.',NULL,'https://www.youtube.com/embed/zAGVQLHvwOY'),(8,'/posters/8.jpg','Avengers: End Game',2,'Después de los devastadores eventos de los Vengadores: Infinity War (2018), el universo está en ruinas. Con la ayuda de los aliados restantes, los Vengadores se reúnen una vez más para revertir las acciones de Thanos y restaurar el equilibrio del universo.',NULL,NULL),(9,'/posters/9.jpg','Juego de tronos',1,'En un mundo fantástico y en un contexto medieval varias familias, relativas a la nobleza, se disputan el poder para dominar el territorio ficticio de Poniente (Westeros) y tomar el control de los Siete Reinos desde el Trono de Hierro, lugar donde el rey ejerce el poder.',8,NULL),(10,'/posters/10.jpg','The Flash',1,'Sigue las veloces aventuras de Barry Allen, un joven común y corriente con el deseo latente de ayudar a los demás. Cuando una inesperada partícula aceleradora golpea por accidente a Barry, de pronto se encuentra cargado de un increíble poder para moverse a increíbles velocidades. Mientras Barry siempre ha tenido el alma de un héroe, sus nuevos poderes le han dado la capacidad de actuar como tal.',6,NULL),(11,'/posters/11.jpg','The Big Bang Theory',1,'Leonard y Sheldon son dos físicos que comparten trabajo y apartamento. La serie comienza con la mudanza de Penny, su nueva y atractiva vecina, y hace hincapié en la dificultad de los físicos para relacionarse con personas fuera de su entorno para dar lugar a situaciones cómicas.',12,'https://www.youtube.com/embed/WBb3fojgW0Q'),(12,'/posters/12.jpg','Friends',1,'\'Friends\' narra las aventuras y desventuras de seis jóvenes de Nueva York: Rachel, Monica, Phoebe, Ross, Chandler y Joey. Ellos forman una unida pandilla de amigos que viven en Manhattan y que suelen reunirse en sus apartamentos o en su bar habitual cafetería, el Central Perk. A pesar de los numerosos cambios que se producen en sus vidas, su amistad es inquebrantable en la dura batalla por salir adelante en sus periplos profesionales y personales.',10,NULL),(13,'/posters/13.jpg','Anne with an \'E\'',1,'Anne Shirley es una niña huérfana que vive en un pequeño pueblo llamado Avonlea que pertenece a la Isla del Príncipe Eduardo, en el año 1890. Después de una infancia difícil, donde fue pasando de orfanato a hogares de acogida, es enviada por error a vivir con una solterona y su hermano. Cuando cumple 13 años, Anne va a conseguir transformar su vida y el pequeño pueblo donde vive gracias a su fuerte personalidad, intelecto e imaginación. Basada en la inolvidable novela.',2,NULL),(14,'/posters/14.jpg','Expedientes Secretos \'X\'',1,'Fox Mulder y Dana Scully son dos investigadores del FBI que investigan casos sin resolución ni explicación, ya sea por razones paranormales (espíritus, criaturas extrañas, aliens...) ya porque el gobierno se ha encargado de ocultar todo tipo de pruebas. Cuando Mulder tenía doce años, su hermana pequeña fue secuestrada por unos desconocidos, aunque él cree que, en realidad, fue abducida por extraterrestres. Tras acabar sus estudios en la universidad de Oxford, ingresó en la Academia de Quantico, donde se ganó el apodo de \'siniestro\'',11,'https://www.youtube.com/embed/KKziOmsJxzE'),(15,'/posters/15.jpg','Chernobyl',1,'Sigue «la verdadera historia de una de las peores catástrofes provocadas por el hombre y habla de los valientes hombres y mujeres que se sacrificaron para salvar a Europa de un desastre inimaginable. La miniserie se centra en el desgarrador alcance del desastre de la planta nuclear que ocurrió en Ucrania en abril de 1986, revelando cómo y por qué ocurrió, además contando las sorprendentes y notables historias de los héroes que lucharon y cayeron.',1,'https://www.youtube.com/embed/s9APLXM9Ei8'),(16,'/posters/16.jpg','Westworld',1,'\'Westworld\' es una oscura odisea acerca del amanecer de la conciencia artificial y la evolución del pecado. Situada en la intersección del futuro cercano y el pasado reimaginado, explora un mundo donde cada apetito humano, sin importar cuán noble o depravado, puede ser saciado. Está ambientada en un parque temático futurista dirigido por el Dr. Robert Ford (Anthony Hopkins). Las instalaciones cuentan con androides caracterizados del western americano, y gracias a ellos los visitantes pueden introducirse en cualquier tipo de fantasía por muy oscura que sea.',3,'https://www.youtube.com/embed/qLFBcdd6Qw0'),(17,'/posters/17.jpg','Halt and Catch Fire',1,'Situada en los inicios de la década de 1980, un visionario ficticio, un ingeniero electrónico y una prodigiosa ingeniera, se alían a una programadora de software para confrontar con las corporaciones informáticas dominantes de la época. El Personal de la firma y sus socios de negocio, comenzarán una carrera que cambiará la cultura en el Estado de Texas, cuna de las empresas de tecnología, casi de la misma forma que lo es hoy Silicon Valey. \n Esta historia ficticia emula el trabajo realizado, en su momento, por la firma Compaq, cuando clonó el BIOS de las Computadoras Personales IBM, dando vida así al económico mercado de los clones. Mostrando también, a lo largo de sus 4 temporadas, el nacimiento de la arquitectura abierta de hardware, los videojuegos online, las salas de chat y de trueque de productos físicos, los BBS, y las primeras nubes computacionales, hasta la llegada de Internet (sin dejar afuera la guerra de los web browsers).',4,'https://www.youtube.com/embed/pWrioRji60A'),(18,'/posters/18.jpg','Ava',2,'Ava es una mortífera asesina a sueldo que trabaja para una organización de operaciones encubiertas, que viaja por todo el mundo acabando con aquellos objetivos que nadie más puede derribar. Cuando uno de sus encargos sale mal, Ava tendrá que luchar por una vida.',NULL,NULL),(19,'/posters/19.jpg','Aves de presa y la fantabulosa emancipación de una Harley Quinn',2,'Después de separarse de Joker, Harley Quinn y otras tres heroínas (Canario Negro, Cazadora y Renée Montoya) unen sus fuerzas para salvar a una niña (Cassandra Cain) del malvado rey del crimen Máscara Negra.',NULL,NULL),(20,'/posters/20.jpg','Archivo',2,'2038: George Almore está trabajando en una verdadera IA equivalente a la humana. Su último prototipo está casi listo. Esta fase sensible también es la más arriesgada. Especialmente porque tiene un objetivo que debe ocultarse a toda costa: reunirse con su esposa muerta.',NULL,'https://www.youtube.com/embed/VHSoCnDioAo'),(21,'/posters/21.jpg','Jumanji - The next level',2,'Las aventuras continúan en el fantástico mundo del video juego Jumanji, donde nada es lo que parece. En esta ocasión, los jugadores vuelven al juego, pero sus personajes se han intercambiado entre sí, lo que ofrece un curioso plantel: los mismos héroes con distinta apariencia y habilidades. Pero, ¿dónde está el resto de la gente?',NULL,'https://www.youtube.com/embed/rBxcF-r9Ibs'),(22,'/posters/22.jpg','3022',2,'La película está ambientada en una estación espacial en el futuro. La tripulación sufre un estrés traumático y considera abandonar su misión después de observar lo que creen que es la destrucción de la Tierra. La película se muestra como una serie de flashbacks y flash-forward.',NULL,'https://www.youtube.com/embed/AGQ7OkmIx4Q'),(23,'/posters/23.jpg','IT - Capítulo 2',2,'En este segundo capitulo Han pasado 27 años desde que el \'Club de los Perdedores\', formado por Bill, Berverly, Richie, Ben, Eddie, Mike y Stanley, se enfrentaran al macabro y despiadado Pennywise (Bill Skarsgård). En cuanto tuvieron oportunidad, abandonaron el pueblo de Derry, en el estado de Maine, que tantos problemas les había ocasionado. Sin embargo, ahora, siendo adultos, parece que no pueden escapar de su pasado. Todos deberán enfrentarse de nuevo al temible payaso para descubrir si de verdad están preparados para superar sus traumas de la infancia.',NULL,'https://www.youtube.com/embed/hZeFeYSmBcg'),(24,'/posters/24.jpg','Pantera Negra',2,'T’Challa (Chadwick Boseman) regresa a su hogar en la apartada nación africana de Wakanda para servir como líder de su país. Tras suceder a su padre en el trono, pasa a convertirse en Pantera Negra, una sigilosa criatura de la noche, con agudos sentidos felinos y otras habilidades como súper fuerza e inteligencia, agilidad, estrategia o maestro del combate sin armas. Es bajo el liderazgo de T’Challa como Wakanda consigue convertirse en una de las naciones más ricas y tecnológicamente avanzadas del planeta.',NULL,'https://www.youtube.com/embed/BE6inv8Xh4A'),(25,'/posters/25.jpg','Contra lo imposible (Ford versus Ferrari)',2,'Los ganadores del Premio de la Academia® Matt Damon y Christian Bale protagonizan CONTRA LO IMPOSIBLE, basada en la historia real del visionario diseñador americano de automóviles Carroll Shelby (Damon) y el intrépido piloto británico Ken Miles (Bale). Juntos construyen un nuevo coche de carreras para Ford Motor Company y así enfrentar a Enzo Ferrari en las 24 Horas de Le Mans en Francia en 1966.',NULL,'https://www.youtube.com/embed/SOVb0-2g1Q0'),(26,'/posters/26.jpg','Centígrados',2,'Una joven pareja estadounidense viaja a las montañas árticas de Noruega. Después de detenerse durante una tormenta de nieve, se despiertan atrapados en su SUV, enterrados bajo capas de nieve y hielo.',NULL,NULL),(27,'/posters/27.jpg','DOOM: Aniquilación',2,'Doom: Aniquilación sigue a un grupo de marines espaciales que han respondido a una llamada de alerta de una base en la luna marciana, solo para descubrir que ha sido tomada por criaturas demoníacas que amenazan con desatar el infierno en la tierra.',NULL,'https://www.youtube.com/embed/nat3u3gAVLE'),(28,'/posters/28.jpg','Contagio',2,'De repente, sin saber cuál es su origen, aunque todo hace sospechar que comienza con el viaje de una norteamericana a un casino de Hong Kong, un virus mortal comienza a propagarse por todo el mundo. En pocos días, la enfermedad empieza a diezmar a la población. El contagio se produce por mero contacto entre los seres humanos. Un thriller realista y sin efectos especiales sobre los efectos de una epidemia.',NULL,'https://www.youtube.com/embed/4sYSyuuLk5g'),(29,'/posters/29.jpg','Viuda Negra',2,'Primera pelicula individual de la Viuda Negra en el universo cinematografico de Marvel, contando su historia desde que se inició como doble agente rusa, su niñez, sus misiones, y su actualidad, después de Avengers.',NULL,'https://www.youtube.com/embed/BIn8iANwEog'),(30,'/posters/30.jpg','The Martian',2,'Durante una misión a Marte de la nave tripulada Ares III, una fuerte tormenta se desata dando por desaparecido y muerto al astronauta Mark Watney (Matt Damon), sus compañeros toman la decisión de irse pero él ha sobrevivido. Está solo y sin apenas recursos en el planeta. Con muy pocos medios deberá recurrir a sus conocimientos, su sentido del humor y un gran instinto de supervivencia para lograr sobrevivir y comunicar a la Tierra que todavía está vivo esperando que acudan en su rescate.',NULL,'https://www.youtube.com/embed/XvB58bCVfng'),(31,'/posters/31.jpg','Ex-Machina',2,'Un programador multimillonario selecciona a Caleb, un joven empleado de su empresa, para que pase una semana en un lugar remoto con el objetivo de que participe en un test en el que estará involucrada su última creación: un robot-mujer en el que inteligencia artificial lo es todo.',NULL,'https://www.youtube.com/embed/XRYL5spvEcI'),(32,'/posters/32.jpg','Jurassic World',2,'Veintidós años después de lo ocurrido en Jurassic Park, la isla Nublar ha sido transformada en un enorme parque temático, Jurassic Wold, con versiones «domesticadas» de algunos de los dinosaurios más conocidos. Cuando todo parece ir sobre ruedas y ser el negocio del siglo, un nuevo dinosaurio de especie desconocida, pues ha sido creado manipulando genéticamente su ADN, y que resulta ser mucho más inteligente de lo que se pensaba, se escapa de su recinto y comienza a causar estragos entre los visitantes del Parque.',NULL,NULL),(33,'/posters/33.jpg','Soy leyenda',2,'Años después de que una plaga mate a la mayoría de la humanidad y transforme al resto en monstruos, el único superviviente en la ciudad de Nueva York lucha valientemente para encontrar una cura.',NULL,'https://www.youtube.com/embed/dtKMEAXyPkg'),(34,'/posters/34.jpg','El primer hombre en la luna',2,'Cuenta la historia de la misión de la NASA que llevó al primer hombre a la luna, centrada en Neil Armstrong (interpretado por Ryan Gosling) y el periodo comprendido entre los años 1961 y 1969. Un relato en primera persona, basado en la novela de James R. Hansen, que explora el sacrificio y el precio que representó, tanto para Armstrong como para Estados Unidos, una de las misiones más peligrosas de la historia.',NULL,NULL),(35,'/posters/35.jpg','Titanes del pacífico - La insurrección',2,'Han pasado 10 años tras la primera invasión que sufrió la humanidad, pero la lucha aún no ha terminado. El planeta vuelve a ser asediado por los Kaiju, una raza de alienígenas colosales, que emergen desde un portal interdimensional con el objetivo de destruir a la raza humana. Ante esta nueva amenaza, los Jaegers, robots gigantes de guerra pilotados por dos personas para sobrellevar la inmensa carga neuronal que conlleva manipularlos, ya no están a la altura de lo que se les viene encima. Será entonces cuando los supervivientes de la primera invasión, además de nuevos personajes como el hijo de Pentecost, tendrán que idear la manera de sorprender al enorme enemigo, apostando por nuevas estrategias defensivas y de ataque. Con la Tierra en ruinas e intentando reconstruirse, esta nueva batalla puede ser decisiva para el futuro.',NULL,NULL);
/*!40000 ALTER TABLE `catalogo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vistatrailer`
--

DROP TABLE IF EXISTS `vistatrailer`;
/*!50001 DROP VIEW IF EXISTS `vistatrailer`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vistatrailer` AS SELECT 
 1 AS `id`,
 1 AS `titulo`,
 1 AS `categoria`,
 1 AS `temporadas`,
 1 AS `reparto`,
 1 AS `generos`,
 1 AS `resumen`,
 1 AS `poster`,
 1 AS `trailer`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vistatrailer`
--

/*!50001 DROP VIEW IF EXISTS `vistatrailer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vistatrailer` AS select `t`.`idtrailers` AS `id`,`t`.`titulo` AS `titulo`,`c`.`categoria` AS `categoria`,`t`.`temporadas` AS `temporadas`,group_concat(distinct `a`.`nombreactor` separator ', ') AS `reparto`,group_concat(distinct `g`.`genero` separator ', ') AS `generos`,`t`.`resumen` AS `resumen`,`t`.`poster` AS `poster`,`t`.`trailer` AS `trailer` from (((((`catalogo` `t` join `reparto` `r` on((`t`.`idtrailers` = `r`.`idtrailer`))) join `actores` `a` on((`r`.`idactor` = `a`.`idactor`))) join `generotrailer` `tg` on((`t`.`idtrailers` = `tg`.`idtrailer`))) join `generos` `g` on((`tg`.`idgenero` = `g`.`idgenero`))) join `categorias` `c` on((`c`.`id` = `t`.`idcategoria`))) group by `t`.`idtrailers`,`t`.`titulo`,`t`.`resumen`,`t`.`trailer`,`t`.`poster`,`t`.`temporadas`,`c`.`categoria` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-29 11:02:02
