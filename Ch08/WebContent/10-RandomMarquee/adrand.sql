/*
Navicat MySQL Data Transfer

Source Server         : jsp
Source Server Version : 80011
Source Host           : localhost:3306
Source Database       : admarquee

Target Server Type    : MYSQL
Target Server Version : 80011
File Encoding         : 65001

Date: 2018-08-05 12:39:00
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `adrand`
-- ----------------------------
DROP TABLE IF EXISTS `adrand`;
CREATE TABLE `adrand` (
  `ADID` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `link` varchar(50) NOT NULL,
  `ADTitle` text NOT NULL,
  PRIMARY KEY (`ADID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of adrand
-- ----------------------------
INSERT INTO adrand VALUES ('1', 'https://shopping.pchome.com.tw', '我是PChome線上購物！');
INSERT INTO adrand VALUES ('2', 'https://tw.yahoo.com', '我是Yahoo!');
INSERT INTO adrand VALUES ('3', 'https://udn.com/news/index', '我是聯合新聞網！');
