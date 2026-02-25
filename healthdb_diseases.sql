-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: healthdb
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `diseases`
--

DROP TABLE IF EXISTS `diseases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diseases` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `symptoms` text,
  `causes` text,
  `remedies` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diseases`
--

LOCK TABLES `diseases` WRITE;
/*!40000 ALTER TABLE `diseases` DISABLE KEYS */;
INSERT INTO `diseases` VALUES (1,'Diabetes','You might feel very thirsty, need to pee often, or feel really tired.','It happens when your body can’t use insulin properly or doesn’t make enough.','You can manage it by staying active, eating healthy, and checking your blood sugar regularly.'),(2,'Hypertension','Some people feel headaches, dizziness, or get tired quickly.','It’s often linked to too much salt, stress, or family history.','Keep it in check by lowering salt, staying calm, and seeing your doctor regularly.'),(3,'Anemia','You may feel weak, look pale, or get out of breath easily.','It’s usually because your body doesn’t have enough iron.','Eating iron-rich foods or taking supplements can help you feel better.'),(4,'Asthma','You might find it hard to breathe, especially when it’s dusty or cold.','Things like allergies or pollution can trigger it.','Inhalers and avoiding your triggers can help you stay in control.'),(5,'Obesity','Carrying too much weight can make you feel tired and affect your joints.','It often comes from overeating and not moving enough.','Regular exercise and a healthy diet can really make a difference.'),(6,'Depression','You may feel sad all the time or lose interest in things you used to enjoy.','It’s often caused by stress, life events, or brain chemistry.','Talking to someone and getting support or medication can really help.'),(7,'Flu (Influenza)','You might get a sudden fever, body aches, sore throat, or feel really tired.','It spreads easily from one person to another through the air.','Getting rest, drinking fluids, and medicine can help you recover.'),(8,'Fever','You feel hot, sweaty, and may have chills.','Usually, it’s your body fighting off an infection.','Rest, drink water, and take fever medicine if needed.'),(9,'Common Cold','You could get a runny nose, cough, or sore throat.','It’s usually caused by a virus and spreads through touch or air.','Stay warm, rest, and drink fluids to feel better soon.'),(10,'Dengue','You may have a high fever, body pain, and a rash.','It’s spread by mosquito bites, especially in rainy seasons.','Drink lots of fluids, rest well, and avoid mosquito bites.'),(11,'Chickenpox','It starts with a fever, followed by itchy red spots or blisters.','A virus causes it, and it spreads easily.','Stay home, use lotion for the itching, and avoid scratching.'),(12,'Jaundice','You’ll notice yellow skin or eyes and dark-colored urine.','It’s related to liver problems or infections.','Get medical advice, stay hydrated, and avoid alcohol.'),(13,'Migraine','It’s a strong headache that may come with nausea or light sensitivity.','Stress, hormones, or certain foods can bring it on.','Rest in a quiet room, use a cold pack, and take your medicine if needed.'),(14,'Allergy','You may sneeze, itch, or get rashes when exposed to certain things.','It’s your body reacting to something it sees as harmful, like pollen or dust.','Avoiding those things and using allergy meds can help a lot.'),(15,'Acidity','You might feel a burning sensation in your chest or stomach.','Eating spicy or oily food often causes it.','Drinking water, avoiding heavy meals, and antacids can help you feel better.'),(16,'Back Pain','Your back might hurt, feel stiff, or have spasms.','Bad posture or heavy lifting are usually the cause.','Gentle stretching, resting, and good posture go a long way.'),(17,'Pneumonia','You could have a bad cough, fever, and feel very tired.','It’s a serious lung infection caused by bacteria or viruses.','Antibiotics, rest, and plenty of fluids usually help.'),(18,'Skin Rashes','Your skin may look red, feel itchy, or have bumps.','It can happen from allergies, heat, or infections.','Using creams and staying away from irritants helps calm the skin.'),(19,'Constipation','It’s hard to pass stool and your stomach may feel heavy.','It’s usually from not eating enough fiber or drinking enough water.','Eating fruits, drinking water, and staying active can solve it.'),(20,'Dehydration','You feel tired, dizzy, and your mouth feels dry.','It happens when you lose more water than you take in.','Drink water regularly, especially in hot weather or after exercise.'),(21,'Nausea','You feel like vomiting or your stomach feels upset.','It can happen from an empty stomach, motion, or infections.','Try sipping fluids or eating light meals until it passes.'),(22,'Malaria','You’ll feel feverish, shiver, and sweat a lot.','It’s passed on by mosquito bites in certain regions.','Medication and plenty of rest help you recover.'),(23,'Sore Throat','It may hurt to swallow and your throat might feel scratchy.','Usually caused by a viral infection or overuse.','Warm water gargles, rest, and fluids can soothe it.'),(24,'Headache','You feel pain in your head or around your eyes and neck.','Stress, eye strain, or not drinking enough water may cause it.','Relax, drink water, and take painkillers if needed.'),(25,'Indigestion','You might feel full, bloated, or burp a lot after eating.','Eating too fast, too much, or certain foods can cause it.','Eat smaller meals, chew properly, and avoid fried food.');
/*!40000 ALTER TABLE `diseases` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-25 13:57:56
