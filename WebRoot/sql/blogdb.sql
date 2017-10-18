/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50133
Source Host           : localhost:3306
Source Database       : blogdb

Target Server Type    : MYSQL
Target Server Version : 50133
File Encoding         : 65001

Date: 2017-04-24 08:30:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for leaveinfo
-- ----------------------------
DROP TABLE IF EXISTS `leaveinfo`;
CREATE TABLE `leaveinfo` (
  `leavid` int(11) NOT NULL AUTO_INCREMENT COMMENT '留言表id',
  `user_id` int(11) NOT NULL COMMENT '外键引用用户id，留言人',
  `leavcontent` varchar(2000) NOT NULL COMMENT '留言内容',
  `leavtime` datetime NOT NULL COMMENT '留言时间',
  PRIMARY KEY (`leavid`),
  KEY `FK1` (`user_id`),
  CONSTRAINT `FK1` FOREIGN KEY (`user_id`) REFERENCES `userinfo` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of leaveinfo
-- ----------------------------
INSERT INTO `leaveinfo` VALUES ('1', '1', '祝你天天开心', '2017-04-19 08:48:40');

-- ----------------------------
-- Table structure for photoinfo
-- ----------------------------
DROP TABLE IF EXISTS `photoinfo`;
CREATE TABLE `photoinfo` (
  `phoid` int(11) NOT NULL AUTO_INCREMENT COMMENT '照片ID',
  `phoname` varchar(100) NOT NULL COMMENT '照片备注',
  `phototime` datetime NOT NULL COMMENT '上传时间',
  PRIMARY KEY (`phoid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of photoinfo
-- ----------------------------
INSERT INTO `photoinfo` VALUES ('1', '21.jpg', '2017-04-20 23:59:59');
INSERT INTO `photoinfo` VALUES ('2', '16.jpg', '2017-04-21 10:31:11');
INSERT INTO `photoinfo` VALUES ('3', '17.jpg', '2017-04-19 10:31:24');
INSERT INTO `photoinfo` VALUES ('4', '18.jpg', '2017-04-21 10:38:10');
INSERT INTO `photoinfo` VALUES ('5', '19.jpg', '2017-04-20 10:38:26');
INSERT INTO `photoinfo` VALUES ('6', '15.jpg', '2017-04-19 10:38:41');

-- ----------------------------
-- Table structure for praise
-- ----------------------------
DROP TABLE IF EXISTS `praise`;
CREATE TABLE `praise` (
  `praiseid` int(11) NOT NULL AUTO_INCREMENT COMMENT '点赞',
  `prenum` int(11) NOT NULL,
  `preid` int(11) NOT NULL COMMENT '点赞的人',
  `pretitid` int(11) NOT NULL COMMENT '点赞的文章',
  PRIMARY KEY (`praiseid`),
  KEY `FK4` (`preid`),
  KEY `FK5` (`pretitid`),
  CONSTRAINT `FK4` FOREIGN KEY (`preid`) REFERENCES `userinfo` (`user_id`),
  CONSTRAINT `FK5` FOREIGN KEY (`pretitid`) REFERENCES `titleinfo` (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of praise
-- ----------------------------

-- ----------------------------
-- Table structure for recommendinfo
-- ----------------------------
DROP TABLE IF EXISTS `recommendinfo`;
CREATE TABLE `recommendinfo` (
  `remid` int(11) NOT NULL AUTO_INCREMENT COMMENT '推荐文章id',
  `remnum` int(11) NOT NULL COMMENT '外键引用文章id，推荐文章id',
  PRIMARY KEY (`remid`),
  KEY `FK3` (`remnum`),
  CONSTRAINT `FK3` FOREIGN KEY (`remnum`) REFERENCES `titleinfo` (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recommendinfo
-- ----------------------------
INSERT INTO `recommendinfo` VALUES ('1', '1');

-- ----------------------------
-- Table structure for reviewinfo
-- ----------------------------
DROP TABLE IF EXISTS `reviewinfo`;
CREATE TABLE `reviewinfo` (
  `revid` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `user_id` int(11) NOT NULL COMMENT '外键引用用户id，评论者',
  `recontent` varchar(2000) NOT NULL COMMENT '评论内容',
  `retime` datetime NOT NULL COMMENT '评论时间',
  PRIMARY KEY (`revid`),
  KEY `FK2` (`user_id`),
  CONSTRAINT `FK2` FOREIGN KEY (`user_id`) REFERENCES `userinfo` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reviewinfo
-- ----------------------------
INSERT INTO `reviewinfo` VALUES ('1', '1', '评论内容.............................................................................................', '2017-04-19 08:49:27');

-- ----------------------------
-- Table structure for shuoinfo
-- ----------------------------
DROP TABLE IF EXISTS `shuoinfo`;
CREATE TABLE `shuoinfo` (
  `shuoid` int(11) NOT NULL AUTO_INCREMENT COMMENT '说说id',
  `user_id` varchar(200) NOT NULL COMMENT '外键引用用户表',
  `shuocontent` varchar(2000) NOT NULL COMMENT '内容',
  `shuophoto` varchar(20) DEFAULT NULL COMMENT '上传图片名字',
  `shuotime` datetime NOT NULL COMMENT '上传时间',
  PRIMARY KEY (`shuoid`),
 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shuoinfo
-- ----------------------------

-- ----------------------------
-- Table structure for titleinfo
-- ----------------------------
DROP TABLE IF EXISTS `titleinfo`;
CREATE TABLE `titleinfo` (
  `tid` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `user_id` int(11) NOT NULL COMMENT '外键引用用户ID',
  `title` varchar(100) NOT NULL COMMENT '文章标题',
  `author` varchar(20) NOT NULL COMMENT '文章作者',
  `typeid` int(11) NOT NULL COMMENT '文章类型引用typeid',
  `loadurl` varchar(50) NOT NULL COMMENT '原创作者信息',
  `lable` varchar(20) NOT NULL COMMENT '文章标签',
  `create_time` datetime NOT NULL COMMENT '发表时间',
  `titcontent` varchar(2000) NOT NULL COMMENT '文章内容',
  PRIMARY KEY (`tid`),
  KEY `FK` (`typeid`),
  CONSTRAINT `FK` FOREIGN KEY (`typeid`) REFERENCES `typeinfo` (`typeid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of titleinfo
-- ----------------------------
INSERT INTO `titleinfo` VALUES ('1', '1', '人类何时能移民火星', '彭子庭', '1', 'test', '科技', '2017-04-19 08:46:42', '现在地球的环境日益恶化，....................................................................................................................................');

-- ----------------------------
-- Table structure for typeinfo
-- ----------------------------
DROP TABLE IF EXISTS `typeinfo`;
CREATE TABLE `typeinfo` (
  `typeid` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章类型ID',
  `typename` varchar(20) NOT NULL COMMENT '文章类型名字',
  PRIMARY KEY (`typeid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of typeinfo
-- ----------------------------
INSERT INTO `typeinfo` VALUES ('1', '科技类');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id\r\n',
  `user_name` varchar(20) NOT NULL,
  `userpwd` varchar(20) NOT NULL COMMENT '密码',
  `sex` varchar(10) NOT NULL,
  `birthday` varchar(30) NOT NULL,
  `e_mail` varchar(30) NOT NULL,
  `phone` varchar(20) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;



-- ----------------------------
DROP TABLE IF EXISTS `replyinfo`;
CREATE TABLE `replyinfo` (
  `replyid` int(11) NOT NULL AUTO_INCREMENT,
  `replytime` datetime NOT NULL,
  `replycont` varchar(255) NOT NULL,
  `replynum` int(11) NOT NULL,
  PRIMARY KEY (`replyid`),
  KEY `FK_reply` (`replynum`),
  CONSTRAINT `FK_reply` FOREIGN KEY (`replynum`) REFERENCES `reviewinfo` (`revid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `saidrevieinfo` (
  `saidreviewid` int(11) NOT NULL AUTO_INCREMENT,
  `saidid` int(11) NOT NULL,
  `saidrecont` varchar(255) NOT NULL,
  `saidretime` datetime NOT NULL,
  `saidrename` varchar(255) NOT NULL,
  PRIMARY KEY (`saidreviewid`),
  KEY `FK_saidre` (`saidid`),
  CONSTRAINT `FK_saidre` FOREIGN KEY (`saidid`) REFERENCES `shuoinfo` (`shuoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', '张三', '123456', '男', '08-12', '1406214140@qq.com', '18680959114');
INSERT INTO `userinfo` VALUES ('2', '好地负海涵', '123', '男', '2017-04-20 15:55:28', '456345345u', '453543475374');
