/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : transiguia

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2017-11-26 10:51:35
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
-- Table structure for `articulo_descripcion`
-- ----------------------------
DROP TABLE IF EXISTS `articulo_descripcion`;
CREATE TABLE `articulo_descripcion` (
  `Id` int(11) NOT NULL,
  `Articulo` varchar(1024) DEFAULT NULL,
  `Descripcion` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of articulo_descripcion
-- ----------------------------
INSERT INTO `articulo_descripcion` VALUES ('0', 'Artículo 1: Objeto de la ley', 'La presente Ley tiene por objeto, establecer los requisitos y procedimientos para normar el régimen de circulación vehicular en el territorio nacional, con relación a las Autoridades de Tránsito, los vehículos de transporte en general, el Registro Público de la Propiedad Vehicular, la Educación y Seguridad Vial, la protección del medio ambiente, los seguros obligatorios, así como el otorgamiento y renovación del derecho de matrícula vehicular.');
INSERT INTO `articulo_descripcion` VALUES ('2', 'Artículo 2: Autoridad de aplicación', 'Para los fines y efectos de la presente Ley, se determina como Autoridad de Aplicación de ésta, a la Policía Nacional, por medio de la Especialidad Nacional de Seguridad de Tránsito, la que establecerá las coordinaciones necesarias con las diferentes Instituciones del Estado para su efectiva y correcta aplicación, el uso racional de sus recursos, sean éstos humanos, técnicos o materiales, y determinará las normas administrativas complementarias para la aplicación de la presente Ley');
INSERT INTO `articulo_descripcion` VALUES ('3', 'Artículo 3: Conceptos básicos', 'ACCIDENTE DE TRANSITO:</b> Acción u omisión culposa cometida por cualquier conductor, pasajeros o peatones en la vía pública o privada causando daños materiales, lesiones o muerte de personas, donde interviene por los menos un vehículo en movimiento.');
INSERT INTO `articulo_descripcion` VALUES ('4', 'Artículo 4: Derecho de matrícula como especie fiscal', 'Créase el Derecho de Matrícula como Especie Fiscal, cuyo valor será recaudado por la Dirección General de Ingresos de la República de Nicaragua y por el cual se entiende el derecho que adquiere todo propietario de vehículo al momento de la inscripción o renovación del derecho adquirido, ante las oficinas de Seguridad de Tránsito de la Policía Nacional');
INSERT INTO `articulo_descripcion` VALUES ('5', 'Artículo 5: Creación de especies fiscales', 'Créanse las especies fiscales de placas, licencias de circulación, de derecho de matrícula y calcomanías, cuyas características generales, tamaño, material, diseño y tipo serán determinados por la Autoridad de Aplicación de la presente Ley');
INSERT INTO `articulo_descripcion` VALUES ('6', 'Artículo 6: Requisitos y procedimientos', 'Los propietarios de vehículos que circulen en el territorio nacional, deben de cumplir obligatoriamente con los requisitos y procedimientos que se establecen en la presente Ley, así como también con las normas de carácter administrativo relativas a procedimientos');
INSERT INTO `articulo_descripcion` VALUES ('7', 'Artículo 7: Coordinaciones', 'El Ministerio de Hacienda y Crédito Público, los Gobiernos Locales y la Policía Nacional, a través de la Especialidad Nacional de Seguridad de Tránsito, de conformidad con la Ley No. 290, Ley de Organización, Competencia y Procedimientos del Poder Ejecutivo y la Ley Nº 228, Ley de la Policía Nacional, publicadas en La Gaceta, Diario Oficial número 102 del tres de junio de 1998 y en la número 162 del 28 de Agosto de 1996 respectivamente, deberán establecer las coordinaciones necesarias para la ap');
INSERT INTO `articulo_descripcion` VALUES ('8', 'Artículo 8: Pago de arancel de derecho de matrícula, placas, licencia de circulación y calcomanías', 'Para los fines y efectos de la presente Ley, los propietarios de vehículos automotores deberán de pagar el arancel de derecho de matrícula, placas, licencia de circulación y calcomanías de acuerdo a los valores siguientes: Para vehiculos de cuatro o mas ruedas:Placas: 125.00 C$ Derecho de matrícula y calcomanía: 125.00 C$ Licencia de Circulación: 50.00 C$ Motocicletas: Placas: 100.00 C$ Derecho de matrícula y calcomanía: 75.00 C$ Licencia de Circulación: 50.00 C$');
INSERT INTO `articulo_descripcion` VALUES ('9', 'Artículo 9: Vigencia y renovación de especies fiscales', 'Las especies fiscales establecidas en el artículo anterior, tienen la siguiente vigencia:</p>\r\n                <p id=\"parrafoArto\">La licencia de circulación, derecho de matrícula, calcomanía y placas, serán permanentes. La renovación de estos documentos se realizará cuando haya cambio de dueño, modificación de las características físicas del vehículo, o por deterioro de la calcomanía');
INSERT INTO `articulo_descripcion` VALUES ('10', 'Artículo 10: Pago de derechos y tasas en ventanilla única', 'La recaudación y modalidades de pago de los derechos y tasas establecidos en el Artículo 8 de la presente Ley, se efectuarán en ventanilla única de la Dirección General de Ingresos del Ministerio de Hacienda y Crédito Público o en cualquiera de los bancos del país con los cuales exista convenio para tal actividad');
INSERT INTO `articulo_descripcion` VALUES ('11', 'Artículo 11: Creación del impuesto municipal de rodamiento', 'Créase el impuesto municipal de rodamiento, el que tendrá las denominaciones y valores siguientes:  Motocicletas de uso particular y estatal: 50.00 Tractores y maquinaria agrícola. Se exceptúan implementos agrícolas: 75.00 Automóviles, camionetas y jeeps de uso particular y estatal: 100.00 Taxis y camionetas de uso comercial: 125.00  Microbuses de uso comercial: 150.00  Remolques de más de dos ejes: 250.00 Buses de uso comercial: 300.00 Camiones de menos de 7 toneladas: 400.00   Montacargas: 500');
INSERT INTO `articulo_descripcion` VALUES ('12', 'Artículo 12: Pago del impuesto de rodamiento', 'Los propietarios de vehículos automotor deben de presentar ante las Autoridades de Policía o Administrativa, el recibo de pago de su impuesto de rodamiento o la calcomanía respectiva del año corriente, para la realización de cualquier trámite relacionado con su vehículo, caso contrario, no se le atenderán ni resolverán sus trámites respectivos.</p>\r\n                <p id=\"parrafoArto\">Se exceptúan del pago del impuesto de rodamiento a los jubilados del país');
INSERT INTO `articulo_descripcion` VALUES ('13', 'Artículo 13: Exención de pago de derechos o tasas', 'Quedan exentos del pago de los derechos o tasas establecidas en el Artículo 8 de la presente Ley, de conformidad al principio de reciprocidad, los propietarios de vehículos del Cuerpo Diplomático y Consular así como los de Organismos Internacionales acreditados en el país');
INSERT INTO `articulo_descripcion` VALUES ('14', 'Artículo 14: Trámites de obtención del derecho de matrícula o renovación', 'Para la obtención del derecho de matrícula o su renovación representado en calcomanía, los propietarios de vehículos que circulen en el territorio nacional, deberán dar cumplimiento al procedimiento y mecanismos que al respecto resulten necesarios, según los criterios técnicos que establezca la Policía Nacional en conjunto con el Ministerio de Hacienda y Crédito Público para la emisión de las calcomanías, así como para el retiro de placas y licencias de circulación');
INSERT INTO `articulo_descripcion` VALUES ('15', 'Artículo 15: Calcomanías para placas mayores y menores', 'Para los fines y efectos de la presente Ley, las placas podrán ser mayores o menores. En los casos de los vehículos de cuatro ruedas o más, las placas son mayores; y menores, cuando tengan menos de cuatro ruedas. Las calcomanías tendrán las especificaciones siguientes:  1. Para vehículos con placas mayores: Forma rectangular, con una dimensión de 86 x 54 milímetros.  2. Para vehículos con placas menores: Forma de cuadrado, con una dimensión de 30 x 30 milímetros Las calcomanías deberán cumplir c');
INSERT INTO `articulo_descripcion` VALUES ('16', 'Artículo 16: Valor de la calcomanía del derecho de matrícula', 'El valor del derecho de matrícula, representado en calcomanía, corresponderá a la cantidad de ciento veinticinco córdobas. Esta calcomanía deberá ser ubicada en la parte interna izquierda e inferior del vidrio delantero de los vehículos con placas mayores; en el caso de los vehículos con placas menores, se deberá de adherir en la esquina superior derecha de la placa, de conformidad a las normativas administrativas que establezca la Especialidad Nacional de Seguridad de Tránsito');
INSERT INTO `articulo_descripcion` VALUES ('17', 'Artículo 17: Requisitos para la renovación de matrícula', 'Para los fines y efectos de la renovación de matrícula de vehículos, se establecen los siguientes requisitos:  1. Pago de los aranceles correspondientes, calcomanía y licencia de circulación del vehículo  2. Fotocopia de la tarjeta de circulación actual 3. Poder especial de representación, en escritura pública, en caso de que la persona que tramite el derecho de matrícula no sea el propietario  4. Sticker de rodamiento del año corriente');
INSERT INTO `articulo_descripcion` VALUES ('18', 'Artículo 18: Infracciones y sus acumulaciones', 'Las acciones u omisiones contrarias a la presente Ley o a las normas administrativas dictadas por la Autoridad de Aplicación, tendrán el carácter de infracciones y serán sancionadas según corresponda en la medida y forma que determine la Ley, sin perjuicio de las responsabilidades civiles y penales a que dieren lugar. </p>\r\n                <p id=\"parrafoArto\">Las infracciones de tránsito son acumulables. La Policía Nacional, hará valer el efectivo pago de las multas en concepto de infracción a q');
INSERT INTO `articulo_descripcion` VALUES ('19', 'Artículo 19: Diseño de boletas de infracciones', 'El Ministerio de Hacienda y Crédito Público, en conjunto con la Policía Nacional, a través de la Especialidad Nacional de Seguridad de Tránsito, deberán diseñar las boletas o formatos necesarios para la aplicación de las infracciones de tránsito. En éstas se deberá establecer el tipo de infracción y su descripción, el monto de la multa, el nombre y apellido del Agente de Tránsito que impone la infracción y la Unidad a la que pertenece. Las boletas serán válidas en todo el territorio nacional');
INSERT INTO `articulo_descripcion` VALUES ('20', 'Artículo 20: Obligación del Agente de Tránsito', 'El Agente de Tránsito de la Policía Nacional, que deberá estar debidamente identificado, debe de entregar de forma obligatoria al infractor, la boleta o recibo debidamente numerado, en el que se debe de indicar la o las infracciones o normas violentadas');
INSERT INTO `articulo_descripcion` VALUES ('21', 'Artículo 21: Responsabilidad por daños', 'El propietario de un vehículo que causare o provoque la colisión o accidente de tránsito por desperfectos mecánicos o técnicos, falta de pericia, imprudencia o negligencia, será únicamente responsable civilmente, por los daños causados a terceros; igualmente lo será cuando el conductor de dicho vehículo no posea licencia de conducir, o teniéndola no corresponda la categoría o tipo con el vehículo conducido, sin detrimento de las responsabilidades civiles y penales que puedan ser imputadas al con');
INSERT INTO `articulo_descripcion` VALUES ('22', 'Artículo 22: Señales lumínicas para medios de transporte automotores, de pedal y de tracción animal', 'Los buses, camiones, trailers, vehículos de acarreo, medios de tracción animal y medios de transporte de pedal, bicicletas y similares, que circulen después de las dieciocho horas, deberán colocar señales lumínicas de dinamo y cintas adhesivas reflectivas en el parachoque delantero y trasero del medio de transporte');
INSERT INTO `articulo_descripcion` VALUES ('23', 'rtículo 23: Precauciones necesarias y uso de luces', 'Los buses, camiones, trailers, vehículos de acarreo, medios de tracción animal y medios de transporte de pedal, bicicletas y similares, que circulen después de las dieciocho horas, deberán colocar señales lumínicas de dinamo y cintas adhesivas reflectivas en el parachoque delantero y trasero del medio de transporte');

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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of multa
-- ----------------------------
INSERT INTO `multa` VALUES ('1', 'Conducir en estado de ebriedad..', '1500');
INSERT INTO `multa` VALUES ('2', 'Conducir bajo el efecto de drogas o sustancias psicotrópicas', '1500');
INSERT INTO `multa` VALUES ('3', 'Provocar accidentes y darse a la fuga', '1500');
INSERT INTO `multa` VALUES ('4', 'Provocar accidentes y darse a la fuga', '3000');
INSERT INTO `multa` VALUES ('5', 'Estacionarse en la vía pública sin señales lumínicas o triángulos.', '200');
INSERT INTO `multa` VALUES ('6', 'Aventajar en pendientes, curvas o puentes.', '400');
INSERT INTO `multa` VALUES ('7', 'Desatender señales de emergencias,lumínicas sonoras de ambulancias,policía o bomberos.', '200');
INSERT INTO `multa` VALUES ('8', 'Adelantar en línea continua amarilla.', '300');
INSERT INTO `multa` VALUES ('9', ' Invasión de carril.', '400');
INSERT INTO `multa` VALUES ('10', 'Giros indebidos, en \"U\" y zig zag.', '200');
INSERT INTO `multa` VALUES ('11', 'Conducir con las puertas abiertas transporte colectivo y de carga.', '400');
INSERT INTO `multa` VALUES ('12', 'Conducir en contra de la vía.', '300');
INSERT INTO `multa` VALUES ('13', 'Exceso de pasajeros o de carga.', '300');
INSERT INTO `multa` VALUES ('14', 'Conducir, acompañar o transportar niños menores de siete años en el asiento delantero o niños en los brazos de adultos en el asiento delantero sin cinturón de seguridad.', '200');
INSERT INTO `multa` VALUES ('15', 'Desantender señales de tráfico siempre que estén', '200');
INSERT INTO `multa` VALUES ('16', 'Conducir carga sin la debida señalización.', '200');
INSERT INTO `multa` VALUES ('17', 'Obstrucción de la libre circulación vehicular.', '300');
INSERT INTO `multa` VALUES ('18', 'Conducir cuadraciclos en las playas en época de temporada de verano.', '450');
INSERT INTO `multa` VALUES ('19', 'Conducir buses y camiones con el escape en posición horizontal.', '450');
INSERT INTO `multa` VALUES ('20', 'Estacionar en carreteras, trailers, rastras y contenedores sin señal alguna.', '1000');
INSERT INTO `multa` VALUES ('21', 'Conducir sin seguro de licencia y/o vehículo.', '100');
INSERT INTO `multa` VALUES ('22', 'No guardar la distancia entre uno y otro vehículo.', '100');
INSERT INTO `multa` VALUES ('23', 'No usar lonas o carpas en los camiones cuando trasladan carga a granel.', '300');
INSERT INTO `multa` VALUES ('24', 'No portar triángulos fluorescentes.', '150');
INSERT INTO `multa` VALUES ('25', 'Conducir atendiendo celulares.', '150');
INSERT INTO `multa` VALUES ('26', 'Conducir motocicletas o cuadraciclos sin casco de protección', '150');
INSERT INTO `multa` VALUES ('27', 'Recoger pasajeros fuera de la bahía o lugares no establecidos como paradas.', '150');
INSERT INTO `multa` VALUES ('28', 'Estacionarse: frente a hidrantes, garajes, entradas de hospitales y clinicas, estacionamientos para discapacitados, aceras, andenes y parada de buses.', '100');
INSERT INTO `multa` VALUES ('29', 'Conducir con las luces apagadas después de la hora indicada, o durante el día cuando hayan condiciones ambientales de lluvia, neblina o tolvaner', '300');
INSERT INTO `multa` VALUES ('30', 'Circular con los vehículos sobre bulevares, aceras o andenes.', '150');
INSERT INTO `multa` VALUES ('31', 'Conducir de retroceso en la vía pública.', '150');
INSERT INTO `multa` VALUES ('32', 'Aventajar por la derecha en vías de un solo carril.', '150');
INSERT INTO `multa` VALUES ('33', 'Circulación de vehículos sobre aceras o andenes.', '150');
INSERT INTO `multa` VALUES ('34', 'Bajar o subir pasajeros por el lado izquierdo en la vía pública.', '150');
INSERT INTO `multa` VALUES ('35', 'Realizar señales equivocadas sobre sus maniobras al conducir.', '150');
INSERT INTO `multa` VALUES ('36', 'No respetar la preferencia peatonal o los cruces de colegios.', '400');
INSERT INTO `multa` VALUES ('37', 'Conducir sin tener licencia', '300');
INSERT INTO `multa` VALUES ('38', 'Conducir con aliento alcohólico, pero no en estado de ebriedad, de acuerdo a lo establecido en el artículo 27 de la presente Ley.', '100');
INSERT INTO `multa` VALUES ('39', 'ehículo en mal estado mecánico.', '150');
INSERT INTO `multa` VALUES ('40', 'Provocar ruidos escandalosos y pertuba- dores del medio ambiente.', '300');
INSERT INTO `multa` VALUES ('41', 'Provocar exceso de humo.', '200');
INSERT INTO `multa` VALUES ('42', 'Usar placas y/o circulación de otro vehículo.', '400');
INSERT INTO `multa` VALUES ('43', 'Conducir sin portar placas y/o licencia de circulación.', '200');
INSERT INTO `multa` VALUES ('44', 'Conducir con licencia en categorías diferentes a la autorizada.', '200');
INSERT INTO `multa` VALUES ('45', 'Transporte colectivo, no detenerse a recoger pasajeros en las paradas.', '200');
INSERT INTO `multa` VALUES ('46', 'Conducir con la matrícula vencida.</', '200');
INSERT INTO `multa` VALUES ('47', 'Circular sin placas visibles.', '200');
INSERT INTO `multa` VALUES ('48', 'Conducir con la licencia vencida.', '150');
INSERT INTO `multa` VALUES ('49', 'Prestar servicio de transporte público sin la debida autorización.', '200');
INSERT INTO `multa` VALUES ('50', 'Conducir fuera de la ruta autorizada, para el transporte colectivo', '100');
INSERT INTO `multa` VALUES ('51', 'No reportar los cambios de las características físicas del vehiculo.', '100');
INSERT INTO `multa` VALUES ('52', 'Conducir sin portar licencia.', '100');
INSERT INTO `multa` VALUES ('53', 'No usar loderas en las llantas traseras en los vehículos de carga o de pasajeros.', '100');
INSERT INTO `multa` VALUES ('54', 'Conducir vehículos sin espejo retrovisor o laterales.', '100');
INSERT INTO `multa` VALUES ('55', 'Tirar basura, gases o desechos en la vía pública desde vehículos automotores.', '200');
INSERT INTO `multa` VALUES ('56', 'Circulación de bicicletas o medios de transporte de tracción animal sin señales lumínicas visibles', '50');

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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pregunta_respuesta
-- ----------------------------
INSERT INTO `pregunta_respuesta` VALUES ('1', '2', '3', '1');
INSERT INTO `pregunta_respuesta` VALUES ('2', '3', '4', '1');
INSERT INTO `pregunta_respuesta` VALUES ('3', '4', '5', '1');
INSERT INTO `pregunta_respuesta` VALUES ('4', '5', '6', '1');
INSERT INTO `pregunta_respuesta` VALUES ('5', '6', '7', '1');
INSERT INTO `pregunta_respuesta` VALUES ('6', '7', '8', '1');
INSERT INTO `pregunta_respuesta` VALUES ('7', '8', '9', '1');
INSERT INTO `pregunta_respuesta` VALUES ('8', '8', '9', '1');
INSERT INTO `pregunta_respuesta` VALUES ('9', '9', '10', '1');
INSERT INTO `pregunta_respuesta` VALUES ('10', '10', '11', '1');
INSERT INTO `pregunta_respuesta` VALUES ('11', '11', '12', '1');
INSERT INTO `pregunta_respuesta` VALUES ('12', '12', '13', '1');
INSERT INTO `pregunta_respuesta` VALUES ('13', '13', '14', '1');
INSERT INTO `pregunta_respuesta` VALUES ('14', '14', '15', '1');
INSERT INTO `pregunta_respuesta` VALUES ('15', '15', '16', '1');
INSERT INTO `pregunta_respuesta` VALUES ('16', '16', '17', '1');
INSERT INTO `pregunta_respuesta` VALUES ('17', '17', '18', '1');
INSERT INTO `pregunta_respuesta` VALUES ('18', '18', '19', '1');
INSERT INTO `pregunta_respuesta` VALUES ('19', '19', '20', '1');
INSERT INTO `pregunta_respuesta` VALUES ('20', '20', '21', '1');
INSERT INTO `pregunta_respuesta` VALUES ('21', '21', '22', '1');
INSERT INTO `pregunta_respuesta` VALUES ('22', '22', '23', '1');
INSERT INTO `pregunta_respuesta` VALUES ('23', '23', '24', '1');
INSERT INTO `pregunta_respuesta` VALUES ('24', '24', '25', '1');
INSERT INTO `pregunta_respuesta` VALUES ('25', '25', '26', '1');
INSERT INTO `pregunta_respuesta` VALUES ('26', '26', '27', '1');
INSERT INTO `pregunta_respuesta` VALUES ('27', '27', '28', '1');
INSERT INTO `pregunta_respuesta` VALUES ('28', '28', '29', '1');
INSERT INTO `pregunta_respuesta` VALUES ('29', '29', '30', '1');
INSERT INTO `pregunta_respuesta` VALUES ('30', '30', '31', '1');
INSERT INTO `pregunta_respuesta` VALUES ('31', '31', '32', '1');
INSERT INTO `pregunta_respuesta` VALUES ('32', '32', '33', '1');
INSERT INTO `pregunta_respuesta` VALUES ('33', '33', '34', '1');
INSERT INTO `pregunta_respuesta` VALUES ('34', '34', '35', '1');
INSERT INTO `pregunta_respuesta` VALUES ('35', '35', '37', '1');
INSERT INTO `pregunta_respuesta` VALUES ('36', '36', '38', '1');
INSERT INTO `pregunta_respuesta` VALUES ('37', '37', '39', '1');

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
