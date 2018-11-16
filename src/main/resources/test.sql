/*
Navicat MySQL Data Transfer

Source Server         : HOST
Source Server Version : 80013
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 80013
File Encoding         : 65001

Date: 2018-11-16 09:31:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_notes
-- ----------------------------
DROP TABLE IF EXISTS `t_notes`;
CREATE TABLE `t_notes` (
  `noteid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `is_del` int(1) NOT NULL DEFAULT '0' COMMENT '是否删除  0：没删除，1：已删除',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`noteid`),
  UNIQUE KEY `noteid` (`noteid`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_notes
-- ----------------------------
INSERT INTO `t_notes` VALUES ('1', '1', '11111111111111', '0', '2018-11-08 14:59:06', '2018-11-08 14:59:06');
INSERT INTO `t_notes` VALUES ('2', '1', '2222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222', '0', '2018-11-08 14:59:06', '2018-11-08 14:59:06');
INSERT INTO `t_notes` VALUES ('5', '1', '1212.3125343783678', '0', '2018-11-08 14:59:06', '2018-11-08 14:59:06');
INSERT INTO `t_notes` VALUES ('6', '5', '21323132132132121321', '0', '2018-11-08 14:59:06', '2018-11-08 14:59:06');
INSERT INTO `t_notes` VALUES ('7', '5', '45637859786378378627/8326', '1', '2018-11-08 14:59:06', '2018-11-08 14:59:06');
INSERT INTO `t_notes` VALUES ('8', '5', '454537939999999999999999999999', '1', '2018-11-08 14:59:06', '2018-11-08 14:59:06');
INSERT INTO `t_notes` VALUES ('9', '5', '1212', '1', '2018-11-08 14:59:06', '2018-11-08 14:59:06');
INSERT INTO `t_notes` VALUES ('10', '5', '3333333333333333333', '0', '2018-11-08 14:59:06', '2018-11-08 14:59:06');
INSERT INTO `t_notes` VALUES ('11', '5', '测试啊啊啊啊啊啊啊啊啊', '0', '2018-11-08 14:59:06', '2018-11-08 14:59:06');
INSERT INTO `t_notes` VALUES ('12', '5', 'asdasfasfasfasfasfasf', '0', '2018-11-08 14:59:06', '2018-11-08 14:59:06');
INSERT INTO `t_notes` VALUES ('13', '5', 'asdasfasfasfasfasfasf', '1', '2018-11-08 14:59:06', '2018-11-08 17:20:10');
INSERT INTO `t_notes` VALUES ('14', '7', '1212121212', '1', '2018-11-08 14:59:06', '2018-11-08 14:59:06');
INSERT INTO `t_notes` VALUES ('15', '7', '33333333399999999999999454545454545', '0', '2018-11-08 14:59:06', '2018-11-08 15:04:03');
INSERT INTO `t_notes` VALUES ('16', '7', '777777777777774574587878787', '0', '2018-11-08 14:59:06', '2018-11-08 14:59:06');
INSERT INTO `t_notes` VALUES ('17', '7', '555555559999999999996863786578678', '0', '2018-11-08 14:59:06', '2018-11-08 15:04:32');
INSERT INTO `t_notes` VALUES ('18', '7', '486578696798678,', '0', '2018-11-08 15:48:18', '2018-11-08 15:48:18');
INSERT INTO `t_notes` VALUES ('19', '5', '111111111111', '1', '2018-11-08 17:09:12', '2018-11-08 17:10:07');
INSERT INTO `t_notes` VALUES ('20', '5', '222222222222222', '0', '2018-11-08 17:11:14', '2018-11-08 17:11:14');
INSERT INTO `t_notes` VALUES ('21', '5', '33333333333333', '0', '2018-11-08 17:18:50', '2018-11-08 17:18:50');
INSERT INTO `t_notes` VALUES ('22', '5', '55555555555555555', '0', '2018-11-08 17:34:44', '2018-11-08 17:34:44');
INSERT INTO `t_notes` VALUES ('23', '5', '77777777777777777', '0', '2018-11-08 17:35:05', '2018-11-08 17:35:05');
INSERT INTO `t_notes` VALUES ('24', '5', '878787878787878', '0', '2018-11-08 17:36:45', '2018-11-08 17:36:45');
INSERT INTO `t_notes` VALUES ('25', '5', 'Assad sad asdfa dad\'s  ssada  .\ntasdas ihasd $&-$55', '0', '2018-11-08 17:37:49', '2018-11-08 17:37:49');
INSERT INTO `t_notes` VALUES ('26', '6', '121212125727820245', '0', '2018-11-08 17:38:59', '2018-11-08 17:39:33');

-- ----------------------------
-- Table structure for t_users
-- ----------------------------
DROP TABLE IF EXISTS `t_users`;
CREATE TABLE `t_users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` char(20) NOT NULL,
  `password` char(16) NOT NULL,
  `email` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `is_del` int(1) NOT NULL DEFAULT '0',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `uid` (`uid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_users
-- ----------------------------
INSERT INTO `t_users` VALUES ('1', 'wanwan', 'wanwan', 'wanwan', '1541642961343', '329f20f5a06a54573081c0cc15f52f9e', '0', '2018-11-08 14:50:13', '2018-11-08 14:50:29');
INSERT INTO `t_users` VALUES ('2', 'liuwan', 'liuwan', 'liuwan', null, null, '0', null, null);
INSERT INTO `t_users` VALUES ('3', 'wanzai', 'wasdwasd', '1458476478@qq.com', null, null, '0', null, null);
INSERT INTO `t_users` VALUES ('5', '123', '123', null, '1541671246482', '5e9d8e8fbf7d89d196e3b04cc358fbb5', '0', null, '2018-11-08 18:00:46');
INSERT INTO `t_users` VALUES ('6', '123456', '123456', null, '1541669926475', '3cded9075f3f5695bc4c8212df3d0358', '0', null, '2018-11-08 17:38:46');
INSERT INTO `t_users` VALUES ('7', '121', '121', null, '1541658545933', '0e68a23d94736da5e4113fef3ccca889', '0', null, null);
