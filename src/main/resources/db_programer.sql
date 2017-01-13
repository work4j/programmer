/*
Navicat MySQL Data Transfer

Source Server         : 本地Mysql
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : db_programer

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2017-01-13 19:27:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article_t
-- ----------------------------
DROP TABLE IF EXISTS `article_t`;
CREATE TABLE `article_t` (
  `id` varchar(45) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `content` varchar(2000) DEFAULT NULL,
  `user_id` varchar(45) DEFAULT NULL,
  `release_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article_t
-- ----------------------------
INSERT INTO `article_t` VALUES ('06bf578a784b4c33812015e04ceb2a04', '请在下面找到“咛”字', '叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚咛咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚叮咚', '3fa9c8fd1dce4de499362996842dfd1e', '2017-01-13 19:25:20');
INSERT INTO `article_t` VALUES ('86ecfe7cd8114801b5bf6fdc36e49b83', '超级搞笑，好不好', '超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好', '3fa9c8fd1dce4de499362996842dfd1e', '2017-01-13 19:23:40');
INSERT INTO `article_t` VALUES ('d1bf961278df4da4ac7c797880be586b', '哦吼吼', '哦吼吼哦吼吼哦吼吼~~\r\n\r\n啦啦啦\r\n\r\n这个可以吗', '3fa9c8fd1dce4de499362996842dfd1e', '2017-01-13 19:21:43');
INSERT INTO `article_t` VALUES ('e6cd0963245640a79c78311e5e81308d', '试试', '就哈哈', null, '2017-01-13 19:16:43');
INSERT INTO `article_t` VALUES ('e8bc1d1fca2a485a9def4cd2ff60ce24', '可以，就是在啦啦啦', '哼哼', '3fa9c8fd1dce4de499362996842dfd1e', '2017-01-13 19:22:46');
INSERT INTO `article_t` VALUES ('f4328b2dbd994371bbd759819e5e5149', '超级搞笑，好不好', '超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好超级搞笑，好不好', '3fa9c8fd1dce4de499362996842dfd1e', '2017-01-13 19:23:21');

-- ----------------------------
-- Table structure for user_t
-- ----------------------------
DROP TABLE IF EXISTS `user_t`;
CREATE TABLE `user_t` (
  `id` varchar(255) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `real_name` varchar(255) DEFAULT NULL,
  `register_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `user_type` int(11) DEFAULT NULL,
  `editable` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_t
-- ----------------------------
INSERT INTO `user_t` VALUES ('0fc7377934934b668022bbccf4cc7ae3', '516', '1616', '1235325', '3523', '1616', '2017-01-13 17:48:48', '1', '1');
INSERT INTO `user_t` VALUES ('1', 'admin', '123456', 'admin', 'admin', 'admin', '2017-01-13 14:09:08', '1', '2');
INSERT INTO `user_t` VALUES ('3b52d2f842d3400ebbfdb70804c5b511', 'ddd', 'ddd', 'dddd', 'dddddd', 'dddd', '2017-01-13 17:48:02', '1', '1');
INSERT INTO `user_t` VALUES ('3fa9c8fd1dce4de499362996842dfd1e', 'wanshipeng', '123456', '824509437@qq.com', '小万万', '万世鹏', '2017-01-13 17:20:07', '1', '1');
INSERT INTO `user_t` VALUES ('494a823b31494d71a8e07682b2800506', '234325', '32423', '3253', '23435', '324', '2017-01-13 17:49:01', '1', '1');
INSERT INTO `user_t` VALUES ('682270d0beb64175ab07436ec3a0bd38', '42314231', '23423', '1235', '5235', '234', '2017-01-13 17:48:41', '1', '1');
INSERT INTO `user_t` VALUES ('7b0a319e1ce245cf9d7118112019a26e', 'dsadfsdf', 'sdfsad', 'sss', 'sss', 'ssss', '2017-01-13 17:47:54', '1', '1');
INSERT INTO `user_t` VALUES ('a9c7105e2b1548f28a4e293601cda2ab', '1234', '12321312', '12', '1232', '123', '2017-01-13 17:48:27', '1', '1');
INSERT INTO `user_t` VALUES ('c1a3c78dbd3e43c4855024546b2ae4b2', '21312', '12321', '222', '222', '222', '2017-01-13 17:48:35', '1', '1');
INSERT INTO `user_t` VALUES ('ca65d5444cb04ec8935b48360c53493d', '23432', '325', '21', '4566', '21', '2017-01-13 17:49:07', '1', '1');
INSERT INTO `user_t` VALUES ('e9e6cd6c35d34b6bb29fedc4111dddf4', '23566', '616', '66', '16', '16', '2017-01-13 17:48:55', '1', '1');
INSERT INTO `user_t` VALUES ('fb63f2dbd0e9477fb408f5634a0331c8', '666', '11', '11', '11', '11', '2017-01-13 17:49:15', '1', '1');
