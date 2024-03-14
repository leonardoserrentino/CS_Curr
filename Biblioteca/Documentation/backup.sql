-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: localhost    Database: BIBLIOTECA
-- ------------------------------------------------------
-- Server version	8.0.33-0ubuntu0.20.04.2

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
-- Table structure for table `AUTORE`
--

DROP TABLE IF EXISTS `AUTORE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AUTORE` (
  `id` int NOT NULL,
  `nome` varchar(255) NOT NULL,
  `cognome` varchar(255) NOT NULL,
  `dataNascita` date NOT NULL,
  `luogoNascita` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AUTORE`
--

LOCK TABLES `AUTORE` WRITE;
/*!40000 ALTER TABLE `AUTORE` DISABLE KEYS */;
INSERT INTO `AUTORE` VALUES (1,'Fiorenze','Deluca','1984-07-22','Lawrence'),(2,'Alessandro','Oldam','1972-07-09','New York'),(3,'Adamo','Ligoe','1971-03-26','New York'),(4,'Bryanty','Froud','1970-10-30','London'),(5,'Lewes','Salsberg','1988-05-18','Cumberland'),(6,'Quincey','Franke','1964-10-12','Bloomington'),(7,'Inesita','Dallender','1982-04-05','New York'),(8,'Raquel','Semered','1972-03-21','Bloomington'),(9,'Kerri','Adiscot','1980-06-28','Cumberland'),(10,'Barr','Labbet','1967-07-06','Lawrence'),(11,'Godwin','Lebbern','1983-11-16','San Diego'),(12,'Ange','Symcox','1977-07-01','Paris'),(13,'Marja','Rosedale','1989-03-25','New York'),(14,'Pincas','Paulisch','1973-12-24','Berlino'),(15,'Ami','Adamo','1978-08-10','Lawrence'),(16,'Sansone','Jansen','1968-05-12','Lawrence'),(17,'Brynn','Semor','1986-05-09','Oslo'),(18,'Merrick','Harbron','1959-11-09','Pleasantville'),(19,'Petunia','Breznovic','1981-02-19','Prague'),(20,'Enrico','Zimuel','1972-04-11','Milan'),(21,'Luciano','Gamberini','1979-11-08','Rome'),(22,'Erny','Wrixon','1967-02-25','Nashville'),(23,'Corri','Gavrieli','1974-06-30','London'),(24,'Jefferson','Dewire','1971-02-16','Cardiff'),(25,'Lavena','Capey','1972-02-17','Cumberland'),(26,'Hastings','Sweetman','1978-08-13','Los Angeles'),(27,'Cointon','Stranaghan','1963-12-30','New York'),(28,'Fanchon','Bish','1987-08-27','New York'),(29,'Ramez','Elmasri','1970-02-16','Oxford'),(30,'Shamkant','Navathe','1962-11-24','London'),(31,'Sella','Marriage','1988-12-01','Madison'),(32,'Zilvia','Silver','1958-04-25','Nashville'),(33,'Marnie','Spinke','1987-09-07','Los Angeles'),(34,'Cecile','Follacaro','1986-01-08','New York'),(35,'Theo','McLauchlin','1961-03-01','Cardiff'),(36,'Junia','Everal','1973-11-09','Los Angeles'),(37,'Lu','Jenne','1977-01-11','Seul'),(38,'Giustina','Jezzard','1969-02-04','Pleasantville'),(39,'Breanne','Weben','1989-11-13','London'),(40,'Bartolemo','Chadwin','1969-07-22','Pleasantville'),(41,'Jon','Duckett','1978-08-16','Los Angeles'),(42,'Betti','Benz','1977-08-05','Berlino'),(43,'Cristian','Pes','1981-09-10','New York'),(44,'Jermaine','Van Velde','1979-04-23','Los Angeles'),(45,'Perrine','Blagden','1984-01-04','Washington'),(46,'Bruno','Goodsall','1963-04-27','London'),(47,'Hirsch','Legging','1961-12-19','Oxford'),(48,'Walker','Dumberell','1965-12-30','London'),(49,'Shelbi','Wheelton','1987-09-12','Los Angeles'),(50,'Reta','Philippsohn','1966-10-08','Washington'),(51,'Harlene','Tartt','1984-09-20','New York'),(52,'Jodee','Westwick','1968-01-23','Liverpool'),(53,'Margaretha','Aysik','1973-03-18','Washington'),(54,'Merna','Lambal','1969-09-30','London'),(55,'Vitia','Douch','1977-08-20','London'),(56,'Chelsea','Nannetti','1973-04-14','San Diego'),(57,'Gwyneth','Tinsley','1986-05-12','Los Angeles'),(58,'Jacquenette','Snookes','1973-08-07','Lawrence'),(59,'Yancey','Sacher','1961-04-17','Lawrence'),(60,'Sim','Frondt','1967-05-20','Bloomington'),(61,'Abey','Crowest','1965-07-20','New York'),(62,'Ileane','Spurriar','1969-09-03','Los Angeles'),(63,'Andrej','Von Der Empten','1989-12-17','Amsterdam'),(64,'Beverlee','Jepensen','1976-12-17','Cumberland'),(65,'Maible','Twidale','1963-01-29','Bloomington'),(66,'Cal','Inkin','1969-11-22','Oxford'),(67,'Karie','Bendixen','1969-12-29','Amsterdam'),(68,'Jasen','Itter','1967-12-24','Madison'),(69,'Peri','Maher','1967-04-08','Wilpen'),(70,'Burk','Torr','1984-08-01','Bloomington'),(71,'Farrah','Letham','1962-07-15','Oxford'),(72,'Sandro','Wilcher','1990-09-25','Nashville'),(73,'Roxy','Burnage','1955-04-13','Oxford'),(74,'Boycie','Shorey','1989-11-20','Amsterdam'),(75,'Nicki','Pharrow','1984-09-16','Los Angeles'),(76,'Xylia','Bendle','1975-01-01','Cumberland'),(77,'Ursula','Lockitt','1967-12-14','Liverpool'),(78,'Hannah','Bachnic','1956-06-22','Madison'),(79,'Gabriella','Orum','1958-11-21','Madison'),(80,'Gregorius','McPhater','1976-12-04','Pleasantville'),(81,'Hortense','Whatson','1978-08-25','Washington'),(82,'Gil','Lettington','1974-08-11','Los Angeles'),(83,'Briant','Anespie','1989-01-01','Los Angeles'),(84,'Angil','Beckson','1956-05-01','Oxford'),(85,'Giffer','Leisman','1959-05-25','Los Angeles'),(86,'Mirelle','Hehnke','1968-06-25','Los Angeles'),(87,'Eva','Elcum','1956-02-20','Pleasantville'),(88,'Margaretta','Pardal','1970-03-08','New York'),(89,'Merissa','Senechault','1956-02-02','New York'),(90,'Leroy','Vasiltsov','1976-10-13','San Diego'),(91,'Gertrudis','Corzon','1983-06-21','Oxford'),(92,'Rubie','Delgua','1970-06-03','Los Angeles'),(93,'Ludvig','Callf','1971-06-05','London'),(94,'Emiline','Greenhough','1982-04-11','Madison'),(95,'Booth','Belvard','1959-10-11','London'),(96,'Russ','Leander','1959-11-16','Oxford'),(97,'Branden','Huffer','1955-01-03','Bloomington'),(98,'De','Wackly','1989-09-17','Bloomington'),(99,'Alejandrina','Bardell','1962-10-25','Wilpen'),(100,'Isacco','McSherry','1976-04-17','Edimburg');
/*!40000 ALTER TABLE `AUTORE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LIBRO`
--

DROP TABLE IF EXISTS `LIBRO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LIBRO` (
  `id` int NOT NULL,
  `isbn` char(13) NOT NULL,
  `titolo` varchar(255) NOT NULL,
  `annoPubblicazione` int NOT NULL,
  `lingua` varchar(63) NOT NULL,
  `copie` int NOT NULL,
  `succursale` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `isbn` (`isbn`),
  KEY `succursale` (`succursale`),
  CONSTRAINT `LIBRO_ibfk_1` FOREIGN KEY (`succursale`) REFERENCES `SUCCURSALE` (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LIBRO`
--

LOCK TABLES `LIBRO` WRITE;
/*!40000 ALTER TABLE `LIBRO` DISABLE KEYS */;
INSERT INTO `LIBRO` VALUES (1,'387623794-7','Get Smart',2010,'English',4,'Economia e management'),(2,'346481000-3','South of Heaven West of Hell',2015,'English',2,'Scienze chimiche e farmaceutiche'),(3,'068254989-4','Human Failure (Menschliches Versagen)',2014,'English',4,'Scienze biomediche e chirurgico specialistiche'),(4,'502714957-3','Revenge of the Nerds',2019,'Japanese',7,'Ingegneria'),(5,'698429931-4','Lone Ranger The',2011,'Icelandic',7,'Fisica e Scienze della Terra'),(6,'752213396-3','Brides (Nyfes)',2012,'Georgian',4,'Matematica e informatica'),(7,'857627191-5','Larceny Inc',2012,'English',7,'Scienze chimiche e farmaceutiche'),(8,'660038142-6','Stonewall',2016,'Icelandic',6,'Economia e management'),(9,'870560200-9','Eight Crazy Nights (Adam Sandler s Eight Crazy Nights)',2018,'English',6,'Architettura'),(10,'137066182-7','Gone Fishin ',2012,'Georgian',4,'Architettura'),(11,'863050834-5','Richard III',2019,'Chinese',5,'Scienze biomediche e chirurgico specialistiche'),(12,'998941371-1','Stupid Boy (Garçon stupide)',2013,'Italian',6,'Ingegneria'),(13,'368968937-6','Secret Garden The',2014,'English',2,'Giurisprudenza'),(14,'653073623-9','Act Da Fool',2020,'English',4,'Scienze chimiche e farmaceutiche'),(15,'867778553-1','Hot Fuzz',2012,'Polish',7,'Economia e management'),(16,'389625239-9','Get Bruce',2020,'Hebrew',7,'Morfologia chirurgia e medicina sperimentale'),(17,'204897847-9','No Retreat No Surrender 2 Raging Thunder',2019,'Italian',4,'Architettura'),(18,'772713523-2','Back Soon',2013,'English',2,'Matematica e informatica'),(19,'255439894-1','Pitch Black',2015,'English',1,'Matematica e informatica'),(20,'004023598-X','Gingerbread Man The',2012,'Dari',2,'Giurisprudenza'),(21,'661872594-1','Woman on the Beach (Haebyeonui yeoin)',2020,'English',3,'Fisica e Scienze della Terra'),(22,'666013383-6','Lost City The',2014,'English',4,'Scienze della vita e biotecnologie'),(23,'165632171-8','Paradise Lost 2 Revelations',2010,'Italian',1,'Economia e management'),(24,'425111017-X','Key Largo',2019,'Estonian',2,'Scienze biomediche e chirurgico specialistiche'),(25,'507124152-8','Diplomacy (Diplomatie)',2019,'French',2,'Economia e management'),(26,'435456826-8','Lavender Hill Mob The',2016,'English',6,'Scienze chimiche e farmaceutiche'),(27,'851106761-2','Chronicle of a Summer (Chronique d un été)',2019,'Italian',5,'Fisica e Scienze della Terra'),(28,'301170811-8','Such Is Life (Así es la vida)',2019,'English',2,'Fisica e Scienze della Terra'),(29,'214940353-6','Tenchi The Samurai Astronomer',2018,'English',3,'Fisica e Scienze della Terra'),(30,'351898785-2','Boys from Fengkuei The (Feng gui lai de ren)',2016,'Portuguese',3,'Scienze della vita e biotecnologie'),(31,'887526619-0','Thieves The (Dodookdeul)',2011,'Romanian',5,'Matematica e informatica'),(32,'618325112-7','Blackmailed',2013,'Czech',4,'Ingegneria'),(33,'670271351-7','Cocaine Cowboys II Hustlin  With the Godmother',2011,'Indonesian',4,'Architettura'),(34,'814543114-X','Ingeborg Holm',2013,'English',7,'Fisica e Scienze della Terra'),(35,'601546113-6','1208 East of Bucharest (A fost sau n-a fost?)',2011,'Gujarati',2,'Scienze chimiche e farmaceutiche'),(36,'501862280-6','Redemption The Stan Tookie Williams Story',2011,'Finnish',3,'Scienze chimiche e farmaceutiche'),(37,'050916783-7','Inspectors The',2017,'Catalan',3,'Fisica e Scienze della Terra'),(38,'265972215-3','Animal House',2017,'English',2,'Scienze biomediche e chirurgico specialistiche'),(39,'848202184-2','Red Riding 1983',2019,'English',6,'Fisica e Scienze della Terra'),(40,'927994979-9','Missionary Man',2017,'Dhivehi',4,'Scienze biomediche e chirurgico specialistiche'),(41,'296111646-5','Golem',2019,'Japanese',2,'Fisica e Scienze della Terra'),(42,'829914597-X','Project X',2019,'English',1,'Scienze chimiche e farmaceutiche'),(43,'786395256-5','Dragon Ball Z Bio-Broly (Doragon bôru Z 11 Sûpâ senshi gekiha! Katsu no wa ore da)',2019,'English',3,'Morfologia chirurgia e medicina sperimentale'),(44,'970334328-7','Forbidden Christ The (Cristo proibito Il)',2019,'Danish',3,'Scienze chimiche e farmaceutiche'),(45,'086031288-7','Stingray Sam',2019,'Polish',7,'Scienze chimiche e farmaceutiche'),(46,'763200529-3','Inspector Palmu s Error (Komisario Palmun erehdys)',2016,'English',6,'Fisica e Scienze della Terra'),(47,'510453377-8','Streetcar Named Desire A',2013,'English',2,'Ingegneria'),(48,'290005808-2','World of Kanako The (Kawaki)',2020,'Lao',1,'Giurisprudenza'),(49,'085745713-6','Suit for Wedding A (aka The Wedding Suit) (Lebassi Baraye Arossi)',2020,'English',1,'Morfologia chirurgia e medicina sperimentale'),(50,'364615054-8','Human-computer interaction',2017,'English',3,'Economia e management'),(51,'775940054-3','I m Reed Fish',2017,'Kashmiri',3,'Scienze della vita e biotecnologie'),(52,'925812482-0','Kumail Nanjiani Beta Male ',2010,'German',6,'Economia e management'),(53,'584224789-5','Teaching Mrs Tingle',2020,'English',7,'Scienze della vita e biotecnologie'),(54,'354835830-6','Always',2015,'Catalan',5,'Giurisprudenza'),(55,'285192251-3','Delta',2011,'English',6,'Economia e management'),(56,'386397507-3','Gunfighter The',2013,'Albanian',4,'Architettura'),(57,'733508116-5','Angels  Share The',2017,'English',2,'Scienze chimiche e farmaceutiche'),(58,'801081738-4','Murder by Proxy How America Went Postal',2019,'English',7,'Morfologia chirurgia e medicina sperimentale'),(59,'560797299-2','Arthur and the Revenge of Maltazard (Arthur et la vengeance de Maltazard)',2017,'English',7,'Architettura'),(60,'492112694-1','Closure',2018,'English',4,'Matematica e informatica'),(61,'182342356-6','Meet Joe Black',2011,'Japanese',5,'Giurisprudenza'),(62,'299282269-8','Scenic Route',2015,'English',1,'Ingegneria'),(63,'055417113-9','Private Detective 62',2017,'English',6,'Scienze chimiche e farmaceutiche'),(64,'101215590-0','Cars',2012,'English',3,'Scienze biomediche e chirurgico specialistiche'),(65,'951964371-0','Iron Mask The',2014,'Bengali',4,'Economia e management'),(66,'469785019-X','Wave The (Welle Die)',2014,'English',3,'Matematica e informatica'),(67,'368990830-2','Andrei Rublev (Andrey Rublyov)',2017,'English',4,'Architettura'),(68,'300485539-9','Wild River',2012,'Dzongkha',5,'Scienze della vita e biotecnologie'),(69,'976860084-5','Krrish',2016,'English',7,'Scienze biomediche e chirurgico specialistiche'),(70,'147191251-5','You Only Live Once',2018,'Dari',6,'Giurisprudenza'),(71,'076691563-8','Bed & Breakfast Love is a Happy Accident (Bed & Breakfast)',2018,'Dari',4,'Fisica e Scienze della Terra'),(72,'860964250-X','Iron Horse The',2013,'Japanese',1,'Scienze della vita e biotecnologie'),(73,'384050463-5','Ninotchka',2017,'Quechua',1,'Scienze biomediche e chirurgico specialistiche'),(74,'158999545-7','Rains of Ranchipur The',2012,'English',6,'Matematica e informatica'),(75,'136964378-0','Maniac',2013,'English',4,'Ingegneria'),(76,'194862546-6','Dakota Skye',2011,'English',6,'Giurisprudenza'),(77,'129488690-8','Family Tree',2017,'English',1,'Fisica e Scienze della Terra'),(78,'432587582-4','Rebecca',2015,'Swedish',5,'Ingegneria'),(79,'515279116-1','The Frame',2010,'English',7,'Scienze chimiche e farmaceutiche'),(80,'825867311-4','Kairat',2013,'Hiri Motu',5,'Economia e management'),(81,'712463375-3','Fear',2012,'English',3,'Architettura'),(82,'536751983-0','Slaves to the Underground',2014,'French',1,'Architettura'),(83,'284203566-6','Trial',2013,'Korean',3,'Ingegneria'),(84,'175205668-X','Gasoline (Benzina)',2019,'English',4,'Architettura'),(85,'672217513-8','Heaven s Prisoners',2014,'Bengali',3,'Scienze della vita e biotecnologie'),(86,'607745120-7','HTM & CSS',2018,'Italian',3,'Architettura'),(87,'611928800-7','Cyrano de Bergerac',2017,'Korean',7,'Morfologia chirurgia e medicina sperimentale'),(88,'226372696-9','State of Siege (État de siège)',2013,'Hindi',5,'Architettura'),(89,'083845517-4','Memory',2014,'Punjabi',7,'Ingegneria'),(90,'184722570-5','Ironclad',2011,'Kashmiri',1,'Scienze chimiche e farmaceutiche'),(91,'653175736-1','Happy People A Year in the Taiga',2012,'Swedish',4,'Scienze biomediche e chirurgico specialistiche'),(92,'989371762-0','Convoy',2015,'German',3,'Matematica e informatica'),(93,'521329516-9','Général Idi Amin Dada A Self Portrait (Général Idi Amin Dada Autoportrait)',2015,'English',7,'Scienze chimiche e farmaceutiche'),(94,'087133062-8','Come Blow Your Horn',2013,'English',4,'Matematica e informatica'),(95,'517581126-6','Carmen Comes Home (Karumen kokyo ni kaeru)',2020,'Hindi',3,'Economia e management'),(96,'023019395-1','Heroine',2013,'Dzongkha',3,'Morfologia chirurgia e medicina sperimentale'),(97,'441842932-8','Luna de Avellaneda',2018,'Guaraní',5,'Ingegneria'),(98,'742437654-3','Under the Bridges (Unter den Brücken)',2016,'Swedish',1,'Scienze chimiche e farmaceutiche'),(99,'760264513-8','Story of My Life The (Mensonges et trahisons et plus si affinités)',2012,'English',3,'Scienze biomediche e chirurgico specialistiche'),(100,'171208472-0','The Fourth War',2020,'English',6,'Giurisprudenza'),(101,'009047587-9','Life of Another The (La vie d une autre)',2015,'English',4,'Ingegneria'),(102,'372098427-3','Sergeant Rutledge',2011,'Arabic',2,'Scienze chimiche e farmaceutiche'),(103,'449571196-2','Black Windmill The',2013,'English',1,'Matematica e informatica'),(104,'362309208-8','Nicholas on Holiday',2018,'English',3,'Giurisprudenza'),(105,'457456450-4','Beefcake',2016,'Aymara',6,'Architettura'),(106,'369048652-1','Oliver Twist',2020,'Guaraní',7,'Architettura'),(107,'190222315-2','Salvage',2014,'Belarusian',5,'Scienze chimiche e farmaceutiche'),(108,'945660604-X','Cassandra Crossing The',2016,'Arabic',2,'Scienze della vita e biotecnologie'),(109,'711604128-1','Crocodile Hunter Collision Course The',2014,'English',2,'Scienze della vita e biotecnologie'),(110,'465297052-8','Abbott and Costello Meet the Killer Boris Karloff',2016,'English',7,'Scienze chimiche e farmaceutiche'),(111,'836374770-X','Wolf Man The',2013,'Indonesian',5,'Scienze biomediche e chirurgico specialistiche'),(112,'509808775-9','Vehicle 19',2013,'English',3,'Economia e management'),(113,'595626866-2','Rollerball',2014,'Hungarian',3,'Morfologia chirurgia e medicina sperimentale'),(114,'168316748-1','Carbon Nation',2012,'Portuguese',6,'Morfologia chirurgia e medicina sperimentale'),(115,'744780754-0','Times Square',2020,'English',5,'Morfologia chirurgia e medicina sperimentale'),(116,'594275024-6','Memory Keeper s Daughter The',2012,'English',5,'Ingegneria'),(117,'992229254-8','And Nobody Weeps for Me (Und keiner weint mir nach)',2017,'Italian',7,'Giurisprudenza'),(118,'560211284-7','Tyler Perry s I Can Do Bad All by Myself',2018,'Italian',4,'Morfologia chirurgia e medicina sperimentale'),(119,'179592990-1','Day of the Triffids The',2011,'English',3,'Scienze biomediche e chirurgico specialistiche'),(120,'663119553-5','Deadline',2015,'Spanish',3,'Morfologia chirurgia e medicina sperimentale'),(121,'521847642-0','Holy Flying Circus',2016,'English',3,'Scienze chimiche e farmaceutiche'),(122,'190401007-5','Mala Noche',2017,'Northern Sotho',7,'Scienze biomediche e chirurgico specialistiche'),(123,'288231977-0','Tracks',2010,'Icelandic',5,'Scienze biomediche e chirurgico specialistiche'),(124,'103300276-3','Sound of Music The',2019,'Khmer',4,'Giurisprudenza'),(125,'671158165-2','Nick and Norah s Infinite Playlist',2019,'Czech',7,'Matematica e informatica'),(126,'292051296-X','Purple Rose of Cairo The',2013,'Guaraní',2,'Fisica e Scienze della Terra'),(127,'000369692-8','Thief of Hearts',2016,'English',5,'Scienze della vita e biotecnologie'),(128,'769740772-8','Hollywood Party',2018,'English',7,'Morfologia chirurgia e medicina sperimentale'),(129,'946684198-X','Absolute Power',2016,'Czech',5,'Architettura'),(130,'264788349-1','In the Park',2018,'Haitian Creole',1,'Scienze chimiche e farmaceutiche'),(131,'421128511-4','Life is to Whistle (Vida es silbar La)',2012,'English',4,'Morfologia chirurgia e medicina sperimentale'),(132,'843331705-9','Avengers The',2012,'Bengali',4,'Architettura'),(133,'978061177-0','Kirikou and the Wild Beast (Kirikou et les bêtes sauvages)',2010,'Khmer',1,'Morfologia chirurgia e medicina sperimentale'),(134,'368515943-7','Love s Labour s Lost',2011,'Czech',3,'Scienze chimiche e farmaceutiche'),(135,'075305079-X','Attack of the 50 Foot Woman',2010,'Danish',5,'Economia e management'),(136,'014330257-4','Longest Yard The',2010,'Georgian',5,'Matematica e informatica'),(137,'331424241-7','PHP 7 development',2015,'Italian',7,'Fisica e Scienze della Terra'),(138,'436501926-0','Great Expectations',2013,'Catalan',1,'Architettura'),(139,'222223087-X','Concrete Night (Betoniyö)',2010,'Irish Gaelic',3,'Ingegneria'),(140,'385828979-5','Deep Impact',2019,'Bengali',5,'Scienze biomediche e chirurgico specialistiche'),(141,'516983356-3','Big Squeeze The',2014,'English',6,'Scienze della vita e biotecnologie'),(142,'253760945-X','Red White & Blue',2016,'English',7,'Giurisprudenza'),(143,'167947701-3','Saboteur',2014,'English',2,'Architettura'),(144,'015674765-0','Children Are Watching Us The (Bambini ci guardano I)',2018,'English',2,'Giurisprudenza'),(145,'391578830-9','Flight of the Living Dead',2014,'Kazakh',3,'Scienze biomediche e chirurgico specialistiche'),(146,'065646345-7','Phil Spector',2020,'Irish Gaelic',6,'Fisica e Scienze della Terra'),(147,'259418123-4','Inhale',2011,'English',3,'Scienze chimiche e farmaceutiche'),(148,'756564271-1','Little Children',2014,'English',5,'Scienze della vita e biotecnologie'),(149,'192373118-1','No Distance Left to Run',2019,'English',5,'Matematica e informatica'),(150,'131544489-5','Addams Family The',2019,'English',1,'Giurisprudenza'),(151,'872379238-8','From Above',2018,'English',1,'Architettura'),(152,'216013488-0','Enemy',2012,'Arabic',3,'Economia e management'),(153,'259579784-0','Waydowntown',2018,'English',1,'Morfologia chirurgia e medicina sperimentale'),(154,'052706515-3','Dead Man Walking',2011,'English',1,'Scienze biomediche e chirurgico specialistiche'),(155,'526942871-7','Agent Vinod',2017,'Catalan',1,'Giurisprudenza'),(156,'280992700-6','Young Cassidy',2018,'German',2,'Giurisprudenza'),(157,'835266674-6','A Viking Saga The Darkest Day',2012,'Hindi',6,'Morfologia chirurgia e medicina sperimentale'),(158,'875127371-3','Million Ways to Die in the West A',2014,'Norwegian',2,'Scienze della vita e biotecnologie'),(159,'256739345-5','High Spirits',2016,'Swedish',7,'Scienze biomediche e chirurgico specialistiche'),(160,'672560381-5','Day the Universe Changed The',2018,'Northern Sotho',6,'Giurisprudenza'),(161,'144577227-2','Captain America The First Avenger',2020,'English',2,'Scienze biomediche e chirurgico specialistiche'),(162,'565659819-5','Strangers on a Train',2014,'Dutch',4,'Architettura'),(163,'170243376-5','Buddy',2015,'English',6,'Scienze della vita e biotecnologie'),(164,'009140312-X','Death Defying Acts',2017,'Dhivehi',2,'Fisica e Scienze della Terra'),(165,'333748888-9','History Boys The',2017,'Catalan',3,'Economia e management'),(166,'585173205-9','Battle Royale 2 Requiem (Batoru rowaiaru II Chinkonka)',2018,'English',6,'Economia e management'),(167,'006821799-4','Counterfeiters The (Die Fälscher)',2018,'Estonian',5,'Scienze chimiche e farmaceutiche'),(168,'376459959-6','Svidd Neger',2018,'English',3,'Economia e management'),(169,'404884623-X','Altman',2010,'Czech',7,'Giurisprudenza'),(170,'335294364-8','Incredibly Strange Creatures Who Stopped Living and Became Mixed-Up Zombies!!? The',2018,'Italian',4,'Matematica e informatica'),(171,'060088686-7','Mondays in the Sun (Lunes al sol Los)',2019,'English',3,'Scienze chimiche e farmaceutiche'),(172,'829509196-4','Shaka Zulu The Citadel',2014,'Swedish',3,'Scienze della vita e biotecnologie'),(173,'947990234-6','Peculiarities of the National Hunt (Osobennosti natsionalnoy okhoty) ',2019,'English',5,'Economia e management'),(174,'966859767-2','Sting II The',2020,'English',5,'Scienze chimiche e farmaceutiche'),(175,'554021569-9','Renaissance',2018,'English',4,'Morfologia chirurgia e medicina sperimentale'),(176,'343838580-5','Jubilee',2015,'English',7,'Ingegneria'),(177,'405663612-5','Open Windows',2015,'English',1,'Economia e management'),(178,'356414253-3','Elizabeth',2012,'English',4,'Scienze della vita e biotecnologie'),(179,'421308038-2','LA Without a Map',2014,'English',6,'Architettura'),(180,'022938411-0','Almanya - Welcome to Germany (Almanya - Willkommen in Deutschland)',2014,'Guaraní',1,'Morfologia chirurgia e medicina sperimentale'),(181,'687448355-2','City Hall',2019,'English',3,'Scienze biomediche e chirurgico specialistiche'),(182,'768148078-1','Kleines Arschloch - Der Film',2017,'Korean',2,'Morfologia chirurgia e medicina sperimentale'),(183,'347737564-5','Last Ride',2019,'Haitian Creole',4,'Matematica e informatica'),(184,'659332931-2','Starflight The Plane That Couldn t Land',2016,'Italian',6,'Scienze chimiche e farmaceutiche'),(185,'740153355-3','Fundamentals of Database Systems',2019,'Italian',4,'Economia e management'),(186,'469863297-8','Raisin in the Sun A',2015,'Punjabi',2,'Ingegneria'),(187,'366292343-2','Boys of St Vincent The',2013,'English',3,'Architettura'),(188,'600597433-5','Wall Street',2020,'English',5,'Morfologia chirurgia e medicina sperimentale'),(189,'371268896-2','19th Wife The',2016,'Belarusian',3,'Ingegneria'),(190,'271280652-2','Shuttle',2017,'English',5,'Giurisprudenza'),(191,'093035174-6','Doc Savage The Man of Bronze',2015,'English',1,'Fisica e Scienze della Terra'),(192,'394873350-3','Family Life',2014,'English',2,'Fisica e Scienze della Terra'),(193,'136320382-7','Mon oncle d Amérique',2017,'English',2,'Matematica e informatica'),(194,'132261731-7','The Dark Horse',2018,'Guaraní',4,'Fisica e Scienze della Terra'),(195,'685607790-4','My Bloody Valentine',2014,'Danish',3,'Scienze biomediche e chirurgico specialistiche'),(196,'127368309-9','Breakdown',2011,'Chinese',7,'Scienze biomediche e chirurgico specialistiche'),(197,'542931356-4','From the Life of the Marionettes (Aus dem Leben der Marionetten) ',2015,'Italian',3,'Ingegneria'),(198,'816886703-3','Split Second',2012,'Italian',5,'Giurisprudenza'),(199,'657583349-7','Knack and How to Get It The',2015,'English',1,'Architettura');
/*!40000 ALTER TABLE `LIBRO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRESTITO`
--

DROP TABLE IF EXISTS `PRESTITO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PRESTITO` (
  `id` int NOT NULL,
  `dataPrestito` date NOT NULL,
  `dataRestituzione` date DEFAULT NULL,
  `studente` int NOT NULL,
  `libro` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `studente` (`studente`),
  KEY `libro` (`libro`),
  CONSTRAINT `PRESTITO_ibfk_1` FOREIGN KEY (`studente`) REFERENCES `STUDENTE` (`matricola`),
  CONSTRAINT `PRESTITO_ibfk_2` FOREIGN KEY (`libro`) REFERENCES `LIBRO` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRESTITO`
--

LOCK TABLES `PRESTITO` WRITE;
/*!40000 ALTER TABLE `PRESTITO` DISABLE KEYS */;
INSERT INTO `PRESTITO` VALUES (1,'2023-06-10','2023-01-15',180043,2),(2,'2023-06-15','2023-06-25',180043,10),(3,'2023-02-15','2023-02-23',176543,12),(4,'2023-03-02','2023-04-12',176543,13),(5,'2023-03-15','2023-03-28',135791,143),(6,'2023-03-08','2023-04-30',135791,5),(7,'2023-04-02','2023-05-04',123456,18),(8,'2023-06-06',NULL,165432,160),(9,'2023-07-10',NULL,162534,193),(10,'2023-07-12',NULL,123132,23);
/*!40000 ALTER TABLE `PRESTITO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCRITTO`
--

DROP TABLE IF EXISTS `SCRITTO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SCRITTO` (
  `autore` int NOT NULL,
  `libro` int NOT NULL,
  PRIMARY KEY (`autore`,`libro`),
  KEY `libro` (`libro`),
  CONSTRAINT `SCRITTO_ibfk_1` FOREIGN KEY (`autore`) REFERENCES `AUTORE` (`id`),
  CONSTRAINT `SCRITTO_ibfk_2` FOREIGN KEY (`libro`) REFERENCES `LIBRO` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCRITTO`
--

LOCK TABLES `SCRITTO` WRITE;
/*!40000 ALTER TABLE `SCRITTO` DISABLE KEYS */;
INSERT INTO `SCRITTO` VALUES (52,1),(76,1),(89,1),(29,2),(33,3),(84,3),(5,4),(9,4),(23,4),(65,5),(80,5),(88,5),(98,5),(26,6),(47,6),(52,6),(11,7),(25,7),(54,7),(90,7),(58,8),(80,9),(12,10),(18,11),(77,11),(90,11),(80,12),(63,13),(72,13),(75,13),(93,13),(19,14),(30,15),(67,15),(40,16),(83,19),(95,19),(11,20),(40,20),(56,20),(76,20),(57,21),(93,21),(17,22),(47,22),(67,22),(69,22),(72,22),(76,22),(93,22),(43,23),(28,24),(44,24),(76,24),(5,25),(11,25),(26,25),(42,25),(68,25),(73,25),(1,26),(45,26),(36,27),(43,27),(60,27),(75,28),(84,28),(32,29),(66,29),(71,30),(82,30),(4,31),(8,31),(39,31),(77,31),(80,31),(3,34),(68,34),(49,35),(90,35),(29,36),(51,37),(53,37),(22,38),(45,38),(10,40),(28,40),(20,41),(24,41),(38,41),(58,41),(85,41),(5,42),(84,42),(99,42),(18,43),(24,43),(34,43),(22,44),(37,44),(40,44),(57,44),(62,44),(86,44),(3,45),(64,45),(71,47),(91,47),(94,47),(83,48),(9,49),(4,50),(19,50),(24,50),(18,51),(32,51),(25,52),(38,52),(49,52),(57,52),(63,52),(96,52),(20,53),(43,53),(53,53),(61,53),(47,56),(54,56),(66,56),(81,56),(14,57),(79,58),(97,58),(50,59),(26,60),(35,60),(52,60),(25,61),(32,61),(35,61),(51,61),(31,62),(53,62),(60,62),(79,62),(8,63),(11,63),(3,64),(20,64),(49,64),(88,64),(97,64),(93,65),(23,66),(64,66),(91,66),(43,67),(46,67),(68,67),(74,67),(10,68),(52,68),(96,68),(9,69),(20,69),(25,69),(29,69),(45,69),(46,69),(47,69),(62,69),(64,69),(84,69),(11,70),(43,70),(89,70),(67,71),(43,72),(65,72),(66,72),(78,72),(79,72),(3,73),(15,73),(40,73),(77,73),(77,74),(89,74),(30,75),(74,75),(78,76),(61,77),(93,77),(5,78),(65,78),(80,78),(2,79),(21,79),(49,79),(65,79),(69,79),(72,79),(77,79),(99,79),(43,80),(47,80),(90,80),(9,81),(59,81),(17,82),(46,82),(81,82),(60,83),(67,83),(92,83),(45,84),(65,84),(92,84),(18,85),(21,85),(16,86),(77,86),(59,87),(3,88),(9,88),(31,88),(53,88),(72,88),(70,89),(16,90),(17,90),(80,90),(15,91),(29,91),(81,91),(100,91),(4,92),(33,92),(65,92),(95,92),(13,93),(46,93),(74,93),(29,94),(45,94),(43,95),(91,95),(7,96),(16,96),(33,96),(74,96),(85,97),(92,97),(96,97),(44,98),(13,99),(33,99),(11,100),(7,101),(80,101),(13,102),(23,102),(83,102),(29,103),(52,104),(17,105),(32,105),(85,105),(88,105),(100,105),(37,106),(100,106),(63,107),(73,107),(27,108),(31,108),(66,108),(75,108),(85,108),(43,109),(50,109),(59,109),(40,111),(52,111),(72,111),(88,112),(7,113),(70,113),(1,114),(13,114),(27,114),(8,115),(29,115),(81,115),(40,116),(42,116),(46,116),(67,116),(39,117),(47,117),(99,117),(10,118),(74,118),(28,119),(30,119),(4,120),(9,121),(34,121),(41,124),(62,124),(86,124),(34,125),(44,125),(60,126),(42,127),(44,127),(59,127),(11,128),(23,128),(33,128),(60,128),(4,129),(10,129),(51,129),(7,130),(25,130),(65,130),(31,131),(51,131),(94,131),(95,131),(39,132),(61,132),(72,132),(8,133),(92,133),(32,134),(34,134),(60,135),(31,136),(67,136),(3,137),(53,137),(88,137),(45,138),(87,138),(93,139),(17,140),(38,140),(43,140),(54,140),(81,140),(84,140),(29,141),(3,142),(45,142),(46,142),(23,143),(82,143),(86,143),(12,144),(41,144),(59,144),(77,145),(6,146),(34,146),(48,146),(60,146),(84,146),(16,147),(26,148),(56,148),(84,148),(14,149),(15,149),(1,150),(38,150),(29,151),(31,151),(52,151),(60,151),(62,151),(64,151),(90,151),(1,152),(5,152),(26,152),(44,152),(48,153),(60,153),(62,153),(55,154),(57,154),(61,154),(33,155),(54,155),(56,155),(63,155),(97,155),(2,156),(21,156),(27,156),(4,158),(67,158),(74,158),(92,158),(46,159),(51,159),(10,160),(18,160),(27,160),(30,160),(48,160),(51,160),(66,160),(98,160),(7,162),(17,162),(28,162),(33,162),(69,163),(19,164),(66,164),(86,164),(21,165),(45,165),(17,166),(22,166),(79,166),(50,167),(62,167),(96,167),(26,168),(34,168),(36,168),(96,168),(10,169),(38,169),(55,169),(59,169),(95,169),(12,171),(60,171),(89,171),(54,172),(99,172),(12,173),(41,173),(64,173),(21,174),(73,174),(1,175),(52,175),(74,175),(86,175),(39,176),(62,176),(74,176),(91,176),(92,176),(9,177),(30,177),(36,177),(39,177),(44,177),(93,177),(8,178),(22,178),(54,178),(62,179),(74,179),(91,179),(4,180),(82,180),(89,180),(55,182),(51,183),(82,183),(92,183),(31,185),(36,185),(52,185),(1,186),(26,186),(35,187),(41,187),(96,187),(68,188),(83,189),(99,189),(42,190),(50,190),(51,190),(96,190),(8,191),(20,191),(29,191),(33,191),(3,192),(56,192),(64,192),(93,192),(46,193),(89,193),(44,194),(47,194),(76,194),(96,194),(16,197),(47,197),(65,197),(70,197),(94,197),(18,198),(39,198),(34,199),(70,199);
/*!40000 ALTER TABLE `SCRITTO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STUDENTE`
--

DROP TABLE IF EXISTS `STUDENTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STUDENTE` (
  `matricola` int NOT NULL,
  `nome` varchar(255) NOT NULL,
  `cognome` varchar(255) NOT NULL,
  `citta` varchar(63) NOT NULL,
  `cap` char(5) NOT NULL,
  `via` varchar(255) NOT NULL,
  `numeroCivico` varchar(31) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  PRIMARY KEY (`matricola`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STUDENTE`
--

LOCK TABLES `STUDENTE` WRITE;
/*!40000 ALTER TABLE `STUDENTE` DISABLE KEYS */;
INSERT INTO `STUDENTE` VALUES (123132,'Oscar','Pinato','Ferrara','44126','Via Denia','11','312-9364109'),(123456,'Natiel','Pascal','Ferrara','44121','Via Padova','88','364-0239475'),(134217,'Kiciapo','Ciapo','Ferrara','44129','Via Lertini','33','334-6290238'),(135791,'Marta','Rossa','Ferrara','44125','Via Firenze','77','327-0174398'),(146802,'Lara','Pinato','Ferrara','44128','Via Lisippo','12','346-0121387'),(162534,'Dario','Lampa','Ferrara','44122','Via Mayr','10','345-1936478'),(165432,'Tae','Kwondo','Ferrara','44123','Via Ponchia','99','387-1046578'),(167435,'Mario','Rossi','Ferrara','44121','Via Giglio','35','367-8346736'),(176543,'Giulio','Rossi','Ferrara','44123','Via Cavour','6','382-2936104'),(180043,'Mario','Rossi','Ferrara','44122','Via Roma','1','354-8756291'),(198456,'Carlo','Vaccari','Ferrara','44121','Via Paleocapa','95','338-8667155');
/*!40000 ALTER TABLE `STUDENTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SUCCURSALE`
--

DROP TABLE IF EXISTS `SUCCURSALE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SUCCURSALE` (
  `nome` varchar(255) NOT NULL,
  `citta` varchar(63) NOT NULL,
  `cap` char(5) NOT NULL,
  `via` varchar(255) NOT NULL,
  `nCivico` varchar(31) NOT NULL,
  PRIMARY KEY (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SUCCURSALE`
--

LOCK TABLES `SUCCURSALE` WRITE;
/*!40000 ALTER TABLE `SUCCURSALE` DISABLE KEYS */;
INSERT INTO `SUCCURSALE` VALUES ('Architettura','Ferrara','44121','Via Ghiara','36'),('Economia e management','Ferrara','44121','Via Voltapaletto','11'),('Fisica e Scienze della Terra','Ferrara','44122','Via Saragat','1'),('Giurisprudenza','Ferrara','44121','Corso Ercole I d\'Este','37'),('Ingegneria','Ferrara','44122','Via Saragat','1'),('Matematica e informatica','Ferrara','44121','Via Machiavelli','30'),('Morfologia chirurgia e medicina sperimentale','Ferrara','44121','Via Luigi Borsari','46'),('Scienze biomediche e chirurgico specialistiche','Ferrara','44121','Via Luigi Borsari','46'),('Scienze chimiche e farmaceutiche','Ferrara','44121','Via Luigi Borsari','46'),('Scienze della vita e biotecnologie','Ferrara','44121','Via Luigi Borsari','46'),('Scienze mediche','Ferrara','44121','Via Fossato di Mortara','64/B'),('Studi umanistici','Ferrara','44121','Via Paradiso','12');
/*!40000 ALTER TABLE `SUCCURSALE` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-21 18:28:08
