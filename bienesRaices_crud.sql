-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: bienesraices_crud
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `propiedades`
--

DROP TABLE IF EXISTS `propiedades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `propiedades` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `imagen` varchar(200) DEFAULT NULL,
  `descripccion` varchar(301) DEFAULT NULL,
  `habitaciones` int DEFAULT NULL,
  `wc` decimal(2,1) DEFAULT NULL,
  `estacionamiento` int DEFAULT NULL,
  `creado` date DEFAULT NULL,
  `vendedor_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_propiedades_vendedores_idx` (`vendedor_id`),
  CONSTRAINT `fk_propiedades_vendedores` FOREIGN KEY (`vendedor_id`) REFERENCES `vendedores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propiedades`
--

LOCK TABLES `propiedades` WRITE;
/*!40000 ALTER TABLE `propiedades` DISABLE KEYS */;
INSERT INTO `propiedades` VALUES (72,'Casa Familiar con Jardín Amplio(Actualizado)',3500000.50,'f0aca16dce4c0baae08957ef97cad488.jpg','Cómoda casa ideal para familias, con 3 habitaciones, 2 baños, sala, comedor y un jardín amplio perfecto para reuniones al aire libre. Ubicada en una colonia tranquila y cercana a escuelas, supermercados y parques.',3,2.0,1,'2024-12-01',3),(73,'Penthouse de Lujo Frente al Mar',5000000.00,'274f55514582c64cac4e045c5e4a13e2.jpg','Espectacular penthouse con vistas al océano. Ofrece 2 niveles, 4 recámaras, 3 baños, terraza privada, jacuzzi y acceso directo a la playa. Acabados de alta calidad y seguridad las 24 horas.',4,3.0,2,'2024-12-01',4),(74,'Casa de Campo con Paisajes Naturales',500000.50,'87dab88af088d86c4a8d10db717a69df.jpg','Encantadora casa de campo rodeada de naturaleza, con 2 habitaciones, 2 baños, terraza techada y chimenea. Perfecta para quienes buscan tranquilidad y conexión con el entorno natural. A solo 30 minutos de la ciudad.',2,2.0,1,'2024-12-01',1),(75,'Cabaña Rústica en Zona Montañosa',350000.00,'9deef40662a4b3623d4fdab057c6390e.jpg','Cabaña de estilo rústico construida en madera y piedra, ideal para escapadas de fin de semana. Tiene 3 habitaciones, 2 baños, chimenea, cocina equipada y un extenso terreno con hermosas vistas a las montañas.',3,2.0,1,'2024-12-01',5),(77,'Casa en la playa de Puerto Escondido Oaxaca',5000000.00,'323ded0426b49477067a22e3016acee4.jpg','Hermosa casa en la playa de Oaxaca, un lugar muy traquilo y seguro',5,2.5,5,'2024-12-01',1),(78,'casa vintage',500000.00,'8634c80994d279817925a023269e2a34.jpg','hermosa casa pequeña pero cómoda, con todos los servicios y perfecta para una familia de 4 integrantes, cerca de la natulareza, ubicada en zona boscosa.',4,2.5,2,'2024-12-03',1),(80,'xsxsx',23423423.00,'fab3295aa5b13422ced5c60540a79be9.jpg','ewrwerwerwerwer',3,3.0,3,'2024-12-04',1),(81,'mmmm',234234.00,'13e1ad4b2a9f03bbf3725d7e768f6bc0.jpg','ewrewrwerwer',2,3.0,2,'2024-12-04',2),(82,'intento2',234234.00,'456a82ecf697f8abeac596c8e10d476c.jpg','vamos a ver si jala esta vez',3,3.0,3,'2024-12-04',12),(83,'Casa intento 3, por que el 2 si jalo bien',234234.00,'e74df4d8001f21b4298658f3bbc0d4da.jpg','vamos a ver si jala este tambien ',3,3.0,3,'2024-12-04',11),(84,'valiando caracteres de vendedor',213213.00,'0857ccf18598afd427d9a2f42bad9ae3.jpg','xdxd',3,3.0,3,'2024-12-04',13);
/*!40000 ALTER TABLE `propiedades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(50) DEFAULT NULL,
  `password` char(61) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'correo@correo.com','$2y$10$4lpY1ERuwyIlTJviKxa0kOiD3bWKg7aA/BUtmYIafUlvTGUyuTM1O');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendedores`
--

DROP TABLE IF EXISTS `vendedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendedores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `telefono` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendedores`
--

LOCK TABLES `vendedores` WRITE;
/*!40000 ALTER TABLE `vendedores` DISABLE KEYS */;
INSERT INTO `vendedores` VALUES (1,'Guillermo','Aguilar','123456789'),(2,'Abel','Jimenez','987654321'),(3,'Nani','Ramirez','9513456578'),(4,'Axel','Vera','9518976556'),(5,'Arisai(ACTUALIZADO)','Lopez','9513425634'),(11,'Jacob','Espinosa','9436798'),(12,'Alejandro','Larios','9514567689'),(13,'validando caracteres','valiendo caractres','3423423423');
/*!40000 ALTER TABLE `vendedores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-04  3:37:33
