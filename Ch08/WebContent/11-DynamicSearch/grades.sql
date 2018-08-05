/*
Navicat MySQL Data Transfer

Source Server         : jsp
Source Server Version : 80011
Source Host           : localhost:3306
Source Database       : webdata

Target Server Type    : MYSQL
Target Server Version : 80011
File Encoding         : 65001

Date: 2018-08-05 12:46:03
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `grades`
-- ----------------------------
DROP TABLE IF EXISTS `grades`;
CREATE TABLE `grades` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Chinese` tinyint(3) DEFAULT NULL,
  `English` tinyint(3) DEFAULT NULL,
  `Math` tinyint(3) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of grades
-- ----------------------------
INSERT INTO grades VALUES ('1', '張三', '75', '50', '78');
INSERT INTO grades VALUES ('2', '李四', '88', '69', '100');
INSERT INTO grades VALUES ('3', '王五', '85', '80', '75');
INSERT INTO grades VALUES ('4', '王大為', '65', '50', '68');
INSERT INTO grades VALUES ('5', '劉秀慧', '88', '88', '76');
INSERT INTO grades VALUES ('6', '陳曉春', '90', '94', '65');
INSERT INTO grades VALUES ('7', '李銘誠', '83', '85', '77');
INSERT INTO grades VALUES ('8', '李雯雯', '98', '78', '60');
INSERT INTO grades VALUES ('9', '小李子', '100', '100', '100');
INSERT INTO grades VALUES ('10', '李小子', '50', '50', '50');
