/*
 Navicat MySQL Data Transfer

 Source Server         : zapatos
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : pruebakimcavi

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 14/07/2022 05:57:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for categoria_kimcavid
-- ----------------------------
DROP TABLE IF EXISTS `categoria_kimcavid`;
CREATE TABLE `categoria_kimcavid`  (
  `ID_CATEGORIA_KIMCAVID` int(0) NOT NULL AUTO_INCREMENT,
  `NOMBRE_CATEGORIA_KIMCAVID` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `STATUS_CATEGORIA_KIMCAVID` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`ID_CATEGORIA_KIMCAVID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categoria_kimcavid
-- ----------------------------
INSERT INTO `categoria_kimcavid` VALUES (1, 'Hombre', b'1');
INSERT INTO `categoria_kimcavid` VALUES (2, 'Mujer', b'0');
INSERT INTO `categoria_kimcavid` VALUES (3, 'Infantil15', b'1');
INSERT INTO `categoria_kimcavid` VALUES (4, 'Adulto14', b'0');
INSERT INTO `categoria_kimcavid` VALUES (7, 'Señora', b'1');
INSERT INTO `categoria_kimcavid` VALUES (8, 'Puberto123', b'1');
INSERT INTO `categoria_kimcavid` VALUES (9, 'BEBE', b'0');
INSERT INTO `categoria_kimcavid` VALUES (14, 'feo', b'0');
INSERT INTO `categoria_kimcavid` VALUES (15, 'Joven', b'0');
INSERT INTO `categoria_kimcavid` VALUES (16, 'Hombre12', b'0');
INSERT INTO `categoria_kimcavid` VALUES (17, 'Hombrefeliz', b'0');
INSERT INTO `categoria_kimcavid` VALUES (18, 'Niño puberto 123', b'0');

-- ----------------------------
-- Table structure for cliente_kimcavid
-- ----------------------------
DROP TABLE IF EXISTS `cliente_kimcavid`;
CREATE TABLE `cliente_kimcavid`  (
  `RFC_CLIENTE_KIMCAVID` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `NOMBRE_CLIENTE_KIMCAVID` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `AP1_CLIENTE_KIMCAVID` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `AP2_CLIENTE_KIMCAVID` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `TELEFONO_CLIENTE_KIMCAVID` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `CORREO_CLIENTE_KIMCAVID` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ID_ROL_CLIENTE_KIMCAVID` int(0) NOT NULL DEFAULT 1,
  `CONTRASENIA_CLIENTE_KIMCAVID` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `STATUS_CLIENTE_KIMCAVID` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`RFC_CLIENTE_KIMCAVID`) USING BTREE,
  INDEX `ROL_CLIENTE`(`ID_ROL_CLIENTE_KIMCAVID`) USING BTREE,
  CONSTRAINT `ROL_CLIENTE` FOREIGN KEY (`ID_ROL_CLIENTE_KIMCAVID`) REFERENCES `rol_kimcavid` (`ID_ROL_KIMCAVID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cliente_kimcavid
-- ----------------------------
INSERT INTO `cliente_kimcavid` VALUES ('ERST4578', 'ANTONIO', 'CASTILLO', 'GARCIA', '5521478963', 'antonio@gmail.com', 1, 'aguadelimon', '1');
INSERT INTO `cliente_kimcavid` VALUES ('GERW1234', 'GERARDO', 'CASTRO', 'RUEDA', '5548849889', 'ger@gmail.com', 1, '321654', '1');
INSERT INTO `cliente_kimcavid` VALUES ('RERG010209', 'MANUEL', 'CASTAÑEDA', 'SANATANA', '5550606487', 'nike.wike@hotmail.com', 1, '123456', '1');

-- ----------------------------
-- Table structure for compra_kimcavid
-- ----------------------------
DROP TABLE IF EXISTS `compra_kimcavid`;
CREATE TABLE `compra_kimcavid`  (
  `ID_COMPRA_KIMCAVID` int(0) NOT NULL AUTO_INCREMENT,
  `FOLIO_COMPRA_KIMCAVID` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `CLAVE_PROVEEDOR_KIMCAVID` varchar(13) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `FECHA_HORA_COMPRA` datetime(0) NOT NULL,
  `TOTAL_COMPRA_KIMCAVID` float NOT NULL,
  `STATUS_COMPRA` bit(1) NOT NULL,
  PRIMARY KEY (`ID_COMPRA_KIMCAVID`) USING BTREE,
  INDEX `PROV_COM`(`CLAVE_PROVEEDOR_KIMCAVID`) USING BTREE,
  CONSTRAINT `PROV_COM` FOREIGN KEY (`CLAVE_PROVEEDOR_KIMCAVID`) REFERENCES `proveedor_kimcavid` (`CLAVE_PROVEEDOR_KIMCAVID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of compra_kimcavid
-- ----------------------------
INSERT INTO `compra_kimcavid` VALUES (1, '874512', 'AFRO9966', '2022-07-05 02:05:15', 1200, b'1');
INSERT INTO `compra_kimcavid` VALUES (2, '457896', 'AFRO9966', '2022-07-05 02:10:25', 6000, b'1');
INSERT INTO `compra_kimcavid` VALUES (3, '457896', 'AFRO9966', '2022-07-05 02:06:25', 2500, b'1');
INSERT INTO `compra_kimcavid` VALUES (4, 'ADSD5878', 'AFRO9966', '2022-07-05 02:06:25', 5555, b'1');
INSERT INTO `compra_kimcavid` VALUES (5, 'ABCD123', 'AFRO9966', '2022-07-13 13:32:30', 7777, b'1');
INSERT INTO `compra_kimcavid` VALUES (8, 'hdc', 'AFRO9966', '2022-07-13 14:02:44', 0, b'1');
INSERT INTO `compra_kimcavid` VALUES (9, 'FDS432', 'ZDSE7898', '2022-07-13 14:18:08', 8888, b'1');
INSERT INTO `compra_kimcavid` VALUES (10, 'TRES7898', 'AFRO9966', '2022-07-13 16:30:54', 4444, b'1');
INSERT INTO `compra_kimcavid` VALUES (11, 'AAABBB', 'AFRO9966', '2022-07-13 16:51:40', 33333, b'1');
INSERT INTO `compra_kimcavid` VALUES (12, 'BBBCCC', 'ASRS8795', '2022-07-13 16:52:18', 8787, b'1');

-- ----------------------------
-- Table structure for contacto_kimcavid
-- ----------------------------
DROP TABLE IF EXISTS `contacto_kimcavid`;
CREATE TABLE `contacto_kimcavid`  (
  `ID_CONTACTO` int(0) NOT NULL AUTO_INCREMENT,
  `NOMBRE_CONTACTO` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `CORREO_CONTACTO` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `TELEFONO_CONTACTO` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `MENSAJE` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`ID_CONTACTO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contacto_kimcavid
-- ----------------------------
INSERT INTO `contacto_kimcavid` VALUES (1, ' Manuel Castaneda Santana', 'mike.nike335@gmail.com', '556460305', 'Muy buena pagina web');
INSERT INTO `contacto_kimcavid` VALUES (2, 'Cesar André Sanchez Morones', 'andre@gmail.com', '5524223156', 'Muy buena pagina web');

-- ----------------------------
-- Table structure for detalle_compra_kimcavid
-- ----------------------------
DROP TABLE IF EXISTS `detalle_compra_kimcavid`;
CREATE TABLE `detalle_compra_kimcavid`  (
  `ID_DETALLE_COMPRA_KIMCAVID` int(0) NOT NULL AUTO_INCREMENT,
  `ID_COMPRA_KIMCAVID` int(0) NOT NULL,
  `CLAVE_PRODUCTO_KIMCAVID` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `CANTIDAD_COMPRA_KIMCAVID` tinyint(0) NOT NULL,
  `PRECIO_COMPRA_KIMCAVID` float NOT NULL,
  `STATUS_DETALLE_COMPRA` bit(1) NOT NULL,
  PRIMARY KEY (`ID_DETALLE_COMPRA_KIMCAVID`) USING BTREE,
  INDEX `DC_COMPRA`(`ID_COMPRA_KIMCAVID`) USING BTREE,
  INDEX `PROD_DC`(`CLAVE_PRODUCTO_KIMCAVID`) USING BTREE,
  CONSTRAINT `DC_COMPRA` FOREIGN KEY (`ID_COMPRA_KIMCAVID`) REFERENCES `compra_kimcavid` (`ID_COMPRA_KIMCAVID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `PROD_DC` FOREIGN KEY (`CLAVE_PRODUCTO_KIMCAVID`) REFERENCES `producto_kimcavid` (`CLAVE_PRODUCTO_KIMCAVID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of detalle_compra_kimcavid
-- ----------------------------
INSERT INTO `detalle_compra_kimcavid` VALUES (1, 1, '0001', 2, 3999, b'1');
INSERT INTO `detalle_compra_kimcavid` VALUES (2, 2, '0002', 2, 4000, b'1');
INSERT INTO `detalle_compra_kimcavid` VALUES (3, 1, '0003', 2, 12500, b'0');

-- ----------------------------
-- Table structure for detalle_venta_kimcavid
-- ----------------------------
DROP TABLE IF EXISTS `detalle_venta_kimcavid`;
CREATE TABLE `detalle_venta_kimcavid`  (
  `FOLIO_VENTA_KIMCAVID` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `CLAVE_PRODUCTO_KIMCAVID` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `CANTIDAD_VENTA_KIMCAVID` int(0) NOT NULL,
  `PRECIO_VENTA_KIMCAVID` float NOT NULL,
  `TOTAL_VENTA_KIMCAVID` float NOT NULL,
  `DESCUENTO_VENTA_KIMCAVID` float NOT NULL,
  `STATUS_DETALLE_VENTA` bit(1) NOT NULL,
  PRIMARY KEY (`FOLIO_VENTA_KIMCAVID`, `CLAVE_PRODUCTO_KIMCAVID`) USING BTREE,
  INDEX `VEN_PRODC`(`CLAVE_PRODUCTO_KIMCAVID`) USING BTREE,
  INDEX `FOLIO_VENTA_KIMCAVID`(`FOLIO_VENTA_KIMCAVID`) USING BTREE,
  CONSTRAINT `VEN_FV` FOREIGN KEY (`FOLIO_VENTA_KIMCAVID`) REFERENCES `venta_kimcavid` (`FOLIO_VENTA_KIMCAVID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `VEN_PRODC` FOREIGN KEY (`CLAVE_PRODUCTO_KIMCAVID`) REFERENCES `producto_kimcavid` (`CLAVE_PRODUCTO_KIMCAVID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of detalle_venta_kimcavid
-- ----------------------------
INSERT INTO `detalle_venta_kimcavid` VALUES ('EMMA1234', '0001', 2, 3000, 3200, 0, b'1');
INSERT INTO `detalle_venta_kimcavid` VALUES ('MANU1234', '0002', 3, 4000, 4500, 0, b'1');
INSERT INTO `detalle_venta_kimcavid` VALUES ('YEST7894', '0003', 4, 1000, 2000, 0, b'0');

-- ----------------------------
-- Table structure for empleado_kimcavid
-- ----------------------------
DROP TABLE IF EXISTS `empleado_kimcavid`;
CREATE TABLE `empleado_kimcavid`  (
  `ID_EMPLEADO_KIMCAVID` int(0) NOT NULL AUTO_INCREMENT,
  `NOMBRE_EMPLEADO_KIMCAVID` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `AP1_EMPLEADO_KIMCAVID` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `AP2_EMPLEADO_KIMCAVID` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `TELEFONO_EMPLEADO_KIMCAVID` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `CORREO_EMPLEADO_KIMCAVID` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ID_ROL_KIMCAVID` int(0) NOT NULL,
  `CONTRASENIA_EMPLEADO_KIMCAVID` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `STATUS_EMPLEADO_KIMCAVID` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`ID_EMPLEADO_KIMCAVID`) USING BTREE,
  INDEX `ROL_EMPLEADO`(`ID_ROL_KIMCAVID`) USING BTREE,
  CONSTRAINT `fk_id_rol` FOREIGN KEY (`ID_ROL_KIMCAVID`) REFERENCES `rol_kimcavid` (`ID_ROL_KIMCAVID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of empleado_kimcavid
-- ----------------------------
INSERT INTO `empleado_kimcavid` VALUES (1, 'ANDREA', 'CASTAÑEDA', 'SANTANA', '5564460305', 'Aandrea@gmail.com', 2, 'perro789', b'0');
INSERT INTO `empleado_kimcavid` VALUES (2, 'GERARDO ', 'SAUCEDO ', 'MARTINEZ', '5548791236', 'ger123@gmail.com', 2, 'pericoverde78', b'1');
INSERT INTO `empleado_kimcavid` VALUES (3, 'ENRIQUE', 'CASTAÑEDA', 'SANTANA', '5564460305', 'mike.nike335@gmail.com', 3, 'ara123', b'1');
INSERT INTO `empleado_kimcavid` VALUES (4, 'JAQUELINE', 'CASTRO', 'GARCIA', '5587795014', 'jaque123@gmail.com', 2, '111222333', b'1');
INSERT INTO `empleado_kimcavid` VALUES (5, 'LUPITA', 'LOPEZ', 'LOPEZ', '5889156987', 'lupita@gmail.com', 1, 'aguadelimon', b'0');
INSERT INTO `empleado_kimcavid` VALUES (6, 'kimberly', 'cruz', 'rueda', '551323', 'kimhb,jhbjh', 1, '123', b'0');
INSERT INTO `empleado_kimcavid` VALUES (7, 'Kimberly', 'Cruz', 'Rueda', '5519298177', 'kimberlycr75@gmail.com', 3, '', b'0');
INSERT INTO `empleado_kimcavid` VALUES (8, 'MANUEL', 'CASTAÑEDA', 'CASTILLO', '5564460306', 'emma.bombom@gmail.com', 2, '123456789', b'1');

-- ----------------------------
-- Table structure for factura_kimcavid
-- ----------------------------
DROP TABLE IF EXISTS `factura_kimcavid`;
CREATE TABLE `factura_kimcavid`  (
  `ID_FACTURA_KIMCAVID` int(0) NOT NULL,
  `RFC_CLIENTE_KIMCAVID` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `FOLIO_VENTA_KIMCAVID` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `STATUS_FACTURA_KIMCAVID` bit(1) NOT NULL,
  PRIMARY KEY (`ID_FACTURA_KIMCAVID`) USING BTREE,
  INDEX `CLIEN_FACT`(`RFC_CLIENTE_KIMCAVID`) USING BTREE,
  INDEX `DV_FOLIO`(`FOLIO_VENTA_KIMCAVID`) USING BTREE,
  CONSTRAINT `CLIEN_FACT` FOREIGN KEY (`RFC_CLIENTE_KIMCAVID`) REFERENCES `cliente_kimcavid` (`RFC_CLIENTE_KIMCAVID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `DV_FOLIO` FOREIGN KEY (`FOLIO_VENTA_KIMCAVID`) REFERENCES `venta_kimcavid` (`FOLIO_VENTA_KIMCAVID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of factura_kimcavid
-- ----------------------------
INSERT INTO `factura_kimcavid` VALUES (1, 'ERST4578', 'EMMA1234', b'1');
INSERT INTO `factura_kimcavid` VALUES (2, 'ERST4578', 'MANU1234', b'1');
INSERT INTO `factura_kimcavid` VALUES (3, 'ERST4578', 'MANU1234', b'0');

-- ----------------------------
-- Table structure for marca_kimcavid
-- ----------------------------
DROP TABLE IF EXISTS `marca_kimcavid`;
CREATE TABLE `marca_kimcavid`  (
  `ID_MARCA_KIMCAVID` int(0) NOT NULL AUTO_INCREMENT,
  `NOMBRE_MARCA_KIMCAVID` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `STATUS_MARCA_KIMCAVID` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`ID_MARCA_KIMCAVID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of marca_kimcavid
-- ----------------------------
INSERT INTO `marca_kimcavid` VALUES (1, 'Nike', b'1');
INSERT INTO `marca_kimcavid` VALUES (2, 'Gucci', b'1');
INSERT INTO `marca_kimcavid` VALUES (3, 'Puma', b'1');
INSERT INTO `marca_kimcavid` VALUES (4, 'Prada', b'1');
INSERT INTO `marca_kimcavid` VALUES (5, 'Dior', b'0');
INSERT INTO `marca_kimcavid` VALUES (6, 'Timberland', b'1');
INSERT INTO `marca_kimcavid` VALUES (7, 'Franco Cuadra', b'1');
INSERT INTO `marca_kimcavid` VALUES (8, 'Chanel', b'1');
INSERT INTO `marca_kimcavid` VALUES (9, 'Lacoste', b'1');
INSERT INTO `marca_kimcavid` VALUES (10, 'Julio12', b'1');
INSERT INTO `marca_kimcavid` VALUES (11, 'Ferragamo ', b'1');
INSERT INTO `marca_kimcavid` VALUES (12, 'Tommy', b'0');
INSERT INTO `marca_kimcavid` VALUES (13, 'Ferrioni', b'1');

-- ----------------------------
-- Table structure for modelo_kimcavid
-- ----------------------------
DROP TABLE IF EXISTS `modelo_kimcavid`;
CREATE TABLE `modelo_kimcavid`  (
  `ID_MODELO_KIMCAVID` int(0) NOT NULL,
  `NOMBRE_MODELO_KIMCAVID` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `STATUS_MODELO_KIMCAVID` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`ID_MODELO_KIMCAVID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of modelo_kimcavid
-- ----------------------------
INSERT INTO `modelo_kimcavid` VALUES (1, 'Botas', b'1');
INSERT INTO `modelo_kimcavid` VALUES (2, 'Deportivos', b'1');
INSERT INTO `modelo_kimcavid` VALUES (3, 'Sandalia', b'1');
INSERT INTO `modelo_kimcavid` VALUES (4, 'Casual', b'1');
INSERT INTO `modelo_kimcavid` VALUES (5, 'Mocasin', b'0');
INSERT INTO `modelo_kimcavid` VALUES (6, 'Tacon', b'1');
INSERT INTO `modelo_kimcavid` VALUES (7, 'Ballet', b'1');
INSERT INTO `modelo_kimcavid` VALUES (8, 'bota larga', b'0');

-- ----------------------------
-- Table structure for producto_kimcavid
-- ----------------------------
DROP TABLE IF EXISTS `producto_kimcavid`;
CREATE TABLE `producto_kimcavid`  (
  `CLAVE_PRODUCTO_KIMCAVID` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `NOMBRE_PRODUCTO_KIMCAVID` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `URL_IMAGEN_PRODUCTO` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `STOCK_MIN_PRODUCTO_KIMCAVID` tinyint(0) NOT NULL,
  `STOCK_MAX_PRODCUTO_KIMCAVID` int(0) NOT NULL,
  `CANTIDAD_PRODUCTO_KIMCAVID` int(0) NOT NULL,
  `PRECIO_ACTUAL_PRODUCTO_KIMCAVID` float NOT NULL,
  `DESCUENTO_PRODUCTO_KIMCAVID` float NOT NULL,
  `ID_UNIDAD_MEDIDA_KIMCAVID` int(0) NOT NULL,
  `ID_MARCA_KIMCAVID` int(0) NOT NULL,
  `ID_CATEGORIA_KIMCAVID` int(0) NOT NULL,
  `ID_MODELO_KIMCAVID` int(0) NOT NULL,
  `STATUS_PRODUCTO_KIMCAVID` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`CLAVE_PRODUCTO_KIMCAVID`) USING BTREE,
  INDEX `MARCA_PROD`(`ID_MARCA_KIMCAVID`) USING BTREE,
  INDEX `MED_PROD`(`ID_UNIDAD_MEDIDA_KIMCAVID`) USING BTREE,
  INDEX `CAT_PROD`(`ID_CATEGORIA_KIMCAVID`) USING BTREE,
  INDEX `MOD_PRO`(`ID_MODELO_KIMCAVID`) USING BTREE,
  CONSTRAINT `CAT_PROD` FOREIGN KEY (`ID_CATEGORIA_KIMCAVID`) REFERENCES `categoria_kimcavid` (`ID_CATEGORIA_KIMCAVID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `MARCA_PROD` FOREIGN KEY (`ID_MARCA_KIMCAVID`) REFERENCES `marca_kimcavid` (`ID_MARCA_KIMCAVID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `MED_PROD` FOREIGN KEY (`ID_UNIDAD_MEDIDA_KIMCAVID`) REFERENCES `unidad_medida_kimcavid` (`ID_UNIDAD_MEDIDA_KIMCAVID_KIMCAVID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `MOD_PRO` FOREIGN KEY (`ID_MODELO_KIMCAVID`) REFERENCES `modelo_kimcavid` (`ID_MODELO_KIMCAVID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of producto_kimcavid
-- ----------------------------
INSERT INTO `producto_kimcavid` VALUES ('0001', 'Francia', 'kefienk', 15, 30, 2, 299.99, 0, 1, 10, 1, 4, b'0');
INSERT INTO `producto_kimcavid` VALUES ('0002', 'KFKV', 'NS VDN', 10, 200, 100, 210, 0, 1, 1, 1, 1, b'0');
INSERT INTO `producto_kimcavid` VALUES ('0003', 'Mexico', 'kmrvml', 15, 30, 2, 299.99, 0, 1, 1, 1, 2, b'1');
INSERT INTO `producto_kimcavid` VALUES ('0004', 'Peru', 'ecvrvr', 10, 20, 2, 399.99, 0, 1, 7, 1, 5, b'1');
INSERT INTO `producto_kimcavid` VALUES ('0005', 'España', 'feieie', 15, 30, 2, 399.99, 0, 1, 6, 1, 1, b'1');
INSERT INTO `producto_kimcavid` VALUES ('0006', 'ROSSITA', 'YA QUEDO', 10, 20, 2, 1010, 0, 1, 3, 2, 1, b'0');
INSERT INTO `producto_kimcavid` VALUES ('0007', 'Gerardo', 'htithti', 10, 20, 2, 1010, 0, 1, 3, 2, 1, b'0');
INSERT INTO `producto_kimcavid` VALUES ('0008', 'Manuel', 'htithti', 10, 20, 2, 1010, 0, 1, 3, 2, 1, b'0');
INSERT INTO `producto_kimcavid` VALUES ('0009', 'NIGERIA', 'IMG_20180612_165630.jpg', 10, 15, 2, 299, 0, 1, 1, 1, 2, b'1');
INSERT INTO `producto_kimcavid` VALUES ('0014', 'Rose', 'http', 15, 30, 2, 599.99, 0, 1, 1, 1, 1, b'0');
INSERT INTO `producto_kimcavid` VALUES ('0099', 'Kike', 'hurhrri', 15, 30, 2, 299, 0, 1, 1, 1, 1, b'0');
INSERT INTO `producto_kimcavid` VALUES ('1010', 'tenis', 'files/1010/', 10, 200, 100, 210, 0, 1, 4, 7, 2, b'0');
INSERT INTO `producto_kimcavid` VALUES ('1011', 'tenis', 'files/1011/', 10, 200, 100, 210, 0, 1, 4, 7, 2, b'0');
INSERT INTO `producto_kimcavid` VALUES ('1012', 'bdkhsbvk', 'files/1012/', 10, 300, 120, 1200, 1, 1, 4, 3, 2, b'0');
INSERT INTO `producto_kimcavid` VALUES ('1020', 'kikin', '', 10, 10, 2, 399, 0, 1, 6, 1, 2, b'0');
INSERT INTO `producto_kimcavid` VALUES ('MMHH', 'THOR', 'IMG_20180612_165630.jpg', 10, 15, 2, 5000, 0, 1, 10, 1, 2, b'0');

-- ----------------------------
-- Table structure for proveedor_kimcavid
-- ----------------------------
DROP TABLE IF EXISTS `proveedor_kimcavid`;
CREATE TABLE `proveedor_kimcavid`  (
  `CLAVE_PROVEEDOR_KIMCAVID` varchar(13) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `RAZON_SOCIAL_PROVEEDOR_KIMCAVID` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `TELEFONO_PROVEEDOR_KIMCAVID` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `DIRECCION_PROVEEDOR_KIMCAVID` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `STATUS_PROVEEDOR_KIMCAVID` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`CLAVE_PROVEEDOR_KIMCAVID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of proveedor_kimcavid
-- ----------------------------
INSERT INTO `proveedor_kimcavid` VALUES ('AFRO9966', 'FLEXI', '5888612344', 'LOMAS', b'1');
INSERT INTO `proveedor_kimcavid` VALUES ('ASRS8795', 'CUADRA S.A.', '5546460302', 'TULA HIDALGO', b'1');
INSERT INTO `proveedor_kimcavid` VALUES ('DESS7896', 'NIKE S.A.', '5554126398', 'HERRADURA', b'1');
INSERT INTO `proveedor_kimcavid` VALUES ('RTSF8844', 'GUCCI S.A.', '5564460306', 'COL ROMA', b'1');
INSERT INTO `proveedor_kimcavid` VALUES ('ZDSE7898', 'HERMES S.A.', '5858555858', 'ASPIROS', b'1');

-- ----------------------------
-- Table structure for proveedor_producto_kimcavid
-- ----------------------------
DROP TABLE IF EXISTS `proveedor_producto_kimcavid`;
CREATE TABLE `proveedor_producto_kimcavid`  (
  `CLAVE_PROVEEDOR_KIMCAVID` varchar(13) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `CLAVE_PRODUCTO_KIMCAVID` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `PRIORIDAD_KIMCAVID` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `STATUS_PROVEEDOR_PRODUCTO` int(0) NOT NULL,
  PRIMARY KEY (`CLAVE_PROVEEDOR_KIMCAVID`) USING BTREE,
  INDEX `DP_PROD`(`CLAVE_PRODUCTO_KIMCAVID`) USING BTREE,
  CONSTRAINT `DP_PROD` FOREIGN KEY (`CLAVE_PRODUCTO_KIMCAVID`) REFERENCES `producto_kimcavid` (`CLAVE_PRODUCTO_KIMCAVID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `DP_PROV` FOREIGN KEY (`CLAVE_PROVEEDOR_KIMCAVID`) REFERENCES `proveedor_kimcavid` (`CLAVE_PROVEEDOR_KIMCAVID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of proveedor_producto_kimcavid
-- ----------------------------
INSERT INTO `proveedor_producto_kimcavid` VALUES ('AFRO9966', '0001', 'ALTA', 1);
INSERT INTO `proveedor_producto_kimcavid` VALUES ('DESS7896', '0002', 'BAJA', 1);
INSERT INTO `proveedor_producto_kimcavid` VALUES ('RTSF8844', '0005', 'ALTA', 0);

-- ----------------------------
-- Table structure for rol_kimcavid
-- ----------------------------
DROP TABLE IF EXISTS `rol_kimcavid`;
CREATE TABLE `rol_kimcavid`  (
  `ID_ROL_KIMCAVID` int(0) NOT NULL AUTO_INCREMENT,
  `NOMBRE_ROL_KIMCAVID` varchar(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `DESCRIPCION_ROL_KIMCAVID` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `STATUS_ROL_KIMCAVID` bit(1) NOT NULL,
  PRIMARY KEY (`ID_ROL_KIMCAVID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rol_kimcavid
-- ----------------------------
INSERT INTO `rol_kimcavid` VALUES (1, 'CLIENTE', 'CLIENTE', b'1');
INSERT INTO `rol_kimcavid` VALUES (2, 'ADMINISTRADOR', 'CONTROL DE TODO', b'1');
INSERT INTO `rol_kimcavid` VALUES (3, 'SUPERVISOR', 'SUPERVISAR', b'1');
INSERT INTO `rol_kimcavid` VALUES (4, 'CEO', 'DUEÑO', b'0');
INSERT INTO `rol_kimcavid` VALUES (5, 'CAJERO', 'Solo consultar', b'0');
INSERT INTO `rol_kimcavid` VALUES (6, 'OFICIAL ', 'VIGILAR ', b'1');

-- ----------------------------
-- Table structure for unidad_medida_kimcavid
-- ----------------------------
DROP TABLE IF EXISTS `unidad_medida_kimcavid`;
CREATE TABLE `unidad_medida_kimcavid`  (
  `ID_UNIDAD_MEDIDA_KIMCAVID_KIMCAVID` int(0) NOT NULL,
  `NOMBRE_UNIDAD_MEDIDA_KIMCAVID` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ABREVIATURA_UNIDAD_MEDIDA_KIMCAVID` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `STATUS_UNIDAD_MEDIDA_KIMCAVID` bit(1) NOT NULL,
  PRIMARY KEY (`ID_UNIDAD_MEDIDA_KIMCAVID_KIMCAVID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of unidad_medida_kimcavid
-- ----------------------------
INSERT INTO `unidad_medida_kimcavid` VALUES (1, 'Centimetro', 'cm', b'1');
INSERT INTO `unidad_medida_kimcavid` VALUES (2, 'metro', 'm', b'1');
INSERT INTO `unidad_medida_kimcavid` VALUES (3, 'pulgada', 'pl', b'1');
INSERT INTO `unidad_medida_kimcavid` VALUES (4, 'lolala', 'l', b'0');

-- ----------------------------
-- Table structure for usuario
-- ----------------------------
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario`  (
  `idUsuario` int(0) NOT NULL,
  `nombreUsuario` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `contrasenia` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ID_EMPLEADO_KIMCAVID` int(0) NOT NULL,
  PRIMARY KEY (`idUsuario`) USING BTREE,
  INDEX `fk_empleado_usuario`(`ID_EMPLEADO_KIMCAVID`) USING BTREE,
  CONSTRAINT `fk_empleado_usuario` FOREIGN KEY (`ID_EMPLEADO_KIMCAVID`) REFERENCES `empleado_kimcavid` (`ID_EMPLEADO_KIMCAVID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usuario
-- ----------------------------
INSERT INTO `usuario` VALUES (1, 'Gerardo', 'gerard0123#', 2);

-- ----------------------------
-- Table structure for venta_kimcavid
-- ----------------------------
DROP TABLE IF EXISTS `venta_kimcavid`;
CREATE TABLE `venta_kimcavid`  (
  `FOLIO_VENTA_KIMCAVID` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `FECHA_HORA_VENTA_KIMCAVID` datetime(0) NOT NULL,
  `TOTAL_VENTA_KIMCAVID` float NOT NULL,
  `DESCUENTO_VENTA_KIMCAVID` float NOT NULL,
  `ID_EMPLEADO_KIMCAVID` int(0) NOT NULL,
  `STATUS_EMPLEADO_KIMCAVID` bit(1) NOT NULL,
  PRIMARY KEY (`FOLIO_VENTA_KIMCAVID`) USING BTREE,
  INDEX `EM_VEN`(`ID_EMPLEADO_KIMCAVID`) USING BTREE,
  CONSTRAINT `fk_id_empleado` FOREIGN KEY (`ID_EMPLEADO_KIMCAVID`) REFERENCES `empleado_kimcavid` (`ID_EMPLEADO_KIMCAVID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of venta_kimcavid
-- ----------------------------
INSERT INTO `venta_kimcavid` VALUES ('CASM9808', '2022-07-05 02:24:44', 9999, 0, 1, b'1');
INSERT INTO `venta_kimcavid` VALUES ('EMMA1234', '2022-07-05 02:24:44', 3366, 0, 2, b'1');
INSERT INTO `venta_kimcavid` VALUES ('FFFRRR', '2022-07-13 17:30:56', 101010, 0, 3, b'1');
INSERT INTO `venta_kimcavid` VALUES ('HENY9988', '2022-07-13 17:07:04', 9669, 0, 4, b'1');
INSERT INTO `venta_kimcavid` VALUES ('MANU1234', '2022-07-05 02:24:44', 1234, 0, 5, b'1');
INSERT INTO `venta_kimcavid` VALUES ('YEST7894', '2022-07-05 02:24:44', 2500, 0, 6, b'1');
INSERT INTO `venta_kimcavid` VALUES ('ZAZA0123', '2022-07-13 17:14:42', 9999, 0, 7, b'1');

-- ----------------------------
-- Procedure structure for actuaizarMedida
-- ----------------------------
DROP PROCEDURE IF EXISTS `actuaizarMedida`;
delimiter ;;
CREATE PROCEDURE `actuaizarMedida`(P_ID_UNIDAD_MEDIDA_KIMCAVID_KIMCAVID int(11),
P_NOMBRE_UNIDAD_MEDIDA_KIMCAVID varchar(20),
P_ABREVIATURA_UNIDAD_MEDIDA_KIMCAVID varchar(6))
BEGIN 
 
 
 UPDATE unidad_medida_kimcavid SET 
 ID_UNIDAD_MEDIDA_KIMCAVID_KIMCAVID = P_ID_UNIDAD_MEDIDA_KIMCAVID_KIMCAVID,
 NOMBRE_UNIDAD_MEDIDA_KIMCAVID = P_NOMBRE_UNIDAD_MEDIDA_KIMCAVID,
 ABREVIATURA_UNIDAD_MEDIDA_KIMCAVID = P_ABREVIATURA_UNIDAD_MEDIDA_KIMCAVID
 
 WHERE ID_UNIDAD_MEDIDA_KIMCAVID_KIMCAVID = P_ID_UNIDAD_MEDIDA_KIMCAVID_KIMCAVID;
 
 END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for actualizarCatagoria
-- ----------------------------
DROP PROCEDURE IF EXISTS `actualizarCatagoria`;
delimiter ;;
CREATE PROCEDURE `actualizarCatagoria`(P_ID_CATEGORIA_KIMCAVID INT(11),
P_NOMBRE_CATEGORIA_KIMCAVID varchar(100))
BEGIN 

UPDATE categoria_kimcavid SET 	
ID_CATEGORIA_KIMCAVID = P_ID_CATEGORIA_KIMCAVID,
NOMBRE_CATEGORIA_KIMCAVID = P_NOMBRE_CATEGORIA_KIMCAVID

WHERE ID_CATEGORIA_KIMCAVID = P_ID_CATEGORIA_KIMCAVID;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for actualizarCliente
-- ----------------------------
DROP PROCEDURE IF EXISTS `actualizarCliente`;
delimiter ;;
CREATE PROCEDURE `actualizarCliente`(P_RFC_CLIENTE_KIMCAVID varchar(15),
P_NOMBRE_CLIENTE_KIMCAVID varchar(200),
P_AP1_CLIENTE_KIMCAVID varchar(100),
P_AP2_CLIENTE_KIMCAVID varchar(100),
P_TELEFONO_CLIENTE_KIMCAVID varchar(10),
P_CORREO_CLIENTE_KIMCAVID varchar(250),
P_ID_ROL_CLIENTE_KIMCAVID int (11),
P_CONTRASENIA_CLIENTE_KIMCAVID varchar(250))
BEGIN 

UPDATE cliente_kimcavid SET 
RFC_CLIENTE_KIMCAVID = P_RFC_CLIENTE_KIMCAVID,
NOMBRE_CLIENTE_KIMCAVID = P_NOMBRE_CLIENTE_KIMCAVID,
AP1_CLIENTE_KIMCAVID = P_AP1_CLIENTE_KIMCAVID,
AP2_CLIENTE_KIMCAVID = P_AP2_CLIENTE_KIMCAVID,
TELEFONO_CLIENTE_KIMCAVID = P_TELEFONO_CLIENTE_KIMCAVID,
CORREO_CLIENTE_KIMCAVID = P_CORREO_CLIENTE_KIMCAVID,
ID_ROL_CLIENTE_KIMCAVID = 1,
CONTRASENIA_CLIENTE_KIMCAVID = P_CONTRASENIA_CLIENTE_KIMCAVID

WHERE RFC_CLIENTE_KIMCAVID = P_RFC_CLIENTE_KIMCAVID;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for actualizarCompra
-- ----------------------------
DROP PROCEDURE IF EXISTS `actualizarCompra`;
delimiter ;;
CREATE PROCEDURE `actualizarCompra`(P_ID_COMPRA_KIMCAVID int(11),
P_FOLIO_COMPRA_KIMCAVID varchar(255),
P_CLAVE_PROVEEDOR_KIMCAVID varchar(13),
P_FECHA_HORA_COMPRA datetime(0),
P_TOTAL_COMPRA_KIMCAVID float(0))
BEGIN 

UPDATE compra_kimcavid SET 	
ID_COMPRA_KIMCAVID = P_ID_COMPRA_KIMCAVID,
FOLIO_COMPRA_KIMCAVID = P_FOLIO_COMPRA_KIMCAVID,
CLAVE_PROVEEDOR_KIMCAVID = P_CLAVE_PROVEEDOR_KIMCAVID,
FECHA_HORA_COMPRA = P_FECHA_HORA_COMPRA,
TOTAL_COMPRA_KIMCAVID = P_TOTAL_COMPRA_KIMCAVID

WHERE ID_COMPRA_KIMCAVID = P_ID_COMPRA_KIMCAVID;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for actualizarDetaComp
-- ----------------------------
DROP PROCEDURE IF EXISTS `actualizarDetaComp`;
delimiter ;;
CREATE PROCEDURE `actualizarDetaComp`(P_ID_DETALLE_COMPRA_KIMCAVID int(11),
P_ID_COMPRA_KIMCAVID int(11),
P_CLAVE_PRODUCTO_KIMCAVID varchar(15),
P_CANTIDAD_COMPRA_KIMCAVID tinyint(4),
P_PRECIO_COMPRA_KIMCAVID float(4))
BEGIN

UPDATE detalle_compra_kimcavid SET 
ID_DETALLE_COMPRA_KIMCAVID = P_ID_DETALLE_COMPRA_KIMCAVID,
ID_COMPRA_KIMCAVID = P_ID_COMPRA_KIMCAVID ,
CLAVE_PRODUCTO_KIMCAVID = P_CLAVE_PRODUCTO_KIMCAVID,
CANTIDAD_COMPRA_KIMCAVID = P_CANTIDAD_COMPRA_KIMCAVID,
PRECIO_COMPRA_KIMCAVID = P_PRECIO_COMPRA_KIMCAVID

WHERE ID_DETALLE_COMPRA_KIMCAVID = P_ID_DETALLE_COMPRA_KIMCAVID;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for actualizarDetaVenta
-- ----------------------------
DROP PROCEDURE IF EXISTS `actualizarDetaVenta`;
delimiter ;;
CREATE PROCEDURE `actualizarDetaVenta`(P_FOLIO_VENTA_KIMCAVID varchar(15),
P_CLAVE_PRODUCTO_KIMCAVID varchar(15),
P_CANTIDAD_VENTA_KIMCAVID int(11),
P_PRECIO_VENTA_KIMCAVID float(0),
P_TOTAL_VENTA_KIMCAVID float(0),
P_DESCUENTO_VENTA_KIMCAVID float(0))
BEGIN 

UPDATE detalle_venta_kimcavid SET 
FOLIO_VENTA_KIMCAVID = P_FOLIO_VENTA_KIMCAVID,
CLAVE_PRODUCTO_KIMCAVID = P_CLAVE_PRODUCTO_KIMCAVID,
CANTIDAD_VENTA_KIMCAVID = P_CANTIDAD_VENTA_KIMCAVID,
PRECIO_VENTA_KIMCAVID  = P_PRECIO_VENTA_KIMCAVID,
TOTAL_VENTA_KIMCAVID = P_TOTAL_VENTA_KIMCAVID,
DESCUENTO_VENTA_KIMCAVID = P_DESCUENTO_VENTA_KIMCAVID

WHERE FOLIO_VENTA_KIMCAVID = P_FOLIO_VENTA_KIMCAVID;

	END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for actualizarEmpleado
-- ----------------------------
DROP PROCEDURE IF EXISTS `actualizarEmpleado`;
delimiter ;;
CREATE PROCEDURE `actualizarEmpleado`(P_CLAVE_EMPLEADO_KIMCAVID varchar(15),
P_NOMBRE_EMPLEADO_KIMCAVID varchar(250),
P_AP1_EMPLEADO_KIMCAVID varchar(100),
P_AP2_EMPLEADO_KIMCAVID varchar(100),
P_TELEFONO_EMPLEADO_KIMCAVID varchar(10),
P_CORREO_EMPLEADO_KIMCAVID varchar(200),
P_ID_ROL_KIMCAVID int (11),
P_CONTRASENIA_EMPLEADO_KIMCAVID varchar(255))
BEGIN 

UPDATE empleado_kimcavid SET 	
CLAVE_EMPLEADO_KIMCAVID = P_CLAVE_EMPLEADO_KIMCAVID,
NOMBRE_EMPLEADO_KIMCAVID = P_NOMBRE_EMPLEADO_KIMCAVID,
AP1_EMPLEADO_KIMCAVID =  P_AP1_EMPLEADO_KIMCAVID,
AP2_EMPLEADO_KIMCAVID = P_AP2_EMPLEADO_KIMCAVID,
TELEFONO_EMPLEADO_KIMCAVID = P_TELEFONO_EMPLEADO_KIMCAVID,
CORREO_EMPLEADO_KIMCAVID = P_CORREO_EMPLEADO_KIMCAVID,
ID_ROL_KIMCAVID = P_ID_ROL_KIMCAVID,
CONTRASENIA_EMPLEADO_KIMCAVID = P_CONTRASENIA_EMPLEADO_KIMCAVID

WHERE CLAVE_EMPLEADO_KIMCAVID = P_CLAVE_EMPLEADO_KIMCAVID;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for actualizarFactura
-- ----------------------------
DROP PROCEDURE IF EXISTS `actualizarFactura`;
delimiter ;;
CREATE PROCEDURE `actualizarFactura`(P_ID_FACTURA_KIMCAVID int(11),
P_RFC_CLIENTE_KIMCAVID varchar(15),
P_FOLIO_VENTA_KIMCAVID varchar(15))
BEGIN

UPDATE factura_kimcavid SET 
ID_FACTURA_KIMCAVID = P_ID_FACTURA_KIMCAVID,
RFC_CLIENTE_KIMCAVID = P_RFC_CLIENTE_KIMCAVID,
FOLIO_VENTA_KIMCAVID = P_FOLIO_VENTA_KIMCAVID

WHERE ID_FACTURA_KIMCAVID = P_ID_FACTURA_KIMCAVID;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for actualizarMarca
-- ----------------------------
DROP PROCEDURE IF EXISTS `actualizarMarca`;
delimiter ;;
CREATE PROCEDURE `actualizarMarca`(P_ID_MARCA_KIMCAVID int(11),
P_NOMBRE_MARCA_KIMCAVID varchar (150))
BEGIN 

UPDATE marca_kimcavid SET 
ID_MARCA_KIMCAVID = P_ID_MARCA_KIMCAVID,
NOMBRE_MARCA_KIMCAVID = P_NOMBRE_MARCA_KIMCAVID

WHERE ID_MARCA_KIMCAVID = P_ID_MARCA_KIMCAVID;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for actualizarMCategoria
-- ----------------------------
DROP PROCEDURE IF EXISTS `actualizarMCategoria`;
delimiter ;;
CREATE PROCEDURE `actualizarMCategoria`(P_ID_CATEGORIA_KIMCAVID INT(11))
BEGIN
	SELECT
	categoria_kimcavid.ID_CATEGORIA_KIMCAVID, 
	categoria_kimcavid.NOMBRE_CATEGORIA_KIMCAVID
FROM
	categoria_kimcavid WHERE ID_CATEGORIA_KIMCAVID=P_ID_CATEGORIA_KIMCAVID;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for actualizarMcliente
-- ----------------------------
DROP PROCEDURE IF EXISTS `actualizarMcliente`;
delimiter ;;
CREATE PROCEDURE `actualizarMcliente`(P_RFC_CLIENTE_KIMCAVID VARCHAR (15))
BEGIN
	SELECT
	cliente_kimcavid.RFC_CLIENTE_KIMCAVID, 
	cliente_kimcavid.NOMBRE_CLIENTE_KIMCAVID, 
	cliente_kimcavid.AP1_CLIENTE_KIMCAVID, 
	cliente_kimcavid.AP2_CLIENTE_KIMCAVID, 
	cliente_kimcavid.TELEFONO_CLIENTE_KIMCAVID, 
	cliente_kimcavid.CORREO_CLIENTE_KIMCAVID, 
	rol_kimcavid.NOMBRE_ROL_KIMCAVID, 
	cliente_kimcavid.CONTRASENIA_CLIENTE_KIMCAVID
FROM
	cliente_kimcavid
	INNER JOIN
	rol_kimcavid
	ON 
		cliente_kimcavid.ID_ROL_CLIENTE_KIMCAVID = rol_kimcavid.ID_ROL_KIMCAVID
		WHERE
			RFC_CLIENTE_KIMCAVID = P_RFC_CLIENTE_KIMCAVID;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for actualizarMedida
-- ----------------------------
DROP PROCEDURE IF EXISTS `actualizarMedida`;
delimiter ;;
CREATE PROCEDURE `actualizarMedida`(P_ID_UNIDAD_MEDIDA_KIMCAVID_KIMCAVID int(11),
P_NOMBRE_UNIDAD_MEDIDA_KIMCAVID varchar(20),
P_ABREVIATURA_UNIDAD_MEDIDA_KIMCAVID varchar(6))
BEGIN 
 
 UPDATE unidad_medida_kimcavid SET 
 ID_UNIDAD_MEDIDA_KIMCAVID_KIMCAVID = P_ID_UNIDAD_MEDIDA_KIMCAVID_KIMCAVID,
 NOMBRE_UNIDAD_MEDIDA_KIMCAVID = P_NOMBRE_UNIDAD_MEDIDA_KIMCAVID,
 ABREVIATURA_UNIDAD_MEDIDA_KIMCAVID = P_ABREVIATURA_UNIDAD_MEDIDA_KIMCAVID
 
 WHERE ID_UNIDAD_MEDIDA_KIMCAVID_KIMCAVID = P_ID_UNIDAD_MEDIDA_KIMCAVID_KIMCAVID;
 
 END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for actualizarMempleado
-- ----------------------------
DROP PROCEDURE IF EXISTS `actualizarMempleado`;
delimiter ;;
CREATE PROCEDURE `actualizarMempleado`(P_CLAVE_EMPLEADO_KIMCAVID VARCHAR (15))
BEGIN
	SELECT
	empleado_kimcavid.CLAVE_EMPLEADO_KIMCAVID, 
	empleado_kimcavid.NOMBRE_EMPLEADO_KIMCAVID, 
	empleado_kimcavid.AP1_EMPLEADO_KIMCAVID, 
	empleado_kimcavid.AP2_EMPLEADO_KIMCAVID, 
	empleado_kimcavid.TELEFONO_EMPLEADO_KIMCAVID, 
	empleado_kimcavid.CORREO_EMPLEADO_KIMCAVID, 
	rol_kimcavid.NOMBRE_ROL_KIMCAVID, 
	empleado_kimcavid.CONTRASENIA_EMPLEADO_KIMCAVID
FROM
	empleado_kimcavid
	INNER JOIN
	rol_kimcavid
	ON 
		empleado_kimcavid.ID_ROL_KIMCAVID = rol_kimcavid.ID_ROL_KIMCAVID
		WHERE
		CLAVE_EMPLEADO_KIMCAVID = P_CLAVE_EMPLEADO_KIMCAVID;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for actualizarMmarca
-- ----------------------------
DROP PROCEDURE IF EXISTS `actualizarMmarca`;
delimiter ;;
CREATE PROCEDURE `actualizarMmarca`(P_ID_MARCA_KIMCAVID int(11))
BEGIN
	SELECT
	marca_kimcavid.ID_MARCA_KIMCAVID, 
	marca_kimcavid.NOMBRE_MARCA_KIMCAVID
FROM
	marca_kimcavid
	WHERE ID_MARCA_KIMCAVID = P_ID_MARCA_KIMCAVID;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for actualizarMmedida
-- ----------------------------
DROP PROCEDURE IF EXISTS `actualizarMmedida`;
delimiter ;;
CREATE PROCEDURE `actualizarMmedida`(P_ID_UNIDAD_MEDIDA_KIMCAVID_KIMCAVID int(11))
BEGIN
	SELECT
	unidad_medida_kimcavid.ID_UNIDAD_MEDIDA_KIMCAVID_KIMCAVID, 
	unidad_medida_kimcavid.NOMBRE_UNIDAD_MEDIDA_KIMCAVID, 
	unidad_medida_kimcavid.ABREVIATURA_UNIDAD_MEDIDA_KIMCAVID
FROM
	unidad_medida_kimcavid
	WHERE ID_UNIDAD_MEDIDA_KIMCAVID_KIMCAVID = P_ID_UNIDAD_MEDIDA_KIMCAVID_KIMCAVID;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for actualizarMmodelo
-- ----------------------------
DROP PROCEDURE IF EXISTS `actualizarMmodelo`;
delimiter ;;
CREATE PROCEDURE `actualizarMmodelo`(P_ID_MODELO_KIMCAVID int(11))
BEGIN
	SELECT
	modelo_kimcavid.ID_MODELO_KIMCAVID, 
	modelo_kimcavid.NOMBRE_MODELO_KIMCAVID
FROM
	modelo_kimcavid
	WHERE
	ID_MODELO_KIMCAVID = P_ID_MODELO_KIMCAVID;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for actualizarModelo
-- ----------------------------
DROP PROCEDURE IF EXISTS `actualizarModelo`;
delimiter ;;
CREATE PROCEDURE `actualizarModelo`(P_ID_MODELO_KIMCAVID int(11),
P_NOMBRE_MODELO_KIMCAVID varchar (150))
BEGIN

UPDATE modelo_kimcavid SET 
ID_MODELO_KIMCAVID = P_ID_MODELO_KIMCAVID,
NOMBRE_MODELO_KIMCAVID = P_NOMBRE_MODELO_KIMCAVID

WHERE P_ID_MODELO_KIMCAVID = ID_MODELO_KIMCAVID;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for actualizarMproducto
-- ----------------------------
DROP PROCEDURE IF EXISTS `actualizarMproducto`;
delimiter ;;
CREATE PROCEDURE `actualizarMproducto`(P_CLAVE_PRODUCTO_KIMCAVID VARCHAR(15))
BEGIN
	#Routine body goes here...
SELECT
	producto_kimcavid.CLAVE_PRODUCTO_KIMCAVID, 
	producto_kimcavid.NOMBRE_PRODUCTO_KIMCAVID, 
	producto_kimcavid.URL_IMAGEN_PRODUCTO, 
	producto_kimcavid.STOCK_MIN_PRODUCTO_KIMCAVID, 
	producto_kimcavid.STOCK_MAX_PRODCUTO_KIMCAVID, 
	producto_kimcavid.CANTIDAD_PRODUCTO_KIMCAVID, 
	producto_kimcavid.PRECIO_ACTUAL_PRODUCTO_KIMCAVID, 
	producto_kimcavid.DESCUENTO_PRODUCTO_KIMCAVID, 
	unidad_medida_kimcavid.NOMBRE_UNIDAD_MEDIDA_KIMCAVID, 
	marca_kimcavid.NOMBRE_MARCA_KIMCAVID, 
	categoria_kimcavid.NOMBRE_CATEGORIA_KIMCAVID, 
	modelo_kimcavid.NOMBRE_MODELO_KIMCAVID
FROM
	producto_kimcavid
	INNER JOIN
	unidad_medida_kimcavid
	ON 
		producto_kimcavid.ID_UNIDAD_MEDIDA_KIMCAVID = unidad_medida_kimcavid.ID_UNIDAD_MEDIDA_KIMCAVID_KIMCAVID
	INNER JOIN
	marca_kimcavid
	ON 
		producto_kimcavid.ID_MARCA_KIMCAVID = marca_kimcavid.ID_MARCA_KIMCAVID
	INNER JOIN
	categoria_kimcavid
	ON 
		producto_kimcavid.ID_CATEGORIA_KIMCAVID = categoria_kimcavid.ID_CATEGORIA_KIMCAVID
	INNER JOIN
	modelo_kimcavid
	ON 
		producto_kimcavid.ID_MODELO_KIMCAVID = modelo_kimcavid.ID_MODELO_KIMCAVID
		WHERE CLAVE_PRODUCTO_KIMCAVID = P_CLAVE_PRODUCTO_KIMCAVID;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for actualizarMproveedor
-- ----------------------------
DROP PROCEDURE IF EXISTS `actualizarMproveedor`;
delimiter ;;
CREATE PROCEDURE `actualizarMproveedor`(P_CLAVE_PROVEEDOR_KIMCAVID varchar(13))
BEGIN
	SELECT
	proveedor_kimcavid.CLAVE_PROVEEDOR_KIMCAVID, 
	proveedor_kimcavid.RAZON_SOCIAL_PROVEEDOR_KIMCAVID, 
	proveedor_kimcavid.TELEFONO_PROVEEDOR_KIMCAVID, 
	proveedor_kimcavid.DIRECCION_PROVEEDOR_KIMCAVID
FROM
	proveedor_kimcavid
	WHERE CLAVE_PROVEEDOR_KIMCAVID = P_CLAVE_PROVEEDOR_KIMCAVID;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for actualizarMrol
-- ----------------------------
DROP PROCEDURE IF EXISTS `actualizarMrol`;
delimiter ;;
CREATE PROCEDURE `actualizarMrol`(P_ID_ROL_KIMCAVID int (11))
BEGIN
	SELECT
	rol_kimcavid.ID_ROL_KIMCAVID, 
	rol_kimcavid.NOMBRE_ROL_KIMCAVID, 
	rol_kimcavid.DESCRIPCION_ROL_KIMCAVID
FROM
	rol_kimcavid
	WHERE ID_ROL_KIMCAVID = P_ID_ROL_KIMCAVID;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for actualizarProducto
-- ----------------------------
DROP PROCEDURE IF EXISTS `actualizarProducto`;
delimiter ;;
CREATE PROCEDURE `actualizarProducto`(P_CLAVE_PRODUCTO_KIMCAVID varchar(15),
P_NOMBRE_PRODUCTO_KIMCAVID varchar(255),
P_URL_IMAGEN_PRODUCTO varchar(255),
P_STOCK_MIN_PRODUCTO_KIMCAVID tinyint(4),
P_STOCK_MAX_PRODCUTO_KIMCAVID int(11),
P_CANTIDAD_PRODUCTO_KIMCAVID int(11),
P_PRECIO_ACTUAL_PRODUCTO_KIMCAVID float(0),
P_DESCUENTO_PRODUCTO_KIMCAVID float(0),
P_ID_UNIDAD_MEDIDA_KIMCAVID int(11),
P_ID_MARCA_KIMCAVID int(11),
P_ID_CATEGORIA_KIMCAVID int(11),
P_ID_MODELO_KIMCAVID int(11))
BEGIN 

UPDATE producto_kimcavid SET 
CLAVE_PRODUCTO_KIMCAVID = P_CLAVE_PRODUCTO_KIMCAVID,
NOMBRE_PRODUCTO_KIMCAVID = P_NOMBRE_PRODUCTO_KIMCAVID,
URL_IMAGEN_PRODUCTO = P_URL_IMAGEN_PRODUCTO,
STOCK_MIN_PRODUCTO_KIMCAVID = P_STOCK_MIN_PRODUCTO_KIMCAVID,
STOCK_MAX_PRODCUTO_KIMCAVID = P_STOCK_MAX_PRODCUTO_KIMCAVID,
CANTIDAD_PRODUCTO_KIMCAVID = P_CANTIDAD_PRODUCTO_KIMCAVID,
PRECIO_ACTUAL_PRODUCTO_KIMCAVID = P_PRECIO_ACTUAL_PRODUCTO_KIMCAVID,
DESCUENTO_PRODUCTO_KIMCAVID = P_DESCUENTO_PRODUCTO_KIMCAVID,
ID_UNIDAD_MEDIDA_KIMCAVID = P_ID_UNIDAD_MEDIDA_KIMCAVID,
ID_MARCA_KIMCAVID = P_ID_MARCA_KIMCAVID,
ID_CATEGORIA_KIMCAVID = P_ID_CATEGORIA_KIMCAVID,
ID_MODELO_KIMCAVID = P_ID_MODELO_KIMCAVID 

WHERE CLAVE_PRODUCTO_KIMCAVID = P_CLAVE_PRODUCTO_KIMCAVID;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for actualizarProveedor
-- ----------------------------
DROP PROCEDURE IF EXISTS `actualizarProveedor`;
delimiter ;;
CREATE PROCEDURE `actualizarProveedor`(P_CLAVE_PROVEEDOR_KIMCAVID varchar(13),
P_RAZON_SOCIAL_PROVEEDOR_KIMCAVID  varchar(255),
P_TELEFONO_PROVEEDOR_KIMCAVID varchar(10),
P_DIRECCION_PROVEEDOR_KIMCAVID  varchar(255))
BEGIN 


UPDATE proveedor_kimcavid SET
CLAVE_PROVEEDOR_KIMCAVID = P_CLAVE_PROVEEDOR_KIMCAVID,
RAZON_SOCIAL_PROVEEDOR_KIMCAVID = P_RAZON_SOCIAL_PROVEEDOR_KIMCAVID,
TELEFONO_PROVEEDOR_KIMCAVID = P_TELEFONO_PROVEEDOR_KIMCAVID,
DIRECCION_PROVEEDOR_KIMCAVID = P_DIRECCION_PROVEEDOR_KIMCAVID

WHERE CLAVE_PROVEEDOR_KIMCAVID = P_CLAVE_PROVEEDOR_KIMCAVID;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for actualizarProveeProduct
-- ----------------------------
DROP PROCEDURE IF EXISTS `actualizarProveeProduct`;
delimiter ;;
CREATE PROCEDURE `actualizarProveeProduct`(P_CLAVE_PROVEEDOR_KIMCAVID varchar(13),
P_CLAVE_PRODUCTO_KIMCAVID varchar(15),
P_PRIORIDAD_KIMCAVID varchar(5))
BEGIN

UPDATE proveedor_producto_kimcavid SET
CLAVE_PROVEEDOR_KIMCAVID = P_CLAVE_PROVEEDOR_KIMCAVID,
CLAVE_PRODUCTO_KIMCAVID = P_CLAVE_PRODUCTO_KIMCAVID,
PRIORIDAD_KIMCAVID = P_PRIORIDAD_KIMCAVID
WHERE CLAVE_PROVEEDOR_KIMCAVID = P_CLAVE_PROVEEDOR_KIMCAVID;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for actualizarRol
-- ----------------------------
DROP PROCEDURE IF EXISTS `actualizarRol`;
delimiter ;;
CREATE PROCEDURE `actualizarRol`(P_ID_ROL_KIMCAVID int (11),
P_NOMBRE_ROL_KIMCAVID varchar(150),
P_DESCRIPCION_ROL_KIMCAVID varchar (200))
BEGIN 

UPDATE rol_kimcavid SET 
ID_ROL_KIMCAVID = P_ID_ROL_KIMCAVID,
NOMBRE_ROL_KIMCAVID = P_NOMBRE_ROL_KIMCAVID,
DESCRIPCION_ROL_KIMCAVID = P_DESCRIPCION_ROL_KIMCAVID

WHERE ID_ROL_KIMCAVID = P_ID_ROL_KIMCAVID;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for actualizarVenta
-- ----------------------------
DROP PROCEDURE IF EXISTS `actualizarVenta`;
delimiter ;;
CREATE PROCEDURE `actualizarVenta`(P_FOLIO_VENTA_KIMCAVID varchar(15),
P_FECHA_HORA_VENTA_KIMCAVID datetime(0),
P_TOTAL_VENTA_KIMCAVID float(0),
P_DESCUENTO_VENTA_KIMCAVID float(0),
P_CLAVE_EMPLEADO_KIMCAVID varchar(15))
BEGIN 


UPDATE venta_kimcavid SET
FOLIO_VENTA_KIMCAVID = P_FOLIO_VENTA_KIMCAVID,
FECHA_HORA_VENTA_KIMCAVID = P_FECHA_HORA_VENTA_KIMCAVID,
TOTAL_VENTA_KIMCAVID = P_TOTAL_VENTA_KIMCAVID,
DESCUENTO_VENTA_KIMCAVID = P_DESCUENTO_VENTA_KIMCAVID,
CLAVE_EMPLEADO_KIMCAVID  = P_CLAVE_EMPLEADO_KIMCAVID

WHERE FOLIO_VENTA_KIMCAVID = P_FOLIO_VENTA_KIMCAVID;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for agreCompra
-- ----------------------------
DROP PROCEDURE IF EXISTS `agreCompra`;
delimiter ;;
CREATE PROCEDURE `agreCompra`(P_FOLIO_COMPRA_KIMCAVID varchar(255),
P_CLAVE_PROVEEDOR_KIMCAVID varchar(13),
P_TOTAL_COMPRA_KIMCAVID float(0))
BEGIN

INSERT INTO compra_kimcavid

VALUES(
DEFAULT,
P_FOLIO_COMPRA_KIMCAVID,
P_CLAVE_PROVEEDOR_KIMCAVID,
NOW(),
P_TOTAL_COMPRA_KIMCAVID,
1);

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for agregarCompra
-- ----------------------------
DROP PROCEDURE IF EXISTS `agregarCompra`;
delimiter ;;
CREATE PROCEDURE `agregarCompra`(P_ID_COMPRA_KIMCAVID int(11),
P_FOLIO_COMPRA_KIMCAVID varchar(255),
P_CLAVE_PROVEEDOR_KIMCAVID varchar(13),
P_FECHA_HORA_COMPRA datetime(0),
P_TOTAL_COMPRA_KIMCAVID float(0))
BEGIN

INSERT INTO compra_kimcavid

VALUES(
P_ID_COMPRA_KIMCAVID,
P_FOLIO_COMPRA_KIMCAVID,
P_CLAVE_PROVEEDOR_KIMCAVID,
P_FECHA_HORA_COMPRA,
P_TOTAL_COMPRA_KIMCAVID);

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for agregarDetaComp
-- ----------------------------
DROP PROCEDURE IF EXISTS `agregarDetaComp`;
delimiter ;;
CREATE PROCEDURE `agregarDetaComp`(P_ID_DETALLE_COMPRA_KIMCAVID int(11),
P_ID_COMPRA_KIMCAVID int(11),
P_CLAVE_PRODUCTO_KIMCAVID varchar(15),
P_CANTIDAD_COMPRA_KIMCAVID tinyint(4),
P_PRECIO_COMPRA_KIMCAVID float(4))
BEGIN 

INSERT INTO detalle_compra_kimcavid

VALUES(
P_ID_DETALLE_COMPRA_KIMCAVID,
P_ID_COMPRA_KIMCAVID,
P_CLAVE_PRODUCTO_KIMCAVID,
P_CANTIDAD_COMPRA_KIMCAVID,
P_PRECIO_COMPRA_KIMCAVID,
1);

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for agregarDetaVenta
-- ----------------------------
DROP PROCEDURE IF EXISTS `agregarDetaVenta`;
delimiter ;;
CREATE PROCEDURE `agregarDetaVenta`(P_FOLIO_VENTA_KIMCAVID varchar(15),
P_CLAVE_PRODUCTO_KIMCAVID varchar(15),
P_CANTIDAD_VENTA_KIMCAVID int(11),
P_PRECIO_VENTA_KIMCAVID float(0),
P_TOTAL_VENTA_KIMCAVID float(0),
P_DESCUENTO_VENTA_KIMCAVID float(0))
BEGIN 
INSERT INTO detalle_venta_kimcavid

VALUES(
P_FOLIO_VENTA_KIMCAVID,
P_CLAVE_PRODUCTO_KIMCAVID,
P_CANTIDAD_VENTA_KIMCAVID,
P_PRECIO_VENTA_KIMCAVID,
P_TOTAL_VENTA_KIMCAVID,
P_DESCUENTO_VENTA_KIMCAVID,
1);

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for agregarEmpleado
-- ----------------------------
DROP PROCEDURE IF EXISTS `agregarEmpleado`;
delimiter ;;
CREATE PROCEDURE `agregarEmpleado`(P_CLAVE_EMPLEADO_KIMCAVID varchar(15),
P_NOMBRE_EMPLEADO_KIMCAVID varchar(250),
P_AP1_EMPLEADO_KIMCAVID varchar(100),
P_AP2_EMPLEADO_KIMCAVID varchar(100),
P_TELEFONO_EMPLEADO_KIMCAVID varchar(10),
P_CORREO_EMPLEADO_KIMCAVID varchar(200),
P_ID_ROL_KIMCAVID int (11),
P_CONTRASENIA_EMPLEADO_KIMCAVID varchar(255))
BEGIN 

INSERT empleado_kimcavid

VALUES(
P_CLAVE_EMPLEADO_KIMCAVID,
P_NOMBRE_EMPLEADO_KIMCAVID,
P_AP1_EMPLEADO_KIMCAVID,
P_AP2_EMPLEADO_KIMCAVID,
P_TELEFONO_EMPLEADO_KIMCAVID,
P_CORREO_EMPLEADO_KIMCAVID,
P_ID_ROL_KIMCAVID,
P_CONTRASENIA_EMPLEADO_KIMCAVID,1);

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for agregarFactura
-- ----------------------------
DROP PROCEDURE IF EXISTS `agregarFactura`;
delimiter ;;
CREATE PROCEDURE `agregarFactura`(P_ID_FACTURA_KIMCAVID int(11),
P_RFC_CLIENTE_KIMCAVID varchar(15),
P_FOLIO_VENTA_KIMCAVID varchar(15))
BEGIN

INSERT INTO factura_kimcavid

VALUES(
P_ID_FACTURA_KIMCAVID,
P_RFC_CLIENTE_KIMCAVID,
P_FOLIO_VENTA_KIMCAVID,
1);

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for agregarMarca
-- ----------------------------
DROP PROCEDURE IF EXISTS `agregarMarca`;
delimiter ;;
CREATE PROCEDURE `agregarMarca`(P_ID_MARCA_KIMCAVID int(11),
P_NOMBRE_MARCA_KIMCAVID varchar (150))
BEGIN 

INSERT INTO marca_kimcavid 

VALUES(
P_ID_MARCA_KIMCAVID,
P_NOMBRE_MARCA_KIMCAVID,
1);

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for agregarMedida
-- ----------------------------
DROP PROCEDURE IF EXISTS `agregarMedida`;
delimiter ;;
CREATE PROCEDURE `agregarMedida`(P_ID_UNIDAD_MEDIDA_KIMCAVID_KIMCAVID  int(11),
P_NOMBRE_UNIDAD_MEDIDA_KIMCAVID varchar (20),
P_ABREVIATURA_UNIDAD_MEDIDA_KIMCAVID varchar(6))
BEGIN 
 
 INSERT INTO unidad_medida_kimcavid 
 
 VALUES(
 P_ID_UNIDAD_MEDIDA_KIMCAVID_KIMCAVID,
 P_NOMBRE_UNIDAD_MEDIDA_KIMCAVID,
 P_ABREVIATURA_UNIDAD_MEDIDA_KIMCAVID,
 1);
 
 END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for agregarModelo
-- ----------------------------
DROP PROCEDURE IF EXISTS `agregarModelo`;
delimiter ;;
CREATE PROCEDURE `agregarModelo`(P_ID_MODELO_KIMCAVID int(11),
P_NOMBRE_MODELO_KIMCAVID varchar (150))
BEGIN

INSERT INTO modelo_kimcavid 

VALUES(
P_ID_MODELO_KIMCAVID,
P_NOMBRE_MODELO_KIMCAVID,
1);

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for agregarProducto
-- ----------------------------
DROP PROCEDURE IF EXISTS `agregarProducto`;
delimiter ;;
CREATE PROCEDURE `agregarProducto`(CLAVE_PRODUCTO_KIMCAVID varchar(15),
P_NOMBRE_PRODUCTO_KIMCAVID varchar(255),
P_STOCK_MIN_PRODUCTO_KIMCAVID tinyint(4),
P_STOCK_MAX_PRODCUTO_KIMCAVID int(11),
P_CANTIDAD_PRODUCTO_KIMCAVID int(11),
P_PRECIO_ACTUAL_PRODUCTO_KIMCAVID float(0),
P_DESCUENTO_PRODUCTO_KIMCAVID float(0),
P_ID_UNIDAD_MEDIDA_KIMCAVID int(11),
P_ID_MARCA_KIMCAVID int(11),
P_ID_CATEGORIA_KIMCAVID int(11),
P_ID_MODELO_KIMCAVID int(11),
P_URL_IMAGEN_PRODUCTO varchar(255))
BEGIN 

INSERT INTO producto_kimcavid

VALUES(
CLAVE_PRODUCTO_KIMCAVID,
P_NOMBRE_PRODUCTO_KIMCAVID,
P_STOCK_MIN_PRODUCTO_KIMCAVID,
P_STOCK_MAX_PRODCUTO_KIMCAVID,
P_CANTIDAD_PRODUCTO_KIMCAVID,
P_PRECIO_ACTUAL_PRODUCTO_KIMCAVID,
P_DESCUENTO_PRODUCTO_KIMCAVID,
P_ID_UNIDAD_MEDIDA_KIMCAVID,
P_ID_MARCA_KIMCAVID,
P_ID_CATEGORIA_KIMCAVID,
P_ID_MODELO_KIMCAVID,
1,
P_URL_IMAGEN_PRODUCTO);

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for agregarProveedor
-- ----------------------------
DROP PROCEDURE IF EXISTS `agregarProveedor`;
delimiter ;;
CREATE PROCEDURE `agregarProveedor`(P_CLAVE_PROVEEDOR_KIMCAVID varchar(13),
P_RAZON_SOCIAL_PROVEEDOR_KIMCAVID  varchar(255),
P_TELEFONO_PROVEEDOR_KIMCAVID varchar(10),
P_DIRECCION_PROVEEDOR_KIMCAVID  varchar(255))
BEGIN 

INSERT INTO proveedor_kimcavid

VALUES(
P_CLAVE_PROVEEDOR_KIMCAVID,
P_RAZON_SOCIAL_PROVEEDOR_KIMCAVID,
P_TELEFONO_PROVEEDOR_KIMCAVID,
P_DIRECCION_PROVEEDOR_KIMCAVID,
1);

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for agregarProveeProduct
-- ----------------------------
DROP PROCEDURE IF EXISTS `agregarProveeProduct`;
delimiter ;;
CREATE PROCEDURE `agregarProveeProduct`(P_CLAVE_PROVEEDOR_KIMCAVID varchar(13),
P_CLAVE_PRODUCTO_KIMCAVID varchar(15),
P_PRIORIDAD_KIMCAVID varchar(5))
BEGIN

INSERT INTO proveedor_producto_kimcavid

VALUES(
P_CLAVE_PROVEEDOR_KIMCAVID,
P_CLAVE_PRODUCTO_KIMCAVID,
P_PRIORIDAD_KIMCAVID,
1);


END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for agregarRol
-- ----------------------------
DROP PROCEDURE IF EXISTS `agregarRol`;
delimiter ;;
CREATE PROCEDURE `agregarRol`(P_ID_ROL_KIMCAVID int (11),
P_NOMBRE_ROL_KIMCAVID varchar(150),
P_DESCRIPCION_ROL_KIMCAVID varchar (200))
BEGIN 

INSERT INTO rol_kimcavid 

VALUES(
P_ID_ROL_KIMCAVID,
P_NOMBRE_ROL_KIMCAVID,
P_DESCRIPCION_ROL_KIMCAVID,
1);

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for agregarVenta
-- ----------------------------
DROP PROCEDURE IF EXISTS `agregarVenta`;
delimiter ;;
CREATE PROCEDURE `agregarVenta`(P_FOLIO_VENTA_KIMCAVID varchar(15),
P_FECHA_HORA_VENTA_KIMCAVID datetime(0),
P_TOTAL_VENTA_KIMCAVID float(0),
P_DESCUENTO_VENTA_KIMCAVID float(0),
P_CLAVE_EMPLEADO_KIMCAVID varchar(15))
BEGIN 

INSERT INTO venta_kimcavid

VALUES(
P_FOLIO_VENTA_KIMCAVID,
P_FECHA_HORA_VENTA_KIMCAVID,
P_TOTAL_VENTA_KIMCAVID,
P_DESCUENTO_VENTA_KIMCAVID,
P_CLAVE_EMPLEADO_KIMCAVID,
1);

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for agregar_Cliente
-- ----------------------------
DROP PROCEDURE IF EXISTS `agregar_Cliente`;
delimiter ;;
CREATE PROCEDURE `agregar_Cliente`(P_RFC_CLIENTE_KIMCAVID varchar(15),
P_NOMBRE_CLIENTE_KIMCAVID varchar(200),
P_AP1_CLIENTE_KIMCAVID varchar(100),
P_AP2_CLIENTE_KIMCAVID varchar(100),
P_TELEFONO_CLIENTE_KIMCAVID varchar(10),
P_CORREO_CLIENTE_KIMCAVID varchar(250),
P_ID_ROL_CLIENTE_KIMCAVID int (11),
P_CONTRASENIA_CLIENTE_KIMCAVID varchar(250))
BEGIN 

INSERT INTO cliente_kimcavid

VALUES(
P_RFC_CLIENTE_KIMCAVID,
P_NOMBRE_CLIENTE_KIMCAVID,
P_AP1_CLIENTE_KIMCAVID,
P_AP2_CLIENTE_KIMCAVID,
P_TELEFONO_CLIENTE_KIMCAVID,
P_CORREO_CLIENTE_KIMCAVID,
P_ID_ROL_CLIENTE_KIMCAVID,
P_CONTRASENIA_CLIENTE_KIMCAVID,1);


END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for agregaVenta
-- ----------------------------
DROP PROCEDURE IF EXISTS `agregaVenta`;
delimiter ;;
CREATE PROCEDURE `agregaVenta`(P_FOLIO_VENTA_KIMCAVID varchar(15),
P_TOTAL_VENTA_KIMCAVID float(0),
DESCUENTO_VENTA_KIMCAVID float(0),
CLAVE_EMPLEADO_KIMCAVID varchar(15))
BEGIN 

INSERT INTO venta_kimcavid 

VALUES(
P_FOLIO_VENTA_KIMCAVID,
NOW(),
P_TOTAL_VENTA_KIMCAVID,
DESCUENTO_VENTA_KIMCAVID,
CLAVE_EMPLEADO_KIMCAVID,
1);

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for agreProducto
-- ----------------------------
DROP PROCEDURE IF EXISTS `agreProducto`;
delimiter ;;
CREATE PROCEDURE `agreProducto`(CLAVE_PRODUCTO_KIMCAVID varchar(15),
P_NOMBRE_PRODUCTO_KIMCAVID varchar(255),
P_URL_IMAGEN_PRODUCTO varchar(255),
P_STOCK_MIN_PRODUCTO_KIMCAVID tinyint(4),
P_STOCK_MAX_PRODCUTO_KIMCAVID int(11),
P_CANTIDAD_PRODUCTO_KIMCAVID int(11),
P_PRECIO_ACTUAL_PRODUCTO_KIMCAVID float(0),
P_DESCUENTO_PRODUCTO_KIMCAVID float(0),
P_ID_UNIDAD_MEDIDA_KIMCAVID int(11),
P_ID_MARCA_KIMCAVID int(11),
P_ID_CATEGORIA_KIMCAVID int(11),
P_ID_MODELO_KIMCAVID int(11))
BEGIN 

INSERT INTO producto_kimcavid

VALUES(
CLAVE_PRODUCTO_KIMCAVID,
P_NOMBRE_PRODUCTO_KIMCAVID,
P_URL_IMAGEN_PRODUCTO,
P_STOCK_MIN_PRODUCTO_KIMCAVID,
P_STOCK_MAX_PRODCUTO_KIMCAVID,
P_CANTIDAD_PRODUCTO_KIMCAVID,
P_PRECIO_ACTUAL_PRODUCTO_KIMCAVID,
P_DESCUENTO_PRODUCTO_KIMCAVID,
P_ID_UNIDAD_MEDIDA_KIMCAVID,
P_ID_MARCA_KIMCAVID,
P_ID_CATEGORIA_KIMCAVID,
P_ID_MODELO_KIMCAVID,
1);

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for agreVenta
-- ----------------------------
DROP PROCEDURE IF EXISTS `agreVenta`;
delimiter ;;
CREATE PROCEDURE `agreVenta`(P_FOLIO_VENTA_KIMCAVID varchar(15),
P_FECHA_HORA_VENTA_KIMCAVID datetime(0),
P_TOTAL_VENTA_KIMCAVID float(0),
P_DESCUENTO_VENTA_KIMCAVID float(0),
P_CLAVE_EMPLEADO_KIMCAVID varchar(15))
BEGIN 

INSERT INTO venta_kimcavid

VALUES(
P_FOLIO_VENTA_KIMCAVID,
P_FECHA_HORA_VENTA_KIMCAVID,
P_TOTAL_VENTA_KIMCAVID,
P_DESCUENTO_VENTA_KIMCAVID,
P_CLAVE_EMPLEADO_KIMCAVID,
1);

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for consultaCategoria
-- ----------------------------
DROP PROCEDURE IF EXISTS `consultaCategoria`;
delimiter ;;
CREATE PROCEDURE `consultaCategoria`()
BEGIN 

SELECT ID_CATEGORIA_KIMCAVID,NOMBRE_CATEGORIA_KIMCAVID 
FROM categoria_kimcavid 
WHERE STATUS_CATEGORIA_KIMCAVID = 1;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for consultaCompra
-- ----------------------------
DROP PROCEDURE IF EXISTS `consultaCompra`;
delimiter ;;
CREATE PROCEDURE `consultaCompra`()
BEGIN 

SELECT 
FOLIO_COMPRA_KIMCAVID,
CLAVE_PROVEEDOR_KIMCAVID,
FECHA_HORA_COMPRA,
TOTAL_COMPRA_KIMCAVID

FROM compra_kimcavid
WHERE STATUS_COMPRA = 1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for consultaMarca
-- ----------------------------
DROP PROCEDURE IF EXISTS `consultaMarca`;
delimiter ;;
CREATE PROCEDURE `consultaMarca`()
BEGIN 

SELECT ID_MARCA_KIMCAVID,NOMBRE_MARCA_KIMCAVID 
FROM marca_kimcavid
WHERE STATUS_MARCA_KIMCAVID = 1;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for consultaModelo
-- ----------------------------
DROP PROCEDURE IF EXISTS `consultaModelo`;
delimiter ;;
CREATE PROCEDURE `consultaModelo`()
BEGIN 

SELECT ID_MODELO_KIMCAVID,NOMBRE_MODELO_KIMCAVID
FROM modelo_kimcavid
WHERE STATUS_MODELO_KIMCAVID = 1;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for consultaProveedor
-- ----------------------------
DROP PROCEDURE IF EXISTS `consultaProveedor`;
delimiter ;;
CREATE PROCEDURE `consultaProveedor`()
BEGIN 

SELECT 
CLAVE_PROVEEDOR_KIMCAVID,
RAZON_SOCIAL_PROVEEDOR_KIMCAVID,
TELEFONO_PROVEEDOR_KIMCAVID,
DIRECCION_PROVEEDOR_KIMCAVID

FROM proveedor_kimcavid

WHERE STATUS_PROVEEDOR_KIMCAVID = 1;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for consultarCalzado
-- ----------------------------
DROP PROCEDURE IF EXISTS `consultarCalzado`;
delimiter ;;
CREATE PROCEDURE `consultarCalzado`()
BEGIN
	SELECT
	prod.CLAVE_PRODUCTO_KIMCAVID CLAVE, 
	prod.NOMBRE_PRODUCTO_KIMCAVID NOMBRE,
	prod.URL_IMAGEN_PRODUCTO IMAGEN, 	
	prod.STOCK_MIN_PRODUCTO_KIMCAVID STOCKMIN, 
	prod.STOCK_MAX_PRODCUTO_KIMCAVID STOCKMAX, 
	prod.CANTIDAD_PRODUCTO_KIMCAVID CANTIDAD, 
	prod.PRECIO_ACTUAL_PRODUCTO_KIMCAVID PRECIO, 
	prod.DESCUENTO_PRODUCTO_KIMCAVID DESCUENTO, 
	medida.NOMBRE_UNIDAD_MEDIDA_KIMCAVID MEDIDA, 
	marca.NOMBRE_MARCA_KIMCAVID MARCA, 
	categoria.NOMBRE_CATEGORIA_KIMCAVID CATEGORIA, 
	modelo.NOMBRE_MODELO_KIMCAVID MODELO
FROM
	producto_kimcavid prod
	INNER JOIN
	categoria_kimcavid categoria
	ON 
		prod.ID_CATEGORIA_KIMCAVID = categoria.ID_CATEGORIA_KIMCAVID
	INNER JOIN
	marca_kimcavid marca
	ON 
		prod.ID_MARCA_KIMCAVID = marca.ID_MARCA_KIMCAVID
	INNER JOIN
	modelo_kimcavid modelo
	ON 
		prod.ID_MODELO_KIMCAVID = modelo.ID_MODELO_KIMCAVID
	INNER JOIN
	unidad_medida_kimcavid medida
	ON 
		prod.ID_UNIDAD_MEDIDA_KIMCAVID = medida.ID_UNIDAD_MEDIDA_KIMCAVID_KIMCAVID
		WHERE prod.STATUS_PRODUCTO_KIMCAVID = 1;
	END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for consultarCliente
-- ----------------------------
DROP PROCEDURE IF EXISTS `consultarCliente`;
delimiter ;;
CREATE PROCEDURE `consultarCliente`()
BEGIN
	SELECT
	cliente_kimcavid.RFC_CLIENTE_KIMCAVID, 
	cliente_kimcavid.NOMBRE_CLIENTE_KIMCAVID, 
	cliente_kimcavid.AP1_CLIENTE_KIMCAVID, 
	cliente_kimcavid.AP2_CLIENTE_KIMCAVID, 
	cliente_kimcavid.TELEFONO_CLIENTE_KIMCAVID, 
	cliente_kimcavid.CORREO_CLIENTE_KIMCAVID, 
	rol_kimcavid.NOMBRE_ROL_KIMCAVID, 
	cliente_kimcavid.CONTRASENIA_CLIENTE_KIMCAVID
FROM
	cliente_kimcavid
	INNER JOIN
	rol_kimcavid
	ON 
		cliente_kimcavid.ID_ROL_CLIENTE_KIMCAVID = rol_kimcavid.ID_ROL_KIMCAVID
		WHERE STATUS_CLIENTE_KIMCAVID = 1;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for consultarEmpleado
-- ----------------------------
DROP PROCEDURE IF EXISTS `consultarEmpleado`;
delimiter ;;
CREATE PROCEDURE `consultarEmpleado`()
BEGIN
	SELECT
	empleado_kimcavid.CLAVE_EMPLEADO_KIMCAVID, 
	empleado_kimcavid.NOMBRE_EMPLEADO_KIMCAVID, 
	empleado_kimcavid.AP1_EMPLEADO_KIMCAVID, 
	empleado_kimcavid.AP2_EMPLEADO_KIMCAVID, 
	empleado_kimcavid.TELEFONO_EMPLEADO_KIMCAVID, 
	empleado_kimcavid.CORREO_EMPLEADO_KIMCAVID, 
	rol_kimcavid.NOMBRE_ROL_KIMCAVID, 
	empleado_kimcavid.CONTRASENIA_EMPLEADO_KIMCAVID
FROM
	empleado_kimcavid
	INNER JOIN
	rol_kimcavid
	ON 
		empleado_kimcavid.ID_ROL_KIMCAVID = rol_kimcavid.ID_ROL_KIMCAVID
		WHERE STATUS_EMPLEADO_KIMCAVID = 1;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for consultaRol
-- ----------------------------
DROP PROCEDURE IF EXISTS `consultaRol`;
delimiter ;;
CREATE PROCEDURE `consultaRol`()
BEGIN 

SELECT ID_ROL_KIMCAVID,
NOMBRE_ROL_KIMCAVID,
DESCRIPCION_ROL_KIMCAVID
FROM rol_kimcavid

WHERE STATUS_ROL_KIMCAVID = 1;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for consultarVenta
-- ----------------------------
DROP PROCEDURE IF EXISTS `consultarVenta`;
delimiter ;;
CREATE PROCEDURE `consultarVenta`()
BEGIN
	SELECT
	venta_kimcavid.FOLIO_VENTA_KIMCAVID, 
	venta_kimcavid.FECHA_HORA_VENTA_KIMCAVID, 
	venta_kimcavid.TOTAL_VENTA_KIMCAVID, 
	venta_kimcavid.DESCUENTO_VENTA_KIMCAVID, 
	empleado_kimcavid.NOMBRE_EMPLEADO_KIMCAVID
FROM
	venta_kimcavid
	INNER JOIN
	empleado_kimcavid
	ON 
		venta_kimcavid.CLAVE_EMPLEADO_KIMCAVID = empleado_kimcavid.CLAVE_EMPLEADO_KIMCAVID;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for consultaUnidadMedida
-- ----------------------------
DROP PROCEDURE IF EXISTS `consultaUnidadMedida`;
delimiter ;;
CREATE PROCEDURE `consultaUnidadMedida`()
BEGIN 

SELECT 
ID_UNIDAD_MEDIDA_KIMCAVID_KIMCAVID,
NOMBRE_UNIDAD_MEDIDA_KIMCAVID,
ABREVIATURA_UNIDAD_MEDIDA_KIMCAVID

FROM unidad_medida_kimcavid
WHERE STATUS_UNIDAD_MEDIDA_KIMCAVID = 1;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for eliminarCategoria
-- ----------------------------
DROP PROCEDURE IF EXISTS `eliminarCategoria`;
delimiter ;;
CREATE PROCEDURE `eliminarCategoria`(P_ID_CATEGORIA_KIMCAVID INT(11))
BEGIN 

UPDATE categoria_kimcavid SET STATUS_CATEGORIA_KIMCAVID = 0 
WHERE ID_CATEGORIA_KIMCAVID = P_ID_CATEGORIA_KIMCAVID;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for eliminarCliente
-- ----------------------------
DROP PROCEDURE IF EXISTS `eliminarCliente`;
delimiter ;;
CREATE PROCEDURE `eliminarCliente`(P_RFC_CLIENTE_KIMCAVID varchar(15))
BEGIN 

UPDATE cliente_kimcavid SET STATUS_CLIENTE_KIMCAVID = 0 WHERE RFC_CLIENTE_KIMCAVID = P_RFC_CLIENTE_KIMCAVID;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for eliminarDetaComp
-- ----------------------------
DROP PROCEDURE IF EXISTS `eliminarDetaComp`;
delimiter ;;
CREATE PROCEDURE `eliminarDetaComp`(P_ID_DETALLE_COMPRA_KIMCAVID int(11))
BEGIN 

UPDATE detalle_compra_kimcavid SET STATUS_DETALLE_COMPRA = 0 WHERE
ID_DETALLE_COMPRA_KIMCAVID = P_ID_DETALLE_COMPRA_KIMCAVID;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for eliminarDetaVenta
-- ----------------------------
DROP PROCEDURE IF EXISTS `eliminarDetaVenta`;
delimiter ;;
CREATE PROCEDURE `eliminarDetaVenta`(P_FOLIO_VENTA_KIMCAVID varchar(15))
BEGIN 

UPDATE detalle_venta_kimcavid SET STATUS_DETALLE_VENTA = 0 WHERE
FOLIO_VENTA_KIMCAVID = P_FOLIO_VENTA_KIMCAVID;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for eliminarEmpleado
-- ----------------------------
DROP PROCEDURE IF EXISTS `eliminarEmpleado`;
delimiter ;;
CREATE PROCEDURE `eliminarEmpleado`(P_CLAVE_EMPLEADO_KIMCAVID varchar(15))
BEGIN 

UPDATE empleado_kimcavid SET STATUS_EMPLEADO_KIMCAVID = 0 
WHERE CLAVE_EMPLEADO_KIMCAVID = P_CLAVE_EMPLEADO_KIMCAVID ;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for eliminarFactura
-- ----------------------------
DROP PROCEDURE IF EXISTS `eliminarFactura`;
delimiter ;;
CREATE PROCEDURE `eliminarFactura`(P_ID_FACTURA_KIMCAVID int(11))
BEGIN 

UPDATE factura_kimcavid SET STATUS_FACTURA_KIMCAVID = 0 WHERE ID_FACTURA_KIMCAVID = P_ID_FACTURA_KIMCAVID;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for eliminarMarca
-- ----------------------------
DROP PROCEDURE IF EXISTS `eliminarMarca`;
delimiter ;;
CREATE PROCEDURE `eliminarMarca`(P_ID_MARCA_KIMCAVID int(11))
BEGIN  

UPDATE marca_kimcavid SET STATUS_MARCA_KIMCAVID = 0 WHERE ID_MARCA_KIMCAVID = P_ID_MARCA_KIMCAVID;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for eliminarMedida
-- ----------------------------
DROP PROCEDURE IF EXISTS `eliminarMedida`;
delimiter ;;
CREATE PROCEDURE `eliminarMedida`(P_ID_UNIDAD_MEDIDA_KIMCAVID_KIMCAVID int(11))
BEGIN 

UPDATE unidad_medida_kimcavid SET STATUS_UNIDAD_MEDIDA_KIMCAVID = 0 WHERE ID_UNIDAD_MEDIDA_KIMCAVID_KIMCAVID = P_ID_UNIDAD_MEDIDA_KIMCAVID_KIMCAVID;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for eliminarModelo
-- ----------------------------
DROP PROCEDURE IF EXISTS `eliminarModelo`;
delimiter ;;
CREATE PROCEDURE `eliminarModelo`(P_ID_MODELO_KIMCAVID int(11))
BEGIN

UPDATE modelo_kimcavid SET STATUS_MODELO_KIMCAVID = 0 
WHERE ID_MODELO_KIMCAVID = P_ID_MODELO_KIMCAVID;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for eliminarProducto
-- ----------------------------
DROP PROCEDURE IF EXISTS `eliminarProducto`;
delimiter ;;
CREATE PROCEDURE `eliminarProducto`(P_CLAVE_PRODUCTO_KIMCAVID varchar(15))
BEGIN 

UPDATE producto_kimcavid SET STATUS_PRODUCTO_KIMCAVID = 0 WHERE CLAVE_PRODUCTO_KIMCAVID = P_CLAVE_PRODUCTO_KIMCAVID;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for eliminarProveedor
-- ----------------------------
DROP PROCEDURE IF EXISTS `eliminarProveedor`;
delimiter ;;
CREATE PROCEDURE `eliminarProveedor`(P_CLAVE_PROVEEDOR_KIMCAVID varchar(13))
BEGIN 

UPDATE proveedor_kimcavid SET STATUS_PROVEEDOR_KIMCAVID = 0 WHERE CLAVE_PROVEEDOR_KIMCAVID = P_CLAVE_PROVEEDOR_KIMCAVID;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for eliminarProveeProduct
-- ----------------------------
DROP PROCEDURE IF EXISTS `eliminarProveeProduct`;
delimiter ;;
CREATE PROCEDURE `eliminarProveeProduct`(P_CLAVE_PROVEEDOR_KIMCAVID varchar(13))
BEGIN

UPDATE proveedor_producto_kimcavid SET STATUS_PROVEEDOR_PRODUCTO = 0 WHERE
CLAVE_PROVEEDOR_KIMCAVID = P_CLAVE_PROVEEDOR_KIMCAVID;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for eliminarRol
-- ----------------------------
DROP PROCEDURE IF EXISTS `eliminarRol`;
delimiter ;;
CREATE PROCEDURE `eliminarRol`(P_ID_ROL_KIMCAVID int (11))
BEGIN

UPDATE rol_kimcavid SET STATUS_ROL_KIMCAVID = 0 WHERE ID_ROL_KIMCAVID = P_ID_ROL_KIMCAVID;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for eliminarVenta
-- ----------------------------
DROP PROCEDURE IF EXISTS `eliminarVenta`;
delimiter ;;
CREATE PROCEDURE `eliminarVenta`(P_FOLIO_VENTA_KIMCAVID varchar(15))
BEGIN 

UPDATE venta_kimcavid SET STATUS_EMPLEADO_KIMCAVID = 0 WHERE FOLIO_VENTA_KIMCAVID = P_FOLIO_VENTA_KIMCAVID;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for formProducto
-- ----------------------------
DROP PROCEDURE IF EXISTS `formProducto`;
delimiter ;;
CREATE PROCEDURE `formProducto`(CLAVE_PRODUCTO_KIMCAVID varchar(15),
P_NOMBRE_PRODUCTO_KIMCAVID varchar(255),
P_URL_IMAGEN_PRODUCTO varchar(255),
P_STOCK_MIN_PRODUCTO_KIMCAVID tinyint(4),
P_STOCK_MAX_PRODCUTO_KIMCAVID int(11),
P_CANTIDAD_PRODUCTO_KIMCAVID int(11),
P_PRECIO_ACTUAL_PRODUCTO_KIMCAVID float(0),
P_DESCUENTO_PRODUCTO_KIMCAVID float(0),
P_ID_UNIDAD_MEDIDA_KIMCAVID int(11),
P_ID_MARCA_KIMCAVID int(11),
P_ID_CATEGORIA_KIMCAVID int(11),
P_ID_MODELO_KIMCAVID int(11))
BEGIN 

INSERT INTO producto_kimcavid

VALUES(
CLAVE_PRODUCTO_KIMCAVID,
P_NOMBRE_PRODUCTO_KIMCAVID,
P_URL_IMAGEN_PRODUCTO,
P_STOCK_MIN_PRODUCTO_KIMCAVID,
P_STOCK_MAX_PRODCUTO_KIMCAVID,
P_CANTIDAD_PRODUCTO_KIMCAVID,
P_PRECIO_ACTUAL_PRODUCTO_KIMCAVID,
P_DESCUENTO_PRODUCTO_KIMCAVID,
P_ID_UNIDAD_MEDIDA_KIMCAVID,
P_ID_MARCA_KIMCAVID,
P_ID_CATEGORIA_KIMCAVID,
P_ID_MODELO_KIMCAVID,
1);

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for log_kimcavi
-- ----------------------------
DROP PROCEDURE IF EXISTS `log_kimcavi`;
delimiter ;;
CREATE PROCEDURE `log_kimcavi`(P_nombre_usuario VARCHAR(100),
P_contrasenia VARCHAR(59))
BEGIN
SELECT
	usuario.nombreUsuario, 
	usuario.contrasenia,
	empleado_kimcavid.NOMBRE_EMPLEADO_KIMCAVID, 
	empleado_kimcavid.AP1_EMPLEADO_KIMCAVID, 
	empleado_kimcavid.AP2_EMPLEADO_KIMCAVID, 
	empleado_kimcavid.CORREO_EMPLEADO_KIMCAVID, 
	empleado_kimcavid.TELEFONO_EMPLEADO_KIMCAVID, 
	rol_kimcavid.NOMBRE_ROL_KIMCAVID,
	rol_kimcavid.ID_ROL_KIMCAVID
FROM
	rol_kimcavid
	INNER JOIN
	empleado_kimcavid
	ON 
		rol_kimcavid.ID_ROL_KIMCAVID = empleado_kimcavid.ID_ROL_KIMCAVID
	INNER JOIN
	usuario
	ON 
		usuario.ID_EMPLEADO_KIMCAVID = empleado_kimcavid.ID_EMPLEADO_KIMCAVID
		WHERE nombreUsuario = P_nombre_usuario AND
		contrasenia = p_contrasenia;
		END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for mostrarCategoria
-- ----------------------------
DROP PROCEDURE IF EXISTS `mostrarCategoria`;
delimiter ;;
CREATE PROCEDURE `mostrarCategoria`()
BEGIN
	SELECT * FROM categoria_kimcavid WHERE categoria_kimcavid.STATUS_CATEGORIA_KIMCAVID=1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for mostrarEmpleado
-- ----------------------------
DROP PROCEDURE IF EXISTS `mostrarEmpleado`;
delimiter ;;
CREATE PROCEDURE `mostrarEmpleado`()
BEGIN
SELECT
	empleado_kimcavid.NOMBRE_EMPLEADO_KIMCAVID, 
	empleado_kimcavid.CLAVE_EMPLEADO_KIMCAVID
FROM
	empleado_kimcavid
	WHERE
	STATUS_EMPLEADO_KIMCAVID = 1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for mostrarMarca
-- ----------------------------
DROP PROCEDURE IF EXISTS `mostrarMarca`;
delimiter ;;
CREATE PROCEDURE `mostrarMarca`()
BEGIN
	SELECT * FROM marca_kimcavid WHERE marca_kimcavid.STATUS_MARCA_KIMCAVID=1;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for mostrarMedida
-- ----------------------------
DROP PROCEDURE IF EXISTS `mostrarMedida`;
delimiter ;;
CREATE PROCEDURE `mostrarMedida`()
BEGIN
	SELECT
	unidad_medida_kimcavid.*
FROM
	unidad_medida_kimcavid WHERE STATUS_UNIDAD_MEDIDA_KIMCAVID = 1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for mostrarModelo
-- ----------------------------
DROP PROCEDURE IF EXISTS `mostrarModelo`;
delimiter ;;
CREATE PROCEDURE `mostrarModelo`()
BEGIN
	SELECT * FROM modelo_kimcavid WHERE modelo_kimcavid.STATUS_MODELO_KIMCAVID=1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for mostrarProovedor
-- ----------------------------
DROP PROCEDURE IF EXISTS `mostrarProovedor`;
delimiter ;;
CREATE PROCEDURE `mostrarProovedor`()
BEGIN
	SELECT * FROM proveedor_kimcavid 
	WHERE CLAVE_PROVEEDOR_KIMCAVID.STATUS_PROVEEDOR_KIMCAVID=1;


END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for mostrarProv
-- ----------------------------
DROP PROCEDURE IF EXISTS `mostrarProv`;
delimiter ;;
CREATE PROCEDURE `mostrarProv`()
BEGIN
 
	SELECT * FROM proveedor_kimcavid 
	WHERE CLAVE_PROVEEDOR_KIMCAVID.STATUS_PROVEEDOR_KIMCAVID=1;
 
 END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for mostrarRol
-- ----------------------------
DROP PROCEDURE IF EXISTS `mostrarRol`;
delimiter ;;
CREATE PROCEDURE `mostrarRol`()
BEGIN
	#Routine body goes here...
SELECT rol_kimcavid.* FROM rol_kimcavid WHERE rol_kimcavid.STATUS_ROL_KIMCAVID=1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for registroCatagoria
-- ----------------------------
DROP PROCEDURE IF EXISTS `registroCatagoria`;
delimiter ;;
CREATE PROCEDURE `registroCatagoria`(P_ID_CATEGORIA_KIMCAVID INT(11),
P_NOMBRE_CATEGORIA_KIMCAVID varchar(100))
BEGIN 

INSERT INTO categoria_kimcavid

VALUES(
P_ID_CATEGORIA_KIMCAVID,
P_NOMBRE_CATEGORIA_KIMCAVID,
1);

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for registroContacto
-- ----------------------------
DROP PROCEDURE IF EXISTS `registroContacto`;
delimiter ;;
CREATE PROCEDURE `registroContacto`(P_ID_CONTACTO int (11),
P_NOMBRE_CONTACTO varchar (255),
P_CORREO_CONTACTO varchar (255),
P_TELEFONO_CONTACTO varchar (255),
P_MENSAJE varchar (255))
BEGIN 

INSERT INTO contacto_kimcavid

VALUES(
P_ID_CONTACTO,
P_NOMBRE_CONTACTO,
P_CORREO_CONTACTO,
P_TELEFONO_CONTACTO,
P_MENSAJE);

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for visualProve
-- ----------------------------
DROP PROCEDURE IF EXISTS `visualProve`;
delimiter ;;
CREATE PROCEDURE `visualProve`()
BEGIN 

SELECT CLAVE_PROVEEDOR_KIMCAVID,
RAZON_SOCIAL_PROVEEDOR_KIMCAVID

FROM proveedor_kimcavid
WHERE STATUS_PROVEEDOR_KIMCAVID = 1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for visualProvee
-- ----------------------------
DROP PROCEDURE IF EXISTS `visualProvee`;
delimiter ;;
CREATE PROCEDURE `visualProvee`()
BEGIN 

SELECT CLAVE_PROVEEDOR_KIMCAVID,
RAZON_SOCIAL_PROVEEDOR_KIMCAVID
FROM proveedor_kimcavid
WHERE STATUS_PROVEEDOR_KIMCAVID = 1;

END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
