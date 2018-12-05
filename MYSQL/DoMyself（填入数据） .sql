/*
Navicat MySQL Data Transfer

Source Server         : student
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2018-12-05 08:56:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `fanstable`
-- ----------------------------
DROP TABLE IF EXISTS `fanstable`;
CREATE TABLE `fanstable` (
  `fanstableid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `fansid` int(11) NOT NULL,
  PRIMARY KEY (`fanstableid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of fanstable
-- ----------------------------
INSERT INTO `fanstable` VALUES ('1', '1', '2');
INSERT INTO `fanstable` VALUES ('2', '1', '3');
INSERT INTO `fanstable` VALUES ('3', '1', '5');
INSERT INTO `fanstable` VALUES ('4', '2', '1');
INSERT INTO `fanstable` VALUES ('5', '4', '3');
INSERT INTO `fanstable` VALUES ('6', '1', '4');
INSERT INTO `fanstable` VALUES ('7', '1', '6');
INSERT INTO `fanstable` VALUES ('8', '1', '10');
INSERT INTO `fanstable` VALUES ('9', '1', '11');
INSERT INTO `fanstable` VALUES ('10', '1', '13');
INSERT INTO `fanstable` VALUES ('11', '1', '19');
INSERT INTO `fanstable` VALUES ('12', '1', '20');
INSERT INTO `fanstable` VALUES ('13', '2', '3');
INSERT INTO `fanstable` VALUES ('14', '2', '4');
INSERT INTO `fanstable` VALUES ('15', '2', '5');
INSERT INTO `fanstable` VALUES ('16', '2', '6');
INSERT INTO `fanstable` VALUES ('17', '2', '7');
INSERT INTO `fanstable` VALUES ('18', '2', '8');
INSERT INTO `fanstable` VALUES ('19', '2', '9');
INSERT INTO `fanstable` VALUES ('20', '2', '10');

-- ----------------------------
-- Table structure for `idoltable`
-- ----------------------------
DROP TABLE IF EXISTS `idoltable`;
CREATE TABLE `idoltable` (
  `idoltableid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `idolid` int(11) NOT NULL,
  PRIMARY KEY (`idoltableid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of idoltable
-- ----------------------------
INSERT INTO `idoltable` VALUES ('1', '1', '1');
INSERT INTO `idoltable` VALUES ('2', '1', '2');
INSERT INTO `idoltable` VALUES ('3', '2', '1');
INSERT INTO `idoltable` VALUES ('4', '2', '2');
INSERT INTO `idoltable` VALUES ('5', '1', '3');
INSERT INTO `idoltable` VALUES ('6', '1', '3');
INSERT INTO `idoltable` VALUES ('7', '1', '4');
INSERT INTO `idoltable` VALUES ('8', '1', '5');
INSERT INTO `idoltable` VALUES ('9', '1', '6');
INSERT INTO `idoltable` VALUES ('10', '1', '7');
INSERT INTO `idoltable` VALUES ('11', '1', '8');
INSERT INTO `idoltable` VALUES ('12', '1', '9');
INSERT INTO `idoltable` VALUES ('13', '1', '10');
INSERT INTO `idoltable` VALUES ('14', '1', '11');
INSERT INTO `idoltable` VALUES ('15', '1', '12');
INSERT INTO `idoltable` VALUES ('16', '1', '13');
INSERT INTO `idoltable` VALUES ('17', '1', '14');
INSERT INTO `idoltable` VALUES ('18', '1', '15');
INSERT INTO `idoltable` VALUES ('19', '1', '16');
INSERT INTO `idoltable` VALUES ('20', '1', '17');

-- ----------------------------
-- Table structure for `messageid`
-- ----------------------------
DROP TABLE IF EXISTS `messageid`;
CREATE TABLE `messageid` (
  `messageid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `messagedate` date NOT NULL,
  `messagedetails` varchar(100) CHARACTER SET latin1 NOT NULL,
  `havepicture` bit(1) NOT NULL,
  PRIMARY KEY (`messageid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of messageid
-- ----------------------------

-- ----------------------------
-- Table structure for `mutualtable`
-- ----------------------------
DROP TABLE IF EXISTS `mutualtable`;
CREATE TABLE `mutualtable` (
  `mutualid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `mutualbool` bit(1) NOT NULL,
  `mutualtime` date NOT NULL,
  `messageid` int(11) NOT NULL,
  `details` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`mutualid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='mutual涓虹偣璧炴垨鑰呰瘎璁鸿〃\r\n';

-- ----------------------------
-- Records of mutualtable
-- ----------------------------
INSERT INTO `mutualtable` VALUES ('1', '1', '', '2018-11-28', '1', '2');
INSERT INTO `mutualtable` VALUES ('2', '1', '', '2018-11-28', '2', '1');
INSERT INTO `mutualtable` VALUES ('3', '2', '', '2018-11-28', '1', '2');
INSERT INTO `mutualtable` VALUES ('4', '2', '', '2018-11-28', '2', '1');
INSERT INTO `mutualtable` VALUES ('5', '1', '', '2018-11-29', '1', '1');
INSERT INTO `mutualtable` VALUES ('6', '1', '', '2018-11-29', '1', '1');
INSERT INTO `mutualtable` VALUES ('7', '1', '', '2018-11-29', '1', '1');
INSERT INTO `mutualtable` VALUES ('8', '1', '', '2018-11-29', '1', '1');
INSERT INTO `mutualtable` VALUES ('9', '1', '', '2018-11-29', '1', '1');
INSERT INTO `mutualtable` VALUES ('10', '1', '', '2018-11-29', '1', '1');
INSERT INTO `mutualtable` VALUES ('11', '1', '', '2018-11-29', '1', '1');
INSERT INTO `mutualtable` VALUES ('12', '1', '', '2018-11-29', '1', '1');
INSERT INTO `mutualtable` VALUES ('13', '1', '', '2018-11-29', '1', '1');
INSERT INTO `mutualtable` VALUES ('14', '1', '', '2018-11-29', '1', '1');
INSERT INTO `mutualtable` VALUES ('15', '1', '', '2018-11-29', '1', '1');
INSERT INTO `mutualtable` VALUES ('16', '1', '', '2018-11-29', '1', '1');
INSERT INTO `mutualtable` VALUES ('17', '1', '', '2018-11-29', '1', '1');
INSERT INTO `mutualtable` VALUES ('18', '1', '', '2018-11-29', '1', '1');
INSERT INTO `mutualtable` VALUES ('19', '1', '', '2018-11-29', '1', '1');
INSERT INTO `mutualtable` VALUES ('20', '1', '', '2018-11-29', '1', '1');

-- ----------------------------
-- Table structure for `picturetable`
-- ----------------------------
DROP TABLE IF EXISTS `picturetable`;
CREATE TABLE `picturetable` (
  `pictureid` int(11) NOT NULL AUTO_INCREMENT,
  `messageid` int(11) NOT NULL,
  `pictureurl` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pictureid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of picturetable
-- ----------------------------
INSERT INTO `picturetable` VALUES ('1', '1', 'image/p1.png');
INSERT INTO `picturetable` VALUES ('2', '1', 'image/p2.png');
INSERT INTO `picturetable` VALUES ('3', '2', 'image/n.png');
INSERT INTO `picturetable` VALUES ('4', '3', 'image/mi.png');
INSERT INTO `picturetable` VALUES ('5', '1', 'image/p3.png');
INSERT INTO `picturetable` VALUES ('6', '1', 'image/p4.png');
INSERT INTO `picturetable` VALUES ('7', '1', 'image/p5.png');
INSERT INTO `picturetable` VALUES ('8', '1', 'image/p3.png');
INSERT INTO `picturetable` VALUES ('9', '1', 'image/p3.png');
INSERT INTO `picturetable` VALUES ('10', '1', 'image/p3.png');
INSERT INTO `picturetable` VALUES ('11', '1', 'image/p3.png');
INSERT INTO `picturetable` VALUES ('12', '1', 'image/p3.png');
INSERT INTO `picturetable` VALUES ('13', '1', 'image/p3.png');
INSERT INTO `picturetable` VALUES ('14', '1', 'image/p3.png');
INSERT INTO `picturetable` VALUES ('15', '1', 'image/p3.png');
INSERT INTO `picturetable` VALUES ('16', '1', 'image/p3.png');
INSERT INTO `picturetable` VALUES ('17', '1', 'image/p3.png');
INSERT INTO `picturetable` VALUES ('18', '1', 'image/p3.png');
INSERT INTO `picturetable` VALUES ('19', '1', 'image/p3.png');
INSERT INTO `picturetable` VALUES ('20', '1', 'image/p3.png');

-- ----------------------------
-- Table structure for `production`
-- ----------------------------
DROP TABLE IF EXISTS `production`;
CREATE TABLE `production` (
  `productionid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `details` varchar(100) CHARACTER SET latin1 NOT NULL,
  `productioncategory` int(11) NOT NULL,
  PRIMARY KEY (`productionid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of production
-- ----------------------------
INSERT INTO `production` VALUES ('1', '1', '1', '1');
INSERT INTO `production` VALUES ('2', '1', '2', '2');
INSERT INTO `production` VALUES ('3', '1', '1', '1');
INSERT INTO `production` VALUES ('4', '1', '1', '1');
INSERT INTO `production` VALUES ('5', '1', '1', '1');
INSERT INTO `production` VALUES ('6', '1', '1', '1');
INSERT INTO `production` VALUES ('7', '1', '1', '1');
INSERT INTO `production` VALUES ('8', '1', '1', '1');
INSERT INTO `production` VALUES ('9', '1', '1', '1');
INSERT INTO `production` VALUES ('10', '1', '1', '1');
INSERT INTO `production` VALUES ('11', '1', '1', '1');
INSERT INTO `production` VALUES ('12', '1', '1', '1');
INSERT INTO `production` VALUES ('13', '1', '1', '1');
INSERT INTO `production` VALUES ('14', '1', '1', '1');
INSERT INTO `production` VALUES ('15', '1', '1', '1');
INSERT INTO `production` VALUES ('16', '1', '1', '1');
INSERT INTO `production` VALUES ('17', '1', '1', '1');
INSERT INTO `production` VALUES ('18', '1', '1', '1');
INSERT INTO `production` VALUES ('19', '1', '1', '1');
INSERT INTO `production` VALUES ('20', '1', '1', '1');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userid` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET latin1 NOT NULL,
  `password` varchar(20) CHARACTER SET latin1 NOT NULL,
  `email` varchar(20) CHARACTER SET latin1 NOT NULL,
  `phonenum` varchar(20) CHARACTER SET latin1 NOT NULL,
  `registeredtime` date NOT NULL,
  `sex` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `headshot` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `signature` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'chenpengyu', '123', '1145693809@qq.com', '15226560812', '2018-11-28', 'man', null, null, null);
INSERT INTO `user` VALUES ('2', 'zhangsan', '1234', '1234323445@qq.com', '15226518721', '2018-11-28', 'man', null, null, null);
INSERT INTO `user` VALUES ('3', 'zhangming', '2345', '1352737288@qq.com', '15327457682', '2018-11-28', 'man', null, null, null);
INSERT INTO `user` VALUES ('4', 'wanghong', '1234', '2132435565@qq.com', '15224325779', '2018-11-28', 'woman', null, null, null);
INSERT INTO `user` VALUES ('5', 'lixia', '1234', '1527623767@qq.com', '15223426577', '2018-11-28', 'woman', null, null, null);
INSERT INTO `user` VALUES ('6', 'lijiang', '123456', '1523283679@qq.com', '15213426570', '2018-11-29', 'man', null, null, null);
INSERT INTO `user` VALUES ('7', 'songjiang', '2345', '1522786834@qq.com', '15213426571', '2018-11-29', 'man', null, null, null);
INSERT INTO `user` VALUES ('8', 'zhaomei', '1234', '1523678238@qq.com', '15213426572', '2018-11-29', 'woman', null, null, null);
INSERT INTO `user` VALUES ('9', 'zhaomeng', '2345', '1527893498@qq.com', '15213426573', '2018-11-29', 'woman', null, null, null);
INSERT INTO `user` VALUES ('10', 'zhaomin', '1234235', '1522348598@qq.com', '15213426574', '2018-11-29', 'woman', null, null, null);
INSERT INTO `user` VALUES ('11', 'zhaoqiang', '1343545', '1529853732@qq.com', '15213426575', '2018-11-29', 'man', null, null, null);
INSERT INTO `user` VALUES ('12', 'zahngyi', '123424', '1529348957@qq.com', '15213426576', '2018-11-29', 'man', null, null, null);
INSERT INTO `user` VALUES ('13', 'zhangzhigao', '13344', '1524648645@qq.com', '15213426577', '2018-11-29', 'man', null, null, null);
INSERT INTO `user` VALUES ('14', 'zhangzhiqiang', '2342', '1529865496@qq.com', '15213426578', '2018-11-29', 'man', null, null, null);
INSERT INTO `user` VALUES ('15', 'zhangzhiming', '234325', '1524543677@qq.com', '15213426579', '2018-11-29', 'man', null, null, null);
INSERT INTO `user` VALUES ('16', 'zhangze', '3243', '1524378769@qq.com', '15213426500', '2018-11-29', 'man', null, null, null);
INSERT INTO `user` VALUES ('17', 'zhanggaofu', '2324', '1528749299@qq.com', '15213426501', '2018-11-29', 'man', null, null, null);
INSERT INTO `user` VALUES ('18', 'zhaoqiang', '2344', '1529387553@qq.com', '15278479234', '2018-11-29', 'man', null, null, null);
INSERT INTO `user` VALUES ('19', 'zhaoming', '234325', '1529875935@qq.com', '15213426502', '2018-11-29', 'man', null, null, null);
INSERT INTO `user` VALUES ('20', 'zhaozhi', '23442', '1522453457@qq.com', '15213426503', '2018-11-29', 'man', null, null, null);
