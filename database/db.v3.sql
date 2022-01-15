-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.5.13-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para db_ihc
CREATE DATABASE IF NOT EXISTS `db_ihc` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_ihc`;

-- Volcando estructura para tabla db_ihc.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `rating` decimal(2,1) NOT NULL,
  `price` decimal(6,2) NOT NULL,
  `img_url` varchar(255) NOT NULL,
  `category` int(11) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `marca` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category` (`category`),
  KEY `marca` (`marca`),
  CONSTRAINT `marca_ibfk_1` FOREIGN KEY (`marca`) REFERENCES `product_marcas` (`id_marca`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category`) REFERENCES `product_categories` (`idcategory`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla db_ihc.products: ~5 rows (aproximadamente)
DELETE FROM `products`;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `name`, `rating`, `price`, `img_url`, `category`, `descripcion`, `marca`) VALUES
	(3, 'Apple EarPods', 4.0, 26.99, 'https://coolboxpe.vtexassets.com/arquivos/ids/167269-1200-auto?v=637305357297470000&width=1200&height=auto&aspect=true', 6, NULL, NULL),
	(4, 'Bose QuietComfort 35', 4.5, 349.00, 'https://coolboxpe.vtexassets.com/arquivos/ids/180764-1200-auto?v=637496103843700000&width=1200&height=auto&aspect=true', 6, NULL, NULL),
	(5, 'Sony Noise', 4.5, 348.00, 'https://falabella.scene7.com/is/image/FalabellaPE/17457509_01?wid=800&hei=800&qlt=70', 6, NULL, NULL),
	(6, 'Samsung Galaxy Buds', 4.0, 199.99, 'https://coolboxpe.vtexassets.com/arquivos/ids/190686-1200-auto?v=637674032750900000&width=1200&height=auto&aspect=true', 6, NULL, NULL),
	(7, 'COWIN E7 Active Noise ', 4.5, 59.99, 'https://cdn.shopify.com/s/files/1/0233/0902/5360/products/13204734_1_560x560@2x.jpg?v=1616414906', 6, NULL, NULL),
	(8, 'Imaco Alisador de Cabello', 3.1, 59.00, 'https://wongfood.vteximg.com.br/arquivos/ids/344473-1000-1000/Imaco-Alisador-de-Cabello-HS2198-1-72982.jpg?v=637153772566500000', 7, NULL, NULL),
	(9, 'Siegen Secadora de Cabello', 4.0, 49.00, 'https://wongfood.vteximg.com.br/arquivos/ids/344171-1000-1000/Siegen-Secadora-de-Cabello-Domestica-SG-3005-1200W-1-87855.jpg?v=637152480787730000', 7, NULL, NULL),
	(10, 'Rodillo Facial para Skincare Multiusos', 4.3, 34.90, 'https://falabella.scene7.com/is/image/FalabellaPE/18486131_1?wid=1500&hei=1500&qlt=70', 7, NULL, NULL),
	(11, 'Peine para Cabello Think Pink', 4.5, 39.00, 'https://morangesalonstore.com.pe/wp-content/uploads/2020/11/100.jpg', 7, NULL, NULL),
	(12, 'Silla de Oficina Reclinable  Zykok', 4.4, 169.00, 'https://i.linio.com/p/761943f4bd48d50d6cde4e792689170e-product.webp', 5, NULL, NULL),
	(13, 'Juego De Sala 3-2-1 Cuerpos hogar', 4.8, 2349.00, 'https://i.linio.com/p/682c8353cf759d8f3145fd81558b8a91-product.webp', 5, NULL, NULL),
	(14, 'Colchon Inflable Dura-Bean Deluxe', 3.9, 549.90, 'https://i.linio.com/p/1eea76f5c5b408214b929464bf1fbb87-product.webp', 5, NULL, NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Volcando estructura para tabla db_ihc.product_categories
CREATE TABLE IF NOT EXISTS `product_categories` (
  `idcategory` int(11) NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(255) NOT NULL,
  PRIMARY KEY (`idcategory`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla db_ihc.product_categories: ~6 rows (aproximadamente)
DELETE FROM `product_categories`;
/*!40000 ALTER TABLE `product_categories` DISABLE KEYS */;
INSERT INTO `product_categories` (`idcategory`, `categoryname`) VALUES
	(1, 'watches'),
	(2, 'laptop'),
	(3, 'smartphone'),
	(4, 'headphone'),
	(5, 'hogar'),
	(6, 'tecnología'),
	(7, 'belleza');
/*!40000 ALTER TABLE `product_categories` ENABLE KEYS */;

-- Volcando estructura para tabla db_ihc.product_marcas
CREATE TABLE IF NOT EXISTS `product_marcas` (
  `id_marca` int(11) NOT NULL AUTO_INCREMENT,
  `marca` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_marca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla db_ihc.product_marcas: ~0 rows (aproximadamente)
DELETE FROM `product_marcas`;
/*!40000 ALTER TABLE `product_marcas` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_marcas` ENABLE KEYS */;

-- Volcando estructura para tabla db_ihc.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) unsigned NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla db_ihc.sessions: ~0 rows (aproximadamente)
DELETE FROM `sessions`;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` (`session_id`, `expires`, `data`) VALUES
	('ZPVsCK0RO7szo6z_adnoK_QtQIb3wMIL', 1642309862, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"flash":{}}');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;

-- Volcando estructura para procedimiento db_ihc.SP_PRODUCTOS_BUSCAR
DELIMITER //
CREATE PROCEDURE `SP_PRODUCTOS_BUSCAR`(
	IN `PI_ID_PRODUCTO` INT
)
BEGIN
	SELECT 
		P.id,
		P.name,
		P.rating,
		P.price,
		P.img_url,
		C.idcategory,
		C.categoryname,
		P.descripcion,
		M.id_marca,
		M.marca
	FROM products P
	LEFT JOIN product_categories C
		ON C.idcategory = P.category
	LEFT JOIN product_marcas M
		ON M.id_marca = P.marca
	WHERE P.id = PI_ID_PRODUCTO;
END//
DELIMITER ;

-- Volcando estructura para procedimiento db_ihc.SP_PRODUCTOS_LISTAR
DELIMITER //
CREATE PROCEDURE `SP_PRODUCTOS_LISTAR`()
    COMMENT 'Lista Productos'
BEGIN
	SELECT 
		P.id,
		P.name,
		P.rating,
		P.price,
		P.img_url,
		C.idcategory,
		C.categoryname,
		P.descripcion,
		M.id_marca,
		M.marca
	FROM products P
	LEFT JOIN product_categories C
		ON C.idcategory = P.category
	LEFT JOIN product_marcas M
		ON M.id_marca = P.marca;
END//
DELIMITER ;

-- Volcando estructura para procedimiento db_ihc.SP_PRODUCTOS_LISTA_CATEGORIA
DELIMITER //
CREATE PROCEDURE `SP_PRODUCTOS_LISTA_CATEGORIA`(
	IN `PI_CATEGORIA` INT
)
    COMMENT 'lista por categoria'
BEGIN
	SELECT 
		P.id,
		P.name,
		P.rating,
		P.price,
		P.img_url,
		C.idcategory,
		C.categoryname,
		P.descripcion,
		M.id_marca,
		M.marca
	FROM products P
	LEFT JOIN product_categories C
		ON C.idcategory = P.category
	LEFT JOIN product_marcas M
		ON M.id_marca = P.marca
	WHERE P.category = PI_CATEGORIA;
END//
DELIMITER ;

-- Volcando estructura para tabla db_ihc.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `rol` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla db_ihc.users: ~10 rows (aproximadamente)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `username`, `email`, `password`, `rol`) VALUES
	(3, 'wefewhf', 'wefeiuwf@gmail.com', '$2a$10$43F6yQOIbQ3/aER/XB2d4OP9qsV1K988Y4/OOE5OWVFDHk6pB7AY2', NULL),
	(4, 'amin', 'admin@admin.com', '$2a$10$HQYJU216Wu3RtKPdbR8aqu/04gNUdxn6EpcWc73vn5BiHoVCFCnES', NULL),
	(5, 'rafael', 'rafaelgoulartb@gmail.com', '$2a$10$nxrkZIRafbTsgtJTcFfgleVkuuH/MmzwGUvbIhH0VKb4AdUgDJawq', NULL),
	(6, 'opresor', 'opresor@protonmail.com', '$2a$10$RgS9EYuOxhwODKmTgBlK9OOUbDE8bmcRRf8Yi4kraLzfVpdkW5lT.', NULL),
	(7, 'ewfwf', 'wfewefw@ewfwfw.com', '$2a$10$OWbDkDphF.L11kIGiz1YzuXj7tYzs9b1hh/yHp9UkY2ciMlQ1CHqW', NULL),
	(8, 'wfgewfgwegrhgol', 'rafael@gmail.com', '$2a$10$alIXffXgTI7nWm.5Nlcnnuhq8EvZOxMGoR8IHK.48iPB/bEXvCae.', NULL),
	(9, 'test', 'test@test.com', '$2a$10$G6k09m2y3kLkaNRV4K0.POKsZYaYIaEb86VJWGBYtXZ2FOF6iptKW', NULL),
	(10, 'rafaell', 'rafael@gmail.comm', '$2a$10$ozcBdNwEdS6q2I1NqFdRdeFwPbDKQJHkOce3.f3G3rLjxU82I9nrS', NULL),
	(11, 'rafaelll', 'rafael@gmail.commmmm', '$2a$10$WtFCu09VzN6Y9B.lhiklCuNFGPiu5CFwXyUtPLWByGfNrsrziyEeK', NULL),
	(12, 'rafael_f', 'rafael_f@eu.com', '$2a$10$2tp5oXwOTTx9cYw27ztIF.bU/fNDixmLyVqB3Jrfd32AVrHuQgS4G', NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
