/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : domyself

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2018-11-29 09:07:54
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of fanstable
-- ----------------------------

-- ----------------------------
-- Table structure for `idoltable`
-- ----------------------------
DROP TABLE IF EXISTS `idoltable`;
CREATE TABLE `idoltable` (
  `idoltableid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `idolid` int(11) NOT NULL,
  PRIMARY KEY (`idoltableid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of idoltable
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='mutual为点赞或者评论表\r\n';

-- ----------------------------
-- Records of mutualtable
-- ----------------------------

-- ----------------------------
-- Table structure for `picturetable`
-- ----------------------------
DROP TABLE IF EXISTS `picturetable`;
CREATE TABLE `picturetable` (
  `pictureid` int(11) NOT NULL AUTO_INCREMENT,
  `messageid` int(11) NOT NULL,
  `pictureurl` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pictureid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of picturetable
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of production
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'chenpengyu', '123', '1145693809@qq.com', '15226560812', '2018-11-28', 'man', null, null, null);
