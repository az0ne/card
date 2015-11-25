/*
Navicat MySQL Data Transfer

Source Server         : my
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : ka

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2015-11-24 17:30:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `uid` int(50) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `regdate` date DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'azone', '25d55ad283aa400af464c76d713c07as', '12324214@qq.com', '2015-10-19');
INSERT INTO `admin` VALUES ('2', 'test', 'b1ef741bee14a29acbe5686f59b62568', '23454534@qq.com', '2015-10-19');
INSERT INTO `admin` VALUES ('3', 'test3', '46f94c8de14fb36680850768ff1b7f2c', '2345453422@qq.com', '2015-10-19');
INSERT INTO `admin` VALUES ('4', '5555', 'f379eaf3c831b04de153469d1bec345d', '43534534@qq.com', null);

-- ----------------------------
-- Table structure for `money_log`
-- ----------------------------
DROP TABLE IF EXISTS `money_log`;
CREATE TABLE `money_log` (
  `logid` int(30) NOT NULL AUTO_INCREMENT,
  `uid` int(30) NOT NULL DEFAULT '0',
  `addlog` varchar(30) DEFAULT NULL,
  `sublog` varchar(30) DEFAULT NULL,
  `yue` varchar(30) DEFAULT NULL,
  `time` date DEFAULT NULL,
  PRIMARY KEY (`logid`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of money_log
-- ----------------------------
INSERT INTO `money_log` VALUES ('6', '8', '6', null, '151.00', '0000-00-00');
INSERT INTO `money_log` VALUES ('5', '8', '10', null, '145.00', '0000-00-00');
INSERT INTO `money_log` VALUES ('7', '8', '6', null, '157.00', '0000-00-00');
INSERT INTO `money_log` VALUES ('10', '8', '55', null, '198.00', '0000-00-00');
INSERT INTO `money_log` VALUES ('9', '8', null, '7', '143.00', '0000-00-00');
INSERT INTO `money_log` VALUES ('11', '8', '6', null, '204.00', '0000-00-00');
INSERT INTO `money_log` VALUES ('12', '8', '6', null, '210.00', '0000-00-00');
INSERT INTO `money_log` VALUES ('13', '8', null, '11', '199.00', '0000-00-00');
INSERT INTO `money_log` VALUES ('14', '8', null, '6', '193.00', '0000-00-00');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(50) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `stat` int(20) unsigned zerofill NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'azone', '25d55ad283aa400af464c76d713c07as', '00000000000000000000');
INSERT INTO `user` VALUES ('2', 'test', 'b1ef741bee14a29acbe5686f59b6256a', '00000000000000000000');
INSERT INTO `user` VALUES ('3', 'test3', '46f94c8de14fb36680850768ff1b7f2b', '00000000000000000000');
INSERT INTO `user` VALUES ('4', '5555', 'f379eaf3c831b04de153469d1bec345a', '00000000000000000000');
INSERT INTO `user` VALUES ('5', '李白', 'e10adc3949ba59abbe56e057f20f883d', '00000000000000000000');
INSERT INTO `user` VALUES ('6', '张三丰', 'e10adc3949ba59abbe56e057f20f883c', '00000000000000000001');
INSERT INTO `user` VALUES ('7', '大泉', 'e10adc3949ba59abbe56e057f20f883d', '00000000000000000000');
INSERT INTO `user` VALUES ('8', '12345', '25d55ad283aa400af464c76d713c07ab', '00000000000000000000');

-- ----------------------------
-- Table structure for `user_money`
-- ----------------------------
DROP TABLE IF EXISTS `user_money`;
CREATE TABLE `user_money` (
  `uid` int(50) NOT NULL DEFAULT '0',
  `user_money` double(30,2) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_money
-- ----------------------------
INSERT INTO `user_money` VALUES ('4', '123.50');
INSERT INTO `user_money` VALUES ('5', '200.00');
INSERT INTO `user_money` VALUES ('6', '19.00');
INSERT INTO `user_money` VALUES ('8', '193.00');
