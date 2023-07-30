-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: fantasy_travel
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `paquetes_turisticos`
--

DROP TABLE IF EXISTS `paquetes_turisticos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paquetes_turisticos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `duracion_dias` int NOT NULL,
  `seguro_viajero` varchar(2) NOT NULL,
  `media_pension` varchar(2) NOT NULL,
  `precio` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paquetes_turisticos`
--

LOCK TABLES `paquetes_turisticos` WRITE;
/*!40000 ALTER TABLE `paquetes_turisticos` DISABLE KEYS */;
INSERT INTO `paquetes_turisticos` VALUES (17,'Noreste Argentino',10,'Si','Si',250),(18,'Sur Argentino',14,'Si','Si',380),(19,'Costa Atlantica',15,'Si','Si',150),(20,'Cataratas del Iguazu',8,'Si','Si',180),(21,'Litoral Argentino',12,'Si','Si',200),(22,'Brasil',15,'Si','No',450),(23,'Mediterraneo',20,'Si','No',1250),(24,'Sudeste Asaiatico',30,'Si','No',1950),(25,'Oceania',25,'Si','No',1825);
/*!40000 ALTER TABLE `paquetes_turisticos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_paquetes`
--

DROP TABLE IF EXISTS `usuario_paquetes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_paquetes` (
  `codigo` int NOT NULL AUTO_INCREMENT,
  `cantidad_personas` int NOT NULL,
  `fecha_salida` date NOT NULL,
  `forma_pago` varchar(45) NOT NULL,
  `precio_total` double NOT NULL,
  `id_paquete` int NOT NULL,
  `id_usuario` int NOT NULL,
  PRIMARY KEY (`codigo`),
  UNIQUE KEY `id_UNIQUE` (`codigo`),
  KEY `id_paquete_idx` (`id_paquete`),
  KEY `id_usuario_idx` (`id_usuario`),
  CONSTRAINT `id_paquete` FOREIGN KEY (`id_paquete`) REFERENCES `paquetes_turisticos` (`id`),
  CONSTRAINT `id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_paquetes`
--

LOCK TABLES `usuario_paquetes` WRITE;
/*!40000 ALTER TABLE `usuario_paquetes` DISABLE KEYS */;
INSERT INTO `usuario_paquetes` VALUES (10,2,'2023-07-28','Tarjeta de Crédito',760,18,1),(11,2,'2023-12-12','Transferencia',500,17,1),(12,4,'2024-01-02','Tarjeta de Crédito',600,19,1),(13,3,'2023-11-01','Transferencia',540,20,1),(14,2,'2023-12-12','Depósito',400,21,1),(15,2,'2024-02-05','Tarjeta de Crédito',900,22,1),(16,2,'2023-07-28','Tarjeta de Crédito',2500,23,1),(17,1,'2024-05-03','Tarjeta de Crédito',1950,24,1),(18,1,'2024-04-06','Tarjeta de Crédito',1250,23,1),(20,2,'2023-12-04','Tarjeta de Crédito',500,17,1),(21,3,'2024-04-06','Transferencia',540,20,1);
/*!40000 ALTER TABLE `usuario_paquetes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `dni` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'prueba','123','juan','Perez','juanP@gmail.com','32792158'),(2,'admin','123','Ricardo','Gomez','ricardoGomez@gmail.com','29481304'),(4,'pardo','123','Pedro','Cardo','Pedro.cardo@gmail.com','38498069'),(6,'darior','123','Dario','Ortiz','darioOrtiz@gmail.com','24685684'),(7,'sancho','123','Carlos','Sanchez','sanchezcarlos@yahoo.com','11356868');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-29 20:24:09
