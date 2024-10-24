-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: java405_team3
-- ------------------------------------------------------
-- Server version	8.4.0

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
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `visit_cnt` int NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `updated_at` datetime(6) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `category` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `warning` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKfyf1fchnby6hndhlfaidier1r` (`user_id`),
  CONSTRAINT `FKfyf1fchnby6hndhlfaidier1r` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (5,'2024-08-05 17:22:29.638319',16,'2024-08-11 20:48:57.677694',2,'자유','dsfasdfasdf','adasdasd',''),(2,'2024-08-05 17:24:07.097781',20,'2024-08-11 21:11:38.594965',2,'자유','12312354324','자유 251245',''),(2,'2024-08-05 17:24:07.134888',22,'2024-08-11 21:46:48.441118',2,'자유','12312354324','자유 251245','warning'),(0,'2024-08-05 17:24:07.158691',23,'2024-08-05 17:24:07.158691',2,'자유','12312354324','자유 251245',''),(4,'2024-08-05 17:24:07.379103',24,'2024-08-11 21:14:58.747165',2,'자유','12312354324','자유 251245',''),(1,'2024-08-11 21:12:17.432263',33,'2024-08-11 21:12:19.077999',1,'공지','공지공지공지공지공지공지공지공지공지','공지1',NULL),(0,'2024-08-11 21:12:54.960069',34,'2024-08-11 21:12:54.960069',1,'공지','공지공지공지공지공지공지공지공지공지공지공지공지공지공지공지공지공지공지공지','공지2',NULL),(0,'2024-08-11 21:14:44.643283',38,'2024-08-11 21:14:44.643283',1,'리뷰','리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰','리뷰1','spoiler'),(3,'2024-08-11 21:27:03.757330',39,'2024-08-11 21:27:31.974454',1,'자유','수정된 내','수정된 제목123','spoiler');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_comment`
--

DROP TABLE IF EXISTS `board_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `board_id` bigint DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `contents` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKke01v1gkigv4065kfl3aavje6` (`board_id`),
  KEY `FK2w8mwltvfxebfwmreqg2q0x2a` (`user_id`),
  CONSTRAINT `FK2w8mwltvfxebfwmreqg2q0x2a` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKke01v1gkigv4065kfl3aavje6` FOREIGN KEY (`board_id`) REFERENCES `board` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_comment`
--

