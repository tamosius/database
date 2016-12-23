-- MySQL dump 10.13  Distrib 5.6.32, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: gym
-- ------------------------------------------------------
-- Server version	5.6.32-1+deb.sury.org~xenial+0.1

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
  `first` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bandom`
--

LOCK TABLES `bandom` WRITE;
/*!40000 ALTER TABLE `bandom` DISABLE KEYS */;
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
INSERT INTO `member_attendance` VALUES (1081,'2016-07-27 15:08:09'),(1080,'2016-07-27 15:08:16'),(1081,'2016-08-02 21:19:12'),(1080,'2016-08-02 21:25:00'),(1082,'2016-08-02 21:25:55'),(1078,'2016-08-02 23:02:33'),(1082,'2016-08-03 19:27:22'),(1083,'2016-08-03 21:30:37'),(1085,'2016-08-03 21:44:08'),(1086,'2016-08-03 21:44:35'),(1078,'2016-08-04 18:23:41'),(1082,'2016-08-04 21:46:12'),(1081,'2016-08-05 12:48:51'),(1082,'2016-08-10 19:55:37'),(1080,'2016-08-12 16:53:47'),(1088,'2016-08-13 10:55:28'),(1089,'2016-08-13 11:41:24'),(1085,'2016-08-21 10:40:45'),(1082,'2016-08-31 21:58:22'),(1083,'2016-08-31 21:58:40'),(1078,'2016-08-31 21:58:53'),(1083,'2016-10-01 18:43:36'),(1083,'2016-10-21 20:10:05'),(1147,'2016-11-12 18:29:08'),(1173,'2016-11-12 21:39:19'),(1174,'2016-11-13 13:45:04'),(1176,'2016-11-13 13:45:43'),(1078,'2016-11-14 21:41:19'),(1178,'2016-11-27 21:17:08'),(1085,'2016-11-27 23:12:42'),(1082,'2016-12-12 10:37:34'),(1082,'2016-12-12 10:37:52'),(1088,'2016-12-12 10:43:47'),(1219,'2016-12-16 13:36:41'),(1220,'2016-12-16 13:39:33'),(1221,'2016-12-16 13:41:10'),(1222,'2016-12-16 13:42:44'),(1223,'2016-12-16 13:44:39'),(1224,'2016-12-16 13:52:33'),(1225,'2016-12-16 21:39:44'),(1226,'2016-12-16 21:40:25'),(1227,'2016-12-16 21:41:43'),(1228,'2016-12-16 21:42:42'),(1229,'2016-12-17 16:35:33'),(1230,'2016-12-17 16:37:13'),(1231,'2016-12-17 16:40:10'),(1232,'2016-12-17 16:41:41'),(1233,'2016-12-17 16:42:49'),(1234,'2016-12-17 16:43:59'),(1235,'2016-12-17 16:45:07'),(1236,'2016-12-17 16:46:51'),(1237,'2016-12-17 16:49:31'),(1238,'2016-12-17 16:51:05'),(1239,'2016-12-17 16:53:45'),(1240,'2016-12-17 16:54:42'),(1241,'2016-12-17 16:55:38'),(1242,'2016-12-17 16:57:06'),(1243,'2016-12-17 16:58:04'),(1244,'2016-12-17 16:59:08'),(1089,'2016-12-17 19:25:40'),(1081,'2016-12-18 13:05:53'),(1078,'2016-12-18 13:06:19'),(1256,'2016-12-18 16:59:39'),(1240,'2016-12-18 17:04:54'),(1222,'2016-12-18 17:05:17'),(1256,'2016-12-18 17:20:18'),(1258,'2016-12-18 17:31:01'),(1259,'2016-12-18 17:38:31'),(1238,'2016-12-18 17:39:23'),(1259,'2016-12-19 16:53:44'),(1259,'2016-12-19 16:54:55'),(1259,'2016-12-19 16:55:58'),(1259,'2016-12-19 16:56:35'),(1259,'2016-12-19 16:57:46'),(1259,'2016-12-19 16:58:07'),(1259,'2016-12-19 16:59:40'),(1259,'2016-12-19 17:00:58'),(1259,'2016-12-19 17:01:26'),(1259,'2016-12-19 17:01:47'),(1259,'2016-12-19 17:11:30'),(1078,'2016-12-20 13:12:40'),(1238,'2016-12-20 14:13:57'),(1260,'2016-12-20 15:25:56'),(1261,'2016-12-20 15:26:26'),(1262,'2016-12-20 15:27:49'),(1263,'2016-12-20 15:28:54'),(1264,'2016-12-20 15:30:14'),(1265,'2016-12-20 15:31:17'),(1266,'2016-12-20 15:32:06'),(1267,'2016-12-20 15:32:55'),(1268,'2016-12-20 15:34:01'),(1269,'2016-12-20 15:34:53'),(1270,'2016-12-20 15:36:22'),(1271,'2016-12-20 15:37:25'),(1272,'2016-12-20 15:38:26'),(1078,'2016-12-21 09:41:22'),(1080,'2016-12-21 13:00:25'),(1259,'2016-12-21 13:53:31'),(1238,'2016-12-21 13:55:42'),(1240,'2016-12-21 13:59:24'),(1082,'2016-12-21 14:01:46'),(1086,'2016-12-21 16:29:09'),(1174,'2016-12-21 16:31:01'),(1085,'2016-12-21 17:14:53'),(1273,'2016-12-21 22:20:05'),(1274,'2016-12-21 22:21:24'),(1275,'2016-12-21 22:23:03'),(1276,'2016-12-21 22:24:22'),(1277,'2016-12-21 22:25:12'),(1278,'2016-12-21 22:25:57'),(1279,'2016-12-21 22:26:53'),(1280,'2016-12-21 22:27:56'),(1281,'2016-12-21 22:28:40'),(1282,'2016-12-21 22:30:00'),(1283,'2016-12-21 22:31:37'),(1284,'2016-12-21 22:32:26'),(1285,'2016-12-21 22:33:20'),(1286,'2016-12-21 22:34:13'),(1287,'2016-12-21 22:35:55'),(1288,'2016-12-21 22:36:43'),(1289,'2016-12-22 10:26:10'),(1290,'2016-12-22 10:31:14'),(1291,'2016-12-22 10:32:31'),(1292,'2016-12-22 10:33:58'),(1293,'2016-12-22 10:35:09'),(1294,'2016-12-22 10:35:58'),(1295,'2016-12-22 10:37:34'),(1296,'2016-12-22 10:38:28'),(1297,'2016-12-22 10:39:32'),(1298,'2016-12-22 10:40:20'),(1299,'2016-12-22 10:41:39'),(1300,'2016-12-22 10:43:05'),(1301,'2016-12-22 10:44:01'),(1302,'2016-12-22 10:44:59'),(1303,'2016-12-22 10:45:47'),(1304,'2016-12-22 10:47:21'),(1305,'2016-12-22 10:48:07'),(1306,'2016-12-22 10:49:05'),(1307,'2016-12-22 10:49:50'),(1308,'2016-12-22 10:50:37'),(1309,'2016-12-22 11:22:04'),(1078,'2016-12-22 18:47:26'),(1089,'2016-12-22 18:47:38'),(1310,'2016-12-22 19:02:50'),(1312,'2016-12-22 19:04:55'),(1283,'2016-12-22 20:07:11');
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
  `image` mediumblob,
  `password` varchar(50) NOT NULL,
  `image_path` varchar(50) NOT NULL DEFAULT 'N / A',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1313 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1078,'Tomas','Mikoliunas','0870533905','Breffni','t.mikoliunas@gmail.com','N / A','2016-06-01 13:23:34','','','1078.jpg'),(1080,'Alan','Smith','087342342','Dublin','tamosius5@yahoo.com','12-12-1991','2016-06-03 13:23:34','','','1080.jpg'),(1081,'Wayne','Rooney','004434534463','Manchester','D14123810@mydit.ie','14-07-1987','2016-06-05 13:23:34','','','1081.jpg'),(1082,'Vitalija','Remeikaite','N / A','N / A','t.mikoliunas@gmail.com','01-08-1989','2016-08-02 21:25:55','','','1082.jpg'),(1083,'Marius','Mikoliunas','N / A','N / A','N / A','N / A','2016-08-03 21:30:37','','','no_photo.jpg'),(1085,'Connor','Mcgregor','N / A','N / A','tamosius5@yahoo.com','N / A','2016-08-03 21:44:08','','','1085.jpg'),(1086,'Nate','Diaz','N / A','N / A','N / A','N / A','2016-08-03 21:44:35','','','1086.jpg'),(1088,'Chuck','Liddell','N / A','N / A','N / A','N / A','2016-08-13 10:55:28','','','1088.jpg'),(1089,'Alan','Touring','N / A','N / A','N / A','N / A','2016-08-13 11:41:24','','','1089.jpg'),(1147,'Michael','D higgins','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-11-12 18:29:08',NULL,'zQzNnEeHtRmOjT','1147.jpg'),(1173,'Jose','Aldo','N / A','N / A','D14123810@mydit.ie','N / A','2016-11-12 21:39:19',NULL,'fNoSxQjArCsOaH','1173.jpg'),(1174,'Michael','Noonan','+353870533905','Apt.13, Breffni Court','t.mikoliunas@gmail.com','N / A','2016-11-13 13:45:04',NULL,'aVmQpHeWiCmLfD','1174.jpg'),(1176,'Simon','Haris','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-11-13 13:45:43',NULL,'fNyWnYfYaFaRqJ','1176.jpg'),(1178,'Aaron','Swartz','+353870533905','Apt.13, Breffni Court','t.mikoliunas@gmail.com','N / A','2016-11-27 21:17:08',NULL,'pSdKtMgLoBeDvF','no_photo.jpg'),(1219,'Caucho','Ronaldinho','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-16 13:36:41',NULL,'bZaTeKbEiJqMcT','1219.jpg'),(1220,'Andrej','Arshavin','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-16 13:39:33',NULL,'uOuAoHoHqMjIgJ','1220.jpg'),(1221,'Maria','Sharapova','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-16 13:41:10',NULL,'xEsDoBqDeRwHeK','1221.jpg'),(1222,'Lionel','Messi','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-16 13:42:44',NULL,'cIlDyOmPtTfDkK','1222.jpg'),(1223,'Petra','Svitolina','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-16 13:44:39',NULL,'jLzFxHqBjKmAzV','1223.jpg'),(1224,'Roger','Federer','+35383453905','N / A','t.mikoliunas@gmail.com','N / A','2016-12-16 13:52:33',NULL,'oTfPfWbLhKnQfS','1224.jpg'),(1225,'Novak','Djokovic','+353456533905','N / A','t.mikoliunas@gmail.com','N / A','2016-12-16 21:39:44',NULL,'kOfCpVbNtLlKzR','1225.jpg'),(1226,'Tom','Hanks','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-16 21:40:25',NULL,'uSdTfWcSyBzZgW','1226.jpg'),(1227,'Serena','Williams','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-16 21:41:43',NULL,'wWrCsOoAyFhHcB','1227.jpg'),(1228,'Andy','Murray','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-16 21:42:42',NULL,'oAuXaScIzAjNvL','1228.jpg'),(1229,'Luis','Suarez','+353876533905','N / A','t.mikoliunas@gmail.com','N / A','2016-12-17 16:35:33',NULL,'hDrLoLhWtFbCxT','1229.jpg'),(1230,'Gareth','Bale','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-17 16:37:13',NULL,'pZzWwZiSqGsJbS','1230.jpg'),(1231,'Zlatan','Ibrahimovic','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-17 16:40:10',NULL,'vWoUnYpTpBdMxC','1231.jpg'),(1232,'Zinedine','Zidane','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-17 16:41:41',NULL,'dIoQhYsLtOfQfY','1232.jpg'),(1233,'David','Beckham','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-17 16:42:49',NULL,'mGkIqJxUfWzTfY','1233.jpg'),(1234,'Manuel','Neuer','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-17 16:43:59',NULL,'eIzXmGjQpJcIhV','1234.jpg'),(1235,'Paul','Pogba','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-17 16:45:07',NULL,'vCuBjItShQyPpM','1235.jpg'),(1236,'Andres','Iniesta','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-17 16:46:51',NULL,'jReOpKbFmYjUbK','1236.jpg'),(1237,'Jamie','Vardy','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-17 16:49:31',NULL,'lAfYhKwXeCgMuX','1237.jpg'),(1238,'Theo','Walcott','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-17 16:51:04',NULL,'nZmMaPuNwCyZhN','1238.jpg'),(1239,'James','Milner','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-17 16:53:45',NULL,'vHcRkQrPrGtHyP','1239.jpg'),(1240,'Linus','Torvalds','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-17 16:54:42',NULL,'mUtZeBhLmDeQcP','1240.jpg'),(1241,'Luke','Shaw','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-17 16:55:38',NULL,'wEvWhMbZzIpWjH','1241.jpg'),(1242,'Kyle','Walker','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-17 16:57:06',NULL,'wHuIuVcPcFiJlF','1242.jpg'),(1243,'Kieran','Gibbs','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-17 16:58:04',NULL,'zDtZfMeToGhMfI','1243.jpg'),(1244,'Scott','Parker','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-17 16:59:08',NULL,'xJxJnMqBtHqWiD','1244.jpg'),(1256,'Tomas','Bando','+353870533905','Apt.13, Breffni Court, Castle St.','t.mikoliunas@gmail.com','N / A','2016-12-18 16:59:39',NULL,'nNqOhPeRpOkAwY','no_photo.jpg'),(1258,'Ttttttttttttttttttttttttt','Tttttttttttttttttttttttt','+353870533905','Apt.13, Breffni Court, Castle St.','t.mikoliunas@gmail.com','N / A','2016-12-18 17:31:01',NULL,'hOzXwCiSzKlGeV','no_photo.jpg'),(1259,'Vitalijaso','Vysniauskaite','+353870533905','Apt.13, Breffni Court, Castle St.','t.mikoliunas@gmail.com','N / A','2016-12-18 17:38:31',NULL,'yTrYlAiUhDhStS','no_photo.jpg'),(1260,'Eden','Hazard','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-20 15:25:56',NULL,'dCeObUtAjChBmU','1260.jpg'),(1261,'Mesut','Ozil','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-20 15:26:26',NULL,'lApJuDgZxNhKtJ','1261.jpg'),(1262,'Alexis','Sanchez','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-20 15:27:49',NULL,'yPbVvYbCvFjHxB','1262.jpg'),(1263,'Samuel','Eto','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-20 15:28:54',NULL,'fMgInOfAeYqLtZ','1263.jpg'),(1264,'Gerard','Pique','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-20 15:30:14',NULL,'hYfLjZqUsTxZoP','1264.jpg'),(1265,'Landon','Donovan','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-20 15:31:17',NULL,'uSuJnJkVuGzMuC','1265.jpg'),(1266,'Thomas','Muller','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-20 15:32:06',NULL,'fYqLuNuTtAfJwD','1266.jpg'),(1267,'Sergio','Ramos','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-20 15:32:55',NULL,'cKnQjAqVyAnVfD','1267.jpg'),(1268,'Clint','Dempsey','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-20 15:34:01',NULL,'vDtLlAmZyUtVtL','1268.jpg'),(1269,'Carli','Lloyd','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-20 15:34:53',NULL,'mXrRbXcYdBiKtJ','1269.jpg'),(1270,'Alex','Morgan','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-20 15:36:22',NULL,'nWzBxBiHyFsPdC','1270.jpg'),(1271,'Karim','Benzema','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-20 15:37:25',NULL,'vGzYxYkTkXaReS','1271.jpg'),(1272,'Didier','Drogba','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-20 15:38:26',NULL,'yJmVoRqLgKvRoQ','1272.jpg'),(1273,'George','Clooney','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-21 22:20:05',NULL,'dHoTyWpTzZeFfH','1273.jpg'),(1274,'Meryl','Streep','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-21 22:21:24',NULL,'uBqFsLrJyUnMwP','1274.jpg'),(1275,'Steve','Carrel','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-21 22:23:03',NULL,'uTpKtIqFwZcToN','1275.jpg'),(1276,'Mark','Wahlberg','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-21 22:24:22',NULL,'oLwOmTsIvZyMfT','1276.jpg'),(1277,'Johny','Depp','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-21 22:25:12',NULL,'fMdWnZfMrTbErI','1277.jpg'),(1278,'Tom','Cruise','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-21 22:25:57',NULL,'ePeSyOkPsXaLiG','1278.jpg'),(1279,'Robert','Downey','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-21 22:26:53',NULL,'xDbSxKrQwGzEoN','1279.jpg'),(1280,'Jennifer','Lawrence','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-21 22:27:56',NULL,'gRoQzHzQpAdMzH','1280.jpg'),(1281,'Brad','Pitt','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-21 22:28:40',NULL,'bJrYkYeWeQgLbP','1281.jpg'),(1282,'Ryan','Gosling','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-21 22:30:00',NULL,'zLvJjJhOmUkUsZ','1282.jpg'),(1283,'Will','Smith','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-21 22:31:37',NULL,'tQrMmKcZnPdVrE','1283.jpg'),(1284,'Emma','Stone','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-21 22:32:26',NULL,'eLgVlScHwAtIcI','1284.jpg'),(1285,'Daniel','Craig','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-21 22:33:20',NULL,'dQgZgCuBbWgNyP','1285.jpg'),(1286,'Hugh','Jackman','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-21 22:34:13',NULL,'iDlJmCxNyGnBgQ','1286.jpg'),(1287,'Kirsten','Stewart','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-21 22:35:55',NULL,'uFyTxGmClLjItR','1287.jpg'),(1288,'Annie','Hathaway','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-21 22:36:43',NULL,'aYcAcApOmPfKlS','1288.jpg'),(1289,'Matt','Damon','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-22 10:26:10',NULL,'sFqQjXoAtFyEnA','1289.jpg'),(1290,'Sandra','Bullock','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-22 10:31:14',NULL,'xOmNwVrOwTtYuU','1290.jpg'),(1291,'Jamie','Foxx','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-22 10:32:31',NULL,'mUyTvZkWsOtChF','1291.jpg'),(1292,'Dwayne','Johnson','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-22 10:33:58',NULL,'gPhLcMvGaXxMfR','1292.jpg'),(1293,'Christian','Bale','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-22 10:35:09',NULL,'tEgSkMwIwPsBqP','1293.jpg'),(1294,'Ben','Affleck','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-22 10:35:58',NULL,'sNqYcBwQxZiVuG','1294.jpg'),(1295,'Nicolas','Cage','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-22 10:37:34',NULL,'hQlYtCeCxMzYrH','1295.jpg'),(1296,'Hall','Berry','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-22 10:38:28',NULL,'rInPdHbVzTjWeA','1296.jpg'),(1297,'Heather','Gragham','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-22 10:39:32',NULL,'bEuNvStKmZhEuN','1297.jpg'),(1298,'Hugh','Grant','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-22 10:40:20',NULL,'sGlToUrCrXeDsC','1298.jpg'),(1299,'Famke','Janssen','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-22 10:41:39',NULL,'pUxMdWkMjHoMpG','1299.jpg'),(1300,'Katie','Holmes','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-22 10:43:05',NULL,'pXcZzLvPsPoCwR','1300.jpg'),(1301,'Jack','Nicholson','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-22 10:44:01',NULL,'lPaVyBrNbXyIaR','1301.jpg'),(1302,'Edward','Norton','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-22 10:44:59',NULL,'dTdFgPeHwUcOqU','1302.jpg'),(1303,'Allysa','Millano','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-22 10:45:47',NULL,'lDwFzLiUgRdEsY','1303.jpg'),(1304,'Ridley','Scott','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-22 10:47:21',NULL,'uHnAzKlHfKtSdM','1304.jpg'),(1305,'Liv','Tyler','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-22 10:48:07',NULL,'oKrZwIzLnRtVgV','1305.jpg'),(1306,'Denzel','Washington','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-22 10:49:05',NULL,'yMeIiViNzOmLmN','1306.jpg'),(1307,'Kate','Winslet','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-22 10:49:49',NULL,'lDgNhPoMyDzQtM','1307.jpg'),(1308,'John','Travolta','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-22 10:50:37',NULL,'iWaWrLnYmQqHeF','1308.jpg'),(1309,'Petra','Kvitova','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-22 11:22:04',NULL,'aPqLhEoHaUmMjS','1309.jpg'),(1310,'Bandymas','Sitas','+353870533905','Apt.13, Breffni Court, Castle St.','t.mikoliunas@gmail.com','N / A','2016-12-22 19:02:50',NULL,'bUcGrSnGyMdKeA','no_photo.jpg'),(1312,'Ba','Membership','N / A','N / A','t.mikoliunas@gmail.com','N / A','2016-12-22 19:04:55',NULL,'cExNpAlEkRdVuR','no_photo.jpg');
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
  `due_payment` float(8,2) NOT NULL,
  `programme_id` int(11) NOT NULL,
  KEY `fk_last_updated` (`id`),
  CONSTRAINT `fk_last_updated` FOREIGN KEY (`id`) REFERENCES `members` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membership_status`
