/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.8.3-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: mysitedb
-- ------------------------------------------------------
-- Server version	11.8.3-MariaDB-0+deb13u1 from Debian

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `tCoches`
--

DROP TABLE IF EXISTS `tCoches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tCoches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marca` varchar(20) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `url_imagen` varchar(1000) NOT NULL,
  `velocidad_máxima` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tCoches`
--

LOCK TABLES `tCoches` WRITE;
/*!40000 ALTER TABLE `tCoches` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `tCoches` VALUES
(1,'Chevrolet','Camaro ZL1','https://www.autonocion.com/wp-content/uploads/2017/02/Chevrolet-Camaro-ZL1-1LE-1.jpg','318km/h'),
(2,'Lamborghini','Huracán','https://fotografias.lasexta.com/clipping/cmsimages02/2018/02/26/ECC31727-52C0-40E3-84E5-D11CA5CB5F72/98.jpg?crop=1164,655,x138,y0&width=1900&height=1069&optimize=high&format=webply','325km/h'),
(3,'Porsche','911 GT3 RS','https://mediaassets.pca.org/pages/pca/images/content/02-PCA-Porsche-911-GT3-RS.jpg','312km/h'),
(4,'BMW','M4 CS','https://images.ecestaticos.com/2BpwqM1tEY0zR1cZ0kVBpomJ92U=/304x385:2226x1502/1440x810/filters:fill(white):format(jpg)/f.elconfidencial.com%2Foriginal%2F067%2Fd6f%2Fd4f%2F067d6fd4ff0363b221b2287ac9d81ac0.jpg','302km/h'),
(5,'McLaren','P1 GTR','https://d1gl66oyi6i593.cloudfront.net/wp-content/uploads/2022/11/subasta-McLaren-P1-GTR-Lanzante.jpg','362km/h');
/*!40000 ALTER TABLE `tCoches` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `tComentarios`
--

DROP TABLE IF EXISTS `tComentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tComentarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comentario` varchar(200) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_coche` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_usuario_comentario` (`id_usuario`),
  KEY `fk_coche_comentario` (`id_coche`),
  CONSTRAINT `fk_coche_comentario` FOREIGN KEY (`id_coche`) REFERENCES `tCoches` (`id`),
  CONSTRAINT `fk_usuario_comentario` FOREIGN KEY (`id_usuario`) REFERENCES `tUsuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tComentarios`
--

LOCK TABLES `tComentarios` WRITE;
/*!40000 ALTER TABLE `tComentarios` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `tComentarios` VALUES
(1,'Es un modelo muy agresivo y estético con una grán comodidad interna y muy buena velocidad, me da miedo probarlo a máxima velocidad',3,1),
(2,'Es un coche muy rápido y una locura de modelo, es increíble lo bien que se ve, me encantan sus colores metálicos brillantes',2,2),
(3,'Me parece un modelo sobre valorado, la marca Lamborghini brilla por su moda, no por su calidad >:(',5,2),
(4,'Siempre he conducido coches de la marcha BMW y pro fin me pude comprar un gran modelo, me encanta su diseño y su máxima velocidad me encanta >:)',5,4),
(5,'Sinceramente es un coche muy rápido pero no me gusta su diseño, es muy bajo e incomodo para mi gusto',1,5),
(6,'Es el mejor coche del mundo, es super rápido, super bonito, super cómodo y super seguro, no hay mejor coche que este :D',1,5),
(7,'Desde pequeño siempre he querido este coche y hace un mes por fin lo adquirí, estoy muy contento con el, es el diseño que tanto me encanta, muy comodo y super rápido',4,3);
/*!40000 ALTER TABLE `tComentarios` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `tUsuarios`
--

DROP TABLE IF EXISTS `tUsuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tUsuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `gmail` varchar(50) NOT NULL,
  `contraseña` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tUsuarios`
--

LOCK TABLES `tUsuarios` WRITE;
/*!40000 ALTER TABLE `tUsuarios` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `tUsuarios` VALUES
(1,'Daniel','Díaz','daniel@gmail.com','1234'),
(2,'Lucía','Rodriguez','lucia@gmail.com','1234'),
(3,'Emma','Lopez','emma@gmail.com','1234'),
(4,'Diego','Rodriguez','diego@gmail.com','1234'),
(5,'Gabriel','De Oliveira','gabriel@gmail.com','1234');
/*!40000 ALTER TABLE `tUsuarios` ENABLE KEYS */;
UNLOCK TABLES;
commit;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2025-10-27 10:05:34
