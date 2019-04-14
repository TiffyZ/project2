/*
Navicat MySQL Data Transfer

Source Server         : zth
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : project2

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-03-20 16:40:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for policy_check
-- ----------------------------
DROP TABLE IF EXISTS `policy_check`;
CREATE TABLE `policy_check` (
  `policy_id` int(12) NOT NULL,
  `employee_id` int(12) NOT NULL,
  `check_state` bit(1) NOT NULL,
  `check_comment` text,
  PRIMARY KEY (`policy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET FOREIGN_KEY_CHECKS=1;
