/*
Navicat MySQL Data Transfer

Source Server         : my
Source Server Version : 80015
Source Host           : localhost:3306
Source Database       : project2

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2019-03-20 17:07:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_info
-- ----------------------------
DROP TABLE IF EXISTS `admin_info`;
CREATE TABLE `admin_info` (
  `admin_id` int(6) NOT NULL,
  `admin_pass` varchar(30) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

-- ----------------------------
-- Table structure for policy_claim
-- ----------------------------
DROP TABLE IF EXISTS `policy_claim`;
CREATE TABLE `policy_claim` (
  `policy_id` int(12) NOT NULL,
  `employee_id` int(12) NOT NULL,
  `cus_id` int(12) NOT NULL,
  `claim_state` bit(1) NOT NULL,
  `claim_comment` text,
  PRIMARY KEY (`policy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `cus_id` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `pho_num` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `identification` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `mail` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`cus_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
SET FOREIGN_KEY_CHECKS=1;
