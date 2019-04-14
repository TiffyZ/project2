/*
Navicat MySQL Data Transfer

Source Server         : zth
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : project2

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-03-20 16:40:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for policy_create
-- ----------------------------
DROP TABLE IF EXISTS `policy_create`;
CREATE TABLE `policy_create` (
  `policy_id` int(12) NOT NULL,
  `luggage_id` int(12) NOT NULL,
  `cus_id` int(12) NOT NULL,
  `create_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `delete_date` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `if_pay` bit(1) NOT NULL,
  `luggage_value` int(11) NOT NULL,
  `if_claim` bit(1) NOT NULL,
  `create_comment` text,
  PRIMARY KEY (`policy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET FOREIGN_KEY_CHECKS=1;
