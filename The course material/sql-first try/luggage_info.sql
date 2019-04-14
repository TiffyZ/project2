/*
Navicat MySQL Data Transfer

Source Server         : zth
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : project2

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-03-20 16:39:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for luggage_info
-- ----------------------------
DROP TABLE IF EXISTS `luggage_info`;
CREATE TABLE `luggage_info` (
  `luggage_id` int(12) NOT NULL,
  `depart_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `arrival_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `depart_airport` varchar(255) DEFAULT NULL,
  `arrival_airport` varchar(255) DEFAULT NULL,
  `flight_num` varchar(8) NOT NULL,
  `luggage_des` text NOT NULL,
  PRIMARY KEY (`luggage_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET FOREIGN_KEY_CHECKS=1;
