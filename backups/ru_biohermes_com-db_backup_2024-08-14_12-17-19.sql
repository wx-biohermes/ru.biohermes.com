-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: localhost    Database: ru_biohermes_com
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.20.04.1

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
-- Table structure for table `dr_1_news`
--

DROP TABLE IF EXISTS `dr_1_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_1_news` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint unsigned NOT NULL COMMENT '栏目id',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '主题',
  `thumb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '缩略图',
  `keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关键字',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '描述',
  `hits` int unsigned DEFAULT NULL COMMENT '浏览数',
  `uid` int unsigned NOT NULL COMMENT '作者id',
  `author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '笔名',
  `status` tinyint NOT NULL COMMENT '状态(已废弃)',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
  `link_id` int NOT NULL DEFAULT '0' COMMENT '同步id',
  `tableid` smallint unsigned NOT NULL COMMENT '附表id',
  `inputip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '客户端ip信息',
  `inputtime` int unsigned NOT NULL COMMENT '录入时间',
  `updatetime` int unsigned NOT NULL COMMENT '更新时间',
  `displayorder` int DEFAULT '0' COMMENT '排序值',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `link_id` (`link_id`),
  KEY `status` (`status`),
  KEY `updatetime` (`updatetime`),
  KEY `hits` (`hits`),
  KEY `category` (`catid`,`status`),
  KEY `displayorder` (`displayorder`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='内容主表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_1_news`
--

LOCK TABLES `dr_1_news` WRITE;
/*!40000 ALTER TABLE `dr_1_news` DISABLE KEYS */;
INSERT INTO `dr_1_news` VALUES (2,6,'ГЛОБАЛЬНАЯ ВСТРЕЧА ДИСТРИБЬЮТОРОВ BIOHERMES 2019','27','','19 дистрибьюторов из 10 стран приехали в Китай для участия во Всемирной встрече дистрибьюторов BioHe',1,1,'创始人',9,'/news/show-2.html',0,0,'127.0.0.1-51754',1554282290,1721891468,0),(3,6,'ПРИГЛАШЕНИЕ НА 81-Ю ВЫСТАВКУ CMEF 2019 В ШАНХАЕ','28','','81-я Китайская международная ярмарка медицинского оборудования (CMEF) пройдет с 14 по 17 мая 2019 го',1,1,'创始人',9,'/news/show-3.html',0,0,'127.0.0.1-53347',1556184748,1721891410,0),(4,6,'ПОЛУЧЕНИЕ СЕРТИФИКАТА РЕГИСТРАЦИИ MHRA','29','','С 1 января 2021 года следующие устройства в Великобритании (Англия, Уэльс и Шотландия) должны быть з',1,1,'创始人',9,'/news/show-4.html',0,0,'127.0.0.1-53458',1636968850,1721877760,0),(5,6,'СКОРО ВЫХОДИТ BH60 HPLC','30','','Пришло время снова представить себя. В качестве одного из ведущих поставщиков анализаторов гликирова',1,1,'创始人',9,'/news/show-5.html',0,0,'127.0.0.1-53459',1635154553,1721955921,0),(6,6,'ПРОДУКТЫ ДЛЯ БОРЬБЫ С COVID-19, ОДОБРЕННЫЕ В ЕВРОПЕЙСКИХ СТРАНАХ','161','','BioHermes входит в список разрешенных к экспорту товаров, выпущенный Министерством торговли Китая.',1,1,'创始人',9,'/news/show-6.html',0,0,'127.0.0.1-53831',1631525823,1721891634,0),(13,6,'FIME 2023: BIOHERMES ПРЕДСТАВИЛ КОМПЛЕКСНЫЕ РЕШЕНИЯ','174','','FIME (Florida International Medical Expo, Международная медицинская выставка во Флориде), ведущая ми',1,1,'创始人',9,'/news/show-13.html',0,0,'127.0.0.1-55087',1688049113,1721876457,0),(15,6,'ПРИСОЕДИНЯЙТЕСЬ К НАМ НА СТЕНДЕ 1383 НА ПРЕСТИЖНОЙ ВЫСТАВКЕ AACC 2023!','170','','Самая крупная и влиятельная ежегодная научная конференция и клиническое мероприятие AACC пройдет в в',1,1,'创始人',9,'/news/show-15.html',0,0,'127.0.0.1-55088',1689949969,1721876071,0),(32,6,'ВСЕМИРНЫЙ ДЕНЬ ДИАБЕТА','140','','Ever craving for delicious desert or not feeling like exercising? You are not alone! With the fast p',1,1,'创始人',9,'/news/show-32.html',0,0,'127.0.0.1-54831',1671454000,1721877650,0),(33,6,'BIOHERMES ПРЕДСТАВИЛ НОВЫЕ ПРОДУКТЫ НА CMEF','151','','Этой осенью медицинская отрасль была сосредоточена на Шэньчжэне, Китай, где с 13 по 16 октября прошл',1,1,'创始人',9,'/news/show-33.html',0,0,'127.0.0.1-50871',1634563826,1721891674,0),(34,6,'КИТАЙСКО-ИНДОНЕЗИЙСКИЙ СИМПОЗИУМ ИССЛЕДУЕТ ИННОВАЦИИ В УПРАВЛЕНИИ ХРОНИЧЕСКИМИ ЗАБОЛЕВАНИЯМИ','164','','3 января 2024 года Китайско-индонезийский симпозиум по обмену опытом в области образования и управле',1,1,'创始人',9,'/news/show-34.html',0,0,'127.0.0.1-51933',1704462469,1721875222,0),(35,6,'НАСЫЩЕННЫЙ СЕЗОН BIOHERMES','166','','В конце 2023 года, BioHermes достигла значительных успехов в сфере медицинских технологий, продемонс',1,1,'创始人',9,'/news/show-35.html',0,0,'127.0.0.1-52109',1703253062,1721876143,0),(36,6,'ПРИГЛАШАЕМ ВАС ПОСЕТИТЬ СТЕНД BIOHERMES НА ОСЕННЕЙ ВЫСТАВКЕ CMEF','175','','85-я Китайская международная выставка медицинского оборудования (Осенняя выставка CMEF 2021) пройдет',1,1,'创始人',9,'/news/show-36.html',0,0,'127.0.0.1-52989',1631887284,1721891272,0),(46,6,'ОБЗОР ОСНОВНЫХ МОМЕНТОВ МЕЖДУНАРОДНОГО МЕДИЦИНСКОГО ШОУ В МАЙАМИ','277','','2024 FIME(Международная медицинская выставка Флориды) завершился успешно',1,2,'biohermes',9,'/news/show-46.html',0,0,'58.214.239.78-54360',1719457878,1721891577,0),(47,6,'VADE 2024 | Обзор XII Научной конференции по эндокринным заболеваниям Вьетнама','293',NULL,'С 19 по 21 июля 2024 года во Вьетнаме в Дананге успешно прошла двенадцатая научная конференция по эн',1,1,'创始人',9,'/news/show-47.html',0,0,'222.135.75.218-41405',1722390712,1722391389,0),(48,6,'Исследование медицинского рынка Вьетнама','350',NULL,'Расположенный на ярком юго-восточном конце полуострова Индокитай, Вьетнам, с его уникальным географи',1,2,'biohermes',9,'/news/show-48.html',0,0,'58.214.239.78-56596',1723539552,1723539552,0);
/*!40000 ALTER TABLE `dr_1_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_1_news_category`
--

DROP TABLE IF EXISTS `dr_1_news_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_1_news_category` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `pid` mediumint unsigned NOT NULL DEFAULT '0' COMMENT '上级id',
  `pids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所有上级id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '栏目名称',
  `dirname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '栏目目录',
  `pdirname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '上级目录',
  `child` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '是否有下级',
  `disabled` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '是否禁用',
  `ismain` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '是否主栏目',
  `childids` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '下级所有id',
  `thumb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '栏目图片',
  `show` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `setting` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '属性配置',
  `displayorder` mediumint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `show` (`show`),
  KEY `disabled` (`disabled`),
  KEY `ismain` (`ismain`),
  KEY `module` (`pid`,`displayorder`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='栏目表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_1_news_category`
--

LOCK TABLES `dr_1_news_category` WRITE;
/*!40000 ALTER TABLE `dr_1_news_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_1_news_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_1_news_category_data`
--

DROP TABLE IF EXISTS `dr_1_news_category_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_1_news_category_data` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint unsigned NOT NULL COMMENT '作者uid',
  `catid` int unsigned NOT NULL COMMENT '栏目id',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='栏目模型表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_1_news_category_data`
--

LOCK TABLES `dr_1_news_category_data` WRITE;
/*!40000 ALTER TABLE `dr_1_news_category_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_1_news_category_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_1_news_data_0`
--

DROP TABLE IF EXISTS `dr_1_news_data_0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_1_news_data_0` (
  `id` int unsigned NOT NULL,
  `uid` mediumint unsigned NOT NULL COMMENT '作者uid',
  `catid` smallint unsigned NOT NULL COMMENT '栏目id',
  `content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '内容',
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='内容附表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_1_news_data_0`
--

LOCK TABLES `dr_1_news_data_0` WRITE;
/*!40000 ALTER TABLE `dr_1_news_data_0` DISABLE KEYS */;
INSERT INTO `dr_1_news_data_0` VALUES (2,1,6,'&lt;p&gt;19 дистрибьюторов из 10 стран приехали в Китай для участия во Всемирной встрече дистрибьюторов BioHermes 2019, которая прошла 22 и 23 марта. Встреча и сопутствующие мероприятия прошли в двух городах: Гуанчжоу и Наньчан.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Как отмечено, на сегодняшний день портативный анализатор HbA1c добился большого успеха на мировом рынке: более 50000 единиц было размещено в более чем 60 странах, что принесло пользу десяткам тысяч людей по всему миру. В самом начале встречи команда BioHermes по международным продажам и маркетингу выразила признательность всем зарубежным дистрибьюторам за их неустанные усилия, без которых все эти достижения были бы невозможны. В 2019 году BioHermes сосредоточится на продвижении недавно запущенного настольного анализатора гликированного гемоглобина гликированного гемоглобинаA1cChek Pro, чтобы расширить наши области применения в лабораториях и больницах в большем масштабе. Поэтому дистрибьюторам также была представлена самая полная экспозиция A1cChek Pro, включающая уникальные особенности анализатора, а также мощный облачный сервис.&lt;/p&gt;&lt;table class=&quot;table table-bordered&quot;&gt;&lt;tbody&gt;&lt;tr class=&quot;firstRow&quot;&gt;&lt;td&gt;&lt;p&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202405/274458a3ebab54e.png&quot; title=&quot;image.png&quot; alt=&quot;image.png&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;/td&gt;&lt;td&gt;&lt;p&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202405/db88054ae23897.png&quot; title=&quot;image.png&quot; alt=&quot;image.png&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&lt;p&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202405/f8c554c3dfa584b.png&quot; title=&quot;image.png&quot; alt=&quot;image.png&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;/td&gt;&lt;td&gt;&lt;p&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202405/26121c7c3485ffa.png&quot; title=&quot;image.png&quot; alt=&quot;image.png&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;p&gt;Встреча также стала редкой возможностью для дистрибьюторов из разных стран провести обмен опытом в области продаж и маркетинга. Несколько успешных дистрибьюторов были приглашены для выступлений с презентациями о своем успешном опыте продвижения на их рынках, что было признано действительно полезным для других дистрибьюторов в их будущей работе и для более глубокого понимания ситуации с тестированием HbA1c на глобальном уровне.&lt;br&gt;&lt;/p&gt;&lt;table class=&quot;table table-bordered&quot;&gt;&lt;tbody&gt;&lt;tr class=&quot;firstRow&quot;&gt;&lt;td&gt;&lt;p&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202405/20127bd287bec4f.png&quot; title=&quot;image.png&quot; alt=&quot;image.png&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;/td&gt;&lt;td&gt;&lt;p&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202405/77b030292f320ff.png&quot; title=&quot;image.png&quot; alt=&quot;image.png&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;p&gt;Также несколько спутниковых академических форумов, организованных BioHermes, прошли в рамках известного мероприятия IVD CACLP EXPO в Наньчане. Известный диабетолог из авторитетной больницы был приглашен для презентации на тему диабета и тестирования HbA1c для наших дистрибьюторов.&lt;/p&gt;&lt;table class=&quot;table table-bordered&quot;&gt;&lt;tbody&gt;&lt;tr class=&quot;firstRow&quot;&gt;&lt;td&gt;&lt;p&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202405/65bbf52f8dd485d.png&quot; title=&quot;image.png&quot; alt=&quot;image.png&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;/td&gt;&lt;td&gt;&lt;p&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202405/d4e25e6a7dd1dd1.png&quot; title=&quot;image.png&quot; alt=&quot;image.png&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&lt;p&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202405/a261809c1102f24.png&quot; title=&quot;image.png&quot; alt=&quot;image.png&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;/td&gt;&lt;td&gt;&lt;p&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202405/d24832254f0a2.png&quot; title=&quot;image.png&quot; alt=&quot;image.png&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;div style=&quot;font-size: 16px;&quot;&gt;&lt;div data-zone-id=&quot;0&quot; data-line-index=&quot;0&quot; data-line=&quot;true&quot; style=&quot;white-space: pre;&quot;&gt;&lt;span style=&quot;font-family: MonospacedNumber, LarkHackSafariFont, LarkEmojiFont, LarkChineseQuote, -apple-system, BlinkMacSystemFont, &amp;quot;Helvetica Neue&amp;quot;, Tahoma, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Microsoft Yahei&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;;&quot;&gt;Серия мероприятий встречи дистрибьюторов 2019 года завершилась благодарственным банкетом на тему «2019: Новый путь для BioHermes, новый старт для нашего партнерства». Отечественные и зарубежные дистрибьюторы радостно собрались вместе, а также команда высшего руководства BioHermes, чтобы насладиться этим запоминающимся моментом, который происходит раз в году, и отметить достигнутый за последние дни консенсус.&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;table class=&quot;table table-bordered&quot; data-sort=&quot;sortDisabled&quot;&gt;&lt;tbody&gt;&lt;tr class=&quot;firstRow&quot;&gt;&lt;td&gt;&lt;p&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202405/7a559cb4379bf7f.png&quot; title=&quot;image.png&quot; alt=&quot;image.png&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;/td&gt;&lt;td&gt;&lt;p&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202405/7bb9d22061dbe45.png&quot; title=&quot;image.png&quot; alt=&quot;image.png&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&lt;p&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202405/7d6d5d1cc940895.png&quot; title=&quot;image.png&quot; alt=&quot;image.png&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;/td&gt;&lt;td&gt;&lt;p&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202405/d38e7b09232ce19.png&quot; title=&quot;image.png&quot; alt=&quot;image.png&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td rowspan=&quot;1&quot; colspan=&quot;2&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202405/04bafb258c07338.jpg&quot;&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),(3,1,6,'&lt;p class=&quot;main-p2&quot; &gt;81-я Китайская международная ярмарка медицинского оборудования (CMEF) пройдет с 14 по 17 мая 2019 года в Национальном выставочном и конференц-центре Шанхая. Мы искренне приглашаем наших ценных партнеров и друзей посетить наш стенд в зале 3, 3K18, с надеждой на открытие новых возможностей для сотрудничества, а также углубление существующего партнерства в более широкие области.&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202405/06f57ca5be95e1a.jpg&quot;&gt;&lt;/p&gt;&lt;div style=&quot;font-size: 16px;&quot;&gt;&lt;div data-zone-id=&quot;0&quot; data-line-index=&quot;0&quot; data-line=&quot;true&quot; style=&quot;white-space: pre;&quot;&gt;&lt;span style=&quot;font-family: MonospacedNumber, LarkHackSafariFont, LarkEmojiFont, LarkChineseQuote, -apple-system, BlinkMacSystemFont, &amp;quot;Helvetica Neue&amp;quot;, Tahoma, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Microsoft Yahei&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;;&quot;&gt;&lt;b&gt;О CMEF&lt;/b&gt;&lt;/span&gt;&lt;/div&gt;&lt;div data-zone-id=&quot;0&quot; data-line-index=&quot;1&quot; data-line=&quot;true&quot; style=&quot;white-space: pre;&quot;&gt;&lt;span style=&quot;font-family: MonospacedNumber, LarkHackSafariFont, LarkEmojiFont, LarkChineseQuote, -apple-system, BlinkMacSystemFont, &amp;quot;Helvetica Neue&amp;quot;, Tahoma, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Microsoft Yahei&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;;&quot;&gt;Китайская международная ярмарка медицинского оборудования (CMEF) является крупнейшей выставкой медицинского оборудования, сопутствующих товаров и услуг в Азиатско-Тихоокеанском регионе. Выставка охватывает десятки тысяч продуктов, таких как медицинская визуализация, диагностика in vitro, электроника, оптика, первая помощь, реабилитационный уход, медицинские информационные технологии и аутсорсинговые услуги, и предоставляет услуги для всей цепочки медицинской промышленности, от источника до конечного потребителя, прямым и всесторонним образом.&lt;/span&gt;&lt;/div&gt;&lt;div data-zone-id=&quot;0&quot; data-line-index=&quot;2&quot; data-line=&quot;true&quot; style=&quot;white-space: pre;&quot;&gt;&lt;br&gt;&lt;/div&gt;&lt;div data-zone-id=&quot;0&quot; data-line-index=&quot;3&quot; data-line=&quot;true&quot; style=&quot;white-space: pre;&quot;&gt;&lt;span style=&quot;font-family: MonospacedNumber, LarkHackSafariFont, LarkEmojiFont, LarkChineseQuote, -apple-system, BlinkMacSystemFont, &amp;quot;Helvetica Neue&amp;quot;, Tahoma, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Microsoft Yahei&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;;&quot;&gt;&lt;b&gt;О BioHermes&lt;/b&gt;&lt;/span&gt;&lt;/div&gt;&lt;div data-zone-id=&quot;0&quot; data-line-index=&quot;4&quot; data-line=&quot;true&quot; style=&quot;white-space: pre;&quot;&gt;&lt;span style=&quot;font-family: MonospacedNumber, LarkHackSafariFont, LarkEmojiFont, LarkChineseQuote, -apple-system, BlinkMacSystemFont, &amp;quot;Helvetica Neue&amp;quot;, Tahoma, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Microsoft Yahei&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;;&quot;&gt;BioHermes, как высокотехнологичное предприятие в области IVD с уникальной технологией тестирования HbA1c, сосредотачивается на предоставлении наиболее удобного, эффективного и доступного тестирования HbA1c людям по всему миру, чтобы предотвратить диабет и его осложнения в глобальном масштабе.&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;'),(4,1,6,'&lt;p class=&quot;main-p2&quot; &gt;С 1 января 2021 года следующие устройства в Великобритании (Англия, Уэльс и Шотландия) должны быть зарегистрированы в MHRA в соответствии с существующими правилами: медицинские устройства класса I, ИВД (ин витро диагностика), изготовленные на заказ устройства. Все остальные классы устройств, размещенных на рынке Великобритании, также должны быть зарегистрированы в MHRA.&lt;/p&gt;&lt;p class=&quot;main-p2&quot; &gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202405/3ce597270fe034c.jpg&quot;&gt;&lt;/p&gt;&lt;p class=&quot;main-p2&quot; &gt;Продукты компании BioHermes зарегистрированы в Британском агентстве по регулированию лекарственных средств и медицинских изделий (MHRA) и получили соответствующую сертификацию. Чтобы стать надежным и уважаемым предприятием в сфере in vitro диагностики, BioHermes вкладывает значительные средства в исследования и разработки, разрабатывает передовые технологии и создает большую медицинскую ценность для здоровья и жизненной силы людей по всему миру.&lt;br&gt;&lt;/p&gt;'),(5,1,6,'&lt;p class=&quot;main-p2&quot;&gt;Пришло время снова представить себя. В качестве одного из ведущих поставщиков анализаторов гликированного гемоглобина, компания BioHermes продемонстрировала широкий ассортимент инновационных анализаторов гликированного гемоглобина, что позволило ей продвигать свои выдающиеся продукты на зарубежных рынках.&amp;nbsp;&lt;/p&gt;&lt;p class=&quot;main-p2&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p class=&quot;main-p2&quot;&gt;Самый привлекательный продукт скоро в продаже!&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202405/422908bee699836.jpg&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p class=&quot;main-p2&quot;&gt;В 2021 году компания BioHermes выпустит новый продукт: BH 60 Автоматический анализатор гликированного гемоглобина&lt;/p&gt;&lt;p class=&quot;main-p2&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p class=&quot;main-p2&quot;&gt;С надежной производительностью, удобным дизайном и высокой эффективностью, HPLC-анализатор BioHermes подходит для использования в различных средних и крупных лабораториях, а также медицинских учреждениях по всему миру.&lt;/p&gt;&lt;p class=&quot;main-p2&quot;&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202407/5f55d653dbcb.webp&quot; title=&quot;8cc4de22590ec7e.webp&quot; alt=&quot;8cc4de22590ec7e.webp&quot; &gt;&lt;br&gt;&lt;/p&gt;&lt;p class=&quot;main-p2&quot;&gt;&lt;/p&gt;&lt;p class=&quot;main-p2&quot; style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;В последние годы компания BioHermes добилась выдающихся результатов в продажах как на внутреннем, так и на международном рынках. На сегодняшний день анализаторы HbA1c компании BioHermes были экспортированы более чем в 100 стран мира. Как один из самых профессиональных производителей HbA1c, BioHermes не только является новой восходящей звездой в области in vitro диагностики, но и получила высокую оценку за свои отличные продукты и замечательное обслуживание на рынке. Следите за новостями, ожидая новые удивительные продукты от BioHermes.&lt;/span&gt;&lt;/font&gt;&lt;br&gt;&lt;/p&gt;'),(6,1,6,'&lt;p class=&quot;main-p2&quot; &gt;Компания BioHermes является членом «Списка разрешенных на экспорт» китайского Министерства торговли (MOFCOM) для антиэпидемических продуктов, включая наборы для тестирования нейтрализующих антител к SARS-CoV-2 (иммуноферментный анализ), тесты на антитела SARS-CoV-2 IgG/IgM (тест на боковой поток) и наборы для тестирования антигена SARS-CoV-2 (тест на боковой поток). Принцип теста на антиген заключается в проверке наличия патогенов в организме человека с помощью образцов кала и мокроты, в то время как тест на антитела сосредоточен на выявлении антител против патогенов в образцах крови. Эти два метода дополняют друг друга. BioHermes — один из немногих китайских производителей, которые могут экспортировать как наборы для тестирования антител, так и наборы для тестирования антигена, предоставляя индивидуальные и профессиональные решения для различных потребностей.&lt;/p&gt;&lt;center style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202405/4a4d842a3f4f1ad.jpg&quot; alt=&quot;&quot; style=&quot;box-sizing: border-box; margin: 0px 20px; padding: 0px; border: 0px; display: inline-block; width: 450px; vertical-align: middle;&quot;&gt;&lt;/center&gt;&lt;center style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202405/585e0401d694e7f.jpg&quot; alt=&quot;&quot; style=&quot;box-sizing: border-box; margin: 0px 20px; padding: 0px; border: 0px; display: inline-block; width: 450px; vertical-align: middle;&quot;&gt;&lt;/center&gt;&lt;center style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202405/c5c4b7e96c56c9d.jpg&quot; alt=&quot;&quot; style=&quot;box-sizing: border-box; margin: 0px 20px; padding: 0px; border: 0px; display: inline-block; width: 450px; vertical-align: middle;&quot;&gt;&lt;/center&gt;&lt;p class=&quot;main-p2&quot; &gt;Набор для тестирования антигена SARS-CoV-2 от BioHermes (тест на боковой поток) получил одобрение немецкого BfArM и находится на стадии клинической проверки в PEI. Он включен в список Федерального управления безопасности здравоохранения Австрии, компетентного органа Бельгии по медицинским изделиям и в общий список ЕС, что позволяет большему числу стран с уверенностью использовать наши продукты в борьбе с эпидемией COVID-19. Успешное получение этих сертификатов свидетельствует о том, что BioHermes сделала еще один шаг в борьбе с эпидемией COVID-19. Как важный член отрасли IVD, BioHermes продолжит принимать меры для выполнения корпоративных миссий. Эпидемия закончится, и мы в конечном итоге победим в борьбе с COVID-19.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),(13,1,6,'&lt;p &gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202405/a0f28424e6ed7d.jpg&quot; width=&quot;1000&quot; height=&quot;750&quot; title=&quot;FIME BioHermes 2&quot; alt=&quot;FIME BioHermes 2&quot; style=&quot;box-sizing: border-box; display: inline-block; vertical-align: middle; border: none; object-fit: contain;&quot;&gt;&lt;/p&gt;&lt;p&gt;&lt;br style=&quot;box-sizing: border-box;&quot;&gt;&lt;/p&gt;&lt;blockquote style=&quot;box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);&quot;&gt;&lt;blockquote style=&quot;box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);&quot;&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);&quot;&gt;&lt;span style=&quot;box-sizing: border-box;&quot;&gt;FIME (Florida International Medical Expo, Международная медицинская выставка во Флориде), ведущая мировая международная медицинская выставка и конференция, а также крупнейшая медицинская торговая ярмарка в Америке, с размахом прошла в Конференц-центре Майами-Бич с 21 по 23 июня. Тысячи экспонентов из более чем пятидесяти стран привлекли множество медицинских специалистов из более чем ста стран и регионов.&lt;/span&gt;&lt;/p&gt;&lt;/blockquote&gt;&lt;/blockquote&gt;&lt;p&gt;&lt;span style=&quot;box-sizing: border-box;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br style=&quot;box-sizing: border-box;&quot;&gt;&lt;/p&gt;&lt;p &gt;&lt;span style=&quot;box-sizing: border-box;&quot;&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202405/75298a85e1293db.jpg&quot; width=&quot;1000&quot; height=&quot;750&quot; title=&quot;FIME BioHermes 5&quot; alt=&quot;FIME BioHermes 5&quot; style=&quot;box-sizing: border-box; display: inline-block; vertical-align: middle; border: none; object-fit: contain;&quot;&gt;&lt;br style=&quot;box-sizing: border-box;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;blockquote style=&quot;box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);&quot;&gt;&lt;blockquote style=&quot;box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);&quot;&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);&quot;&gt;&lt;span style=&quot;box-sizing: border-box;&quot;&gt;&lt;br style=&quot;box-sizing: border-box;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);&quot;&gt;Компания BioHermes, видный игрок в медицинской индустрии, привлекла всеобщее внимание своим замечательным ассортиментом продуктов и решений, очаровывая посетителей своим дальновидным подходом.&lt;/p&gt;&lt;/blockquote&gt;&lt;/blockquote&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;blockquote style=&quot;box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);&quot;&gt;&lt;blockquote style=&quot;box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);&quot;&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);&quot;&gt;&lt;span style=&quot;box-sizing: border-box;&quot;&gt;С полным ассортиментом продуктов для гликированного гемоглобина, сертифицированных NGSP, IFCC и FDA, а также портфелем продукции для акушерства и гинекологии, реаниматологии/анестезиологии, включающим множество патентов, включая патенты на изобретения в США, компания BioHermes демонстрировала свою конкурентоспособность и репутацию бренда.&lt;/span&gt;&lt;/p&gt;&lt;/blockquote&gt;&lt;/blockquote&gt;&lt;p&gt;&lt;span style=&quot;box-sizing: border-box;&quot;&gt;&lt;br style=&quot;box-sizing: border-box;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p &gt;&lt;span style=&quot;box-sizing: border-box;&quot;&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202405/94fbe0f4e57a3.jpg&quot; width=&quot;1000&quot; height=&quot;751&quot; title=&quot;On site show of BioHemes HbA1c Test&quot; alt=&quot;On site show of BioHemes HbA1c Test&quot; style=&quot;box-sizing: border-box; display: inline-block; vertical-align: middle; border: none; object-fit: contain;&quot;&gt;&lt;br style=&quot;box-sizing: border-box;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;blockquote style=&quot;box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);&quot;&gt;&lt;blockquote style=&quot;box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);&quot;&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);&quot;&gt;На протяжении всей выставки компания BioHermes привлекала внимание многочисленных коллег по отрасли, делясь своими знаниями и проводя продуктивные обсуждения по поводу потенциальных партнерских возможностей. Посетители были приятно удивлены комплексным решением, предлагаемым BioHermes в области управления диабетом, которое включало множество передовых продуктов. Среди них были портативный ручной гликогемоглобиновый измеритель A1c EZ 2.0, автоматизированные настольные устройства A1Cchek Express / Pro с сенсорным экраном для измерения гликированного гемоглобина и BH 60 высокопроизводительный лабораторный анализатор HPLC HbA1c, использующий метод высокоэффективной жидкостной хроматографии, являющийся золотым стандартом.&lt;/p&gt;&lt;/blockquote&gt;&lt;/blockquote&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;blockquote style=&quot;box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);&quot;&gt;&lt;blockquote style=&quot;box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);&quot;&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);&quot;&gt;Миссия BioHermes:&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);&quot;&gt;Предоставлять более быстрые, удобные, точные и доступные тестовые продукты для in vitro диагностики, позволяя нам эффективно предотвращать и контролировать заболевания.&lt;/p&gt;&lt;/blockquote&gt;&lt;/blockquote&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;blockquote style=&quot;box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);&quot;&gt;&lt;blockquote style=&quot;box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);&quot;&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);&quot;&gt;Смотрим в будущее:&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);&quot;&gt;С успешным завершением выставки на FIME, BioHermes с нетерпением ждет встречи с уважаемыми участниками на ежегодной встрече Американской ассоциации клинической химии (AACC) и выставке клинических лабораторий, которая пройдет с 23 по 27 июля в Анахайме.&lt;/p&gt;&lt;/blockquote&gt;&lt;/blockquote&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),(15,1,6,'&lt;div&gt;Самая крупная и влиятельная ежегодная научная конференция и клиническое мероприятие AACC пройдет в выставочном центре Анахайма в Калифорнии с 23 по 27 июля. Это событие предоставляет участникам уникальную возможность взаимодействовать с мировыми лидерами в области клинической химии, молекулярной диагностики, масс-спектрометрического анализа, управления лабораториями и других областей, а также получить представление о передовых технологиях, новаторских исследованиях и значительных изменениях.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Мы рады пригласить всех уважаемых гостей и профессионалов посетить наш стенд 1383 для обсуждения наших продуктов и вопросов общественного здравоохранения.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Что вы откроете для себя в BioHermes?&lt;/div&gt;&lt;div&gt;Широкий ассортимент анализаторов HbA1c для управления диабетом: Первый портативный анализатор гликозилированного гемоглобина и настольный анализатор гликозилированного гемоглобина HbA1c, использующий методологию HPLC, признанную золотым стандартом.&lt;/div&gt;&lt;div&gt;Акушерство и гинекология: Совместный тест IGFB-1/fFN.&lt;/div&gt;&lt;div&gt;Продукты для ICU/анестезиологии: Ларингеальная маска, носовая канюля etco2.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Пожалуйста, приходите, чтобы узнать больше о наших продуктах и получить дополнительную информацию. Ждем вас!&lt;/div&gt;'),(32,1,6,'&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202405/f1b8a660e18a2.png&quot;&gt;&lt;/p&gt;&lt;p class=&quot;main-p0&quot; style=&quot;text-align: justify; margin-top: 0px; margin-bottom: 0px; padding: 0px; width: 1000px; line-height: 28px;&quot;&gt;Оба типа диабета, как тип 1, так и тип 2, вызывают страдания от хронического заболевания. Диабет 1 типа — это когда иммунная система организма атакует и уничтожает клетки, которые производят инсулин. Причины этого разрушительного процесса не полностью понятны, но вероятное объяснение заключается в том, что сочетание генетической предрасположенности (обусловленной большим количеством генов) и внешнего триггера, такого как вирусная инфекция, инициирует аутоиммунную реакцию. Диабет 1 типа является одним из самых распространенных хронических заболеваний у детей.&lt;/p&gt;&lt;p class=&quot;main-p0&quot; style=&quot;text-align: justify; margin-top: 0px; margin-bottom: 0px; padding: 0px; width: 1000px; line-height: 28px;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p class=&quot;main-p0&quot; style=&quot;text-align: justify; margin-top: 0px; margin-bottom: 0px; padding: 0px; width: 1000px; line-height: 28px;&quot;&gt;Диабет 2 типа — это когда организм не производит достаточно инсулина или клетки организма не реагируют на инсулин. Диабет 2 типа составляет подавляющее большинство случаев диабета в мире, более 90% всех случаев диабета по всему миру.&lt;/p&gt;&lt;p class=&quot;main-p0&quot; style=&quot;text-align: justify; margin-top: 0px; margin-bottom: 0px; padding: 0px; width: 1000px; line-height: 28px;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p class=&quot;main-p0&quot; style=&quot;text-align: justify; margin-top: 0px; margin-bottom: 0px; padding: 0px; width: 1000px; line-height: 28px;&quot;&gt;Оба типа диабета могут вызывать серьезные осложнения, такие как сердечно-сосудистые заболевания, хроническая болезнь почек, повреждение нервов и другие проблемы со стопами, стоматологическим здоровьем, зрением, слухом и психическим здоровьем.&lt;/p&gt;&lt;p class=&quot;main-p2&quot;&gt;Компания BioHermes уже десятилетиями занимается изучением диабета и помогает нашим клиентам справляться с управлением этим заболеванием. Для повышения осведомленности и улучшения общего образования по вопросам диабета мы и наши партнеры из BioHermes провели мероприятия в рамках Дня диабета в этом году в нескольких местах, таких как Южная Африка и Индия, чтобы подчеркнуть важность и обменяться идеями по вопросам, связанным с диабетом. Деятельность, такая как бесплатное тестирование на месте, запуск новых продуктов, образовательные семинары и т. д., была проведена для взаимодействия с местными сообществами и деловыми партнерами.&lt;/p&gt;&lt;p class=&quot;main-p2&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p class=&quot;main-p2&quot;&gt;Мы с нетерпением ждем вас на нашем следующем мероприятии!&lt;/p&gt;&lt;table align=&quot;center&quot;&gt;&lt;tbody&gt;&lt;tr class=&quot;firstRow&quot;&gt;&lt;td width=&quot;479&quot; valign=&quot;middle&quot; style=&quot;word-break: break-all;&quot; align=&quot;center&quot;&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202405/cdc8b941fbc01a9.png&quot;&gt;&lt;/td&gt;&lt;td width=&quot;479&quot; valign=&quot;middle&quot; style=&quot;word-break: break-all;&quot; align=&quot;center&quot;&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202405/2d6349305ba6c83.png&quot;&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;479&quot; valign=&quot;middle&quot; style=&quot;word-break: break-all;&quot; align=&quot;center&quot;&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202405/93fabb38ea7bec8.png&quot;&gt;&lt;/td&gt;&lt;td width=&quot;479&quot; valign=&quot;middle&quot; style=&quot;word-break: break-all;&quot; align=&quot;center&quot;&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202405/a5e41ccdbe94b7e.png&quot;&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;479&quot; valign=&quot;middle&quot; align=&quot;center&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202405/848ff27e9492366.png&quot;&gt;&lt;/td&gt;&lt;td width=&quot;479&quot; valign=&quot;middle&quot; align=&quot;center&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202405/42e1d3bc5052465.png&quot;&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;479&quot; valign=&quot;middle&quot; align=&quot;center&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202405/8a910297c015f71.png&quot;&gt;&lt;/td&gt;&lt;td width=&quot;479&quot; valign=&quot;middle&quot; align=&quot;center&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202405/3ca21dad68e4d.png&quot;&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;p class=&quot;main-p2&quot; &gt;&lt;br&gt;&lt;/p&gt;'),(33,1,6,'&lt;p class=&quot;main-p2&quot; &gt;Этой осенью медицинская отрасль была сосредоточена на Шэньчжэне, Китай, где с 13 по 16 октября прошла 85-я Китайская международная выставка медицинского оборудования (CMEF) — крупнейшая торговая ярмарка медицинского оборудования в Азиатско-Тихоокеанском регионе. CMEF является одной из основных площадок, где компания BioHermes демонстрирует свои новейшие технологии и решения в области медицинских устройств.&lt;/p&gt;&lt;p id=&quot;_img_parent_tmp&quot; &gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202405/6a5f24272505d26.jpg&quot; alt=&quot;&quot; style=&quot;box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; display: inline-block; width: 960px; vertical-align: middle;&quot;&gt;&lt;/p&gt;&lt;p id=&quot;_img_parent_tmp&quot; &gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202405/3ef9fc9430b5efa.jpg&quot; alt=&quot;&quot; style=&quot;box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; display: inline-block; width: 960px; vertical-align: middle;&quot;&gt;&lt;/p&gt;&lt;p class=&quot;main-p2&quot; &gt;Для тестирования HbA1c выбирайте хроматографию BioHermes: специализированную, точную и высокоэффективную, с хранением при комнатной температуре.&lt;/p&gt;&lt;center style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;&lt;p id=&quot;_img_parent_tmp&quot; &gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202405/d45f01525dc24e3.jpg&quot; alt=&quot;&quot; style=&quot;box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; display: inline-block; width: 960px; vertical-align: middle;&quot;&gt;&lt;/p&gt;&lt;/center&gt;&lt;p class=&quot;main-p2&quot; &gt;От первого портативного анализатора гликированного гемоглобина с такой же точностью, как у HPLC, до четырехканального анализатора гликированного гемоглобина, наиболее подходящего для лабораторий (каждый канал независим и предоставляет четыре результата за 8 минут), операции стали крайне простыми, а точность возросла до нового уровня. Затем появился полностью автоматизированный одноканальный анализатор гликированного гемоглобина для клинических отделений, а в завершение был представлен «золотой стандарт» методологии ионного обмена HPLC — полностью автоматизированный анализатор гликированного гемоглобина BH60. Эта серия анализаторов гликированного гемоглобина обеспечила полное покрытие всех уровней больниц в Китае и более чем 100 странах мира.&lt;/p&gt;&lt;p class=&quot;main-p2&quot; &gt;BioHermes: не только гликогемоглобин&lt;/p&gt;&lt;p class=&quot;main-p2&quot; &gt;BioHermes основана на анализе гликированного гемоглобина, но это не все. Для удовлетворения растущего спроса на улучшение качества обслуживания, компания BioHermes запустила серию новых продуктов.&lt;br&gt;&lt;/p&gt;&lt;p class=&quot;main-p2&quot;&gt;① 12-канальный количественный иммунофлуоресцентный анализатор&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p class=&quot;main-p2&quot;&gt;12 независимых инкубационных каналов, возможность проведения 12 тестов одновременно и автоматическое распознавание вставленных тест-полосок. Операция в один шаг, смешанные тесты нескольких элементов, постоянная температура инкубации, высокая чувствительность, точность, надежность, эффективность и удобство.&lt;/p&gt;&lt;center style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;&lt;p id=&quot;_img_parent_tmp&quot; &gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202405/e7b63005421f2fe.jpg&quot; alt=&quot;&quot; style=&quot;box-sizing: border-box; margin: 0px 20px; padding: 0px; border: 0px; display: inline-block; width: 450px; vertical-align: middle;&quot;&gt;&lt;/p&gt;&lt;/center&gt;&lt;p class=&quot;main-p2&quot;&gt;② Анализатор тромбоэластографии&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p class=&quot;main-p2&quot;&gt;Тромбоэластограф — это устройство для динамического мониторинга всего процесса коагуляции и фибринолиза. Он полностью описывает весь процесс от активации коагуляционных факторов и агрегации тромбоцитов до образования тромба и фибринолиза. Это позволяет быстро определить, есть ли у пациента гиперкоагуляция, гипокоагуляция или фибринолиз, а также проанализировать причины их возникновения. Имеет большую ценность для клинической оценки функции коагуляции, руководства по трансфузии компонентов крови, прогнозирования риска тромбообразования/кровотечения и назначения медикаментов. Эксклюзивная запатентованная технология, высокая пропускная способность, интеллектуальная система и универсальный аппарат.&lt;/p&gt;&lt;center style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;&lt;p id=&quot;_img_parent_tmp&quot; &gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202405/5dfd3465e343a52.jpg&quot; alt=&quot;&quot; style=&quot;box-sizing: border-box; margin: 0px 20px; padding: 0px; border: 0px; display: inline-block; width: 450px; vertical-align: middle;&quot;&gt;&lt;/p&gt;&lt;/center&gt;&lt;p class=&quot;main-p2&quot;&gt;③ Анализатор ACR&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p class=&quot;main-p2&quot;&gt;Соотношение альбумина и креатинина в моче (ACR) является наиболее чувствительным показателем раннего повреждения почек и рекомендуется международными и отечественными авторитетными руководствами. Этот показатель признан одним из индикаторов хронической болезни почек и диабетической нефропатии.&lt;/p&gt;&lt;center style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;&lt;p id=&quot;_img_parent_tmp&quot; &gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202405/cf8433f82a821db.jpg&quot; alt=&quot;&quot; style=&quot;box-sizing: border-box; margin: 0px 20px; padding: 0px; border: 0px; display: inline-block; width: 450px; vertical-align: middle;&quot;&gt;&lt;/p&gt;&lt;/center&gt;&lt;p class=&quot;main-p2&quot;&gt;④ Цветной допплеровский ультразвуковой диагностический комплекс&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p class=&quot;main-p2&quot;&gt;Система с высоким разрешением обеспечивает отличное и четкое качество изображения, удобный и интуитивно понятный дизайн, а также оснащена множеством интерфейсов для удовлетворения потребностей передачи данных в больницах.&lt;/p&gt;&lt;table align=&quot;center&quot;&gt;&lt;tbody&gt;&lt;tr class=&quot;firstRow&quot;&gt;&lt;td width=&quot;479&quot; valign=&quot;middle&quot; style=&quot;word-break: break-all;&quot; align=&quot;center&quot;&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202405/b2f9304892a11db.jpg&quot;&gt;&lt;/td&gt;&lt;td width=&quot;479&quot; valign=&quot;middle&quot; style=&quot;word-break: break-all;&quot; align=&quot;center&quot;&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202405/48aba3ac724759c.jpg&quot;&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;p class=&quot;main-p2&quot; &gt;Компания BioHermes активно участвует в международных обменах и тесно сотрудничает с медицинскими экспертами по всему миру. Мы стремимся разрабатывать инновационные медицинские решения, ориентируясь на клинические потребности, чтобы помочь медицинским работникам предоставлять наилучший уход за пациентами. С видением «Стать самым уважаемым предприятием в сфере IVD в мире», BioHermes будет продолжать предоставлять надежные, высококачественные медицинские инновации и услуги по всему миру для улучшения благосостояния человека.&lt;/p&gt;'),(34,1,6,'&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);&quot;&gt;3 января 2024 года Китайско-индонезийский симпозиум по обмену опытом в области образования и управления хроническими заболеваниями был организован Ассоциацией медицинской промышленности Уси и компанией BioHermes Bio &amp;amp; Medical Technology Co., Ltd. (Уcи Биorepmec Биo &amp;amp; Meдикaл Tехнолоджи Ko, Лтд) в Парке научных и технологических инноваций Ванчжуан. Мероприятие предоставило платформу для экспертов для обсуждения проблем и обмена достижениями в управлении хроническими заболеваниями между двумя странами.&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);&quot;&gt;Симпозиум был организован Янь Лю, генеральным директором компании Wuxi BioHermes Bio &amp;amp; Medical Technology Co., Ltd. (Уcи Биorepmec Биo &amp;amp; Meдикaл Tехнолоджи Ko, Лтд) и вице-президентом Ассоциации медицинской промышленности Уси. Доктор Цянь из Департамента контроля и профилактики заболеваний и Доктор Цай из Департамента профилактики и контроля хронических неинфекционных заболеваний Центра контроля и профилактики заболеваний Наньтуна представили знания о хронических заболеваниях и провели соответствующие обмены на основе текущего состояния управления хроническими заболеваниями в Индонезии, городе Уси и городе Наньтун. На этом форуме также были приглашены эксперты для участия в обсуждениях.&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);&quot;&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202405/23b79880ec0ee6f.jpg&quot; title=&quot;Diabetes forum&quot; alt=&quot;Diabetes forum&quot; style=&quot;box-sizing: border-box;display: inline-block;vertical-align: middle;border: none;object-fit: contain&quot;&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);&quot;&gt;С темой 《Новая ситуация, новые задачи и новое начало в управлении хроническими заболеваниями》 директор Цай начал с текущей ситуации с распространением хронических заболеваний и старением населения в городе Наньтун, и в сочетании с планом 《Здоровый Китай 2019-2030》 подчеркнул важность стандартизированного управления и самоуправления пациентов с хроническими заболеваниями. Было отмечено, что основные серьезные проблемы, с которыми сталкивается управление хроническими заболеваниями в Китае, включают нехватку первичных медицинских специалистов; стремительно растущий спрос на медицинские услуги; низкую эффективность обслуживания; и недостаток технологий и наращивания потенциала. Он также отметил, что для изучения новой формы управления хроническими заболеваниями необходимо преодолеть недостатки разделения профилактики и лечения в традиционном управлении хроническими заболеваниями, объединить интернет-технологии и оптимизировать распределение медицинских ресурсов для улучшения обслуживания медицинских и здравоохранительных учреждений, интегрируя профилактику и лечение.&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202405/3ca87a228f9cc1.jpg&quot; title=&quot;HbA1c Test&quot; alt=&quot;HbA1c Test&quot; style=&quot;box-sizing: border-box;display: inline-block;vertical-align: middle;border: none;object-fit: contain&quot;&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);&quot;&gt;Доктор Ева подробно рассказала о распространенности основных хронических заболеваний в Индонезии с 2013 по 2018 годы. Включая анализ причин изменений в состоянии заболеваний за эти годы, она отметила, что основными проблемами, с которыми в настоящее время сталкивается Индонезия, являются низкий уровень выявления заболеваний и низкая эффективность лечения. В ответ на эти проблемы правительство Индонезии также приняло множество мер, включая укрепление системы здравоохранения, усиление санитарного просвещения и пропаганды, а также увеличение скрининга целевых групп, что позволило снизить уровень смертности и инвалидности, связанных с хроническими заболеваниями, и смягчить финансовое бремя, вызванное хроническими заболеваниями.&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202405/9418fc04b14f1e5.jpg&quot; title=&quot;Diabetes Management&quot; alt=&quot;Diabetes Management&quot; style=&quot;box-sizing: border-box;display: inline-block;vertical-align: middle;border: none;object-fit: contain&quot;&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);&quot;&gt;С темой «Контроль сахарного диабета 2 типа» директор Цянь представил региональное распределение и распространенность сахарного диабета 2 типа в Китае, основываясь на текущей ситуации по профилактике и контролю диабета 2 типа в городе Уси. Он также выделил потребности в управлении диабетом для пациентов с диабетом. Увеличение общественного осознания диабета и активное проведение скрининга диабета играют ключевую роль в раннем обнаружении, ранней диагностике и раннем лечении пациентов с диабетом.&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202405/72d06eebf764f7d.jpg&quot; title=&quot;Diabetes Diagnosis&quot; alt=&quot;Diabetes Diagnosis&quot; style=&quot;box-sizing: border-box;display: inline-block;vertical-align: middle;border: none;object-fit: contain&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);&quot;&gt;Симпозиум способствовал обсуждению управления хроническими заболеваниями, контролю диабета и стратегиям выхода на рынок для сотрудничества с Индонезией. Он предоставил китайским и индонезийским компаниям возможность углубить взаимное понимание, способствуя экономическим вкладам через двусторонние коммерческие партнерства.&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);&quot;&gt;По завершении симпозиума распространилась надежда на успешное сотрудничество между медицинскими компаниями Китая и Индонезии, что будет способствовать достижениям в профилактике и управлении хроническими заболеваниями, а также ускорению экономического развития.&lt;/p&gt;'),(35,1,6,'&lt;p&gt;В конце 2023 года, BioHermes достигла значительных успехов в сфере медицинских технологий, продемонстрировав наши инновационные продукты и способствуя установлению партнерских отношений с потенциальными коллегами. Наше участие в нескольких международных мероприятиях, таких как HOSPITAL EXPO в Индонезии, CMEF в Шэньчжэне и Medica в Германии, подчеркивает нашу приверженность развитию медицинских технологий на глобальном уровне. Благодаря нашим усилиям, BioHermes не только способствовала прогрессу в области медицинских технологий, но и поддержала инициативы по улучшению здравоохранения по всему миру.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;18-21 октября 2023 года: HOSPITAL EXPO в Индонезии&lt;/p&gt;&lt;p&gt;HOSPITAL EXPO в Индонезии стала центром сотрудничества и инноваций в медицинской сфере с 18 по 21 октября. Выставка привлекла значительное международное внимание, в ней приняли участие почти 590 компаний из таких стран, как Китай, Австралия, Бельгия, Индонезия, Япония, Южная Корея, Малайзия, Россия, Сингапур и Таиланд. Особенно выделилось 180 китайских компаний. BioHermes, специализирующаяся на исследованиях и разработке IVD продуктов, продемонстрировала нашу линейку продуктов Glycohemoglobin Analyzer на этой выставке. Наш стенд стал популярным центром запросов медицинских продуктов и обмена отраслевой информацией, что создало прочную основу для будущего торгового сотрудничества.&lt;/p&gt;&lt;p &gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202405/4b7c3b2c4f043f5.jpg&quot; width=&quot;750&quot; height=&quot;750&quot; title=&quot;Diabetes Diagnosis&quot; alt=&quot;Diabetes Diagnosis&quot; style=&quot;box-sizing: border-box; display: inline-block; vertical-align: middle; border: none; object-fit: contain;&quot;&gt;&lt;/p&gt;&lt;p&gt;28-31 октября 2023 года: CMEF в Шэньчжэне&lt;/p&gt;&lt;p&gt;С 28 по 31 октября, в Шэньчжэне открылась выставка CMEF под девизом «Инновационные технологии ведут будущее». Мероприятие подчеркнуло передовые технологии с активным участием более 4000 компаний из более чем 130 стран и регионов. Параллельно с выставкой прошло более 70 тематических конференций, сосредоточенных на отраслевых политиках и актуальных вопросах. BioHermes представила наши анализаторы гликозилированного гемоглобина, а также продукты для ICU и анестезии. Мы также предложили бесплатное тестирование HbA1c для посетителей и продемонстрировали живое сравнение результатов наших анализаторов POCT и HPLC гликозилированного гемоглобина.&lt;/p&gt;&lt;p &gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202405/45c89fe310c9.jpg&quot; width=&quot;750&quot; height=&quot;563&quot; title=&quot;Glycated Hemoglobin Analyzer&quot; alt=&quot;Glycated Hemoglobin Analyzer&quot; style=&quot;box-sizing: border-box; display: inline-block; vertical-align: middle; border: none; object-fit: contain;&quot;&gt;&lt;/p&gt;&lt;p &gt;&lt;br style=&quot;box-sizing: border-box;&quot;&gt;&lt;/p&gt;&lt;p&gt;14 ноября 2023 года: Всемирный день диабета&lt;/p&gt;&lt;p&gt;В Всемирный день диабета, компания BioHermes в сотрудничестве с больницами различных провинций предложила бесплатное тестирование HbA1c для повышения осведомленности и продвижения диагностики и профилактических мер против диабета. Эта акция была направлена на повышение осведомленности населения о диабете, стимулирование проактивного скрининга и своевременного лечения.&lt;/p&gt;&lt;p &gt;&lt;span style=&quot;box-sizing: border-box;&quot;&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202405/3374c632ed1a0e1.jpg&quot; width=&quot;750&quot; height=&quot;563&quot; title=&quot;Glycosylated Hemoglobin Device&quot; alt=&quot;Glycosylated Hemoglobin Device&quot; style=&quot;box-sizing: border-box; display: inline-block; vertical-align: middle; border: none; object-fit: contain;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;13-16 ноября 2023 года: Medica в Германии&lt;/p&gt;&lt;p&gt;Выставка Medica в Германии, проходившая с 13 по 16 ноября, собрала впечатляющее количество более 5300 экспонентов из более чем 70 стран и регионов. Мероприятие посетили десятки тысяч профессионалов медицинской отрасли, демонстрируя множество инновационных технологий и сочетая передовые академические мысли. Наша команда BioHermes представила наш полный ассортимент устройств для гликозилированного гемоглобина, а также специализированные серии для ICU и анестезии. Наша презентация вызвала значительный интерес у потенциальных партнеров, что привело к многочисленным выражениям заинтересованности в сотрудничестве. Установленные партнеры также воспользовались этой возможностью для улучшения сотрудничества и укрепления отношений с BioHermes.&lt;/p&gt;&lt;p&gt;BioHermes гордится всеми усилиями по улучшению общественного здоровья и ждет присоединения новых надежных партнеров.&lt;/p&gt;&lt;p &gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202405/abe00cc658ba70c.jpg&quot; width=&quot;750&quot; height=&quot;563&quot; title=&quot;Glycohemoglobin analyzer&quot; alt=&quot;Glycohemoglobin analyzer&quot; style=&quot;box-sizing: border-box; display: inline-block; vertical-align: middle; border: none; object-fit: contain;&quot;&gt;&lt;/p&gt;'),(36,1,6,'&lt;p&gt;85-я Китайская международная выставка медицинского оборудования (Осенняя выставка CMEF 2021) пройдет с 13 по 16 октября 2021 года в Международном выставочном центре Шэньчжэня. Мы искренне приглашаем наших ценных партнеров и друзей посетить наш стенд в зале 14, место B17, чтобы открыть возможности для сотрудничества и углубить существующее партнерство в более широкую сферу.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;О CMEF&amp;nbsp;&lt;/b&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;Китайская международная выставка медицинского оборудования (CMEF) — крупнейшая выставка медицинского оборудования, связанных продуктов и услуг в Азиатско-Тихоокеанском регионе. Выставка охватывает десятки тысяч продуктов, таких как медицинская визуализация, инвитро диагностика, электроника, оптика, первая помощь, реабилитация, медицинская информационная технология и аутсорсинг, предоставляя услуги всему медицинскому сектору от источника до конечного потребителя медицинского оборудования.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;О компании BioHermes&lt;/b&gt;&lt;/p&gt;&lt;p&gt;Компания BioHermes, высокотехнологичное предприятие в сфере IVD с уникальной технологией тестирования HbA1c, сосредоточена на предоставлении наиболее удобных, эффективных и доступных тестов на HbA1c для людей по всему миру, с целью предотвращения диабета и его осложнений.&lt;/p&gt;'),(46,2,6,'&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: center; &quot;&gt;21 июня 2024 года BioHermes успешно приняла участие в Американской международной выставке медицинского оборудования (FIME 2024) в выставочном центре Майами-Бич, США. Как ведущее мировое событие в медицинской отрасли, FIME привлекла более 1,300 экспонентов из более чем 110 стран и регионов и приветствовала более 15,000 профессиональных посетителей.&lt;br&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: center; &quot;&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202406/ec1c9bdde3c9074.png&quot; title=&quot;image.png&quot; alt=&quot;image.png&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: center; &quot;&gt;Как инициатор технологических инноваций в глобальной индустрии тестирования, BioHermes Biotechnology обладает более чем 100 внутренними и зарубежными патентами, включая более 50 патентов на изобретения и более 20 зарубежных патентов. На этой выставке команда BioHermes представила новейшие три платформы с более чем 20 продуктами. В области обнаружения и управления хроническими заболеваниями, а также платформ ICU/анестезии, инновационные продукты BioHermes Biotechnology добавили ярких красок на выставке на фоне «цветения ста цветов».&lt;o:p&gt;&lt;/o:p&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: center; &quot;&gt;&amp;nbsp;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202406/35e6dfb7bfacfc8.png&quot; title=&quot;image.png&quot; alt=&quot;image.png&quot;&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: center; &quot;&gt;Как инициатор технологических инноваций в глобальной индустрии тестирования, BioHermes Biotechnology обладает более чем 100 внутренними и зарубежными патентами, включая более 50 патентов на изобретения и более 20 зарубежных патентов. На этой выставке команда BioHermes представила новейшие три платформы с более чем 20 продуктами. В области обнаружения и управления хроническими заболеваниями, а также платформ ICU/анестезии, инновационные продукты BioHermes Biotechnology добавили ярких красок на выставке на фоне «цветения ста цветов».&lt;o:p&gt;&lt;/o:p&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: center; &quot;&gt;&amp;nbsp;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202406/8ba9aa8d95191e1.png&quot; title=&quot;image.png&quot; alt=&quot;image.png&quot;&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: center; &quot;&gt;Во время выставки команда BioHermes внимательно выслушивала реальные потребности клиентов и предоставляла высококачественные решения, исходя из их фактических условий и сценариев применения. Профессиональное обслуживание и энтузиазм команды получили единодушное признание со стороны присутствующих клиентов.&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: center; &quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: center; &quot;&gt;Благодарим всех новых и старых друзей, посетивших стенд BioHermes!&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: center; &quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: center; &quot;&gt;BioHermes будет продолжать двигаться вперед по пути инноваций и научных исследований, постоянно способствуя развитию глобальной медицинской и здравоохранительной отрасли и стремясь предоставить мировым клиентам более широкий выбор продуктов и лучшее качество обслуживания. Мы с нетерпением ждем встречи с вами на крупных международных и внутренних медицинских выставках, углубления сотрудничества и совместного создания новой глобальной ситуации открытых инноваций и взаимовыгодного сотрудничества!&lt;/p&gt;'),(47,1,6,'&lt;p&gt;С 19 по 21 июля 2024 года во Вьетнаме в Дананге успешно прошла двенадцатая научная конференция по эндокринным заболеваниям, диабету и метаболическим расстройствам, организованная Вьетнамской ассоциацией диабета и эндокринологии (VADE). Эта конференция ознаменовала собой новый этап в развитии диагностики и лечения эндокринных заболеваний и диабета во Вьетнаме.&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p id=&quot;_img_parent_tmp&quot; style=&quot;text-align:center&quot;&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/ueditor/image/202407/172239094348a20d.png&quot; title=&quot;image&quot; alt=&quot;image&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 8px;margin-bottom: 8px;margin-left: 0;line-height: 120%&quot;&gt;&lt;span style=&quot;;font-family:&amp;#39;Arial Regular&amp;#39;;font-size:14px&quot;&gt;VADE под руководством Министерства здравоохранения Вьетнама и медицинских ассоциаций, является членом Ассоциации эндокринологов стран&lt;/span&gt;&lt;span style=&quot;;font-family:&amp;#39;Arial Regular&amp;#39;;font-size:14px&quot;&gt;&amp;nbsp;&lt;span style=&quot;font-family:Arial Regular&quot;&gt;АСЕАН&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;;font-family:&amp;#39;Arial Regular&amp;#39;;font-size:14px&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;;font-family:&amp;#39;Arial Regular&amp;#39;;font-size:14px&quot;&gt;(ASEAN), Международного эндокринологического общества (ISE) и Международной диабетической федерации (IDF). На этой конференции собрались звездные участники: 19 экспонентов из медицинской отрасли, а также более 1100 ведущих специалистов и ученых из области медицины, которые совместно приняли участие в этом значимом событии.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;table align=&quot;center&quot;&gt;&lt;tbody&gt;&lt;tr class=&quot;firstRow&quot;&gt;&lt;td width=&quot;541&quot; valign=&quot;middle&quot; style=&quot;word-break: break-all;&quot; align=&quot;center&quot;&gt;&lt;p id=&quot;_img_parent_tmp&quot;&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/ueditor/image/202407/1722390977ca86af.png&quot; title=&quot;image&quot; alt=&quot;image&quot; style=&quot;float: right;&quot;/&gt;&lt;/p&gt;&lt;/td&gt;&lt;td width=&quot;541&quot; valign=&quot;middle&quot; style=&quot;word-break: break-all;&quot; align=&quot;center&quot;&gt;&lt;p id=&quot;_img_parent_tmp&quot;&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/ueditor/image/202407/17223909845894fe.png&quot; title=&quot;image&quot; alt=&quot;image&quot; style=&quot;float: left;&quot;/&gt;&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;table align=&quot;center&quot;&gt;&lt;tbody&gt;&lt;tr class=&quot;firstRow&quot;&gt;&lt;td width=&quot;541&quot; valign=&quot;middle&quot; style=&quot;word-break: break-all;&quot; align=&quot;center&quot;&gt;&lt;p id=&quot;_img_parent_tmp&quot;&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/ueditor/image/202407/17223910448cc1a1.png&quot; title=&quot;image&quot; alt=&quot;image&quot; style=&quot;float: right;&quot;/&gt;&lt;/p&gt;&lt;/td&gt;&lt;td width=&quot;541&quot; valign=&quot;middle&quot; style=&quot;word-break: break-all;&quot; align=&quot;center&quot;&gt;&lt;p id=&quot;_img_parent_tmp&quot;&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/ueditor/image/202407/17223910545017dc.png&quot; title=&quot;image&quot; alt=&quot;image&quot; style=&quot;float: left;&quot;/&gt;&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;table align=&quot;center&quot;&gt;&lt;tbody&gt;&lt;tr class=&quot;firstRow&quot;&gt;&lt;td width=&quot;541&quot; valign=&quot;middle&quot; style=&quot;word-break: break-all;&quot; align=&quot;center&quot;&gt;&lt;p id=&quot;_img_parent_tmp&quot;&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/ueditor/image/202407/17223910977bfaf9.png&quot; title=&quot;image&quot; alt=&quot;image&quot; style=&quot;float: right;&quot;/&gt;&lt;/p&gt;&lt;/td&gt;&lt;td width=&quot;541&quot; valign=&quot;middle&quot; style=&quot;word-break: break-all;&quot; align=&quot;center&quot;&gt;&lt;p id=&quot;_img_parent_tmp&quot;&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/ueditor/image/202407/17223911037a7f9a.png&quot; title=&quot;image&quot; alt=&quot;image&quot; style=&quot;float: left;&quot;/&gt;&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;table align=&quot;center&quot;&gt;&lt;tbody&gt;&lt;tr class=&quot;firstRow&quot;&gt;&lt;td width=&quot;541&quot; valign=&quot;middle&quot; style=&quot;word-break: break-all;&quot; align=&quot;center&quot;&gt;&lt;p id=&quot;_img_parent_tmp&quot;&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/ueditor/image/202407/17223911401b6f9e.png&quot; title=&quot;image&quot; alt=&quot;image&quot; style=&quot;float: right;&quot;/&gt;&lt;/p&gt;&lt;/td&gt;&lt;td width=&quot;541&quot; valign=&quot;middle&quot; style=&quot;word-break: break-all;&quot; align=&quot;center&quot;&gt;&lt;p id=&quot;_img_parent_tmp&quot;&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/ueditor/image/202407/1722391146d4b64e.png&quot; title=&quot;image&quot; alt=&quot;image&quot; style=&quot;float: left;&quot;/&gt;&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;p id=&quot;_img_parent_tmp&quot; style=&quot;text-align:center&quot;&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/ueditor/image/202407/1722391167c932d1.png&quot; title=&quot;image&quot; alt=&quot;image&quot;/&gt;&lt;/p&gt;&lt;p id=&quot;_img_parent_tmp&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 8px;margin-bottom: 8px;margin-left: 0;line-height: 120%&quot;&gt;&lt;span style=&quot;;font-family:&amp;#39;Arial Regular&amp;#39;;line-height:120%;font-size:15px&quot;&gt;На конференции председатель ассоциации, профессор Чан Хыу Данг, выступил с приветственной речью. В зале было представлено более 100 обзорных статей и научных докладов, в основном подготовленных профессорами и врачами, работающими в области эндокринных и метаболических заболеваний. Докладчики представляли медицинские центры Вьетнама (Ханой, Хошимин, Хюэ и другие), медицинские университеты, многопрофильные и специализированные больницы.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p id=&quot;_img_parent_tmp&quot; style=&quot;text-align:center&quot;&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/ueditor/image/202407/172239121766c398.png&quot; title=&quot;image&quot; alt=&quot;image&quot;/&gt;&lt;/p&gt;&lt;p id=&quot;_img_parent_tmp&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 8px;margin-bottom: 8px;margin-left: 0;line-height: 120%&quot;&gt;&lt;span style=&quot;;font-family:&amp;#39;Arial Regular&amp;#39;;line-height:120%;font-size:15px&quot;&gt;На выставке&lt;/span&gt;&lt;span style=&quot;;font-family:&amp;#39;Arial Regular&amp;#39;;line-height:120%;font-size:15px&quot;&gt;, &lt;/span&gt;&lt;span style=&quot;;font-family:&amp;#39;Arial Regular&amp;#39;;line-height:120%;font-size:15px&quot;&gt;BioHermes представила не только продукты для измерения гликированного гемоглобина для всех сцен применения платформы управления диабетом и продукты для иммунофлуоресцентного тестирования платформы управления хроническими заболеваниями, но и увлекательную демонстрацию сравнительных тестов серии продуктов для измерения гликированного гемоглобина. Команда BioHermes с профессиональным подходом продемонстрировала участникам, включая экспертов и учёных, быстроту и удобство использования продуктов для измерения гликированного гемоглобина. Точные и надёжные результаты тестирования сделали компанию центром внимания на выставке.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p id=&quot;_img_parent_tmp&quot; style=&quot;text-align:center&quot;&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/ueditor/image/202407/17223912435e4536.png&quot; title=&quot;image&quot; alt=&quot;image&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 8px;margin-bottom: 8px;margin-left: 0;line-height: 120%&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-family: &amp;#39;Arial Bold&amp;#39;;line-height: 120%;font-size: 15px&quot;&gt;Раскрытие ведущих продуктов&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;;font-family:&amp;#39;Arial Regular&amp;#39;;font-size:15px&quot;&gt;На мероприятии &lt;/span&gt;&lt;span style=&quot;;font-family:等线;font-size:15px&quot;&gt;&lt;span style=&quot;font-family:Arial Regular&quot;&gt;BioHermes&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;;font-family:&amp;#39;Arial Regular&amp;#39;;font-size:15px&quot;&gt;&amp;nbsp;&lt;span style=&quot;font-family:Arial Regular&quot;&gt;представила серию продуктов для измерения гликированного гемоглобина, включая &lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;;font-family:等线;font-size:15px&quot;&gt;&lt;span style=&quot;font-family:Arial Regular&quot;&gt;A1cChek Pro&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;;font-family:&amp;#39;Arial Regular&amp;#39;;font-size:15px&quot;&gt;&amp;nbsp;&lt;span style=&quot;font-family:Arial Regular&quot;&gt;автоматический четырехканальный анализатор гликированного гемоглобина, &lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;;font-family:等线;font-size:15px&quot;&gt;&lt;span style=&quot;font-family:Arial Regular&quot;&gt;BH 60 &lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;;font-family:&amp;#39;Arial Regular&amp;#39;;font-size:15px&quot;&gt;полностью автоматический анализатор гликированного гемоглобина и A1C EZ2.0 для сравнительных испытаний. Участники могли лично убедиться в точности и быстроте этих продуктов, сдав всего одну каплю крови. Стенд пользовался огромной популярностью, и очередь желающих пройти тестирование не уменьшалась. Продукты для измерения гликированного гемоглобина от Бохуэйс завоевали единодушное одобрение присутствующих благодаря удобству и быстроте использования, а также точным и надежным результатам тестирования.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;table align=&quot;center&quot;&gt;&lt;tbody&gt;&lt;tr class=&quot;firstRow&quot;&gt;&lt;td width=&quot;541&quot; valign=&quot;middle&quot; style=&quot;word-break: break-all;&quot; align=&quot;center&quot;&gt;&lt;p id=&quot;_img_parent_tmp&quot;&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/ueditor/image/202407/17223912823a484d.png&quot; title=&quot;image&quot; alt=&quot;image&quot; style=&quot;float: right;&quot;/&gt;&lt;/p&gt;&lt;/td&gt;&lt;td width=&quot;541&quot; valign=&quot;middle&quot; style=&quot;word-break: break-all;&quot; align=&quot;center&quot;&gt;&lt;p id=&quot;_img_parent_tmp&quot;&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/ueditor/image/202407/17223912864688a0.png&quot; title=&quot;image&quot; alt=&quot;image&quot; style=&quot;float: left;&quot;/&gt;&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;p id=&quot;_img_parent_tmp&quot; style=&quot;text-align:center&quot;&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/ueditor/image/202407/172239129375555d.png&quot; title=&quot;image&quot; alt=&quot;image&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 8px;margin-bottom: 8px;margin-left: 0&quot;&gt;&lt;span style=&quot;;font-family:&amp;#39;Arial Regular&amp;#39;;font-size:15px&quot;&gt;Профессиональная команда &lt;/span&gt;&lt;span style=&quot;;font-family:&amp;#39;Arial Regular&amp;#39;;font-size:15px&quot;&gt;BioHermes&lt;/span&gt;&lt;span style=&quot;;font-family:&amp;#39;Arial Regular&amp;#39;;font-size:15px&quot;&gt;&amp;nbsp;&lt;span style=&quot;font-family:Arial Regular&quot;&gt;с большим энтузиазмом активно взаимодействовала на месте, внимательно выслушивая каждого клиента. Своими глубокими знаниями о продукции и внимательным, доброжелательным обслуживанием мы предоставили клиентам наиболее подходящие решения для управления хроническими заболеваниями и лечения диабета.&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p id=&quot;_img_parent_tmp&quot; style=&quot;text-align:center&quot;&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/ueditor/image/202407/1722391329989e5f.png&quot; title=&quot;image&quot; alt=&quot;image&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 8px;margin-bottom: 8px;margin-left: 0&quot;&gt;&lt;span style=&quot;;font-family:&amp;#39;Arial Regular&amp;#39;;font-size:15px&quot;&gt;BioHermes&lt;/span&gt;&lt;span style=&quot;;font-family:&amp;#39;Arial Regular&amp;#39;;font-size:15px&quot;&gt;&amp;nbsp;&lt;span style=&quot;font-family:Arial Regular&quot;&gt;продолжит путь инновационных исследований и разработок, стремясь предложить клиентам по всему миру более широкий ассортимент продукции и качественные услуги. Мы будем вносить вклад в развитие мировой медицины. С нетерпением ждем встреч с вами на международных и национальных медицинских выставках для углубления нашего сотрудничества и достижения взаимовыгодного партнерства!&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;'),(48,2,6,'&lt;p style=&quot;margin-top:0;text-indent:43px;text-autospace:ideograph-numeric;text-align:center&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0;text-indent: 32px&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-family: &amp;#39;Times New Roman Regular&amp;#39;;font-size: 16px&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;;font-family:&amp;#39;Times New Roman Regular&amp;#39;;font-size:16px&quot;&gt;Расположенный на ярком юго-восточном конце полуострова Индокитай, Вьетнам, с его уникальным географическим положением, огромной базой населения (почти 103 миллиона на 2023 год) и высокой зависимостью от импорта медицинских устройств (более 90%), постепенно становится центром внимания мировой медицинской индустрии. В июле этого года компания BioHermes завершила исследовательскую поездку по Ханою, Данангу и Хошимину с целью всестороннего понимания текущего состояния и тенденций развития медицинского и здравоохранительного сектора Вьетнама. &lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0;text-indent: 32px&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-family: &amp;#39;Times New Roman Regular&amp;#39;;font-size: 16px&quot;&gt;Обзор маршрута визита&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;;font-family:&amp;#39;Times New Roman Regular&amp;#39;;font-size:16px&quot;&gt;: Ханой (лаборатории) → Дананг (конференция) → Хошимин (медицинские учреждения), охватывающий различные аспекты медицинской и здравоохранительной отрасли Вьетнама.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0;text-indent: 32px&quot;&gt;&lt;span style=&quot;;font-family:&amp;#39;Times New Roman Regular&amp;#39;;font-size:16px&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0;text-indent: 32px&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-family: &amp;#39;Times New Roman Regular&amp;#39;;font-size: 16px&quot;&gt;Ханойский этап: Визиты в лаборатории&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0;text-indent: 32px&quot;&gt;&lt;span style=&quot;;font-family:&amp;#39;Times New Roman Regular&amp;#39;;font-size:16px&quot;&gt;Ханой, столица Вьетнама, также является центром медицинской и здравоохранительной отрасли. Компания BioHermes имела честь посетить лаборатории различных масштабов, такие как Medlatec, Genmedic и Chemedic Lab, и наблюдать за развитием медицины и диагностики в Вьетнаме.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0;text-indent: 32px&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-family: &amp;#39;Times New Roman Regular&amp;#39;;font-size: 16px&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0;text-indent: 32px&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-family: &amp;#39;Times New Roman Regular&amp;#39;;font-size: 16px&quot;&gt;Лаборатория Medlatec&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0;text-indent: 32px&quot;&gt;&lt;span style=&quot;;font-family:&amp;#39;Times New Roman Regular&amp;#39;;font-size:16px&quot;&gt;Основанная в 1996 году как клиническая лаборатория, группа Medlatec расширилась и включает в себя 1 больницу, 18 клиник, 30 центров тестирования и более 200 центров по сбору образцов на месте. Являясь лидером в сфере медицинского тестирования Вьетнама, центры тестирования Medlatec, оснащенные обширной сетью и передовым оборудованием (таким как автоматизированные системы лабораторий Roche и Abbott), предоставляют быстрые и точные диагностические услуги окружающим клиникам и больницам.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0;text-indent: 32px&quot;&gt;&lt;span style=&quot;;font-family:&amp;#39;Times New Roman Regular&amp;#39;;font-size:16px&quot;&gt;Во время визита компания BioHermes провела углубленное обсуждение с Medlatec по вопросам работы устройств для тестирования гликированного гемоглобина. Были проведены сравнительные испытания между A1C EZ 2.0 (хроматография на основе боронатной аффинности) и устройствами Tosoh G11 (ВЭЖХ) и Bio-Rad D100 (ВЭЖХ) от Medlatec с использованием одних и тех же образцов крови. Испытания показали, что A1C EZ 2.0 обладает превосходной точностью и стабильностью по сравнению с другими устройствами.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0;text-indent: 32px&quot;&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202408/6e5e0796daf116.png&quot; title=&quot;image&quot; alt=&quot;image&quot; style=&quot;text-align: center; text-wrap: wrap;&quot;/&gt;&lt;span style=&quot;;font-family:&amp;#39;Times New Roman Regular&amp;#39;;font-size:16px&quot;&gt;&amp;nbsp;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202408/05102a7b534c2b7.png&quot; title=&quot;image&quot; alt=&quot;image&quot; style=&quot;text-align: center; text-indent: 32px; text-wrap: wrap;&quot;/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0;text-indent: 32px&quot;&gt;&lt;span style=&quot;;font-family:&amp;#39;Times New Roman Regular&amp;#39;;font-size:16px&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0;text-indent: 32px&quot;&gt;&lt;span style=&quot;;font-family:&amp;#39;Times New Roman Regular&amp;#39;;font-size:16px&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0;text-indent: 32px&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-family: &amp;#39;Times New Roman Bold&amp;#39;;font-size: 16px&quot;&gt;Лаборатория Genmedic&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0;text-indent: 32px&quot;&gt;&lt;span style=&quot;;font-family:&amp;#39;Times New Roman Regular&amp;#39;;font-size:16px&quot;&gt;Лаборатория Genmedic обладает преимуществами в различных направлениях тестирования, включая биохимию, гематологию, вирусологию, генетику и патологи, и поддерживается современным лабораторным оборудованием (гематологические анализаторы Beckman, биохимические системы Roche, системы иммуноанализа Abbott и др.). Она предоставляет комплексные и высококачественные услуги тестирования окружающим медицинским учреждениям и пользуется высокой оценкой в отрасли за свой профессионализм и точность.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0;text-indent: 32px&quot;&gt;&lt;span style=&quot;;font-family:&amp;#39;Times New Roman Regular&amp;#39;;font-size:16px&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0;text-indent: 32px&quot;&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/ueditor/image/202408/1723536696921850.png?x-oss-process=image/resize,limit_0,m_fill,w_800,h_800,color_FFFFFF&quot; title=&quot;image&quot; alt=&quot;image&quot; style=&quot;font-family: Calibri; font-size: 16px; text-align: center; text-indent: 32px; text-wrap: wrap;&quot;/&gt;&lt;span style=&quot;;font-family:&amp;#39;Times New Roman Regular&amp;#39;;font-size:16px&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0;text-indent: 32px&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-family: &amp;#39;Times New Roman Regular&amp;#39;;font-size: 16px&quot;&gt;Лаборатория Chemedic&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0;text-indent: 32px&quot;&gt;&lt;span style=&quot;;font-family:&amp;#39;Times New Roman Regular&amp;#39;;font-size:16px&quot;&gt;Лаборатория Chemedic предлагает широкий спектр тестирования, включая пренатальный скрининг, скрининг новорожденных, типирование ВПЧ (скрининг предраковых состояний шейки матки), ранний скрининг на рак и другие биохимические и иммунологические анализы.Лаборатория Chemedic обеспечивает высокую точность и надежность тестирования, используя известные бренды медицинского оборудования, такие как Applied Biosystems, PerkinElmer, Roche, Siemens, Sysmex и другие.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0;text-indent: 32px&quot;&gt;&lt;span style=&quot;;font-family:&amp;#39;Times New Roman Regular&amp;#39;;font-size:16px&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0;text-indent: 32px&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; text-indent: 32px; text-align: center;&quot;&gt;&lt;span style=&quot;;font-family:&amp;#39;Times New Roman Regular&amp;#39;;font-size:16px&quot;&gt;&amp;nbsp;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/ueditor/image/202408/1723541136fd959e.png&quot; title=&quot;image&quot; alt=&quot;image&quot;/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; text-indent: 32px; text-align: center;&quot;&gt;&lt;span style=&quot;;font-family:&amp;#39;Times New Roman Regular&amp;#39;;font-size:16px&quot;&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/ueditor/image/202408/17235420126e87e6.png&quot; title=&quot;image&quot; alt=&quot;image&quot;/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0;text-indent: 32px&quot;&gt;&lt;strong&gt;&lt;span style=&quot;;font-family:&amp;#39;Times New Roman Regular&amp;#39;;font-size:16px&quot;&gt;Дананг: Конференция VADE 2024&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0;text-indent: 32px&quot;&gt;&lt;span style=&quot;;font-family:&amp;#39;Times New Roman Regular&amp;#39;;font-size:16px&quot;&gt;Компания BioHermes была приглашена принять участие в 12-й Вьетнамской конференции по эндокринным заболеваниям - диабету и метаболическим расстройствам, организованной ассоциацией диабета и эндокринологии (VADE) в Дананге. Это грандиозное событие собрало более 1 100 медицинских экспертов и ученых для обсуждения будущего развития медицинской и здравоохранительной отрасли Вьетнама. Благодаря запатентованной технологии анализатора гликированного гемоглобина, BioHermes выделялась на мероприятии, продемонстрировав выдающуюся производительность и удобство в эксплуатации серии продуктов HbA1c, что принесло компании единогласное одобрение экспертов.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0;text-indent: 32px&quot;&gt;&lt;span style=&quot;;font-family:&amp;#39;Times New Roman Regular&amp;#39;;font-size:16px&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; text-indent: 32px; text-align: center;&quot;&gt;&lt;span style=&quot;;font-family:&amp;#39;Times New Roman Regular&amp;#39;;font-size:16px&quot;&gt;&amp;nbsp;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/ueditor/image/202408/17235420715f3444.png&quot; title=&quot;image&quot; alt=&quot;image&quot;/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; text-indent: 32px; text-align: center;&quot;&gt;&lt;span style=&quot;;font-family:&amp;#39;Times New Roman Regular&amp;#39;;font-size:16px&quot;&gt;&amp;nbsp;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/ueditor/image/202408/17235421550d6583.png&quot; title=&quot;image&quot; alt=&quot;image&quot;/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; text-indent: 32px; text-align: center;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;;font-family:&amp;#39;Times New Roman Regular&amp;#39;;font-size:16px&quot;&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/ueditor/image/202408/1723542190e62845.png&quot; title=&quot;image&quot; alt=&quot;image&quot;/&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/ueditor/image/202408/1723542205d350d1.png&quot; title=&quot;image&quot; alt=&quot;image&quot;/&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0;text-indent: 32px&quot;&gt;&lt;strong&gt;&lt;span style=&quot;;font-family:&amp;#39;Times New Roman Regular&amp;#39;;font-size:16px&quot;&gt;Ho Chi Minh City: Medical Institution Visits&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0;text-indent: 32px&quot;&gt;&lt;strong&gt;&lt;span style=&quot;;font-family:&amp;#39;Times New Roman Regular&amp;#39;;font-size:16px&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0;text-indent: 32px&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-family: &amp;#39;Times New Roman Bold&amp;#39;;font-size: 16px&quot;&gt;Хошимин: Визиты в медицинские учреждения&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0;text-indent: 32px&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-family: &amp;#39;Times New Roman Bold&amp;#39;;font-size: 16px&quot;&gt;Больница Чо Рай&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0;text-indent: 32px&quot;&gt;&lt;span style=&quot;;font-family:&amp;#39;Times New Roman Regular&amp;#39;;font-size:16px&quot;&gt;Больница Чо Рай, крупнейшая общая больница в Хошимине, занимает ведущие позиции в области трансплантации органов, онкологии органов пищеварения, урологической онкологии, нефрологии и внутренней медицины во Вьетнаме. С ее огромными масштабами (2 000 коек), профессиональным медицинским персоналом (более 500 врачей и фармацевтов) и комплексными удобствами и услугами, больница Чо Рай получила широкое признание среди пациентов. Компания BioHermes обменялась идеями с врачами для изучения развития медицинского и здравоохранительного сектора Вьетнама и потенциального будущего сотрудничества.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0;text-indent: 32px&quot;&gt;&lt;span style=&quot;;font-family:&amp;#39;Times New Roman Regular&amp;#39;;font-size:16px&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0;text-indent: 32px&quot;&gt;&lt;span style=&quot;;font-family:&amp;#39;Times New Roman Regular&amp;#39;;font-size:16px&quot;&gt;&amp;nbsp;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/ueditor/image/202408/172354228237455a.png&quot; title=&quot;image&quot; alt=&quot;image&quot;/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; text-indent: 32px; text-align: center;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;;font-family:&amp;#39;Times New Roman Regular&amp;#39;;font-size:16px&quot;&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/ueditor/image/202408/17235423344c7f3e.png&quot; title=&quot;image&quot; alt=&quot;image&quot;/&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/ueditor/image/202408/17235424342c3c97.png&quot; title=&quot;image&quot; alt=&quot;image&quot;/&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0;text-indent: 32px&quot;&gt;&lt;strong&gt;&lt;span style=&quot;;font-family:&amp;#39;Times New Roman Regular&amp;#39;;font-size:16px&quot;&gt;Клиника Phong Kham 77&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0;text-indent: 32px&quot;&gt;&lt;span style=&quot;;font-family:&amp;#39;Times New Roman Regular&amp;#39;;font-size:16px&quot;&gt;Основанная врачом из больницы Чо Рай, частная клиника Phong Kham 77 завоевала симпатию пациентов благодаря удобному процессу записи на прием, внимательному обслуживанию и разумным ценам. Компания BioHermes предоставила клинике переносной анализатор гликированного гемоглобина A1C EZ 2.0 в подарок, что стало значительной поддержкой для скрининга и диагностики диабета.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0;text-indent: 32px&quot;&gt;&lt;span style=&quot;;font-family:&amp;#39;Times New Roman Regular&amp;#39;;font-size:16px&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; text-indent: 32px; text-align: center;&quot;&gt;&lt;span style=&quot;;font-family:&amp;#39;Times New Roman Regular&amp;#39;;font-size:16px&quot;&gt;&amp;nbsp;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/ueditor/image/202408/172354246417a58a.png&quot; title=&quot;image&quot; alt=&quot;image&quot;/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0;text-indent: 32px&quot;&gt;&lt;span style=&quot;;font-family:&amp;#39;Times New Roman Regular&amp;#39;;font-size:16px&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0;text-indent: 32px&quot;&gt;&lt;span style=&quot;;font-family:&amp;#39;Times New Roman Regular&amp;#39;;font-size:16px&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0;text-indent: 32px&quot;&gt;&lt;span style=&quot;;font-family:&amp;#39;Times New Roman Regular&amp;#39;;font-size:16px&quot;&gt;Медицинская система Вьетнама имеет разнообразную структуру, в которой сосуществуют государственные и частные больницы, клиники и лаборатории. С постоянным развитием экономики и улучшением жизненного уровня населения, растет спрос на высококачественные медицинские услуги среди вьетнамцев. Государственные инвестиции в медицину и здравоохранение также увеличиваются из года в год.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0;text-indent: 32px&quot;&gt;&lt;span style=&quot;;font-family:&amp;#39;Times New Roman Regular&amp;#39;;font-size:16px&quot;&gt;В ходе этой поездки во Вьетнам компания BioHermes не только лучше ознакомилась с текущим состоянием и тенденциями развития медицинской и здравоохранительной отрасли Вьетнама, но и установила глубокие дружеские и кооперативные отношения со многими медицинскими учреждениями и экспертами. В будущем BioHermes продолжит углублять свое присутствие на вьетнамском рынке, тесно сотрудничать с новыми медицинскими учреждениями и партнерами, и совместно писать новую главу в медицинской и здравоохранительной отрасли.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0;text-indent: 32px&quot;&gt;&lt;span style=&quot;;font-family:&amp;#39;Times New Roman Regular&amp;#39;;font-size:16px&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; text-indent: 32px;&quot;&gt;&lt;span style=&quot;;font-family:&amp;#39;Times New Roman Regular&amp;#39;;font-size:16px&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;');
/*!40000 ALTER TABLE `dr_1_news_data_0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_1_news_draft`
--

DROP TABLE IF EXISTS `dr_1_news_draft`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_1_news_draft` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `cid` int unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint unsigned NOT NULL COMMENT '作者uid',
  `catid` mediumint unsigned NOT NULL COMMENT '栏目id',
  `content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '具体内容',
  `inputtime` int unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `catid` (`catid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='内容草稿表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_1_news_draft`
--

LOCK TABLES `dr_1_news_draft` WRITE;
/*!40000 ALTER TABLE `dr_1_news_draft` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_1_news_draft` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_1_news_flag`
--

DROP TABLE IF EXISTS `dr_1_news_flag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_1_news_flag` (
  `flag` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '文档标记id',
  `id` int unsigned NOT NULL COMMENT '文档内容id',
  `uid` mediumint unsigned NOT NULL COMMENT '作者uid',
  `catid` mediumint unsigned NOT NULL COMMENT '栏目id',
  KEY `flag` (`flag`,`id`,`uid`),
  KEY `catid` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='标记表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_1_news_flag`
--

LOCK TABLES `dr_1_news_flag` WRITE;
/*!40000 ALTER TABLE `dr_1_news_flag` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_1_news_flag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_1_news_hits`
--

DROP TABLE IF EXISTS `dr_1_news_hits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_1_news_hits` (
  `id` int unsigned NOT NULL COMMENT '文章id',
  `hits` int unsigned NOT NULL COMMENT '总点击数',
  `day_hits` int unsigned NOT NULL COMMENT '本日点击',
  `week_hits` int unsigned NOT NULL COMMENT '本周点击',
  `month_hits` int unsigned NOT NULL COMMENT '本月点击',
  `year_hits` int unsigned NOT NULL COMMENT '年点击量',
  `day_time` int unsigned NOT NULL COMMENT '本日',
  `week_time` int unsigned NOT NULL COMMENT '本周',
  `month_time` int unsigned NOT NULL COMMENT '本月',
  `year_time` int unsigned NOT NULL COMMENT '年',
  UNIQUE KEY `id` (`id`),
  KEY `day_hits` (`day_hits`),
  KEY `week_hits` (`week_hits`),
  KEY `month_hits` (`month_hits`),
  KEY `year_hits` (`year_hits`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='时段点击量统计';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_1_news_hits`
--

LOCK TABLES `dr_1_news_hits` WRITE;
/*!40000 ALTER TABLE `dr_1_news_hits` DISABLE KEYS */;
INSERT INTO `dr_1_news_hits` VALUES (2,0,0,0,0,0,0,0,0,0),(3,0,0,0,0,0,0,0,0,0),(4,0,0,0,0,0,0,0,0,0),(5,0,0,0,0,0,0,0,0,0),(6,0,0,0,0,0,0,0,0,0),(13,0,0,0,0,0,0,0,0,0),(14,0,0,0,0,0,0,0,0,0),(15,0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `dr_1_news_hits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_1_news_index`
--

DROP TABLE IF EXISTS `dr_1_news_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_1_news_index` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint unsigned NOT NULL COMMENT '作者uid',
  `catid` mediumint unsigned NOT NULL COMMENT '栏目id',
  `status` tinyint NOT NULL COMMENT '审核状态',
  `inputtime` int unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='内容索引表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_1_news_index`
--

LOCK TABLES `dr_1_news_index` WRITE;
/*!40000 ALTER TABLE `dr_1_news_index` DISABLE KEYS */;
INSERT INTO `dr_1_news_index` VALUES (2,1,6,9,1721891468),(3,1,6,9,1721891410),(4,1,6,9,1721877760),(5,1,6,9,1721955921),(6,1,6,9,1721891634),(13,1,6,9,1721876457),(15,1,6,9,1721876071),(32,1,6,9,1721877650),(33,1,6,9,1721891674),(34,1,6,9,1721875222),(35,1,6,9,1721876143),(36,1,6,9,1721891272),(46,2,6,9,1721891577),(47,1,6,9,1722391389),(48,2,6,9,1723539552);
/*!40000 ALTER TABLE `dr_1_news_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_1_news_recycle`
--

DROP TABLE IF EXISTS `dr_1_news_recycle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_1_news_recycle` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `cid` int unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint unsigned NOT NULL COMMENT '栏目id',
  `content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '具体内容',
  `result` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '删除理由',
  `inputtime` int unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `catid` (`catid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='内容回收站表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_1_news_recycle`
--

LOCK TABLES `dr_1_news_recycle` WRITE;
/*!40000 ALTER TABLE `dr_1_news_recycle` DISABLE KEYS */;
INSERT INTO `dr_1_news_recycle` VALUES (2,14,1,18,'{\"1_news\":{\"id\":\"14\",\"catid\":\"18\",\"title\":\"Korean Diabetes Association 37th Symposium\",\"thumb\":\"http://www.sdbiosensor.com/data/board/editor/662714f3460c5_3551077989.png\",\"keywords\":null,\"description\":\"VISITUSATKoreanDiabetesAssociation37thSymposiuminKorea!wearelookingforwardtoseeingyouinKoreanDiabe\",\"hits\":\"1\",\"uid\":\"1\",\"author\":\"创始人\",\"status\":\"9\",\"url\":\"/news/event/show-14.html\",\"link_id\":\"0\",\"tableid\":\"0\",\"inputip\":\"127.0.0.1-55088\",\"inputtime\":\"1716647538\",\"updatetime\":\"1716647538\",\"displayorder\":\"0\"},\"1_news_data_0\":{\"id\":\"14\",\"uid\":\"1\",\"catid\":\"18\",\"content\":\"&lt;ul style=&quot;list-style-type: none;&quot; class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p&gt;&lt;strong noto=&quot;&quot; sans=&quot;&quot; font-size:=&quot;&quot;&gt;&lt;img src=&quot;http://www.sdbiosensor.com/data/board/editor/662714f3460c5_3551077989.png&quot; title=&quot;대한당뇨병학회_춘계학술대회_온드미디어_240419.png&quot; style=&quot;border: 0px; vertical-align: middle;&quot;/&gt;&lt;br style=&quot;clear: both;&quot;/&gt;&lt;br/&gt;VISIT US AT Korean Diabetes&amp;nbsp;&lt;/strong&gt;&lt;strong noto=&quot;&quot; sans=&quot;&quot; font-size:=&quot;&quot;&gt;Association 37&lt;/strong&gt;&lt;strong noto=&quot;&quot; sans=&quot;&quot; font-size:=&quot;&quot;&gt;th Symposium&amp;nbsp;&lt;/strong&gt;&lt;strong noto=&quot;&quot; sans=&quot;&quot; font-size:=&quot;&quot;&gt;in Korea!&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;we are looking forward to seeing you in Korean Diabetes Association Symposium, May 2-4!&lt;/p&gt;&lt;p&gt;Changwon Exhibition Convention Center | 17&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;Location&amp;nbsp;&lt;/strong&gt;&lt;br/&gt;Changwon, Korea&lt;br/&gt;&lt;br type=&quot;_moz&quot;/&gt;&lt;/p&gt;&lt;p&gt;&amp;lt;div align=&amp;quot;left&amp;quot; noto=&amp;quot;&amp;quot; sans=&amp;quot;&amp;quot; kr&amp;quot;,=&amp;quot;&amp;quot; sans-serif;=&amp;quot;&amp;quot; font-size:=&amp;quot;&amp;quot; 18px;=&amp;quot;&amp;quot; background-color:=&amp;quot;&amp;quot; rgb(255,=&amp;quot;&amp;quot; 255,=&amp;quot;&amp;quot; 255);&amp;quot;=&amp;quot;&amp;quot; 18px;&amp;quot;=&amp;quot;&amp;quot; style=&amp;quot;margin: 0px; padding: 0px; box-sizing: border-box; word-break: keep-all;&amp;quot;&amp;gt;Contact us: sales@sdbiosensor.com&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;\"},\"1_news_category_data\":null}','',1717032383);
/*!40000 ALTER TABLE `dr_1_news_recycle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_1_news_search`
--

DROP TABLE IF EXISTS `dr_1_news_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_1_news_search` (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `catid` mediumint unsigned NOT NULL COMMENT '栏目id',
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '参数数组',
  `keyword` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '关键字',
  `contentid` int unsigned NOT NULL COMMENT '字段改成了结果数量值',
  `inputtime` int unsigned NOT NULL COMMENT '搜索时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `catid` (`catid`),
  KEY `keyword` (`keyword`),
  KEY `inputtime` (`inputtime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='搜索表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_1_news_search`
--

LOCK TABLES `dr_1_news_search` WRITE;
/*!40000 ALTER TABLE `dr_1_news_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_1_news_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_1_news_time`
--

DROP TABLE IF EXISTS `dr_1_news_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_1_news_time` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint unsigned NOT NULL COMMENT '作者uid',
  `catid` mediumint unsigned NOT NULL COMMENT '栏目id',
  `content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '具体内容',
  `result` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '处理结果',
  `posttime` int unsigned NOT NULL COMMENT '定时发布时间',
  `inputtime` int unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `posttime` (`posttime`),
  KEY `inputtime` (`inputtime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='内容定时发布表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_1_news_time`
--

LOCK TABLES `dr_1_news_time` WRITE;
/*!40000 ALTER TABLE `dr_1_news_time` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_1_news_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_1_news_verify`
--

DROP TABLE IF EXISTS `dr_1_news_verify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_1_news_verify` (
  `id` int unsigned NOT NULL,
  `uid` mediumint unsigned NOT NULL COMMENT '作者uid',
  `vid` tinyint NOT NULL COMMENT '审核id号',
  `isnew` tinyint unsigned NOT NULL COMMENT '是否新增',
  `islock` tinyint unsigned NOT NULL COMMENT '是否锁定',
  `author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '作者',
  `catid` mediumint unsigned NOT NULL COMMENT '栏目id',
  `status` tinyint NOT NULL COMMENT '审核状态',
  `content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '具体内容',
  `backuid` mediumint unsigned NOT NULL COMMENT '操作人uid',
  `backinfo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '操作退回信息',
  `inputtime` int unsigned NOT NULL COMMENT '录入时间',
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `vid` (`vid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `backuid` (`backuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='内容审核表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_1_news_verify`
--

LOCK TABLES `dr_1_news_verify` WRITE;
/*!40000 ALTER TABLE `dr_1_news_verify` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_1_news_verify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_1_product`
--

DROP TABLE IF EXISTS `dr_1_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_1_product` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint unsigned NOT NULL COMMENT '栏目id',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '主题',
  `thumb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '缩略图',
  `keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关键字',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '描述',
  `hits` int unsigned DEFAULT NULL COMMENT '浏览数',
  `uid` int unsigned NOT NULL COMMENT '作者id',
  `author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '笔名',
  `status` tinyint NOT NULL COMMENT '状态(已废弃)',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
  `link_id` int NOT NULL DEFAULT '0' COMMENT '同步id',
  `tableid` smallint unsigned NOT NULL COMMENT '附表id',
  `inputip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '客户端ip信息',
  `inputtime` int unsigned NOT NULL COMMENT '录入时间',
  `updatetime` int unsigned NOT NULL COMMENT '更新时间',
  `displayorder` int DEFAULT '0' COMMENT '排序值',
  `product_introduction` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '产品介绍',
  `album` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '图册',
  `subcategory_total` int unsigned DEFAULT '0' COMMENT '表单子分类统计',
  `sytjcppxz` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '首页推荐产品排序值',
  `product_video` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '产品视频',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `link_id` (`link_id`),
  KEY `status` (`status`),
  KEY `updatetime` (`updatetime`),
  KEY `hits` (`hits`),
  KEY `category` (`catid`,`status`),
  KEY `displayorder` (`displayorder`),
  KEY `subcategory_total` (`subcategory_total`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='内容主表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_1_product`
--

LOCK TABLES `dr_1_product` WRITE;
/*!40000 ALTER TABLE `dr_1_product` DISABLE KEYS */;
INSERT INTO `dr_1_product` VALUES (16,11,'Видеоларингоскоп для анестезии','253','','',2,1,'创始人',9,'/products/show-16.html',0,0,'127.0.0.1-54720',1716887629,1722578818,999,'&lt;p&gt;&lt;strong&gt;Модели:&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p&gt;OLT-AVL-X&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;OLT-AVL-C&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;OLT-AVL-H&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;strong&gt;&lt;br/&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Применение:&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Он может быть использован для того, чтобы спровоцировать надгортанниковую область пациента, обнажить голосовую щель и помочь медицинскому персоналу точно выполнить интубацию дыхательных путей для анестезии или экстренного применения. Кроме того, он также используется для внутриротового обследования и лечения.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;br/&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Преимущества:&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p&gt;Может делать фотографии и видео для хранения, записывать классические случаи интубации одним щелчком мыши, что удобно для обучения и исследований.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Дисплей можно регулировать под любым углом при многоугольном наблюдении, избегая слепых зон.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Управление видеоизображением высокой четкости, более точная операция и более безопасная анестезия.&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','',0,'',''),(17,11,'Одноразовая эндобронхиальная трубка с двойным просветом','252','','Модель: Визуальное и общее разнообразие левого просвета. Применение: Для операций, связанных с бронхами. Преимущества: гибкая работа, безопасность подушки безопасности, простота позиционирования, повышение безопасности анестезии.',1,1,'创始人',9,'/products/show-17.html',0,0,'127.0.0.1-63180',1716901257,1722606532,500,'&lt;ul class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p&gt;&lt;strong&gt;Модели:&lt;/strong&gt;&lt;/p&gt;&lt;/li&gt;&lt;ul class=&quot; list-paddingleft-2&quot; style=&quot;list-style-type: square;&quot;&gt;&lt;li&gt;&lt;p&gt;Визуальный тип Левая полость: 32Fr, 35Fr, 37Fr&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Нормальный тип Левая полость: 28Fr, 32Fr, 35Fr, 37Fr, 39Fr, 41Fr&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;li&gt;&lt;p&gt;&lt;strong&gt;Применение:&lt;/strong&gt;&lt;/p&gt;&lt;/li&gt;&lt;ul class=&quot; list-paddingleft-2&quot; style=&quot;list-style-type: square;&quot;&gt;&lt;li&gt;&lt;p&gt;Эндобронхиальная трубка с двойным просветом помещается в основной ствол бронха и может использоваться для избирательного раздувания или дефляции, отсасывания мокроты, односторонней вентиляции легких или для бронхоскопии.&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;li&gt;&lt;p&gt;&lt;strong&gt;Преимущества:&lt;/strong&gt;&lt;/p&gt;&lt;/li&gt;&lt;ul class=&quot; list-paddingleft-2&quot; style=&quot;list-style-type: square;&quot;&gt;&lt;li&gt;&lt;p&gt;Подушка безопасности регулирует однократную и двойную вентиляцию легких, а управление простое и гибкое.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Манжета большого объема и низкого давления уменьшает компрессионные повреждения дыхательных путей.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Конструкция подушки безопасности хорошо закреплена, ее нелегко сдвинуть, и она очень безопасна.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Дистальная дугообразная конструкция выполняет направляющую функцию и облегчает позиционирование.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Упрощает интубацию трахеи, динамический мониторинг дыхательных путей и повышает безопасность и эффективность анестезии.&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/ul&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','',0,'5',''),(18,11,'Многофункциональная интубация трахеи','251','','',1,1,'创始人',9,'/products/show-18.html',0,0,'127.0.0.1-54379',1716903834,1722578920,999,'&lt;p&gt;&lt;strong&gt;Применение:&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Это используется для создания искусственных дыхательных путей во время клинической анестезии или неотложной помощи.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;br/&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Преимущества:&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p&gt;Улучшение эффективности соединения между ларингеальным капюшоном, трахеей и аппаратом искусственной вентиляции легких или наркозным аппаратом для обеспечения стабильности и надежности респираторной поддержки.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Трехходовое соединение для интубации трахеи с машинным соединительным концом, оснащенным резьбовой трубкой, растягивающейся без перекручивания.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Трехходовой шарнир для интубации трахеи с операционным отверстием, который может одновременно вентилироваться для отвода мокроты и других операций, более безопасен.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Интубация трахеи с дозирующим каналом делает ее более удобной для доставки лекарств.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Трехходовое интубационное соединение трахеи оснащено соединением Рура для обнаружения углекислого газа в конце выдоха.&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;','',0,'',''),(19,11,'Одноразовая назальная канюля для забора пробы ETCO₂','250','','Модель: Серия XYG. Используется в многопрофильных пациентах с ингаляцией кислорода, может контролировать ETCO2. Преимущества: Инновационный дизайн для обеспечения оптимальной доставки кислорода.',1,1,'创始人',9,'/products/show-19.html',0,0,'127.0.0.1-57258',1716904174,1722571396,600,'&lt;p&gt;&lt;strong&gt;Модели:&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p&gt;XYG-WL2000&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;XYG-WL2500&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;XYG-WL3000&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;XYG-WS2000&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;XYG-WS2500&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;XYG-WS3000&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;strong&gt;&lt;br/&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Применение:&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Этот прибор подходит для пациентов, нуждающихся в ингаляции кислорода в отделениях, включая анестезиологию, отделение неотложной помощи, отделение пульмонологии, отделение интенсивной терапии, эндоскопический центр и гериатрическое отделение. Он может контролировать уровень углекислого газа в конце прилива (ETCO2) во время ингаляции кислорода в режиме реального времени.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;br/&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Преимущества:&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p&gt;Инновационная двухкамерная конструкция порта для забора проб воздуха.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Двойной носовой пробоотборник, разработанный для уменьшения потенциального влияния носового цикла на отбор проб CO2.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Одновременно доставляет кислород при отборе диоксида углерода во время спонтанного дыхания.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Канюля для подачи кислорода с шестиугольной структурой и механизмом закрытия против давления, обеспечивающим оптимальную доставку кислорода.&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;','{\"file\":[\"66\",\"67\"],\"title\":[\"\",\"\"],\"description\":[\"\",\"\"]}',0,'6',''),(20,11,'Одноразовый датчик температуры','249','','',1,1,'创始人',9,'/products/show-20.html',0,0,'127.0.0.1-63681',1716904684,1722579090,999,'&lt;p&gt;&lt;strong&gt;Модели:&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p&gt;Поверхность тела: BSTS-S-95, BSTS-M-95, BSTS-L-95&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Полость тела: BCTS-S-75, BCTS-M-75, BCTS-L-75, BCTS-S-95, BCTS-M-85, BCTS-L-85&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;strong&gt;&lt;br/&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Применение:&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Одноразовые для использования с совместимыми устройствами мониторинга с возможностью контроля температуры тела для сбора и передачи сигнала о температуре пациента.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;br/&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Преимущества:&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p&gt;Использование для одного пациента, исключающее перекрестное инфицирование.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Простота использования, сокращение времени реакции и безопасность.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Возможность использования с многопараметрическим монитором, пригодным для длительного непрерывного мониторинга температуры тела пациента.&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;','',0,'',''),(21,11,'Медицинский манометр','248','','',1,1,'创始人',9,'/products/show-21.html',0,0,'127.0.0.1-63940',1716904833,1722579487,999,'&lt;p&gt;&lt;strong&gt;Циферблат:&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Давление в подушке безопасности можно контролировать с помощью стрелочного указателя.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;br/&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Порт для надувания:&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Его можно надувать через соединительную трубку или напрямую подключить к эндотрахеальной трубке.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;br/&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Рукоятка надувания:&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Используется для надувания и сдувания подушки безопасности.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;br/&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Микровентиляционный клапан:&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Когда давление в подушке безопасности повышается, микровентиляционный клапан можно использовать для регулировки давления.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;br/&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Выпускной патрубок:&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Давление внутри подушки безопасности может быть снижено до отрицательного.&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Применение:&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Медицинский манометр используется для определения давления в интубационной подушке при различных интубациях трахеи, интубации трахеостомы, интубации трахеи с высоким объемом низкого давления и двухпросветной эндобронхиальной интубации, чтобы снизить частоту возникновения вентилятор-ассоциированной пневмонии и уменьшить повреждение трахеи у пациентов.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;br/&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Преимущества:&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p&gt;Простое управление и подходит для различных искусственных дыхательных путей.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Снижают частоту возникновения вентилятор-ассоциированной пневмонии и уменьшают повреждение трахеи у пациентов.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Малый размер, легко переносится и может управляться одной рукой.&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','',0,'',''),(22,11,'Контроллер манжеты','247','','',1,1,'创始人',9,'/products/show-22.html',0,0,'127.0.0.1-63951',1716904917,1722581514,999,'&lt;p&gt;&lt;strong&gt;Особенности:&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p&gt;Повышают эффективность работы медицинского персонала&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Эффективное снижение заболеваемости вентилятор-ассоциированной пневмонией&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Переход от прерывистого мониторинга к непрерывному мониторингу и интеллектуальному управлению&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Преимущества:&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p&gt;Мониторинг давления в подушке безопасности в реальном времени и интеллектуальное управление&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Предотвращение повреждения трахеи и осложнений, вызванных чрезмерным давлением подушки безопасности&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Предотвращение попадания ротоглоточного секрета, рефлюкса и аспирации желудочного содержимого из-за недостаточного давления подушки безопасности&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Своевременное обнаружение разрыва и утечки подушки безопасности&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Сокращение пребывания пациентов в отделении интенсивной терапии и времени механической вентиляции легких&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Сокращение использования антибиотиков&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Повышение эффективности работы медицинского персонала&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Снижение заболеваемости и смертности от ВАП&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Исследования показали, что контроллер может снизить заболеваемость ВАП на 56,6%, а повреждение слизистой оболочки дыхательных путей - на 80%&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','',0,'',''),(23,11,'Одноразовое лезвие ларингоскопа','246','','',1,1,'创始人',9,'/products/show-23.html',0,0,'127.0.0.1-50356',1716905033,1722581897,999,'&lt;p&gt;&lt;strong&gt;Модели:&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p&gt;OLT-62&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;OLT-90&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;OLT-120&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;strong&gt;&lt;br/&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Применение:&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Он может быть использован для того, чтобы спровоцировать надгортанниковую область пациента, обнажить голосовую щель и помочь медицинскому персоналу точно выполнить интубацию дыхательных путей для анестезии или экстренного применения.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;br/&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Преимущества:&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p&gt;Одноразовое использование во избежание перекрестной инфекции&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Простая сборка и быстрая замена&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Гладкая структура лезвия ларингоскопа, его кривизна соответствует физиологическому строению человека, что делает введение катетера более плавным&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;','',0,'',''),(24,11,'Одноразовая ларингеальная маска для отсасывания мокроты','245','','Одноразовая гортанная маска для отсасывания мокроты (общая и визуальная A, B) подходит для конкретных пациентов со многими преимуществами: вставное оборудование, противодеформационное и негерметичное и т. Д.',3,1,'创始人',9,'/products/show-24.html',0,0,'127.0.0.1-50357',1716905113,1722654228,400,'&lt;ul class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p&gt;&lt;strong&gt;Модели:&lt;/strong&gt;&lt;/p&gt;&lt;/li&gt;&lt;ul class=&quot; list-paddingleft-2&quot; style=&quot;list-style-type: square;&quot;&gt;&lt;li&gt;&lt;p&gt;Обычный тип A&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Обычный тип B&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Визуальный тип A&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Визуальный тип B&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;li&gt;&lt;p&gt;&lt;strong&gt;Применение:&lt;/strong&gt;&lt;/p&gt;&lt;/li&gt;&lt;ul class=&quot; list-paddingleft-2&quot; style=&quot;list-style-type: square;&quot;&gt;&lt;li&gt;&lt;p&gt;Одноразовая ларингеальная маска для отсасывания мокроты подходит для пациентов, находящихся под наркозом или медикаментозной седацией, а также для пациентов, нуждающихся в срочной искусственной вентиляции легких во время оказания первой помощи и реанимации для восстановления проходимости верхних дыхательных путей.&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;li&gt;&lt;p&gt;&lt;strong&gt;Преимущества:&lt;/strong&gt;&lt;/p&gt;&lt;/li&gt;&lt;ul class=&quot; list-paddingleft-2&quot; style=&quot;list-style-type: square;&quot;&gt;&lt;li&gt;&lt;p&gt;Встроенная всасывающая камера соединена с дренажным резервуаром под маской, а механическая вентиляция подключена к отрицательному давлению для предотвращения обратного потока и аспирации.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Роторный дыхательный интерфейс может уменьшить искажение ручки маски, вызванное крутящим напряжением при подключении дыхательного контура, и избежать утечки воздуха.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Боковой дренажный желобок соответствует физиологическому расположению трех основных слюнных желез человеческого тела, что делает его более практичным для удаления мокроты.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Встроенная отсасывающая камера соединяется с дренажным резервуаром под маской, а механическая вентиляция соединяется с отрицательным давлением, что предотвращает рефлюкс и аспирацию.&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/ul&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','',0,'4',''),(25,12,'Анализатор гликогемоглобина A1cChek Express','244','','',1,1,'创始人',9,'/products/show-25.html',0,0,'127.0.0.1-55454',1716905453,1722581345,201,'&lt;p&gt;&lt;/p&gt;&lt;table class=&quot;table&quot; style=&quot;border-collapse: collapse;&quot;&gt;&lt;tbody&gt;&lt;tr class=&quot;firstRow&quot;&gt;&lt;td style=&quot;width: 30.2252%; text-align: center; vertical-align: middle;&quot;&gt;&lt;p&gt;&lt;img title=&quot;A1cChek Express-pic-1.jpg&quot; src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202407/381f850810bd79c.jpeg&quot; alt=&quot;A1cChek Express-pic-1.jpg&quot;/&gt;&lt;/p&gt;&lt;/td&gt;&lt;td style=&quot;padding-left: 20px; vertical-align: middle; word-break: break-all;&quot;&gt;&lt;p&gt;&lt;strong&gt;Множество подключений&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Множество интерфейсов удовлетворяют различным требованиям к подключению для управления данными.&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td style=&quot;width: 30.2252%; text-align: center; vertical-align: middle;&quot;&gt;&lt;p&gt;&lt;img title=&quot;A1cChek Express-pic-2.jpg&quot; src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202407/e1ffec2cbdacf08.jpeg&quot; alt=&quot;A1cChek Express-pic-2.jpg&quot;/&gt;&lt;/p&gt;&lt;/td&gt;&lt;td style=&quot;padding-left: 20px; vertical-align: middle; word-break: break-all;&quot;&gt;&lt;p&gt;&lt;strong&gt;Конструкция съемного набора:&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Уникальная конструкция съемного набора реагентов позволяет проводить гибкие пакетные тесты.&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td style=&quot;width: 30.2252%; text-align: center; vertical-align: middle;&quot;&gt;&lt;p&gt;&lt;img title=&quot;A1cChek Express-pic-3.jpg&quot; src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/202407/8f95cdf6455f1b7.jpeg&quot; alt=&quot;A1cChek Express-pic-3.jpg&quot;/&gt;&lt;/p&gt;&lt;/td&gt;&lt;td style=&quot;padding-left: 20px; vertical-align: middle; word-break: break-all;&quot;&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Одноэтапное управление:&lt;/strong&gt;Автоматическое тестирование образца крови всего одним &amp;quot;щелчком мыши&amp;quot;.&lt;/p&gt;&lt;p&gt;A1cChek Express Glycohemoglobin Analyzer&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/ueditor/image/202408/1722581300529dbb.png&quot; title=&quot;Анализатор гликогемоглобина A1cChek Express-1&quot; alt=&quot;Анализатор гликогемоглобина A1cChek Express-1&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/ueditor/image/202408/172258132300d71f.png&quot; title=&quot;Анализатор гликогемоглобина A1cChek Express-2&quot; alt=&quot;Анализатор гликогемоглобина A1cChek Express-2&quot;/&gt;&lt;/p&gt;','',0,'','https://bkt-image.oss-cn-beijing.aliyuncs.com/video/Use%20Instruction%20of%20A1cChek%20Express.mp4'),(26,12,'Анализатор гликированного гемоглобина A1C EZ 2.0','243','','Стильный и портативный, одобренный FDA США. Результаты за 5 минут, голосовое управление, управление данными и поддержка Bluetooth.',1,1,'创始人',9,'/products/show-26.html',0,0,'127.0.0.1-61453',1716906524,1722654056,202,'&lt;p&gt;Стильный и ручной тестер HbA1c&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;ul class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p&gt;Стильный и ручной&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;ФДА США одобрило&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;5 минут до получения результата&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Голосовое руководство&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Bluetooth&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Система управления данными&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/ueditor/image/202408/1722605069e4d495.png&quot; title=&quot;Анализатор гликированного гемоглобина A1C EZ 2&quot; alt=&quot;Анализатор гликированного гемоглобина A1C EZ 2&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/ueditor/image/202408/1722605088ca1f4e.png&quot; title=&quot;Анализатор гликированного гемоглобина A1C EZ 2&quot; alt=&quot;Анализатор гликированного гемоглобина A1C EZ 2&quot;/&gt;&lt;/p&gt;','',0,'3','https://bkt-image.oss-cn-beijing.aliyuncs.com/video/A1CEZ2.0.mp4'),(27,12,'Анализатор GluCoA1c глюкозы в крови и гликогемоглобина','242','','Тест 2 в 1Голосовое руководствоСистема управления даннымиBluetooth',1,1,'创始人',9,'/products/show-27.html',0,0,'127.0.0.1-61446',1716906557,1722590505,300,'&lt;ul class=&quot; list-paddingleft-2&quot; style=&quot;list-style-type: disc;&quot;&gt;&lt;li&gt;&lt;p&gt;Тест 2 в 1&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Голосовое руководство&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Система управления данными&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Bluetooth&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/ueditor/image/202408/1722590218eb494a.png&quot; title=&quot;Анализатор GluCoA1c глюкозы в крови и гликогемоглобина-1&quot; alt=&quot;Анализатор GluCoA1c глюкозы в крови и гликогемоглобина-1&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/ueditor/image/202408/1722590495e398ab.png&quot; title=&quot;Анализатор GluCoA1c глюкозы в крови и гликогемоглобина-2&quot; alt=&quot;Анализатор GluCoA1c глюкозы в крови и гликогемоглобина-2&quot;/&gt;&lt;/p&gt;','',0,'','https://bkt-image.oss-cn-beijing.aliyuncs.com/video/Use%20Instruction%20for%20GluCoA1c%20Analyzer.mp4'),(28,12,'Глюкометр','241','','Отслеживайте уровень глюкозы в крови в режиме реального времени, чтобы минимизировать риск острых симптомов диабета.',1,1,'创始人',9,'/products/show-28.html',0,0,'127.0.0.1-61446',1716906596,1722590519,204,'&lt;p&gt;Отслеживайте уровень глюкозы в крови в режиме реального времени, чтобы свести к минимуму риск возникновения острых симптомов диабета.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;br/&gt;&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot; list-paddingleft-2&quot; style=&quot;list-style-type: disc;&quot;&gt;&lt;li&gt;&lt;p&gt;Маленький размер с большим дисплеем:&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;0,5 мкл крови взято с наименьшими болевыми ощущениями&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Точный результат в течение 5 секунд&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/ueditor/image/202408/172259110819f336.png&quot; title=&quot;Глюкометр-1&quot; alt=&quot;Глюкометр-1&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/ueditor/image/202408/1722591119b2e6be.png&quot; title=&quot;Глюкометр-2&quot; alt=&quot;Глюкометр-2&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','',0,'',''),(29,12,'Анализатор гликированного гемоглобина A1c Check Pro','240','','Внутренний термопринтер: результаты бумаги HbA1c в конце теста. Работа с сенсорным экраном: полноцветный сенсорный экран с виртуальной клавиатурой для ввода медицинской информации. Четыре канала обнаружения: уникальный дизайн проигрывателя, встроенные четыре канала обнаружения, 4 результата за 8 минут.',1,1,'创始人',9,'/products/show-29.html',0,0,'127.0.0.1-61453',1716906615,1722849080,200,'&lt;p&gt;&lt;strong&gt;Встроенный термопринтер&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;По окончании теста сразу же получите результат по содержанию HbA1c на бумаге.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;br/&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Управление с сенсорного экрана&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Полноцветный сенсорный экран с виртуальной клавиатурой для ввода медицинской информации.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;br/&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Четыре канала обнаружения&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Уникальная конструкция поворотной пластины с четырьмя каналами обнаружения позволяет получить 4 результата в течение 8 минут.&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/ueditor/image/202408/172257409223393d.png&quot; title=&quot;Анализатор ликированного гемоглобинаг A1c Check Pro-1&quot; alt=&quot;Анализатор ликированного гемоглобинаг A1c Check Pro-1&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/ueditor/image/202408/172257796195da72.png&quot; title=&quot;Анализатор ликированного гемоглобинаг A1c Check Pro-2&quot; alt=&quot;Анализатор ликированного гемоглобинаг A1c Check Pro-2&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','',0,'2','https://bkt-image.oss-cn-beijing.aliyuncs.com/video/A1cChekPro.mp4'),(30,12,'BH 60 Автоматический анализатор гликогемоглобина','239','','Удобный и эффективный, стандартный режим 60 секунд / образец, вариантный режим 72 секунды / образец, полностью автоматический, самозапуск рабочего дня. Высокая точность, отличная методология, хорошая повторяемость и сертификация. Противоинтерференция, отсутствие помех гемоглобина, анализ вариантов доступен.',1,1,'创始人',9,'/products/show-30.html',0,0,'127.0.0.1-61446',1716906637,1722653978,100,'&lt;ul class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p&gt;&lt;strong&gt;Максимальная точность и исключительная эффективность&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;&lt;strong&gt;Удобство и высокая эффективность&lt;/strong&gt;&lt;/p&gt;&lt;/li&gt;&lt;ul class=&quot; list-paddingleft-2&quot; style=&quot;list-style-type: square;&quot;&gt;&lt;li&gt;&lt;p&gt;Стандартный режим: 60 сек/тест&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Вариантный режим: 72 сек/тест&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Модель двойного отбора проб; поддержка функции &amp;quot;аварийный отбор&amp;quot;&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Полностью автоматический анализ; автоматическое включение в течение рабочего дня&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;li&gt;&lt;p&gt;&lt;strong&gt;Высокая точность&lt;/strong&gt;&lt;/p&gt;&lt;/li&gt;&lt;ul class=&quot; list-paddingleft-2&quot; style=&quot;list-style-type: square;&quot;&gt;&lt;li&gt;&lt;p&gt;Золотой стандарт: Метод ионообменной ВЭЖХ&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;CV ≤ 1%, хорошая повторяемость &amp;quot;внутри партии&amp;quot; и &amp;quot;от партии к партии&amp;quot;&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Сертифицированы NGSP и IFCC&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;li&gt;&lt;p&gt;&lt;strong&gt;Помехоустойчивый&lt;/strong&gt;&lt;/p&gt;&lt;/li&gt;&lt;ul class=&quot; list-paddingleft-2&quot; style=&quot;list-style-type: square;&quot;&gt;&lt;li&gt;&lt;p&gt;Без влияния вариантного гемоглобина и HbF&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Доступен режим анализа вариантов, при котором на хроматограмме присутствует вариант Hb&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/ul&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/ueditor/image/202408/1722605709f79f9b.png&quot; title=&quot;BH 60 Автоматический анализатор гликогемоглобина-1&quot; alt=&quot;BH 60 Автоматический анализатор гликогемоглобина-1&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/ueditor/image/202408/1722605716efb691.png&quot; title=&quot;BH 60 Автоматический анализатор гликогемоглобина-2&quot; alt=&quot;BH 60 Автоматический анализатор гликогемоглобина-2&quot;/&gt;&lt;/p&gt;','',0,'1',''),(37,26,'Одноразовый вагинальный расширитель с осветлением','255','','',1,1,'创始人',9,'/products/show-37.html',0,0,'127.0.0.1-60998',1717157508,1722585726,999,'&lt;p&gt;&lt;strong&gt;Патент и инновации:&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p&gt;Разработан на основе патента США на изобретение&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Запатентованный инновационный продукт&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Заполняет клинический пробел&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Применение:&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p&gt;Вагинальное исследование в акушерстве и гинекологии&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Встроенный беспроводной светодиодный источник света в верхней ручке компенсирует неудобства при эксплуатации и пропущенную диагностику, вызванные недостаточным количеством внешнего источника света.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Источник света расположен близко к поясу верхней расширяющейся створки, а диапазон излучения источника света распространяется на все влагалище, что делает поле зрения более четким.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Переключателем светодиодного источника света можно управлять, открывая и закрывая верхнюю раздвижную створку, которая проста и удобна в использовании.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Во время гинекологического осмотра, когда вагинальный расширитель открыт до нужной степени, установочная и ограничительная планка между верхней и нижней ручками может зафиксировать открытие вагинального расширителя, что благоприятно для осмотра врачом.&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;strong&gt;Преимущество продукта&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','',0,'',''),(38,26,'Набор для выявления нуклеиновой кислоты вируса папилломы человека (ВПЧ) (флуоресцентный метод ПЦР)','254','','',1,1,'创始人',9,'/products/show-38.html',0,0,'127.0.0.1-65388',1717159335,1722583771,999,'&lt;p&gt;&lt;strong&gt;Применение:&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;На основе метода флуоресцентной ПЦР этот продукт может обнаружить 14 типов ВПЧ высокого риска в образцах шейки матки, что позволяет отличить 12 типов (31, 33, 35, 39, 45, 51, 52, 56, 58, 59, 66, 68) от 2 других типов (16/18).&lt;/p&gt;&lt;ul class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p&gt;Модель тестирования «12+2» позволяет точно выявить рак шейки матки и провести стратификацию риска.&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Преимущества продукта:&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p&gt;Тестирование «12+2»: точный скрининг рисков&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Независимые встроенные параметры, полный мониторинг&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Закрытая реакционная пробирка для эффективного предотвращения перекрестного загрязнения&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Простой, удобный и быстрый, занимает всего 2 часа&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Высокая пропускная способность, 94 образца/время, подходит для скрининга больших образцов&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Автоматическое суждение и интерпретация, точные и надежные результаты&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p id=&quot;_img_parent_tmp&quot; style=&quot;text-align:center&quot;&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/ueditor/image/202408/1722583705f7e062.png&quot; title=&quot;Набор для выявления-1&quot; alt=&quot;Набор для выявления-1&quot; width=&quot;851&quot; height=&quot;519&quot; border=&quot;0&quot; vspace=&quot;0&quot;/&gt;&lt;/p&gt;&lt;p id=&quot;_img_parent_tmp&quot; style=&quot;text-align:center&quot;&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/ueditor/image/202408/172258373011f863.png&quot; title=&quot;Набор для выявления-2&quot; alt=&quot;Набор для выявления-2&quot; width=&quot;851&quot; height=&quot;122&quot; border=&quot;0&quot; vspace=&quot;0&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','',0,'',''),(39,26,'Набор для экспресс-тестирования инсулиноподобного фактора роста, связывающего белок-1 /Фетальный фибронектин (коллоидное золото)','256','','',1,1,'创始人',9,'/products/show-39.html',0,0,'127.0.0.1-53238',1717161053,1722582420,999,'&lt;p&gt;&lt;strong&gt;Применение:&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Научная диагностика беременности и прогнозирование преждевременных родов с помощью одного взятия пробы и одного теста с помощью щупа позволяют обеспечить комплексную заботу о здоровье матери и ребенка.&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Особенности:&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p&gt;Более чувствительный, чем однократный тест IGFBP-1 или fFN&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Более высокая отрицательная прогностическая ценность&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Комплексная оценка как послеродового, так и преждевременного родоразрешения с помощью одной выборки&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p id=&quot;_img_parent_tmp&quot; style=&quot;text-align:center&quot;&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/ueditor/image/202408/1722582390a39366.png&quot; title=&quot;абор для&quot; alt=&quot;абор для&quot; width=&quot;851&quot; height=&quot;369&quot; border=&quot;0&quot; vspace=&quot;0&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','',0,'',''),(40,27,'Многофункциональный иммунофлуоресцентный анализатор BF-300 Fluoxpert','258','','Анализатор является гибким в конфигурации канала, поддерживает несколько образцов и интерфейсов, имеет массивное хранилище данных и дружественен в режиме взаимодействия человека и машины, таких как 10,1-дюймовый сенсорный экран и система Android.',1,1,'创始人',9,'/products/show-40.html',0,0,'127.0.0.1-54379',1717162326,1722606761,99,'&lt;ul class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p&gt;&lt;strong&gt;Гибкая конфигурация каналов&lt;/strong&gt;&lt;/p&gt;&lt;/li&gt;&lt;ul class=&quot; list-paddingleft-2&quot; style=&quot;list-style-type: square;&quot;&gt;&lt;li&gt;&lt;p&gt;Количество каналов анализатора можно свободно выбирать в зависимости от количества тестов. Он может быть расширен до 9 каналов для одновременного тестирования&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;li&gt;&lt;p&gt;&lt;strong&gt;Несколько типов образцов&lt;/strong&gt;&lt;/p&gt;&lt;/li&gt;&lt;ul class=&quot; list-paddingleft-2&quot; style=&quot;list-style-type: square;&quot;&gt;&lt;li&gt;&lt;p&gt;Поддерживает работу с цельной кровью, сывороткой, плазмой, мочой, слезами&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;li&gt;&lt;p&gt;&lt;strong&gt;Несколько типов интерфейсов; Массовое хранение данных&lt;/strong&gt;&lt;/p&gt;&lt;/li&gt;&lt;ul class=&quot; list-paddingleft-2&quot; style=&quot;list-style-type: square;&quot;&gt;&lt;li&gt;&lt;p&gt;Интерфейс USB, сетевой порт, последовательный порт, 4G, может быть подключен к внешнему считывателю кода;&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Объем памяти 8 ГБ, поддерживает хранение &amp;gt; 10 000 образцов данных&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;li&gt;&lt;p&gt;&lt;strong&gt;Дружественный режим взаимодействия человека и компьютера&lt;/strong&gt;&lt;/p&gt;&lt;/li&gt;&lt;ul class=&quot; list-paddingleft-2&quot; style=&quot;list-style-type: square;&quot;&gt;&lt;li&gt;&lt;p&gt;10,1-дюймовый емкостный сенсорный экран&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Операционная система Android обеспечивает более удобный режим взаимодействия человека и компьютера&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/ul&gt;&lt;p&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/ueditor/image/202408/1722606867b934e5.png&quot; title=&quot;Многофункциональный иммунофлуоресцентный анализатор BF-300 Fluoxpert&quot; alt=&quot;Многофункциональный иммунофлуоресцентный анализатор BF-300 Fluoxpert&quot;/&gt;&lt;/p&gt;','',0,'7',''),(41,27,'Многофункциональный анализатор иммунофлуоресценции Fluoxpert','257','','',1,1,'创始人',9,'/products/show-41.html',0,0,'127.0.0.1-54585',1717162693,1722589892,899,'&lt;p&gt;&lt;strong&gt;Несколько методик:&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p&gt;Сухая иммунохроматография (иммунофлуоресценция, время-разрешенная флуоресценция, и коллоидное золото)&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Сухая фотохимия&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;strong&gt;Несколько типов образцов:&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p&gt;Цельная кровь, сыворотка, плазма, моча, слезы&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;strong&gt;Поддержка сканирования QR-кода:&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p&gt;Автоматическая идентификация тестов&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/ueditor/image/202408/1722589882f42a08.png&quot; title=&quot;Многофункциональный анализатор иммунофлуоресценции Fluoxpert&quot; alt=&quot;Многофункциональный анализатор иммунофлуоресценции Fluoxpert&quot;/&gt;&lt;/p&gt;','',0,'',''),(42,28,'Горячая компрессная повязка на глаз','261','','',1,1,'创始人',9,'/products/show-42.html',0,0,'127.0.0.1-55484',1717164077,1722585937,930,'&lt;p&gt;&lt;strong&gt;Применение:&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Горячие компрессы для глаз используются в основном для снятия таких симптомов, как усталость глаз, сухость и зуд. При использовании горячей повязки для глаз просто приложите ее к области глаз и снимите симптомы заболевания, приложив к ней теплый компресс.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;br/&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Преимущество продукта:&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p&gt;Медицинское средство, позволяющее легко ухаживать за глазами&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Уменьшение дискомфорта при сухости глаз&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Снимает напряжение глаз&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Снимает психическое напряжение и улучшает качество сна&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;','',0,'',''),(43,28,'Устройство для физиотерапии сухости глаз','260','','',1,1,'创始人',9,'/products/show-43.html',0,0,'127.0.0.1-55593',1717164202,1722587490,900,'&lt;p&gt;&lt;strong&gt;Удобный и простой в переноске:&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Устройство разработано как компактное и легкое, что позволяет пациентам с сухостью глаз использовать его дома или в офисе.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;br/&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Физиотерапия зрения:&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p&gt;Прозрачные линзы без запотевания, без задержек в работе и учебе.&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;strong&gt;&lt;br/&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Физическая терапия:&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p&gt;Постоянное нагревание, индивидуальный контроль за использованием температуры, эффективно размягчает аномальное пальпебральное кожное сало.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Способствует выделению пальпебрального кожного сала, эффективно очищает мейбомиевые железы.&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;strong&gt;&lt;br/&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Режим увлажнения:&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p&gt;Увлажняющее силиконовое кольцо создает замкнутое пространство между глазами, обеспечивая высокую влажность поверхности глаза и уменьшая испарение слез.&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/ueditor/image/202408/17225865431ad3a2.png&quot; title=&quot;Устройство для физиотерапии сухости глаз&quot; alt=&quot;Устройство для физиотерапии сухости глаз&quot;/&gt;&lt;/p&gt;','',0,'',''),(44,28,'Одноразовая стерильная медицинская пластина для реканализации мейбомиевых желез','259','','',1,1,'创始人',9,'/products/show-44.html',0,0,'127.0.0.1-55647',1717164460,1722586054,912,'&lt;p&gt;&lt;strong&gt;Применение:&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Применяется для пациентов с синдромом «сухого глаза» для разблокирования липидного слоя век.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;br/&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Преимущества:&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p&gt;&lt;strong&gt;Безопасность&lt;/strong&gt;: Одноразовый, снижает риск перекрестного заражения и обеспечивает более безопасные условия лечения.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;&lt;strong&gt;Удобство&lt;/strong&gt;: Компактный размер, легко переносить и использовать.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;&lt;strong&gt;Комфорт&lt;/strong&gt;: Прибор разработан таким образом, чтобы быть более удобным в использовании, его легко держать, он подходит для работы под разными углами и в разных направлениях и может обеспечить более комфортные условия для пациента.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;&lt;strong&gt;Инновация&lt;/strong&gt;: В соответствии с реальной ситуацией пациента, врач может определить различные режимы давления для разблокировки липидного слоя века. Максимальное давление составляет 5,2 Н, что является безопасным и надежным в использовании.&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;','',0,'',''),(45,12,'Мультисистема мониторинга уровня глюкозы в крови / кетонов в крови / мочевой кислоты/ гемоглобина','274','','Он предназначен для обнаружения и количественного определения определенных химических компонентов в образцах цельной крови человека и капиллярной крови с помощью электрохимии.',1,1,'创始人',9,'/products/show-45.html',0,0,'39.80.7.2-2549',1718205497,1722604602,203,'&lt;p&gt;Он предназначен для обнаружения и количественного определения определенных химических компонентов в образцах цельной крови человека и капиллярной крови с помощью электрохимии.&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;ul class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p&gt;Многофункциональное устройство 4 в 1: Глюкоза (GOD или GDH-FDA), UA, KET, GDH/Hb&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Выталкиватель полосок&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Небольшой размер с большим дисплеем&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Точный результат в течение 5 секунд&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Капиллярная/венозная кровь&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;https://wx-office-web.oss-cn-beijing.aliyuncs.com/ueditor/image/202408/17226045892cdcba.png&quot; title=&quot;Мультисистема мониторинга&quot; alt=&quot;Мультисистема мониторинга&quot;/&gt;&lt;/p&gt;','{\"file\":[\"276\"],\"title\":[\"\"],\"description\":[\"\"]}',0,'','');
/*!40000 ALTER TABLE `dr_1_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_1_product_category`
--

DROP TABLE IF EXISTS `dr_1_product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_1_product_category` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `pid` mediumint unsigned NOT NULL DEFAULT '0' COMMENT '上级id',
  `pids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所有上级id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '栏目名称',
  `dirname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '栏目目录',
  `pdirname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '上级目录',
  `child` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '是否有下级',
  `disabled` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '是否禁用',
  `ismain` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '是否主栏目',
  `childids` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '下级所有id',
  `thumb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '栏目图片',
  `show` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `setting` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '属性配置',
  `displayorder` mediumint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `show` (`show`),
  KEY `disabled` (`disabled`),
  KEY `ismain` (`ismain`),
  KEY `module` (`pid`,`displayorder`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='栏目表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_1_product_category`
--

LOCK TABLES `dr_1_product_category` WRITE;
/*!40000 ALTER TABLE `dr_1_product_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_1_product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_1_product_category_data`
--

DROP TABLE IF EXISTS `dr_1_product_category_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_1_product_category_data` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint unsigned NOT NULL COMMENT '作者uid',
  `catid` int unsigned NOT NULL COMMENT '栏目id',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='栏目模型表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_1_product_category_data`
--

LOCK TABLES `dr_1_product_category_data` WRITE;
/*!40000 ALTER TABLE `dr_1_product_category_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_1_product_category_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_1_product_data_0`
--

DROP TABLE IF EXISTS `dr_1_product_data_0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_1_product_data_0` (
  `id` int unsigned NOT NULL,
  `uid` mediumint unsigned NOT NULL COMMENT '作者uid',
  `catid` smallint unsigned NOT NULL COMMENT '栏目id',
  `content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '内容',
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='内容附表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_1_product_data_0`
--

LOCK TABLES `dr_1_product_data_0` WRITE;
/*!40000 ALTER TABLE `dr_1_product_data_0` DISABLE KEYS */;
INSERT INTO `dr_1_product_data_0` VALUES (16,1,11,''),(17,1,11,''),(18,1,11,''),(19,1,11,''),(20,1,11,''),(21,1,11,''),(22,1,11,''),(23,1,11,''),(24,1,11,''),(25,1,12,''),(26,1,12,''),(27,1,12,''),(28,1,12,''),(29,1,12,''),(30,1,12,''),(37,1,26,''),(38,1,26,''),(39,1,26,''),(40,1,27,''),(41,1,27,''),(42,1,28,''),(43,1,28,''),(44,1,28,''),(45,1,12,'');
/*!40000 ALTER TABLE `dr_1_product_data_0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_1_product_draft`
--

DROP TABLE IF EXISTS `dr_1_product_draft`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_1_product_draft` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `cid` int unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint unsigned NOT NULL COMMENT '作者uid',
  `catid` mediumint unsigned NOT NULL COMMENT '栏目id',
  `content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '具体内容',
  `inputtime` int unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `catid` (`catid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='内容草稿表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_1_product_draft`
--

LOCK TABLES `dr_1_product_draft` WRITE;
/*!40000 ALTER TABLE `dr_1_product_draft` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_1_product_draft` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_1_product_flag`
--

DROP TABLE IF EXISTS `dr_1_product_flag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_1_product_flag` (
  `flag` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '文档标记id',
  `id` int unsigned NOT NULL COMMENT '文档内容id',
  `uid` mediumint unsigned NOT NULL COMMENT '作者uid',
  `catid` mediumint unsigned NOT NULL COMMENT '栏目id',
  KEY `flag` (`flag`,`id`,`uid`),
  KEY `catid` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='标记表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_1_product_flag`
--

LOCK TABLES `dr_1_product_flag` WRITE;
/*!40000 ALTER TABLE `dr_1_product_flag` DISABLE KEYS */;
INSERT INTO `dr_1_product_flag` VALUES (1,19,1,11),(1,17,1,11),(1,40,1,27),(1,30,1,12),(1,26,1,12),(1,24,1,11),(1,29,1,12);
/*!40000 ALTER TABLE `dr_1_product_flag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_1_product_form_subcategory`
--

DROP TABLE IF EXISTS `dr_1_product_form_subcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_1_product_form_subcategory` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `cid` int unsigned NOT NULL COMMENT '内容id',
  `catid` mediumint unsigned NOT NULL COMMENT '栏目id',
  `uid` mediumint unsigned NOT NULL COMMENT '作者id',
  `author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '作者名称',
  `inputip` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '录入者ip',
  `inputtime` int unsigned NOT NULL COMMENT '录入时间',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '表单主题',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态值',
  `tableid` smallint unsigned NOT NULL COMMENT '附表id',
  `displayorder` int DEFAULT NULL COMMENT '排序值',
  `cn_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '中文产品标题',
  `album` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '图册',
  `album_lines_num` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图册一行个数',
  `product_introduction` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '产品介绍',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `author` (`author`),
  KEY `status` (`status`),
  KEY `displayorder` (`displayorder`),
  KEY `inputtime` (`inputtime`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='模块表单子分类表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_1_product_form_subcategory`
--

LOCK TABLES `dr_1_product_form_subcategory` WRITE;
/*!40000 ALTER TABLE `dr_1_product_form_subcategory` DISABLE KEYS */;
INSERT INTO `dr_1_product_form_subcategory` VALUES (1,31,13,1,'','127.0.0.1-59502',1716914647,'Disposable Vaginal Lightening Dilator',1,0,0,'','{\"file\":[\"105\",\"107\",\"108\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','1','&lt;p&gt;&lt;img  title=&quot;Disposable Vaginal Lightening Dilator (2)&quot; alt=&quot;Disposable Vaginal Lightening Dilator (2)&quot; src=&quot;https://biohermesv2.sunbingchen.cn/uploadfile/202405/ede8d5b09671362.png&quot;&gt;&lt;br&gt;&lt;/p&gt;');
/*!40000 ALTER TABLE `dr_1_product_form_subcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_1_product_form_subcategory_data_0`
--

DROP TABLE IF EXISTS `dr_1_product_form_subcategory_data_0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_1_product_form_subcategory_data_0` (
  `id` int unsigned NOT NULL,
  `cid` int unsigned NOT NULL COMMENT '内容id',
  `catid` mediumint unsigned NOT NULL COMMENT '栏目id',
  `uid` mediumint unsigned NOT NULL COMMENT '作者id',
  UNIQUE KEY `id` (`id`),
  KEY `cid` (`cid`),
  KEY `catid` (`catid`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='模块表单子分类附表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_1_product_form_subcategory_data_0`
--

LOCK TABLES `dr_1_product_form_subcategory_data_0` WRITE;
/*!40000 ALTER TABLE `dr_1_product_form_subcategory_data_0` DISABLE KEYS */;
INSERT INTO `dr_1_product_form_subcategory_data_0` VALUES (1,31,13,1);
/*!40000 ALTER TABLE `dr_1_product_form_subcategory_data_0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_1_product_hits`
--

DROP TABLE IF EXISTS `dr_1_product_hits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_1_product_hits` (
  `id` int unsigned NOT NULL COMMENT '文章id',
  `hits` int unsigned NOT NULL COMMENT '总点击数',
  `day_hits` int unsigned NOT NULL COMMENT '本日点击',
  `week_hits` int unsigned NOT NULL COMMENT '本周点击',
  `month_hits` int unsigned NOT NULL COMMENT '本月点击',
  `year_hits` int unsigned NOT NULL COMMENT '年点击量',
  `day_time` int unsigned NOT NULL COMMENT '本日',
  `week_time` int unsigned NOT NULL COMMENT '本周',
  `month_time` int unsigned NOT NULL COMMENT '本月',
  `year_time` int unsigned NOT NULL COMMENT '年',
  UNIQUE KEY `id` (`id`),
  KEY `day_hits` (`day_hits`),
  KEY `week_hits` (`week_hits`),
  KEY `month_hits` (`month_hits`),
  KEY `year_hits` (`year_hits`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='时段点击量统计';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_1_product_hits`
--

LOCK TABLES `dr_1_product_hits` WRITE;
/*!40000 ALTER TABLE `dr_1_product_hits` DISABLE KEYS */;
INSERT INTO `dr_1_product_hits` VALUES (16,2,1,1,1,1,1716899694,1716899694,1716899694,1716899694),(24,3,2,2,2,2,1716945107,1716945107,1716945107,1716945107);
/*!40000 ALTER TABLE `dr_1_product_hits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_1_product_index`
--

DROP TABLE IF EXISTS `dr_1_product_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_1_product_index` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint unsigned NOT NULL COMMENT '作者uid',
  `catid` mediumint unsigned NOT NULL COMMENT '栏目id',
  `status` tinyint NOT NULL COMMENT '审核状态',
  `inputtime` int unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='内容索引表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_1_product_index`
--

LOCK TABLES `dr_1_product_index` WRITE;
/*!40000 ALTER TABLE `dr_1_product_index` DISABLE KEYS */;
INSERT INTO `dr_1_product_index` VALUES (16,1,11,9,1722578818),(17,1,11,9,1722606532),(18,1,11,9,1722578920),(19,1,11,9,1722571396),(20,1,11,9,1722579090),(21,1,11,9,1722579487),(22,1,11,9,1722581514),(23,1,11,9,1722581897),(24,1,11,9,1722654228),(25,1,12,9,1722581345),(26,1,12,9,1722654056),(27,1,12,9,1722590505),(28,1,12,9,1722590519),(29,1,12,9,1722849080),(30,1,12,9,1722653978),(37,1,26,9,1722585726),(38,1,26,9,1722583771),(39,1,26,9,1722582420),(40,1,27,9,1722606761),(41,1,27,9,1722589892),(42,1,28,9,1722585937),(43,1,28,9,1722587490),(44,1,28,9,1722586054),(45,1,12,9,1722604602);
/*!40000 ALTER TABLE `dr_1_product_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_1_product_recycle`
--

DROP TABLE IF EXISTS `dr_1_product_recycle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_1_product_recycle` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `cid` int unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint unsigned NOT NULL COMMENT '栏目id',
  `content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '具体内容',
  `result` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '删除理由',
  `inputtime` int unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `catid` (`catid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='内容回收站表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_1_product_recycle`
--

LOCK TABLES `dr_1_product_recycle` WRITE;
/*!40000 ALTER TABLE `dr_1_product_recycle` DISABLE KEYS */;
INSERT INTO `dr_1_product_recycle` VALUES (6,12,1,2,'{\"1_product\":{\"id\":\"12\",\"catid\":\"2\",\"title\":\"ICU Anesthesiology\",\"thumb\":\"\",\"keywords\":\"\",\"description\":\"\",\"hits\":\"1\",\"uid\":\"1\",\"author\":\"创始人\",\"status\":\"9\",\"url\":\"/index.php?c=show&id=12\",\"link_id\":\"0\",\"tableid\":\"0\",\"inputip\":\"127.0.0.1-57619\",\"inputtime\":\"1716519769\",\"updatetime\":\"1716520255\",\"displayorder\":\"0\",\"cpjs\":\"\",\"cn_title\":\"ICU 麻醉耗材\"},\"1_product_data_0\":{\"id\":\"12\",\"uid\":\"1\",\"catid\":\"2\",\"content\":\"\"},\"1_product_category_data\":null}','',1716520456);
/*!40000 ALTER TABLE `dr_1_product_recycle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_1_product_search`
--

DROP TABLE IF EXISTS `dr_1_product_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_1_product_search` (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `catid` mediumint unsigned NOT NULL COMMENT '栏目id',
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '参数数组',
  `keyword` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '关键字',
  `contentid` int unsigned NOT NULL COMMENT '字段改成了结果数量值',
  `inputtime` int unsigned NOT NULL COMMENT '搜索时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `catid` (`catid`),
  KEY `keyword` (`keyword`),
  KEY `inputtime` (`inputtime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='搜索表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_1_product_search`
--

LOCK TABLES `dr_1_product_search` WRITE;
/*!40000 ALTER TABLE `dr_1_product_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_1_product_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_1_product_time`
--

DROP TABLE IF EXISTS `dr_1_product_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_1_product_time` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint unsigned NOT NULL COMMENT '作者uid',
  `catid` mediumint unsigned NOT NULL COMMENT '栏目id',
  `content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '具体内容',
  `result` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '处理结果',
  `posttime` int unsigned NOT NULL COMMENT '定时发布时间',
  `inputtime` int unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `posttime` (`posttime`),
  KEY `inputtime` (`inputtime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='内容定时发布表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_1_product_time`
--

LOCK TABLES `dr_1_product_time` WRITE;
/*!40000 ALTER TABLE `dr_1_product_time` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_1_product_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_1_product_verify`
--

DROP TABLE IF EXISTS `dr_1_product_verify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_1_product_verify` (
  `id` int unsigned NOT NULL,
  `uid` mediumint unsigned NOT NULL COMMENT '作者uid',
  `vid` tinyint NOT NULL COMMENT '审核id号',
  `isnew` tinyint unsigned NOT NULL COMMENT '是否新增',
  `islock` tinyint unsigned NOT NULL COMMENT '是否锁定',
  `author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '作者',
  `catid` mediumint unsigned NOT NULL COMMENT '栏目id',
  `status` tinyint NOT NULL COMMENT '审核状态',
  `content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '具体内容',
  `backuid` mediumint unsigned NOT NULL COMMENT '操作人uid',
  `backinfo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '操作退回信息',
  `inputtime` int unsigned NOT NULL COMMENT '录入时间',
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `vid` (`vid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `backuid` (`backuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='内容审核表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_1_product_verify`
--

LOCK TABLES `dr_1_product_verify` WRITE;
/*!40000 ALTER TABLE `dr_1_product_verify` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_1_product_verify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_1_share_category`
--

DROP TABLE IF EXISTS `dr_1_share_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_1_share_category` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `tid` tinyint(1) NOT NULL COMMENT '栏目类型，0单页，1模块，2外链',
  `pid` smallint unsigned NOT NULL DEFAULT '0' COMMENT '上级id',
  `mid` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '模块目录',
  `pids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所有上级id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '栏目名称',
  `dirname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '栏目目录',
  `pdirname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '上级目录',
  `child` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '是否有下级',
  `disabled` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '是否禁用',
  `ismain` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '是否主栏目',
  `childids` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '下级所有id',
  `thumb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '栏目图片',
  `show` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '单页内容',
  `setting` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '属性配置',
  `displayorder` smallint NOT NULL DEFAULT '0',
  `ymdbtp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '页面顶部图片',
  `bglb` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '表格列表',
  `tuce` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '图册',
  `company_personnel` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '公司人员',
  `wenziliebiao` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '文字列表',
  `ifcczhengshu` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'IFCC证书',
  `ngspzhengshu` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'NGSP证书',
  `reg_cezs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'RegistrationCertificate证书',
  `jdtzbt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '焦点图主标题',
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`),
  KEY `tid` (`tid`),
  KEY `show` (`show`),
  KEY `disabled` (`disabled`),
  KEY `ismain` (`ismain`),
  KEY `dirname` (`dirname`),
  KEY `module` (`pid`,`displayorder`,`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='共享模块栏目表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_1_share_category`
--

LOCK TABLES `dr_1_share_category` WRITE;
/*!40000 ALTER TABLE `dr_1_share_category` DISABLE KEYS */;
INSERT INTO `dr_1_share_category` VALUES (1,0,0,'','0','О КОМПАНИИ','about','',1,0,1,'1,19,20,21','43',1,'','{\"disabled\":\"0\",\"linkurl\":\"\",\"getchild\":\"1\",\"notedit\":0,\"urlrule\":\"2\",\"seo\":{\"list_title\":\"[第{page}页{join}]{name}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":\"10\",\"mpagesize\":\"20\",\"page\":\"\",\"list\":\"list.html\",\"category\":\"category.html\",\"search\":\"search.html\",\"show\":\"show.html\"},\"cat_field\":null,\"module_field\":null}',0,'44','','','','','','','','О НАШЕЙ КОМПАНИИ BIOHERMES'),(2,1,0,'product','0','КАТАЛОГ','products','',1,0,1,'2,12,13,26,27,28,11','191',1,'','{\"disabled\":\"0\",\"linkurl\":\"\",\"getchild\":\"0\",\"notedit\":\"0\",\"urlrule\":\"2\",\"seo\":{\"list_title\":\"[第{page}页{join}]{name}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":\"10\",\"mpagesize\":\"20\",\"page\":\"\",\"list\":\"list.html\",\"category\":\"category.html\",\"search\":\"search.html\",\"show\":\"show.html\"},\"cat_field\":null,\"module_field\":null}',0,'42','','','','','','','','Это каталог продуктов BioHerme'),(6,1,0,'news','0','НОВОСТИ','news','',0,0,1,'6','40',1,'','{\"disabled\":\"0\",\"linkurl\":\"#news\",\"getchild\":\"0\",\"notedit\":\"0\",\"html\":\"1\",\"chtml\":\"1\",\"urlrule\":\"2\",\"seo\":{\"list_title\":\"[第{page}页{join}]{name}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":\"10\",\"mpagesize\":\"20\",\"page\":\"\",\"list\":\"list.html\",\"category\":\"category.html\",\"search\":\"search.html\",\"show\":\"show.html\"},\"cat_field\":null,\"module_field\":null}',0,'39','','','','','','','',NULL),(11,1,2,'product','0,2','ИТ/Анестезиология ','icu_anesthesiology','products/',0,0,1,'11','',1,'','{\"disabled\":\"0\",\"linkurl\":\"\",\"getchild\":\"0\",\"notedit\":\"0\",\"urlrule\":\"2\",\"seo\":{\"list_title\":\"[第{page}页{join}]{name}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":\"10\",\"mpagesize\":\"20\",\"page\":\"\",\"list\":\"list.html\",\"category\":\"category.html\",\"search\":\"search.html\",\"show\":\"show.html\"},\"cat_field\":null,\"module_field\":null}',3,'126','','','','','','','',''),(12,1,2,'product','0,2','Лечение диабета','diabetes_care','products/',0,0,1,'12','',1,'&lt;br&gt;','{\"disabled\":\"0\",\"linkurl\":\"\",\"getchild\":\"0\",\"notedit\":\"0\",\"urlrule\":\"2\",\"seo\":{\"list_title\":\"[第{page}页{join}]{name}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":\"10\",\"mpagesize\":\"20\",\"page\":\"\",\"list\":\"list.html\",\"category\":\"category.html\",\"search\":\"search.html\",\"show\":\"show.html\"},\"cat_field\":null,\"module_field\":null}',1,'128','','','','','','','',''),(13,1,2,'product','0,2','Тестирование на хронические заболевания','chronic_disease_testing','products/',1,0,1,'13,26,27,28','',1,'&lt;br&gt;','{\"disabled\":\"0\",\"linkurl\":\"\",\"getchild\":\"0\",\"notedit\":\"0\",\"urlrule\":\"2\",\"seo\":{\"list_title\":\"[第{page}页{join}]{name}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":\"10\",\"mpagesize\":\"20\",\"page\":\"\",\"list\":\"list.html\",\"category\":\"category.html\",\"search\":\"search.html\",\"show\":\"show.html\"},\"cat_field\":null,\"module_field\":null}',2,'127','','','','','','','',''),(19,0,1,'','0,1','ОСНОВНЫЕ ВЕХИ','history','about/',0,0,1,'19','',1,'&lt;div data-page-id=&quot;CZZCdO5bOonHzSxibf6cnIwmnWV&quot; data-docx-has-block-data=&quot;false&quot;&gt;&lt;div&gt;&lt;div data-zone-id=&quot;0&quot; data-line-index=&quot;0&quot; data-line=&quot;true&quot; style=&quot;font-size: 16px; white-space: pre;&quot;&gt;&lt;span style=&quot;font-family: MonospacedNumber, LarkHackSafariFont, LarkEmojiFont, LarkChineseQuote, -apple-system, BlinkMacSystemFont, &amp;quot;Helvetica Neue&amp;quot;, Tahoma, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Microsoft Yahei&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;;&quot;&gt;&lt;b&gt;18 лет исследования мониторинга диабета&lt;/b&gt;&lt;/span&gt;&lt;/div&gt;&lt;div data-zone-id=&quot;0&quot; data-line-index=&quot;1&quot; data-line=&quot;true&quot; &gt;4 октября 2006 года, доктор Эрик Сюй и мистер Ян Лю основали компанию BioHermes в городе Вуси, расположенном на южном дельте Янцзы в Китае. За последние 18 лет  BioHermes посвятила себя развитию мониторинга диабета и создала полный портфель анализаторов гликированного гемоглобина с использованием методов POC и техники HPLC. Сейчас BioHermes стоит на новом этапе расширения своих продуктов и бизнеса в широкий спектр здравоохранения, разрабатывая лучшие варианты для управления хроническими заболеваниями и расходных материалов для анестезиологии.&lt;/div&gt;&lt;div data-zone-id=&quot;0&quot; data-line-index=&quot;1&quot; data-line=&quot;true&quot; style=&quot;font-size: 16px; white-space: pre;&quot;&gt;&lt;span style=&quot;font-family: MonospacedNumber, LarkHackSafariFont, LarkEmojiFont, LarkChineseQuote, -apple-system, BlinkMacSystemFont, &amp;quot;Helvetica Neue&amp;quot;, Tahoma, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Microsoft Yahei&amp;quot;, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div data-zone-id=&quot;0&quot; data-line-index=&quot;1&quot; data-line=&quot;true&quot;&gt;&lt;font face=&quot;MonospacedNumber, LarkHackSafariFont, LarkEmojiFont, LarkChineseQuote, -apple-system, BlinkMacSystemFont, Helvetica Neue, Tahoma, PingFang SC, Microsoft Yahei, Arial, Hiragino Sans GB, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji&quot;&gt;&lt;span style=&quot;font-size: 16px; white-space: pre;&quot;&gt;&lt;b&gt;10 лет выход на международный рынок&lt;/b&gt;\r\n&lt;/span&gt;&lt;/font&gt;В 2024 году исполняется 10 лет с тех пор, как г-н Кими Лю под руководством BioHermes вышел на международный рынок. За эти десять лет BioHermes добился значительных успехов, которые заслуживают признания. В их число входит первое китайское производственное предприятие, получившее предварительное разрешение на рынок 510(k) FDA США, и первое представительство Китая, выбранное как одно из 19 лучших методологий точечных измерений гемоглобина A1c в мире по версии FIND Диагностика для всех и т. д.&lt;br&gt;&lt;/div&gt;&lt;div data-zone-id=&quot;0&quot; data-line-index=&quot;1&quot; data-line=&quot;true&quot; style=&quot;font-size: 16px; white-space: pre;&quot;&gt;&lt;br&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;p&gt;&lt;span data-lark-record-data=&quot;{&amp;quot;isCut&amp;quot;:false,&amp;quot;rootId&amp;quot;:&amp;quot;CZZCdO5bOonHzSxibf6cnIwmnWV&amp;quot;,&amp;quot;parentId&amp;quot;:&amp;quot;CZZCdO5bOonHzSxibf6cnIwmnWV&amp;quot;,&amp;quot;blockIds&amp;quot;:[13,14,15,16],&amp;quot;recordIds&amp;quot;:[&amp;quot;K1cqdJV7loWhiix6myRcqMClnxf&amp;quot;,&amp;quot;P3Fsd3JCooHvMdxHMjxcWv6Bnmb&amp;quot;,&amp;quot;LwiFdC5p7oV4CzxJGRdcGBW5nkp&amp;quot;,&amp;quot;Q2HMdcZWxoMng6xhvnBc0nS5n8g&amp;quot;],&amp;quot;recordMap&amp;quot;:{&amp;quot;K1cqdJV7loWhiix6myRcqMClnxf&amp;quot;:{&amp;quot;id&amp;quot;:&amp;quot;K1cqdJV7loWhiix6myRcqMClnxf&amp;quot;,&amp;quot;snapshot&amp;quot;:{&amp;quot;type&amp;quot;:&amp;quot;text&amp;quot;,&amp;quot;parent_id&amp;quot;:&amp;quot;CZZCdO5bOonHzSxibf6cnIwmnWV&amp;quot;,&amp;quot;comments&amp;quot;:[&amp;quot;7373479729569513500&amp;quot;],&amp;quot;locked&amp;quot;:false,&amp;quot;hidden&amp;quot;:false,&amp;quot;author&amp;quot;:&amp;quot;7245116112315187203&amp;quot;,&amp;quot;children&amp;quot;:[],&amp;quot;text&amp;quot;:{&amp;quot;initialAttributedTexts&amp;quot;:{&amp;quot;text&amp;quot;:{&amp;quot;0&amp;quot;:&amp;quot;18 years exploring diabetes mornitoring&amp;quot;},&amp;quot;attribs&amp;quot;:{&amp;quot;0&amp;quot;:&amp;quot;*0*1+13&amp;quot;}},&amp;quot;apool&amp;quot;:{&amp;quot;numToAttrib&amp;quot;:{&amp;quot;0&amp;quot;:[&amp;quot;author&amp;quot;,&amp;quot;7244478753341046787&amp;quot;],&amp;quot;1&amp;quot;:[&amp;quot;comment-id-7373479729569513500&amp;quot;,&amp;quot;true&amp;quot;]},&amp;quot;nextNum&amp;quot;:2}},&amp;quot;align&amp;quot;:&amp;quot;&amp;quot;,&amp;quot;folded&amp;quot;:false}},&amp;quot;P3Fsd3JCooHvMdxHMjxcWv6Bnmb&amp;quot;:{&amp;quot;id&amp;quot;:&amp;quot;P3Fsd3JCooHvMdxHMjxcWv6Bnmb&amp;quot;,&amp;quot;snapshot&amp;quot;:{&amp;quot;type&amp;quot;:&amp;quot;text&amp;quot;,&amp;quot;parent_id&amp;quot;:&amp;quot;CZZCdO5bOonHzSxibf6cnIwmnWV&amp;quot;,&amp;quot;comments&amp;quot;:[&amp;quot;7373479729569513500&amp;quot;],&amp;quot;locked&amp;quot;:false,&amp;quot;hidden&amp;quot;:false,&amp;quot;author&amp;quot;:&amp;quot;7244478753341046787&amp;quot;,&amp;quot;children&amp;quot;:[],&amp;quot;text&amp;quot;:{&amp;quot;initialAttributedTexts&amp;quot;:{&amp;quot;text&amp;quot;:{&amp;quot;0&amp;quot;:&amp;quot;On October 4th, 2006, Dr. Eric Xu and Mr. Yan Liu founded Biohermes company in the city of Wuxi, a city lies in the southern delta of Yangtze River of China. Over the past 18 years, Wuxi Biohermes has dedicated itself to diabetes monitoring development and created a full portfolio of glycated hemoglobin analyzers with both POC methods and HPLC technique. Wuxi Biohermes is now standing on a new stage to expand its products &amp;amp; businesses into a broader range of healthcare, developing better options for chronic disease management, anesthesiology consumables.&amp;quot;},&amp;quot;attribs&amp;quot;:{&amp;quot;0&amp;quot;:&amp;quot;*0*1+fk&amp;quot;}},&amp;quot;apool&amp;quot;:{&amp;quot;numToAttrib&amp;quot;:{&amp;quot;0&amp;quot;:[&amp;quot;author&amp;quot;,&amp;quot;7244478753341046787&amp;quot;],&amp;quot;1&amp;quot;:[&amp;quot;comment-id-7373479729569513500&amp;quot;,&amp;quot;true&amp;quot;]},&amp;quot;nextNum&amp;quot;:2}},&amp;quot;align&amp;quot;:&amp;quot;&amp;quot;,&amp;quot;folded&amp;quot;:false}},&amp;quot;LwiFdC5p7oV4CzxJGRdcGBW5nkp&amp;quot;:{&amp;quot;id&amp;quot;:&amp;quot;LwiFdC5p7oV4CzxJGRdcGBW5nkp&amp;quot;,&amp;quot;snapshot&amp;quot;:{&amp;quot;type&amp;quot;:&amp;quot;text&amp;quot;,&amp;quot;parent_id&amp;quot;:&amp;quot;CZZCdO5bOonHzSxibf6cnIwmnWV&amp;quot;,&amp;quot;comments&amp;quot;:[&amp;quot;7373479729569513500&amp;quot;],&amp;quot;locked&amp;quot;:false,&amp;quot;hidden&amp;quot;:false,&amp;quot;author&amp;quot;:&amp;quot;7244478753341046787&amp;quot;,&amp;quot;children&amp;quot;:[],&amp;quot;text&amp;quot;:{&amp;quot;initialAttributedTexts&amp;quot;:{&amp;quot;text&amp;quot;:{&amp;quot;0&amp;quot;:&amp;quot;10 years going global&amp;quot;},&amp;quot;attribs&amp;quot;:{&amp;quot;0&amp;quot;:&amp;quot;*0*1+l&amp;quot;}},&amp;quot;apool&amp;quot;:{&amp;quot;numToAttrib&amp;quot;:{&amp;quot;0&amp;quot;:[&amp;quot;author&amp;quot;,&amp;quot;7244478753341046787&amp;quot;],&amp;quot;1&amp;quot;:[&amp;quot;comment-id-7373479729569513500&amp;quot;,&amp;quot;true&amp;quot;]},&amp;quot;nextNum&amp;quot;:2}},&amp;quot;align&amp;quot;:&amp;quot;&amp;quot;,&amp;quot;folded&amp;quot;:false}},&amp;quot;Q2HMdcZWxoMng6xhvnBc0nS5n8g&amp;quot;:{&amp;quot;id&amp;quot;:&amp;quot;Q2HMdcZWxoMng6xhvnBc0nS5n8g&amp;quot;,&amp;quot;snapshot&amp;quot;:{&amp;quot;type&amp;quot;:&amp;quot;text&amp;quot;,&amp;quot;parent_id&amp;quot;:&amp;quot;CZZCdO5bOonHzSxibf6cnIwmnWV&amp;quot;,&amp;quot;comments&amp;quot;:[&amp;quot;7373479729569513500&amp;quot;],&amp;quot;locked&amp;quot;:false,&amp;quot;hidden&amp;quot;:false,&amp;quot;author&amp;quot;:&amp;quot;7244478753341046787&amp;quot;,&amp;quot;children&amp;quot;:[],&amp;quot;text&amp;quot;:{&amp;quot;initialAttributedTexts&amp;quot;:{&amp;quot;text&amp;quot;:{&amp;quot;0&amp;quot;:&amp;quot;2024 marks the 10th year Mr. Kimi Luo leading Biohermes going international. The first decade has enormous milestones to be celebrated, the first Chinese manufacturer to receive US FDA 510 (k) pre-market clearance, the first Chinese representative to be selected as World Top 19 Point-Of-Care HbA1c methodologies by FIND Diagnosis for all, and so much more.&amp;quot;},&amp;quot;attribs&amp;quot;:{&amp;quot;0&amp;quot;:&amp;quot;*0*1+9x&amp;quot;}},&amp;quot;apool&amp;quot;:{&amp;quot;numToAttrib&amp;quot;:{&amp;quot;0&amp;quot;:[&amp;quot;author&amp;quot;,&amp;quot;7244478753341046787&amp;quot;],&amp;quot;1&amp;quot;:[&amp;quot;comment-id-7373479729569513500&amp;quot;,&amp;quot;true&amp;quot;]},&amp;quot;nextNum&amp;quot;:2}},&amp;quot;align&amp;quot;:&amp;quot;&amp;quot;,&amp;quot;folded&amp;quot;:false}},&amp;quot;CZZCdO5bOonHzSxibf6cnIwmnWV&amp;quot;:{&amp;quot;id&amp;quot;:&amp;quot;CZZCdO5bOonHzSxibf6cnIwmnWV&amp;quot;,&amp;quot;snapshot&amp;quot;:{&amp;quot;type&amp;quot;:&amp;quot;page&amp;quot;,&amp;quot;parent_id&amp;quot;:&amp;quot;&amp;quot;,&amp;quot;comments&amp;quot;:null,&amp;quot;revisions&amp;quot;:null,&amp;quot;locked&amp;quot;:false,&amp;quot;hidden&amp;quot;:false,&amp;quot;author&amp;quot;:&amp;quot;7245116112315187203&amp;quot;,&amp;quot;children&amp;quot;:[&amp;quot;ZRfDdk0u8oTESfxoZLWcMQC5nze&amp;quot;,&amp;quot;JFa0dakU5oIaGfxijwYcjLm2n2e&amp;quot;,&amp;quot;C18SdMJWVohrMqx5zklc2spSnzb&amp;quot;,&amp;quot;RLA5dV0bjoi8PaxdpFwc36agnRc&amp;quot;,&amp;quot;Qvh6drboHomGYFxx6cQcMB7Snoh&amp;quot;,&amp;quot;UOeqdX299oUugjxc3PFc4F5FnVg&amp;quot;,&amp;quot;QOJwdSXkeovRssxjV9fcKV2fntc&amp;quot;,&amp;quot;DLNJdRyR8o8I58xz59Xca9a7nth&amp;quot;,&amp;quot;DTiPdQI2moH8zrxpMIkcdGWnnOe&amp;quot;,&amp;quot;F4QmdM3m9oMlGoxRyW6c0egbn7g&amp;quot;,&amp;quot;RHhUdnRIvokVYoxVS1dcsiYingg&amp;quot;,&amp;quot;K1cqdJV7loWhiix6myRcqMClnxf&amp;quot;,&amp;quot;P3Fsd3JCooHvMdxHMjxcWv6Bnmb&amp;quot;,&amp;quot;LwiFdC5p7oV4CzxJGRdcGBW5nkp&amp;quot;,&amp;quot;Q2HMdcZWxoMng6xhvnBc0nS5n8g&amp;quot;,&amp;quot;Q81GdVUpfou8XExQJMpcAT3dnKp&amp;quot;,&amp;quot;G3FLd2J0zoHgOtxWsHqcIEi3nNb&amp;quot;,&amp;quot;SQZddqppboTsHzxFl9bcu9PanQf&amp;quot;,&amp;quot;CmXzdEwSForf9bxC75lcfoS0neg&amp;quot;,&amp;quot;RDVOdueU2ozEoqxsiM9csS5tnXg&amp;quot;,&amp;quot;Ik3edQsDAoJ9XyxEoXrcQaO4nob&amp;quot;,&amp;quot;D3MmdzcZwojcV0x0Bj7c3602nNg&amp;quot;,&amp;quot;JyYDdLNbsoNa1HxR9UKcTrXEnOc&amp;quot;,&amp;quot;GFDQdNehwoOEi9xPJzjcaXRPnxd&amp;quot;,&amp;quot;NIHMdib9Yo1fMvxGAnScCUAIn6g&amp;quot;,&amp;quot;G7X9ddX4FoEDqlxow3JcigHsnke&amp;quot;,&amp;quot;Al5Od9dRgoRTWLxgmbZcabe6nRc&amp;quot;,&amp;quot;Gu7wdhL9hovAmQxDpvYcdWWcnQB&amp;quot;,&amp;quot;IW6GdeIbwoYqbsxaQiZcdpWon1d&amp;quot;,&amp;quot;QSrwd3vpzoQFTBxJO6KcG1ABnSf&amp;quot;,&amp;quot;Wz67dEIETofFcIxWOA4ckMExnxb&amp;quot;,&amp;quot;Wuj4dzVf0omj2PxK6KDc5FMCngh&amp;quot;,&amp;quot;AqABdiSvYo843axSzYtcWTWznEf&amp;quot;,&amp;quot;FjHrd9xhwoTmvRxEa5ZceMGlnXb&amp;quot;,&amp;quot;QjlUdOLLzoI8lcxO1jIcxBG7ndK&amp;quot;,&amp;quot;ZZ5OdcujAoCpUoxl0EicnBbCnke&amp;quot;,&amp;quot;V8NNdN7YHom13Dxaon7cmLIFnED&amp;quot;,&amp;quot;Enmud8k4kofyoux9McXcgLssnl1&amp;quot;,&amp;quot;DTGRdxfkQoyRYhxVyTvc585snDh&amp;quot;,&amp;quot;QldTdT8JjoE7fyxyFS2c9oGrnMc&amp;quot;,&amp;quot;T7BKdnO8BoIxZsxlZJMcvPkXnVb&amp;quot;,&amp;quot;XEYWd1lz0oAQXbxiZqgc4bfmnlc&amp;quot;,&amp;quot;ZUHBdGSiXofBrHxpeSEcPLtjnOg&amp;quot;,&amp;quot;K827dbKL3oePpkxx5tfch2WBnBc&amp;quot;,&amp;quot;Xd58dByGWorCOkxsYF4cZqMunuh&amp;quot;,&amp;quot;IWhQdAtj7oZ1Xqxgi7Sce07En0e&amp;quot;,&amp;quot;Ofird7Cqmo3PUFx6pztc7XRHnLd&amp;quot;,&amp;quot;WFpzdVWU4ovG9TxGGIdcy4FYn6w&amp;quot;,&amp;quot;CRqFdWuVnoKJ69xiqItchGjgnnd&amp;quot;,&amp;quot;HtQMdsl1joRmiLxpB4zc9Dg0n7F&amp;quot;,&amp;quot;QWRdd9AmUo5dI5xtFsNc86oLnpd&amp;quot;,&amp;quot;GG5kdPR1jo0pUBxNEJ0cZUrXncd&amp;quot;,&amp;quot;BLQEdizHZoI8kux383VcyGxTnde&amp;quot;],&amp;quot;text&amp;quot;:{&amp;quot;apool&amp;quot;:{&amp;quot;nextNum&amp;quot;:1,&amp;quot;numToAttrib&amp;quot;:{&amp;quot;0&amp;quot;:[&amp;quot;author&amp;quot;,&amp;quot;7245116112315187203&amp;quot;]}},&amp;quot;initialAttributedTexts&amp;quot;:{&amp;quot;attribs&amp;quot;:{&amp;quot;0&amp;quot;:&amp;quot;*0+a&amp;quot;},&amp;quot;text&amp;quot;:{&amp;quot;0&amp;quot;:&amp;quot;英文网站页面布局设计&amp;quot;}}},&amp;quot;align&amp;quot;:&amp;quot;&amp;quot;,&amp;quot;doc_info&amp;quot;:{&amp;quot;editors&amp;quot;:[&amp;quot;7245116112315187203&amp;quot;,&amp;quot;7244478753341046787&amp;quot;,&amp;quot;7350851905129693187&amp;quot;],&amp;quot;options&amp;quot;:[&amp;quot;editors&amp;quot;,&amp;quot;create_time&amp;quot;],&amp;quot;deleted_editors&amp;quot;:[],&amp;quot;option_modified&amp;quot;:null}}}},&amp;quot;payloadMap&amp;quot;:{&amp;quot;K1cqdJV7loWhiix6myRcqMClnxf&amp;quot;:{&amp;quot;level&amp;quot;:1},&amp;quot;P3Fsd3JCooHvMdxHMjxcWv6Bnmb&amp;quot;:{&amp;quot;level&amp;quot;:1},&amp;quot;LwiFdC5p7oV4CzxJGRdcGBW5nkp&amp;quot;:{&amp;quot;level&amp;quot;:1},&amp;quot;Q2HMdcZWxoMng6xhvnBc0nS5n8g&amp;quot;:{&amp;quot;level&amp;quot;:1}},&amp;quot;extra&amp;quot;:{&amp;quot;channel&amp;quot;:&amp;quot;saas&amp;quot;,&amp;quot;mention_page_title&amp;quot;:{},&amp;quot;external_mention_url&amp;quot;:{}},&amp;quot;isKeepQuoteContainer&amp;quot;:false,&amp;quot;selection&amp;quot;:[{&amp;quot;id&amp;quot;:13,&amp;quot;type&amp;quot;:&amp;quot;text&amp;quot;,&amp;quot;selection&amp;quot;:{&amp;quot;start&amp;quot;:0,&amp;quot;end&amp;quot;:39},&amp;quot;recordId&amp;quot;:&amp;quot;K1cqdJV7loWhiix6myRcqMClnxf&amp;quot;},{&amp;quot;id&amp;quot;:14,&amp;quot;type&amp;quot;:&amp;quot;text&amp;quot;,&amp;quot;selection&amp;quot;:{&amp;quot;start&amp;quot;:0,&amp;quot;end&amp;quot;:560},&amp;quot;recordId&amp;quot;:&amp;quot;P3Fsd3JCooHvMdxHMjxcWv6Bnmb&amp;quot;},{&amp;quot;id&amp;quot;:15,&amp;quot;type&amp;quot;:&amp;quot;text&amp;quot;,&amp;quot;selection&amp;quot;:{&amp;quot;start&amp;quot;:0,&amp;quot;end&amp;quot;:21},&amp;quot;recordId&amp;quot;:&amp;quot;LwiFdC5p7oV4CzxJGRdcGBW5nkp&amp;quot;},{&amp;quot;id&amp;quot;:16,&amp;quot;type&amp;quot;:&amp;quot;text&amp;quot;,&amp;quot;selection&amp;quot;:{&amp;quot;start&amp;quot;:0,&amp;quot;end&amp;quot;:357},&amp;quot;recordId&amp;quot;:&amp;quot;Q2HMdcZWxoMng6xhvnBc0nS5n8g&amp;quot;}],&amp;quot;pasteFlag&amp;quot;:&amp;quot;d06155ca-94bf-4ce0-856c-fcc185ad15b3&amp;quot;}&quot; data-lark-record-format=&quot;docx/record&quot; class=&quot;lark-record-clipboard&quot;&gt;&lt;/span&gt;&lt;/p&gt;','{\"disabled\":\"0\",\"linkurl\":\"\",\"getchild\":\"0\",\"notedit\":0,\"urlrule\":\"2\",\"seo\":{\"list_title\":\"[第{page}页{join}]{name}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":\"10\",\"mpagesize\":\"20\",\"page\":\"page_history.html\",\"list\":\"list.html\",\"category\":\"category.html\",\"search\":\"search.html\",\"show\":\"show.html\"},\"cat_field\":{\"company_personnel\":1,\"category_ch\":1,\"ymdbtp\":1,\"tuce\":1,\"thumb\":1,\"name\":\"test\"},\"module_field\":null}',0,'','{\"1\":{\"1\":\"2013\",\"2\":\"Технология тестирования HbA1c \\\"Боронат Сродство Хроматография\\\" была разработана и защищена патентом.\"},\"2\":{\"1\":\"2014\",\"2\":\"Продукт первого поколения - Анализатор A1C EZ HbA1c был рожден.\"},\"3\":{\"1\":\"2015\",\"2\":\"Анализатор второго поколения A1C EZ 2.0 HbA1c имеет хорошую репутацию.\"},\"4\":{\"1\":\"2017\",\"2\":\"Представлен первый в мире портативный анализатор уровня глюкозы и HbA1c\"},\"5\":{\"1\":\"2018\",\"2\":\"Игровой продукт - дебют A1cChek Pro\"},\"6\":{\"1\":\"2019\",\"2\":\"Широко ожидаемый продукт -A1cChek Express запущен\"},\"7\":{\"1\":\"2021\",\"2\":\"Идеальный продукт для анализа уровня HbA1c-BH60 Автоматический анализатор гликогемоглобина\"},\"8\":{\"1\":\"2023\",\"2\":\"Представлен портативный многофункциональный иммунофлуоресцентный анализатор\"},\"9\":{\"1\":\"2024\",\"2\":\"BF-300 многофункциональный иммунофлуоресцентный анализатор выходит на сцену\"}}','','','','','','',''),(20,0,1,'','0,1','СЕРТИФИКАТЫ','certifications','about/',0,0,1,'20','',1,'','{\"disabled\":\"0\",\"linkurl\":\"\",\"getchild\":\"0\",\"notedit\":0,\"urlrule\":\"2\",\"seo\":{\"list_title\":\"[第{page}页{join}]{name}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":\"10\",\"mpagesize\":\"20\",\"page\":\"page_certifications.html\",\"list\":\"list.html\",\"category\":\"category.html\",\"search\":\"search.html\",\"show\":\"show.html\"},\"cat_field\":{\"company_personnel\":1,\"category_ch\":1,\"ymdbtp\":1,\"content\":1,\"bglb\":1,\"thumb\":1,\"name\":\"test\",\"tuce\":1},\"module_field\":null}',0,'','','','','{\"1\":{\"1\":\"Сертифицированная система качества по ISO 13485  \"},\"2\":{\"1\":\"100% продукции с маркировкой CE и зарегистрировано\"},\"3\":{\"1\":\"A1C EZ 2.0 Анализатор гликированного гемоглобина одобрен FDA по 510(k) \"},\"4\":{\"1\":\"A1cChek Pro Анализатор гликированного гемоглобина подан на освобождение от CLIA FDA\"},\"5\":{\"1\":\"Предприятие, проверенное CFDA и KFDA\"},\"6\":{\"1\":\"Права собственности и патенты в более чем 17 странах\"}}','{\"file\":[\"213\",\"214\",\"215\",\"216\",\"217\"],\"title\":[\"A1C EZ 2.0 Glycohemoglobin Analysis System\",\"BH60 Automatic Glycohemoglobin Analysis System\",\"A1cChek Pro Glycohemoglobin Analysis System\",\"A1cChek Express Glycohemoglobin Analysis System\",\"GluCoA1c Blood Glucose and Glycohemoglobin Analysis System\"],\"description\":[\"\",\"\",\"\",\"\",\"\"]}','{\"file\":[\"262\",\"263\",\"264\",\"265\",\"266\",\"285\",\"286\",\"287\",\"288\"],\"title\":[\"Boronate Affinity on AIC EZ 2.0 Glvcohemoglobin Analysis System  NGSP\",\"Boronate Affinity on AIC EZ 2.0 Glvcohemoglobin Analysis System  NGSP\",\"Boronate Affinity on AIC EZ 2.0 Glvcohemoglobin Analysis System  NGSP\",\"Boronate Affinity on AIC EZ 2.0 Glvcohemoglobin Analysis System  NGSP\",\"Boronate Affinity on AIC EZ 2.0 Glvcohemoglobin Analysis System  NGSP\",\"Boronate Affinity on AIC EZ 2.0 Glvcohemoglobin Analysis System\",\"Boronate Affinity on AlcChek Express Glycohemoglobin\",\"Boronate Affinity on GluCoAlc Blood Glucose and Glycohemoglobin Analysis System\",\"Boronate Affinity on AlcChek Pro Glycohemoglobin Analysis System\"],\"description\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]}','{\"file\":[\"223\",\"224\",\"225\",\"226\",\"227\",\"228\",\"229\",\"231\",\"230\"],\"title\":[\"A1cChek Express\",\"EC Certificate HL 2119665-1\",\"Biohermes A1cChek Pro Glycohemoglobin Analysis System 2024\",\"Biohermes A1cChek Pro Glycohemoglobin Analysis System 2024\",\"Certificate of GMP\",\"Quality Management SystemEN ISO 134852016\",\"EC Certificate HL 2119665-1\",\"BIOHERMEs Glycohemoglobin Analyzer A1C EZ 2.0\",\"Quality Management SystemEN ISO 134852016\"],\"description\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]}',''),(21,0,1,'','0,1','О НАС','our_people','about/',0,0,1,'21','',1,'','{\"disabled\":\"0\",\"linkurl\":\"\",\"getchild\":\"0\",\"notedit\":0,\"urlrule\":\"2\",\"seo\":{\"list_title\":\"[第{page}页{join}]{name}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":\"10\",\"mpagesize\":\"20\",\"page\":\"page_people.html\",\"list\":\"list.html\",\"category\":\"category.html\",\"search\":\"search.html\",\"show\":\"show.html\"},\"cat_field\":null,\"module_field\":null}',0,'','','','{\"1\":{\"1\":\"232\",\"2\":\"Эрик Сюй\",\"3\":\"Председатель\",\"4\":\"\"},\"2\":{\"1\":\"233\",\"2\":\"Ян Лю\",\"3\":\"Генеральный директор\",\"4\":\"\"},\"3\":{\"1\":\"234\",\"2\":\"Джозеф Е. Руджеро\",\"3\":\"Главный директор по продуктам\",\"4\":\"\"},\"4\":{\"1\":\"198\",\"2\":\"Кими Ло\",\"3\":\"Старший директор международного бизнеса\",\"4\":\"\"}}','','','','',''),(26,1,13,'product','0,2,13','Obstetrics and Gynecology','obstetrics_and_gynecology','products/chronic_disease_testing/',0,0,1,'26','',1,'','{\"disabled\":\"0\",\"linkurl\":\"\",\"getchild\":0,\"notedit\":\"0\",\"urlrule\":2,\"seo\":{\"list_title\":\"[第{page}页{join}]{name}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":10,\"mpagesize\":\"20\",\"page\":\"\",\"list\":\"list.html\",\"category\":\"category.html\",\"search\":\"search.html\",\"show\":\"show.html\"},\"cat_field\":null,\"module_field\":null,\"html\":1,\"chtml\":1}',0,'','','','','','','','',NULL),(27,1,13,'product','0,2,13','Fluoxpert  Multi Function Immunofluorescence Analyzer','fluoxpert__multi_function_immunofluorescence_analyzer','products/chronic_disease_testing/',0,0,1,'27','',1,'','{\"disabled\":\"0\",\"linkurl\":\"\",\"getchild\":0,\"notedit\":\"0\",\"urlrule\":2,\"seo\":{\"list_title\":\"[第{page}页{join}]{name}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":10,\"mpagesize\":\"20\",\"page\":\"\",\"list\":\"list.html\",\"category\":\"category.html\",\"search\":\"search.html\",\"show\":\"show.html\"},\"cat_field\":null,\"module_field\":null,\"html\":1,\"chtml\":1}',0,'','','','','','','','',NULL),(28,1,13,'product','0,2,13','Ophthalmology','ophthalmology','products/chronic_disease_testing/',0,0,1,'28','',1,'','{\"disabled\":\"0\",\"linkurl\":\"\",\"getchild\":0,\"notedit\":\"0\",\"urlrule\":2,\"seo\":{\"list_title\":\"[第{page}页{join}]{name}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":10,\"mpagesize\":\"20\",\"page\":\"\",\"list\":\"list.html\",\"category\":\"category.html\",\"search\":\"search.html\",\"show\":\"show.html\"},\"cat_field\":null,\"module_field\":null,\"html\":1,\"chtml\":1}',0,'','','','','','','','',NULL);
/*!40000 ALTER TABLE `dr_1_share_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_1_share_index`
--

DROP TABLE IF EXISTS `dr_1_share_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_1_share_index` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `mid` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '模块目录',
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='共享模块内容索引表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_1_share_index`
--

LOCK TABLES `dr_1_share_index` WRITE;
/*!40000 ALTER TABLE `dr_1_share_index` DISABLE KEYS */;
INSERT INTO `dr_1_share_index` VALUES (1,'news'),(2,'news'),(3,'news'),(4,'news'),(5,'news'),(6,'news'),(13,'news'),(14,'news'),(15,'news'),(32,'news'),(33,'news'),(34,'news'),(35,'news'),(36,'news'),(46,'news'),(47,'news'),(48,'news'),(12,'product'),(16,'product'),(17,'product'),(18,'product'),(19,'product'),(20,'product'),(21,'product'),(22,'product'),(23,'product'),(24,'product'),(25,'product'),(26,'product'),(27,'product'),(28,'product'),(29,'product'),(30,'product'),(37,'product'),(38,'product'),(39,'product'),(40,'product'),(41,'product'),(42,'product'),(43,'product'),(44,'product'),(45,'product');
/*!40000 ALTER TABLE `dr_1_share_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_admin`
--

DROP TABLE IF EXISTS `dr_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_admin` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `uid` int unsigned NOT NULL COMMENT '管理员uid',
  `setting` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '相关配置',
  `usermenu` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '自定义面板菜单，序列化数组格式',
  `history` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '历史菜单，序列化数组格式',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='管理员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_admin`
--

LOCK TABLES `dr_admin` WRITE;
/*!40000 ALTER TABLE `dr_admin` DISABLE KEYS */;
INSERT INTO `dr_admin` VALUES (1,1,'{\"admin_min\":0,\"font_size\":0}','',''),(2,2,'{\"admin_min\":0}','','');
/*!40000 ALTER TABLE `dr_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_admin_login`
--

DROP TABLE IF EXISTS `dr_admin_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_admin_login` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint unsigned DEFAULT NULL COMMENT '会员uid',
  `loginip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '登录Ip',
  `logintime` int unsigned NOT NULL COMMENT '登录时间',
  `useragent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '客户端信息',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `loginip` (`loginip`),
  KEY `logintime` (`logintime`)
) ENGINE=InnoDB AUTO_INCREMENT=234 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='登录日志记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_admin_login`
--

LOCK TABLES `dr_admin_login` WRITE;
/*!40000 ALTER TABLE `dr_admin_login` DISABLE KEYS */;
INSERT INTO `dr_admin_login` VALUES (1,1,'127.0.0.1',1715995064,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0'),(2,1,'127.0.0.1',1715996017,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0'),(3,1,'127.0.0.1',1716015829,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0'),(4,1,'127.0.0.1',1716164419,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(5,1,'127.0.0.1',1716184014,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(6,1,'127.0.0.1',1716197902,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(7,1,'127.0.0.1',1716282154,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(8,1,'127.0.0.1',1716314538,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(9,1,'127.0.0.1',1716323848,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(10,1,'127.0.0.1',1716344597,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(11,1,'127.0.0.1',1716360100,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(12,1,'127.0.0.1',1716428040,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(13,1,'127.0.0.1',1716443268,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(14,1,'127.0.0.1',1716454787,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(15,1,'127.0.0.1',1716454833,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(16,1,'127.0.0.1',1716519610,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(17,1,'127.0.0.1',1716538242,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(18,1,'127.0.0.1',1716566795,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(19,1,'127.0.0.1',1716567455,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(20,1,'127.0.0.1',1716631889,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(21,1,'127.0.0.1',1716684389,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(22,1,'127.0.0.1',1716701100,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(23,1,'127.0.0.1',1716705133,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(24,1,'127.0.0.1',1716717116,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(25,1,'127.0.0.1',1716731941,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(26,1,'127.0.0.1',1716817808,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(27,1,'127.0.0.1',1716861564,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(28,1,'127.0.0.1',1716875248,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(29,1,'127.0.0.1',1716878692,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(30,1,'222.135.75.86',1716881070,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(31,1,'222.135.75.86',1716881100,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(32,1,'222.135.75.86',1716881136,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(33,1,'222.135.75.86',1716881195,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(34,1,'222.135.75.86',1716882294,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(35,2,'222.135.75.86',1716882424,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(36,2,'222.135.75.86',1716882438,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(37,1,'222.135.75.86',1716882455,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(38,2,'58.214.239.78',1716882644,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(39,1,'127.0.0.1',1716883893,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(40,1,'222.135.75.86',1716885703,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(41,1,'127.0.0.1',1716886890,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(42,1,'127.0.0.1',1716899647,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(43,1,'127.0.0.1',1716906504,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(44,1,'127.0.0.1',1716944477,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(45,1,'222.135.75.86',1716946762,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(46,2,'58.214.239.78',1716947286,'Mozilla/5.0 (Windows NT 10.0 WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.5359.125 Safari/537.36'),(47,2,'58.214.239.78',1716949355,'Mozilla/5.0 (Windows NT 10.0 WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.5359.125 Safari/537.36'),(48,1,'127.0.0.1',1716949577,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(49,2,'58.214.239.78',1716949636,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36'),(52,1,'127.0.0.1',1716949731,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(53,1,'127.0.0.1',1716950370,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(54,2,'58.214.239.78',1716950415,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(55,2,'58.214.239.78',1716950531,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36'),(56,2,'58.214.239.78',1716951333,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36'),(57,1,'127.0.0.1',1716951627,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(58,1,'127.0.0.1',1716965000,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(59,1,'127.0.0.1',1716965201,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(60,2,'58.214.239.78',1716972387,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(61,1,'222.135.75.86',1716972753,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(64,1,'127.0.0.1',1716973251,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(65,2,'58.214.239.78',1716974140,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36'),(66,2,'58.214.239.78',1716974515,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(67,1,'222.135.75.86',1716978663,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(68,1,'127.0.0.1',1716979343,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(69,2,'58.214.239.78',1717031192,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(70,2,'58.214.239.78',1717046596,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(71,1,'212.102.53.80',1717050238,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(72,1,'39.80.7.2',1717065857,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(73,1,'127.0.0.1',1717069793,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(74,1,'39.80.7.2',1717078860,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(75,1,'39.80.7.2',1717115559,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(76,2,'58.214.239.78',1717116942,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(77,1,'127.0.0.1',1717141086,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(78,1,'39.80.7.2',1717144440,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(79,1,'39.80.7.2',1717145175,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(80,1,'127.0.0.1',1717156990,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(81,1,'127.0.0.1',1717166287,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(82,1,'127.0.0.1',1717166477,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(83,1,'39.80.7.2',1717167327,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(84,1,'127.0.0.1',1717224098,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(85,1,'127.0.0.1',1717245898,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(86,1,'39.80.7.2',1717251157,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(87,1,'127.0.0.1',1717251456,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(88,1,'127.0.0.1',1717291000,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(89,1,'127.0.0.1',1717292794,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(90,1,'127.0.0.1',1717426062,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(91,1,'127.0.0.1',1717428657,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(92,1,'127.0.0.1',1717428692,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(93,1,'127.0.0.1',1717478124,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0'),(94,1,'127.0.0.1',1717503815,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0'),(95,1,'127.0.0.1',1717504309,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0'),(96,1,'39.80.7.2',1717504666,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0'),(97,1,'39.80.7.2',1717542130,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0'),(98,2,'58.214.239.78',1717551501,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 NetType/WIFI MicroMessenger/7.0.20.1781(0x6700143B) WindowsWechat(0x63090a1b) XWEB/9129 Flue'),(99,1,'39.80.7.2',1717671930,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(100,1,'127.0.0.1',1717675226,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(101,1,'112.224.156.56',1717733939,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(102,1,'112.224.156.56',1717739908,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(103,1,'112.224.156.56',1717740690,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(104,1,'39.80.7.2',1717762419,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(105,1,'39.80.7.2',1717762545,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(106,1,'39.80.7.2',1717766835,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(107,1,'112.224.164.114',1717824581,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(108,1,'39.80.7.2',1717849247,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(109,1,'127.0.0.1',1717856925,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(110,1,'39.80.7.2',1717858868,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(111,1,'127.0.0.1',1717859421,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(112,1,'39.80.7.2',1717859516,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(113,1,'39.80.7.2',1717937147,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(114,1,'39.80.7.2',1717975235,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(115,1,'127.0.0.1',1717996050,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(116,1,'39.80.7.2',1718025934,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(117,1,'61.162.150.79',1718073119,'Mozilla/5.0 (Linux Android 9 PAR-AL00 Build/HUAWEIPAR-AL00 wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/114.0.5735.197 Mobile Safari/537.36 Lark/7.19.6 LarkLocale/zh_CN ChannelName/Feishu TTWebView/1141130051521'),(118,2,'58.214.239.78',1718081051,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 NetType/WIFI MicroMessenger/7.0.20.1781(0x6700143B) WindowsWechat(0x63090a1b) XWEB/9129 Flue'),(119,1,'127.0.0.1',1718110548,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(120,1,'127.0.0.1',1718150601,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(121,1,'39.80.7.2',1718163248,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(122,1,'127.0.0.1',1718165218,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(123,1,'39.80.7.2',1718170810,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(124,1,'127.0.0.1',1718173286,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(125,1,'127.0.0.1',1718189746,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0'),(126,1,'39.80.7.2',1718196056,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0'),(127,2,'58.214.239.78',1718256933,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(128,1,'112.224.194.76',1718260123,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(129,1,'39.80.7.2',1718370588,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(130,1,'127.0.0.1',1718376656,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(131,1,'39.80.7.2',1718377304,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(132,1,'127.0.0.1',1718377563,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(133,1,'127.0.0.1',1718406915,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(134,1,'127.0.0.1',1718420745,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(135,1,'112.224.166.203',1718425631,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0'),(136,2,'58.214.239.78',1718592324,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(137,2,'58.214.239.78',1718593324,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 NetType/WIFI MicroMessenger/7.0.20.1781(0x6700143B) WindowsWechat(0x63090a1b) XWEB/9129 Flue'),(138,1,'61.162.150.79',1718601545,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(139,1,'39.80.7.2',1718634298,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(140,1,'39.80.7.2',1718677830,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(141,1,'39.80.7.2',1718688453,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(142,1,'127.0.0.1',1718766740,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(143,1,'39.80.7.2',1718873557,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(144,1,'39.80.7.2',1718873671,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(145,1,'112.54.81.142',1718955342,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(146,1,'222.135.74.77',1719229761,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(147,1,'222.135.74.77',1719240747,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0'),(148,1,'222.135.74.77',1719283022,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(149,1,'222.135.74.77',1719285082,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(151,1,'222.135.74.77',1719291591,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(152,1,'222.135.74.77',1719292273,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(153,1,'222.135.74.77',1719292296,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(154,1,'222.135.74.77',1719292635,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(155,2,'58.214.239.78',1719305843,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(156,1,'222.135.74.77',1719367710,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(157,1,'222.135.74.77',1719369406,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(158,1,'222.135.74.77',1719369690,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(159,1,'222.135.74.77',1719369902,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(160,1,'222.135.74.77',1719417662,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(161,1,'127.0.0.1',1719418700,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(162,1,'127.0.0.1',1719446781,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(163,1,'8.217.226.145',1719465703,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(164,2,'58.214.239.78',1719469098,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(165,1,'198.46.200.132',1719474681,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(166,1,'222.135.74.77',1719487525,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(167,1,'222.135.74.77',1719798844,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(168,1,'222.135.74.77',1719978117,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0'),(169,1,'222.135.74.77',1720001137,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0'),(170,1,'222.135.74.77',1720001369,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0'),(171,1,'222.135.74.77',1720010533,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0'),(172,1,'222.135.74.77',1720011769,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0'),(173,1,'221.2.150.171',1720059553,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0'),(174,1,'221.2.150.171',1720060373,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0'),(175,2,'58.214.239.78',1720060950,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(176,1,'221.2.150.171',1720071704,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0'),(177,1,'221.2.150.171',1720071795,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0'),(178,1,'221.2.150.171',1720073348,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0'),(179,1,'221.2.150.171',1720073385,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0'),(180,1,'221.2.150.171',1720073473,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0'),(181,1,'221.2.150.171',1720073509,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0'),(182,1,'221.2.150.171',1720073627,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0'),(183,1,'221.2.150.171',1720080547,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0'),(184,1,'221.2.150.171',1720085545,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0'),(185,1,'222.135.74.77',1720145917,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0'),(186,1,'222.135.74.77',1720453303,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(187,1,'222.135.74.77',1720491669,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(188,1,'222.135.74.77',1720787013,'Mozilla/5.0 (Windows NT 10.0 WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36'),(189,1,'222.135.74.77',1720787051,'Mozilla/5.0 (Windows NT 10.0 WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36'),(190,1,'222.135.74.77',1720795285,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(191,1,'222.135.74.77',1720795302,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(192,1,'222.135.74.77',1720795318,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(193,1,'222.135.74.77',1720862016,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(194,1,'222.135.74.77',1720862058,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(195,1,'222.135.74.77',1720864965,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(196,1,'222.135.74.77',1720919770,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(197,1,'222.135.74.77',1720928781,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(198,1,'222.135.74.77',1720939871,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(199,1,'222.135.74.77',1721319289,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(200,1,'222.135.74.77',1721352287,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(201,1,'222.135.74.77',1721357751,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(202,1,'222.135.74.77',1721357795,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(203,1,'222.135.74.77',1721361089,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(204,1,'222.135.74.77',1721436813,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(205,1,'222.135.74.77',1721456969,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(206,1,'222.135.74.77',1721827039,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(207,1,'222.135.74.77',1721860627,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(208,1,'112.6.227.119',1721872629,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(209,1,'119.190.156.75',1721890891,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(210,1,'127.0.0.1',1721922064,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(211,1,'127.0.0.1',1721922133,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(212,1,'127.0.0.1',1721922211,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(213,1,'127.0.0.1',1721923384,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(214,1,'127.0.0.1',1721955905,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(215,1,'222.135.74.77',1721982506,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),(216,1,'221.2.139.200',1722231266,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0'),(217,1,'221.2.139.200',1722242838,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0'),(218,1,'222.135.75.218',1722387357,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0'),(219,1,'222.135.75.218',1722387433,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0'),(220,2,'172.104.191.50',1722493475,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0'),(221,2,'172.104.191.50',1722493479,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0'),(222,1,'222.135.75.218',1722531464,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0'),(223,1,'222.135.75.218',1722565134,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0'),(224,1,'222.135.75.218',1722565274,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0'),(225,1,'104.168.43.162',1722572395,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0'),(226,1,'112.224.67.61',1722603630,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0'),(227,1,'222.135.75.218',1722653827,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0'),(228,1,'112.224.166.40',1722849062,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0'),(229,1,'222.135.75.218',1722917154,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0'),(230,1,'13.231.36.179',1723432687,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0'),(231,1,'13.231.36.179',1723432731,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0'),(232,1,'221.2.150.171',1723539398,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0'),(233,2,'58.214.239.78',1723539534,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0');
/*!40000 ALTER TABLE `dr_admin_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_admin_menu`
--

DROP TABLE IF EXISTS `dr_admin_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_admin_menu` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint unsigned NOT NULL COMMENT '上级菜单id',
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '菜单语言名称',
  `site` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '站点归属',
  `uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'uri字符串',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '外链地址',
  `mark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '菜单标识',
  `hidden` tinyint unsigned DEFAULT NULL COMMENT '是否隐藏',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图标标示',
  `displayorder` int DEFAULT NULL COMMENT '排序值',
  PRIMARY KEY (`id`),
  KEY `list` (`pid`),
  KEY `displayorder` (`displayorder`),
  KEY `mark` (`mark`),
  KEY `hidden` (`hidden`),
  KEY `uri` (`uri`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='后台菜单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_admin_menu`
--

LOCK TABLES `dr_admin_menu` WRITE;
/*!40000 ALTER TABLE `dr_admin_menu` DISABLE KEYS */;
INSERT INTO `dr_admin_menu` VALUES (1,0,'首页','{\"2\":\"2\"}','','','home',0,'fa fa-home',-2),(2,1,'我的面板','{\"2\":\"2\"}','','','home-my',0,'fa fa-home',0),(3,2,'后台首页','{\"2\":\"2\"}','home/main','','',0,'fa fa-home',0),(4,2,'资料修改','{\"2\":\"2\"}','api/my','','',0,'fa fa-user',0),(5,2,'系统更新','{\"2\":\"2\"}','cache/index','','',0,'fa fa-refresh',0),(6,2,'应用市场','{\"2\":\"2\"}','api/app','','',0,'fa fa-puzzle-piece',0),(7,0,'系统','{\"2\":\"2\"}','','','system',0,'fa fa-globe',-2),(8,7,'系统维护','{\"2\":\"2\"}','','','system-wh',0,'fa fa-cog',0),(9,8,'系统参数','{\"2\":\"2\"}','system/index','','',0,'fa fa-cog',0),(10,8,'系统缓存','{\"2\":\"2\"}','system_cache/index','','',0,'fa fa-clock-o',0),(11,8,'附件设置','{\"2\":\"2\"}','attachment/index','','',0,'fa fa-folder',0),(12,8,'存储策略','{\"2\":\"2\"}','attachment/remote_index','','',0,'fa fa-cloud',0),(13,8,'短信设置','{\"2\":\"2\"}','sms/index','','',0,'fa fa-envelope',0),(14,8,'邮件设置','{\"2\":\"2\"}','email/index','','',0,'fa fa-envelope-open',0),(15,8,'系统提醒','{\"2\":\"2\"}','notice/index','','',0,'fa fa-bell',0),(16,8,'系统体检','{\"2\":\"2\"}','check/index','','',0,'fa fa-wrench',0),(17,7,'日志管理','{\"2\":\"2\"}','','','system-log',0,'fa fa-calendar',0),(18,17,'系统日志','{\"2\":\"2\"}','error/index','','',0,'fa fa-shield',0),(19,17,'操作记录','{\"2\":\"2\"}','system_log/index','','',0,'fa fa-calendar',0),(20,17,'密码错误','{\"2\":\"2\"}','password_log/index','','',0,'fa fa-unlock-alt',0),(21,17,'短信错误','{\"2\":\"2\"}','sms_log/index','','',0,'fa fa-envelope',0),(22,17,'邮件错误','{\"2\":\"2\"}','email_log/index','','',0,'fa fa-envelope-open',0),(23,17,'慢查询日志','{\"2\":\"2\"}','sql_log/index','','',0,'fa fa-database',0),(24,0,'设置','{\"2\":\"2\"}','','','config',0,'fa fa-cogs',-2),(25,24,'网站设置','{\"2\":\"2\"}','','','config-web',0,'fa fa-cog',0),(27,25,'网站设置','{\"2\":\"2\"}','module/site_config/index','','',0,'fa fa-cog',0),(28,25,'网站信息','{\"2\":\"2\"}','module/site_param/index','','',0,'fa fa-edit',0),(29,25,'手机设置','{\"2\":\"2\"}','module/site_mobile/index','','',0,'fa fa-mobile',0),(30,25,'域名绑定','{\"2\":\"2\"}','module/site_domain/index','','',0,'fa fa-globe',0),(31,25,'图片设置','{\"2\":\"2\"}','module/site_image/index','','',0,'fa fa-photo',0),(32,24,'内容设置','{\"2\":\"2\"}','','','config-content',0,'fa fa-navicon',0),(33,32,'创建模块','{\"2\":\"2\"}','module/module_create/index','','',0,'fa fa-plus',-1),(34,32,'模块管理','{\"2\":\"2\"}','module/module/index','','',0,'fa fa-gears',-1),(35,32,'模块搜索','{\"2\":\"2\"}','module/module_search/index','','',0,'fa fa-search',-1),(36,24,'SEO设置','{\"2\":\"2\"}','','','config-seo',0,'fa fa-internet-explorer',0),(37,36,'站点SEO','{\"2\":\"2\"}','module/seo_site/index','','',0,'fa fa-cog',0),(38,36,'模块SEO','{\"2\":\"2\"}','module/seo_module/index','','',0,'fa fa-th-large',0),(39,36,'栏目SEO','{\"2\":\"2\"}','module/seo_category/index','','',0,'fa fa-reorder',0),(40,36,'URL规则','{\"2\":\"2\"}','module/urlrule/index','','',0,'fa fa-link',0),(41,36,'伪静态解析','{\"2\":\"2\"}','module/urlrule/rewrite_index','','',0,'bi bi-code-square',0),(42,0,'权限','{\"2\":\"2\"}','','','auth',0,'fa fa-user-circle',0),(43,42,'后台权限','{\"2\":\"2\"}','','','auth-admin',0,'fa fa-cog',0),(44,43,'后台菜单','{\"2\":\"2\"}','menu/index','','',0,'fa fa-list-alt',0),(45,43,'简化菜单','{\"2\":\"2\"}','min_menu/index','','',0,'fa fa-list',0),(46,43,'角色权限','{\"2\":\"2\"}','role/index','','',0,'fa fa-users',0),(47,43,'角色账号','{\"2\":\"2\"}','root/index','','',0,'fa fa-user',0),(48,42,'用户权限','{\"2\":\"2\"}','','','app-member',0,'fa fa-user',0),(49,48,'审核流程','{\"2\":\"2\"}','member/admin_verify/index','','',0,'fa fa-sort-numeric-asc',0),(50,48,'用户菜单','{\"2\":\"2\"}','member/menu/index','','',0,'fa fa-list-alt',0),(51,48,'用户权限','{\"2\":\"2\"}','member/auth/index','','',0,'fa fa-user',0),(52,0,'应用','{\"2\":\"2\"}','','','app',0,'fa fa-puzzle-piece',0),(53,52,'应用插件','{\"2\":\"2\"}','','','app-plugin',0,'fa fa-puzzle-piece',0),(54,53,'应用管理','{\"2\":\"2\"}','cloud/local','','',0,'fa fa-folder',0),(55,53,'联动菜单','{\"2\":\"2\"}','linkage/index','','',0,'fa fa-columns',0),(56,53,'任务队列','{\"2\":\"2\"}','cron/index','','',0,'fa fa-indent',0),(57,53,'附件管理','{\"2\":\"2\"}','attachments/index','','',0,'fa fa-folder',0),(60,59,'字段调用标签','','mbdy/home/index','','',0,'fa fa-list',0),(61,59,'页面标签调用','','mbdy/page/index','','',0,'fa fa-list',0),(62,59,'循环标签调用','','mbdy/loop/index','','',0,'fa fa-list',0),(63,59,'内容搜索条件','','mbdy/search/index','','',0,'fa fa-search',0),(72,0,'服务','{\"2\":\"2\"}','','','cloud',0,'fa fa-cloud',99),(73,72,'项目服务','{\"2\":\"2\"}','','','cloud-dayrui',0,'fa fa-cloud',0),(74,73,'我的项目','{\"2\":\"2\"}','cloud/index','','',0,'fa fa-cog',0),(75,73,'服务工单','{\"2\":\"2\"}','cloud/service','','',0,'fa fa-user-md',0),(76,73,'应用商城','{\"2\":\"2\"}','cloud/app','','',0,'fa fa-puzzle-piece',0),(77,73,'模板商城','{\"2\":\"2\"}','cloud/template','','',0,'fa fa-html5',0),(78,73,'版本升级','{\"2\":\"2\"}','cloud/update','','',0,'fa fa-refresh',0),(79,73,'文件对比','{\"2\":\"2\"}','cloud/bf','','',0,'fa fa-code',0),(80,0,'内容','{\"2\":\"2\"}','','','content',0,'fa fa-th-large',-1),(81,80,'内容管理','{\"2\":\"2\"}','','','content-module',0,'fa fa-th-large',0),(82,81,'共享栏目','{\"2\":\"2\"}','category/index','','',0,'fa fa-reorder',0),(83,81,'内容维护工具','{\"2\":\"2\"}','ctool/module_content/index','','',0,'fa fa-wrench',0),(84,80,'内容审核','{\"2\":\"2\"}','','','content-verify',0,'fa fa-edit',0),(91,0,'用户','{\"2\":\"2\"}','','','member',0,'fa fa-user',0),(92,91,'用户管理','{\"2\":\"2\"}','','','member-list',0,'fa fa-user',0),(93,92,'用户管理','{\"2\":\"2\"}','member/home/index','','',0,'fa fa-user',-1),(94,92,'用户组管理','{\"2\":\"2\"}','member/group/index','','',0,'fa fa-users',-1),(95,92,'授权账号管理','{\"2\":\"2\"}','member/oauth/index','','',0,'fa fa-qq',0),(96,91,'用户设置','{\"2\":\"2\"}','','','config-member',0,'fa fa-user',0),(97,96,'用户设置','{\"2\":\"2\"}','member/setting/index','','',0,'fa fa-cog',0),(98,96,'字段划分','{\"2\":\"2\"}','member/field/index','','',0,'fa fa-code',0),(99,96,'通知设置','{\"2\":\"2\"}','member/setting_notice/index','','',0,'fa fa-volume-up',0),(100,91,'审核管理','{\"2\":\"2\"}','','','member-verify',0,'fa fa-edit',0),(101,100,'注册审核','{\"2\":\"2\"}','member/verify/index','','',0,'fa fa-user',0),(102,100,'申请审核','{\"2\":\"2\"}','member/apply/index','','',0,'fa fa-users',0),(103,100,'资料审核','{\"2\":\"2\"}','member/edit_verify/index','','',0,'fa fa-edit',0),(104,100,'头像审核','{\"2\":\"2\"}','member/avatar_verify/index','','',0,'fa fa-user-circle',0),(105,81,'文章管理','{\"2\":\"2\"}','news/home/index','','module-news',0,'fa fa-sticky-note',-1),(106,84,'文章审核','{\"2\":\"2\"}','news/verify/index','','verify-module-news',0,'fa fa-sticky-note',-1),(107,81,'产品管理','{\"2\":\"2\"}','product/home/index','','module-product',0,'bi bi-archive-fill',-1),(108,84,'产品审核','{\"2\":\"2\"}','product/verify/index','','verify-module-product',0,'bi bi-archive-fill',-1),(110,52,'模板调用工具','','','','app-mbdy',0,'fa fa-tag',0),(111,110,'字段调用标签','','mbdy/home/index','','app-mbdy-111',0,'fa fa-list',0),(112,110,'页面标签调用','','mbdy/page/index','','app-mbdy-112',0,'fa fa-list',0),(113,110,'循环标签调用','','mbdy/loop/index','','app-mbdy-113',0,'fa fa-list',0),(114,110,'内容搜索条件','','mbdy/search/index','','app-mbdy-114',0,'fa fa-search',0),(115,52,'系统安全','','','','app-safe',0,'fa fa-shield',0),(116,115,'安全监测','','safe/home/index','','app-safe-116',0,'fa fa-shield',0),(117,115,'木马扫描','','safe/Mm/index','','app-safe-117',0,'fa fa-bug',0),(118,115,'文件检测','','safe/check_bom/index','','app-safe-118',0,'fa fa-code',0),(119,115,'后台域名','','safe/adomain/index','','app-safe-119',0,'fa fa-cog',0),(120,115,'账号安全','','safe/config/index','','app-safe-120',0,'fa fa-expeditedssl',0),(121,115,'站点安全','','safe/link/index','','app-safe-121',0,'fa fa-share-alt',0),(122,53,'Ueditor编辑器','','ueditor/config/index','','app-ueditor-122',0,'fa fa-edit',0),(123,53,'Sitemap','','sitemap/home/index','','app-sitemap-123',0,'fa fa-sitemap',0);
/*!40000 ALTER TABLE `dr_admin_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_admin_min_menu`
--

DROP TABLE IF EXISTS `dr_admin_min_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_admin_min_menu` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint unsigned NOT NULL COMMENT '上级菜单id',
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '菜单语言名称',
  `site` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '站点归属',
  `uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'uri字符串',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '外链地址',
  `mark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '菜单标识',
  `hidden` tinyint unsigned DEFAULT NULL COMMENT '是否隐藏',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图标标示',
  `displayorder` int DEFAULT NULL COMMENT '排序值',
  PRIMARY KEY (`id`),
  KEY `list` (`pid`),
  KEY `displayorder` (`displayorder`),
  KEY `mark` (`mark`),
  KEY `hidden` (`hidden`),
  KEY `uri` (`uri`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='后台简化菜单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_admin_min_menu`
--

LOCK TABLES `dr_admin_min_menu` WRITE;
/*!40000 ALTER TABLE `dr_admin_min_menu` DISABLE KEYS */;
INSERT INTO `dr_admin_min_menu` VALUES (1,0,'我的面板','','','','home',0,'fa fa-home',0),(2,1,'后台首页','','home/main','','1-0',0,'fa fa-home',0),(3,1,'资料修改','','api/my','','1-1',0,'fa fa-user',0),(4,1,'网站设置','','module/site_param/index','','1-2',0,'fa fa-cog',0),(5,1,'图片设置','','module/site_image/index','','1-3',0,'fa fa-photo',0),(6,0,'应用插件','','','','app-plugin',0,'fa fa-puzzle-piece',0),(7,6,'联动菜单','','linkage/index','','6-0',0,'fa fa-columns',0),(8,6,'附件管理','','attachments/index','','6-1',0,'fa fa-folder',0),(9,0,'SEO设置','','','','config-seo',0,'fa fa-internet-explorer',0),(10,9,'站点SEO','','module/seo_site/index','','9-0',0,'fa fa-cog',0),(11,9,'模块SEO','','module/seo_module/index','','9-1',0,'fa fa-gears',0),(12,9,'栏目SEO','','module/seo_category/index','','9-2',0,'fa fa-reorder',0),(13,9,'URL规则','','module/urlrule/index','','9-3',0,'fa fa-link',0),(14,0,'内容管理','','','','content-module',0,'fa fa-th-large',0),(15,14,'共享栏目','','category/index','','14-0',0,'fa fa-reorder',0),(16,14,'文章管理','','news/home/index','','module-news',0,'fa fa-sticky-note',-1),(17,14,'产品管理','','product/home/index','','module-product',0,'bi bi-archive-fill',-1);
/*!40000 ALTER TABLE `dr_admin_min_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_admin_notice`
--

DROP TABLE IF EXISTS `dr_admin_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_admin_notice` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `site` int NOT NULL COMMENT '站点id',
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '提醒类型：系统、内容、会员、应用',
  `msg` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '提醒内容说明',
  `uri` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '对应的URI',
  `to_rid` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '指定角色组',
  `to_uid` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '指定管理员',
  `status` tinyint(1) NOT NULL COMMENT '未处理0，1已查看，2处理中，3处理完成',
  `uid` int NOT NULL COMMENT '申请人',
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '申请人',
  `op_uid` int NOT NULL COMMENT '处理人',
  `op_username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '处理人',
  `updatetime` int NOT NULL COMMENT '处理时间',
  `inputtime` int NOT NULL COMMENT '提醒时间',
  PRIMARY KEY (`id`),
  KEY `uri` (`uri`),
  KEY `site` (`site`),
  KEY `status` (`status`),
  KEY `uid` (`uid`),
  KEY `op_uid` (`op_uid`),
  KEY `to_uid` (`to_uid`),
  KEY `to_rid` (`to_rid`),
  KEY `updatetime` (`updatetime`),
  KEY `inputtime` (`inputtime`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='后台提醒表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_admin_notice`
--

LOCK TABLES `dr_admin_notice` WRITE;
/*!40000 ALTER TABLE `dr_admin_notice` DISABLE KEYS */;
INSERT INTO `dr_admin_notice` VALUES (1,0,'member','新会员【biohermes】注册审核','member/verify/index:field/id/keyword/2','0','0',0,2,'biohermes',0,'',0,1716881525);
/*!40000 ALTER TABLE `dr_admin_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_admin_role`
--

DROP TABLE IF EXISTS `dr_admin_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_admin_role` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `site` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '允许管理的站点，序列化数组格式',
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色组语言名称',
  `system` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '系统权限',
  `module` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '模块权限',
  `application` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '应用权限',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='后台角色权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_admin_role`
--

LOCK TABLES `dr_admin_role` WRITE;
/*!40000 ALTER TABLE `dr_admin_role` DISABLE KEYS */;
INSERT INTO `dr_admin_role` VALUES (1,'','超级管理员','','',''),(2,'','编辑员','{\"mark\":[\"home\",\"home-my\",\"home/main\",\"api/my\",\"cache/index\",\"api/app\",\"system\",\"system-wh\",\"system/index\",\"system_cache/index\",\"attachment/index\",\"attachment/remote_index\",\"sms/index\",\"email/index\",\"notice/index\",\"check/index\",\"system-log\",\"error/index\",\"system_log/index\",\"password_log/index\",\"sms_log/index\",\"email_log/index\",\"sql_log/index\",\"config\",\"config-web\",\"module/site_config/index\",\"module/site_param/index\",\"module/site_mobile/index\",\"module/site_domain/index\",\"module/site_image/index\",\"config-content\",\"module/module_create/index\",\"module/module/index\",\"module/module_search/index\",\"mform/module/index\",\"config-seo\",\"module/seo_site/index\",\"module/seo_module/index\",\"module/seo_category/index\",\"module/urlrule/index\",\"module/urlrule/rewrite_index\",\"auth\",\"auth-admin\",\"menu/index\",\"min_menu/index\",\"role/index\",\"root/index\",\"app-member\",\"member/admin_verify/index\",\"member/menu/index\",\"member/auth/index\",\"app\",\"app-plugin\",\"cloud/local\",\"linkage/index\",\"cron/index\",\"attachments/index\",\"ueditor/config/index\",\"app-mbdy\",\"mbdy/home/index\",\"mbdy/page/index\",\"mbdy/loop/index\",\"mbdy/search/index\",\"app-safe\",\"safe/home/index\",\"safe/Mm/index\",\"safe/check_bom/index\",\"safe/adomain/index\",\"safe/config/index\",\"safe/link/index\",\"content\",\"content-module\",\"news/home/index\",\"product/home/index\",\"ctool/module_content/index\",\"category/index\",\"content-verify\",\"news/verify/index\",\"product/verify/index\",\"product/subcategory_verify/index\",\"member\",\"member-list\",\"member/home/index\",\"member/group/index\",\"member/oauth/index\",\"config-member\",\"member/setting/index\",\"member/field/index\",\"member/setting_notice/index\",\"member-verify\",\"member/verify/index\",\"member/apply/index\",\"member/edit_verify/index\",\"member/avatar_verify/index\"],\"auth\":{\"home/main\":[\"add\",\"edit\",\"del\"],\"api/my\":[\"add\",\"edit\",\"del\"],\"cache/index\":[\"add\",\"edit\",\"del\"],\"api/app\":[\"add\",\"edit\",\"del\"],\"system/index\":[\"add\",\"edit\",\"del\"],\"system_cache/index\":[\"add\",\"edit\",\"del\"],\"attachment/index\":[\"add\",\"edit\",\"del\"],\"attachment/remote_index\":[\"add\",\"edit\",\"del\"],\"sms/index\":[\"add\",\"edit\",\"del\"],\"email/index\":[\"add\",\"edit\",\"del\"],\"notice/index\":[\"add\",\"edit\",\"del\"],\"check/index\":[\"add\",\"edit\",\"del\"],\"error/index\":[\"add\",\"edit\",\"del\"],\"system_log/index\":[\"add\",\"edit\",\"del\"],\"password_log/index\":[\"add\",\"edit\",\"del\"],\"sms_log/index\":[\"add\",\"edit\",\"del\"],\"email_log/index\":[\"add\",\"edit\",\"del\"],\"sql_log/index\":[\"add\",\"edit\",\"del\"],\"module/site_config/index\":[\"add\",\"edit\",\"del\"],\"module/site_param/index\":[\"add\",\"edit\",\"del\"],\"module/site_mobile/index\":[\"add\",\"edit\",\"del\"],\"module/site_domain/index\":[\"add\",\"edit\",\"del\"],\"module/site_image/index\":[\"add\",\"edit\",\"del\"],\"module/module_create/index\":[\"add\",\"edit\",\"del\"],\"module/module/index\":[\"add\",\"edit\",\"del\"],\"module/module_search/index\":[\"add\",\"edit\",\"del\"],\"mform/module/index\":[\"add\",\"edit\",\"del\"],\"module/seo_site/index\":[\"add\",\"edit\",\"del\"],\"module/seo_module/index\":[\"add\",\"edit\",\"del\"],\"module/seo_category/index\":[\"add\",\"edit\",\"del\"],\"module/urlrule/index\":[\"add\",\"edit\",\"del\"],\"module/urlrule/rewrite_index\":[\"add\",\"edit\",\"del\"],\"menu/index\":[\"add\",\"edit\",\"del\"],\"min_menu/index\":[\"add\",\"edit\",\"del\"],\"role/index\":[\"add\",\"edit\",\"del\"],\"root/index\":[\"add\",\"edit\",\"del\"],\"member/admin_verify/index\":[\"add\",\"edit\",\"del\"],\"member/menu/index\":[\"add\",\"edit\",\"del\"],\"member/auth/index\":[\"add\",\"edit\",\"del\"],\"cloud/local\":[\"add\",\"edit\",\"del\"],\"linkage/index\":[\"add\",\"edit\",\"del\"],\"cron/index\":[\"add\",\"edit\",\"del\"],\"attachments/index\":[\"add\",\"edit\",\"del\"],\"ueditor/config/index\":[\"add\",\"edit\",\"del\"],\"mbdy/home/index\":[\"add\",\"edit\",\"del\"],\"mbdy/page/index\":[\"add\",\"edit\",\"del\"],\"mbdy/loop/index\":[\"add\",\"edit\",\"del\"],\"mbdy/search/index\":[\"add\",\"edit\",\"del\"],\"safe/home/index\":[\"add\",\"edit\",\"del\"],\"safe/Mm/index\":[\"add\",\"edit\",\"del\"],\"safe/check_bom/index\":[\"add\",\"edit\",\"del\"],\"safe/adomain/index\":[\"add\",\"edit\",\"del\"],\"safe/config/index\":[\"add\",\"edit\",\"del\"],\"safe/link/index\":[\"add\",\"edit\",\"del\"],\"news/home/index\":[\"add\",\"edit\",\"del\"],\"product/home/index\":[\"add\",\"edit\",\"del\"],\"ctool/module_content/index\":[\"add\",\"edit\",\"del\"],\"category/index\":[\"add\",\"edit\",\"del\"],\"news/verify/index\":[\"add\",\"edit\",\"del\"],\"product/verify/index\":[\"add\",\"edit\",\"del\"],\"product/subcategory_verify/index\":[\"add\",\"edit\",\"del\"],\"member/home/index\":[\"add\",\"edit\",\"del\"],\"member/group/index\":[\"add\",\"edit\",\"del\"],\"member/oauth/index\":[\"add\",\"edit\",\"del\"],\"member/setting/index\":[\"add\",\"edit\",\"del\"],\"member/field/index\":[\"add\",\"edit\",\"del\"],\"member/setting_notice/index\":[\"add\",\"edit\",\"del\"],\"member/verify/index\":[\"add\",\"edit\",\"del\"],\"member/apply/index\":[\"add\",\"edit\",\"del\"],\"member/edit_verify/index\":[\"add\",\"edit\",\"del\"],\"member/avatar_verify/index\":[\"add\",\"edit\",\"del\"]}}','{\"news/draft/add\":\"news/draft/add\",\"news/draft/index\":\"news/draft/index\",\"news/draft/edit\":\"news/draft/edit\",\"news/draft/del\":\"news/draft/del\",\"news/recycle/add\":\"news/recycle/add\",\"news/recycle/index\":\"news/recycle/index\",\"news/recycle/edit\":\"news/recycle/edit\",\"news/recycle/del\":\"news/recycle/del\",\"news/time/add\":\"news/time/add\",\"news/time/index\":\"news/time/index\",\"news/time/edit\":\"news/time/edit\",\"news/time/del\":\"news/time/del\",\"product/draft/add\":\"product/draft/add\",\"product/draft/index\":\"product/draft/index\",\"product/draft/edit\":\"product/draft/edit\",\"product/draft/del\":\"product/draft/del\",\"product/recycle/add\":\"product/recycle/add\",\"product/recycle/index\":\"product/recycle/index\",\"product/recycle/edit\":\"product/recycle/edit\",\"product/recycle/del\":\"product/recycle/del\",\"product/time/add\":\"product/time/add\",\"product/time/index\":\"product/time/index\",\"product/time/edit\":\"product/time/edit\",\"product/time/del\":\"product/time/del\",\"product/subcategory/add\":\"product/subcategory/add\",\"product/subcategory/index\":\"product/subcategory/index\",\"product/subcategory/edit\":\"product/subcategory/edit\",\"product/subcategory/del\":\"product/subcategory/del\"}','');
/*!40000 ALTER TABLE `dr_admin_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_admin_role_index`
--

DROP TABLE IF EXISTS `dr_admin_role_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_admin_role_index` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `uid` mediumint unsigned DEFAULT NULL COMMENT '会员uid',
  `roleid` mediumint unsigned DEFAULT NULL COMMENT '角色组id',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `roleid` (`roleid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='后台角色组分配表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_admin_role_index`
--

LOCK TABLES `dr_admin_role_index` WRITE;
/*!40000 ALTER TABLE `dr_admin_role_index` DISABLE KEYS */;
INSERT INTO `dr_admin_role_index` VALUES (1,1,1),(8,2,1);
/*!40000 ALTER TABLE `dr_admin_role_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_admin_setting`
--

DROP TABLE IF EXISTS `dr_admin_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_admin_setting` (
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='系统属性参数表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_admin_setting`
--

LOCK TABLES `dr_admin_setting` WRITE;
/*!40000 ALTER TABLE `dr_admin_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_admin_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_admin_verify`
--

DROP TABLE IF EXISTS `dr_admin_verify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_admin_verify` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `verify` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '审核部署',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='审核管理表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_admin_verify`
--

LOCK TABLES `dr_admin_verify` WRITE;
/*!40000 ALTER TABLE `dr_admin_verify` DISABLE KEYS */;
INSERT INTO `dr_admin_verify` VALUES (1,'默认审核','{\"edit\":\"1\",\"role\":{\"1\":\"2\"}}');
/*!40000 ALTER TABLE `dr_admin_verify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_app_chtml_cat`
--

DROP TABLE IF EXISTS `dr_app_chtml_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_app_chtml_cat` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `siteid` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `where` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `param` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `counts` int NOT NULL,
  `htmls` int NOT NULL,
  `error` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint unsigned DEFAULT NULL COMMENT '状态',
  `inputtime` int unsigned NOT NULL COMMENT '创建时间',
  `updatetime` int unsigned NOT NULL COMMENT '最近生成时间',
  PRIMARY KEY (`id`),
  KEY `siteid` (`siteid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='生成静态定时栏目任务';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_app_chtml_cat`
--

LOCK TABLES `dr_app_chtml_cat` WRITE;
/*!40000 ALTER TABLE `dr_app_chtml_cat` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_app_chtml_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_app_login`
--

DROP TABLE IF EXISTS `dr_app_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_app_login` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint unsigned DEFAULT NULL COMMENT '会员uid',
  `is_login` int unsigned DEFAULT NULL COMMENT '是否首次登录',
  `is_repwd` int unsigned DEFAULT NULL COMMENT '是否重置密码',
  `updatetime` int unsigned NOT NULL COMMENT '修改密码时间',
  `logintime` int unsigned NOT NULL COMMENT '最近登录时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `logintime` (`logintime`),
  KEY `updatetime` (`updatetime`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='账号记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_app_login`
--

LOCK TABLES `dr_app_login` WRITE;
/*!40000 ALTER TABLE `dr_app_login` DISABLE KEYS */;
INSERT INTO `dr_app_login` VALUES (1,1,1721922203,1721922203,1721922203,1723539398),(2,2,0,0,0,1723539534);
/*!40000 ALTER TABLE `dr_app_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_attachment`
--

DROP TABLE IF EXISTS `dr_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_attachment` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint unsigned NOT NULL COMMENT '会员id',
  `author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '会员',
  `siteid` mediumint unsigned NOT NULL COMMENT '站点id',
  `related` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '相关表标识',
  `tableid` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '附件副表id',
  `download` mediumint NOT NULL DEFAULT '0' COMMENT '无用保留',
  `filesize` int unsigned NOT NULL COMMENT '文件大小',
  `fileext` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文件扩展名',
  `filemd5` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文件md5值',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `author` (`author`),
  KEY `relatedtid` (`related`),
  KEY `fileext` (`fileext`),
  KEY `filemd5` (`filemd5`),
  KEY `siteid` (`siteid`)
) ENGINE=InnoDB AUTO_INCREMENT=351 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='附件表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_attachment`
--

LOCK TABLES `dr_attachment` WRITE;
/*!40000 ALTER TABLE `dr_attachment` DISABLE KEYS */;
INSERT INTO `dr_attachment` VALUES (4,1,'',1,'rand',0,0,48020,'webp','ce317d4f70fde7f8ae33cdebfbea41db'),(5,1,'',1,'dr_site',0,0,375137,'jpg','6fff9118e7b5745b4ec4b1c62f3ba653'),(6,1,'',1,'dr_site',0,0,346578,'jpg','a51d905817fd77d8878f9763d245fac2'),(7,1,'',1,'dr_site',0,0,127542,'jpg','a1ac9cc3375cd4f0afd753b1a9f70769'),(11,1,'',1,'dr_1_news-1',1,0,885530,'png','4b199abdb5f157152893c99fdc95de13'),(14,1,'',1,'dr_1_news-2',1,0,559729,'png','3fcdd85e496522d62dff4bcbedb72e52'),(15,1,'',1,'dr_1_news-2',1,0,552326,'png','7eb6b19b88771fdb72daab69849658d1'),(16,1,'',1,'dr_1_news-2',1,0,537990,'png','bbf7c2f9c393833a750246c32b7bd8af'),(17,1,'',1,'dr_1_news-2',1,0,401200,'png','d1b8144c22e0ca94312682b4ff749d1f'),(18,1,'',1,'dr_1_news-2',1,0,374329,'png','7847ec6a854e8658a65816f9db28ce36'),(19,1,'',1,'dr_1_news-2',1,0,620410,'png','7ec619ac4b4e37afdb04dd5245768fe1'),(20,1,'',1,'dr_1_news-2',1,0,607570,'png','d392e140d1e6600c9e0ccf8f12a73f3c'),(21,1,'',1,'dr_1_news-2',1,0,557945,'png','fe293a584ae4228bdbc028ac2da147e0'),(22,1,'',1,'dr_1_news-2',1,0,534500,'png','ee1aac4f96cc8ebee5c2a711be038c43'),(23,1,'',1,'dr_1_news-2',1,0,507738,'png','21741e1d70a1a31359579623a3e174b0'),(24,1,'',1,'dr_1_news-2',1,0,473694,'png','66cd93b56be9df8b47b2b2c4e9a70106'),(25,1,'',1,'dr_1_news-2',1,0,397218,'png','52d5c910cbc2955a7568b3552de093f9'),(26,1,'',1,'dr_1_news-2',1,0,340867,'png','5bc61a5675d3c29821a28594b6e0d309'),(27,1,'',1,'dr_1_news-2-rand',1,0,267589,'jpg','22f44ae57d75940634b9f2276b0616e9'),(28,1,'',1,'dr_1_news-3',1,0,1406342,'jpg','ad87c232cd0b7dec559d9689c229a9bf'),(29,1,'',1,'dr_1_news-4',1,0,176115,'jpg','f3be92c995132a32ddf4e5c9042e233d'),(30,1,'',1,'dr_1_news-5',1,0,55464,'jpg','24ad840c224db99981336776e16d6b2f'),(31,1,'',1,'dr_1_news-5',1,0,34773,'jpg','aa62861e135a98f38e4e3545f4ea9f9a'),(32,1,'',1,'dr_1_news-6',1,0,128141,'jpg','05f792732a26394623f15eb8a621af78'),(38,1,'',1,'rand',0,0,9064,'svg','6f62fcdc0c8e893cddcf966d4ed2ab5c'),(39,1,'',1,'dr_1_share_category-1',0,0,912497,'png','e46438f690b5770a5be4122051fcb8e8'),(40,1,'',1,'dr_1_share_category-1',0,0,50850,'jpg','59c9cfa97c6d5a154738d54d03bd08c7'),(42,1,'',1,'dr_1_share_category-1',0,0,931132,'png','180d218a74e0784788b8f08f7251cbdf'),(43,1,'',1,'dr_1_share_category-1',0,0,107367,'jpg','5932539b50868c8c1a291c92da1ac0aa'),(44,1,'',1,'dr_1_share_category-1',0,0,1056775,'png','fd2a45601d30a20412f13f5b28abf38c'),(45,1,'',1,'dr_1_share_category-1',0,0,51658,'webp','99d5651f3d5f1e92ddbf52f7896f6aae'),(46,1,'',1,'dr_1_share_category-1',0,0,67580,'webp','0ccb46542422532be67acc408290e8e5'),(47,1,'',1,'dr_1_share_category-1',0,0,51222,'webp','a0a9e772f5efc2ca0b9682ed85a7274c'),(48,1,'',1,'dr_1_share_category-1',0,0,51474,'webp','81c6f4215678496fac448a214d14d7d5'),(49,1,'',1,'dr_1_share_category-1',0,0,69626,'webp','f1e255384c4f29eeaf962e42a4168e3d'),(50,1,'',1,'dr_1_share_category-1',0,0,160378,'webp','9383ef2a7a382bc1948e7ec6377bf2f4'),(51,1,'',1,'dr_1_share_category-1',0,0,62030,'webp','3255f6f7c69c84b9047770c5681f0b58'),(52,1,'',1,'dr_1_share_category-1',0,0,86794,'webp','9a293bee5a7fbc9599fe9d1b882159d3'),(53,1,'',1,'dr_1_share_category-1',0,0,58226,'webp','c5809ba99fa521e6079b5293a43effc8'),(59,1,'',1,'dr_1_product-16-rand',0,0,1224974,'png','28e364df472430efff215c11407c0af1'),(60,1,'',1,'rand',0,0,936621,'png','23c54b91b824ab449137a8af78b5e8d3'),(61,1,'',1,'rand',0,0,1066208,'png','fdd22871000c5f963bc5812a5b93bcdb'),(62,1,'',1,'rand',0,0,579729,'png','404fe916129d84ae26cb2e84aa6dac59'),(63,1,'',1,'rand',0,0,945081,'png','49a44fbccc71d4858af7b18d3c8a3556'),(64,1,'',1,'rand',0,0,1643769,'png','cebf8853844951143dbb43def4569ba7'),(65,1,'',1,'dr_1_product-19-rand',0,0,899511,'png','c3e776038debefbdbe753bcf45a7ce7f'),(66,1,'',1,'dr_1_product-19',0,0,1362046,'png','2a7ef75b06bb95fddef47603ece4c5d3'),(67,1,'',1,'dr_1_product-19',0,0,1994214,'png','2d5cf437d29d167e6c787d751910044a'),(68,1,'',1,'dr_1_product-20-rand',0,0,51782,'png','3c050588728550028933ea620c242090'),(69,1,'',1,'dr_1_product-21-rand',0,0,1305035,'jpg','71f58f115ce0e265bcb70fa0e64b2ba5'),(71,1,'',1,'dr_1_product-22-rand',0,0,1596308,'jpg','2c15c3c4d0c3a2526da04cb78e0bde60'),(72,1,'',1,'dr_1_product-23-rand',0,0,30043,'png','074f3f51b925f676cb6bed30bd55cbd4'),(76,1,'',1,'dr_1_product-24-rand',0,0,2127846,'png','c16691e6ca80b8f53ba68292567a83df'),(78,1,'',1,'dr_1_product-25',0,0,3402660,'png','e5e2de0319cbe57346db946188eec996'),(81,1,'',1,'dr_1_product-28-rand',0,0,434242,'jpg','9f95a91b7a6522028ccca92744fe336f'),(84,1,'',1,'rand',0,0,106192,'png','13546e5211a73c9d6921b67861a02c6a'),(88,1,'',1,'dr_1_product-25-rand',0,0,3402660,'png','e5e2de0319cbe57346db946188eec996'),(89,1,'',1,'dr_1_product-26',0,0,426836,'png','9b35afe6cde7716d228314fc98fceb5e'),(93,1,'',1,'dr_1_product-27-rand',0,0,644921,'png','04adc361f49d9cc06ba9e0cfac779b0d'),(96,1,'',1,'dr_1_product-29-rand',0,0,860674,'png','9ce02f23a52bbfdfe66566303ccd7176'),(98,1,'',1,'dr_1_product-28',0,0,103540,'png','920a741cb5ecf4af6e929791726fa665'),(104,1,'',1,'dr_1_product-30-rand',0,0,583241,'png','5ae033939a3cf6081f17e191369b7e7c'),(105,1,'',1,'dr_1_product_form_subcategory-1',0,0,386739,'png','ed4b7a6547f52258f5b46a13ffa027e2'),(106,1,'',1,'dr_1_product_form_subcategory-1',0,0,350545,'png','b3ff617b7c6ec6b4ea6a29f13868c123'),(107,1,'',1,'dr_1_product_form_subcategory-1',0,0,316935,'png','9ece0da68a648c2d3c96a348085061b5'),(108,1,'',1,'dr_1_product_form_subcategory-1',0,0,427930,'png','13d0e336b31932807a9c430a7a9128d8'),(120,1,'',1,'dr_1_product-27-rand',0,0,411754,'jpg','0926f21e80394afe3647a20b73df402e'),(123,1,'',1,'dr_1_product-27',0,0,392203,'png','1792d458e2c24972d64b7d6b0df979fc'),(126,1,'',1,'dr_1_share_category-1',0,0,114324,'jpg','6569a22e3e521586f412196f8fe13daa'),(127,1,'',1,'dr_1_share_category-1',0,0,160610,'jpg','15b6fe882ef8157fb9d94876d9ec4cc8'),(128,1,'',1,'dr_1_share_category-1',0,0,155365,'jpg','68ab0252d905837501a2cf6b0bcb339b'),(131,2,'',1,'dr_1_news-13',2,0,1108333,'jpg','4eabe3b7ad4650d96b35ac0bf4be7162'),(132,2,'',1,'dr_1_news-13',2,0,856940,'jpg','9dd05a9f6cae79e09710d5dd0ddfb265'),(133,2,'',1,'dr_1_news-13',2,0,420252,'jpg','6e8c1eb8842473047c633b45af283ee7'),(140,1,'',1,'dr_1_news-32',0,0,411466,'png','932eb9dc04fc5a61e0da1c3a268b1037'),(141,1,'',1,'dr_1_news-32',1,0,411466,'png','932eb9dc04fc5a61e0da1c3a268b1037'),(142,1,'',1,'dr_1_news-32',1,0,512183,'png','1bfe35b249886172453c73813990356e'),(143,1,'',1,'dr_1_news-32',1,0,491987,'png','d2885a3357820b8008917aa20a8b8fa5'),(144,1,'',1,'dr_1_news-32',1,0,457570,'png','b44722996056743746b69b54eea43936'),(145,1,'',1,'dr_1_news-32',1,0,466408,'png','50ecdd4f60d76322b6200aa64e675268'),(146,1,'',1,'dr_1_news-32',1,0,342007,'png','1c16839eb53bba0a72265fa82c50e881'),(147,1,'',1,'dr_1_news-32',1,0,418668,'png','8f5aebf536219ed58578c9cbce0de088'),(148,1,'',1,'dr_1_news-32',1,0,801553,'png','e9b82e6f36e456ff2626ab8128cc9784'),(149,1,'',1,'dr_1_news-32',1,0,494737,'png','de04e0bf84cc910adb7fe3cfe5904b1f'),(150,1,'',1,'dr_1_news-33',1,0,54641,'jpg','c7e353fbfe3265d61766b6aeec27c19a'),(151,1,'',1,'dr_1_news-33',1,0,475478,'jpg','4d88cc45f3376ca46060006ca2cbe2a1'),(152,1,'',1,'dr_1_news-33',1,0,328026,'jpg','4b8d948d8c378e9ff33c39c6edd203af'),(153,1,'',1,'dr_1_news-33',1,0,24531,'jpg','da83e3f805486fbad5c18335a5a32cba'),(154,1,'',1,'dr_1_news-33',1,0,25860,'jpg','a2d5049905d68548b2d77b6f87795a59'),(155,1,'',1,'dr_1_news-33',1,0,29842,'jpg','f2d2490b1f53fceffe468cfcd6b3f042'),(156,1,'',1,'dr_1_news-33',1,0,47174,'jpg','ed620a8a675caa592daea2fa3796b830'),(157,1,'',1,'dr_1_news-33',1,0,32979,'jpg','ef3d2180069fc2a97ac622e4029d8c3f'),(158,1,'',1,'dr_1_news-6',1,0,128141,'jpg','05f792732a26394623f15eb8a621af78'),(159,1,'',1,'dr_1_news-6',1,0,216118,'jpg','f7fa1e95f416aca25bc9dfc90d538ac1'),(160,1,'',1,'dr_1_news-6',1,0,152945,'jpg','d7529a63f750811770bee0752a35e8ed'),(161,1,'',1,'dr_1_news-6',1,0,128141,'jpg','05f792732a26394623f15eb8a621af78'),(162,1,'',1,'dr_1_news-34',1,0,104941,'jpg','070023f2f73bb11605da5c7ae7607980'),(163,1,'',1,'dr_1_news-34',1,0,110151,'jpg','4cedcb6cd4da22f021dc2a9403321f9e'),(164,1,'',1,'dr_1_news-34',1,0,140094,'jpg','b3bd372a91304c28dc7fa29c5df1cbf8'),(165,1,'',1,'dr_1_news-34',1,0,94008,'jpg','af21f29e8c7b941f9fd7877ef214f3ae'),(166,1,'',1,'dr_1_news-35',1,0,106727,'jpg','ff9028a4f536874ea6deb9ebcd1481f9'),(167,1,'',1,'dr_1_news-35',1,0,5078880,'jpg','b7bed9b81464c768d8d41d690c774db6'),(168,1,'',1,'dr_1_news-35',1,0,216727,'jpg','8f4ce13dff29ace5d189b3604fdff482'),(169,1,'',1,'dr_1_news-35',1,0,457844,'jpg','dd7d3767152fb11aa82ef3a1431f7e44'),(170,1,'',1,'dr_1_news-15',0,0,50508,'webp','78c5db43200d9fc450525a22e6fef192'),(171,1,'',1,'dr_1_news-13',1,0,856940,'jpg','9dd05a9f6cae79e09710d5dd0ddfb265'),(172,1,'',1,'dr_1_news-13',1,0,1108333,'jpg','4eabe3b7ad4650d96b35ac0bf4be7162'),(173,1,'',1,'dr_1_news-13',1,0,420252,'jpg','6e8c1eb8842473047c633b45af283ee7'),(174,1,'',1,'dr_1_news-13',1,0,1108333,'jpg','4eabe3b7ad4650d96b35ac0bf4be7162'),(175,1,'',1,'dr_1_news-36',0,0,40368,'webp','7a6d97d07a5fc3545712175350d71720'),(191,1,'',1,'dr_1_share_category-1',0,0,460891,'jpg','c6beaadf927a047e8310cc8aca37451f'),(198,1,'',1,'rand',1,0,22412,'jpg','9ac654f5113cf128186d5f89bcf29f7e'),(204,1,'',1,'rand',1,0,845654,'png','f9a8cf19278eefb73c2a0ea3cd89dcd6'),(205,1,'',1,'rand',1,0,869094,'png','623ced1c58cd3a8a887d4612e421a15e'),(206,1,'',1,'rand',1,0,3218019,'png','4ac57c2dea6ad58ab2bc3b66683b1a44'),(207,1,'',1,'rand',1,0,3433352,'png','1c3fcdb3d69540a0f788da8b288c5803'),(208,1,'',1,'rand',1,0,3587804,'png','0273da275d5ac8b39f7324a8a2de1e1d'),(209,1,'',1,'rand',1,0,3577956,'png','03fdefd7811ce2e957fe5708443934c1'),(210,1,'',1,'rand',1,0,3417312,'png','ac057f8756d8a2f1e365fa750e049524'),(211,1,'',1,'rand',1,0,3572823,'png','941362cea963683da2c222f6d0d4efe6'),(212,1,'',1,'rand',1,0,3982864,'png','8d0b6f672de02847f9d5da9accc70e00'),(213,1,'',1,'rand',1,0,179790,'jpg','90afbdfee9a0a5307117b76eb1e8ab68'),(214,1,'',1,'rand',1,0,181882,'jpg','88945588a02206360a71984b31129445'),(215,1,'',1,'rand',1,0,182252,'jpg','a57813b6a7939deedcf7f0ec37d1565b'),(216,1,'',1,'rand',1,0,181307,'jpg','80fa69c50d1c21808bbf8b6f49d81454'),(217,1,'',1,'rand',1,0,180980,'jpg','c520a6d9545c6062e552c5a7c85f3d1a'),(218,1,'',1,'rand',1,0,380572,'jpg','b83ac233e4fe4c83b43b1b3017600b65'),(219,1,'',1,'rand',1,0,334815,'jpg','2f6451392a3de394097585bd21113ecb'),(220,1,'',1,'rand',1,0,359101,'jpg','03560f10cf77d1671254588f385f7e49'),(221,1,'',1,'rand',1,0,361633,'jpg','e1906f16804b9df71032ab39a5b8926c'),(222,1,'',1,'rand',1,0,372559,'jpg','005bfaa48226bdbac711441948c950d6'),(223,1,'',1,'rand',1,0,269088,'jpg','1ff49959a6d9a2a9dd8140ec46a1278a'),(224,1,'',1,'rand',1,0,725356,'jpg','fb7b514ae3fc3a4444d01c53f22be1c9'),(225,1,'',1,'rand',1,0,225351,'jpg','0976e54b682ed4531b04a0441d2afa52'),(226,1,'',1,'rand',1,0,260107,'jpg','5a54d4debd5b7f30fbdb3fd8b8144245'),(227,1,'',1,'rand',1,0,192927,'jpg','a018d9564387c875ed689a8087210eac'),(228,1,'',1,'rand',1,0,343729,'jpg','2a69e1113f25fd0c955706cfe1110291'),(229,1,'',1,'rand',1,0,532183,'jpg','ac1e6ec67f6a7106a2769e2b33f38af3'),(230,1,'',1,'rand',1,0,407924,'jpg','e6e8412a7b2d0c749dda5f0c45f630ab'),(231,1,'',1,'rand',1,0,940093,'jpg','12de8c5ff99e61a557cf12fd14b5d7be'),(232,1,'',1,'Save',1,0,35998,'jpg','77880a27db2d5282727705a848a0e3a1'),(233,1,'',1,'Save',1,0,35749,'jpg','772a3cbc8c968c4003acc19030c41d8f'),(234,1,'',1,'Save',1,0,24946,'jpg','f4b01192535354186ec4da894725c619'),(235,1,'',1,'Save',1,0,1799652,'jpg','79de733de8e61a5587478aae3a48f46c'),(236,1,'',1,'Save',1,0,924812,'jpg','e0e5f05a1d3a0549700776410bc11632'),(237,1,'',1,'Save',1,0,611411,'jpg','f9979d94639ef526fa907995bd139a29'),(238,1,'',1,'rand',1,0,578317,'jpg','ea04baeca0bbfb988db0a88463c215da'),(239,1,'',1,'rand',1,0,168120,'png','0b5c261cca9c5fc4e4696dd329a2ac88'),(240,1,'',1,'dr_1_product-29',0,0,218916,'png','a5c0c33783f742cb48a03f4ce4c50a74'),(241,1,'',1,'dr_1_product-28',0,0,136393,'png','72882aa2aeba15c7e0df163c59cff934'),(242,1,'',1,'dr_1_product-27',0,0,201748,'png','d9a4d92f42de0a467995138768505b93'),(243,1,'',1,'dr_1_product-26',0,0,188642,'png','11992e7890f50e70f2483fdb77cf77bd'),(244,1,'',1,'dr_1_product-25',0,0,217397,'png','70356ae45602664b032e87d480d22d12'),(245,1,'',1,'dr_1_product-24',0,0,108313,'png','467f9f5dac2a378e4f79c6952914810b'),(246,1,'',1,'dr_1_product-23',0,0,54678,'png','21afc26da41549e3a6243a468eac0722'),(247,1,'',1,'dr_1_product-22',0,0,183071,'png','0dbcc7d201efc192fca365cc3f1d15c8'),(248,1,'',1,'dr_1_product-21',0,0,123977,'png','1bba851b320cee90ceeb1432f4eaeb5b'),(249,1,'',1,'dr_1_product-20',0,0,71677,'png','75b4e691c6963cde2cb610ae26f30d97'),(250,1,'',1,'dr_1_product-19',0,0,208663,'png','130213d441f35f6557be9f1823112a97'),(251,1,'',1,'dr_1_product-18',0,0,193782,'png','a25b4aa19b94e376bb9d115b9b9f8c6e'),(252,1,'',1,'dr_1_product-17',0,0,103293,'png','a810ad1cacd2f401740f99b3f6ab3fc7'),(253,1,'',1,'dr_1_product-16',0,0,149613,'jpg','60be46178014415c43a4cdc28ced4f3b'),(254,1,'',1,'dr_1_product-38',0,0,181867,'png','b0977086378f5d23337bb4efd0041986'),(255,1,'',1,'dr_1_product-37',0,0,68235,'png','2a2b3342c45494efa9a81082212632d7'),(256,1,'',1,'dr_1_product-39',0,0,143307,'png','a21d924c3623cc61e2e83209c30861b1'),(257,1,'',1,'dr_1_product-41',0,0,150228,'png','cc0128d9be7768b6ca48b10468712055'),(258,1,'',1,'dr_1_product-40',0,0,244632,'png','61e0cc5ccce455ea394bff9a356bad4c'),(259,1,'',1,'dr_1_product-44',0,0,90075,'png','e0bcd05a19772cfa7dc4c56149ac2a66'),(260,1,'',1,'dr_1_product-43',0,0,145251,'png','2dbe7180eaea5abdc6ccde482b1b469c'),(261,1,'',1,'dr_1_product-42',0,0,392637,'png','275dd404379ebdae340f4e3fc0d3bfd1'),(262,1,'',1,'dr_1_share_category-1',0,0,1642947,'png','aa17f636b76aa009a54b740a11d7f8b0'),(263,1,'',1,'dr_1_share_category-1',0,0,1710808,'png','fa9877952896220a483f0dc463600215'),(264,1,'',1,'dr_1_share_category-1',0,0,1743801,'png','3c51a742904727fc62ee177ffb721b68'),(265,1,'',1,'dr_1_share_category-1',0,0,1700702,'png','103dc69e849e5ddcb4291359aec0f8cd'),(266,1,'',1,'dr_1_share_category-1',0,0,1731641,'png','b764dd402186db33cf745a6868b62ded'),(267,1,'',1,'dr_1_product-26',1,0,181674,'png','28f209f6b3f2aeca17b1f51097985f4c'),(268,1,'',1,'dr_1_product-27',1,0,110184,'png','321cc756fa3d66e83e9a197431e7856d'),(269,1,'',1,'dr_1_product-27-rand',0,0,97516,'png','401a7040f2dcc3bc6dfd418b67d6f924'),(270,1,'',1,'dr_1_product-27-rand',0,0,273461,'png','564c1b74c17dc7a46fd507c08baa01b1'),(271,1,'',1,'dr_1_product-29',1,0,370040,'png','c682c64ec7beb52ea156bcf28ff7a1ae'),(272,1,'',1,'dr_1_product-30',1,0,218850,'png','5783bb77b52fc826218e338d4bddfc36'),(273,1,'',1,'',1,0,352780,'png','90dbfa8e0fa3bc8d8be54f41ed67a598'),(274,1,'',1,'dr_1_product-45',0,0,198354,'png','6192b4de526000c1d1410dbd934f0b76'),(275,1,'',1,'dr_1_product-45',1,0,198840,'png','664dcd8792c17f48dd80fd293a4e29ea'),(276,1,'',1,'dr_1_product-45',0,0,169363,'png','ea94e3d1734bf949e81e1e6147b1d498'),(277,2,'',1,'dr_1_news-46',0,0,1962695,'jpg','dc69ef1b8cf4e28d4058a3498aa31e62'),(278,2,'',1,'dr_1_news-46',2,0,1432590,'png','6bed524b95d5ea21f4ee13958558d85a'),(279,2,'',1,'dr_1_news-46',2,0,1432590,'png','1b0619d859210c4285e2fd0edea3ef42'),(280,2,'',1,'dr_1_news-46',2,0,1432590,'png','19247cc1135b25681523b750c122a35a'),(281,1,'',1,'',1,0,382235,'jpg','c8f8bd066d477aaf3e73dad6a34ac36b'),(282,1,'',1,'dr_1_share_category-1',0,0,371844,'jpg','58f5f0f312e3c5fd2d25efbfde29a109'),(283,1,'',1,'',1,0,378450,'jpg','4077cc5f8bb434dcc4a91cabd8832cb8'),(284,1,'',1,'',1,0,371547,'jpg','81c9ccab7f9d3a8e23152d3e6d3475ae'),(285,1,'',1,'dr_1_share_category-1',0,0,591027,'jpg','a6a12a69f5d30e0b1be5c1e7c93385e3'),(286,1,'',1,'dr_1_share_category-1',0,0,585242,'jpg','73fd852bc1114eb6f57a00dcbf7d05fc'),(287,1,'',1,'dr_1_share_category-1',0,0,600309,'jpg','bb3a696a9c3d929e9c549b3340112f00'),(288,1,'',1,'dr_1_share_category-1',0,0,593004,'jpg','c06fa60b9e34277e232c11bf906a7353'),(289,1,'',2,'dr_2_news-2',1,0,227710,'png','c7369a2fc645e8eca9aa5d3e0b737412'),(290,1,'',2,'dr_2_news-4',1,0,255013,'png','6b6e3f9fdf95c3716c77acdf394aaad2'),(291,1,'',1,'dr_1_news-5',1,0,90596,'webp','f68e3d71ece529dbb42623424bd6ce04'),(293,1,'',1,'dr_1_news-47',1,0,710315,'png','3ab138b26f3f252307ef62499c980245'),(294,1,'',1,'dr_1_news-47',1,0,710315,'png','3ab138b26f3f252307ef62499c980245'),(295,1,'',1,'dr_1_news-47',1,0,268209,'png','6f13ad34f9cd95c930dec1fa6f354d74'),(296,1,'',1,'dr_1_news-47',1,0,203642,'png','50ed99f42072be8969a408fee250bdc7'),(297,1,'',1,'dr_1_news-47',1,0,415754,'png','b6e6fc42926173364c9b7296aa00a2f5'),(298,1,'',1,'dr_1_news-47',1,0,710315,'png','3ab138b26f3f252307ef62499c980245'),(299,1,'',1,'dr_1_news-47',1,0,268209,'png','6f13ad34f9cd95c930dec1fa6f354d74'),(300,1,'',1,'dr_1_news-47',1,0,242616,'png','bc7787fe226fc59938652d0b4522fbfb'),(301,1,'',1,'dr_1_news-47',1,0,203642,'png','50ed99f42072be8969a408fee250bdc7'),(302,1,'',1,'dr_1_news-47',1,0,415754,'png','b6e6fc42926173364c9b7296aa00a2f5'),(303,1,'',1,'dr_1_news-47',1,0,334821,'png','60eadd5d710a7e7cf74483fb5b42a008'),(304,1,'',1,'dr_1_news-47',1,0,285023,'png','51c7036ac8f6c40b07abada237a15fbf'),(305,1,'',1,'dr_1_news-47',1,0,332059,'png','8855f1ff44e7d8aaceafc02561314bda'),(306,1,'',1,'dr_1_news-47',1,0,255981,'png','b631e1979e333a35517869b42bf86960'),(307,1,'',1,'dr_1_news-47',1,0,330673,'png','d4a1ff12f277e2cf07261addb87d362e'),(308,1,'',1,'dr_1_news-47',1,0,330673,'png','d4a1ff12f277e2cf07261addb87d362e'),(309,1,'',1,'dr_1_news-47',1,0,660038,'png','98b75cad473acf25e9c7bd48f189fe29'),(310,1,'',1,'dr_1_news-47',1,0,660038,'png','98b75cad473acf25e9c7bd48f189fe29'),(311,1,'',1,'dr_1_news-47',1,0,341738,'png','5780972fc31b6445d1222c248b483d49'),(312,1,'',1,'dr_1_news-47',1,0,351149,'png','de393a37b3fe9ea69eb41413cd3b176d'),(313,1,'',1,'dr_1_news-47',1,0,437914,'png','e110601ed4d861513b7147112c6bab8d'),(314,1,'',1,'dr_1_news-47',1,0,358334,'png','7f4e9a95b4508ae8028c29e350834a2d'),(315,1,'',1,'dr_1_news-47',1,0,358420,'png','107df32f487d2fe48a4331fb369d8dbe'),(316,2,'',1,'ueditor:1f631f2f5262ac11301d5af07249f11f',2,0,423707,'png','3234c0d95dbc476007bea44f60710f4c'),(317,1,'',1,'dr_1_product-29',1,0,275705,'png','88c4345bd0eb1094326b0103132aa308'),(318,1,'',1,'dr_1_product-29',1,0,311515,'png','da144aa822431114002aa73eb99fdd29'),(319,1,'',1,'dr_1_product-25',1,0,279670,'png','b78f33289f6338e3e78ee066efad61ec'),(320,1,'',1,'dr_1_product-25',1,0,299427,'png','e1d8a262d610bc8d4d9d32ca854d7251'),(321,1,'',1,'dr_1_product-39',1,0,216728,'png','352469be20717a233ffda535fd618c5d'),(322,1,'',1,'dr_1_product-38',1,0,172097,'png','37c8ff8f4c5f70f768cd11c59f0933ce'),(323,1,'',1,'dr_1_product-38',1,0,72862,'png','6c3a2d12388cd1b30f1c4d38869dcda0'),(324,1,'',1,'dr_1_product-43',1,0,112072,'png','8d99f3ea8b29bb97798b2c290f2c4690'),(325,1,'',1,'dr_1_product-41',1,0,169041,'png','b3ce7a07e15b699ac46b8d44fce748e0'),(326,1,'',1,'dr_1_product-27',1,0,274389,'png','e3ff4c0bfa7d791b3cea06a764a86938'),(327,1,'',1,'dr_1_product-27',1,0,514077,'png','9694d5655c0f1b9193ae469f91f004d9'),(328,1,'',1,'dr_1_product-27',1,0,486687,'png','d950212956f38a838c967309ed1ace3c'),(329,1,'',1,'ueditor:442af65802da84119cca69d264b034b4',1,0,115891,'png','c9620cfee5f37621aaa2ac88927cb10b'),(330,1,'',1,'ueditor:442af65802da84119cca69d264b034b4',1,0,225622,'png','25a9f82855e4cbd402e14fe50c43fa7f'),(331,1,'',1,'ueditor:442af65802da84119cca69d264b034b4',1,0,332906,'png','395d4349d06e920474a880ee42255d09'),(332,1,'',1,'dr_1_product-45',1,0,190915,'png','6ee6462ec984ad0ac61ea0be430bc475'),(333,1,'',1,'dr_1_product-45',1,0,170863,'png','d452f97c0f499d7687525fac9ff3e25d'),(334,1,'',1,'dr_1_product-26',1,0,241848,'png','cb331d8a241b86a2201d6f36b862497b'),(335,1,'',1,'dr_1_product-26',1,0,325768,'png','f45a38d4df24e57e97f482f3342ca01a'),(336,1,'',1,'dr_1_product-30',1,0,290595,'png','4b20d625bae2221969623e9ead307c3c'),(337,1,'',1,'dr_1_product-30',1,0,229503,'png','76f0063fe2b9f1482d938efe69be7957'),(338,1,'',1,'dr_1_product-40',1,0,231710,'png','6ebae83fbbe22da4b780338946d2ec12'),(339,2,'',1,'ueditor:ae7fcd8847aef9373fad514a5d24e0f1',2,0,703682,'png','78e410d123560fd9666096fc51e530ef'),(340,2,'',1,'ueditor:ae7fcd8847aef9373fad514a5d24e0f1',2,0,404707,'png','2130e6b8cc0a480777636889dd0f0585'),(341,2,'',1,'ueditor:ae7fcd8847aef9373fad514a5d24e0f1',2,0,598772,'png','d6378d58c90cc5fed18f4412458ec984'),(342,2,'',1,'ueditor:ae7fcd8847aef9373fad514a5d24e0f1',2,0,849078,'png','1cef17c14fb9f04291cd9023e64c5a9c'),(343,2,'',1,'ueditor:ae7fcd8847aef9373fad514a5d24e0f1',2,0,588966,'png','fef27c8b2aa6a1e9f277a6bda39fefd8'),(344,2,'',1,'ueditor:ae7fcd8847aef9373fad514a5d24e0f1',2,0,691944,'png','c89697d88e50122d9c9ddaf54c774fb3'),(345,2,'',1,'ueditor:ae7fcd8847aef9373fad514a5d24e0f1',2,0,715940,'png','96192d45384662499bfa98e0f230f848'),(346,2,'',1,'ueditor:ae7fcd8847aef9373fad514a5d24e0f1',2,0,713320,'png','1f2e106e841765fd72af532e3c8c3565'),(347,2,'',1,'ueditor:ae7fcd8847aef9373fad514a5d24e0f1',2,0,847501,'png','780e5b35651850a46542a69ee57a96a4'),(348,2,'',1,'ueditor:ae7fcd8847aef9373fad514a5d24e0f1',2,0,766975,'png','b142fff3d3ebf0ac0c15b37ea9aa0289'),(349,2,'',1,'ueditor:ae7fcd8847aef9373fad514a5d24e0f1',2,0,1012198,'png','a3448c4a6aa42a1873daa2ff4918e200'),(350,2,'',1,'dr_1_news-48',2,0,379845,'png','88230af6cd86342b016ecd29632503ee');
/*!40000 ALTER TABLE `dr_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_attachment_data`
--

DROP TABLE IF EXISTS `dr_attachment_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_attachment_data` (
  `id` mediumint unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '会员',
  `related` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文件扩展名',
  `filesize` int unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '远程附件id',
  `attachinfo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '附件信息',
  `inputtime` int unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `inputtime` (`inputtime`),
  KEY `fileext` (`fileext`),
  KEY `remote` (`remote`),
  KEY `author` (`author`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='附件已归档表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_attachment_data`
--

LOCK TABLES `dr_attachment_data` WRITE;
/*!40000 ALTER TABLE `dr_attachment_data` DISABLE KEYS */;
INSERT INTO `dr_attachment_data` VALUES (4,1,'','rand','BioHermes','webp',48020,'202405/8e3ea76f8ca7d8.webp',1,'https://bohuisi.sunbingchen.cn/admin92fd58919a38.php?s=module&c=site_param&m=index&page=0',1716345288),(5,1,'','dr_site','1','jpg',375137,'202405/2e226d90383cf52.jpg',1,'https://bohuisi.sunbingchen.cn/admin92fd58919a38.php?c=api&m=input_file_list&token=edcac4e0389a6c74d5c5d7c28db8e115&siteid=1&p=5376817df9c40531bd85348b5ac65fe6&ct=0&one=1&is_iframe=1',1716428512),(6,1,'','dr_site','2','jpg',346578,'202405/5e3c1550e730306.jpg',1,'https://bohuisi.sunbingchen.cn/admin92fd58919a38.php?c=api&m=input_file_list&token=edcac4e0389a6c74d5c5d7c28db8e115&siteid=1&p=5376817df9c40531bd85348b5ac65fe6&ct=0&one=1&is_iframe=1',1716428536),(7,1,'','dr_site','3','jpg',127542,'202405/39331df57f3b4ba.jpg',1,'https://bohuisi.sunbingchen.cn/admin92fd58919a38.php?c=api&m=input_file_list&token=edcac4e0389a6c74d5c5d7c28db8e115&siteid=1&p=5376817df9c40531bd85348b5ac65fe6&ct=0&one=1&is_iframe=1',1716428536),(14,1,'','dr_1_news-2','base64_image','png',559729,'202405/20127bd287bec4f.png',1,'{\"width\":579,\"height\":435}',1716456215),(15,1,'','dr_1_news-2','base64_image','png',552326,'202405/db88054ae23897.png',1,'{\"width\":562,\"height\":422}',1716456215),(16,1,'','dr_1_news-2','base64_image','png',537990,'202405/274458a3ebab54e.png',1,'{\"width\":559,\"height\":419}',1716456215),(17,1,'','dr_1_news-2','base64_image','png',401200,'202405/26121c7c3485ffa.png',1,'{\"width\":588,\"height\":332}',1716456215),(18,1,'','dr_1_news-2','base64_image','png',374329,'202405/f8c554c3dfa584b.png',1,'{\"width\":540,\"height\":304}',1716456215),(19,1,'','dr_1_news-2','base64_image','png',620410,'202405/7a559cb4379bf7f.png',1,'{\"width\":612,\"height\":408}',1716456472),(20,1,'','dr_1_news-2','base64_image','png',607570,'202405/d38e7b09232ce19.png',1,'{\"width\":644,\"height\":429}',1716456472),(21,1,'','dr_1_news-2','base64_image','png',557945,'202405/7d6d5d1cc940895.png',1,'{\"width\":610,\"height\":407}',1716456472),(22,1,'','dr_1_news-2','base64_image','png',534500,'202405/7bb9d22061dbe45.png',1,'{\"width\":598,\"height\":399}',1716456472),(23,1,'','dr_1_news-2','base64_image','png',507738,'202405/65bbf52f8dd485d.png',1,'{\"width\":570,\"height\":380}',1716456472),(24,1,'','dr_1_news-2','base64_image','png',473694,'202405/a261809c1102f24.png',1,'{\"width\":580,\"height\":387}',1716456472),(25,1,'','dr_1_news-2','base64_image','png',397218,'202405/d24832254f0a2.png',1,'{\"width\":556,\"height\":371}',1716456472),(26,1,'','dr_1_news-2','base64_image','png',340867,'202405/d4e25e6a7dd1dd1.png',1,'{\"width\":548,\"height\":365}',1716456472),(27,1,'','dr_1_news-2-rand','news0','jpg',267589,'202405/04bafb258c07338.jpg',1,'{\"width\":1441,\"height\":1079}',1716456559),(28,1,'','dr_1_news-3','news15','jpg',1406342,'202405/06f57ca5be95e1a.jpg',1,'{\"width\":3765,\"height\":2077}',1716456782),(29,1,'','dr_1_news-4','news32','jpg',176115,'202405/3ce597270fe034c.jpg',1,'{\"width\":1897,\"height\":895}',1716456916),(30,1,'','dr_1_news-5','news27','jpg',55464,'202405/422908bee699836.jpg',1,'{\"width\":1124,\"height\":598}',1716457020),(31,1,'','dr_1_news-5','news28','jpg',34773,'202405/8cc4de22590ec7e.jpg',1,'{\"width\":926,\"height\":332}',1716457020),(38,1,'','rand','logo','svg',9064,'202405/086f385289bfeba.svg',1,'https://bohuisi.sunbingchen.cn/admin92fd58919a38.php?s=module&c=site_param&m=index&page=0',1716541833),(39,1,'','dr_1_share_category-1','sub_visualM3','png',912497,'202405/045933f39a8bc6a.png',1,'https://bohuisi.sunbingchen.cn/admin92fd58919a38.php?c=category&m=edit&id=6',1716545028),(40,1,'','dr_1_share_category-1','media00','jpg',50850,'202405/3014cda3458c1fa.jpg',1,'https://bohuisi.sunbingchen.cn/admin92fd58919a38.php?c=category&m=edit&id=6',1716705169),(42,1,'','dr_1_share_category-1','sub_visualQ8','png',931132,'202405/67458086fe8c47b.png',1,'https://bohuisi.sunbingchen.cn/admin92fd58919a38.php?c=category&m=edit&id=2',1716705866),(43,1,'','dr_1_share_category-1','company01','jpg',107367,'202405/74fcc67e01e87fb.jpg',1,'https://bohuisi.sunbingchen.cn/admin92fd58919a38.php?c=category&m=edit&id=1',1716717991),(44,1,'','dr_1_share_category-1','sub_visualA6','png',1056775,'202405/9e8c531e07a56a0.png',1,'https://bohuisi.sunbingchen.cn/admin92fd58919a38.php?c=category&m=edit&id=1',1716718045),(45,1,'','dr_1_share_category-1','f78fe81ec42bb72df690b82bbe2bcb.JPG@95Q','webp',51658,'202405/081504a4bdf3.webp',1,'https://bohuisi.sunbingchen.cn/admin92fd58919a38.php?c=category&m=edit&id=20',1716826673),(46,1,'','dr_1_share_category-1','3bf0f4293fe67335cde4d7913773fc.JPG@95Q','webp',67580,'202405/192cd37bc2fc377.webp',1,'https://bohuisi.sunbingchen.cn/admin92fd58919a38.php?c=category&m=edit&id=20',1716827048),(47,1,'','dr_1_share_category-1','b1ddb57eb735039967a3cef3ac6a07.JPG@95Q','webp',51222,'202405/370573dae147466.webp',1,'https://bohuisi.sunbingchen.cn/admin92fd58919a38.php?c=category&m=edit&id=20',1716827296),(48,1,'','dr_1_share_category-1','cdd0c1d9420cb63fe7ad9edb5c8208.JPG@95Q','webp',51474,'202405/966cd4ee9afaf89.webp',1,'https://bohuisi.sunbingchen.cn/admin92fd58919a38.php?c=category&m=edit&id=20&is_self=1&page=1',1716827428),(49,1,'','dr_1_share_category-1','274f940e0011420e3cf434112665a7.JPG@95Q','webp',69626,'202405/70f288dc76493e3.webp',1,'https://bohuisi.sunbingchen.cn/admin92fd58919a38.php?c=category&m=edit&id=20&is_self=1&page=1',1716827446),(50,1,'','dr_1_share_category-1','846128bc8fb1a2fea4da19b2347b84.JPG@95Q','webp',160378,'202405/8f89e6c175db69c.webp',1,'https://bohuisi.sunbingchen.cn/admin92fd58919a38.php?c=category&m=edit&id=20&is_self=1&page=1',1716827464),(51,1,'','dr_1_share_category-1','c1a61ccb51397198bec15a5f22491d.JPG@95Q','webp',62030,'202405/e103cef6fb10535.webp',1,'https://bohuisi.sunbingchen.cn/admin92fd58919a38.php?c=category&m=edit&id=20&is_self=1&page=1',1716827476),(52,1,'','dr_1_share_category-1','74481aed8a7f5d89bf175398d70626.JPG@95Q','webp',86794,'202405/6a3b89e1395d510.webp',1,'https://bohuisi.sunbingchen.cn/admin92fd58919a38.php?c=category&m=edit&id=20&is_self=1&page=1',1716827492),(53,1,'','dr_1_share_category-1','acb8d4a565ec9d02cab3cac17ddb69.JPG@95Q','webp',58226,'202405/9a65b082fd27d.webp',1,'https://bohuisi.sunbingchen.cn/admin92fd58919a38.php?c=category&m=edit&id=20&is_self=1&page=1',1716827505),(59,1,'','dr_1_product-16-rand','QD1A6225','png',1224974,'202405/6da7cc853aafe5.png',1,'https://biohermesv2.sunbingchen.cn/admin92fd58919a38.php?s=product&c=home&m=edit&id=16',1716901066),(60,1,'','rand','QD1A6265','png',936621,'202405/cde24f80927b0ec.png',1,'https://biohermesv2.sunbingchen.cn/admin92fd58919a38.php?s=product&c=home&m=add&catid=0',1716901295),(61,1,'','rand','QD1A5457-1','png',1066208,'202405/9798f3fdf3eafe4.png',1,'https://biohermesv2.sunbingchen.cn/admin92fd58919a38.php?s=product&c=home&m=add&catid=0',1716901295),(62,1,'','rand','QD1A5369-1','png',579729,'202405/f00ada25de73188.png',1,'https://biohermesv2.sunbingchen.cn/admin92fd58919a38.php?s=product&c=home&m=add&catid=0',1716901295),(63,1,'','rand','QD1A5469','png',945081,'202405/8f3df6a9393af9c.png',1,'https://biohermesv2.sunbingchen.cn/admin92fd58919a38.php?s=product&c=home&m=add&catid=0',1716901295),(64,1,'','rand','QD1A5419-恢复的.p_s_','png',1643769,'202405/2cad7e244968a.png',1,'https://biohermesv2.sunbingchen.cn/admin92fd58919a38.php?s=product&c=home&m=add&catid=0',1716901295),(65,1,'','dr_1_product-19-rand','WechatIMG135','png',899511,'202405/a1dd8239b68250f.png',1,'https://biohermesv2.sunbingchen.cn/admin92fd58919a38.php?s=product&c=home&m=add&catid=11',1716904226),(66,1,'','dr_1_product-19','WechatIMG136','png',1362046,'202405/d0bd20dc6c6ab03.png',1,'https://biohermesv2.sunbingchen.cn/admin92fd58919a38.php?s=product&c=home&m=add&catid=11',1716904226),(67,1,'','dr_1_product-19','WechatIMG137','png',1994214,'202405/36ad95a45068.png',1,'https://biohermesv2.sunbingchen.cn/admin92fd58919a38.php?s=product&c=home&m=add&catid=11',1716904226),(68,1,'','dr_1_product-20-rand','WechatIMG146','png',51782,'202405/6eec9f67dec42fe.png',1,'https://biohermesv2.sunbingchen.cn/admin92fd58919a38.php?s=product&c=home&m=add&catid=11',1716904737),(69,1,'','dr_1_product-21-rand','蓝灰+深蓝(面板）','jpg',1305035,'202405/7621472bb461288.jpg',1,'https://biohermesv2.sunbingchen.cn/admin92fd58919a38.php?s=product&c=home&m=add&catid=11',1716904856),(71,1,'','dr_1_product-22-rand','气囊压力监控仪仪器侧视图','jpg',1596308,'202405/ab0aebd9f1da8c6.jpg',1,'https://biohermesv2.sunbingchen.cn/admin92fd58919a38.php?s=product&c=home&m=add&catid=11',1716904937),(72,1,'','dr_1_product-23-rand','WechatIMG144','png',30043,'202405/3dc9ce2a4c19413.png',1,'https://biohermesv2.sunbingchen.cn/admin92fd58919a38.php?s=product&c=home&m=add&catid=11',1716905046),(76,1,'','dr_1_product-24-rand','1.461','png',2127846,'202405/d2ef666edc35a37.png',1,'https://biohermesv2.sunbingchen.cn/admin92fd58919a38.php?s=product&c=home&m=add&catid=11',1716905144),(81,1,'','dr_1_product-28-rand','正面效果图','jpg',434242,'202405/a8e886809bb56d6.jpg',1,'https://biohermesv2.sunbingchen.cn/admin92fd58919a38.php?s=product&c=home&m=add&catid=12',1716906609),(84,1,'','rand','英文彩页合集','png',106192,'202405/1d86582c4003f14.png',1,'https://biohermesv2.sunbingchen.cn/admin92fd58919a38.php?s=product&c=home&m=edit&id=25',1716910460),(88,1,'','dr_1_product-25-rand','珠峰机_看图王','png',3402660,'202405/b85535cb4f67d03.png',1,'https://biohermesv2.sunbingchen.cn/admin92fd58919a38.php?s=product&c=home&m=edit&id=25',1716911968),(89,1,'','dr_1_product-26','糖化血红蛋白检测仪','png',426836,'202405/0ad582df5982c74.png',1,'https://biohermesv2.sunbingchen.cn/admin92fd58919a38.php?s=product&c=home&m=edit&id=26',1716912106),(93,1,'','dr_1_product-27-rand','Blood Glucose and Glycohemoglobin Analyze (1)','png',644921,'202405/4365face7f0a3af.png',1,'https://biohermesv2.sunbingchen.cn/admin92fd58919a38.php?s=product&c=home&m=edit&id=27',1716912785),(96,1,'','dr_1_product-29-rand','博唐平全自动四通道糖化血红蛋白检测仪 (1)','png',860674,'202405/ccafffeaad7eaa7.png',1,'https://biohermesv2.sunbingchen.cn/admin92fd58919a38.php?s=product&c=home&m=edit&id=29',1716912994),(98,1,'','dr_1_product-28','血糖仪 (1)','png',103540,'202405/5b2b33d8e8be65c.png',1,'https://biohermesv2.sunbingchen.cn/index.php?s=api&c=file&m=input_file_list&is_iframe=1&p=0db2434fef601131809fb14c9dbd629d&is_wm=0&ct=0&rand=0.018495654982888077&is_ajax=1',1716913185),(104,1,'','dr_1_product-30-rand','高效液相糖化血红蛋白分析仪 (1)','png',583241,'202405/1503495a9ab3.png',1,'https://biohermesv2.sunbingchen.cn/admin92fd58919a38.php?s=product&c=home&m=edit&id=30',1716913812),(105,1,'','dr_1_product_form_subcategory-1','Disposable Vaginal Lightening Dilator (1)','png',386739,'202405/8b42887dcd53e5e.png',1,'https://biohermesv2.sunbingchen.cn/admin92fd58919a38.php?s=product&c=subcategory&m=add&cid=31',1716915246),(106,1,'','dr_1_product_form_subcategory-1','Disposable Vaginal Lightening Dilator (2)','png',350545,'202405/ede8d5b09671362.png',1,'https://biohermesv2.sunbingchen.cn/index.php?s=api&c=file&m=input_file_list&is_iframe=1&p=0db2434fef601131809fb14c9dbd629d&is_wm=0&ct=0&rand=0.15985881760562415&is_ajax=1',1716915256),(107,1,'','dr_1_product_form_subcategory-1','Disposable Vaginal Lightening Dilator (3)','png',316935,'202405/b8d1dd7208dbf97.png',1,'https://biohermesv2.sunbingchen.cn/admin92fd58919a38.php?s=product&c=subcategory&m=add&cid=31',1716915270),(108,1,'','dr_1_product_form_subcategory-1','Disposable Vaginal Lightening Dilator (4)','png',427930,'202405/2c3d5150b534e90.png',1,'https://biohermesv2.sunbingchen.cn/admin92fd58919a38.php?s=product&c=subcategory&m=add&cid=31',1716915276),(120,1,'','dr_1_product-27-rand','衡山4','jpg',411754,'202405/2c363945951943b.jpg',1,'https://biohermesv2.sunbingchen.cn/admin92fd58919a38.php?s=product&c=home&m=edit&id=27',1716970537),(123,1,'','dr_1_product-27','衡山3(博唐平)','png',392203,'202405/6c63c6f054f04ef.png',1,'https://biohermesv2.sunbingchen.cn/admin92fd58919a38.php?s=product&c=home&m=edit&id=27',1716970887),(126,1,'','dr_1_share_category-1','ICU 麻醉耗材','jpg',114324,'202405/4a57412a5edc00e.jpg',1,'https://biohermesv2.sunbingchen.cn/admin92fd58919a38.php?c=category&m=edit&id=11',1716974050),(127,1,'','dr_1_share_category-1','慢病管理平台','jpg',160610,'202405/be75549e5948df0.jpg',1,'https://biohermesv2.sunbingchen.cn/admin92fd58919a38.php?c=category&m=edit&id=13',1716974114),(128,1,'','dr_1_share_category-1','糖尿病管理平台','jpg',155365,'202405/b292fd5d84e4f31.jpg',1,'https://biohermesv2.sunbingchen.cn/admin92fd58919a38.php?c=category&m=edit&id=12',1716974168),(131,2,'','dr_1_news-13','b7ad4650d96b35ac0bf4be7162','jpg',1108333,'202405/57518b06ad9f12c.jpg',1,'{\"width\":1440,\"height\":1080}',1717031993),(132,2,'','dr_1_news-13','9f6cae79e09710d5dd0ddfb265','jpg',856940,'202405/0e29c4a6a2c3aab.jpg',1,'{\"width\":1440,\"height\":1080}',1717031993),(133,2,'','dr_1_news-13','b8842473047c633b45af283ee7','jpg',420252,'202405/5cb720109d145ec.jpg',1,'{\"width\":1918,\"height\":1440}',1717031993),(140,1,'','dr_1_news-32','news34','png',411466,'202405/3febe84b0629559.png',1,'https://biohermesv2.sunbingchen.cn/admin92fd58919a38.php?s=news&c=home&m=edit&id=32',1717073334),(141,1,'','dr_1_news-32','news34','png',411466,'202405/f1b8a660e18a2.png',1,'{\"width\":1092,\"height\":1406}',1717073463),(142,1,'','dr_1_news-32','news35','png',512183,'202405/cdc8b941fbc01a9.png',1,'{\"width\":494,\"height\":552}',1717073595),(143,1,'','dr_1_news-32','news36','png',491987,'202405/2d6349305ba6c83.png',1,'{\"width\":647,\"height\":485}',1717073595),(144,1,'','dr_1_news-32','news37','png',457570,'202405/93fabb38ea7bec8.png',1,'{\"width\":649,\"height\":510}',1717073595),(145,1,'','dr_1_news-32','news38','png',466408,'202405/a5e41ccdbe94b7e.png',1,'{\"width\":646,\"height\":485}',1717073595),(146,1,'','dr_1_news-32','news39','png',342007,'202405/848ff27e9492366.png',1,'{\"width\":647,\"height\":485}',1717073595),(147,1,'','dr_1_news-32','news40','png',418668,'202405/42e1d3bc5052465.png',1,'{\"width\":654,\"height\":508}',1717073595),(148,1,'','dr_1_news-32','news41','png',801553,'202405/8a910297c015f71.png',1,'{\"width\":688,\"height\":917}',1717073595),(149,1,'','dr_1_news-32','news42','png',494737,'202405/3ca21dad68e4d.png',1,'{\"width\":667,\"height\":477}',1717073595),(150,1,'','dr_1_news-33','news18','jpg',54641,'202405/d45f01525dc24e3.jpg',1,'{\"width\":1462,\"height\":486}',1717075940),(151,1,'','dr_1_news-33','news16','jpg',475478,'202405/6a5f24272505d26.jpg',1,'{\"width\":1270,\"height\":952}',1717075940),(152,1,'','dr_1_news-33','news17','jpg',328026,'202405/3ef9fc9430b5efa.jpg',1,'{\"width\":1270,\"height\":952}',1717075940),(153,1,'','dr_1_news-33','news19','jpg',24531,'202405/e7b63005421f2fe.jpg',1,'{\"width\":762,\"height\":536}',1717075940),(154,1,'','dr_1_news-33','news20','jpg',25860,'202405/5dfd3465e343a52.jpg',1,'{\"width\":568,\"height\":757}',1717075940),(155,1,'','dr_1_news-33','news21','jpg',29842,'202405/cf8433f82a821db.jpg',1,'{\"width\":729,\"height\":592}',1717075940),(156,1,'','dr_1_news-33','news22','jpg',47174,'202405/b2f9304892a11db.jpg',1,'{\"width\":891,\"height\":581}',1717076000),(157,1,'','dr_1_news-33','news23','jpg',32979,'202405/48aba3ac724759c.jpg',1,'{\"width\":640,\"height\":729}',1717076000),(158,1,'','dr_1_news-6','news24','jpg',128141,'202405/c1c10d910d3c5f0.jpg',1,'{\"width\":1852,\"height\":645}',1717076410),(159,1,'','dr_1_news-6','news25','jpg',216118,'202405/585e0401d694e7f.jpg',1,'{\"width\":1424,\"height\":785}',1717076410),(160,1,'','dr_1_news-6','news26','jpg',152945,'202405/c5c4b7e96c56c9d.jpg',1,'{\"width\":1231,\"height\":733}',1717076410),(161,1,'','dr_1_news-6','c1c10d910d3c5f0','jpg',128141,'202405/4a4d842a3f4f1ad.jpg',1,'{\"width\":1852,\"height\":645}',1717076443),(162,1,'','dr_1_news-34','f2f73bb11605da5c7ae7607980','jpg',104941,'202405/3ca87a228f9cc1.jpg',1,'{\"width\":1080,\"height\":810}',1717076941),(163,1,'','dr_1_news-34','6cd4da22f021dc2a9403321f9e','jpg',110151,'202405/72d06eebf764f7d.jpg',1,'{\"width\":1080,\"height\":958}',1717076941),(164,1,'','dr_1_news-34','2a91304c28dc7fa29c5df1cbf8','jpg',140094,'202405/23b79880ec0ee6f.jpg',1,'{\"width\":1080,\"height\":810}',1717076941),(165,1,'','dr_1_news-34','9e8c7b941f9fd7877ef214f3ae','jpg',94008,'202405/9418fc04b14f1e5.jpg',1,'{\"width\":1080,\"height\":810}',1717076941),(166,1,'','dr_1_news-35','a4f536874ea6deb9ebcd1481f9','jpg',106727,'202405/4b7c3b2c4f043f5.jpg',1,'{\"width\":810,\"height\":810}',1717077082),(167,1,'','dr_1_news-35','b81464c768d8d41d690c774db6','jpg',5078880,'202405/45c89fe310c9.jpg',1,'{\"width\":4096,\"height\":3072}',1717077082),(168,1,'','dr_1_news-35','3dff29ace5d189b3604fdff482','jpg',216727,'202405/abe00cc658ba70c.jpg',1,'{\"width\":1440,\"height\":1080}',1717077082),(169,1,'','dr_1_news-35','67152fb11aa82ef3a1431f7e44','jpg',457844,'202405/3374c632ed1a0e1.jpg',1,'{\"width\":1565,\"height\":1174}',1717077082),(170,1,'','dr_1_news-15','2c3fbd932e2bd5488bbfb6e5b73afd.jpg@4e_500w_500h.src%7C95Q','webp',50508,'202405/a3ea6d83e3ef.webp',1,'https://biohermesv2.sunbingchen.cn/admin92fd58919a38.php?s=news&c=home&m=edit&id=15',1717077263),(171,1,'','dr_1_news-13','9f6cae79e09710d5dd0ddfb265','jpg',856940,'202405/75298a85e1293db.jpg',1,'{\"width\":1440,\"height\":1080}',1717077389),(172,1,'','dr_1_news-13','b7ad4650d96b35ac0bf4be7162','jpg',1108333,'202405/eb7b313af8ff72f.jpg',1,'{\"width\":1440,\"height\":1080}',1717077389),(173,1,'','dr_1_news-13','b8842473047c633b45af283ee7','jpg',420252,'202405/94fbe0f4e57a3.jpg',1,'{\"width\":1918,\"height\":1440}',1717077389),(174,1,'','dr_1_news-13','eb7b313af8ff72f','jpg',1108333,'202405/a0f28424e6ed7d.jpg',1,'{\"width\":1440,\"height\":1080}',1717077403),(175,1,'','dr_1_news-36','292cd36c5435017d35ae6a31ac6b13.jpg@4e_500w_500h.src%7C95Q','webp',40368,'202405/66ae40fde2a4614.webp',1,'https://biohermesv2.sunbingchen.cn/admin92fd58919a38.php?s=news&c=home&m=add&catid=0',1717077722),(191,1,'','dr_1_share_category-1','产品栏目缩略图','jpg',460891,'202406/30fae8851032bce.jpg',1,'https://biohermesv2.sunbingchen.cn/admin92fd58919a38.php?c=category&m=edit&id=2',1717253924),(198,1,'','rand','Mr. Kimi Luo','jpg',22412,'202406/d7254f6cd9f40eb.jpg',1,'{\"width\":156,\"height\":223}',1717479185),(204,1,'','rand','A1C EZ 2.0 Glycohemoglobin Analysis System_页面_1','png',845654,'202406/2de3db5fbc42d3c.png',1,'{\"width\":1643,\"height\":2323}',1717677494),(205,1,'','rand','A1C EZ 2.0 Glycohemoglobin Analysis System_页面_2','png',869094,'202406/48473c0e992903c.png',1,'{\"width\":1643,\"height\":2331}',1717677494),(206,1,'','rand','Boronate Affinity on AIC EZ 2.0 Glvcohemoglobin Analysis System  NGSP_页面_1','png',3218019,'202406/11eb2d0bd3940a4.png',1,'{\"width\":2187,\"height\":1687}',1717681962),(207,1,'','rand','Boronate Affinity on AIC EZ 2.0 Glvcohemoglobin Analysis System  NGSP_页面_2','png',3433352,'202406/34007cf07a5d6c0.png',1,'{\"width\":2185,\"height\":1688}',1717681962),(208,1,'','rand','Boronate Affinity on AIC EZ 2.0 Glvcohemoglobin Analysis System  NGSP_页面_4','png',3587804,'202406/53663e25763e.png',1,'{\"width\":2189,\"height\":1690}',1717681962),(209,1,'','rand','Boronate Affinity on AIC EZ 2.0 Glvcohemoglobin Analysis System  NGSP_页面_5','png',3577956,'202406/9ae7857d137ccda.png',1,'{\"width\":2190,\"height\":1692}',1717681962),(210,1,'','rand','Boronate Affinity on AIC EZ 2.0 Glvcohemoglobin Analysis System  NGSP_页面_3','png',3417312,'202406/bedfb81e1c4eb3a.png',1,'{\"width\":2185,\"height\":1688}',1717681962),(211,1,'','rand','Quality Management SystemEN ISO 134852016_页面_1','png',3572823,'202406/bd9523f25567a.png',1,'{\"width\":1655,\"height\":2325}',1717683007),(212,1,'','rand','Quality Management SystemEN ISO 134852016_页面_2','png',3982864,'202406/933b4d7b74850c.png',1,'{\"width\":1661,\"height\":2333}',1717683007),(213,1,'','rand','A1C EZ 2.0 Glycohemoglobin Analysis System_页面_1','jpg',179790,'202406/bca8b7600d7e926.jpg',1,'{\"width\":1643,\"height\":2323}',1717734142),(214,1,'','rand','BH60 Automatic Glycohemoglobin Analysis System_页面_1','jpg',181882,'202406/1eab7f1fea10b41.jpg',1,'{\"width\":1640,\"height\":2320}',1717734143),(215,1,'','rand','A1cChek Pro Glycohemoglobin Analysis System_页面_1','jpg',182252,'202406/f72b0486b068f53.jpg',1,'{\"width\":1638,\"height\":2318}',1717734143),(216,1,'','rand','A1cChek Express Glycohemoglobin Analysis System_页面_1','jpg',181307,'202406/863dc766ee5b934.jpg',1,'{\"width\":1639,\"height\":2320}',1717734143),(217,1,'','rand','GluCoA1c Blood Glucose and Glycohemoglobin Analysis System_页面_1','jpg',180980,'202406/0d4ec1eac1dbf88.jpg',1,'{\"width\":1640,\"height\":2322}',1717734143),(218,1,'','rand','BH60 Automatic Glycohemoglobin Analysis System','jpg',380572,'202406/899b22dac8a46f6.jpg',1,'{\"width\":1690,\"height\":2189}',1717734160),(219,1,'','rand','AIC EZ 2.0 Glvcohemoglobin Analysis System','jpg',334815,'202406/a631c045de3f31d.jpg',1,'{\"width\":1687,\"height\":2187}',1717734160),(220,1,'','rand','A1cChek Pro Glycohemoglobin Analysis System','jpg',359101,'202406/7833051bd84a8df.jpg',1,'{\"width\":1688,\"height\":2185}',1717734161),(221,1,'','rand','A1cChek Express Glycohemoglobin Analysis System','jpg',361633,'202406/540da4b49ec5.jpg',1,'{\"width\":1688,\"height\":2185}',1717734161),(222,1,'','rand','GluCoAle Blood Glucose and Glycohemoglobin Analysis System','jpg',372559,'202406/6e6fc25962581e1.jpg',1,'{\"width\":1692,\"height\":2190}',1717734161),(223,1,'','rand','A1cChek Express','jpg',269088,'202406/bd08f5439a6bfcb.jpg',1,'{\"width\":1653,\"height\":2339}',1717734177),(224,1,'','rand','EC Certificate HL 2119665-1_页面_1','jpg',725356,'202406/01cd0060ec20362.jpg',1,'{\"width\":2478,\"height\":3504}',1717734178),(225,1,'','rand','Biohermes A1cChek Pro Glycohemoglobin Analysis System 2024-马来西亚-华山系统_页面_2','jpg',225351,'202406/39cab88c08116b4.jpg',1,'{\"width\":1654,\"height\":2339}',1717734178),(226,1,'','rand','Biohermes A1cChek Pro Glycohemoglobin Analysis System 2024-马来西亚-华山系统_页面_1','jpg',260107,'202406/ab20f4247ee5c01.jpg',1,'{\"width\":1654,\"height\":2339}',1717734179),(227,1,'','rand','Certificate of GMP','jpg',192927,'202406/bc8014ee563ddbc.jpg',1,'{\"width\":1651,\"height\":2347}',1717734180),(228,1,'','rand','Quality Management SystemEN ISO 134852016_页面_1','jpg',343729,'202406/3828b185bf723f9.jpg',1,'{\"width\":1655,\"height\":2325}',1717734180),(229,1,'','rand','EC Certificate HL 2119665-1_页面_2','jpg',532183,'202406/386c5e8ce6efb34.jpg',1,'{\"width\":2478,\"height\":3504}',1717734181),(230,1,'','rand','Quality Management SystemEN ISO 134852016_页面_2','jpg',407924,'202406/05523f186299fcd.jpg',1,'{\"width\":1661,\"height\":2333}',1717734182),(231,1,'','rand','BIOHERMEs Glycohemoglobin Analyzer A1C EZ 2.0','jpg',940093,'202406/f969f493d4302ba.jpg',1,'{\"width\":3825,\"height\":6300}',1717734182),(232,1,'','Save','d2b188bbd9d069a','jpg',35998,'202406/727f2ed674f88c3.jpg',1,'',1717859690),(233,1,'','Save','cb2ca867ababdd0','jpg',35749,'202406/d3fafa6df3c09cb.jpg',1,'',1717859711),(234,1,'','Save','3f0d6443278eb11','jpg',24946,'202406/062a030ebf7f23d.jpg',1,'',1717859730),(235,1,'','Save','公司介绍','jpg',1799652,'202406/9aa82691fb5fab2.jpg',1,'',1717942667),(236,1,'','Save','BH60-2','jpg',924812,'202406/9d6d467e8ae08dd.jpg',1,'',1717942738),(237,1,'','Save','三大平台2','jpg',611411,'202406/894d6a7d72bc00b.jpg',1,'',1717942757),(238,1,'','rand','8c1e0a2a5fcee09','jpg',578317,'202406/ed6471d4f7ad15a.jpg',1,'{\"width\":640,\"height\":1127}',1717944171),(239,1,'','rand','未标题-1','png',168120,'202406/dedce8e7f5c606a.png',1,'{\"width\":1200,\"height\":1200}',1717976415),(240,1,'','dr_1_product-29','未标题-1','png',218916,'202406/0786ae629dbe0a8.png',1,'http://dev.biohermes.com/admin92fd58919a38.php?s=product&c=home&m=edit&id=29',1717976614),(241,1,'','dr_1_product-28','未标题-1','png',136393,'202406/06c1dab765b5618.png',1,'http://dev.biohermes.com/admin92fd58919a38.php?s=product&c=home&m=edit&id=28',1717978907),(242,1,'','dr_1_product-27','未标题-1','png',201748,'202406/55978eb484ac684.png',1,'http://dev.biohermes.com/admin92fd58919a38.php?s=product&c=home&m=edit&id=27',1717978966),(243,1,'','dr_1_product-26','未标题-1','png',188642,'202406/34cb76eeb1c0272.png',1,'http://dev.biohermes.com/admin92fd58919a38.php?s=product&c=home&m=edit&id=26',1717979109),(244,1,'','dr_1_product-25','未标题-1','png',217397,'202406/82d718103f031b1.png',1,'http://dev.biohermes.com/admin92fd58919a38.php?s=product&c=home&m=edit&id=25',1717979147),(245,1,'','dr_1_product-24','未标题-1','png',108313,'202406/4cbda9f4fbcf596.png',1,'http://dev.biohermes.com/admin92fd58919a38.php?s=product&c=home&m=edit&id=24',1717979241),(246,1,'','dr_1_product-23','未标题-1','png',54678,'202406/dfd09c3065431f.png',1,'http://dev.biohermes.com/admin92fd58919a38.php?s=product&c=home&m=edit&id=23',1717979288),(247,1,'','dr_1_product-22','未标题-1','png',183071,'202406/393f23b0dbd626e.png',1,'http://dev.biohermes.com/admin92fd58919a38.php?s=product&c=home&m=edit&id=22',1717979314),(248,1,'','dr_1_product-21','未标题-1','png',123977,'202406/85d3661f1f82984.png',1,'http://dev.biohermes.com/admin92fd58919a38.php?s=product&c=home&m=edit&id=21',1717979348),(249,1,'','dr_1_product-20','未标题-1','png',71677,'202406/add518f01044ea1.png',1,'http://dev.biohermes.com/admin92fd58919a38.php?s=product&c=home&m=edit&id=20',1717979664),(250,1,'','dr_1_product-19','未标题-1','png',208663,'202406/0ec5a9b75c6ff6.png',1,'http://dev.biohermes.com/admin92fd58919a38.php?s=product&c=home&m=edit&id=19',1717979692),(251,1,'','dr_1_product-18','未标题-1','png',193782,'202406/a2a9b0880216a7c.png',1,'http://dev.biohermes.com/admin92fd58919a38.php?s=product&c=home&m=edit&id=18',1717979727),(252,1,'','dr_1_product-17','未标题-1','png',103293,'202406/653bd7133450e71.png',1,'http://dev.biohermes.com/admin92fd58919a38.php?s=product&c=home&m=edit&id=17',1717979782),(253,1,'','dr_1_product-16','QD1A6225','jpg',149613,'202406/ee46cafaaaa0772.jpg',1,'http://dev.biohermes.com/admin92fd58919a38.php?s=product&c=home&m=edit&id=16',1717979814),(254,1,'','dr_1_product-38','未标题-1','png',181867,'202406/30e88fbda265701.png',1,'http://dev.biohermes.com/admin92fd58919a38.php?s=product&c=home&m=edit&id=38',1717984909),(255,1,'','dr_1_product-37','未标题-1','png',68235,'202406/eb4cfcf230f9ab4.png',1,'http://dev.biohermes.com/admin92fd58919a38.php?s=product&c=home&m=edit&id=37',1717984979),(256,1,'','dr_1_product-39','未标题-1','png',143307,'202406/5fab6d4983fa106.png',1,'http://dev.biohermes.com/admin92fd58919a38.php?s=product&c=home&m=edit&id=39',1717986375),(257,1,'','dr_1_product-41','未标题-1','png',150228,'202406/30ff4ca517cd1fd.png',1,'http://dev.biohermes.com/admin92fd58919a38.php?s=product&c=home&m=edit&id=41',1717986502),(258,1,'','dr_1_product-40','未标题-1','png',244632,'202406/59218f9aafbe05e.png',1,'http://dev.biohermes.com/admin92fd58919a38.php?s=product&c=home&m=edit&id=40',1717986586),(259,1,'','dr_1_product-44','未标题-1','png',90075,'202406/6d7aa359934887b.png',1,'http://dev.biohermes.com/admin92fd58919a38.php?s=product&c=home&m=edit&id=44',1717986680),(260,1,'','dr_1_product-43','未标题-1','png',145251,'202406/21c510f81518115.png',1,'http://dev.biohermes.com/admin92fd58919a38.php?s=product&c=home&m=edit&id=43',1717986743),(261,1,'','dr_1_product-42','未标题-1','png',392637,'202406/66b3aa243bf3241.png',1,'http://dev.biohermes.com/admin92fd58919a38.php?s=product&c=home&m=edit&id=42',1717986808),(262,1,'','dr_1_share_category-1','Boronate Affinity on AIC EZ 2.0 Glvcohemoglobin Analysis System  NGSP_页面_1','png',1642947,'202406/a61701a335015b.png',1,'http://dev.biohermes.com/admin92fd58919a38.php?c=category&m=edit&id=20&is_self=1&page=1',1718163301),(263,1,'','dr_1_share_category-1','Boronate Affinity on AIC EZ 2.0 Glvcohemoglobin Analysis System  NGSP_页面_2','png',1710808,'202406/3fe8eb900d8dc1f.png',1,'http://dev.biohermes.com/admin92fd58919a38.php?c=category&m=edit&id=20&is_self=1&page=1',1718163304),(264,1,'','dr_1_share_category-1','Boronate Affinity on AIC EZ 2.0 Glvcohemoglobin Analysis System  NGSP_页面_4','png',1743801,'202406/9d923254db6ebce.png',1,'http://dev.biohermes.com/admin92fd58919a38.php?c=category&m=edit&id=20&is_self=1&page=1',1718163305),(265,1,'','dr_1_share_category-1','Boronate Affinity on AIC EZ 2.0 Glvcohemoglobin Analysis System  NGSP_页面_3','png',1700702,'202406/47cc5a933f68e5b.png',1,'http://dev.biohermes.com/admin92fd58919a38.php?c=category&m=edit&id=20&is_self=1&page=1',1718163306),(266,1,'','dr_1_share_category-1','Boronate Affinity on AIC EZ 2.0 Glvcohemoglobin Analysis System  NGSP_页面_5','png',1731641,'202406/bb53857c112a262.png',1,'http://dev.biohermes.com/admin92fd58919a38.php?c=category&m=edit&id=20&is_self=1&page=1',1718163307),(267,1,'','dr_1_product-26','base64_image','png',181674,'202406/4f94fc2eee4dd25.png',1,'{\"width\":1108,\"height\":749}',1718198178),(268,1,'','dr_1_product-27','base64_image','png',110184,'202406/32b231cfd1cb6e3.png',1,'{\"width\":639,\"height\":896}',1718198951),(269,1,'','dr_1_product-27-rand','2c363945951943b','png',97516,'202406/d4f56e715a8d7.png',1,'http://dev.biohermes.com/admin92fd58919a38.php?s=product&c=home&m=edit&id=27',1718199673),(270,1,'','dr_1_product-27-rand','6c63c6f054f04ef','png',273461,'202406/5665f900a9a114a.png',1,'http://dev.biohermes.com/admin92fd58919a38.php?s=product&c=home&m=edit&id=27',1718199674),(271,1,'','dr_1_product-29','base64_image','png',370040,'202406/80c4e6d327b124.png',1,'{\"width\":1008,\"height\":891}',1718201293),(272,1,'','dr_1_product-30','base64_image','png',218850,'202406/36a55bc28f8b3f8.png',1,'{\"width\":1035,\"height\":885}',1718203000),(274,1,'','dr_1_product-45','未标题-1','png',198354,'202406/80d7bb36f19e0b6.png',1,'http://dev.biohermes.com/admin92fd58919a38.php?s=product&c=home&m=add&catid=0',1718205527),(275,1,'','dr_1_product-45','base64_image','png',198840,'202406/52bb05cbcb9cb.png',1,'{\"width\":869,\"height\":1270}',1718205757),(276,1,'','dr_1_product-45','英文彩页合集','png',169363,'202406/00215948cfdffbb.png',1,'http://dev.biohermes.com/admin92fd58919a38.php?s=product&c=home&m=edit&id=45',1718205848),(277,2,'','dr_1_news-46','20240624-144151','jpg',1962695,'202406/9c3db4fda31db8b.jpg',1,'http://www.biohermes.com/admin92fd58919a38.php?s=news&c=home&m=add&catid=0',1719458003),(278,2,'','dr_1_news-46','base64_image','png',1432590,'202406/ec1c9bdde3c9074.png',1,'{\"width\":690,\"height\":518}',1719458236),(279,2,'','dr_1_news-46','base64_image','png',1432590,'202406/35e6dfb7bfacfc8.png',1,'{\"width\":690,\"height\":518}',1719458236),(280,2,'','dr_1_news-46','base64_image','png',1432590,'202406/8ba9aa8d95191e1.png',1,'{\"width\":690,\"height\":518}',1719458236),(282,1,'','dr_1_share_category-1','Boronate Affinity on AlcChek Express Glycohemoglobin','jpg',371844,'202407/88e1b7e7b0a1bff.jpg',1,'http://www.biohermes.com/admin92fd58919a38.php?c=category&m=edit&id=20',1719798894),(285,1,'','dr_1_share_category-1','Boronate Affinity on AIC EZ 2.0 Glvcohemoglobin Analysis System','jpg',591027,'202407/8c0992ce92c0.jpg',1,'http://www.biohermes.com/admin92fd58919a38.php?c=category&m=edit&id=20&is_self=1&page=1&is_self=1&page=1&is_self=1&page=1',1719799337),(286,1,'','dr_1_share_category-1','Boronate Affinity on AlcChek Express Glycohemoglobin','jpg',585242,'202407/9023e3099edbaa7.jpg',1,'http://www.biohermes.com/admin92fd58919a38.php?c=category&m=edit&id=20&is_self=1&page=1&is_self=1&page=1&is_self=1&page=1',1719799353),(287,1,'','dr_1_share_category-1','Boronate Affinity on GluCoAlc Blood Glucose and Glycohemoglobin Analysis System','jpg',600309,'202407/15c4036464f565d.jpg',1,'http://www.biohermes.com/admin92fd58919a38.php?c=category&m=edit&id=20&is_self=1&page=1&is_self=1&page=1&is_self=1&page=1',1719799354),(288,1,'','dr_1_share_category-1','Boronate Affinity on AlcChek Pro Glycohemoglobin Analysis System','jpg',593004,'202407/47f6f501c54feb2.jpg',1,'http://www.biohermes.com/admin92fd58919a38.php?c=category&m=edit&id=20&is_self=1&page=1&is_self=1&page=1&is_self=1&page=1',1719799355),(289,1,'','dr_2_news-2','base64_image','png',227710,'202407/05ae3a933f6828.png',1,'{\"width\":500,\"height\":500}',1720788368),(290,1,'','dr_2_news-4','base64_image','png',255013,'202407/e143020c8cc74be.png',1,'{\"width\":500,\"height\":500}',1720796447),(291,1,'','dr_1_news-5','base64_image','webp',90596,'202407/5f55d653dbcb.webp',1,'{\"width\":926,\"height\":332}',1721957200),(293,1,'','dr_1_news-47','image.png','png',710315,'ueditor/image/202407/172238834888d54b.png',1,'',1722388348),(294,1,'','dr_1_news-47','image.png','png',710315,'ueditor/image/202407/1722390743bcae74.png',1,'',1722390743),(295,1,'','dr_1_news-47','image.png','png',268209,'ueditor/image/202407/1722390778e0e6cc.png',1,'',1722390777),(296,1,'','dr_1_news-47','image.png','png',203642,'ueditor/image/202407/1722390821a4fa6f.png',1,'',1722390821),(297,1,'','dr_1_news-47','image.png','png',415754,'ueditor/image/202407/1722390830073123.png',1,'',1722390830),(298,1,'','dr_1_news-47','image.png','png',710315,'ueditor/image/202407/172239094348a20d.png',1,'',1722390943),(299,1,'','dr_1_news-47','image.png','png',268209,'ueditor/image/202407/1722390977ca86af.png',1,'',1722390977),(300,1,'','dr_1_news-47','image.png','png',242616,'ueditor/image/202407/17223909845894fe.png',1,'',1722390984),(301,1,'','dr_1_news-47','image.png','png',203642,'ueditor/image/202407/17223910448cc1a1.png',1,'',1722391044),(302,1,'','dr_1_news-47','image.png','png',415754,'ueditor/image/202407/17223910545017dc.png',1,'',1722391054),(303,1,'','dr_1_news-47','image.png','png',334821,'ueditor/image/202407/17223910977bfaf9.png',1,'',1722391097),(304,1,'','dr_1_news-47','image.png','png',285023,'ueditor/image/202407/17223911037a7f9a.png',1,'',1722391101),(305,1,'','dr_1_news-47','image.png','png',332059,'ueditor/image/202407/17223911401b6f9e.png',1,'',1722391140),(306,1,'','dr_1_news-47','image.png','png',255981,'ueditor/image/202407/1722391146d4b64e.png',1,'',1722391144),(307,1,'','dr_1_news-47','image.png','png',330673,'ueditor/image/202407/1722391167c932d1.png',1,'',1722391167),(308,1,'','dr_1_news-47','image.png','png',330673,'ueditor/image/202407/1722391196f53afc.png',1,'',1722391196),(309,1,'','dr_1_news-47','image.png','png',660038,'ueditor/image/202407/172239121766c398.png',1,'',1722391217),(310,1,'','dr_1_news-47','image.png','png',660038,'ueditor/image/202407/17223912296005c8.png',1,'',1722391229),(311,1,'','dr_1_news-47','image.png','png',341738,'ueditor/image/202407/17223912435e4536.png',1,'',1722391243),(312,1,'','dr_1_news-47','image.png','png',351149,'ueditor/image/202407/17223912823a484d.png',1,'',1722391282),(313,1,'','dr_1_news-47','image.png','png',437914,'ueditor/image/202407/17223912864688a0.png',1,'',1722391286),(314,1,'','dr_1_news-47','image.png','png',358334,'ueditor/image/202407/172239129375555d.png',1,'',1722391293),(315,1,'','dr_1_news-47','image.png','png',358420,'ueditor/image/202407/1722391329989e5f.png',1,'',1722391329),(316,2,'','ueditor:1f631f2f5262ac11301d5af07249f11f','image.png','png',423707,'ueditor/image/202408/172249389457568f.png',1,'',1722493893),(317,1,'','dr_1_product-29','Анализатор ликированного гемоглобинаг A1c Check Pro-1.png','png',275705,'ueditor/image/202408/172257409223393d.png',1,'',1722574092),(318,1,'','dr_1_product-29','Анализатор ликированного гемоглобинаг A1c Check Pro-2.png','png',311515,'ueditor/image/202408/172257796195da72.png',1,'',1722577961),(319,1,'','dr_1_product-25','Анализатор гликогемоглобина A1cChek Express-1.png','png',279670,'ueditor/image/202408/1722581300529dbb.png',1,'',1722581300),(320,1,'','dr_1_product-25','Анализатор гликогемоглобина A1cChek Express-2.png','png',299427,'ueditor/image/202408/172258132300d71f.png',1,'',1722581323),(321,1,'','dr_1_product-39','абор для.png','png',216728,'ueditor/image/202408/1722582390a39366.png',1,'',1722582390),(322,1,'','dr_1_product-38','Набор для выявления-1.png','png',172097,'ueditor/image/202408/1722583705f7e062.png',1,'',1722583705),(323,1,'','dr_1_product-38','Набор для выявления-2.png','png',72862,'ueditor/image/202408/172258373011f863.png',1,'',1722583730),(324,1,'','dr_1_product-43','Устройство для физиотерапии сухости глаз.png','png',112072,'ueditor/image/202408/17225865431ad3a2.png',1,'',1722586543),(325,1,'','dr_1_product-41','Многофункциональный анализатор иммунофлуоресценции Fluoxpert.png','png',169041,'ueditor/image/202408/1722589882f42a08.png',1,'',1722589882),(326,1,'','dr_1_product-27','Анализатор GluCoA1c глюкозы в крови и гликогемоглобина-1.png','png',274389,'ueditor/image/202408/1722590218eb494a.png',1,'',1722590218),(327,1,'','dr_1_product-27','Анализатор GluCoA1c глюкозы в крови и гликогемоглобина-2.png','png',514077,'ueditor/image/202408/1722590229119a78.png',1,'',1722590229),(328,1,'','dr_1_product-27','Анализатор GluCoA1c глюкозы в крови и гликогемоглобина-2.png','png',486687,'ueditor/image/202408/1722590495e398ab.png',1,'',1722590495),(329,1,'','ueditor:442af65802da84119cca69d264b034b4','image.png','png',115891,'ueditor/image/202408/1722590661850015.png',1,'',1722590661),(330,1,'','ueditor:442af65802da84119cca69d264b034b4','Глюкометр-1.png','png',225622,'ueditor/image/202408/172259110819f336.png',1,'',1722591108),(331,1,'','ueditor:442af65802da84119cca69d264b034b4','Глюкометр-2.png','png',332906,'ueditor/image/202408/1722591119b2e6be.png',1,'',1722591119),(332,1,'','dr_1_product-45','Мультисистема мониторинга.png','png',190915,'ueditor/image/202408/1722604444bd7e73.png',1,'',1722604444),(333,1,'','dr_1_product-45','Мультисистема мониторинга.png','png',170863,'ueditor/image/202408/17226045892cdcba.png',1,'',1722604589),(334,1,'','dr_1_product-26','Анализатор гликированного гемоглобина A1C EZ 2.0-1.png','png',241848,'ueditor/image/202408/1722605069e4d495.png',1,'',1722605069),(335,1,'','dr_1_product-26','Анализатор гликированного гемоглобина A1C EZ 2.0-2.png','png',325768,'ueditor/image/202408/1722605088ca1f4e.png',1,'',1722605088),(336,1,'','dr_1_product-30','BH 60 Автоматический анализатор гликогемоглобина-1.png','png',290595,'ueditor/image/202408/1722605709f79f9b.png',1,'',1722605709),(337,1,'','dr_1_product-30','BH 60 Автоматический анализатор гликогемоглобина-2.png','png',229503,'ueditor/image/202408/1722605716efb691.png',1,'',1722605716),(338,1,'','dr_1_product-40','Многофункциональный иммунофлуоресцентный анализатор BF-300 Fluoxpert.png','png',231710,'ueditor/image/202408/1722606867b934e5.png',1,'',1722606867),(339,2,'','ueditor:ae7fcd8847aef9373fad514a5d24e0f1','image.png','png',703682,'ueditor/image/202408/1723541136fd959e.png',1,'',1723541136),(340,2,'','ueditor:ae7fcd8847aef9373fad514a5d24e0f1','image.png','png',404707,'ueditor/image/202408/17235420126e87e6.png',1,'',1723542012),(341,2,'','ueditor:ae7fcd8847aef9373fad514a5d24e0f1','image.png','png',598772,'ueditor/image/202408/17235420715f3444.png',1,'',1723542071),(342,2,'','ueditor:ae7fcd8847aef9373fad514a5d24e0f1','image.png','png',849078,'ueditor/image/202408/17235421550d6583.png',1,'',1723542155),(343,2,'','ueditor:ae7fcd8847aef9373fad514a5d24e0f1','image.png','png',588966,'ueditor/image/202408/1723542190e62845.png',1,'',1723542190),(344,2,'','ueditor:ae7fcd8847aef9373fad514a5d24e0f1','image.png','png',691944,'ueditor/image/202408/1723542205d350d1.png',1,'',1723542205),(345,2,'','ueditor:ae7fcd8847aef9373fad514a5d24e0f1','image.png','png',715940,'ueditor/image/202408/1723542249925486.png',1,'',1723542249),(346,2,'','ueditor:ae7fcd8847aef9373fad514a5d24e0f1','image.png','png',713320,'ueditor/image/202408/172354228237455a.png',1,'',1723542282),(347,2,'','ueditor:ae7fcd8847aef9373fad514a5d24e0f1','image.png','png',847501,'ueditor/image/202408/17235423344c7f3e.png',1,'',1723542334),(348,2,'','ueditor:ae7fcd8847aef9373fad514a5d24e0f1','image.png','png',766975,'ueditor/image/202408/17235424342c3c97.png',1,'',1723542434),(349,2,'','ueditor:ae7fcd8847aef9373fad514a5d24e0f1','image.png','png',1012198,'ueditor/image/202408/172354246417a58a.png',1,'',1723542464),(350,2,'','dr_1_news-48','','png',379845,'202408/05102a7b534c2b7.png',1,'{\"width\":800,\"height\":800}',1723542492);
/*!40000 ALTER TABLE `dr_attachment_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_attachment_remote`
--

DROP TABLE IF EXISTS `dr_attachment_remote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_attachment_remote` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint NOT NULL COMMENT '类型',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '访问地址',
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='远程附件表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_attachment_remote`
--

LOCK TABLES `dr_attachment_remote` WRITE;
/*!40000 ALTER TABLE `dr_attachment_remote` DISABLE KEYS */;
INSERT INTO `dr_attachment_remote` VALUES (1,2,'阿里云存储','https://wx-office-web.oss-cn-beijing.aliyuncs.com/','{\"0\":{\"path\":\"\"},\"2\":{\"accessKeyId\":\"LTAI5tJGePdvpvPLimKzQYwq\",\"accessKeySecret\":\"BerNGGLMdQhiSS20kowdKmZs3bDS7G\",\"bucket\":\"wx-office-web\",\"path\":\"\",\"image\":\"\",\"wh_prefix_image\":\"?x-oss-process=image/resize,m_pad,h_{height},w_{width},color_FFFFFF\",\"endpoint\":\"oss-cn-beijing.aliyuncs.com\"}}');
/*!40000 ALTER TABLE `dr_attachment_remote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_attachment_unused`
--

DROP TABLE IF EXISTS `dr_attachment_unused`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_attachment_unused` (
  `id` mediumint unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '会员',
  `siteid` mediumint unsigned NOT NULL COMMENT '站点id',
  `filename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文件扩展名',
  `filesize` int unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '远程附件id',
  `attachinfo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '附件信息',
  `inputtime` int unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `inputtime` (`inputtime`),
  KEY `fileext` (`fileext`),
  KEY `remote` (`remote`),
  KEY `author` (`author`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='未使用的附件表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_attachment_unused`
--

LOCK TABLES `dr_attachment_unused` WRITE;
/*!40000 ALTER TABLE `dr_attachment_unused` DISABLE KEYS */;
INSERT INTO `dr_attachment_unused` VALUES (273,1,'',1,'英文彩页合集','png',352780,'202406/fb614efd1160dc7.png',1,'http://dev.biohermes.com/admin92fd58919a38.php?s=product&c=home&m=add&catid=0',1718205514),(281,1,'',1,'Boronate Affinity on GluCoAlc Blood Glucose and Glycohemoglobin Analysis System','jpg',382235,'202407/7d8eb893ce291be.jpg',1,'http://www.biohermes.com/admin92fd58919a38.php?c=category&m=edit&id=20',1719798893),(283,1,'',1,'Boronate Affinity on AlcChek Pro Glycohemoglobin Analysis System','jpg',378450,'202407/b41bbd56f7b2ae8.jpg',1,'http://www.biohermes.com/admin92fd58919a38.php?c=category&m=edit&id=20',1719798894),(284,1,'',1,'Boronate Affinity on AIC EZ 2.0 Glvcohemoglobin Analysis System','jpg',371547,'202407/389f5f31d59b9d4.jpg',1,'http://www.biohermes.com/admin92fd58919a38.php?c=category&m=edit&id=20',1719798895);
/*!40000 ALTER TABLE `dr_attachment_unused` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_cron`
--

DROP TABLE IF EXISTS `dr_cron`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_cron` (
  `id` int NOT NULL AUTO_INCREMENT,
  `site` int NOT NULL COMMENT '站点',
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '类型',
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '参数值',
  `status` tinyint unsigned NOT NULL COMMENT '状态',
  `error` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '错误信息',
  `updatetime` int unsigned NOT NULL COMMENT '执行时间',
  `inputtime` int unsigned NOT NULL COMMENT '写入时间',
  PRIMARY KEY (`id`),
  KEY `site` (`site`),
  KEY `type` (`type`),
  KEY `status` (`status`),
  KEY `updatetime` (`updatetime`),
  KEY `inputtime` (`inputtime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='任务管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_cron`
--

LOCK TABLES `dr_cron` WRITE;
/*!40000 ALTER TABLE `dr_cron` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_cron` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_field`
--

DROP TABLE IF EXISTS `dr_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_field` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '字段别名语言',
  `fieldname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '字段名称',
  `fieldtype` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '字段类型',
  `relatedid` smallint unsigned NOT NULL COMMENT '相关id',
  `relatedname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '相关表',
  `isedit` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '是否可修改',
  `ismain` tinyint unsigned NOT NULL COMMENT '是否主表',
  `issystem` tinyint unsigned NOT NULL COMMENT '是否系统表',
  `ismember` tinyint unsigned NOT NULL COMMENT '是否会员可见',
  `issearch` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '是否可搜索',
  `disabled` tinyint unsigned NOT NULL COMMENT '禁用？',
  `setting` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '配置信息',
  `displayorder` int NOT NULL COMMENT '排序',
  PRIMARY KEY (`id`),
  KEY `list` (`relatedid`,`disabled`,`issystem`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='字段表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_field`
--

LOCK TABLES `dr_field` WRITE;
/*!40000 ALTER TABLE `dr_field` DISABLE KEYS */;
INSERT INTO `dr_field` VALUES (1,'文章标题','title','Text',1,'module',1,1,1,1,0,0,'{\"option\":{\"fieldtype\":\"VARCHAR\",\"fieldlength\":\"255\",\"value\":\"\",\"width\":\"100%\",\"css\":\"\"},\"validate\":{\"xss\":\"1\",\"required\":\"1\",\"pattern\":\"\",\"errortips\":\"\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"onblur=\\\"check_title();get_keywords(\'keywords\');\\\"\"},\"is_right\":\"0\"}',0),(2,'缩略图','thumb','File',1,'module',1,1,1,1,0,0,'{\"option\":{\"fieldtype\":\"VARCHAR\",\"fieldlength\":\"255\",\"input\":\"1\",\"ext\":\"jpg,gif,png\",\"size\":\"10\",\"attachment\":\"0\",\"image_reduce\":\"\",\"is_ext_tips\":\"0\",\"css\":\"\"},\"validate\":{\"required\":\"0\",\"pattern\":\"\",\"errortips\":\"\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}',0),(3,'关键字','keywords','Text',1,'module',1,1,1,1,1,1,'{\"option\":{\"width\":400,\"fieldtype\":\"VARCHAR\",\"fieldlength\":\"255\"},\"validate\":{\"xss\":1,\"formattr\":\" data-role=\\\"tagsinput\\\"\"}}',0),(4,'描述','description','Textarea',1,'module',1,1,1,1,1,0,'{\"option\":{\"width\":500,\"height\":60,\"fieldtype\":\"VARCHAR\",\"fieldlength\":\"255\"},\"validate\":{\"xss\":1,\"filter\":\"dr_filter_description\"}}',999),(5,'笔名','author','Text',1,'module',1,1,1,1,1,0,'{\"is_right\":1,\"option\":{\"width\":200,\"fieldtype\":\"VARCHAR\",\"fieldlength\":\"255\",\"value\":\"{name}\"},\"validate\":{\"xss\":1}}',0),(6,'内容','content','Ueditor',1,'module',1,0,1,1,0,0,'{\"option\":{\"enter\":\"0\",\"down_img\":\"1\",\"watermark\":\"0\",\"show_bottom_boot\":\"1\",\"tool_select_2\":\"1\",\"tool_select_1\":\"1\",\"tool_select_3\":\"1\",\"tool_select_4\":\"1\",\"autofloat\":\"1\",\"remove_style\":\"0\",\"div2p\":\"0\",\"duiqi\":\"1\",\"autoheight\":\"1\",\"page\":\"0\",\"mode\":\"1\",\"tool\":\"\'bold\', \'italic\', \'underline\'\",\"mode2\":\"1\",\"tool2\":\"\'bold\', \'italic\', \'underline\'\",\"mode3\":\"1\",\"tool3\":\"\'bold\', \'italic\', \'underline\'\",\"attachment\":\"0\",\"image_endstr\":\"\",\"value\":\"\",\"width\":\"100%\",\"height\":\"400\",\"css\":\"\"},\"validate\":{\"xss\":\"1\",\"required\":\"1\",\"pattern\":\"\",\"errortips\":\"\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}',0),(7,'缩略图','thumb','File',0,'category-share',1,1,1,1,1,0,'{\"option\":{\"ext\":\"jpg,gif,png,jpeg\",\"size\":10,\"input\":1,\"attachment\":0}}',999),(8,'栏目内容','content','Ueditor',0,'category-share',1,1,1,1,0,0,'{\"option\":{\"enter\":\"0\",\"down_img\":\"0\",\"show_bottom_boot\":\"1\",\"autofloat\":\"0\",\"remove_style\":\"0\",\"div2p\":\"1\",\"duiqi\":\"0\",\"autoheight\":\"0\",\"page\":\"0\",\"mode\":\"1\",\"tool\":\"\'bold\', \'italic\', \'underline\'\",\"mode2\":\"1\",\"tool2\":\"\'bold\', \'italic\', \'underline\'\",\"mode3\":\"1\",\"tool3\":\"\'bold\', \'italic\', \'underline\'\",\"attachment\":\"0\",\"image_endstr\":\"\",\"value\":\"\",\"width\":\"100%\",\"height\":\"200\",\"css\":\"\"},\"validate\":{\"xss\":\"1\",\"required\":\"1\",\"pattern\":\"\",\"errortips\":\"\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}',888),(12,'英文产品名称','title','Text',2,'module',1,1,1,1,0,0,'{\"option\":{\"fieldtype\":\"VARCHAR\",\"fieldlength\":\"255\",\"value\":\"\",\"width\":\"100%\",\"css\":\"\"},\"validate\":{\"xss\":\"1\",\"required\":\"1\",\"pattern\":\"\",\"errortips\":\"\",\"check\":\"\",\"filter\":\"\",\"tips\":\"这里填写产品的英文标题\",\"formattr\":\"onblur=\\\"check_title();get_keywords(\'keywords\');\\\"\"},\"is_right\":\"0\"}',1),(13,'产品缩略图','thumb','File',2,'module',1,1,1,1,0,0,'{\"option\":{\"fieldtype\":\"VARCHAR\",\"fieldlength\":\"255\",\"input\":\"1\",\"ext\":\"jpg,gif,png\",\"size\":\"10\",\"attachment\":\"0\",\"image_reduce\":\"2000\",\"is_ext_tips\":\"0\",\"css\":\"\"},\"validate\":{\"required\":\"0\",\"pattern\":\"\",\"errortips\":\"\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}',3),(14,'关键字','keywords','Text',2,'module',1,1,1,1,1,0,'{\"option\":{\"width\":400,\"fieldtype\":\"VARCHAR\",\"fieldlength\":\"255\"},\"validate\":{\"xss\":1,\"formattr\":\" data-role=\\\"tagsinput\\\"\"}}',99),(15,'描述','description','Textarea',2,'module',1,1,1,1,0,0,'{\"option\":{\"value\":\"\",\"fieldtype\":\"VARCHAR\",\"fieldlength\":\"255\",\"width\":\"100%\",\"height\":\"100\",\"css\":\"\"},\"validate\":{\"xss\":\"1\",\"required\":\"0\",\"pattern\":\"\",\"errortips\":\"\",\"check\":\"\",\"filter\":\"dr_filter_description\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}',99),(16,'笔名','author','Text',2,'module',1,1,1,1,1,0,'{\"is_right\":1,\"option\":{\"width\":200,\"fieldtype\":\"VARCHAR\",\"fieldlength\":\"255\",\"value\":\"{name}\"},\"validate\":{\"xss\":1}}',99),(17,'内容','content','Ueditor',2,'module',1,0,1,1,0,1,'{\"option\":{\"show_bottom_boot\":\"1\",\"tool_select_1\":\"1\",\"tool_select_4\":\"1\",\"tool_select_3\":\"1\",\"imgtitle\":\"0\",\"imgalt\":\"0\",\"watermark\":\"0\",\"imagecut_ext\":\"\",\"image_ext\":\"jpg,gif,png,webp,jpeg\",\"image_size\":\"10\",\"attach_size\":\"200\",\"attach_ext\":\"zip,rar,txt,doc\",\"video_ext\":\"mp4\",\"video_size\":\"500\",\"attachment\":\"0\",\"value\":\"\",\"width\":\"100%\",\"height\":\"400\",\"css\":\"\"},\"validate\":{\"xss\":\"1\",\"required\":\"1\",\"pattern\":\"\",\"errortips\":\"\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}',99),(20,'页面顶部图片','ymdbtp','File',0,'category-share',1,1,0,1,0,0,'{\"option\":{\"fieldtype\":\"\",\"fieldlength\":\"\",\"input\":\"1\",\"ext\":\"jpg,gif,png,webp\",\"size\":\"2\",\"attachment\":\"0\",\"image_reduce\":\"\",\"is_ext_tips\":\"0\",\"css\":\"\"},\"validate\":{\"xss\":\"1\",\"required\":\"0\",\"pattern\":\"\",\"errortips\":\"\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}',1),(23,'表格列表','bglb','Ftable',0,'category-share',1,1,0,1,0,0,'{\"option\":{\"is_add\":\"1\",\"is_first_hang\":\"0\",\"count\":\"\",\"first_cname\":\"\",\"hang\":{\"1\":{\"name\":\"\"},\"2\":{\"name\":\"\"},\"3\":{\"name\":\"\"},\"4\":{\"name\":\"\"},\"5\":{\"name\":\"\"}},\"field\":{\"1\":{\"type\":\"1\",\"name\":\"标题\",\"width\":\"200\",\"option\":\"\"},\"2\":{\"type\":\"7\",\"name\":\"一句话描述\",\"width\":\"\",\"option\":\"\"},\"3\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"4\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"5\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"6\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"7\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"8\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"9\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"10\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"11\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"12\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"13\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"14\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"15\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"16\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"17\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"18\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"19\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"20\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"21\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"22\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"23\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"24\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"25\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"26\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"27\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"28\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"29\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"30\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"}},\"attachment\":\"0\",\"image_reduce\":\"\",\"width\":\"\",\"css\":\"\"},\"validate\":{\"xss\":\"1\",\"required\":\"0\",\"pattern\":\"\",\"errortips\":\"\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}',6),(24,'图册','tuce','Files',0,'category-share',1,1,0,1,0,0,'{\"option\":{\"input\":\"1\",\"name\":\"1\",\"size\":\"2\",\"chunk\":\"1\",\"count\":\"20\",\"ext\":\"jpg,gif,png,webp\",\"attachment\":\"0\",\"image_reduce\":\"2000\",\"is_ext_tips\":\"0\",\"css\":\"\"},\"validate\":{\"required\":\"0\",\"pattern\":\"\",\"errortips\":\"\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}',6),(28,'产品介绍','product_introduction','Ueditor',2,'module',1,1,0,1,0,0,'{\"option\":{\"show_bottom_boot\":\"1\",\"tool_select_2\":\"1\",\"tool_select_1\":\"1\",\"tool_select_4\":\"1\",\"tool_select_3\":\"1\",\"imgtitle\":\"0\",\"imgalt\":\"0\",\"watermark\":\"0\",\"imagecut_ext\":\"\",\"image_ext\":\"jpg,gif,png,webp,jpeg\",\"image_size\":\"10\",\"attach_size\":\"200\",\"attach_ext\":\"zip,rar,txt,doc\",\"video_ext\":\"mp4\",\"video_size\":\"500\",\"attachment\":\"0\",\"value\":\"\",\"width\":\"\",\"height\":\"\",\"css\":\"\"},\"validate\":{\"xss\":\"1\",\"required\":\"0\",\"pattern\":\"\",\"errortips\":\"\",\"check\":\"\",\"filter\":\"\",\"tips\":\"如果此处不填写为空，产品主图会一行展示。如果填写，会与产品主图一行展示。\",\"formattr\":\"\"},\"is_right\":\"0\"}',11),(29,'公司人员','company_personnel','Ftable',0,'category-share',1,1,0,1,0,0,'{\"option\":{\"is_add\":\"1\",\"is_first_hang\":\"0\",\"count\":\"\",\"first_cname\":\"\",\"hang\":{\"1\":{\"name\":\"\"},\"2\":{\"name\":\"\"},\"3\":{\"name\":\"\"},\"4\":{\"name\":\"\"},\"5\":{\"name\":\"\"}},\"field\":{\"1\":{\"type\":\"3\",\"name\":\"头像\",\"width\":\"\",\"option\":\"\"},\"2\":{\"type\":\"1\",\"name\":\"姓名\",\"width\":\"\",\"option\":\"\"},\"3\":{\"type\":\"7\",\"name\":\"职务\",\"width\":\"\",\"option\":\"\"},\"4\":{\"type\":\"7\",\"name\":\"介绍\",\"width\":\"\",\"option\":\"\"},\"5\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"6\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"7\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"8\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"9\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"10\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"11\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"12\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"13\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"14\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"15\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"16\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"17\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"18\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"19\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"20\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"21\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"22\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"23\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"24\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"25\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"26\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"27\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"28\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"29\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"30\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"}},\"attachment\":\"0\",\"image_reduce\":\"\",\"width\":\"\",\"css\":\"\"},\"validate\":{\"xss\":\"1\",\"required\":\"0\",\"pattern\":\"\",\"errortips\":\"\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}',0),(30,'参数图册','album','Files',2,'module',1,1,0,1,0,1,'{\"option\":{\"stslt\":\"1\",\"size\":\"10\",\"count\":\"10\",\"ext\":\"jpg,gif,png\",\"attachment\":\"0\",\"image_reduce\":\"2000\",\"is_ext_tips\":\"0\",\"css\":\"\"},\"validate\":{\"required\":\"0\",\"pattern\":\"\",\"errortips\":\"\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}',6),(33,'产品标题','title','Text',1,'mform-product',1,1,1,1,0,0,'{\"option\":{\"fieldtype\":\"VARCHAR\",\"fieldlength\":\"255\",\"value\":\"\",\"width\":\"300\",\"css\":\"\"},\"validate\":{\"xss\":\"1\",\"required\":\"1\",\"pattern\":\"\",\"errortips\":\"\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}',0),(34,'作者','author','Text',1,'mform-product',1,1,1,1,1,0,'{\"is_right\":1,\"option\":{\"width\":200,\"fieldtype\":\"VARCHAR\",\"fieldlength\":\"255\"},\"validate\":{\"xss\":1}}',0),(35,'中文产品标题','cn_title','Text',1,'mform-product',1,1,0,1,0,0,'{\"option\":{\"fieldtype\":\"\",\"fieldlength\":\"\",\"value\":\"\",\"width\":\"100%\",\"css\":\"\"},\"validate\":{\"xss\":\"1\",\"required\":\"0\",\"pattern\":\"\",\"errortips\":\"\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}',2),(36,'图册','album','Files',1,'mform-product',1,1,0,1,0,0,'{\"option\":{\"size\":\"10\",\"count\":\"10\",\"ext\":\"jpg,gif,png\",\"attachment\":\"0\",\"image_reduce\":\"2000\",\"is_ext_tips\":\"0\",\"css\":\"\"},\"validate\":{\"xss\":\"1\",\"required\":\"0\",\"pattern\":\"\",\"errortips\":\"\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}',6),(37,'图册一行个数','album_lines_num','Text',1,'mform-product',1,1,0,1,0,0,'{\"option\":{\"fieldtype\":\"\",\"fieldlength\":\"\",\"value\":\"2\",\"width\":\"\",\"css\":\"\"},\"validate\":{\"xss\":\"1\",\"required\":\"0\",\"pattern\":\"\",\"errortips\":\"\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}',7),(38,'产品介绍','product_introduction','Ueditor',1,'mform-product',1,1,0,1,0,0,'{\"option\":{\"show_bottom_boot\":\"1\",\"tool_select_2\":\"1\",\"tool_select_1\":\"1\",\"tool_select_4\":\"1\",\"tool_select_3\":\"1\",\"imgtitle\":\"0\",\"imgalt\":\"0\",\"watermark\":\"0\",\"imagecut_ext\":\"\",\"image_ext\":\"jpg,gif,png,webp,jpeg\",\"image_size\":\"10\",\"attach_size\":\"200\",\"attach_ext\":\"zip,rar,txt,doc\",\"video_ext\":\"mp4\",\"video_size\":\"500\",\"attachment\":\"0\",\"value\":\"\",\"width\":\"\",\"height\":\"\",\"css\":\"\"},\"validate\":{\"xss\":\"1\",\"required\":\"0\",\"pattern\":\"\",\"errortips\":\"\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}',11),(40,'文字列表','wenziliebiao','Ftable',0,'category-share',1,1,0,1,0,0,'{\"option\":{\"is_add\":\"1\",\"is_first_hang\":\"0\",\"count\":\"\",\"first_cname\":\"\",\"hang\":{\"1\":{\"name\":\"\"},\"2\":{\"name\":\"\"},\"3\":{\"name\":\"\"},\"4\":{\"name\":\"\"},\"5\":{\"name\":\"\"}},\"field\":{\"1\":{\"type\":\"1\",\"name\":\"列表内容\",\"width\":\"100%\",\"option\":\"\"},\"2\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"3\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"4\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"5\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"6\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"7\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"8\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"9\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"10\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"11\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"12\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"13\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"14\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"15\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"16\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"17\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"18\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"19\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"20\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"21\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"22\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"23\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"24\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"25\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"26\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"27\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"28\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"29\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"30\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"}},\"attachment\":\"0\",\"image_reduce\":\"\",\"width\":\"\",\"css\":\"\"},\"validate\":{\"xss\":\"1\",\"required\":\"0\",\"pattern\":\"\",\"errortips\":\"\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}',0),(41,'IFCC证书','ifcczhengshu','Files',0,'category-share',1,1,0,1,0,0,'{\"option\":{\"name\":\"1\",\"size\":\"2\",\"count\":\"30\",\"ext\":\"jpg,gif,png\",\"attachment\":\"0\",\"image_reduce\":\"2000\",\"is_ext_tips\":\"0\",\"css\":\"\"},\"validate\":{\"required\":\"0\",\"pattern\":\"\",\"errortips\":\"\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}',0),(42,'NGSP证书','ngspzhengshu','Files',0,'category-share',1,1,0,1,0,0,'{\"option\":{\"name\":\"1\",\"size\":\"10\",\"count\":\"30\",\"ext\":\"jpg,gif,png\",\"attachment\":\"0\",\"image_reduce\":\"2000\",\"is_ext_tips\":\"0\",\"css\":\"\"},\"validate\":{\"required\":\"0\",\"pattern\":\"\",\"errortips\":\"\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}',0),(43,'Registration Certificate证书','reg_cezs','Files',0,'category-share',1,1,0,1,0,0,'{\"option\":{\"name\":\"1\",\"size\":\"10\",\"count\":\"30\",\"ext\":\"jpg,gif,png\",\"attachment\":\"0\",\"image_reduce\":\"\",\"is_ext_tips\":\"0\",\"css\":\"\"},\"validate\":{\"xss\":\"1\",\"required\":\"0\",\"pattern\":\"\",\"errortips\":\"\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}',0),(46,'首页推荐产品排序值','sytjcppxz','Text',2,'module',1,1,0,1,0,0,'{\"option\":{\"fieldtype\":\"\",\"fieldlength\":\"\",\"value\":\"\",\"width\":\"\",\"css\":\"\"},\"validate\":{\"xss\":\"1\",\"required\":\"0\",\"pattern\":\"\",\"errortips\":\"\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}',0),(47,'产品视频','product_video','Text',2,'module',1,1,0,1,0,0,'{\"option\":{\"fieldtype\":\"\",\"fieldlength\":\"\",\"value\":\"\",\"width\":\"100%\",\"css\":\"\"},\"validate\":{\"xss\":\"1\",\"required\":\"0\",\"pattern\":\"\",\"errortips\":\"\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}',7),(48,'焦点图主标题','jdtzbt','Text',0,'category-share',1,1,0,1,0,0,'{\"option\":{\"fieldtype\":\"\",\"fieldlength\":\"\",\"value\":\"\",\"width\":\"100%\",\"css\":\"\"},\"validate\":{\"xss\":\"1\",\"required\":\"0\",\"pattern\":\"\",\"errortips\":\"\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}',0);
/*!40000 ALTER TABLE `dr_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_linkage`
--

DROP TABLE IF EXISTS `dr_linkage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_linkage` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '菜单名称',
  `type` tinyint unsigned NOT NULL,
  `code` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `module` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='联动菜单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_linkage`
--

LOCK TABLES `dr_linkage` WRITE;
/*!40000 ALTER TABLE `dr_linkage` DISABLE KEYS */;
INSERT INTO `dr_linkage` VALUES (1,'中国地区',0,'address');
/*!40000 ALTER TABLE `dr_linkage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_linkage_data_1`
--

DROP TABLE IF EXISTS `dr_linkage_data_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_linkage_data_1` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `site` mediumint unsigned NOT NULL COMMENT '站点id',
  `pid` mediumint unsigned NOT NULL DEFAULT '0' COMMENT '上级id',
  `pids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有上级id',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '栏目名称',
  `cname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '别名',
  `child` tinyint unsigned DEFAULT '0' COMMENT '是否有下级',
  `hidden` tinyint unsigned DEFAULT '0' COMMENT '前端隐藏',
  `childids` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '下级所有id',
  `displayorder` mediumint DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cname` (`cname`),
  KEY `hidden` (`hidden`),
  KEY `list` (`site`,`displayorder`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='联动菜单数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_linkage_data_1`
--

LOCK TABLES `dr_linkage_data_1` WRITE;
/*!40000 ALTER TABLE `dr_linkage_data_1` DISABLE KEYS */;
INSERT INTO `dr_linkage_data_1` VALUES (1,1,0,'0','北京','bj',0,0,'1',0),(2,1,0,'0','成都','cd',0,0,'2',0);
/*!40000 ALTER TABLE `dr_linkage_data_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_mail_smtp`
--

DROP TABLE IF EXISTS `dr_mail_smtp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_mail_smtp` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `port` mediumint unsigned NOT NULL,
  `displayorder` smallint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `displayorder` (`displayorder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='邮件账户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_mail_smtp`
--

LOCK TABLES `dr_mail_smtp` WRITE;
/*!40000 ALTER TABLE `dr_mail_smtp` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_mail_smtp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_member`
--

DROP TABLE IF EXISTS `dr_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_member` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '邮箱地址',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '手机号码',
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '加密密码',
  `login_attr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '登录附加验证字符',
  `salt` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '随机加密码',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '姓名',
  `money` decimal(10,2) unsigned NOT NULL COMMENT 'RMB',
  `freeze` decimal(10,2) unsigned NOT NULL COMMENT '冻结RMB',
  `spend` decimal(10,2) unsigned NOT NULL COMMENT '消费RMB总额',
  `score` int unsigned NOT NULL COMMENT '积分',
  `experience` int unsigned NOT NULL COMMENT '经验值',
  `regip` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '注册ip',
  `regtime` int unsigned NOT NULL COMMENT '注册时间',
  `randcode` mediumint unsigned NOT NULL COMMENT '随机验证码',
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `email` (`email`),
  KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_member`
--

LOCK TABLES `dr_member` WRITE;
/*!40000 ALTER TABLE `dr_member` DISABLE KEYS */;
INSERT INTO `dr_member` VALUES (1,'admin@admin.com','','孙柄晨','ffa581f7220ee44dfdd34fcb43d9ac79','527fcb49d03b9eebea980995bd07cb9d','72b32a1f75','创始人',1000000.00,0.00,0.00,1000000,1000000,'222.135.74.77-42832',1715995054,0),(2,'biohermes@biohermes.com','13000000000','biohermes','3f6c0bfe8c12bb794c83bcf1baadc8ed','59ee631dcc5a3550bc9469c279be3934','8df707a948','biohermes',0.00,0.00,0.00,0,0,'222.135.75.86-35936',1716881525,0);
/*!40000 ALTER TABLE `dr_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_member_data`
--

DROP TABLE IF EXISTS `dr_member_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_member_data` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `is_admin` tinyint unsigned DEFAULT '0' COMMENT '是否是管理员',
  `is_lock` tinyint unsigned DEFAULT '0' COMMENT '账号锁定标识',
  `is_verify` tinyint unsigned DEFAULT '0' COMMENT '审核标识',
  `is_mobile` tinyint unsigned DEFAULT '0' COMMENT '手机认证标识',
  `is_email` tinyint unsigned DEFAULT '0' COMMENT '邮箱认证标识',
  `is_avatar` tinyint unsigned DEFAULT '0' COMMENT '头像上传标识',
  `is_complete` tinyint unsigned DEFAULT '0' COMMENT '完善资料标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_member_data`
--

LOCK TABLES `dr_member_data` WRITE;
/*!40000 ALTER TABLE `dr_member_data` DISABLE KEYS */;
INSERT INTO `dr_member_data` VALUES (1,1,0,1,1,0,0,1),(2,1,0,0,0,0,0,0);
/*!40000 ALTER TABLE `dr_member_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_member_group`
--

DROP TABLE IF EXISTS `dr_member_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_member_group` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户组名称',
  `price` decimal(10,2) NOT NULL COMMENT '售价',
  `unit` tinyint unsigned NOT NULL COMMENT '价格单位:1积分，0金钱',
  `days` int unsigned NOT NULL COMMENT '生效时长',
  `apply` tinyint unsigned NOT NULL COMMENT '是否申请',
  `register` tinyint unsigned NOT NULL COMMENT '是否允许注册',
  `setting` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户组配置',
  `displayorder` smallint NOT NULL COMMENT '排序',
  PRIMARY KEY (`id`),
  KEY `displayorder` (`displayorder`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户组表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_member_group`
--

LOCK TABLES `dr_member_group` WRITE;
/*!40000 ALTER TABLE `dr_member_group` DISABLE KEYS */;
INSERT INTO `dr_member_group` VALUES (1,'注册用户',0.00,0,0,1,1,'{\"level\":{\"auto\":\"0\",\"unit\":\"0\",\"price\":\"0\"},\"verify\":\"0\"}',0);
/*!40000 ALTER TABLE `dr_member_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_member_group_index`
--

DROP TABLE IF EXISTS `dr_member_group_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_member_group_index` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `uid` int unsigned NOT NULL COMMENT '用户id',
  `gid` smallint unsigned NOT NULL COMMENT '用户组id',
  `lid` smallint unsigned NOT NULL COMMENT '用户组等级id',
  `stime` int unsigned NOT NULL COMMENT '开通时间',
  `etime` int unsigned NOT NULL COMMENT '结束时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `lid` (`lid`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户组归属表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_member_group_index`
--

LOCK TABLES `dr_member_group_index` WRITE;
/*!40000 ALTER TABLE `dr_member_group_index` DISABLE KEYS */;
INSERT INTO `dr_member_group_index` VALUES (1,1,1,0,0,0),(2,2,1,0,1716881525,0);
/*!40000 ALTER TABLE `dr_member_group_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_member_group_verify`
--

DROP TABLE IF EXISTS `dr_member_group_verify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_member_group_verify` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
  `gid` smallint unsigned NOT NULL COMMENT '用户组id',
  `lid` smallint unsigned NOT NULL COMMENT '用户组等级id',
  `status` tinyint unsigned NOT NULL COMMENT '状态',
  `price` decimal(10,2) DEFAULT NULL COMMENT '已费用',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '自定义字段信息',
  `inputtime` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户组申请审核';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_member_group_verify`
--

LOCK TABLES `dr_member_group_verify` WRITE;
/*!40000 ALTER TABLE `dr_member_group_verify` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_member_group_verify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_member_level`
--

DROP TABLE IF EXISTS `dr_member_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_member_level` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `gid` smallint unsigned NOT NULL COMMENT '用户id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `stars` int unsigned NOT NULL COMMENT '图标',
  `value` int unsigned NOT NULL COMMENT '升级值要求',
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '备注',
  `apply` tinyint unsigned NOT NULL COMMENT '是否允许升级',
  `setting` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '等级配置',
  `displayorder` smallint NOT NULL COMMENT '排序',
  PRIMARY KEY (`id`),
  KEY `value` (`value`),
  KEY `apply` (`apply`),
  KEY `gid` (`gid`),
  KEY `displayorder` (`displayorder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户组级别表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_member_level`
--

LOCK TABLES `dr_member_level` WRITE;
/*!40000 ALTER TABLE `dr_member_level` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_member_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_member_login`
--

DROP TABLE IF EXISTS `dr_member_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_member_login` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint unsigned DEFAULT NULL COMMENT '会员uid',
  `type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '登录方式',
  `loginip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '登录Ip',
  `logintime` int unsigned NOT NULL COMMENT '登录时间',
  `useragent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '客户端信息',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `loginip` (`loginip`),
  KEY `logintime` (`logintime`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='登录日志记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_member_login`
--

LOCK TABLES `dr_member_login` WRITE;
/*!40000 ALTER TABLE `dr_member_login` DISABLE KEYS */;
INSERT INTO `dr_member_login` VALUES (1,2,'','222.135.75.86',1716881525,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0');
/*!40000 ALTER TABLE `dr_member_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_member_menu`
--

DROP TABLE IF EXISTS `dr_member_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_member_menu` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint unsigned NOT NULL COMMENT '上级菜单id',
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '菜单语言名称',
  `uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'uri字符串',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '外链地址',
  `mark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '菜单标识',
  `hidden` tinyint unsigned DEFAULT NULL COMMENT '是否隐藏',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图标标示',
  `group` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '用户组划分',
  `site` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '站点划分',
  `client` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '终端划分',
  `displayorder` int DEFAULT NULL COMMENT '排序值',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `mark` (`mark`),
  KEY `hidden` (`hidden`),
  KEY `uri` (`uri`),
  KEY `displayorder` (`displayorder`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户组菜单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_member_menu`
--

LOCK TABLES `dr_member_menu` WRITE;
/*!40000 ALTER TABLE `dr_member_menu` DISABLE KEYS */;
INSERT INTO `dr_member_menu` VALUES (1,0,'账号管理','','','user',0,'fa fa-user','','{\"1\":\"1\",\"2\":\"2\"}','{\"pc\":\"pc\",\"mobile\":\"mobile\"}',0),(2,1,'资料修改','account/index','','',0,'fa fa-cog','','{\"1\":\"1\",\"2\":\"2\"}','{\"pc\":\"pc\",\"mobile\":\"mobile\"}',0),(3,1,'头像设置','account/avatar','','',0,'fa fa-smile-o','','{\"1\":\"1\",\"2\":\"2\"}','{\"pc\":\"pc\",\"mobile\":\"mobile\"}',0),(4,1,'手机认证','account/mobile','','',0,'fa fa-mobile','','{\"1\":\"1\",\"2\":\"2\"}','{\"pc\":\"pc\",\"mobile\":\"mobile\"}',0),(5,1,'邮箱认证','account/email','','',0,'fa fa-envelope','','{\"1\":\"1\",\"2\":\"2\"}','{\"pc\":\"pc\",\"mobile\":\"mobile\"}',0),(6,1,'修改密码','account/password','','',0,'fa fa-expeditedssl','','{\"1\":\"1\",\"2\":\"2\"}','{\"pc\":\"pc\",\"mobile\":\"mobile\"}',0),(7,1,'账号绑定','account/oauth','','',0,'fa fa-qq','','{\"1\":\"1\",\"2\":\"2\"}','{\"pc\":\"pc\",\"mobile\":\"mobile\"}',0),(8,1,'登录记录','account/login','','',0,'fa fa-calendar','','{\"1\":\"1\",\"2\":\"2\"}','{\"pc\":\"pc\",\"mobile\":\"mobile\"}',0),(9,0,'内容管理','','','content-module',0,'fa fa-th-large','','{\"1\":\"1\",\"2\":\"2\"}','{\"pc\":\"pc\",\"mobile\":\"mobile\"}',0),(10,9,'文章管理','news/home/index','','module-news',0,'fa fa-sticky-note','','{\"1\":\"1\",\"2\":\"2\"}','{\"pc\":\"pc\",\"mobile\":\"mobile\"}',-1),(11,9,'产品管理','product/home/index','','module-product',0,'bi bi-archive-fill','','{\"1\":\"1\",\"2\":\"2\"}','{\"pc\":\"pc\",\"mobile\":\"mobile\"}',-1);
/*!40000 ALTER TABLE `dr_member_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_member_oauth`
--

DROP TABLE IF EXISTS `dr_member_oauth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_member_oauth` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` mediumint unsigned NOT NULL COMMENT '会员uid',
  `oid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'OAuth返回id',
  `oauth` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '运营商',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '头像',
  `unionid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'unionId',
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '昵称',
  `expire_at` int unsigned NOT NULL COMMENT '绑定时间',
  `access_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '保留',
  `refresh_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '保留',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='快捷登录用户OAuth授权表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_member_oauth`
--

LOCK TABLES `dr_member_oauth` WRITE;
/*!40000 ALTER TABLE `dr_member_oauth` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_member_oauth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_member_setting`
--

DROP TABLE IF EXISTS `dr_member_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_member_setting` (
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户属性参数表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_member_setting`
--

LOCK TABLES `dr_member_setting` WRITE;
/*!40000 ALTER TABLE `dr_member_setting` DISABLE KEYS */;
INSERT INTO `dr_member_setting` VALUES ('auth2','{\"1\":{\"public\":[]}}'),('config','{\"edit_name\":\"1\",\"edit_mobile\":\"1\",\"logintime\":\"\",\"verify_msg\":\"\",\"pagesize\":\"\",\"pagesize_mobile\":\"\",\"pagesize_api\":\"\",\"pwdlen\":\"0\",\"user2pwd\":null,\"pwdpreg\":\"\"}'),('login','{\"code\":\"1\"}'),('register','{\"close\":\"0\",\"groupid\":\"1\",\"field\":[\"username\",\"email\"],\"cutname\":\"0\",\"unprefix\":\"\",\"code\":\"1\",\"verify\":\"\",\"preg\":\"\",\"notallow\":\"\"}');
/*!40000 ALTER TABLE `dr_member_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_member_verify`
--

DROP TABLE IF EXISTS `dr_member_verify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_member_verify` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint unsigned NOT NULL COMMENT '会员uid',
  `tid` tinyint unsigned NOT NULL COMMENT '类别',
  `status` tinyint unsigned NOT NULL COMMENT '状态',
  `content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '自定义字段信息',
  `result` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '处理结果',
  `updatetime` int unsigned NOT NULL COMMENT '处理时间',
  `inputtime` int unsigned NOT NULL COMMENT '提交时间',
  PRIMARY KEY (`id`),
  KEY `tid` (`tid`),
  KEY `uid` (`uid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员审核表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_member_verify`
--

LOCK TABLES `dr_member_verify` WRITE;
/*!40000 ALTER TABLE `dr_member_verify` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_member_verify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_module`
--

DROP TABLE IF EXISTS `dr_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_module` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `site` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '站点划分',
  `dirname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '目录名称',
  `share` tinyint unsigned DEFAULT NULL COMMENT '是否共享模块',
  `setting` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '配置信息',
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '评论信息',
  `disabled` tinyint(1) NOT NULL DEFAULT '0' COMMENT '禁用？',
  `displayorder` smallint DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dirname` (`dirname`),
  KEY `disabled` (`disabled`),
  KEY `displayorder` (`displayorder`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='模块表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_module`
--

LOCK TABLES `dr_module` WRITE;
/*!40000 ALTER TABLE `dr_module` DISABLE KEYS */;
INSERT INTO `dr_module` VALUES (1,'{\"1\":{\"html\":null,\"theme\":\"default\",\"domain\":\"\",\"template\":\"default\",\"urlrule\":\"1\",\"is_cat\":null,\"show_title\":\"[第{page}页{join}]{title}{join}{catpname}{join}{SITE_NAME}\",\"show_keywords\":\"\",\"show_description\":\"\",\"list_title\":null,\"list_keywords\":null,\"list_description\":null,\"search_title\":\"[第{page}页{join}][{keyword}{join}][{param}{join}]{SITE_NAME}\",\"search_keywords\":\"\",\"search_description\":\"\",\"module_title\":null,\"module_keywords\":null,\"module_description\":null},\"2\":{\"html\":0,\"theme\":\"default\",\"domain\":\"\",\"template\":\"default\"}}','news',1,'{\"module_category_hide\":\"0\",\"sync_category\":\"0\",\"pcatpost\":\"1\",\"updatetime_select\":\"0\",\"merge\":\"0\",\"right_field\":\"1\",\"desc_auto\":\"0\",\"kws_limit\":\"10\",\"desc_limit\":\"100\",\"desc_clear\":\"0\",\"hits_min\":\"\",\"hits_max\":\"\",\"verify_num\":\"10\",\"verify_msg\":\"\",\"delete_msg\":\"\",\"is_hide_search_bar\":\"0\",\"order\":\"updatetime DESC\",\"search_time\":\"updatetime\",\"search_first_field\":\"title\",\"is_op_more\":\"0\",\"list_field\":{\"title\":{\"use\":\"1\",\"name\":\"文章标题\",\"width\":\"350\",\"func\":\"title\"},\"catid\":{\"use\":\"1\",\"name\":\"栏目\",\"width\":\"100\",\"center\":\"1\",\"func\":\"\"},\"inputtime\":{\"use\":\"1\",\"name\":\"录入时间\",\"width\":\"\",\"center\":\"1\",\"func\":\"\"},\"updatetime\":{\"use\":\"1\",\"name\":\"更新时间\",\"width\":\"160\",\"center\":\"1\",\"func\":\"datetime\"},\"hits\":{\"use\":\"1\",\"name\":\"浏览数\",\"width\":\"100\",\"center\":\"1\",\"func\":\"\"}},\"flag\":null,\"param\":null,\"search\":{\"use\":\"1\",\"catsync\":\"0\",\"indexsync\":\"0\",\"show_seo\":\"0\",\"search_404\":\"0\",\"search_param\":\"0\",\"complete\":\"0\",\"is_like\":\"1\",\"is_double_like\":\"0\",\"max\":\"0\",\"length\":\"4\",\"maxlength\":\"\",\"param_join\":\"-\",\"param_rule\":\"0\",\"param_field\":\"\",\"param_join_field\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"param_join_default_value\":\"0\",\"tpl_field\":\"\",\"field\":\"title,description\"},\"module_index_html\":0}','',0,0),(2,'{\"1\":{\"html\":null,\"theme\":\"default\",\"domain\":\"\",\"template\":\"default\",\"urlrule\":\"1\",\"is_cat\":null,\"show_title\":\"[第{page}页{join}]{title}{join}{catpname}{join}{SITE_NAME}\",\"show_keywords\":\"\",\"show_description\":\"\",\"list_title\":null,\"list_keywords\":null,\"list_description\":null,\"search_title\":\"[第{page}页{join}][{keyword}{join}][{param}{join}]{SITE_NAME}\",\"search_keywords\":\"\",\"search_description\":\"\",\"module_title\":null,\"module_keywords\":null,\"module_description\":null},\"2\":{\"html\":0,\"theme\":\"default\",\"domain\":\"\",\"template\":\"default\"}}','product',1,'{\"module_category_hide\":\"0\",\"sync_category\":\"0\",\"pcatpost\":\"0\",\"updatetime_select\":\"0\",\"merge\":\"0\",\"right_field\":\"2\",\"desc_auto\":\"1\",\"kws_limit\":\"10\",\"desc_limit\":\"500\",\"update_psize\":\"100\",\"desc_clear\":\"0\",\"hits_min\":\"\",\"hits_max\":\"\",\"verify_num\":\"10\",\"verify_msg\":\"\",\"delete_msg\":\"\",\"is_hide_search_bar\":\"0\",\"order\":\"updatetime DESC\",\"search_time\":\"updatetime\",\"search_first_field\":\"title\",\"is_op_more\":\"0\",\"list_field\":{\"id\":{\"use\":\"1\",\"name\":\"Id\",\"width\":\"60\",\"center\":\"1\",\"func\":\"\"},\"displayorder\":{\"use\":\"1\",\"name\":\"排列值\",\"width\":\"80\",\"func\":\"\"},\"title\":{\"use\":\"1\",\"name\":\"产品名称\",\"width\":\"200\",\"func\":\"title\"},\"cn_title\":{\"use\":\"1\",\"name\":\"中文产品名称\",\"width\":\"\",\"func\":\"\"},\"catid\":{\"use\":\"1\",\"name\":\"栏目\",\"width\":\"\",\"func\":\"\"},\"sytjcppxz\":{\"use\":\"1\",\"name\":\"首页推荐产品排序值\",\"width\":\"\",\"func\":\"\"},\"updatetime\":{\"use\":\"1\",\"name\":\"更新时间\",\"width\":\"\",\"func\":\"\"},\"product_video\":{\"use\":\"1\",\"name\":\"产品视频\",\"width\":\"\",\"func\":\"\"}},\"flag\":{\"1\":{\"name\":\"首页产品推荐\",\"icon\":\"\",\"role\":{\"2\":1,\"3\":1}}},\"param\":null,\"search\":{\"use\":\"1\",\"catsync\":\"0\",\"indexsync\":\"0\",\"show_seo\":\"0\",\"search_404\":\"0\",\"search_param\":\"0\",\"complete\":\"0\",\"is_like\":\"1\",\"is_double_like\":\"0\",\"max\":\"0\",\"length\":\"0\",\"maxlength\":\"0\",\"param_join\":\"-\",\"param_rule\":\"0\",\"param_field\":\"\",\"param_join_field\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"param_join_default_value\":\"0\",\"tpl_field\":\"\",\"field\":\"title,keywords\"}}','',0,0);
/*!40000 ALTER TABLE `dr_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_site`
--

DROP TABLE IF EXISTS `dr_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_site` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '站点名称',
  `domain` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '站点域名',
  `setting` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '站点配置',
  `disabled` tinyint(1) NOT NULL DEFAULT '0' COMMENT '禁用？',
  `displayorder` smallint DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `disabled` (`disabled`),
  KEY `displayorder` (`displayorder`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='站点表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_site`
--

LOCK TABLES `dr_site` WRITE;
/*!40000 ALTER TABLE `dr_site` DISABLE KEYS */;
INSERT INTO `dr_site` VALUES (1,'BioHermes','ru.biohermes.com','{\"config\":{\"logo\":\"38\",\"SITE_NAME\":\"BioHermes\",\"SITE_ICP\":\"\",\"SITE_TONGJI\":\"\",\"SITE_CLOSE\":\"0\",\"SITE_INDEX_HTML\":\"0\",\"SITE_CLOSE_MSG\":\"网站升级中....\",\"SITE_LANGUAGE\":\"zh-cn\",\"SITE_TEMPLATE\":\"bohuisi-v2-ru\",\"SITE_TIMEZONE\":\"8\",\"SITE_TIME_FORMAT\":\"\",\"SITE_THEME\":\"bohuisi-v2-ru\",\"SITE_DOMAIN\":\"ru.biohermes.com\",\"SITE_INDEX_TIME\":\"10\"},\"seo\":{\"SITE_SEOJOIN\":\"_\",\"SITE_TITLE\":\"\",\"SITE_KEYWORDS\":\"HbA1C Test, COVID-19 Test,SRAS-COV-2 Antigen Test,SRAS-COV-2 Neutralizing Antibodies Test\",\"SITE_DESCRIPTION\":\"We are manufacturer of HbA1C Test in China, if you want to buy  COVID-19 Test, SRAS-COV-2 Antigen Test, SRAS-COV-2 Neutralizing Antibodies Test, please contact us. We sincerely hope to establish business relationships and cooperate with you.\",\"SITE_URLRULE\":\"2\",\"list_pagesize\":\"10\",\"list_mpagesize\":\"10\"},\"image\":{\"cache_path\":\"/var/www/BiohermesV2/uploadfile/thumb/\",\"cache_url\":\"\"},\"param\":{\"sylbt\":\"\"},\"webpath\":null,\"mobile\":{\"mode\":\"-1\",\"auto2\":\"0\",\"domain\":\"\",\"dirname\":\"\",\"auto\":\"0\",\"tohtml\":0,\"not_pad\":\"0\"}}',0,0);
/*!40000 ALTER TABLE `dr_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_urlrule`
--

DROP TABLE IF EXISTS `dr_urlrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_urlrule` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint unsigned NOT NULL COMMENT '规则类型',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '规则名称',
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '详细规则',
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='URL规则表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_urlrule`
--

LOCK TABLES `dr_urlrule` WRITE;
/*!40000 ALTER TABLE `dr_urlrule` DISABLE KEYS */;
INSERT INTO `dr_urlrule` VALUES (1,2,'共享模块搜索','{\"search\":\"{modname}/search.html\",\"search_page\":\"{modname}/search/{param}.html\",\"catjoin\":\"/\"}'),(2,3,'共享栏目和内容页规则','{\"list\":\"{pdirname}/\",\"list_page\":\"{pdirname}/list-{page}.html\",\"show\":\"{otdirname}/show-{id}.html\",\"show_page\":\"{otdirname}/show-{id}-{page}.html\",\"catjoin\":\"/\"}');
/*!40000 ALTER TABLE `dr_urlrule` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-14 12:17:20