--

LOCK TABLES `membership_status` WRITE;
/*!40000 ALTER TABLE `membership_status` DISABLE KEYS */;
INSERT INTO `membership_status` VALUES (1078,'2016-06-01 18:28:22','01-06-2016','01-07-2016',10.00,'\'Pay as You Go\'','inactive','Starded \'Pay as You Go\' Programme',1,0.00,5),(1080,'2016-06-02 18:28:22','02-06-2016','27-07-2016',10.00,'\'Pay as You Go\'','inactive','Starded \'Pay as You Go\' Programme',1,0.00,5),(1081,'2016-06-17 18:28:22','17-06-2016','10-08-2016',10.00,'\'Pay as You Go\'','inactive','Starded \'Pay as You Go\' Programme',1,0.00,5),(1080,'2016-07-27 15:06:24','27-07-2016','27-07-2017',420.00,'\'12 Months Mbsh\'','active','The membership/programme has been updated.\n',1,0.00,4),(1082,'2016-08-02 21:25:55','02-08-2016','26-11-2016',10.00,'\'Pay as You Go\'','inactive','Starded \'Pay as You Go\' Programme',1,0.00,5),(1083,'2016-08-03 21:30:37','03-08-2016','present',10.00,'\'Pay as You Go\'','active','Starded \'Pay as You Go\' Programme',1,0.00,5),(1085,'2016-08-03 21:44:08','03-08-2016','27-11-2016',10.00,'\'Pay as You Go\'','inactive','Starded \'Pay as You Go\' Programme',1,0.00,5),(1086,'2016-08-03 21:44:35','03-08-2016','04-08-2016',10.00,'\'Pay as You Go\'','inactive','Starded \'Pay as You Go\' Programme',1,0.00,5),(1086,'2016-08-03 21:45:26','04-08-2016','04-08-2017',420.00,'\'12 Months Mbsh\'','active','The membership/programme has been updated.\n',1,0.00,4),(1078,'2016-08-04 15:00:35','04-08-2016','04-09-2016',80.00,'\'1 Month Mbsh\'','inactive','The membership/programme has been updated.\n',1,0.00,1),(1081,'2016-08-10 20:34:46','10-08-2016','10-02-2017',320.00,'\'6 Months Mbsh\'','active','The membership/programme has been updated.\n',1,0.00,3),(1078,'2016-08-10 21:01:10','04-09-2016','25-10-2016',10.00,'\'Pay as You Go\'','inactive','The membership/programme has been updated.\n',1,0.00,5),(1088,'2016-08-13 10:55:28','13-08-2016','present',10.00,'\'Pay as You Go\'','active','Starded \'Pay as You Go\' Programme',1,0.00,5),(1089,'2016-08-13 11:41:24','13-08-2016','13-09-2016',10.00,'\'Pay as You Go\'','inactive','Starded \'Pay as You Go\' Programme',1,0.00,5),(1089,'2016-08-13 11:54:28','13-09-2016','13-12-2016',320.00,'\'3 Months Mbsh\'','inactive','The membership/programme has been updated.\n',1,0.00,2),(1078,'2016-10-25 21:14:35','25-10-2016','25-04-2017',320.00,'\'6 Months Mbsh\'','active','The membership/programme has been updated.\n',1,0.00,3),(1147,'2016-11-12 18:29:08','12-11-2016','present',10.00,'\'Pay as You Go\'','active','Starded \'Pay as You Go\' Programme',1,0.00,5),(1173,'2016-11-12 21:39:19','12-11-2016','present',10.00,'\'Pay as You Go\'','active','Starded \'Pay as You Go\' Programme',1,0.00,5),(1174,'2016-11-13 13:45:04','13-11-2016','27-11-2016',10.00,'\'Pay as You Go\'','inactive','Starded \'Pay as You Go\' Programme',1,0.00,5),(1176,'2016-11-13 13:45:43','13-11-2016','present',10.00,'\'Pay as You Go\'','active','Starded \'Pay as You Go\' Programme',1,0.00,5),(1082,'2016-11-26 20:09:28','26-11-2016','26-05-2017',320.00,'\'6 Months Mbsh\'','active','The membership/programme has been updated.\n',1,0.00,3),(1178,'2016-11-27 21:17:08','27-11-2016','present',10.00,'\'Pay as You Go\'','active','Starded \'Pay as You Go\' Programme',1,0.00,5),(1174,'2016-11-27 21:40:01','27-11-2016','27-02-2017',180.00,'\'3 Months Mbsh\'','active','The membership/programme has been updated.\n',1,0.00,2),(1085,'2016-11-27 21:53:14','27-11-2016','27-05-2017',320.00,'\'6 Months Mbsh\'','active','The membership/programme has been updated.\n',1,0.00,3),(1089,'2016-12-14 16:54:28','13-12-2016','present',10.00,'\'Pay as You Go\'','active','The membership/programme has been updated.\r\n',1,0.00,5),(1219,'2016-12-16 13:36:41','16-12-2016','18-03-2017',160.00,'\'3 Months Mbsh\'','active','Booked \'3 Month Mbsh\' Programme',1,0.00,2),(1220,'2016-12-16 13:39:33','16-12-2016','18-06-2017',295.00,'\'6 Months Mbsh\'','active','Booked \'6 Month Mbsh\' Programme',1,0.00,3),(1221,'2016-12-16 13:41:10','16-12-2016','present',8.00,'\'Pay as You Go\'','active','Starded \'Pay as You Go\' Programme',1,0.00,5),(1222,'2016-12-16 13:42:44','16-12-2016','18-06-2017',295.00,'\'6 Months Mbsh\'','active','Booked \'6 Month Mbsh\' Programme',1,0.00,3),(1223,'2016-12-16 13:44:39','16-12-2016','present',8.00,'\'Pay as You Go\'','active','Starded \'Pay as You Go\' Programme',1,0.00,5),(1224,'2016-12-16 13:52:33','16-12-2016','18-03-2017',160.00,'\'3 Months Mbsh\'','active','Booked \'3 Month Mbsh\' Programme',1,0.00,2),(1225,'2016-12-16 21:39:44','16-12-2016','16-12-2017',390.00,'\'12 Months Mbsh\'','active','Booked \'12 Month Mbsh\' Programme',1,0.00,4),(1226,'2016-12-16 21:40:25','16-12-2016','present',8.00,'\'Pay as You Go\'','active','Starded \'Pay as You Go\' Programme',1,0.00,5),(1227,'2016-12-16 21:41:43','16-12-2016','18-06-2017',295.00,'\'6 Months Mbsh\'','active','Booked \'6 Month Mbsh\' Programme',1,0.00,3),(1228,'2016-12-16 21:42:42','16-12-2016','18-06-2017',295.00,'\'6 Months Mbsh\'','active','Booked \'6 Month Mbsh\' Programme',1,0.00,3),(1229,'2016-12-17 16:35:33','17-12-2016','19-06-2017',295.00,'\'6 Months Mbsh\'','active','Booked \'6 Month Mbsh\' Programme',1,0.00,3),(1230,'2016-12-17 16:37:13','17-12-2016','17-01-2017',70.00,'\'1 Month Mbsh\'','active','Booked \'1 Month Mbsh\' Programme',1,0.00,1),(1231,'2016-12-17 16:40:10','17-12-2016','17-12-2017',390.00,'\'12 Months Mbsh\'','active','Booked \'12 Month Mbsh\' Programme',1,0.00,4),(1232,'2016-12-17 16:41:41','17-12-2016','19-06-2017',295.00,'\'6 Months Mbsh\'','active','Booked \'6 Month Mbsh\' Programme',1,0.00,3),(1233,'2016-12-17 16:42:49','17-12-2016','19-06-2017',295.00,'\'6 Months Mbsh\'','active','Booked \'6 Month Mbsh\' Programme',1,0.00,3),(1234,'2016-12-17 16:43:59','17-12-2016','19-03-2017',160.00,'\'3 Months Mbsh\'','active','Booked \'3 Month Mbsh\' Programme',1,0.00,2),(1235,'2016-12-17 16:45:07','17-12-2016','17-12-2017',390.00,'\'12 Months Mbsh\'','active','Booked \'12 Month Mbsh\' Programme',1,0.00,4),(1236,'2016-12-17 16:46:51','17-12-2016','present',8.00,'\'Pay as You Go\'','active','Starded \'Pay as You Go\' Programme',1,0.00,5),(1237,'2016-12-17 16:49:31','17-12-2016','present',8.00,'\'Pay as You Go\'','active','Starded \'Pay as You Go\' Programme',1,0.00,5),(1238,'2016-12-17 16:51:04','17-12-2016','17-12-2017',390.00,'\'12 Months Mbsh\'','active','Booked \'12 Month Mbsh\' Programme',1,0.00,4),(1239,'2016-12-17 16:53:45','17-12-2016','19-03-2017',160.00,'\'3 Months Mbsh\'','active','Booked \'3 Month Mbsh\' Programme',1,0.00,2),(1240,'2016-12-17 16:54:42','17-12-2016','17-12-2017',390.00,'\'12 Months Mbsh\'','active','Booked \'12 Month Mbsh\' Programme',1,0.00,4),(1241,'2016-12-17 16:55:38','17-12-2016','17-01-2017',70.00,'\'1 Month Mbsh\'','active','Booked \'1 Month Mbsh\' Programme',1,0.00,1),(1242,'2016-12-17 16:57:06','17-12-2016','present',8.00,'\'Pay as You Go\'','active','Starded \'Pay as You Go\' Programme',1,0.00,5),(1243,'2016-12-17 16:58:04','17-12-2016','19-03-2017',160.00,'\'3 Months Mbsh\'','active','Booked \'3 Month Mbsh\' Programme',1,0.00,2),(1244,'2016-12-17 16:59:08','17-12-2016','19-06-2017',295.00,'\'6 Months Mbsh\'','active','Booked \'6 Month Mbsh\' Programme',1,0.00,3),(1256,'2016-12-18 16:59:39','18-12-2016','18-01-2017',70.00,'\'1 Month Mbsh\'','active','Booked \'1 Month Mbsh\' Programme',1,0.00,1),(1258,'2016-12-18 17:31:01','18-12-2016','present',8.00,'\'Pay as You Go\'','active','Starded \'Pay as You Go\' Programme',1,0.00,5),(1259,'2016-12-18 17:38:31','18-12-2016','20-03-2017',160.00,'\'3 Months Mbsh\'','active','Booked \'3 Months Mbsh\' Programme',1,0.00,2),(1260,'2016-12-20 15:25:56','20-12-2016','22-03-2017',160.00,'\'3 Months Mbsh\'','active','Booked \'3 Months Mbsh\' Programme',1,0.00,2),(1261,'2016-12-20 15:26:26','20-12-2016','22-06-2017',295.00,'\'6 Months Mbsh\'','active','Booked \'6 Months Mbsh\' Programme',1,0.00,3),(1262,'2016-12-20 15:27:49','20-12-2016','22-06-2017',295.00,'\'6 Months Mbsh\'','active','Booked \'6 Months Mbsh\' Programme',1,0.00,3),(1263,'2016-12-20 15:28:54','20-12-2016','20-12-2017',390.00,'\'12 Months Mbsh\'','active','Booked \'12 Months Mbsh\' Programme',1,0.00,4),(1264,'2016-12-20 15:30:14','20-12-2016','20-01-2017',70.00,'\'1 Month Mbsh\'','active','Booked \'1 Month Mbsh\' Programme',1,0.00,1),(1265,'2016-12-20 15:31:17','20-12-2016','present',8.00,'\'Pay as You Go\'','active','Starded \'Pay as You Go\' Programme',1,0.00,5),(1266,'2016-12-20 15:32:06','20-12-2016','20-01-2017',70.00,'\'1 Month Mbsh\'','active','Booked \'1 Month Mbsh\' Programme',1,0.00,1),(1267,'2016-12-20 15:32:55','20-12-2016','22-06-2017',295.00,'\'6 Months Mbsh\'','active','Booked \'6 Months Mbsh\' Programme',1,0.00,3),(1268,'2016-12-20 15:34:01','20-12-2016','20-01-2017',70.00,'\'1 Month Mbsh\'','active','Booked \'1 Month Mbsh\' Programme',1,0.00,1),(1269,'2016-12-20 15:34:53','20-12-2016','22-06-2017',295.00,'\'6 Months Mbsh\'','active','Booked \'6 Months Mbsh\' Programme',1,0.00,3),(1270,'2016-12-20 15:36:22','20-12-2016','22-06-2017',295.00,'\'6 Months Mbsh\'','active','Booked \'6 Months Mbsh\' Programme',1,0.00,3),(1271,'2016-12-20 15:37:25','20-12-2016','22-06-2017',295.00,'\'6 Months Mbsh\'','active','Booked \'6 Months Mbsh\' Programme',1,0.00,3),(1272,'2016-12-20 15:38:26','20-12-2016','22-06-2017',295.00,'\'6 Months Mbsh\'','active','Booked \'6 Months Mbsh\' Programme',1,0.00,3),(1273,'2016-12-21 22:20:05','21-12-2016','23-03-2017',160.00,'\'3 Months Mbsh\'','active','Booked \'3 Months Mbsh\' Programme',1,0.00,2),(1274,'2016-12-21 22:21:24','21-12-2016','23-06-2017',295.00,'\'6 Months Mbsh\'','active','Booked \'6 Months Mbsh\' Programme',1,0.00,3),(1275,'2016-12-21 22:23:03','21-12-2016','21-12-2017',390.00,'\'12 Months Mbsh\'','active','Booked \'12 Months Mbsh\' Programme',1,0.00,4),(1276,'2016-12-21 22:24:22','21-12-2016','21-01-2017',70.00,'\'1 Month Mbsh\'','active','Booked \'1 Month Mbsh\' Programme',1,0.00,1),(1277,'2016-12-21 22:25:12','21-12-2016','23-03-2017',160.00,'\'3 Months Mbsh\'','active','Booked \'3 Months Mbsh\' Programme',1,0.00,2),(1278,'2016-12-21 22:25:57','21-12-2016','23-06-2017',295.00,'\'6 Months Mbsh\'','active','Booked \'6 Months Mbsh\' Programme',1,0.00,3),(1279,'2016-12-21 22:26:53','21-12-2016','23-03-2017',160.00,'\'3 Months Mbsh\'','active','Booked \'3 Months Mbsh\' Programme',1,0.00,2),(1280,'2016-12-21 22:27:56','21-12-2016','23-06-2017',295.00,'\'6 Months Mbsh\'','active','Booked \'6 Months Mbsh\' Programme',1,0.00,3),(1281,'2016-12-21 22:28:40','21-12-2016','23-06-2017',295.00,'\'6 Months Mbsh\'','active','Booked \'6 Months Mbsh\' Programme',1,0.00,3),(1282,'2016-12-21 22:30:00','21-12-2016','21-12-2017',390.00,'\'12 Months Mbsh\'','active','Booked \'12 Months Mbsh\' Programme',1,0.00,4),(1283,'2016-12-21 22:31:37','21-12-2016','present',16.00,'\'Pay as You Go\'','active','Starded \'Pay as You Go\' Programme',1,0.00,5),(1284,'2016-12-21 22:32:26','21-12-2016','23-06-2017',295.00,'\'6 Months Mbsh\'','active','Booked \'6 Months Mbsh\' Programme',1,0.00,3),(1285,'2016-12-21 22:33:20','21-12-2016','23-06-2017',295.00,'\'6 Months Mbsh\'','active','Booked \'6 Months Mbsh\' Programme',1,0.00,3),(1286,'2016-12-21 22:34:13','21-12-2016','23-03-2017',160.00,'\'3 Months Mbsh\'','active','Booked \'3 Months Mbsh\' Programme',1,0.00,2),(1287,'2016-12-21 22:35:55','21-12-2016','23-06-2017',295.00,'\'6 Months Mbsh\'','active','Booked \'6 Months Mbsh\' Programme',1,0.00,3),(1288,'2016-12-21 22:36:43','21-12-2016','21-12-2017',390.00,'\'12 Months Mbsh\'','active','Booked \'12 Months Mbsh\' Programme',1,0.00,4),(1289,'2016-12-22 10:26:10','22-12-2016','24-06-2017',295.00,'\'6 Months Mbsh\'','active','Booked \'6 Months Mbsh\' Programme',1,0.00,3),(1290,'2016-12-22 10:31:14','22-12-2016','24-06-2017',295.00,'\'6 Months Mbsh\'','active','Booked \'6 Months Mbsh\' Programme',1,0.00,3),(1291,'2016-12-22 10:32:31','22-12-2016','22-12-2017',390.00,'\'12 Months Mbsh\'','active','Booked \'12 Months Mbsh\' Programme',1,0.00,4),(1292,'2016-12-22 10:33:58','22-12-2016','24-03-2017',160.00,'\'3 Months Mbsh\'','active','Booked \'3 Months Mbsh\' Programme',1,0.00,2),(1293,'2016-12-22 10:35:09','22-12-2016','24-06-2017',295.00,'\'6 Months Mbsh\'','active','Booked \'6 Months Mbsh\' Programme',1,0.00,3),(1294,'2016-12-22 10:35:58','22-12-2016','24-06-2017',295.00,'\'6 Months Mbsh\'','active','Booked \'6 Months Mbsh\' Programme',1,0.00,3),(1295,'2016-12-22 10:37:34','22-12-2016','22-12-2017',390.00,'\'12 Months Mbsh\'','active','Booked \'12 Months Mbsh\' Programme',1,0.00,4),(1296,'2016-12-22 10:38:28','22-12-2016','24-06-2017',295.00,'\'6 Months Mbsh\'','active','Booked \'6 Months Mbsh\' Programme',1,0.00,3),(1297,'2016-12-22 10:39:32','22-12-2016','24-03-2017',160.00,'\'3 Months Mbsh\'','active','Booked \'3 Months Mbsh\' Programme',1,0.00,2),(1298,'2016-12-22 10:40:20','22-12-2016','24-06-2017',295.00,'\'6 Months Mbsh\'','active','Booked \'6 Months Mbsh\' Programme',1,0.00,3),(1299,'2016-12-22 10:41:39','22-12-2016','24-06-2017',295.00,'\'6 Months Mbsh\'','active','Booked \'6 Months Mbsh\' Programme',1,0.00,3),(1300,'2016-12-22 10:43:05','22-12-2016','24-06-2017',295.00,'\'6 Months Mbsh\'','active','Booked \'6 Months Mbsh\' Programme',1,0.00,3),(1301,'2016-12-22 10:44:01','22-12-2016','24-06-2017',295.00,'\'6 Months Mbsh\'','active','Booked \'6 Months Mbsh\' Programme',1,0.00,3),(1302,'2016-12-22 10:44:59','22-12-2016','24-06-2017',295.00,'\'6 Months Mbsh\'','active','Booked \'6 Months Mbsh\' Programme',1,0.00,3),(1303,'2016-12-22 10:45:47','22-12-2016','24-06-2017',295.00,'\'6 Months Mbsh\'','active','Booked \'6 Months Mbsh\' Programme',1,0.00,3),(1304,'2016-12-22 10:47:21','22-12-2016','24-03-2017',160.00,'\'3 Months Mbsh\'','active','Booked \'3 Months Mbsh\' Programme',1,0.00,2),(1305,'2016-12-22 10:48:07','22-12-2016','22-12-2017',390.00,'\'12 Months Mbsh\'','active','Booked \'12 Months Mbsh\' Programme',1,0.00,4),(1306,'2016-12-22 10:49:05','22-12-2016','24-06-2017',295.00,'\'6 Months Mbsh\'','active','Booked \'6 Months Mbsh\' Programme',1,0.00,3),(1307,'2016-12-22 10:49:50','22-12-2016','24-06-2017',295.00,'\'6 Months Mbsh\'','active','Booked \'6 Months Mbsh\' Programme',1,0.00,3),(1308,'2016-12-22 10:50:37','22-12-2016','24-03-2017',160.00,'\'3 Months Mbsh\'','active','Booked \'3 Months Mbsh\' Programme',1,0.00,2),(1309,'2016-12-22 11:22:04','22-12-2016','24-03-2017',160.00,'\'3 Months Mbsh\'','active','Booked \'3 Months Mbsh\' Programme',1,0.00,2),(1310,'2016-12-22 19:02:50','22-12-2016','present',24.00,'\'Pay as You Go\'','active','Starded \'Pay as You Go\' Programme',1,0.00,5),(1312,'2016-12-22 19:04:55','22-12-2016','21-12-2016',50.00,'\'1 Month Mbsh\'','inactive','Booked \'1 Month Mbsh\' Programme',1,20.00,1),(1312,'2016-12-22 19:35:35','22-12-2016','21-12-2016',168.00,'\'3 Months Mbsh\'','active','The name has been changed.\r\nThe membership/programme has been updated.\r\n',1,0.00,2),(1312,'2016-12-22 19:43:36','22-12-2016','21-12-2016',160.00,'\'3 Months Mbsh\'','active','The name has been changed.\r\n',0,-160.00,2),(1312,'2016-12-22 19:51:08','22-12-2016','21-12-2016',0.00,'\'3 Months Mbsh\'','active','The name has been changed.\r\n',0,0.00,2);
/*!40000 ALTER TABLE `membership_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offers`
--

DROP TABLE IF EXISTS `offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `offers` (
  `member_id` int(11) NOT NULL,
  `offer_subject` varchar(500) NOT NULL DEFAULT 'N / A',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `offer_template` text NOT NULL,
  `offer_percentage` int(11) NOT NULL,
  `accepted` tinyint(1) NOT NULL,
  `accepted_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offers`
--

LOCK TABLES `offers` WRITE;
/*!40000 ALTER TABLE `offers` DISABLE KEYS */;
INSERT INTO `offers` VALUES (1082,'Thank you from ToMi! Receive 15% deal!!!','2016-11-26','2016-12-01','\n\n<!DOCTYPE html>\n<html>\n<head>\n<style>\n\n.top_block {\n\n	width: 60%;\n	height: 100px;\n}\n\n#name{\n\n	color: #2e4c84;\n	font-size: 18px;\n}\n\n.top_block .initials_description {\n	line-height: 100px;\n	width: 100%;\n	height: 100px;\n	position: absolute;\n	top: 0;\n	right: 0;\n	bottom: 0;\n	font-size: 32px;\n	text-align: center;\n	font-weight: bold;\n	letter-spacing: 2px;\n	color: #ffffff;\n	background: #000080;\n}\n\n.middle_block{\n	\n	width: 60%;\n	height: 50px;\n}\n\n.welcome_to_website {\n	\n	line-height: 50px;\n	width: 100%;\n	height: 50px;\n	font-size: 17px;\n	text-align: center;\n	font-weight: bold;\n    color: #ffffff;\n	background: #000080;\n}\n\npre {\n\n	font-size: 15px;\n	font-family: \"Arial\";\n}\n\nspan {\n	color: #ff6666;\n}\n\na{\n\n	color: #2e4c84;\n	text-decoration: none;\n}\n\na:hover{\n\n	color: #000080;\n}\n</style>\n</head>\n<body>\n\n	<div class=\"top_block\">\n\n		<div class=\"initials_description\">\n			Thank you from <span><i>ToMi</i></span> - and receive 15% offer deal!!\n		</div>\n	</div>\n\n	<pre><span id=\"name\">Hi Vitalija,</span>\n\nWe appreciate your recent purchase of a <b>Food Supplement</b>. \nOur company promises to provide high quality products for you as well as outstanding customer service for every transaction. \nThank you and we are always happy to serve you.\n\nAs valuable customer the 15% discount is available for you on any order from our shop!\nThe offer available for you until the <b>01-12-2016</b></pre>\n\n	<div class=\"middle_block\">\n		<div class=\"welcome_to_website\">\n			Please checkout our website <span><i>ToMi</i></span> for great\n			deals!!\n		</div>\n	</div>\n\n<pre>Available at: <a href=\"http://www.google.ie\">Some address here...</a></pre>\n\n	<hr>\n	<pre>\nRegards,\n<strong>Tomas Mikoliunas</strong>\nThe director of <strong><span>ToMi</span> - Gym Club.</strong>\n\n</pre>\n\n</body>\n</html>\n\n\n',15,0,NULL),(1078,'Thank you from ToMi! Receive 15% deal!!!','2016-11-26','2016-12-01','\n\n<!DOCTYPE html>\n<html>\n<head>\n<style>\n\n.top_block {\n\n	width: 60%;\n	height: 100px;\n}\n\n#name{\n\n	color: #2e4c84;\n	font-size: 18px;\n}\n\n.top_block .initials_description {\n	line-height: 100px;\n	width: 100%;\n	height: 100px;\n	position: absolute;\n	top: 0;\n	right: 0;\n	bottom: 0;\n	font-size: 32px;\n	text-align: center;\n	font-weight: bold;\n	letter-spacing: 2px;\n	color: #ffffff;\n	background: #000080;\n}\n\n.middle_block{\n	\n	width: 60%;\n	height: 50px;\n}\n\n.welcome_to_website {\n	\n	line-height: 50px;\n	width: 100%;\n	height: 50px;\n	font-size: 17px;\n	text-align: center;\n	font-weight: bold;\n    color: #ffffff;\n	background: #000080;\n}\n\npre {\n\n	font-size: 15px;\n	font-family: \"Arial\";\n}\n\nspan {\n	color: #ff6666;\n}\n\na{\n\n	color: #2e4c84;\n	text-decoration: none;\n}\n\na:hover{\n\n	color: #000080;\n}\n</style>\n</head>\n<body>\n\n	<div class=\"top_block\">\n\n		<div class=\"initials_description\">\n			Thank you from <span><i>ToMi</i></span> - and receive 15% offer deal!!\n		</div>\n	</div>\n\n	<pre><span id=\"name\">Hi Tomas,</span>\n\nWe appreciate your recent purchase of a <b>Whey Protein</b>. \nOur company promises to provide high quality products for you as well as outstanding customer service for every transaction. \nThank you and we are always happy to serve you.\n\nAs valuable customer the 15% discount is available for you on any order from our shop!\nThe offer available for you until the <b>01-12-2016</b></pre>\n\n	<div class=\"middle_block\">\n		<div class=\"welcome_to_website\">\n			Please checkout our website <span><i>ToMi</i></span> for great\n			deals!!\n		</div>\n	</div>\n\n<pre>Available at: <a href=\"http://www.google.ie\">Some address here...</a></pre>\n\n	<hr>\n	<pre>\nRegards,\n<strong>Tomas Mikoliunas</strong>\nThe director of <strong><span>ToMi</span> - Gym Club.</strong>\n\n</pre>\n\n</body>\n</html>\n\n\n',15,1,'2016-11-29 00:00:00'),(1258,'Thank you from ToMi! Receive 15% deal!!!','2016-12-19','2016-12-24','\n\n<!DOCTYPE html>\n<html>\n<head>\n<style>\n\n.top_block {\n\n	width: 60%;\n	height: 100px;\n}\n\n#name{\n\n	color: #2e4c84;\n	font-size: 18px;\n}\n\n.top_block .initials_description {\n	line-height: 100px;\n	width: 100%;\n	height: 100px;\n	position: absolute;\n	top: 0;\n	right: 0;\n	bottom: 0;\n	font-size: 32px;\n	text-align: center;\n	font-weight: bold;\n	letter-spacing: 2px;\n	color: #ffffff;\n	background: #000080;\n}\n\n.middle_block{\n	\n	width: 60%;\n	height: 50px;\n}\n\n.welcome_to_website {\n	\n	line-height: 50px;\n	width: 100%;\n	height: 50px;\n	font-size: 17px;\n	text-align: center;\n	font-weight: bold;\n    color: #ffffff;\n	background: #000080;\n}\n\npre {\n\n	font-size: 15px;\n	font-family: \"Arial\";\n}\n\nspan {\n	color: #ff6666;\n}\n\na{\n\n	color: #2e4c84;\n	text-decoration: none;\n}\n\na:hover{\n\n	color: #000080;\n}\n</style>\n</head>\n<body>\n\n	<div class=\"top_block\">\n\n		<div class=\"initials_description\">\n			Thank you from <span><i>ToMi</i></span> - and receive 15% offer deal!!\n		</div>\n	</div>\n\n	<pre><span id=\"name\">Hi Ttttttttttttttttttttttttt,</span>\n\nWe appreciate your recent purchase of a <b>Whey Protein</b>. \nOur company promises to provide high quality products for you as well as outstanding customer service for every transaction. \nThank you and we are always happy to serve you.\n\nAs valuable customer the 15% discount is available for you on any order from our shop!\nThe offer available for you until the <b>24-12-2016</b></pre>\n\n	<div class=\"middle_block\">\n		<div class=\"welcome_to_website\">\n			Please checkout our website <span><i>ToMi</i></span> for great\n			deals!!\n		</div>\n	</div>\n\n<pre>Available at: <a href=\"http://www.google.ie\">Some address here...</a></pre>\n\n	<hr>\n	<pre>\nRegards,\n<strong>Tomas Mikoliunas</strong>\nThe director of <strong><span>ToMi</span> - Gym Club.</strong>\n\n</pre>\n\n</body>\n</html>\n\n\n',15,0,NULL),(1259,'Thank you from ToMi! Receive 15% deal!!!','2016-12-19','2016-12-24','\n\n<!DOCTYPE html>\n<html>\n<head>\n<style>\n\n.top_block {\n\n	width: 60%;\n	height: 100px;\n}\n\n#name{\n\n	color: #2e4c84;\n	font-size: 18px;\n}\n\n.top_block .initials_description {\n	line-height: 100px;\n	width: 100%;\n	height: 100px;\n	position: absolute;\n	top: 0;\n	right: 0;\n	bottom: 0;\n	font-size: 32px;\n	text-align: center;\n	font-weight: bold;\n	letter-spacing: 2px;\n	color: #ffffff;\n	background: #000080;\n}\n\n.middle_block{\n	\n	width: 60%;\n	height: 50px;\n}\n\n.welcome_to_website {\n	\n	line-height: 50px;\n	width: 100%;\n	height: 50px;\n	font-size: 17px;\n	text-align: center;\n	font-weight: bold;\n    color: #ffffff;\n	background: #000080;\n}\n\npre {\n\n	font-size: 15px;\n	font-family: \"Arial\";\n}\n\nspan {\n	color: #ff6666;\n}\n\na{\n\n	color: #2e4c84;\n	text-decoration: none;\n}\n\na:hover{\n\n	color: #000080;\n}\n</style>\n</head>\n<body>\n\n	<div class=\"top_block\">\n\n		<div class=\"initials_description\">\n			Thank you from <span><i>ToMi</i></span> - and receive 15% offer deal!!\n		</div>\n	</div>\n\n	<pre><span id=\"name\">Hi Vitalijaso,</span>\n\nWe appreciate your recent purchase of a <b>Whey Protein</b>. \nOur company promises to provide high quality products for you as well as outstanding customer service for every transaction. \nThank you and we are always happy to serve you.\n\nAs valuable customer the 15% discount is available for you on any order from our shop!\nThe offer available for you until the <b>24-12-2016</b></pre>\n\n	<div class=\"middle_block\">\n		<div class=\"welcome_to_website\">\n			Please checkout our website <span><i>ToMi</i></span> for great\n			deals!!\n		</div>\n	</div>\n\n<pre>Available at: <a href=\"http://www.google.ie\">Some address here...</a></pre>\n\n	<hr>\n	<pre>\nRegards,\n<strong>Tomas Mikoliunas</strong>\nThe director of <strong><span>ToMi</span> - Gym Club.</strong>\n\n</pre>\n\n</body>\n</html>\n\n\n',15,1,'2016-12-19 17:11:20'),(1085,'Thank you from ToMi! Receive 15% deal!!!','2016-12-20','2016-12-25','\n\n<!DOCTYPE html>\n<html>\n<head>\n<style>\n\n.top_block {\n\n	width: 60%;\n	height: 100px;\n}\n\n#name{\n\n	color: #2e4c84;\n	font-size: 18px;\n}\n\n.top_block .initials_description {\n	line-height: 100px;\n	width: 100%;\n	height: 100px;\n	position: absolute;\n	top: 0;\n	right: 0;\n	bottom: 0;\n	font-size: 32px;\n	text-align: center;\n	font-weight: bold;\n	letter-spacing: 2px;\n	color: #ffffff;\n	background: #000080;\n}\n\n.middle_block{\n	\n	width: 60%;\n	height: 50px;\n}\n\n.welcome_to_website {\n	\n	line-height: 50px;\n	width: 100%;\n	height: 50px;\n	font-size: 17px;\n	text-align: center;\n	font-weight: bold;\n    color: #ffffff;\n	background: #000080;\n}\n\npre {\n\n	font-size: 15px;\n	font-family: \"Arial\";\n}\n\nspan {\n	color: #ff6666;\n}\n\na{\n\n	color: #2e4c84;\n	text-decoration: none;\n}\n\na:hover{\n\n	color: #000080;\n}\n</style>\n</head>\n<body>\n\n	<div class=\"top_block\">\n\n		<div class=\"initials_description\">\n			Thank you from <span><i>ToMi</i></span> - and receive 15% offer deal!!\n		</div>\n	</div>\n\n	<pre><span id=\"name\">Hi Connor,</span>\n\nWe appreciate your recent purchase of a <b>Whey Protein</b>. \nOur company promises to provide high quality products for you as well as outstanding customer service for every transaction. \nThank you and we are always happy to serve you.\n\nAs valuable customer the 15% discount is available for you on any order from our shop!\nThe offer available for you until the <b>25-12-2016</b></pre>\n\n	<div class=\"middle_block\">\n		<div class=\"welcome_to_website\">\n			Please checkout our website <span><i>ToMi</i></span> for great\n			deals!!\n		</div>\n	</div>\n\n<pre>Available at: <a href=\"http://www.google.ie\">Some address here...</a></pre>\n\n	<hr>\n	<pre>\nRegards,\n<strong>Tomas Mikoliunas</strong>\nThe director of <strong><span>ToMi</span> - Gym Club.</strong>\n\n</pre>\n\n</body>\n</html>\n\n\n',15,0,NULL);
/*!40000 ALTER TABLE `offers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `manufacturer` varchar(50) NOT NULL,
  `price` float(8,2) NOT NULL,
  `units` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `image_path` varchar(50) NOT NULL DEFAULT 'N / A',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'protein','Whey Protein','Gold Standard',35.00,5,'active','Very good protein.','2016-11-05 02:21:34','1.jpg'),(2,'protein','Whey Protein','EAS',40.00,6,'active','Build muscle effectively. ','2016-11-12 23:20:13','2.jpg'),(27,'gym equipment','Universal Barbell Bench','Boss',175.00,1,'active','Universal Barbell Bench for professional training.','2016-11-13 16:34:18','27.jpg'),(28,'food supplement','Food Supplement','Germany',12.00,5,'active','Food Supplement for weight loss.','2016-11-13 16:39:43','28.jpg'),(44,'vitamins','Recouleur','Pharmacy',7.00,12,'active','Good Vitamin for healthy life.','2016-11-13 17:27:42','44.jpg'),(45,'protein','Muscle Milk','Genuine',30.00,4,'active','Grow muscles effectively. ','2016-11-13 17:29:45','45.jpg'),(46,'protein','Multi-pack Protein','Gold Standard',60.00,3,'active','Multi-pack Whey Protein.','2016-11-13 21:49:13','46.jpg'),(47,'protein','Pure Protein','New Look',25.00,5,'active','Pure Whey Protein.','2016-11-13 21:53:50','47.jpg'),(48,'protein','Super Advanced Protein','Body Fortress',40.00,4,'active','Super Advanced Whey Protein.','2016-11-13 22:22:06','48.jpg'),(49,'protein','','',-3.00,-3,'active','','2016-12-20 16:42:43','no_image.jpg'),(50,'protein','tomo','mano',4.00,4,'active','goog','2016-12-20 16:45:32','no_image.jpg');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_reserved`
--

DROP TABLE IF EXISTS `products_reserved`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_reserved` (
  `product_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `reserved_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `expire_date` date NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` float(8,2) NOT NULL,
  `valid` tinyint(1) NOT NULL DEFAULT '1',
  `bought` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_reserved`
--

LOCK TABLES `products_reserved` WRITE;
/*!40000 ALTER TABLE `products_reserved` DISABLE KEYS */;
INSERT INTO `products_reserved` VALUES (1,1078,'2016-12-20 18:19:44','2016-12-05',1,35.00,0,0),(44,1082,'2016-12-20 18:19:44','2016-12-05',1,7.00,0,0),(28,1081,'2016-12-20 18:19:44','2016-12-01',1,12.00,0,0),(1,1081,'2016-12-20 18:19:44','2016-12-01',1,35.00,0,0),(1,1147,'2016-12-20 17:46:18','2016-12-25',1,35.00,1,0);
/*!40000 ALTER TABLE `products_reserved` ENABLE KEYS */;
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
  `purchase_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `offer_percentage` int(11) NOT NULL,
  `actual_price` float(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_sales`
