/*
Navicat MySQL Data Transfer

Source Server         : jsp
Source Server Version : 80011
Source Host           : localhost:3306
Source Database       : ad

Target Server Type    : MYSQL
Target Server Version : 80011
File Encoding         : 65001

Date: 2018-08-05 12:17:52
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `randad`
-- ----------------------------
DROP TABLE IF EXISTS `randad`;
CREATE TABLE `randad` (
  `ADID` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `file_path` varchar(20) NOT NULL,
  `ad_file` varchar(20) NOT NULL,
  `link` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Alternate` text NOT NULL,
  `ADContent` text NOT NULL,
  PRIMARY KEY (`ADID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of randad
-- ----------------------------
INSERT INTO randad VALUES ('1', 'image', '1.JPG', 'https://shopping.pchome.com.tw', 'pchome網路購物', 'pchome網路購物');
INSERT INTO randad VALUES ('2', 'image', '2.JPG', 'https://tw.yahoo.com', 'yahoo', 'yahoo');
INSERT INTO randad VALUES ('3', 'image', '3.JPG', 'https://udn.com/news/index', '聯合新聞網', '聯合新聞網');
