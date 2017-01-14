/*
Navicat MySQL Data Transfer

Source Server         : 本地Mysql
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : db_programer

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2017-01-14 17:30:49
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
-- Table structure for reply_t
-- ----------------------------
DROP TABLE IF EXISTS `reply_t`;
CREATE TABLE `reply_t` (
  `id` varchar(45) NOT NULL,
  `user_id` varchar(45) DEFAULT NULL,
  `article_id` varchar(45) DEFAULT NULL,
  `content` varchar(2000) DEFAULT NULL,
  `reply_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
