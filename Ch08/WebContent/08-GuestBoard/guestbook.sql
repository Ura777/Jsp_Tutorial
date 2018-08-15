/*
Navicat MySQL Data Transfer

Source Server         : jsp
Source Server Version : 80011
Source Host           : localhost:3306
Source Database       : mydatabase

Target Server Type    : MYSQL
Target Server Version : 80011
File Encoding         : 65001

Date: 2018-08-15 20:33:11
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `guestbook`
-- ----------------------------
DROP TABLE IF EXISTS `guestbook`;
CREATE TABLE `guestbook` (
  `no` tinyint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  `mail` varchar(30) DEFAULT NULL,
  `subject` varchar(30) DEFAULT NULL,
  `content` text,
  `putdate` date DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guestbook
-- ----------------------------
INSERT INTO guestbook VALUES ('24', '123', '1234@qoo.com.tw', 'test', '我要測試123abc', '2018-08-04');
INSERT INTO guestbook VALUES ('25', '6549', '56348', 'teste', '4686sea', '2018-08-04');
INSERT INTO guestbook VALUES ('26', 'waea', 'sdwas', 'xsww', 'adgwasdfaewa', '2018-08-04');
INSERT INTO guestbook VALUES ('27', 'ewads', 'dfgweaa', 'sdgwaea', 'cggyrwaw', '2018-08-04');
INSERT INTO guestbook VALUES ('28', 'ewaes', 'ddawe', 'eteaws', 'hjyj546s6e4測試亂數', '2018-08-04');
INSERT INTO guestbook VALUES ('29', 'w5649648ew', 'sd47e78a@4684.c8we', 'saswawe', 'dfsaedfjiip你好diowj', '2018-08-04');