LOCK TABLES `board_comment` WRITE;
/*!40000 ALTER TABLE `board_comment` DISABLE KEYS */;
INSERT INTO `board_comment` VALUES (10,24,'2024-08-11 17:10:51.212693','2024-08-11 17:10:51.212693',1,'댓글 123123'),(13,39,'2024-08-11 21:27:31.956938','2024-08-11 21:27:31.956938',1,'댓글');
/*!40000 ALTER TABLE `board_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_like`
--

DROP TABLE IF EXISTS `board_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_like` (
  `board_id` bigint DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `like_yn` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKk7rxm8vl1ptqqhwdj2sjmlpvq` (`board_id`),
  KEY `FKpf406vodal6lejcg4fkwcjr2o` (`user_id`),
  CONSTRAINT `FKk7rxm8vl1ptqqhwdj2sjmlpvq` FOREIGN KEY (`board_id`) REFERENCES `board` (`id`),
  CONSTRAINT `FKpf406vodal6lejcg4fkwcjr2o` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_like`
--

LOCK TABLES `board_like` WRITE;
/*!40000 ALTER TABLE `board_like` DISABLE KEYS */;
INSERT INTO `board_like` VALUES (20,50,2,'Y'),(16,51,2,'Y'),(24,52,1,'Y'),(39,55,1,'Y');
/*!40000 ALTER TABLE `board_like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director`
--

DROP TABLE IF EXISTS `director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `director` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director`
--

LOCK TABLES `director` WRITE;
/*!40000 ALTER TABLE `director` DISABLE KEYS */;
INSERT INTO `director` VALUES (1,'감독 미상'),(2,'마이클 파웰'),(3,'라브 레터먼'),(4,'김세인'),(5,'Norman Law Man'),(6,'찰스 재롯'),(7,'루이스 로사'),(8,'앤디 밋튼'),(9,'얀 사스카'),(10,'제임스 오'),(11,'이진우'),(12,'류성훈'),(13,'계장혁'),(14,'Ngai Choi Lam'),(15,'김동민'),(16,'남현미'),(17,'신지훈'),(18,'조은지'),(19,'원미소'),(20,'홍수민'),(21,'이필립'),(22,'배성균'),(23,'황호윤'),(24,'Chou Tan'),(25,'이영아'),(26,'조미혜'),(27,'정희재'),(28,'김진욱'),(29,'알란 J. 파큘라'),(30,'요크 샤클톤'),(31,'Chin-Lai Sung'),(32,'박신우'),(33,'야첵 보에르추크'),(34,'이아린'),(35,'오재형'),(36,'Dale Hall Jr.'),(37,'서영수'),(38,'제리 샤츠버그'),(39,'James Whitmore Jr.'),(40,'James Ingrassia'),(41,'민이'),(42,'다렐 루츠'),(43,'에릭 짐머만'),(44,'조세프 머히'),(45,'옹유전'),(46,'Stephen Smoke'),(47,'Feng Kai'),(48,'마츠모토 토시오'),(49,'James Signorelli'),(50,'Michael Ray Rhodes'),(51,'조태호'),(52,'우테 폰 뮌쇼폴'),(53,'표트르 일리치 차이콥스키'),(54,'Michael MacCarthy'),(55,'마메자와 마메타로'),(56,'피아 보그'),(57,'벌라쥐 시모니'),(58,'아루나스 마텔리스'),(59,'후안 레이나'),(60,'Ao Hsin Chin'),(61,'크리스 헬튼'),(62,'프리비오 모게리니'),(63,'박재인'),(64,'이예빈'),(65,'엄미경'),(66,'이다영'),(67,'권서림'),(68,'김지영'),(69,'카와이 하야토'),(70,'장충'),(71,'야마시타 노부히로'),(72,'이즈미 유스이'),(73,'강네네'),(74,'이예진'),(75,'김소영'),(76,'권성모'),(77,'양이화'),(78,'박병태'),(79,'유리 그리고로비치'),(80,'앤드류 모라헨'),(81,'호대위'),(82,'알렌산더 피클'),(83,'테이크 디'),(84,'줄리앙 레슬레크'),(85,'데렉 베일리'),(86,'아시시 판데이'),(87,'칼라 TV'),(88,'정원희'),(89,'타쉬 겔트쉔'),(90,'메어 자르치'),(91,'무니카 시멧츠'),(92,'진흔건'),(93,'사릭 안드레아시안'),(94,'이윤규'),(95,'유현정'),(96,'김봉주');
/*!40000 ALTER TABLE `director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `img_file`
--

DROP TABLE IF EXISTS `img_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `img_file` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `img_file`
--

LOCK TABLES `img_file` WRITE;
/*!40000 ALTER TABLE `img_file` DISABLE KEYS */;
INSERT INTO `img_file` VALUES (1,'poster1'),(2,'poster2'),(3,'poster3'),(4,'poster4'),(5,'poster5'),(6,'poster6'),(7,'poster7'),(8,'poster8'),(9,'poster9'),(10,'poster10'),(11,'poster11'),(12,'poster12'),(13,'poster13'),(14,'poster14'),(15,'poster15'),(16,'poster16'),(17,'poster17'),(25,'profile_5'),(36,'profile_2'),(39,'profile_3'),(40,'profile_1'),(41,'profile_12024-08-06T13:01:08.772299900'),(49,'profile_1_2024_08_11_21_48');
/*!40000 ALTER TABLE `img_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manager` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK4vbgsjl6mcxrqyvts0hlilhob` (`user_id`),
  CONSTRAINT `FKlx8n4x9vqj3lqv8cj9ienwrv6` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES (1,1);
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie` (
  `show_tm` int NOT NULL,
  `director_id` bigint DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `open_dt` datetime(6) DEFAULT NULL,
  `movie_disc` varchar(1000) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `movie_cate` varchar(255) DEFAULT NULL,
  `movie_name` varchar(255) NOT NULL,
  `poster_image_name` varchar(255) DEFAULT NULL,
  `poster_img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbi47w3cnsfi30gc1nu2avgra2` (`director_id`),
  CONSTRAINT `FKbi47w3cnsfi30gc1nu2avgra2` FOREIGN KEY (`director_id`) REFERENCES `director` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (104,3,1,NULL,'“탐정이 아냐, 명탐정이지!”세상을 구할 번쩍이는 추리가 시작된다!기억을 잃은 채 깨어난 피카츄, 난 누구? 여긴 어디?유일한 단서는 탐정모자에 적힌 해리란 이름과 주소.주소 속 아파트에서 자신의 말을 유일하게 알아 듣는, 실종된 해리의 아들 팀 굿맨을 만나게 된다.명탐정의 촉으로 이건 그야말로 대.박.사.건!사라진 아빠를 찾기 위해 피카츄와 떠나는 기상천외한 모험이 시작된다.피카피카!','워너브러더스','전체관람가','판타지,SF,가족,미스터리,어드벤처,액션,코메디',' 명탐정 피카츄','poster1',NULL),(76,8,2,NULL,'사이몬은 12살된 아들 핀을 데리고 한적한 시골의 오래된 농장으로 이사를 한다. 둘은 집을 고치며 그간 못다한 많은 대화를 하면서 시간을 보낸다. 그러던 중 집안에 무언가 있다고 불길한 징조를 감지하기 시작한다. 그리고 드디어 그들 부자에게 모습을 드러낸 사악한 마녀는 그들의 영혼을 탐하기 시작한다. 마녀로 몰려 억울하게 불타 죽은 농장주인 리디아는 창문 앞 흔들의자에 앉아 이들을 공포로 몰아 넣기 시작한다.','올드 배드 하우스 필름스','15세관람가','드라마,공포',' 위치 오브 하우스','poster2',NULL),(98,11,3,NULL,'모범생, 날라리, 양아치울고 싶은 청춘 셋이 모였다!숫기 없고 내성적인 성격의 이섭은 전학간 학교에서 문제아로 찍힌 하윤과 짝이 된다. 수업시간 내내 잠만 자고 공부엔 관심도 없는 하윤을 신기하게 관찰하는 이섭, 그 동안 하윤은 착해서 멍청해 보이기까지 하는 이섭에게 호기심을 느낀다. 그러던 중, 서로를 신기해하며 가까워진 이섭과 하윤은 동네 양아치들의 리더 격인 길수와 어울리게 되는데…친해질 수 없을 것 같던 세 사람, 함께 하기에 세상은 너무 험난하다.','영화진흥위원회,경기영상위원회','18세관람가(청소년관람불가)','드라마,하이틴(고교)',' 울보','poster3',NULL),(75,12,4,NULL,'1990년대 길음동 사창가 미아리 텍사스 뒷골목의 건달들 세계를 그린 독립 장편 극 하드보일드/사창가 액션 느와르 독립영화 역사상 최초 극 영화다.미아 보육원 출신인 땡구(류성훈)와 망구(박태산)는 미아리 사창가 세상 밖으로 들어면서 남몰래 꿀차 영업을 시작 하게 되는데…. 어느날 미아리 텍사스 관리 써니(정사우)건달들과 시비가 붙으면서 아수라장을 만들면서 땡구(류성훈)와 망구(박태산)는 바로 써니(정사우)의 수하들을 모두 제압을 하면서 미아리 텍사스의 포주(김미야)와 미아리관리대장(홍석연)이 이 사실을 알고서는 땡구(류성훈)에게 스카우트 제의를 하면서 죽음의 컨테이너로 유인를 한다.살생으로 컨테이너를 통과 한 땡구(류성훈)에게 포주(김미야)는 그런 땡구(류성훈)의 남성미에 빠져서 그만 포주(김미야)의 대한 질투와 욕심으로 뒷풀이 회식자리에서 땡구(류성훈)를 파트너로 지목을 하면서 사창가 포주(김미야)의 남자로 누리는 행운아로서 생활하는데……','','','액션',' 한 많은 미아리 텍사스','poster4',NULL),(9,23,5,NULL,'림은 공부도 대충, 연애도 대충인 남자친구 산이 마음에 들지 않는다. 간만에 나온 나들이에서 계속 깐죽대는 산에게 화가 난 림은 결국 결투를 신청한다. 그리고 둘은 기상천외한 방법으로 결투를 벌이게 되는데…','한국예술종합학교 영상원 영화과','','드라마,멜로드라마',' 한 발 뛰기','poster5',NULL),(83,28,6,NULL,'맹성열이 서울대 물리학과 재학 중이던 1985년 한국ufo연구회에 가입했을 때.과학자로서 그는 UFO 현상을 연구하기 시작했다. 그는 1995년에 \'UFO 신드롬\'이라는 책을 출판했다.과학자의 시각에서 UFO 현상을 소개하며 국내 베스트셀러에 오른 책이었다.그는 30여년동안 지금까지 한국의 대표적인 UFO 연구원이다.하지만 그는 UFO를 직접 본 적이 없다.이런 딜레마와 갈증에 맹성렬은 UFO를 직접 찾기 시작한다.이 다큐멘터리는 2016년부터 2018년까지의 그의 UFO 활동에 관한 것이다.','스튜디오 8','전체관람가','인물,문화,과학',' UFO 스케치','poster6',NULL),(92,33,7,NULL,'마리아 린데는 유대인계 폴란드인 노벨 수상자이자 자유로운 영혼이다. 토스카나에서 따뜻함과 혼란이 공존하는 가족 소유의 빌라에 거주하고 있다. 사랑 넘치는 어머니이자 할머니인 그녀는 근처 바닷가에서 숙소를 운영하는 한 젊은 이집트 남자와 남몰래 썸을 타는 중이기도 하다. 로마에서 테러 공격이 일어난 직후, 마리아는 나라 전역을 휩쓴 집단 히스테리와 반이민주의 정서에 저항하여 어느 영예로운 자리의 수락 연설 도중 유럽의 민주주의가 후퇴하고 있음을 강하게 비판한다. 하지만 그녀의 발언은 예상치 못한 대중의 반발을 사고, 개인적인 피해마저 보게 되는데…[제1회 평창남북평화영화제]','No Sugar Films','','드라마',' 하루의 달콤한 끝','poster7',NULL),(78,52,8,NULL,'달콤한 빵 냄새 솔솔~ 전설을 찾아 나선 용감한 꼬마 요정의 ‘제과점 구하기’ 대모험!뛰어난 손재주를 가진 ‘엘프’들은 인간을 도우며 함께 지내왔지만 어느 날 욕심 많은 인간에게 큰 상처를 입고 지하 세계에 숨어 지낸다.특별한 재주가 없던 꼬마 요정 ‘엘피’는 손재주를 가르쳐 줄 인간을 찾아 친구 ‘벅’, ‘킵’과 함께 무시무시한 소문으로 가득한 인간세계로 모험을 떠난다.마침내 그 곳에서 제빵사 ‘테오’에게 빵 만드는 법을 배우기로 한 ‘엘피’!하지만, ‘테오’를 질투하던 라이벌이자 동생 ‘브루노’의 계략으로 ‘테오’는 일주일 안에 제과점에서 쫓겨날 위기에 처하고 ‘엘피’와 친구들은 ‘테오’를 도와 가게를 지키기로 결심하는데…과연, ‘엘피’와 친구들은 전설 속 제과점을 구하고 꿈꿔왔던 제빵 기술을 배울 수 있을까?','아코드 필름 프로덕션','전체관람가','가족',' 엘프','poster8',NULL),(84,57,9,NULL,'스파르타슬론은 그리스 아테네에서 출발해 스파르타까지 246km를 36시간 안에 골인해야 하는 논스톱 울트라 마라톤 대회로, 매년 전 세계 수백 명의 주자가 도전하지만, 절반 이하만이 완주할 만큼 극한의 난이도를 자랑한다. 2013년부터 2016년까지 스파르타슬론을 4년 연속 완주한 헝가리 출신의 감독 발라주 시모니는 자신을 포함해 이 대회를 완주하고자 자신의 한계를 넘어서려는 5명의 평범한 선수들을 소개한다. 달리면서 이들은 끊임없이 묻는다. 나는 왜 달릴까? 왜 고통 속에 달리는가? 나는 누구일까? (장보영)','','','인물,스포츠',' 울트라','poster9',NULL),(71,58,10,NULL,'알프스와 돌로미티 산맥을 돌아 23일을 달려야 하는 ‘지로 디탈리아’는 ‘뚜르드프랑스’와 함께 세계 제3대 도로사이클대회로 꼽힌다. 아루나스 마텔리스 감독은 지로 디탈리아 경주를 7년에 거쳐 촬영했다. 하지만 카메라는 화려한 우승컵을 안는 승자가 아닌 늘 패자일 수밖에 없는 지원 전담 ‘그레가리오’ 선수들을 향해 있다. 감독은 내가 아닌 우리를 위해 수십 년을 헌신해 온 그레가리오 선수들이 사는 그늘 속 세상을 세심하게 보여준다. 우리가 몰랐던 또 다른 세상의 진정한 승자들에게 빛을 비추는 아름다운 다큐멘터리. (최선희)','','','스포츠,지역,인물',' 아름다운 패자들','poster10',NULL),(90,59,11,NULL,'다섯 명의 핀란드 다이버들이 매우 위험한 미션에 도전하지만, 두 명은 익사하고 세 명만 기적적으로 살아남는다. 살아남은 자들은 직접 동료들의 유해를 수습하려 한다. 엄혹한 환경 속에서 위험한 임무를 수행하려 애쓰는 중의 육체적인 고난은 두 친구의 시신을 직면하면서 오는 정신적 고통에 비하면 아무것도 아니다. 영화는 헌신적인 우정과 두 친구의 죽음을 받아들이려 애쓰는 그들의 노력을 보여준다.','Fuglene AS,Monami Agency','','',' 다이버','poster11',NULL),(89,61,12,NULL,'외상 후 스트레스 장애를 겪고 있는 퇴역 군인 ‘쿠퍼’는 친구 ‘존’의 초대로 아내 ‘비비안’과 함께 호화 요트 여행을 떠난다.바다 한가운데서 여유로운 시간을 보내던 쿠퍼는 존과 비비안 사이에서 이상 기류를 포착한다.의심이 점점 커져가던 중, 요트의 시동이 꺼지고 쿠퍼는 고립된 망망대해 속에서 아내를 지켜내야만 하는데…!태평양 한가운데서 멈춰 버린 요트아내를 지키기 위해 목숨을 건 대결이 시작된다!','Silver Line Films','15세관람가','액션,스릴러',' 데드워터','poster12',NULL),(12,65,13,NULL,'전도유망한 발레리나 연습생 주영은 임신 사실을 알게 된다.','','15세관람가','드라마',' 절벽 앞에서','poster13',NULL),(86,84,14,NULL,'클럽의 가드로 일하는 ‘루카스’는 소란을 제압하던 중, 예기치 못한 사고에 휘말린다.무엇보다 소중한 딸을 잃을 위기에 놓인 그는 양육권을 대가로 범죄 조직에 가담하라는 제안을 받게 되는데…목숨을 걸고 지켜야할 단 하나딸을 구하기 위한 그의 처절한 사투가 시작된다!','Labyrinthe Films','15세관람가','액션,드라마,스릴러',' 더 바운서','poster14',NULL),(22,86,15,NULL,'인도-파키스탄 국경 마을에 사는 여덟 살 누레는 자신이 잠든 밤에 총격전이 벌어졌다가 잠에서 깨면 멈춘다는 것을 깨닫게 된다. 접전이 격화되면서 학교가 휴교를 하자, 누레는 뜬눈으로 밤을 새워 보기로 마음먹는다. 누레의 믿음대로, 잠을 자지 않으면 총격전이 멈추게 될까?','Sophiya Films','전체관람가','드라마',' 꼬마 누레','poster15',NULL),(103,91,16,NULL,'렐로는 교사인 엄마, 아빠의 사랑을 듬뿍 받는 밝고 사랑스러운 소녀다. 어느 날 보안부 사람들이 찾아와 러시아 지배에 저항하고 에스토니아 독립을 지지한다는 죄목으로 엄마 헬므스를 체포한다. 아빠 펠릭스는 아내를 빼내기 위해 노력해보지만 방법이 없다. 펠릭스 역시 에스토니아의 스포츠 영웅이었다는 이유로 소련 정부의 감시 대상이 되고, 소련 경찰은 헬므스와 이혼을 강요하며 더 나은 삶을 보장해주겠다고 회유한다. 2차 세계 대전 이후 스탈린이 이끄는 소련 공산 체제가 엄격한 사회 통제로 지배하던 어두운 시대가 배경이지만, 영화는 따뜻한 파스텔톤과 밝고 아름다운 영상을 담아낸다. 감독은 아이 렐로의 심리와 시선을 중심으로 시대를 반영한 연출을 펼친다. 아이의 눈에는 스탈린의 통치와 에스토니아인들에 대한 억압보다는 따뜻한 마음의 러시아인들이 보인다. 부녀는 헬므스에 대한 그리움과 그녀의 부재로 인한 힘겨운 싸움을 한다. 1953년 스탈린의 죽음 이후 자유가 찾아오고, 엄마가 시베리아 유배지에서 돌아온다. 렐로 퉁갈의 자전 소설을 원작으로 한 영화이며 감독 무니카 시멧츠의 데뷔작이다.[남경희]','Amrion OÜ','12세관람가','멜로/로맨스,가족,드라마',' 나의 작은 동무','poster16',NULL),(25,94,17,NULL,'불의의 사고로 아내와 딸이 죽고, 노모가 살고 있는 전북 장수로 내려가 새로운 삶을 살아 가려는 사진작가 영기. 슬픔에서 아직 벗어나지 못했지만, 어머니의 죽음이 다가옴을 느끼자 또다시 자신에게 찾아온 죽음에 괴롭고 슬퍼한다.','','','드라마',' 장수','poster17',NULL);
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_board`
--

DROP TABLE IF EXISTS `movie_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_board` (
  `view_cnt` int NOT NULL DEFAULT '0',
  `created_at` datetime(6) NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `manager_id` bigint DEFAULT NULL,
  `movie_id` bigint NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK1u81wovv0hvou0aqkwv8hl2w1` (`movie_id`),
  KEY `FKmmn0gp29xyxwwh09e3ntmuaat` (`manager_id`),
  CONSTRAINT `FKcexq7s9auhwk8ge6out1159ig` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`),
  CONSTRAINT `FKmmn0gp29xyxwwh09e3ntmuaat` FOREIGN KEY (`manager_id`) REFERENCES `manager` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_board`
--

LOCK TABLES `movie_board` WRITE;
/*!40000 ALTER TABLE `movie_board` DISABLE KEYS */;
INSERT INTO `movie_board` VALUES (284,'2024-07-29 13:27:42.850613',1,1,1,'2024-08-11 21:45:21.782814'),(72,'2024-07-29 13:27:42.867568',2,1,2,'2024-08-11 21:46:18.938268'),(28,'2024-07-29 13:27:42.868566',3,1,3,'2024-08-11 21:25:38.774618'),(23,'2024-07-29 13:27:42.870560',4,1,4,'2024-08-11 20:45:25.732416'),(12,'2024-07-29 13:27:42.871558',5,1,5,'2024-08-11 21:21:44.605686'),(9,'2024-07-29 13:27:42.873552',6,1,6,'2024-08-11 21:25:23.978042'),(30,'2024-07-29 13:27:42.874550',7,1,7,'2024-08-11 21:09:30.753144'),(5,'2024-07-29 13:27:42.875547',8,1,8,'2024-08-11 20:45:20.136141'),(21,'2024-07-29 13:27:42.877542',9,1,9,'2024-08-11 21:45:35.916949'),(11,'2024-07-29 13:27:42.878539',10,1,10,'2024-08-11 21:45:39.189793'),(15,'2024-07-29 13:27:42.879557',11,1,11,'2024-08-01 10:28:24.879838'),(11,'2024-07-29 13:27:42.880534',12,1,12,'2024-08-11 20:24:41.702626'),(3,'2024-07-29 13:27:42.881531',13,1,13,'2024-07-31 14:53:39.954142'),(8,'2024-07-29 13:27:42.883526',14,1,14,'2024-07-31 19:01:31.171194'),(105,'2024-07-29 13:27:42.884523',15,1,15,'2024-08-06 09:34:43.472503'),(2,'2024-07-29 13:27:42.885520',16,1,16,'2024-08-02 17:23:51.730165'),(9,'2024-07-29 13:27:42.886518',17,1,17,'2024-08-03 18:04:14.026573');
/*!40000 ALTER TABLE `movie_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_board_rating`
--

DROP TABLE IF EXISTS `movie_board_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_board_rating` (
  `movie_rating` int DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `movie_board_id` bigint DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKc0fekloxng8pe2j2ifmhgw9tt` (`movie_board_id`),
  KEY `FKdl4mdpaptkkhvkrpjtf32t2xs` (`user_id`),
  CONSTRAINT `FKc0fekloxng8pe2j2ifmhgw9tt` FOREIGN KEY (`movie_board_id`) REFERENCES `movie_board` (`id`),
  CONSTRAINT `FKdl4mdpaptkkhvkrpjtf32t2xs` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_board_rating`
--

LOCK TABLES `movie_board_rating` WRITE;
/*!40000 ALTER TABLE `movie_board_rating` DISABLE KEYS */;
INSERT INTO `movie_board_rating` VALUES (0,'2024-07-29 13:30:03.856031',1,NULL,'2024-07-29 18:11:48.250313',NULL,NULL),(9,'2024-07-29 13:30:03.870624',4,2,'2024-07-29 13:30:03.870624',2,'제 점수는...9.1'),(2,'2024-07-29 13:30:03.873424',5,3,'2024-07-29 13:30:03.873424',1,'제 점수는...2.1'),(8,'2024-07-29 13:30:03.879123',7,5,'2024-07-29 13:30:03.879123',1,'제 점수는...8.2'),(9,'2024-07-29 13:30:03.881915',8,6,'2024-08-11 17:11:07.384208',1,'제 점수는...9.2'),(2,'2024-07-29 13:30:03.886022',9,6,'2024-07-29 13:30:03.886022',2,'제 점수는...1.6'),(6,'2024-07-29 13:30:03.888518',10,6,'2024-07-29 13:30:03.888518',3,'제 점수는...5.9'),(5,'2024-07-29 13:30:03.891275',11,6,'2024-07-29 13:30:03.891275',4,'제 점수는...5.0'),(10,'2024-07-29 13:30:03.897769',13,8,'2024-07-29 13:30:03.897769',1,'제 점수는...9.6'),(9,'2024-07-29 13:30:03.899930',14,8,'2024-07-29 13:30:03.899930',2,'제 점수는...8.9'),(4,'2024-07-29 13:30:03.901956',15,8,'2024-07-29 13:30:03.901956',3,'제 점수는...4.1'),(5,'2024-07-29 13:30:03.904511',16,8,'2024-07-29 13:30:03.904511',4,'제 점수는...5.1'),(7,'2024-07-29 13:30:03.908781',18,9,'2024-07-29 13:30:03.908781',2,'제 점수는...6.6'),(6,'2024-07-29 13:30:03.911222',19,9,'2024-07-29 13:30:03.911222',3,'제 점수는...6.1'),(0,'2024-07-29 13:30:03.913471',20,NULL,'2024-07-29 18:34:23.845400',NULL,NULL),(7,'2024-07-29 13:30:03.915781',21,10,'2024-07-29 13:30:03.915781',2,'제 점수는...7.3'),(4,'2024-07-29 13:30:03.920296',23,11,'2024-07-29 13:30:03.920296',2,'제 점수는...4.0'),(6,'2024-07-29 13:30:03.922450',24,12,'2024-07-29 13:30:03.922450',1,'제 점수는...5.5'),(9,'2024-07-29 13:30:03.924557',25,12,'2024-07-29 13:30:03.924557',2,'제 점수는...8.8'),(10,'2024-07-29 13:30:03.926558',26,12,'2024-07-29 13:30:03.926558',3,'제 점수는...9.6'),(6,'2024-07-29 13:30:03.929108',27,12,'2024-07-29 13:30:03.929108',4,'제 점수는...6.4'),(5,'2024-07-29 13:30:03.931325',28,13,'2024-07-29 19:00:43.578255',1,'제 점수는...5.5'),(2,'2024-07-29 13:30:03.933482',29,13,'2024-07-29 13:30:03.933482',2,'제 점수는...1.7'),(4,'2024-07-29 13:30:03.935748',30,13,'2024-07-29 13:30:03.935748',3,'제 점수는...3.6'),(5,'2024-07-29 13:30:03.937775',31,13,'2024-07-29 13:30:03.937775',4,'제 점수는...5.4'),(10,'2024-07-29 13:30:03.942734',33,15,'2024-07-29 13:30:03.942734',1,'제 점수는...9.7'),(0,'2024-07-29 13:30:03.944954',34,NULL,'2024-07-29 18:33:35.546284',NULL,NULL),(5,'2024-07-29 13:30:03.947267',35,16,'2024-07-29 13:30:03.947267',2,'제 점수는...5.3'),(4,'2024-07-29 13:30:03.949470',36,16,'2024-07-29 13:30:03.949470',3,'제 점수는...3.8'),(0,'2024-07-29 13:30:03.951591',37,NULL,'2024-07-29 13:51:36.286182',NULL,NULL),(1,'2024-07-29 13:30:03.953751',38,17,'2024-07-29 13:30:03.953751',2,'제 점수는...1.4'),(0,'2024-07-29 13:30:03.955880',39,17,'2024-07-29 13:30:03.955880',3,'제 점수는...0.0'),(6,'2024-07-29 14:15:38.049420',46,5,'2024-07-29 14:15:38.049420',NULL,'yyy'),(6,'2024-07-29 14:28:15.449600',47,16,'2024-07-29 14:28:15.449600',NULL,'rtrtr'),(0,'2024-07-29 15:03:53.483622',49,NULL,'2024-07-29 18:11:56.205357',NULL,NULL),(0,'2024-07-29 16:58:59.916889',63,NULL,'2024-07-29 18:12:03.566111',NULL,NULL),(6,'2024-07-29 19:08:28.718563',64,10,'2024-07-29 19:08:28.718563',1,'ㅎㅎㅎㅎ'),(8,'2024-07-29 20:47:08.874189',85,1,'2024-07-29 20:47:08.874189',2,'ddd'),(6,'2024-07-30 18:01:21.381544',88,7,'2024-07-30 18:01:21.381544',2,'이게되네'),(5,'2024-07-31 19:01:31.120767',93,14,'2024-07-31 19:01:31.120767',1,'sdsds'),(10,'2024-08-01 10:52:44.272237',95,7,'2024-08-01 10:59:35.131992',1,'asdasgfsagas'),(10,'2024-08-04 17:30:59.141396',96,1,'2024-08-04 17:30:59.141396',5,'평점 테스트'),(9,'2024-08-06 09:30:05.006410',97,2,'2024-08-06 09:30:05.006410',5,'9점'),(9,'2024-08-06 09:33:30.689930',98,15,'2024-08-06 09:33:30.689930',5,'999'),(5,'2024-08-06 12:20:11.360852',99,1,'2024-08-06 12:20:11.360852',2,'asdasd'),(3,'2024-08-06 13:25:25.030124',103,1,'2024-08-06 13:25:25.030124',1,'asdasdsa'),(4,'2024-08-11 20:24:21.199764',104,12,'2024-08-11 20:24:21.199764',NULL,''),(8,'2024-08-11 21:25:58.221911',107,9,'2024-08-11 21:26:10.977082',1,'8점'),(7,'2024-08-11 21:46:01.968893',108,2,'2024-08-11 21:46:13.513917',1,'7점');
/*!40000 ALTER TABLE `movie_board_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_like`
--

DROP TABLE IF EXISTS `movie_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_like` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `movie_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKdglb6nfnx6ge9ogjlb6dqb63m` (`movie_id`),
  KEY `FKpihe3cwejhxx5vjfbwl8fcsek` (`user_id`),
  CONSTRAINT `FKdglb6nfnx6ge9ogjlb6dqb63m` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`),
  CONSTRAINT `FKpihe3cwejhxx5vjfbwl8fcsek` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_like`
--

LOCK TABLES `movie_like` WRITE;
/*!40000 ALTER TABLE `movie_like` DISABLE KEYS */;
INSERT INTO `movie_like` VALUES (12,1,5),(19,1,NULL),(33,9,5),(34,4,5),(39,1,1),(40,10,1),(43,3,2),(45,7,2),(46,10,2),(48,9,1),(49,2,1);
/*!40000 ALTER TABLE `movie_like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `age` int NOT NULL,
  `deleted_yn` char(1) NOT NULL,
  `gender` char(1) NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `joined_at` datetime(6) NOT NULL,
  `email` varchar(255) NOT NULL,
  `movie_cate` varchar(255) DEFAULT NULL,
  `profile_image_name` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) NOT NULL,
  `user_pw` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (20,'N','M',1,'2024-07-29 13:27:36.000000','test@bitc.com',NULL,'profile_1_2024_08_11_21_48','test1','123'),(30,'N','F',2,'2024-07-29 13:29:55.000000','test2@bitc.com',NULL,'','test2','1234'),(10,'N','F',3,'2024-07-29 13:29:56.000000','test3@bitc.com',NULL,'','test3','1234'),(40,'N','M',4,'2024-07-29 13:29:56.000000','test4@bitc.com',NULL,NULL,'test4','1234'),(10,'N','M',5,'2024-07-29 13:29:57.000000','test5@bitc.com',NULL,'','test5','1234'),(0,'Y','W',6,'2024-07-31 14:00:11.575267','test6@bitc.com','호러',NULL,'test6','1234'),(0,'N','M',7,'2024-08-06 12:20:46.560692','asdf@asdasd','',NULL,'sdfg','1234'),(0,'N','M',9,'2024-08-06 12:21:47.366638','123@123123','',NULL,'123','1234'),(0,'N','M',12,'2024-08-06 13:35:21.796099','','',NULL,'',''),(0,'N','M',13,'2024-08-11 19:45:32.571378','tester123@testEmail.com','',NULL,'test1234','1234');
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

-- Dump completed on 2024-08-11 22:43:56
