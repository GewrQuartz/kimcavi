/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : localhost:3306
 Source Schema         : kimcavibd

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 28/06/2022 20:01:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for categoria_kimcavid
-- ----------------------------
DROP TABLE IF EXISTS `categoria_kimcavid`;
CREATE TABLE `categoria_kimcavid`  (
  `ID_CATEGORIA_KIMCAVID` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE_CATEGORIA_KIMCAVID` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `STATUS_CATEGORIA_KIMCAVID` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`ID_CATEGORIA_KIMCAVID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of categoria_kimcavid
-- ----------------------------

-- ----------------------------
-- Table structure for cliente_kimcavid
-- ----------------------------
DROP TABLE IF EXISTS `cliente_kimcavid`;
CREATE TABLE `cliente_kimcavid`  (
  `RFC_CLIENTE_KIMCAVID` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `NOMBRE_CLIENTE_KIMCAVID` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `AP1_CLIENTE_MEMO_KIMCAVID` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `AP2_CLIENTE_MEMO_KIMCAVID` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `TELEFONO_CLIENTE_KIMCAVID` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `CORREO_CLIENTE_KIMCAVID` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `STATUS_CLIENTE_KIMCAVID` bit(1) NOT NULL,
  `ID_ROL_CLIENTE_KIMCAVID` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`RFC_CLIENTE_KIMCAVID`) USING BTREE,
  INDEX `ROL_CLIENTE`(`ID_ROL_CLIENTE_KIMCAVID`) USING BTREE,
  CONSTRAINT `ROL_CLIENTE` FOREIGN KEY (`ID_ROL_CLIENTE_KIMCAVID`) REFERENCES `rol_kimcavid` (`ID_ROL_KIMCAVID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cliente_kimcavid
-- ----------------------------
INSERT INTO `cliente_kimcavid` VALUES ('RERG010209', 'MEMO', 'REYES', 'REYES', '5550606487', 'guillermoreyes@gmail.com', b'1', 1);

-- ----------------------------
-- Table structure for compra_kimcsvid
-- ----------------------------
DROP TABLE IF EXISTS `compra_kimcsvid`;
CREATE TABLE `compra_kimcsvid`  (
  `MEMO_ID_COMPRA_KIMCAVID` int(11) NOT NULL AUTO_INCREMENT,
  `FOLIO_COMPRA_KIMCAVID` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `CLAVE_PROVEEDOR_KIMCAVID` varchar(13) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `FECHA_HORA_COMPRA` datetime(0) NOT NULL,
  `TOTAL_COMPRA_KIMCAVID` float NOT NULL,
  PRIMARY KEY (`MEMO_ID_COMPRA_KIMCAVID`) USING BTREE,
  INDEX `PROV_COM`(`CLAVE_PROVEEDOR_KIMCAVID`) USING BTREE,
  CONSTRAINT `PROV_COM` FOREIGN KEY (`CLAVE_PROVEEDOR_KIMCAVID`) REFERENCES `proveedor_kimcavid` (`CLAVE_PROVEEDOR_KIMCAVID`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of compra_kimcsvid
-- ----------------------------

-- ----------------------------
-- Table structure for detalle_compra_kimcavid
-- ----------------------------
DROP TABLE IF EXISTS `detalle_compra_kimcavid`;
CREATE TABLE `detalle_compra_kimcavid`  (
  `ID_DETALLE_COMPRA_KIMCAVID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_COMPRA_KIMCAVID` int(11) NOT NULL,
  `CLAVE_PRODUCTO_KIMCAVID` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `CANTIDAD_COMPRA_KIMCAVID` tinyint(4) NOT NULL,
  `PRECIO_COMPRA_KIMCAVID` float NOT NULL,
  PRIMARY KEY (`ID_DETALLE_COMPRA_KIMCAVID`) USING BTREE,
  INDEX `DC_COMPRA`(`ID_COMPRA_KIMCAVID`) USING BTREE,
  INDEX `PROD_DC`(`CLAVE_PRODUCTO_KIMCAVID`) USING BTREE,
  CONSTRAINT `DC_COMPRA` FOREIGN KEY (`ID_COMPRA_KIMCAVID`) REFERENCES `compra_kimcsvid` (`MEMO_ID_COMPRA_KIMCAVID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `PROD_DC` FOREIGN KEY (`CLAVE_PRODUCTO_KIMCAVID`) REFERENCES `producto_kimcavid` (`CLAVE_PRODUCTO_KIMCAVID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of detalle_compra_kimcavid
-- ----------------------------

-- ----------------------------
-- Table structure for detalle_venta_kimcavid
-- ----------------------------
DROP TABLE IF EXISTS `detalle_venta_kimcavid`;
CREATE TABLE `detalle_venta_kimcavid`  (
  `FOLIO_VENTA_KIMCAVID` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `CLAVE_PRODUCTO_KIMCAVID` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `CANTIDAD_VENTA_KIMCAVID` int(11) NOT NULL,
  `PRECIO_VENTA_KIMCAVID` float NOT NULL,
  `TOTAL_VENTA_KIMCAVID` float NOT NULL,
  `DESCUENTO_VENTA_KIMCAVID` float NOT NULL,
  PRIMARY KEY (`FOLIO_VENTA_KIMCAVID`, `CLAVE_PRODUCTO_KIMCAVID`) USING BTREE,
  INDEX `VEN_PRODC`(`CLAVE_PRODUCTO_KIMCAVID`) USING BTREE,
  INDEX `FOLIO_VENTA_KIMCAVID`(`FOLIO_VENTA_KIMCAVID`) USING BTREE,
  CONSTRAINT `VEN_FV` FOREIGN KEY (`FOLIO_VENTA_KIMCAVID`) REFERENCES `venta_kimcavid` (`FOLIO_VENTA_KIMCAVID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `VEN_PRODC` FOREIGN KEY (`CLAVE_PRODUCTO_KIMCAVID`) REFERENCES `producto_kimcavid` (`CLAVE_PRODUCTO_KIMCAVID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of detalle_venta_kimcavid
-- ----------------------------

-- ----------------------------
-- Table structure for empleado_kimcavid
-- ----------------------------
DROP TABLE IF EXISTS `empleado_kimcavid`;
CREATE TABLE `empleado_kimcavid`  (
  `CLAVE_EMPLEADO_KIMCAVID` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `NOMBRE_EMPLEADO_KIMCAVID` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `AP1_EMPLEADO_KIMCAVID` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `AP2_EMPLEADO_KIMCAVID` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `TELEFONO_EMPLEADO_KIMCAVID` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `CORREO_EMPLEADO_KIMCAVID` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ID_ROL_KIMCAVID` int(11) NOT NULL,
  `STATUS_EMPLEADO_KIMCAVID` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`CLAVE_EMPLEADO_KIMCAVID`) USING BTREE,
  INDEX `ROL_EMPLEADO`(`ID_ROL_KIMCAVID`) USING BTREE,
  CONSTRAINT `EM_ROL` FOREIGN KEY (`ID_ROL_KIMCAVID`) REFERENCES `rol_kimcavid` (`ID_ROL_KIMCAVID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of empleado_kimcavid
-- ----------------------------

-- ----------------------------
-- Table structure for factura_kimcavid
-- ----------------------------
DROP TABLE IF EXISTS `factura_kimcavid`;
CREATE TABLE `factura_kimcavid`  (
  `ID_FACTURA_KIMCAVID` int(11) NOT NULL,
  `RFC_CLIENTE_KIMCAVID` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `FOLIO_VENTA_KIMCAVID` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`ID_FACTURA_KIMCAVID`) USING BTREE,
  INDEX `CLIEN_FACT`(`RFC_CLIENTE_KIMCAVID`) USING BTREE,
  INDEX `DV_FOLIO`(`FOLIO_VENTA_KIMCAVID`) USING BTREE,
  CONSTRAINT `CLIEN_FACT` FOREIGN KEY (`RFC_CLIENTE_KIMCAVID`) REFERENCES `cliente_kimcavid` (`RFC_CLIENTE_KIMCAVID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `DV_FOLIO` FOREIGN KEY (`FOLIO_VENTA_KIMCAVID`) REFERENCES `detalle_venta_kimcavid` (`FOLIO_VENTA_KIMCAVID`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of factura_kimcavid
-- ----------------------------

-- ----------------------------
-- Table structure for marca_kimcavid
-- ----------------------------
DROP TABLE IF EXISTS `marca_kimcavid`;
CREATE TABLE `marca_kimcavid`  (
  `ID_MARCA_KIMCAVID` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE_MARCA_KIMCAVID` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `STATUS_MARCA_KIMCAVID` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`ID_MARCA_KIMCAVID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of marca_kimcavid
-- ----------------------------

-- ----------------------------
-- Table structure for modelo_kimcavid
-- ----------------------------
DROP TABLE IF EXISTS `modelo_kimcavid`;
CREATE TABLE `modelo_kimcavid`  (
  `ID_MODELO_KIMCAVID` int(11) NOT NULL,
  `NOMBRE_MODELO_KIMCAVID` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `STATUS_MODELO_KIMCAVID` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`ID_MODELO_KIMCAVID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of modelo_kimcavid
-- ----------------------------

-- ----------------------------
-- Table structure for producto_kimcavid
-- ----------------------------
DROP TABLE IF EXISTS `producto_kimcavid`;
CREATE TABLE `producto_kimcavid`  (
  `CLAVE_PRODUCTO_KIMCAVID` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `NOMBRE_PRODUCTO_KIMCAVID` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `STOCK_MIN_PRODUCTO_KIMCAVID` tinyint(4) NOT NULL,
  `STOCK_MAX_PRODCUTO_KIMCAVID` int(11) NOT NULL,
  `CANTIDAD_PRODUCTO_KIMCAVID` int(11) NOT NULL,
  `PRECO_ACTUAL_PRODUCTO_KIMCAVID` float NOT NULL,
  `DESCUENTO_PRODUCTO_KIMCAVID` float NOT NULL,
  `ID_UNIDAD_MEDIDA_KIMCAVID` int(11) NOT NULL,
  `ID_MARCA_KIMCAVID` int(11) NOT NULL,
  `ID_CATEGORIA_KIMCAVID` int(11) NOT NULL,
  `ID_MODELO_KIMCAVID` int(11) NOT NULL,
  `STATUS_PRODUCTO_KIMCAVID` bit(1) NOT NULL DEFAULT b'1',
  `URL_IMAGEN_PRODUCTO` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`CLAVE_PRODUCTO_KIMCAVID`) USING BTREE,
  INDEX `MARCA_PROD`(`ID_MARCA_KIMCAVID`) USING BTREE,
  INDEX `MED_PROD`(`ID_UNIDAD_MEDIDA_KIMCAVID`) USING BTREE,
  INDEX `CAT_PROD`(`ID_CATEGORIA_KIMCAVID`) USING BTREE,
  INDEX `MOD_PRO`(`ID_MODELO_KIMCAVID`) USING BTREE,
  CONSTRAINT `CAT_PROD` FOREIGN KEY (`ID_CATEGORIA_KIMCAVID`) REFERENCES `categoria_kimcavid` (`ID_CATEGORIA_KIMCAVID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `MARCA_PROD` FOREIGN KEY (`ID_MARCA_KIMCAVID`) REFERENCES `marca_kimcavid` (`ID_MARCA_KIMCAVID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `MED_PROD` FOREIGN KEY (`ID_UNIDAD_MEDIDA_KIMCAVID`) REFERENCES `unidad_medida_kimcavid` (`ID_UNIDAD_MEDIDA_KIMCAVID_KIMCAVID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `MOD_PRO` FOREIGN KEY (`ID_MODELO_KIMCAVID`) REFERENCES `modelo_kimcavid` (`ID_MODELO_KIMCAVID`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of producto_kimcavid
-- ----------------------------

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
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of proveedor_kimcavid
-- ----------------------------

-- ----------------------------
-- Table structure for proveedor_producto_kimcavid
-- ----------------------------
DROP TABLE IF EXISTS `proveedor_producto_kimcavid`;
CREATE TABLE `proveedor_producto_kimcavid`  (
  `CLAVE_PROVEEDOR_KIMCAVID` varchar(13) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `CLAVE_PRODUCTO_KIMCAVID` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `PRIORIDAD_KIMCAVID` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`CLAVE_PROVEEDOR_KIMCAVID`) USING BTREE,
  INDEX `DP_PROD`(`CLAVE_PRODUCTO_KIMCAVID`) USING BTREE,
  CONSTRAINT `DP_PROD` FOREIGN KEY (`CLAVE_PRODUCTO_KIMCAVID`) REFERENCES `producto_kimcavid` (`CLAVE_PRODUCTO_KIMCAVID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `DP_PROV` FOREIGN KEY (`CLAVE_PROVEEDOR_KIMCAVID`) REFERENCES `proveedor_kimcavid` (`CLAVE_PROVEEDOR_KIMCAVID`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of proveedor_producto_kimcavid
-- ----------------------------

-- ----------------------------
-- Table structure for rol_kimcavid
-- ----------------------------
DROP TABLE IF EXISTS `rol_kimcavid`;
CREATE TABLE `rol_kimcavid`  (
  `ID_ROL_KIMCAVID` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE_ROL_KIMCAVID` varchar(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `DESCRIPCION_ROL_KIMCAVID` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`ID_ROL_KIMCAVID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of rol_kimcavid
-- ----------------------------
INSERT INTO `rol_kimcavid` VALUES (1, 'CLIENTE', 'CLIENTE');
INSERT INTO `rol_kimcavid` VALUES (2, 'ADMINISTRADOR', 'CONTROL');
INSERT INTO `rol_kimcavid` VALUES (3, 'SUPERVISOR', 'CONTROL');

-- ----------------------------
-- Table structure for unidad_medida_kimcavid
-- ----------------------------
DROP TABLE IF EXISTS `unidad_medida_kimcavid`;
CREATE TABLE `unidad_medida_kimcavid`  (
  `ID_UNIDAD_MEDIDA_KIMCAVID_KIMCAVID` int(11) NOT NULL,
  `NOMBRE_UNIDAD_MEDIDA_KIMCAVID` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ABREVIATURA_UNIDAD_MEDIDA_KIMCAVID` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `STATUS_UNIDAD_MEDIDA_KIMCAVID` bit(1) NOT NULL,
  PRIMARY KEY (`ID_UNIDAD_MEDIDA_KIMCAVID_KIMCAVID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of unidad_medida_kimcavid
-- ----------------------------

-- ----------------------------
-- Table structure for venta_kimcavid
-- ----------------------------
DROP TABLE IF EXISTS `venta_kimcavid`;
CREATE TABLE `venta_kimcavid`  (
  `FOLIO_VENTA_KIMCAVID` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `FECHA_HORA_VENTA_KIMCAVID` datetime(0) NOT NULL,
  `TOTAL_VENTA_KIMCAVID` float NOT NULL,
  `DESCUENTO_VENTA_KIMCAVID` float NOT NULL,
  `CLAVE_EMPLEADO_KIMCAVID` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`FOLIO_VENTA_KIMCAVID`) USING BTREE,
  INDEX `EM_VEN`(`CLAVE_EMPLEADO_KIMCAVID`) USING BTREE,
  CONSTRAINT `EM_VEN` FOREIGN KEY (`CLAVE_EMPLEADO_KIMCAVID`) REFERENCES `empleado_kimcavid` (`CLAVE_EMPLEADO_KIMCAVID`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of venta_kimcavid
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
