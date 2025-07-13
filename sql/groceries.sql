-- MySQL dump 10.13  Distrib 8.0.36, for macos14 (arm64)
--
-- Host: 127.0.0.1    Database: exampledb
-- ------------------------------------------------------
-- Server version	8.0.41-google

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `groceries`
--

DROP TABLE IF EXISTS `groceries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groceries` (
  `item_name` varchar(100) NOT NULL,
  `price` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`item_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groceries`
--

LOCK TABLES `groceries` WRITE;
/*!40000 ALTER TABLE `groceries` DISABLE KEYS */;
INSERT INTO `groceries` VALUES ('Apples',3,10,'https://upload.wikimedia.org/wikipedia/commons/1/15/Red_Apple.jpg'),('Beef Steak',15,1,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTC4_iM9_tITg95VLZLIR0cdpno7yxHLxdBmQ&s'),('Bell Peppers',4,4,'https://cdn.britannica.com/12/147312-050-BEC6A59E/Bell-peppers.jpg'),('Bread',4,6,'https://ichef.bbc.co.uk/ace/standard/1600/food/recipes/paul_hollywoods_crusty_83536_16x9.jpg.webp'),('Butter',5,2,'https://cdn.britannica.com/27/122027-050-EAA86783/Butter.jpg'),('Carrots',3,9,'https://healthyschoolrecipes.com/wp-content/uploads/2018/11/carrots.jpg'),('Cereal',7,2,'https://www.kelloggs.com/content/dam/Asia/kelloggs_in/images/articles/benefits-of-cereal.jpg'),('Cheese',8,5,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvgwrrqrYYFRUIAQtzLv2ZmBiabSYuK43tQQ&s'),('Chicken Breast',10,2,'https://fgtp.com.au/cdn/shop/products/breasts.jpg?v=1581232402'),('Cucumbers',2,7,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQT19UUTLodCwKT1sEjgfdbWn8WLfiJ3D2d4Q&s'),('Eggs',7,3,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxbQwGVPuqXB2yk4He63MSI_CdnjwFT9al0g&s'),('Grapes',5,3,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTltPkn-aasgobd2r2EbfCuNm98N1Xvtqt3dA&s'),('Green Beans',3,7,'https://media-cdn2.greatbritishchefs.com/media/juidxweh/img83268.whqc_1426x713q80.jpg'),('Lettuce',3,3,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQq6R6otgjZOKtzbRAb_fVdEyOnkjDRnD9NCw&s'),('Milk',5,4,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdLYLrpcL-2TKZDY0eljDthboDPMytCCRgVg&s'),('Mushrooms',4,4,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlfSkS0qOtZGth18BNZnMj-HOLXcryUvwGbA&s'),('Onions',2,10,'https://www.lovefoodhatewaste.com/sites/default/files/styles/16_9_two_column/public/2022-08/Onion-sh1154249161.jpg.webp?itok=mJob5A8b'),('Orange Juice',6,3,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQg4k0qKVXnq_vOpDsOjbS_r7lp0NrJ7bBFJA&s'),('Pasta',5,4,'https://static01.nyt.com/images/2025/07/03/multimedia/DT-Summer-Pasta-with-Zucchini-and-Basil-mblv/DT-Summer-Pasta-with-Zucchini-and-Basil-mblv-jumbo.jpg'),('Potatoes',4,10,'https://www.lovefoodhatewaste.com/sites/default/files/styles/twitter_card_image/public/2022-08/Potatoes-shutterstock-1721688538.jpg.webp?itok=4hLqSjDi'),('Rice',6,5,'https://cdn.britannica.com/17/176517-050-6F2B774A/Pile-uncooked-rice-grains-Oryza-sativa.jpg'),('Spinach',3,5,'https://aisle5ive.com/cdn/shop/products/spinach.jpg?v=1637390691'),('Strawberries',6,2,'https://www.dole.com/sites/default/files/media/2025-01/strawberries.png'),('Tofu',4,4,'https://tyberrymuch.com/wp-content/uploads/2023/01/types-of-tofu-cubed-index-800x800.jpg'),('Tomatoes',3,8,'https://foodcare.in/cdn/shop/files/tomatoes-canva.webp?v=1725364526'),('Tuna Can',5,3,'https://images.immediate.co.uk/production/volatile/sites/30/2022/03/Canned-tuna-02-0181b73.jpg?quality=90&resize=440,400'),('Watermelon',10,1,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaFt6Iz3D590bKd1YDJROFYTQz_H57VLft_Q&s'),('Yogurt',4,6,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLlX-SZ_7XtBnf9a0DZHJSDbv_leVoFjYyuQ&s');
/*!40000 ALTER TABLE `groceries` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-13 13:10:27