--

LOCK TABLES `products_sales` WRITE;
/*!40000 ALTER TABLE `products_sales` DISABLE KEYS */;
INSERT INTO `products_sales` VALUES (1,1,50.00,1078,'2016-08-09 19:19:10',0,0.00),(1,1,35.00,1078,'2016-11-15 23:20:00',0,0.00),(28,1,12.00,1078,'2016-11-15 23:21:41',0,0.00),(2,1,40.00,1082,'2016-11-15 23:22:35',0,0.00),(1,1,35.00,1082,'2016-11-15 23:26:06',0,0.00),(44,1,7.00,1082,'2016-11-15 23:28:18',0,0.00),(44,1,7.00,1078,'2016-11-16 11:02:48',0,0.00),(28,1,12.00,1081,'2016-11-26 19:56:03',0,0.00),(45,1,30.00,1078,'2016-11-26 20:02:28',0,0.00),(47,1,25.00,1082,'2016-11-26 20:07:15',0,0.00),(48,1,40.00,1082,'2016-11-26 20:14:22',0,0.00),(28,1,12.00,1082,'2016-11-26 20:27:54',0,0.00),(2,1,40.00,1078,'2016-11-26 20:37:54',0,0.00),(45,1,25.50,1078,'2016-11-29 22:43:23',15,30.00),(2,1,40.00,1258,'2016-12-19 16:19:53',0,40.00),(2,1,40.00,1259,'2016-12-19 16:51:59',0,40.00),(2,1,34.00,1259,'2016-12-19 16:56:16',15,40.00),(2,1,34.00,1259,'2016-12-19 16:57:56',15,40.00),(2,1,34.00,1259,'2016-12-19 16:59:33',15,40.00),(2,1,34.00,1259,'2016-12-19 17:01:37',15,40.00),(2,1,34.00,1259,'2016-12-19 17:09:05',15,40.00),(2,1,34.00,1259,'2016-12-19 17:09:37',15,40.00),(2,1,34.00,1259,'2016-12-19 17:11:20',15,40.00),(2,1,40.00,1085,'2016-12-20 17:35:33',0,40.00),(2,1,40.00,1085,'2016-12-20 17:38:46',0,40.00);
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-23 12:43:39
