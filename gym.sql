-- MySQL dump 10.13  Distrib 5.7.16, for Linux (x86_64)
--
-- Host: localhost    Database: gym
-- ------------------------------------------------------
-- Server version	5.7.15-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `validations` varchar(20) NOT NULL DEFAULT 'VALID',
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `joined_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'mariokas','secret','VALID','Marius','Mariukas','marius@gmail.com','2016-10-06 12:47:08'),(2,'tamosius','nieko','VALID','Tomas','Mikoliunas','tomas@gmail.com','2016-10-06 13:28:35'),(3,'re','$2a$10$OQ.F5IAuMu173UVvpFK18.E0jeU44gS36IOOUfgtBbMjBZWtmXm52','VALID','Vitalija','Remeikaite','vitalija@gmail.com','2016-10-06 13:32:55');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bandom`
--

DROP TABLE IF EXISTS `bandom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bandom` (
  `id` int(11) DEFAULT NULL,
  `kitas` date DEFAULT NULL,
  `anas` date NOT NULL,
  `kaina` float(10,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bandom`
--

LOCK TABLES `bandom` WRITE;
/*!40000 ALTER TABLE `bandom` DISABLE KEYS */;
INSERT INTO `bandom` VALUES (1,'0000-00-00','0000-00-00',0.00),(1,NULL,'0000-00-00',0.00),(1,'0000-00-00','0000-00-00',0.00);
/*!40000 ALTER TABLE `bandom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_player`
--

DROP TABLE IF EXISTS `dim_player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_player` (
  `player_sk` int(11) NOT NULL,
  `player_name` varchar(50) NOT NULL,
  `player_surname` varchar(50) NOT NULL,
  PRIMARY KEY (`player_sk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_player`
--

LOCK TABLES `dim_player` WRITE;
/*!40000 ALTER TABLE `dim_player` DISABLE KEYS */;
INSERT INTO `dim_player` VALUES (1,'Ryan','Giggs'),(2,'Paul','Scholes'),(3,'Alan','Smith'),(4,'Daniel','Gabbidon'),(5,'Titus','Bramble'),(6,'Andrew','Johnson'),(7,'Clint','Hill'),(8,'Craig','Bellamy'),(9,'Damien','Duff'),(10,'David','Dunn'),(11,'Ricardo','Gardner'),(12,'Jussi','Jääskeläinen'),(13,'Aaron','Wilbraham'),(14,'Scott','Parker'),(15,'Shaun','Derry'),(16,'Zat','Knight'),(17,'Thierry','Henry'),(18,'Gareth','Barry'),(19,'Matthew','Upson'),(20,'Rory','Delap'),(21,'Robbie','Keane'),(22,'John','Terry'),(23,'Richard','Dunne'),(24,'Emile','Heskey'),(25,'Paul','Robinson'),(26,'Brad','Friedel'),(27,'Jamie','Carragher'),(28,'Danny','Murphy'),(29,'Steven','Gerrard'),(30,'Philip','Neville'),(31,'Shay','Given'),(32,'Mark','Schwarzer'),(33,'Kieron','Dyer'),(34,'Wes','Brown'),(35,'Aaron','Hughes'),(36,'Ledley','King'),(37,'Mark','Gower'),(38,'Wayne','Bridge'),(39,'Thomas','Sørensen'),(40,'Garry','Monk'),(41,'Jody','Craddock'),(42,'Paul','Robinson'),(43,'Tommy','Smith'),(44,'Rio','Ferdinand'),(45,'Frank','Lampard'),(46,'Stilian','Petrov'),(47,'Danny','Higginbotham'),(48,'Michael','Carrick'),(49,'Simon','Davies'),(50,'Adam','Drury'),(51,'Matthew','Etherington'),(52,'Jason','Roberts'),(53,'Patrick','Kenny'),(54,'Tim','Cahill'),(55,'Emmerson','Boyce'),(56,'Steven','Reid'),(57,'Jermaine','Pennant'),(58,'Fabio','Aurelio'),(59,'Heidar','Helguson'),(60,'John','O\'Shea'),(61,'Ashley','Cole'),(62,'Nicolas','Anelka'),(63,'Radek','Cerny'),(64,'Jay','Bothroyd'),(65,'Simon','Lappin'),(66,'Peter','Løvenkrands'),(67,'Rafael','van der Vaart'),(68,'Dirk','Kuyt'),(69,'Brett','Emerton'),(70,'Mahamadou','Diarra'),(71,'Owen','Hargreaves'),(72,'Landon','Donovan'),(73,'Craig','Gordon'),(74,'Dean','Whitehead'),(75,'Robert','Hulse'),(76,'Grant','Holt'),(77,'Nicky','Shorey'),(78,'Sylvain','Distin'),(79,'William','Gallas'),(80,'Djibril','Cissé'),(81,'Zdenek','Grygera'),(82,'Salif','Diao'),(83,'David','Pizarro'),(84,'Joleon','Lescott'),(85,'David','Vaughan'),(86,'Stephen','Hunt'),(87,'Phil','Jagielka'),(88,'Keith','Andrews'),(89,'Sam','Ricketts'),(90,'Fabricio','Coloccini'),(91,'Jermain','Defoe'),(92,'Roger','Johnson'),(93,'Gaël','Givet'),(94,'Leon','Osman'),(95,'James','Collins'),(96,'José','Reina'),(97,'Michael','Essien'),(98,'Dimitar','Berbatov'),(99,'Tomas','Rosicky'),(100,'Tony','Hibbert'),(101,'Glen','Johnson'),(102,'Ben','Foster'),(103,'Shaun','Maloney'),(104,'Stephen','Kelly'),(105,'Ivan','Klasnic'),(106,'Martin','Petrov'),(107,'Florent','Malouda'),(108,'Jermaine','Jenas'),(109,'Dickson','Etuhu'),(110,'Johnny','Heitinga'),(111,'Karl','Henry'),(112,'Darren','Bent'),(113,'Mark','Bunn'),(114,'Elliott','Ward'),(115,'Sotirios','Kyrgiakos'),(116,'José','Bosingwa'),(117,'Petr','Cech'),(118,'Michael','Williamson'),(119,'Billy','Jones'),(120,'Ricardo','Fuller'),(121,'Steve','Sidwell'),(122,'Wayne','Routledge'),(123,'Stewart','Downing'),(124,'Glenn','Whelan'),(125,'Robin','van Persie'),(126,'Didier','Drogba'),(127,'Robert','Huth'),(128,'Fitz','Hall'),(129,'Michael','Dawson'),(130,'Leighton','Baines'),(131,'Jerome','Thomas'),(132,'Jonathan','Walters'),(133,'Wayne','Rooney'),(134,'Andrey','Arshavin'),(135,'Stephen','Warnock'),(136,'Yossi','Benayoun'),(137,'Patrice','Evra'),(138,'Leroy','Lita'),(139,'Liam','Ridgewell'),(140,'Marc-Antoine','Fortuné'),(141,'Darren','Fletcher'),(142,'Fernando','Torres'),(143,'Albert','Crusat'),(144,'Danny','Pugh'),(145,'Nigel','Reo-Coker'),(146,'Andrew','Crofts'),(147,'Matthew','Kilgallon'),(148,'Kevin','Foley'),(149,'Nemanja','Vidic'),(150,'Kieran','Richardson'),(151,'Nigel','de Jong'),(152,'Tom','Huddlestone'),(153,'Leon','Britton'),(154,'James','Milner'),(155,'Darren','Pratley'),(156,'Leon','Barnett'),(157,'Andrew','Surman'),(158,'Brede','Hangeland'),(159,'Tim','Howard'),(160,'Danny','Graham'),(161,'Alan','Hutton'),(162,'Luke','Moore'),(163,'Steve','Gohouri'),(164,'Marouane','Chamakh'),(165,'Joe','Hart'),(166,'Michael','Turner'),(167,'David','Stockdale'),(168,'Thomas','Vermaelen'),(169,'Michael','Kightly'),(170,'Chris','Baird'),(171,'Leon','Best'),(172,'Ben','Watson'),(173,'Morten Gamst','Pedersen'),(174,'Paul','Scharner'),(175,'Ronnie','Stam'),(176,'David','Edwards'),(177,'Paulo','Ferreira'),(178,'Philippe','Senderos'),(179,'Per','Mertesacker'),(180,'Gaël','Clichy'),(181,'Aaron','Lennon'),(182,'Carlos','Cuéllar'),(183,'Vincent','Kompany'),(184,'Emmanuel','Adebayor'),(185,'Ross','Turnbull'),(186,'David','Fox'),(187,'Diniyar','Bilyaletdinov'),(188,'Stephen','Dobbie'),(189,'Phillip','Bardsley'),(190,'James','Morrison'),(191,'Zak','Whitbread'),(192,'Marton','Fülöp'),(193,'Kenwyne','Jones'),(194,'Chris','Eagles'),(195,'Zoltán','Gera'),(196,'Ákos','Buzsáky'),(197,'','Alex'),(198,'Charles','N\'Zogbia'),(199,'Hatem','Ben Arfa'),(200,'Cameron','Jerome'),(201,'Matthew','Jarvis'),(202,'Richard','Stearman'),(203,'James','Perch'),(204,'Steven','Fletcher'),(205,'Christophe','Berra'),(206,'Nedum','Onuoha'),(207,'George','Elokobi'),(208,'Marc','Tierney'),(209,'Chris','Brunt'),(210,'Ashley','Williams'),(211,'Johan','Djourou'),(212,'Scott','Dann'),(213,'Jamie','Mackie'),(214,'Jason','Puncheon'),(215,'John','Ruddy'),(216,'Gareth','McAuley'),(217,'Simeon','Jackson'),(218,'Russell','Martin'),(219,'David','Jones'),(220,'Sylvain','Ebanks-Blake'),(221,'Bradley','Johnson'),(222,'Simon','Vukcevic'),(223,'DJ','Campbell'),(224,'Scott','Sinclair'),(225,'Andy','Wilkinson'),(226,'Ryan','Nelsen'),(227,'Taye','Taiwo'),(228,'James','Vaughan'),(229,'David','Wheater'),(230,'Adam','Johnson'),(231,'Wayne','Hennessey'),(232,'Graham','Dorrans'),(233,'Charlie','Adam'),(234,'Clint','Dempsey'),(235,'Roman','Pavlyuchenko'),(236,'Carlos','Tévez'),(237,'Christopher','Samba'),(238,'Kevin','Doyle'),(239,'Shane','Long'),(240,'Theo','Walcott'),(241,'Tim','Krul'),(242,'Stephen','Ireland'),(243,'Armand','Traore'),(244,'Micah','Richards'),(245,'Keiren','Westwood'),(246,'Andrea','Orlandi'),(247,'David','Silva'),(248,'Valencia','Antonio'),(249,'Jonás','Gutiérrez'),(250,'Nathan','Dyer'),(251,'Alexandre','Song'),(252,'Daniel','Agger'),(253,'Mauro','Doni'),(254,'Martin','Skrtel'),(255,'Peter','Odemwingie'),(256,'','Anderson'),(257,'Yohan','Cabaye'),(258,'Gabriel','Tamas'),(259,'Simon','Cox'),(260,'Gabriel','Agbonlahor'),(261,'Fabrice','Muamba'),(262,'Matthew','Connolly'),(263,'Niko','Kranjcar'),(264,'Benoit','Assou-Ekotto'),(265,'Mohamed','Diamé'),(266,'David','Goodwillie'),(267,'Grétar','Steinsson'),(268,'Tiote','Cheik'),(269,'Marcel','Gecov'),(270,'Lee','Cattermole'),(271,'Craig','Gardner'),(272,'Ali','Al-Habsi'),(273,'John Obi','Mikel'),(274,'Wes','Hoolahan'),(275,'Fraizer','Campbell'),(276,'Vassiriki','Abou Diaby'),(277,'Jamie','O\'Hara'),(278,'Victor','Anichebe'),(279,'Jermaine','Beckford'),(280,'Asamoah','Gyan'),(281,'Jean','Beausejour'),(282,'Maynor','Figueroa'),(283,'Wilson','Palacios'),(284,'Stéphane','Sessegnon'),(285,'Anthony','Modeste'),(286,'Gareth','Bale'),(287,'Luka','Modric'),(288,'Bryan','Ruiz'),(289,'Gonzalo','Jara'),(290,'Hugo','Rodallega'),(291,'Ahmed','Elmohamady'),(292,'Salomon','Kalou'),(293,'Sergio','Agüero'),(294,'Henrique','Hilário'),(295,'Danny','Guthrie'),(296,'Jonny','Evans'),(297,'Younes','Kaboul'),(298,'Bacary','Sagna'),(299,'Ryan','Shawcross'),(300,'Sylvain','Marveaux'),(301,'Dorus','de Vries'),(302,'Danny','Rose'),(303,'Jonathan','Howson'),(304,'David','Ngog'),(305,'Gabriel','Obertan'),(306,'Vedran','Corluka'),(307,'Moussa','Dembélé'),(308,'Royston','Drenthe'),(309,'Michel','Vorm'),(310,'Kemy','Agustien'),(311,'Luis','Suárez'),(312,'Pavel','Pogrebnyak'),(313,'Anders','Lindegaard'),(314,'Adel','Taarabt'),(315,'Chris','Martin'),(316,'Youssuf','Mulumbu'),(317,'Andy','Carroll'),(318,'Ryan','Bertrand'),(319,'Steve','Morison'),(320,'Eggert Gunnthór','Jónsson'),(321,'Giovani','dos Santos'),(322,'Asmir','Begovic'),(323,'Dan','Gosling'),(324,'Sam','Vokes'),(325,'Anthony','Pilkington'),(326,'Nick','Blackman'),(327,'Joe','Allen'),(328,'Henri','Lansbury'),(329,'Stephen','Ward'),(330,'Adam','Hammill'),(331,'Danny','Simpson'),(332,'Daniel','Sturridge'),(333,'Branislav','Ivanovic'),(334,'Marouane','Fellaini'),(335,'Nenad','Milijas'),(336,'Luiz','David'),(337,'Brad','Guzan'),(338,'Aaron','Ramsey'),(339,'Fabian','Delph'),(340,'Kieran','Gibbs'),(341,'Sam','Hutchinson'),(342,'Mario','Balotelli'),(343,'Alexander','Kacaniklic'),(344,'Edin','Dzeko'),(345,'Aleksandar','Kolarov'),(346,'Papiss Demba','Cissé'),(347,'Angel','Rangel'),(348,'Javier','Hernández'),(349,'Antolin','Alcaraz'),(350,'Tom','Cleverley'),(351,'Juan','Mata'),(352,'Adlène','Guédioura'),(353,'Eric','Lichaj'),(354,'Ryan','Shotton'),(355,'Adam','Bogdan'),(356,'Orlando','Sá'),(357,'Ritchie','de Laet'),(358,'Neil','Taylor'),(359,'Demba','Ba'),(360,'Victor','Moses'),(361,'Steven','N\'Zonzi'),(362,'Jack','Rodwell'),(363,'Chris','Herd'),(364,'Kyle','Naughton'),(365,'Franco','Di Santo'),(366,'Junior','Hoilett'),(367,'Jake','Livermore'),(368,'Danny','Welbeck'),(369,'Jonjo','Shelvey'),(370,'Declan','Rudd'),(371,'James','McArthur'),(372,'James','McCarthy'),(373,'Nathan','Delfouneso'),(374,'Laurent','Koscielny'),(375,'Federico','Bessone'),(376,'Ben','Amos'),(377,'Marc','Albrighton'),(378,'David','De Gea'),(379,'Nathan','Baker'),(380,'David','Meyler'),(381,'Adam','Smith'),(382,'Conor','Sammon'),(383,'Gylfi','Sigurdsson'),(384,'Jay','Spearing'),(385,'Jose','Baxter'),(386,'Davide','Santon'),(387,'Chris','Smalling'),(388,'Francis','Coquelin'),(389,'Radosav','Petrovic'),(390,'Jordan','Henderson'),(391,'Somen','Tchoyi'),(392,'Santos','André'),(393,'Magaye','Gueye'),(394,'Kyle','Walker'),(395,'Jack','Colback'),(396,'Denis','Stracqualursi'),(397,'Martin','Kelly'),(398,'Ciaran','Clark'),(399,'Mauro','Formica'),(400,'Barry','Bannan'),(401,'Connor','Wickham'),(402,'Haris','Vuckic'),(403,'Gael','Kakuta'),(404,'Wojciech','Szczesny'),(405,'Seamus','Coleman'),(406,'Craig','Dawson'),(407,'Apostolos','Vellios'),(408,'Callum','McManaman'),(409,'Shane','Duffy'),(410,'Shane','Ferguson'),(411,'Nikica','Jelavic'),(412,'James','McClean'),(413,'Stefan','Savic'),(414,'Romelu','Lukaku'),(415,'Simon','Mignolet'),(416,'Alejandro','Faurlin'),(417,'Steven','Caulker'),(418,'Ashley','Richards'),(419,'Paul','Pogba'),(420,'Patrick','van Aanholt'),(421,'Daniel','Ayala'),(422,'Phil','Jones'),(423,'Gary','Gardner'),(424,'Oriol','Romeu'),(425,'Sebastián','Coates'),(426,'David','Davis'),(427,'Ryan','Noble'),(428,'Conor','McAleny'),(429,'Dedryck','Boyata'),(430,'Carl','Jenkinson'),(431,'Andreas','Weimann'),(432,'Pajtim','Kasami'),(433,'Alex','Oxlade-Chamberlain'),(434,'Marcos','Alonso'),(435,'Tim','Ream'),(436,'Grant','Hanley'),(437,'Rubén','Rochina'),(438,'Ross','Barkley'),(439,'Ignasi','Miquel'),(440,'William','Keane'),(441,'John','Flanagan'),(442,'Ryo','Miyaichi'),(443,'Jason','Lowe'),(444,'Abdul','Razak'),(445,'Cameron','Lancaster'),(446,'Joshua','Vela'),(447,'Adam','Henley'),(448,'Raheem','Sterling'),(449,'Kerim','Frei'),(450,'Anthony','Forde'),(451,'Joe','Riley'),(452,'Ezekiel','Fryers'),(512,'Marc','Wilson'),(513,'Jonathan','Woodgate'),(514,'Shaun','Wright-Phillips'),(515,'Nicholas','Yennaris'),(516,'Ashley','Young'),(517,'Pablo','Zabaleta'),(518,'Ronald','Zubar');
/*!40000 ALTER TABLE `dim_player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_attendance`
--

DROP TABLE IF EXISTS `member_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_attendance` (
  `id` int(11) NOT NULL,
  `visited_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `fk_last_visited` (`id`),
  CONSTRAINT `fk_last_visited` FOREIGN KEY (`id`) REFERENCES `members` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_attendance`
--

LOCK TABLES `member_attendance` WRITE;
/*!40000 ALTER TABLE `member_attendance` DISABLE KEYS */;
INSERT INTO `member_attendance` VALUES (1081,'2016-07-27 15:08:09'),(1080,'2016-07-27 15:08:16'),(1081,'2016-08-02 21:19:12'),(1080,'2016-08-02 21:25:00'),(1082,'2016-08-02 21:25:55'),(1078,'2016-08-02 23:02:33'),(1082,'2016-08-03 19:27:22'),(1083,'2016-08-03 21:30:37'),(1085,'2016-08-03 21:44:08'),(1086,'2016-08-03 21:44:35'),(1078,'2016-08-04 18:23:41'),(1082,'2016-08-04 21:46:12'),(1081,'2016-08-05 12:48:51'),(1082,'2016-08-10 19:55:37'),(1080,'2016-08-12 16:53:47'),(1088,'2016-08-13 10:55:28'),(1089,'2016-08-13 11:41:24'),(1090,'2016-08-13 23:37:41'),(1098,'2016-08-16 11:20:17'),(1085,'2016-08-21 10:40:45'),(1082,'2016-08-31 21:58:22'),(1083,'2016-08-31 21:58:40'),(1078,'2016-08-31 21:58:53'),(1083,'2016-10-01 18:43:36'),(1083,'2016-10-21 20:10:05'),(1099,'2016-10-30 21:26:08'),(1101,'2016-10-30 21:33:33'),(1102,'2016-10-30 21:43:48'),(1103,'2016-10-31 16:53:40'),(1104,'2016-10-31 17:13:07'),(1106,'2016-10-31 18:12:51'),(1107,'2016-10-31 18:21:27'),(1108,'2016-10-31 18:41:07'),(1109,'2016-11-01 21:55:32'),(1110,'2016-11-01 21:59:06'),(1111,'2016-11-01 22:00:56'),(1112,'2016-11-01 22:04:38'),(1113,'2016-11-01 22:27:04'),(1114,'2016-11-01 22:28:39');
/*!40000 ALTER TABLE `member_attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(40) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `ph_number` varchar(40) DEFAULT 'N / A',
  `address` varchar(100) DEFAULT 'N / A',
  `email` varchar(40) DEFAULT 'N / A',
  `date_of_birth` varchar(20) DEFAULT 'N / A',
  `date_joined` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `image` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1116 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1078,'Tomas','Mikoliunas','0870533905','Breffni','t.mikoliunas@gmail.com','18-06-1978','2016-06-01 13:23:34',''),(1080,'Alan','Smith','087342342','Dublin','tamosius5@yahoo.com','12-12-1991','2016-06-03 13:23:34',''),(1081,'Wayne','Rooney','004434534463','Manchester','D14123810@mydit.ie','14-07-1987','2016-06-05 13:23:34',''),(1082,'Vitalija','Remeikaite','N / A','N / A','N / A','01-08-1989','2016-08-02 21:25:55',''),(1083,'Marius','Mikoliunas','N / A','N / A','N / A','N / A','2016-08-03 21:30:37',''),(1085,'Connor','Mcgregor','N / A','N / A','N / A','N / A','2016-08-03 21:44:08',''),(1086,'Nate','Diaz','N / A','N / A','N / A','N / A','2016-08-03 21:44:35',''),(1088,'Chuck','Liddell','N / A','N / A','N / A','N / A','2016-08-13 10:55:28',''),(1089,'Alan','Touring','N / A','N / A','N / A','N / A','2016-08-13 11:41:24',''),(1090,'New','One','N / A','N / A','N / A','N / A','2016-08-13 23:37:41',''),(1098,'Naujas','Memberiukas','N / A','N / A','N / A','N / A','2016-08-16 11:20:16',''),(1099,'Torres','Chujores','N / A','N / A','N / A','N / A','2016-10-30 21:26:08',''),(1101,'Lora','Lora','N / A','N / A','N / A','N / A','2016-10-30 21:33:33',''),(1102,'Fu','Fu','N / A','N / A','N / A','N / A','2016-10-30 21:43:48',''),(1103,'Naujas','Irka','N / A','N / A','N / A','N / A','2016-10-31 16:53:40',''),(1104,'Adinam','Vel','N / A','N / A','N / A','N / A','2016-10-31 17:13:07',''),(1106,'Asdf','Fsdf','N / A','N / A','N / A','N / A','2016-10-31 18:12:51',''),(1107,'Aaa','Sss','N / A','N / A','N / A','N / A','2016-10-31 18:21:27',''),(1108,'Dd','Ff','N / A','N / A','N / A','N / A','2016-10-31 18:41:06',''),(1109,'Tomasas','Daro','N / A','N / A','N / A','N / A','2016-11-01 21:55:32',NULL),(1110,'Tomasas','Daro','N / A','N / A','N / A','N / A','2016-11-01 21:59:06',NULL),(1111,'Dfg','Fdgg','N / A','N / A','N / A','N / A','2016-11-01 22:00:56',NULL),(1112,'Tomasas','Daro','N / A','N / A','N / A','N / A','2016-11-01 22:04:38',NULL),(1113,'Ffff','Ffffff','N / A','N / A','N / A','N / A','2016-11-01 22:27:04',NULL),(1114,'Dddd','Ddddd','N / A','N / A','N / A','N / A','2016-11-01 22:28:39',NULL),(1115,'t','m','N / A','N / A','N / A','N / A','2016-11-01 22:33:31',NULL);
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membership_status`
--

DROP TABLE IF EXISTS `membership_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membership_status` (
  `id` int(11) NOT NULL,
  `updated_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `membership_from` varchar(40) DEFAULT 'N / A',
  `membership_to` varchar(40) DEFAULT 'N / A',
  `paid` float(10,2) NOT NULL DEFAULT '0.00',
  `programme` varchar(50) NOT NULL,
  `programme_state` varchar(50) NOT NULL,
  `update_description` text NOT NULL,
  `programme_booked` int(11) NOT NULL,
  KEY `fk_last_updated` (`id`),
  CONSTRAINT `fk_last_updated` FOREIGN KEY (`id`) REFERENCES `members` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membership_status`
--

LOCK TABLES `membership_status` WRITE;
/*!40000 ALTER TABLE `membership_status` DISABLE KEYS */;
INSERT INTO `membership_status` VALUES (1078,'2016-06-01 18:28:22','17-06-2016','05-09-2016',75.00,'\'Pay as You Go\'','inactive','',0),(1080,'2016-06-02 18:28:22','04-06-2016','04-07-2016',50.00,'\'Pay as You Go\'','inactive','',0),(1081,'2016-06-17 18:28:22','15-05-2016','05-07-2016',60.00,'\'Pay as You Go\'','inactive','',0),(1080,'2016-07-27 15:06:24','27-07-2016, Wednesday','27-08-2016, Saturday',50.00,'\'Pay as You Go\'','inactive','',0),(1082,'2016-08-02 21:25:55','no membership','no membership',0.00,'\'Pay as You Go\'','','',0),(1082,'2016-08-03 19:24:29','03-08-2016','03-02-2017',55.99,'\'6 Months Mbsh\'','','',0),(1080,'2016-08-03 19:50:39','03-08-2016','03-09-2016',50.00,'\'Pay as You Go\'','inactive','',0),(1083,'2016-08-03 21:30:37','no membership','no membership',0.00,'\'Pay as You Go\'','','',0),(1085,'2016-08-03 21:44:08','no membership','no membership',0.00,'\'Pay as You Go\'','inactive','',0),(1086,'2016-08-03 21:44:35','no membership','no membership',0.00,'\'1 Month Mbsh\'','','',0),(1086,'2016-08-03 21:45:26','03-08-2016','03-09-2016',0.00,'\'1 Month Mbsh\'','','',0),(1078,'2016-08-04 15:00:35','04-08-2016','04-09-2016',75.00,'\'1 Month Mbsh\'','inactive','',0),(1081,'2016-08-10 20:34:46','12-07-2016','13-08-2016',60.00,'\'32 days Mbsh\'','active','The membership/programme has been updated.\n',1),(1078,'2016-08-10 21:01:10','04-08-2016','11-08-2016',75.00,'\'7 days Mbsh\'','inactive','The membership/programme has been updated.\n',1),(1078,'2016-08-12 11:48:04','no membership','no membership',0.00,'\'Pay as You Go\'','active','The membership/programme has been updated.\n',1),(1080,'2016-08-12 13:45:22','03-08-2016','14-08-2016',50.00,'\'11 days Mbsh\'','active','The membership/programme has been updated.\n',1),(1085,'2016-08-12 15:00:46','12-08-2016','19-08-2016',10.00,'\'7 days Mbsh\'','active','The membership/programme has been updated.\n',1),(1088,'2016-08-13 10:55:28','no membership','no membership',0.00,'\'Pay as You Go\'','inactive','Starded \'Pay as You Go\' Programme',0),(1088,'2016-08-13 11:38:29','13-08-2016','13-09-2016',29.00,'\'1 Month Mbsh\'','active','The membership/programme has been updated.\n',1),(1089,'2016-08-13 11:41:24','no membership','no membership',0.00,'\'Pay as You Go\'','inactive','Starded \'Pay as You Go\' Programme',1),(1089,'2016-08-13 11:44:04','13-08-2016','13-09-2016',0.00,'\'1 Month Mbsh\'','inactive','The membership/programme has been updated.\n',1),(1089,'2016-08-13 11:45:06','no membership','no membership',0.00,'\'Pay as You Go\'','inactive','The membership/programme has been updated.\n',1),(1089,'2016-08-13 11:54:28','13-08-2016','13-11-2016',0.00,'\'3 Month Mbsh\'','active','The membership/programme has been updated.\n',1),(1090,'2016-08-13 23:37:41','no membership','no membership',0.00,'\'Pay as You Go\'','active','Starded \'Pay as You Go\' Programme',1),(1098,'2016-08-16 11:20:16','no membership','no membership',0.00,'\'Pay as You Go\'','active','Starded \'Pay as You Go\' Programme',1),(1078,'2016-10-25 21:14:35','no membership','no membership',0.00,'\'Pay as You Go\'','active','The email has been changed.\n',0),(1080,'2016-10-25 21:43:33','03-08-2016','14-08-2016',50.00,'\'11 days Mbsh\'','active','The email has been changed.\n',0),(1081,'2016-10-25 22:31:20','12-07-2016','13-08-2016',60.00,'\'32 days Mbsh\'','active','The email has been changed.\n',0),(1099,'2016-10-30 21:26:08','no membership','no membership',0.00,'\'Pay as You Go\'','active','Starded \'Pay as You Go\' Programme',1),(1101,'2016-10-30 21:33:33','no membership','no membership',0.00,'\'Pay as You Go\'','active','Starded \'Pay as You Go\' Programme',1),(1102,'2016-10-30 21:43:48','no membership','no membership',0.00,'\'Pay as You Go\'','active','Starded \'Pay as You Go\' Programme',1),(1082,'2016-10-31 14:48:25','03-08-2016','03-02-2017',55.99,'\'6 Months Mbsh\'','active','The Date of Birth has been changed.\n',0),(1103,'2016-10-31 16:53:40','no membership','no membership',0.00,'\'Pay as You Go\'','active','Starded \'Pay as You Go\' Programme',1),(1104,'2016-10-31 17:13:07','no membership','no membership',0.00,'\'Pay as You Go\'','active','Starded \'Pay as You Go\' Programme',1),(1106,'2016-10-31 18:12:51','no membership','no membership',0.00,'\'Pay as You Go\'','active','Starded \'Pay as You Go\' Programme',1),(1107,'2016-10-31 18:21:27','no membership','no membership',0.00,'\'Pay as You Go\'','active','Starded \'Pay as You Go\' Programme',1),(1108,'2016-10-31 18:41:07','no membership','no membership',0.00,'\'Pay as You Go\'','active','Starded \'Pay as You Go\' Programme',1),(1109,'2016-11-01 21:55:32','no membership','no membership',23.00,'\'Pay as You Go\'','active','Starded \'Pay as You Go\' Programme',1),(1110,'2016-11-01 21:59:06','no membership','no membership',34.00,'\'Pay as You Go\'','active','Starded \'Pay as You Go\' Programme',1),(1111,'2016-11-01 22:00:56','no membership','no membership',4.00,'\'Pay as You Go\'','active','Starded \'Pay as You Go\' Programme',1),(1112,'2016-11-01 22:04:38','no membership','no membership',4.00,'\'Pay as You Go\'','active','Starded \'Pay as You Go\' Programme',1),(1113,'2016-11-01 22:27:04','no membership','no membership',4.00,'\'Pay as You Go\'','active','Starded \'Pay as You Go\' Programme',1),(1114,'2016-11-01 22:28:39','no membership','no membership',3.00,'\'Pay as You Go\'','active','Starded \'Pay as You Go\' Programme',1);
/*!40000 ALTER TABLE `membership_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_sales`
--

DROP TABLE IF EXISTS `products_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_sales` (
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `paid` float(8,2) NOT NULL,
  `member_id` int(11) NOT NULL,
  `purchase_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_sales`
--

LOCK TABLES `products_sales` WRITE;
/*!40000 ALTER TABLE `products_sales` DISABLE KEYS */;
INSERT INTO `products_sales` VALUES (1,1,50.00,1078,'2016-08-09 19:19:10'),(1,1,45.00,1083,'0000-00-00 00:00:00'),(2,1,30.00,1078,'0000-00-00 00:00:00'),(3,1,10.00,1078,'0000-00-00 00:00:00'),(4,1,10.00,1078,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `products_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programmes_prices`
--

DROP TABLE IF EXISTS `programmes_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `programmes_prices` (
  `programmeId` int(11) DEFAULT NULL,
  `programme_name` varchar(100) NOT NULL,
  `programme_price` float(8,2) NOT NULL,
  `programme_discount` float(8,2) NOT NULL,
  `programme_discount_percentage` float(8,2) NOT NULL,
  `programme_promotion_start` varchar(50) NOT NULL DEFAULT 'N / A',
  `programme_promotion_end` varchar(50) NOT NULL DEFAULT 'N / A',
  `programme_promotion_description` varchar(1000) NOT NULL DEFAULT 'N / A',
  `updated_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `final_price` float(8,2) NOT NULL,
  `programme_description` varchar(1000) NOT NULL DEFAULT 'N / A'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programmes_prices`
--

LOCK TABLES `programmes_prices` WRITE;
/*!40000 ALTER TABLE `programmes_prices` DISABLE KEYS */;
INSERT INTO `programmes_prices` VALUES (1,'1 Month Membership',80.00,10.00,12.50,'04-10-2016','04-11-2016','Made a discount for 10 euro, available for 1 month.','2016-10-04 19:37:29',70.00,'1 Month Membership.'),(2,'3 Months Membership',180.00,20.00,11.10,'04-10-2016','04-11-2016','Made a discount for 20 euro, available for 1 month.','2016-10-04 19:38:09',160.00,'3 Months Membership.'),(3,'6 Months Membership',320.00,25.00,7.80,'04-10-2016','04-11-2016','Made a discount for 25 euro, available for 1 month.','2016-10-04 19:38:36',295.00,'6 Months Membership.'),(4,'12 Months Membership',420.00,30.00,7.10,'04-10-2016','04-11-2016','Made a discount for 30 euro, available for 1 month.','2016-10-04 19:39:08',390.00,'12 Months Membership.'),(5,'Pay as You Go',10.00,2.00,20.00,'04-10-2016','04-11-2016','Made a discount for 2 euro, available for 1 month.','2016-10-04 19:39:46',8.00,'Pay as You Go.');
/*!40000 ALTER TABLE `programmes_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_bandom`
--

DROP TABLE IF EXISTS `time_bandom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_bandom` (
  `pirmas` varchar(40) NOT NULL,
  `antras` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_bandom`
--

LOCK TABLES `time_bandom` WRITE;
/*!40000 ALTER TABLE `time_bandom` DISABLE KEYS */;
INSERT INTO `time_bandom` VALUES ('01-02-2012','01-02-2012 13:12:25'),('',''),('03-02-2012','03-02-2012 15:12:23'),('06-02-2012','03-02-2012 16:25:15'),('30-04-2016','30-04-2016 15:15:25'),('01-05-2016','01-05-2016 15:16:25'),('01-05-2016','01-05-2016 15:16:27'),('01-05-2016','01-05-2016 15:16:26');
/*!40000 ALTER TABLE `time_bandom` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-02 13:08:22
