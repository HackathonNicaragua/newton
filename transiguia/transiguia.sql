/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : transiguia

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2017-11-26 01:09:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `articulo`
-- ----------------------------
DROP TABLE IF EXISTS `articulo`;
CREATE TABLE `articulo` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(255) DEFAULT NULL,
  `Total` int(11) DEFAULT NULL,
  `IdCategoria` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IdCategoria` (`IdCategoria`),
  CONSTRAINT `IdCategoria` FOREIGN KEY (`IdCategoria`) REFERENCES `categoria` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of articulo
-- ----------------------------
INSERT INTO `articulo` VALUES ('2', 'Arto. 3 Conceptos básicos', null, null);
INSERT INTO `articulo` VALUES ('3', 'Arto. 26 -Valor de las multas por infracciones de trásito', null, null);
INSERT INTO `articulo` VALUES ('4', 'Señales Preventivas', null, null);
INSERT INTO `articulo` VALUES ('5', 'Señales Reglamentarias', null, null);

-- ----------------------------
-- Table structure for `auth_assignment`
-- ----------------------------
DROP TABLE IF EXISTS `auth_assignment`;
CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_assignment
-- ----------------------------
INSERT INTO `auth_assignment` VALUES ('administrator', '1', '1502393734');
INSERT INTO `auth_assignment` VALUES ('estudiante', '4', '1502920005');
INSERT INTO `auth_assignment` VALUES ('estudiante', '5', '1504828262');

-- ----------------------------
-- Table structure for `auth_item`
-- ----------------------------
DROP TABLE IF EXISTS `auth_item`;
CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`),
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_item
-- ----------------------------
INSERT INTO `auth_item` VALUES ('/*', '2', null, null, null, '1502241553', '1502241553');
INSERT INTO `auth_item` VALUES ('/admin/*', '2', null, null, null, '1502241594', '1502241594');
INSERT INTO `auth_item` VALUES ('/admin/assignment/*', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/admin/assignment/assign', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/admin/assignment/index', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/admin/assignment/revoke', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/admin/assignment/view', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/admin/default/*', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/admin/default/index', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/admin/menu/*', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/admin/menu/create', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/admin/menu/delete', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/admin/menu/index', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/admin/menu/update', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/admin/menu/view', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/admin/permission/*', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/admin/permission/assign', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/admin/permission/create', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/admin/permission/delete', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/admin/permission/index', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/admin/permission/remove', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/admin/permission/update', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/admin/permission/view', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/admin/role/*', '2', null, null, null, '1502241594', '1502241594');
INSERT INTO `auth_item` VALUES ('/admin/role/assign', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/admin/role/create', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/admin/role/delete', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/admin/role/index', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/admin/role/remove', '2', null, null, null, '1502241594', '1502241594');
INSERT INTO `auth_item` VALUES ('/admin/role/update', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/admin/role/view', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/admin/route/*', '2', null, null, null, '1502241594', '1502241594');
INSERT INTO `auth_item` VALUES ('/admin/route/assign', '2', null, null, null, '1502241594', '1502241594');
INSERT INTO `auth_item` VALUES ('/admin/route/create', '2', null, null, null, '1502241594', '1502241594');
INSERT INTO `auth_item` VALUES ('/admin/route/index', '2', null, null, null, '1502241594', '1502241594');
INSERT INTO `auth_item` VALUES ('/admin/route/refresh', '2', null, null, null, '1502241594', '1502241594');
INSERT INTO `auth_item` VALUES ('/admin/route/remove', '2', null, null, null, '1502241594', '1502241594');
INSERT INTO `auth_item` VALUES ('/admin/rule/*', '2', null, null, null, '1502241594', '1502241594');
INSERT INTO `auth_item` VALUES ('/admin/rule/create', '2', null, null, null, '1502241594', '1502241594');
INSERT INTO `auth_item` VALUES ('/admin/rule/delete', '2', null, null, null, '1502241594', '1502241594');
INSERT INTO `auth_item` VALUES ('/admin/rule/index', '2', null, null, null, '1502241594', '1502241594');
INSERT INTO `auth_item` VALUES ('/admin/rule/update', '2', null, null, null, '1502241594', '1502241594');
INSERT INTO `auth_item` VALUES ('/admin/rule/view', '2', null, null, null, '1502241594', '1502241594');
INSERT INTO `auth_item` VALUES ('/admin/user/*', '2', null, null, null, '1502241594', '1502241594');
INSERT INTO `auth_item` VALUES ('/admin/user/activate', '2', null, null, null, '1502241594', '1502241594');
INSERT INTO `auth_item` VALUES ('/admin/user/change-password', '2', null, null, null, '1502241594', '1502241594');
INSERT INTO `auth_item` VALUES ('/admin/user/delete', '2', null, null, null, '1502241594', '1502241594');
INSERT INTO `auth_item` VALUES ('/admin/user/index', '2', null, null, null, '1502241594', '1502241594');
INSERT INTO `auth_item` VALUES ('/admin/user/login', '2', null, null, null, '1502241594', '1502241594');
INSERT INTO `auth_item` VALUES ('/admin/user/logout', '2', null, null, null, '1502241594', '1502241594');
INSERT INTO `auth_item` VALUES ('/admin/user/request-password-reset', '2', null, null, null, '1502241594', '1502241594');
INSERT INTO `auth_item` VALUES ('/admin/user/reset-password', '2', null, null, null, '1502241594', '1502241594');
INSERT INTO `auth_item` VALUES ('/admin/user/signup', '2', null, null, null, '1502241594', '1502241594');
INSERT INTO `auth_item` VALUES ('/admin/user/view', '2', null, null, null, '1502241594', '1502241594');
INSERT INTO `auth_item` VALUES ('/debug/*', '2', null, null, null, '1502241594', '1502241594');
INSERT INTO `auth_item` VALUES ('/debug/default/*', '2', null, null, null, '1502241594', '1502241594');
INSERT INTO `auth_item` VALUES ('/debug/default/db-explain', '2', null, null, null, '1502241594', '1502241594');
INSERT INTO `auth_item` VALUES ('/debug/default/download-mail', '2', null, null, null, '1502241594', '1502241594');
INSERT INTO `auth_item` VALUES ('/debug/default/index', '2', null, null, null, '1502241594', '1502241594');
INSERT INTO `auth_item` VALUES ('/debug/default/toolbar', '2', null, null, null, '1502241594', '1502241594');
INSERT INTO `auth_item` VALUES ('/debug/default/view', '2', null, null, null, '1502241594', '1502241594');
INSERT INTO `auth_item` VALUES ('/gii/*', '2', null, null, null, '1502241594', '1502241594');
INSERT INTO `auth_item` VALUES ('/gii/default/*', '2', null, null, null, '1502241594', '1502241594');
INSERT INTO `auth_item` VALUES ('/gii/default/action', '2', null, null, null, '1502241594', '1502241594');
INSERT INTO `auth_item` VALUES ('/gii/default/diff', '2', null, null, null, '1502241594', '1502241594');
INSERT INTO `auth_item` VALUES ('/gii/default/index', '2', null, null, null, '1502241594', '1502241594');
INSERT INTO `auth_item` VALUES ('/gii/default/preview', '2', null, null, null, '1502241594', '1502241594');
INSERT INTO `auth_item` VALUES ('/gii/default/view', '2', null, null, null, '1502241594', '1502241594');
INSERT INTO `auth_item` VALUES ('/site/*', '2', null, null, null, '1502241594', '1502241594');
INSERT INTO `auth_item` VALUES ('/site/about', '2', null, null, null, '1502241594', '1502241594');
INSERT INTO `auth_item` VALUES ('/site/captcha', '2', null, null, null, '1502241594', '1502241594');
INSERT INTO `auth_item` VALUES ('/site/contact', '2', null, null, null, '1502241594', '1502241594');
INSERT INTO `auth_item` VALUES ('/site/error', '2', null, null, null, '1502241594', '1502241594');
INSERT INTO `auth_item` VALUES ('/site/index', '2', null, null, null, '1502241594', '1502241594');
INSERT INTO `auth_item` VALUES ('/site/login', '2', null, null, null, '1502241594', '1502241594');
INSERT INTO `auth_item` VALUES ('/site/logout', '2', null, null, null, '1502241594', '1502241594');
INSERT INTO `auth_item` VALUES ('/user/*', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/user/admin/*', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/user/admin/assignments', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/user/admin/block', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/user/admin/confirm', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/user/admin/create', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/user/admin/delete', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/user/admin/index', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/user/admin/info', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/user/admin/switch', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/user/admin/update', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/user/admin/update-profile', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/user/profile/*', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/user/profile/index', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/user/profile/show', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/user/recovery/*', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/user/recovery/request', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/user/recovery/reset', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/user/registration/*', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/user/registration/confirm', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/user/registration/connect', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/user/registration/register', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/user/registration/resend', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/user/security/*', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/user/security/auth', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/user/security/login', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/user/security/logout', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/user/settings/*', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/user/settings/account', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/user/settings/confirm', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/user/settings/delete', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/user/settings/disconnect', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/user/settings/networks', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('/user/settings/profile', '2', null, null, null, '1502241593', '1502241593');
INSERT INTO `auth_item` VALUES ('administrator', '1', null, null, null, '1502241539', '1502241689');
INSERT INTO `auth_item` VALUES ('estudiante', '1', null, null, null, '1502914131', '1502914131');

-- ----------------------------
-- Table structure for `auth_item_child`
-- ----------------------------
DROP TABLE IF EXISTS `auth_item_child`;
CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_item_child
-- ----------------------------
INSERT INTO `auth_item_child` VALUES ('administrator', '/*');

-- ----------------------------
-- Table structure for `auth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `auth_rule`;
CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_rule
-- ----------------------------

-- ----------------------------
-- Table structure for `categoria`
-- ----------------------------
DROP TABLE IF EXISTS `categoria`;
CREATE TABLE `categoria` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of categoria
-- ----------------------------

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` blob,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`),
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------

-- ----------------------------
-- Table structure for `migration`
-- ----------------------------
DROP TABLE IF EXISTS `migration`;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of migration
-- ----------------------------
INSERT INTO `migration` VALUES ('m000000_000000_base', '1502214347');
INSERT INTO `migration` VALUES ('m140209_132017_init', '1502214354');
INSERT INTO `migration` VALUES ('m140403_174025_create_account_table', '1502214354');
INSERT INTO `migration` VALUES ('m140504_113157_update_tables', '1502214356');
INSERT INTO `migration` VALUES ('m140504_130429_create_token_table', '1502214357');
INSERT INTO `migration` VALUES ('m140506_102106_rbac_init', '1502241345');
INSERT INTO `migration` VALUES ('m140602_111327_create_menu_table', '1502240994');
INSERT INTO `migration` VALUES ('m140830_171933_fix_ip_field', '1502214357');
INSERT INTO `migration` VALUES ('m140830_172703_change_account_table_name', '1502214357');
INSERT INTO `migration` VALUES ('m141222_110026_update_ip_field', '1502214358');
INSERT INTO `migration` VALUES ('m141222_135246_alter_username_length', '1502214358');
INSERT INTO `migration` VALUES ('m150614_103145_update_social_account_table', '1502214359');
INSERT INTO `migration` VALUES ('m150623_212711_fix_username_notnull', '1502214359');
INSERT INTO `migration` VALUES ('m151218_234654_add_timezone_to_profile', '1502214359');
INSERT INTO `migration` VALUES ('m160312_050000_create_user', '1502240994');

-- ----------------------------
-- Table structure for `multa`
-- ----------------------------
DROP TABLE IF EXISTS `multa`;
CREATE TABLE `multa` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(255) DEFAULT NULL,
  `Precio` float DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of multa
-- ----------------------------

-- ----------------------------
-- Table structure for `pregunta`
-- ----------------------------
DROP TABLE IF EXISTS `pregunta`;
CREATE TABLE `pregunta` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Pregunta` varchar(255) DEFAULT NULL,
  `IdArticulo` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IdArticulo_P` (`IdArticulo`),
  CONSTRAINT `IdArticulo_P` FOREIGN KEY (`IdArticulo`) REFERENCES `articulo` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pregunta
-- ----------------------------
INSERT INTO `pregunta` VALUES ('2', 'Acción u omisión culposa cometida por cualquier conductor, pasajero o peatón en la vía pública o privada causando daños materiales, lesiones o muerte de personas, donde interviene por los menos un vehículo en movimiento', '2');
INSERT INTO `pregunta` VALUES ('3', 'Acción y efecto de aventajar un vehículo a otro sobre la marcha', '2');
INSERT INTO `pregunta` VALUES ('4', 'Es la parte superior de la vía pública destinada únicamente para la circulación peatonal', '2');
INSERT INTO `pregunta` VALUES ('5', ' Franja longitudinal afirmada contiguo a la calzada, que no está destinada al uso de vehículos automotores, salvo circunstancias excepcionales', '2');
INSERT INTO `pregunta` VALUES ('6', 'Es el área máxima de visión que debe de tener todo conductor al desplazarse sobre la vía', '2');
INSERT INTO `pregunta` VALUES ('7', ' Es el área de la vía destinada únicamente para la circulación de vehículos automotor, de pedal o de tracción animal', '2');
INSERT INTO `pregunta` VALUES ('8', 'Operación de vehículos con manifiesto desprecio por la vida, con notoria y deliberada transgresión a las normas de tránsito, poniendo en peligro concreto la vida o integridad física de las personas y sus bienes', '2');
INSERT INTO `pregunta` VALUES ('9', 'Área destinada para la circulación vehicular, sin que esta tenga trazo alguno que determine su dirección.', '2');
INSERT INTO `pregunta` VALUES ('10', 'Banda longitudinal en que puede estar subdividida la calzada, delimitada o no por marcas viales longitudinales, siempre que tenga una anchura determinada y suficiente para permitir la circulación de una fila de automóviles que no sean motocicletas', '2');
INSERT INTO `pregunta` VALUES ('11', 'Conjunto de factores o condiciones climáticas que dificultan la visibilidad del conductor, tales como neblina, lluvia, polvo, humo, entre otros', '2');
INSERT INTO `pregunta` VALUES ('12', 'Persona natural que conduce un vehículo del tipo para el que está autorizado, de conformidad a la licencia de conducir', '2');
INSERT INTO `pregunta` VALUES ('13', 'Conjunto de señales que regulan el ordenamiento vial', '2');
INSERT INTO `pregunta` VALUES ('14', 'Área especial fuera de la vía destinada exclusivamente para el parqueo de los vehículos automotores', '2');
INSERT INTO `pregunta` VALUES ('15', 'Proceso mecánico a través del cual se establece el estado mecánico de cualquier vehículo', '2');
INSERT INTO `pregunta` VALUES ('16', 'Punto de convergencia de dos o más vías públicas o privadas para su unión o cruce entre sí', '2');
INSERT INTO `pregunta` VALUES ('17', 'Es el lugar determinado para la inmovilización de cualquier vehículo, fuera de la vía, durante un tiempo inferior a los cinco minutos, sea para bajar o subir pasajeros o carga, bajo la presencia del conductor, con las señales de tránsito requeridas', '2');
INSERT INTO `pregunta` VALUES ('18', 'Es el área señalada y destinada para el paso exclusivo de peatones', '2');
INSERT INTO `pregunta` VALUES ('19', 'Es el punto en que dos vías se interceptan entre sí, una por encima de la otra para que la circulación vehicular se realice a diferentes niveles de la superficie y en distintas direcciones', '3');
INSERT INTO `pregunta` VALUES ('20', 'Conducir en estado de embriaguez extrema: concentración superior a 2 gramos de alcohol por litro de sangre', '3');
INSERT INTO `pregunta` VALUES ('21', 'Conducir en estado de embriaguez: concentración de más de 1 gramo hasta 2 gramos de alcohol por litro de sangre', '3');
INSERT INTO `pregunta` VALUES ('22', 'Conducir de forma temeraria', '3');
INSERT INTO `pregunta` VALUES ('23', 'Provocar accidente y darse a la fuga', '3');
INSERT INTO `pregunta` VALUES ('24', 'Estacionar en carretera, trailers, rastras y contenedores sin triángulos reflectivos u otras señales lumínicas adecuadas para la prevención de accidentes', '3');
INSERT INTO `pregunta` VALUES ('25', 'Usar placas y/o circulación de otro vehículo', '3');
INSERT INTO `pregunta` VALUES ('26', 'Invasión de carril', '3');
INSERT INTO `pregunta` VALUES ('27', 'Participar en competencias ilegales de automotores', '3');
INSERT INTO `pregunta` VALUES ('28', 'Conducir sin tener licencia de conducir', '3');
INSERT INTO `pregunta` VALUES ('29', 'No respetar la preferencia peatonal en las intersecciones o los cruces de colegios', '3');
INSERT INTO `pregunta` VALUES ('30', 'Exceso de pasajeros o de carga', '3');
INSERT INTO `pregunta` VALUES ('31', 'Aventajar en pendientes, curvas o puentes', '3');
INSERT INTO `pregunta` VALUES ('32', 'El conductor y acompañantes de un vehículo automotor, que no utilice el cinturón de seguridad', '3');
INSERT INTO `pregunta` VALUES ('33', 'Desatender señales de emergencia, lumínicas, sonoras de ambulancias, policía o bomberos', '3');
INSERT INTO `pregunta` VALUES ('34', 'Obstrucción de la libre circulación vehicular', '3');
INSERT INTO `pregunta` VALUES ('35', 'Conducir motocicletas con niños menores de 8 años', '3');
INSERT INTO `pregunta` VALUES ('36', 'Estacionarse en la vía pública, en caso de emergencia, sin triángulos reflectivos u otras señales lumínicas adecuadas para la prevención de accidentes', '3');
INSERT INTO `pregunta` VALUES ('37', 'No reportar los cambios de las características físicas del vehículo', '3');

-- ----------------------------
-- Table structure for `pregunta_respuesta`
-- ----------------------------
DROP TABLE IF EXISTS `pregunta_respuesta`;
CREATE TABLE `pregunta_respuesta` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdPregunta` int(11) DEFAULT NULL,
  `IdRespuesta` int(11) DEFAULT NULL,
  `Puntaje` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IdPregunta_R` (`IdPregunta`),
  KEY `IdRespuesta_R` (`IdRespuesta`),
  CONSTRAINT `IdPregunta_R` FOREIGN KEY (`IdPregunta`) REFERENCES `pregunta` (`Id`),
  CONSTRAINT `IdRespuesta_R` FOREIGN KEY (`IdRespuesta`) REFERENCES `respuesta` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pregunta_respuesta
-- ----------------------------
INSERT INTO `pregunta_respuesta` VALUES ('1', '2', '3', '1');

-- ----------------------------
-- Table structure for `pregunta_usuario`
-- ----------------------------
DROP TABLE IF EXISTS `pregunta_usuario`;
CREATE TABLE `pregunta_usuario` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdUsuario` int(11) DEFAULT NULL,
  `IdPregunta` int(11) DEFAULT NULL,
  `IdRespuesta` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IdPregunta_PU` (`IdPregunta`),
  KEY `IdUsuario_PU` (`IdUsuario`),
  KEY `IdRespuesta_PU` (`IdRespuesta`),
  CONSTRAINT `IdPregunta_PU` FOREIGN KEY (`IdPregunta`) REFERENCES `pregunta` (`Id`),
  CONSTRAINT `IdRespuesta_PU` FOREIGN KEY (`IdRespuesta`) REFERENCES `respuesta` (`IdPregunta`),
  CONSTRAINT `IdUsuario_PU` FOREIGN KEY (`IdUsuario`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pregunta_usuario
-- ----------------------------

-- ----------------------------
-- Table structure for `profile`
-- ----------------------------
DROP TABLE IF EXISTS `profile`;
CREATE TABLE `profile` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci,
  `timezone` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `profile_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of profile
-- ----------------------------
INSERT INTO `profile` VALUES ('1', 'Norman Salvador Arauz Lopez', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', null);
INSERT INTO `profile` VALUES ('2', null, null, null, null, null, null, null, null);
INSERT INTO `profile` VALUES ('3', null, null, null, null, null, null, null, null);
INSERT INTO `profile` VALUES ('4', null, null, null, null, null, null, null, null);
INSERT INTO `profile` VALUES ('5', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `respuesta`
-- ----------------------------
DROP TABLE IF EXISTS `respuesta`;
CREATE TABLE `respuesta` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdPregunta` int(11) DEFAULT NULL,
  `Respuesta` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IdPregunta_R` (`IdPregunta`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of respuesta
-- ----------------------------
INSERT INTO `respuesta` VALUES ('3', '2', 'Accidente de tránsito');
INSERT INTO `respuesta` VALUES ('4', '3', 'Aventajamiento');
INSERT INTO `respuesta` VALUES ('5', '4', 'Acera o anden');
INSERT INTO `respuesta` VALUES ('6', '5', 'Arcén');
INSERT INTO `respuesta` VALUES ('7', '6', 'Ángulo de visibilidad');
INSERT INTO `respuesta` VALUES ('8', '7', 'Calzada');
INSERT INTO `respuesta` VALUES ('9', '8', 'Conducción temeraria ');
INSERT INTO `respuesta` VALUES ('10', '9', ' Caminos');
INSERT INTO `respuesta` VALUES ('11', '10', 'Carril');
INSERT INTO `respuesta` VALUES ('12', '11', 'Condiciones atmosféricas');
INSERT INTO `respuesta` VALUES ('13', '12', ' Conductor');
INSERT INTO `respuesta` VALUES ('14', '13', 'Dispositivos de tránsito');
INSERT INTO `respuesta` VALUES ('15', '14', ' Estacionamiento');
INSERT INTO `respuesta` VALUES ('16', '15', 'Inspección mecánica de vehículos');
INSERT INTO `respuesta` VALUES ('17', '16', 'Intersección');
INSERT INTO `respuesta` VALUES ('18', '17', 'Parada');
INSERT INTO `respuesta` VALUES ('19', '18', ' Paso peatonal');
INSERT INTO `respuesta` VALUES ('20', '19', ' Paso a desnivel');
INSERT INTO `respuesta` VALUES ('21', '21', '5000');
INSERT INTO `respuesta` VALUES ('22', '21', '4000');
INSERT INTO `respuesta` VALUES ('23', '22', '3000');
INSERT INTO `respuesta` VALUES ('24', '23', '2500');
INSERT INTO `respuesta` VALUES ('25', '24', '1000');
INSERT INTO `respuesta` VALUES ('26', '25', '1000');
INSERT INTO `respuesta` VALUES ('27', '26', '800');
INSERT INTO `respuesta` VALUES ('28', '27', '1000');
INSERT INTO `respuesta` VALUES ('29', '28', '500');
INSERT INTO `respuesta` VALUES ('30', '29', '650');
INSERT INTO `respuesta` VALUES ('31', '29', '500');
INSERT INTO `respuesta` VALUES ('32', '30', '500');
INSERT INTO `respuesta` VALUES ('33', '31', '500');
INSERT INTO `respuesta` VALUES ('34', '32', '350');
INSERT INTO `respuesta` VALUES ('35', '33', '350');
INSERT INTO `respuesta` VALUES ('36', '34', '500');
INSERT INTO `respuesta` VALUES ('37', '35', '200');
INSERT INTO `respuesta` VALUES ('38', '36', '350');
INSERT INTO `respuesta` VALUES ('39', '37', '500');

-- ----------------------------
-- Table structure for `social_account`
-- ----------------------------
DROP TABLE IF EXISTS `social_account`;
CREATE TABLE `social_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_unique` (`provider`,`client_id`),
  UNIQUE KEY `account_unique_code` (`code`),
  KEY `fk_user_account` (`user_id`),
  CONSTRAINT `social_account_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of social_account
-- ----------------------------

-- ----------------------------
-- Table structure for `token`
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `user_id` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `type` smallint(6) NOT NULL,
  UNIQUE KEY `token_unique` (`user_id`,`code`,`type`),
  CONSTRAINT `token_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES ('3', 'bPuQ6P-GSVMDpjeDTOHntmOhAJO9xl9x', '1502237131', '0');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `confirmed_at` int(11) DEFAULT NULL,
  `unconfirmed_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blocked_at` int(11) DEFAULT NULL,
  `registration_ip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '10',
  `password_reset_token` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_unique_username` (`username`),
  UNIQUE KEY `user_unique_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'netman.arauz@gmail.com', '$2y$10$PZzwZyMj8vRTKzmg02FEA.sZZaPWXrgvOV9EtiBMVI0V5wx.WCOx2', 'yzUH8bU5cnL2B9hHHe9Xl86iZGM35YPA', '1502235895', null, null, '127.0.0.1', '1502235382', '1502235382', '0', '10', null);
INSERT INTO `user` VALUES ('2', 'misha', 'misha@domain.com', '$2y$10$vUVk08QgR3T3hA7t/dFdreLi2OA1l.QgNfAGYwlHlX9cxFJc.rpFe', '-s7KDAvPViWtXHNrIO-F3U-wZnu3dBkL', '1502236885', null, null, '127.0.0.1', '1502236885', '1502241781', '0', '10', null);
INSERT INTO `user` VALUES ('3', 'netman', 'netman@domain.com', '$2y$10$KMSzYXD86XgluL.5B0J55uP4BON2ipYJPeAZ6F7VwJmpjUFW1pxAS', 'CwJIYwwHTjpUDcETe0NKvWiDEHl0EJDz', '1502237210', null, null, '127.0.0.1', '1502237131', '1502241790', '0', '10', null);
INSERT INTO `user` VALUES ('4', 'mishas', 'mishas@domain.com', '$2y$10$8tJEUCOhMaD4DOt/IxqK5OlkSS4TYUy9edL2I8JJQLYBjMdDl4uhq', 'ky6t7ouboJpBy-6i2Omd_1eei8dOzBLj', '1502913097', null, null, '127.0.0.1', '1502913097', '1502913107', '0', '10', null);
INSERT INTO `user` VALUES ('5', 'delagneu', 'delagneu@domain.com', '$2y$10$mKWZVcODQFdi8P158dIR9.KflOW1MO9MInjaM2BujnJs..rsFrnBC', 'ANHfnKO2sxTt3ieBpFj0AWxY75OVn1Gu', '1504828114', null, null, '127.0.0.1', '1504828114', '1504828114', '0', '10', null);

-- ----------------------------
-- Table structure for `usuario_categoria`
-- ----------------------------
DROP TABLE IF EXISTS `usuario_categoria`;
CREATE TABLE `usuario_categoria` (
  `IdUsuario` int(11) DEFAULT NULL,
  `IdCategoria` int(11) DEFAULT NULL,
  `Total` int(11) DEFAULT NULL,
  KEY `IdUsuario` (`IdUsuario`),
  KEY `IdCategoria_UC` (`IdCategoria`),
  CONSTRAINT `IdCategoria_UC` FOREIGN KEY (`IdCategoria`) REFERENCES `categoria` (`Id`),
  CONSTRAINT `IdUsuario` FOREIGN KEY (`IdUsuario`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usuario_categoria
-- ----------------------------

-- ----------------------------
-- View structure for `pregunta_respuesta_completa`
-- ----------------------------
DROP VIEW IF EXISTS `pregunta_respuesta_completa`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pregunta_respuesta_completa` AS select `pregunta_respuesta`.`Id` AS `Id`,`pregunta`.`Pregunta` AS `Pregunta`,`respuesta`.`Respuesta` AS `Respuesta`,`pregunta_respuesta`.`Puntaje` AS `Puntaje` from ((`pregunta_respuesta` join `respuesta`) join `pregunta`) where ((`pregunta_respuesta`.`IdPregunta` = `pregunta`.`Id`) and (`pregunta_respuesta`.`IdRespuesta` = `respuesta`.`Id`)) ;
