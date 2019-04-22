/*
Navicat MySQL Data Transfer

Source Server         : my
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : interest

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-04-18 08:19:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `info` text NOT NULL COMMENT '简介',
  `content` longtext NOT NULL COMMENT '内容',
  `click_rate` int(11) DEFAULT '0' COMMENT '点击量',
  `comment_count` int(11) DEFAULT '0' COMMENT '评论量',
  `top` int(1) DEFAULT '0' COMMENT '置顶（0:不置顶，1:置顶）',
  `create_time` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `reply_time` varchar(255) DEFAULT NULL COMMENT '最新回复时间',
  `userid` int(11) NOT NULL COMMENT '创建人id',
  `del` tinyint(1) DEFAULT '0' COMMENT '逻辑删除（0:启用，1:删除）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='文章表';

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', '123456787654231345677654333543232543123123eqwdasdqwe1312', '123456787654231345677654333543232543123123eqwdasdqwe1312123456787654231345677654333543232543123123eqwdasdqwe1312123456787654231345677654333543232543123123eqwdasdqwe1312qwewdasdas', '<p>123456787654231345677654333543232543123123eqwdasdqwe1312123456787654231345677654333543232543123123eqwdasdqwe1312123456787654231345677654333543232543123123eqwdasdqwe1312<img src=\"http://127.0.0.1:8080/interest/interest/20190213/730f121c-e1a5-4e9b-bc23-e5fafb7d6dbd.png\"></p><p>qwewdasdas</p><p><img src=\"http://127.0.0.1:8080/interest/interest/20190213/47eeea43-47bc-4140-927a-66748086f270.png\"></p>', '256', '34', '1', '1550047563194', '1550047563194', '1', '0');
INSERT INTO `article` VALUES ('2', 'this is test20190227-001', '你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你', '<p>你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀<img src=\"http://127.0.0.1:8080/interest/interest/20190213/b06f3265-51bd-4c2b-95f0-882d5dbe1580.png\"></p><p>你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀</p>', '19', '2', '0', '1550050417080', '1550050417080', '1', '0');
INSERT INTO `article` VALUES ('3', '124', '123', '<p>123</p>', '1', '0', '0', '1550071607008', '1550071607008', '1', '0');
INSERT INTO `article` VALUES ('4', '123', '123123', '<p>123</p><p><img src=\"http://127.0.0.1:8080/interest/interest/20190227/d085e739-5a26-4ea0-88e7-f692171f68cf.png\"></p><p>123</p>', '8', '0', '0', '1550073274316', '1550073274316', '1', '0');
INSERT INTO `article` VALUES ('5', '123', '123', '<h2 class=\"ql-align-center\">123</h2><p><img src=\"http://127.0.0.1:8080/interest/interest/20190227/a70929ab-2923-48be-ab59-cca0ceeb96ea.png\" width=\"596\" style=\"display: block; margin: auto;\"></p>', '52', '17', '0', '1550074630191', '1550074630191', '1', '1');
INSERT INTO `article` VALUES ('6', '20190222测试', '20190222测试20190222测试20190222测试20190222测试20190222测试这是测试这是测试这是测试这是测试这是测试这是测试这是测试这是测试这是测试这是测试这是测试', '<p><img src=\"http://127.0.0.1:8080/interest/interest/20190222/444e06bb-1912-4f91-8219-e415bf00ee5b.png\">20190222测试20190222测试20190222测试20190222测试20190222测试<img src=\"http://127.0.0.1:8080/interest/interest/20190222/2341636a-be5f-4582-a3fb-561767a76484.png\" width=\"1280\" style=\"display: block; margin: auto;\"></p><h2>这是测试这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2><br></h2>', '32', '13', '0', '1550800259508', '1550800259508', '12', '0');
INSERT INTO `article` VALUES ('7', '20190222测试1', '20190222测试20190222测试20190222测试20190222测试20190222测试这是测试这是测试这是测试这是测试这是测试这是测试这是测试这是测试这是测试这是测试这是测试', '<p><img src=\"http://127.0.0.1:8080/interest/interest/20190222/444e06bb-1912-4f91-8219-e415bf00ee5b.png\">20190222测试20190222测试20190222测试20190222测试20190222测试<img src=\"http://127.0.0.1:8080/interest/interest/20190222/2341636a-be5f-4582-a3fb-561767a76484.png\" width=\"1280\" style=\"display: block; margin: auto;\"></p><h2>这是测试这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2><br></h2>', '24', '13', '0', '1550800259508', '1550800259508', '12', '0');
INSERT INTO `article` VALUES ('8', '20190222测试2', '20190222测试20190222测试20190222测试20190222测试20190222测试这是测试这是测试这是测试这是测试这是测试这是测试这是测试这是测试这是测试这是测试这是测试', '<p><img src=\"http://127.0.0.1:8080/interest/interest/20190222/444e06bb-1912-4f91-8219-e415bf00ee5b.png\">20190222测试20190222测试20190222测试20190222测试20190222测试<img src=\"http://127.0.0.1:8080/interest/interest/20190222/2341636a-be5f-4582-a3fb-561767a76484.png\" width=\"1280\" style=\"display: block; margin: auto;\"></p><h2>这是测试这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2><br></h2>', '24', '13', '0', '1550800259508', '1550800259508', '12', '0');
INSERT INTO `article` VALUES ('9', '20190222测试3', '20190222测试20190222测试20190222测试20190222测试20190222测试这是测试这是测试这是测试这是测试这是测试这是测试这是测试这是测试这是测试这是测试这是测试', '<p><img src=\"http://127.0.0.1:8080/interest/interest/20190222/444e06bb-1912-4f91-8219-e415bf00ee5b.png\">20190222测试20190222测试20190222测试20190222测试20190222测试<img src=\"http://127.0.0.1:8080/interest/interest/20190222/2341636a-be5f-4582-a3fb-561767a76484.png\" width=\"1280\" style=\"display: block; margin: auto;\"></p><h2>这是测试这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2><br></h2>', '24', '13', '0', '1550800259508', '1550800259508', '12', '0');
INSERT INTO `article` VALUES ('10', '20190222测试4', '20190222测试20190222测试20190222测试20190222测试20190222测试这是测试这是测试这是测试这是测试这是测试这是测试这是测试这是测试这是测试这是测试这是测试', '<p><img src=\"http://127.0.0.1:8080/interest/interest/20190222/444e06bb-1912-4f91-8219-e415bf00ee5b.png\">20190222测试20190222测试20190222测试20190222测试20190222测试<img src=\"http://127.0.0.1:8080/interest/interest/20190222/2341636a-be5f-4582-a3fb-561767a76484.png\" width=\"1280\" style=\"display: block; margin: auto;\"></p><h2>这是测试这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2><br></h2>', '26', '13', '0', '1550800259508', '1550800259508', '12', '0');
INSERT INTO `article` VALUES ('11', '20190222测试5', '20190222测试20190222测试20190222测试20190222测试20190222测试这是测试这是测试这是测试这是测试这是测试这是测试这是测试这是测试这是测试这是测试这是测试', '<p><img src=\"http://127.0.0.1:8080/interest/interest/20190222/444e06bb-1912-4f91-8219-e415bf00ee5b.png\">20190222测试20190222测试20190222测试20190222测试20190222测试<img src=\"http://127.0.0.1:8080/interest/interest/20190222/2341636a-be5f-4582-a3fb-561767a76484.png\" width=\"1280\" style=\"display: block; margin: auto;\"></p><h2>这是测试这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2><br></h2>', '28', '13', '0', '1550800259508', '1550800259508', '12', '0');
INSERT INTO `article` VALUES ('12', '20190222测试6', '20190222测试20190222测试20190222测试20190222测试20190222测试这是测试这是测试这是测试这是测试这是测试这是测试这是测试这是测试这是测试这是测试这是测试', '<p><img src=\"http://127.0.0.1:8080/interest/interest/20190222/444e06bb-1912-4f91-8219-e415bf00ee5b.png\">20190222测试20190222测试20190222测试20190222测试20190222测试<img src=\"http://127.0.0.1:8080/interest/interest/20190222/2341636a-be5f-4582-a3fb-561767a76484.png\" width=\"1280\" style=\"display: block; margin: auto;\"></p><h2>这是测试这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2>这是测试</h2><h2><br></h2>', '27', '13', '0', '1550800259508', '1550800259508', '12', '0');
INSERT INTO `article` VALUES ('13', '12345', 'qewr', '<p>qewr</p>', '6', '1', '0', '1551282924734', '1551282924734', '1', '0');
INSERT INTO `article` VALUES ('14', 'this is test20190227-002', '你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你', '<p>你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀<img src=\"http://127.0.0.1:8080/interest/interest/20190213/b06f3265-51bd-4c2b-95f0-882d5dbe1580.png\"></p><p>你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀</p>', '19', '2', '0', '1550050417080', '1550050417080', '1', '0');
INSERT INTO `article` VALUES ('15', 'this is test20190227-003', '你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你', '<p>你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀<img src=\"http://127.0.0.1:8080/interest/interest/20190213/b06f3265-51bd-4c2b-95f0-882d5dbe1580.png\"></p><p>你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀</p>', '19', '2', '0', '1550050417080', '1550050417080', '1', '0');
INSERT INTO `article` VALUES ('16', 'this is test20190227-004', '你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你', '<p>你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀<img src=\"http://127.0.0.1:8080/interest/interest/20190213/b06f3265-51bd-4c2b-95f0-882d5dbe1580.png\"></p><p>你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀</p>', '19', '2', '0', '1550050417080', '1550050417080', '1', '0');
INSERT INTO `article` VALUES ('17', 'this is test20190227-005', '你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你', '<p>你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀<img src=\"http://127.0.0.1:8080/interest/interest/20190213/b06f3265-51bd-4c2b-95f0-882d5dbe1580.png\"></p><p>你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀</p>', '19', '2', '0', '1550050417080', '1550050417080', '1', '0');
INSERT INTO `article` VALUES ('18', 'this is test20190227-006', '你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你', '<p>你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀<img src=\"http://127.0.0.1:8080/interest/interest/20190213/b06f3265-51bd-4c2b-95f0-882d5dbe1580.png\"></p><p>你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀</p>', '19', '2', '0', '1550050417080', '1550050417080', '1', '0');
INSERT INTO `article` VALUES ('19', 'this is test20190227-007', '你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你', '<p>你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀<img src=\"http://127.0.0.1:8080/interest/interest/20190213/b06f3265-51bd-4c2b-95f0-882d5dbe1580.png\"></p><p>你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀</p>', '19', '2', '0', '1550050417080', '1550050417080', '1', '0');
INSERT INTO `article` VALUES ('20', 'this is test20190227-008', '你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你', '<p>你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀<img src=\"http://127.0.0.1:8080/interest/interest/20190213/b06f3265-51bd-4c2b-95f0-882d5dbe1580.png\"></p><p>你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀</p>', '19', '2', '0', '1550050417080', '1550050417080', '1', '0');
INSERT INTO `article` VALUES ('21', 'this is test20190227-009', '你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你', '<p>你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀<img src=\"http://127.0.0.1:8080/interest/interest/20190213/b06f3265-51bd-4c2b-95f0-882d5dbe1580.png\"></p><p>你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀</p>', '19', '2', '0', '1550050417080', '1550050417080', '1', '0');
INSERT INTO `article` VALUES ('22', 'this is test20190227-010', '你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你', '<p>你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀<img src=\"http://127.0.0.1:8080/interest/interest/20190213/b06f3265-51bd-4c2b-95f0-882d5dbe1580.png\"></p><p>你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀</p>', '19', '2', '0', '1550050417080', '1550050417080', '1', '0');
INSERT INTO `article` VALUES ('23', 'this is test20190227-011', '你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你', '<p>你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀<img src=\"http://127.0.0.1:8080/interest/interest/20190213/b06f3265-51bd-4c2b-95f0-882d5dbe1580.png\"></p><p>你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀</p>', '20', '2', '0', '1550050417080', '1550050417080', '1', '0');
INSERT INTO `article` VALUES ('24', 'this is test20190227-012', '你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你', '<p>你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀<img src=\"http://127.0.0.1:8080/interest/interest/20190213/b06f3265-51bd-4c2b-95f0-882d5dbe1580.png\"></p><p>你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀</p>', '19', '2', '0', '1550050417080', '1550050417080', '1', '0');
INSERT INTO `article` VALUES ('25', 'this is test20190227-013', '你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你', '<p>你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀<img src=\"http://127.0.0.1:8080/interest/interest/20190213/b06f3265-51bd-4c2b-95f0-882d5dbe1580.png\"></p><p>你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀</p>', '19', '2', '0', '1550050417080', '1550050417080', '1', '0');
INSERT INTO `article` VALUES ('26', 'this is test20190227-014', '你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你', '<p>你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀<img src=\"http://127.0.0.1:8080/interest/interest/20190213/b06f3265-51bd-4c2b-95f0-882d5dbe1580.png\"></p><p>你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀</p>', '19', '2', '0', '1550050417080', '1550050417080', '1', '0');
INSERT INTO `article` VALUES ('27', 'this is test20190227-015', '你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你', '<p>你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀<img src=\"http://127.0.0.1:8080/interest/interest/20190213/b06f3265-51bd-4c2b-95f0-882d5dbe1580.png\"></p><p>你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀</p>', '19', '2', '0', '1550050417080', '1550050417080', '1', '0');
INSERT INTO `article` VALUES ('28', 'this is test20190227-016', '你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你', '<p>你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀<img src=\"http://127.0.0.1:8080/interest/interest/20190213/b06f3265-51bd-4c2b-95f0-882d5dbe1580.png\"></p><p>你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀</p>', '19', '2', '0', '1550050417080', '1550050417080', '1', '0');
INSERT INTO `article` VALUES ('29', 'this is test20190227-017', '你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你', '<p>你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀<img src=\"http://127.0.0.1:8080/interest/interest/20190213/b06f3265-51bd-4c2b-95f0-882d5dbe1580.png\"></p><p>你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀</p>', '19', '2', '0', '1550050417080', '1550050417080', '1', '0');
INSERT INTO `article` VALUES ('30', 'this is test20190227-018', '你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你', '<p>你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀<img src=\"http://127.0.0.1:8080/interest/interest/20190213/b06f3265-51bd-4c2b-95f0-882d5dbe1580.png\"></p><p>你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀</p>', '19', '2', '0', '1550050417080', '1550050417080', '1', '0');
INSERT INTO `article` VALUES ('31', 'this is test20190227-019', '你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你', '<p>你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀<img src=\"http://127.0.0.1:8080/interest/interest/20190213/b06f3265-51bd-4c2b-95f0-882d5dbe1580.png\"></p><p>你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀你好呀</p>', '19', '2', '0', '1550050417080', '1550050417080', '1', '0');
INSERT INTO `article` VALUES ('32', 'asdf', 'dasfasdfasdfa', '<p>dasfasdfasdfa</p>', '0', '0', '0', '1555340158006', '1555340158006', '1', '0');

-- ----------------------------
-- Table structure for article_comment
-- ----------------------------
DROP TABLE IF EXISTS `article_comment`;
CREATE TABLE `article_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `articleid` int(11) NOT NULL COMMENT '文章id',
  `userid` int(11) NOT NULL COMMENT '用户id',
  `parentid` int(11) DEFAULT NULL COMMENT '父级id',
  `comment` text COMMENT '评论',
  `replier_id` int(11) DEFAULT NULL COMMENT '回复评论人id',
  `replier_name` varchar(255) DEFAULT NULL COMMENT '回复评论人的姓名',
  `create_time` varchar(255) DEFAULT NULL COMMENT '评论时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COMMENT='文章评论';

-- ----------------------------
-- Records of article_comment
-- ----------------------------
INSERT INTO `article_comment` VALUES ('1', '1', '1', null, '这是测试1', null, null, '1550245192386');
INSERT INTO `article_comment` VALUES ('2', '1', '1', '1', '这是测试2', '1', '管理员', '1550245263327');
INSERT INTO `article_comment` VALUES ('3', '2', '12', null, '这是测试3', null, null, '1550245192386');
INSERT INTO `article_comment` VALUES ('4', '1', '12', null, '这是测试4', null, null, '1550245192386');
INSERT INTO `article_comment` VALUES ('5', '1', '12', '1', '这是测试5', '1', '管理员', '1550245192386');
INSERT INTO `article_comment` VALUES ('6', '1', '1', '1', '这是测试6', '1', '管理员', '1550248899264');
INSERT INTO `article_comment` VALUES ('7', '1', '1', '1', '这是测试7', '1', '管理员', '1550248991887');
INSERT INTO `article_comment` VALUES ('8', '1', '1', '1', '这是测试9', '1', '管理员', '1550248997769');
INSERT INTO `article_comment` VALUES ('9', '1', '1', null, 'qwe', null, null, '1550752687507');
INSERT INTO `article_comment` VALUES ('10', '1', '1', null, 'q', null, null, '1550752724236');
INSERT INTO `article_comment` VALUES ('11', '1', '1', null, 'w', null, null, '1550752773227');
INSERT INTO `article_comment` VALUES ('12', '1', '1', null, 'e', null, null, '1550752810355');
INSERT INTO `article_comment` VALUES ('13', '1', '1', null, 'er', null, null, '1550752814128');
INSERT INTO `article_comment` VALUES ('14', '1', '1', null, 'ert', null, null, '1550752816098');
INSERT INTO `article_comment` VALUES ('15', '1', '1', null, 'erty', null, null, '1550752827585');
INSERT INTO `article_comment` VALUES ('16', '1', '1', null, 'ertyu', null, null, '1550752831096');
INSERT INTO `article_comment` VALUES ('17', '1', '1', null, 'ertyui', null, null, '1550752832845');
INSERT INTO `article_comment` VALUES ('18', '1', '1', null, 'ertyuio', null, null, '1550752834517');
INSERT INTO `article_comment` VALUES ('19', '1', '1', '18', null, '1', '管理员', '1550755754962');
INSERT INTO `article_comment` VALUES ('20', '1', '1', '4', null, '12', 'smallsnail-wh', '1550755772374');
INSERT INTO `article_comment` VALUES ('21', '1', '1', '4', null, '1', '管理员', '1550755781596');
INSERT INTO `article_comment` VALUES ('22', '1', '1', null, '[reply]管理员[]/reply]\nqw', null, null, '1550755798078');
INSERT INTO `article_comment` VALUES ('23', '1', '1', '22', null, '1', '管理员', '1550755811897');
INSERT INTO `article_comment` VALUES ('24', '1', '1', '22', null, '1', '管理员', '1550755814981');
INSERT INTO `article_comment` VALUES ('25', '1', '1', '22', null, '1', '管理员', '1550755816981');
INSERT INTO `article_comment` VALUES ('26', '1', '1', '22', ']\nqwe', '1', '管理员', '1550756168240');
INSERT INTO `article_comment` VALUES ('27', '1', '1', '22', ']\nqwegfg', '1', '管理员', '1550756192944');
INSERT INTO `article_comment` VALUES ('28', '1', '1', '1', ']\nda', '12', 'smallsnail-wh', '1550756260315');
INSERT INTO `article_comment` VALUES ('29', '1', '1', null, '[reply]smallsnail-wh[/reply\nda', null, null, '1550756296740');
INSERT INTO `article_comment` VALUES ('30', '1', '1', null, '[reply]smallsnail-wh[/reply\ndaasdasd', null, null, '1550756310687');
INSERT INTO `article_comment` VALUES ('31', '1', '1', null, '[reply]管理员[/reply\ndasd', null, null, '1550756328237');
INSERT INTO `article_comment` VALUES ('32', '1', '12', '31', ']\neqweq', '1', '管理员', '1550756365781');
INSERT INTO `article_comment` VALUES ('33', '1', '12', '31', '\nasfasdfasfasfsa', '1', '管理员', '1550756398026');
INSERT INTO `article_comment` VALUES ('34', '1', '12', null, 'afsd', null, null, '1550756462115');
INSERT INTO `article_comment` VALUES ('35', '1', '12', null, '[reply]smallsnail-wh[/reply\nasdasd', null, null, '1550756471053');
INSERT INTO `article_comment` VALUES ('36', '1', '12', '35', '\nxczvsdafa', '12', 'smallsnail-wh', '1550756477465');
INSERT INTO `article_comment` VALUES ('37', '1', '12', '35', '你好', '12', 'smallsnail-wh', '1550756491585');
INSERT INTO `article_comment` VALUES ('38', '6', '12', null, '第1个评论', null, null, '1550800283926');
INSERT INTO `article_comment` VALUES ('39', '6', '1', null, '第2个评论', null, null, '1550800313358');
INSERT INTO `article_comment` VALUES ('40', '6', '1', '38', '\n你好', '12', 'smallsnail-wh', '1550800334410');
INSERT INTO `article_comment` VALUES ('41', '6', '1', null, '第3个评论', null, null, '1550800355883');
INSERT INTO `article_comment` VALUES ('42', '6', '1', null, '第4个评论', null, null, '1550800361537');
INSERT INTO `article_comment` VALUES ('43', '6', '1', null, '第5个评论', null, null, '1550800369294');
INSERT INTO `article_comment` VALUES ('44', '6', '1', null, '第6个评论', null, null, '1550800373280');
INSERT INTO `article_comment` VALUES ('45', '6', '1', null, '第7个评论', null, null, '1550800377563');
INSERT INTO `article_comment` VALUES ('46', '6', '1', null, '第8个评论', null, null, '1550800381678');
INSERT INTO `article_comment` VALUES ('47', '6', '1', null, '第9个评论', null, null, '1550800387683');
INSERT INTO `article_comment` VALUES ('48', '6', '1', null, '第10个评论', null, null, '1550800392581');
INSERT INTO `article_comment` VALUES ('49', '6', '1', null, '第11个评论', null, null, '1550800396595');
INSERT INTO `article_comment` VALUES ('50', '2', '1', null, 'q w', null, null, '1551020450567');
INSERT INTO `article_comment` VALUES ('51', '2', '1', '50', '\nw q', '1', '管理员', '1551020454871');
INSERT INTO `article_comment` VALUES ('52', '6', '1', '49', '\nsafsd', '1', '管理员', '1551057950433');
INSERT INTO `article_comment` VALUES ('53', '5', '1', null, 'fasdf', null, null, '1551058273958');
INSERT INTO `article_comment` VALUES ('54', '5', '12', null, '测试6', null, null, '1551148522420');
INSERT INTO `article_comment` VALUES ('55', '5', '12', null, '测试7', null, null, '1551148530357');
INSERT INTO `article_comment` VALUES ('56', '5', '12', null, '测试8', null, null, '1551148649201');
INSERT INTO `article_comment` VALUES ('57', '5', '12', null, '测试9', null, null, '1551148698584');
INSERT INTO `article_comment` VALUES ('58', '5', '12', null, '测试9', null, null, '1551148706804');
INSERT INTO `article_comment` VALUES ('59', '5', '12', null, '测试10', null, null, '1551148711639');
INSERT INTO `article_comment` VALUES ('60', '5', '12', null, '测试11', null, null, '1551149099676');
INSERT INTO `article_comment` VALUES ('61', '5', '12', null, '测试12', null, null, '1551149104644');
INSERT INTO `article_comment` VALUES ('62', '5', '12', '61', '\n测试13', '12', 'smallsnail-wh', '1551149126022');
INSERT INTO `article_comment` VALUES ('63', '5', '12', '61', '\n测试14', '12', 'smallsnail-wh', '1551149130440');
INSERT INTO `article_comment` VALUES ('64', '5', '12', '60', '\n测试15', '12', 'smallsnail-wh', '1551149134541');
INSERT INTO `article_comment` VALUES ('65', '5', '12', null, '测试13', null, null, '1551159683118');
INSERT INTO `article_comment` VALUES ('66', '5', '12', '65', '\n测试14', '12', 'smallsnail-wh', '1551159691355');
INSERT INTO `article_comment` VALUES ('67', '5', '12', '65', '\n测试15', '12', 'smallsnail-wh', '1551159699833');
INSERT INTO `article_comment` VALUES ('68', '5', '12', null, 'qwe', null, null, '1551160197584');
INSERT INTO `article_comment` VALUES ('69', '5', '12', '68', '\n测试14', '12', 'smallsnail-wh', '1551160208500');
INSERT INTO `article_comment` VALUES ('70', '13', '1', null, 'qwe', null, null, '1551282935448');

-- ----------------------------
-- Table structure for interest
-- ----------------------------
DROP TABLE IF EXISTS `interest`;
CREATE TABLE `interest` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `info` text NOT NULL COMMENT '简介',
  `content` text NOT NULL COMMENT '内容',
  `image` varchar(255) DEFAULT NULL COMMENT '图片url',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `banner` int(1) DEFAULT '0' COMMENT '是否加入轮播（0:不加入，1:加入）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='兴趣表';

-- ----------------------------
-- Records of interest
-- ----------------------------
INSERT INTO `interest` VALUES ('16', '行李险', '在国内外乘坐飞机旅途中，随身携带的和托运的行李难免会遭遇到损坏或丢失等意外情况，本产品会为您的行李提供全面的赔偿保障。', '<p>保险有效期：保险责任期间自被保险人持有效车票上车时开始,至到达所持车票目的地下车时止。\n保险责任：在保险期间内，被保险人乘坐客运交通工具时，由于客运交通工具遭受暴雨、雷电等自然灾害以及客运交通工具遭受火灾、爆炸、碰撞、倾覆或被盗窃、抢劫、哄抢,行李丢失原因造成保险标的直接损失，保险人按照保险合同的约定负责赔偿。（除外责任见条款）。</p>', 'http://127.0.0.1:8080/interest/interest/20190417/47299d2b-2eea-4cf2-8908-5bdd37c1c37c.jpeg', '0', '1');
INSERT INTO `interest` VALUES ('17', '亲子险', '保护家庭安全，一份保险，一份安心', '<p>亲子险</p>', 'http://127.0.0.1:8080/interest/interest/20190417/20b3b1b6-bb31-4f23-895a-7d485627898e.jpeg', '0', '1');
INSERT INTO `interest` VALUES ('18', '准时险', '一份准时险，担心不在有', '<p>准时险</p>', 'http://127.0.0.1:8080/interest/interest/20190417/644bbd2c-59b8-44e2-bde2-95db64479f23.jpeg', '0', '1');
INSERT INTO `interest` VALUES ('19', '人身安全险', '针对意外情况，保护您的健康', '<p>..人身安全险</p>', 'http://127.0.0.1:8080/interest/interest/20190417/57499d41-87ce-4921-93e3-54408f10d048.jpeg', '0', '1');
INSERT INTO `interest` VALUES ('20', '公司简介', '公司简介', '<p>公司历史</p><p>联系方式</p>', 'http://127.0.0.1:8080/interest/interest/20190417/71dace84-7cf8-4390-a2e5-e8a8909c432b.jpeg', '0', '1');

-- ----------------------------
-- Table structure for msg_records
-- ----------------------------
DROP TABLE IF EXISTS `msg_records`;
CREATE TABLE `msg_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `ownerid` int(11) NOT NULL COMMENT '帖子所有者id',
  `form` int(1) DEFAULT NULL COMMENT '消息类型（0：兴趣回帖，1：文章评论/回复）',
  `reply_card_id` int(10) DEFAULT NULL COMMENT '帖子回复id（form=0有效）',
  `comment_id` int(11) DEFAULT NULL COMMENT '文章评论id（form=1有效）',
  `replytime` varchar(255) DEFAULT NULL COMMENT '回复时间',
  `isread` int(1) DEFAULT '0' COMMENT '是否已读(0:未读，1:已读)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COMMENT='消息记录表';

-- ----------------------------
-- Records of msg_records
-- ----------------------------
INSERT INTO `msg_records` VALUES ('49', '1', '0', '55', null, '1551148276278', '1');
INSERT INTO `msg_records` VALUES ('50', '1', '0', '56', null, '1551148282467', '1');
INSERT INTO `msg_records` VALUES ('51', '12', '0', '57', null, '1551148302655', '1');
INSERT INTO `msg_records` VALUES ('52', '12', '0', '58', null, '1551148305904', '1');
INSERT INTO `msg_records` VALUES ('56', '1', '1', null, '60', '1551149099676', '1');
INSERT INTO `msg_records` VALUES ('57', '1', '1', null, '61', '1551149104644', '1');
INSERT INTO `msg_records` VALUES ('58', '12', '1', null, '62', '1551149126022', '1');
INSERT INTO `msg_records` VALUES ('59', '12', '1', null, '62', '1551149126022', '1');
INSERT INTO `msg_records` VALUES ('60', '12', '1', null, '63', '1551149130440', '1');
INSERT INTO `msg_records` VALUES ('61', '12', '1', null, '63', '1551149130440', '1');
INSERT INTO `msg_records` VALUES ('62', '12', '1', null, '64', '1551149134541', '1');
INSERT INTO `msg_records` VALUES ('63', '12', '1', null, '64', '1551149134541', '1');
INSERT INTO `msg_records` VALUES ('64', '1', '1', null, '65', '1551159683118', '1');
INSERT INTO `msg_records` VALUES ('65', '1', '1', null, '66', '1551159691355', '1');
INSERT INTO `msg_records` VALUES ('66', '12', '1', null, '66', '1551159691355', '1');
INSERT INTO `msg_records` VALUES ('67', '1', '1', null, '67', '1551159699833', '1');
INSERT INTO `msg_records` VALUES ('68', '12', '1', null, '67', '1551159699833', '1');
INSERT INTO `msg_records` VALUES ('69', '1', '1', null, '68', '1551160197584', '1');
INSERT INTO `msg_records` VALUES ('70', '1', '1', null, '69', '1551160208500', '1');
INSERT INTO `msg_records` VALUES ('71', '12', '1', null, '69', '1551160208500', '1');
INSERT INTO `msg_records` VALUES ('72', '1', '0', '59', null, '1551160244503', '1');
INSERT INTO `msg_records` VALUES ('73', '1', '1', null, '70', '1551282935448', '1');

-- ----------------------------
-- Table structure for myusers
-- ----------------------------
DROP TABLE IF EXISTS `myusers`;
CREATE TABLE `myusers` (
  `ID` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `phone` decimal(20,0) DEFAULT NULL,
  `createTime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of myusers
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_client_details
-- ----------------------------
DROP TABLE IF EXISTS `oauth_client_details`;
CREATE TABLE `oauth_client_details` (
  `client_id` varchar(255) NOT NULL,
  `resource_ids` varchar(255) DEFAULT NULL,
  `client_secret` varchar(255) DEFAULT NULL,
  `scope` varchar(255) DEFAULT NULL,
  `authorized_grant_types` varchar(255) DEFAULT NULL,
  `web_server_redirect_uri` varchar(255) DEFAULT NULL,
  `authorities` varchar(255) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additional_information` varchar(255) DEFAULT NULL,
  `autoapprove` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_client_details
-- ----------------------------
INSERT INTO `oauth_client_details` VALUES ('client', null, '{noop}secret', 'all', 'password,authorization_code,refresh_token,implicit,client_credentials', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for post_card
-- ----------------------------
DROP TABLE IF EXISTS `post_card`;
CREATE TABLE `post_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `interestid` int(11) DEFAULT NULL COMMENT '兴趣id',
  `createtime` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `replytime` varchar(255) DEFAULT NULL COMMENT '最新回复时间',
  `userid` int(11) DEFAULT NULL COMMENT '用户名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COMMENT='帖子表';

-- ----------------------------
-- Records of post_card
-- ----------------------------
INSERT INTO `post_card` VALUES ('33', '你喜欢看什么动漫？', '你喜欢看什么动漫？', '1', '1527145330752', '1551148305904', '12');
INSERT INTO `post_card` VALUES ('34', '你觉得火影忍者这部动漫怎么样？', '你觉得火影忍者这部动漫怎么样？', '1', '1527145682685', '1527210959322', null);
INSERT INTO `post_card` VALUES ('38', '汉服怎么样？', '汉服怎么样？', '2', '1527150545468', '1527150554251', null);
INSERT INTO `post_card` VALUES ('39', '123', 'eqwsadsad', '1', '1542350790861', '1542350790861', '12');
INSERT INTO `post_card` VALUES ('40', '123', 'eqwsadsad', '1', '1542350799902', '1542350799902', '12');
INSERT INTO `post_card` VALUES ('41', 'qweqw', 'eqwsadsad', '1', '1542351639169', '1542351639169', '12');
INSERT INTO `post_card` VALUES ('42', 'qweqw', 'eqwsadsad', '1', '1542351661315', '1542351661315', '12');
INSERT INTO `post_card` VALUES ('43', 'qeq', 'qweq', '1', '1542595552839', '1542619140350', '1');
INSERT INTO `post_card` VALUES ('44', 'qwe', 'qweqweqwe', '1', '1542766755374', '1551160244503', '1');
INSERT INTO `post_card` VALUES ('46', 'qw', 'qwe', '9', '1546958289758', '1546958289758', '1');
INSERT INTO `post_card` VALUES ('47', 'niahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniaho', 'niahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniahoniaho', '8', '1547019958239', '1547019958239', '1');

-- ----------------------------
-- Table structure for regis_form
-- ----------------------------
DROP TABLE IF EXISTS `regis_form`;
CREATE TABLE `regis_form` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `content` text NOT NULL COMMENT '内容',
  `createtime` varchar(255) DEFAULT NULL,
  `userid` varchar(20) DEFAULT NULL,
  `formType` varchar(50) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
  `remark` text,
  PRIMARY KEY (`id`),
  KEY `index_name` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COMMENT='email';

-- ----------------------------
-- Records of regis_form
-- ----------------------------
INSERT INTO `regis_form` VALUES ('11', '123', '123@qq.com', '123', '123', '1554787457442', '1', '', '', '拒绝赔付', null);
INSERT INTO `regis_form` VALUES ('33', '123', '123@qq.com', 're', '123', '1555407361325', '1', '0', 'http://127.0.0.1:8080/interest/interest/20190416/58af9d4f-cc8a-43ef-a639-6efda4674bb7.jpeg', '拒绝赔付', null);
INSERT INTO `regis_form` VALUES ('34', '123', '123@qq.com', '123', '123', '1555425350490', '1', '1', 'http://127.0.0.1:8080/interest/interest/20190416/fa4500db-0773-4872-bfab-fcac7b569ac0.jpeg', '拒绝赔付', null);
INSERT INTO `regis_form` VALUES ('35', 'zjy', 'zjy@qq.com', 'zjy', '123', '1555425539550', '98', '5', null, null, null);
INSERT INTO `regis_form` VALUES ('36', 'shishi', '951@qq.com', '张靖远', 'shishi', '1555474374821', '100', '3', null, null, null);
INSERT INTO `regis_form` VALUES ('37', '123', '999@qq.com', '小张', '123', '1555479339620', '100', '1', null, null, null);
INSERT INTO `regis_form` VALUES ('38', '123@qq.com', '123@qq.com', '123', '123', '1555479508324', '100', '1', null, null, null);
INSERT INTO `regis_form` VALUES ('39', '123', '123@qq.com', '123', '123', '1555479627866', '100', '1', null, null, null);
INSERT INTO `regis_form` VALUES ('40', '123', '123@qq.com', '123', '123', '1555480160861', '100', '1', null, null, null);
INSERT INTO `regis_form` VALUES ('41', '123', '123@qq.com', '123', '123', '1555480229478', '1', '1', 'http://127.0.0.1:8080/interest/interest/20190417/830714bc-72fa-46d6-8244-2697016adaae.jpeg', '拒绝赔付', null);
INSERT INTO `regis_form` VALUES ('42', '123', '123@qq.com', '123', '123', '1555481453025', '100', '1', 'http://127.0.0.1:8080/interest/interest/20190417/9a8dbb3f-2ead-4eb9-88b6-737cc7dcd408.jpeg', null, null);
INSERT INTO `regis_form` VALUES ('43', '123', 'dyh@qq.com', 'dyh', '123', '1555496273995', '1', '2', 'http://127.0.0.1:8080/interest/interest/20190417/02618101-2ec7-4d71-be8c-396ff1005aae.jpeg', '同意赔付', null);
INSERT INTO `regis_form` VALUES ('44', '123', '123@qq.com', '123', '123', '1555507583129', '1', '1', 'http://127.0.0.1:8080/interest/interest/20190417/e39563e5-1593-4481-a614-2f16f99dd3f7.jpeg', '拒绝赔付', null);

-- ----------------------------
-- Table structure for reply_card
-- ----------------------------
DROP TABLE IF EXISTS `reply_card`;
CREATE TABLE `reply_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `content` text NOT NULL COMMENT '内容',
  `postcardid` int(11) DEFAULT NULL COMMENT '帖子id',
  `createtime` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `userid` int(11) NOT NULL COMMENT '回复用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COMMENT='回帖表';

-- ----------------------------
-- Records of reply_card
-- ----------------------------
INSERT INTO `reply_card` VALUES ('32', '我喜欢看海贼王。', '33', '1527145732382', '1');
INSERT INTO `reply_card` VALUES ('40', '很好看', '38', '1527150554251', '12');
INSERT INTO `reply_card` VALUES ('41', '我喜欢漩涡鸣人。', '34', '1527210804774', '12');
INSERT INTO `reply_card` VALUES ('42', '喜欢佐助，佐助太帅了。', '34', '1527210846847', '12');
INSERT INTO `reply_card` VALUES ('43', '火影忍者打斗场面好看', '34', '1527210893468', '12');
INSERT INTO `reply_card` VALUES ('44', '喜欢这个结局，大圆满。', '34', '1527210959322', '12');
INSERT INTO `reply_card` VALUES ('45', ' 死神', '33', '1527211842627', '12');
INSERT INTO `reply_card` VALUES ('46', '一拳超人', '33', '1527217127806', '12');
INSERT INTO `reply_card` VALUES ('47', 'qweqwfasf', '33', '1542353287205', '12');
INSERT INTO `reply_card` VALUES ('48', 'qweqweqwfqw', '43', '1542595559454', '1');
INSERT INTO `reply_card` VALUES ('49', '123123', '43', '1542619140350', '1');
INSERT INTO `reply_card` VALUES ('50', 'qweqwe', '33', '1542766744184', '1');
INSERT INTO `reply_card` VALUES ('51', 'hello', '44', '1542766809112', '1');
INSERT INTO `reply_card` VALUES ('52', '123', '44', '1546916527786', '1');
INSERT INTO `reply_card` VALUES ('53', 'sadasd', '44', '1551079835982', '1');
INSERT INTO `reply_card` VALUES ('54', 'asd\n', '44', '1551080485207', '1');
INSERT INTO `reply_card` VALUES ('55', '测试1', '44', '1551148276278', '12');
INSERT INTO `reply_card` VALUES ('56', '测试2', '44', '1551148282467', '12');
INSERT INTO `reply_card` VALUES ('57', '测试3', '33', '1551148302655', '12');
INSERT INTO `reply_card` VALUES ('58', '测试4', '33', '1551148305904', '12');
INSERT INTO `reply_card` VALUES ('59', '测试15', '44', '1551160244503', '12');

-- ----------------------------
-- Table structure for r_user_role
-- ----------------------------
DROP TABLE IF EXISTS `r_user_role`;
CREATE TABLE `r_user_role` (
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户-角色关系表';

-- ----------------------------
-- Records of r_user_role
-- ----------------------------
INSERT INTO `r_user_role` VALUES ('1', '1');
INSERT INTO `r_user_role` VALUES ('100', '1');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) DEFAULT NULL COMMENT '菜单名',
  `url` varchar(255) DEFAULT NULL COMMENT 'url',
  `parent_id` int(11) DEFAULT NULL COMMENT '父类id',
  `sort` tinyint(4) DEFAULT NULL COMMENT '排序',
  `remark` text COMMENT '描述',
  `icon` varchar(30) DEFAULT NULL COMMENT '图标',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='系统菜单';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', ' ', '0', '1', null, 'md-settings');
INSERT INTO `sys_menu` VALUES ('2', '主页管理', ' ', '0', '2', null, 'logo-snapchat');
INSERT INTO `sys_menu` VALUES ('3', '保险类型管理', ' ', '0', '3', null, 'logo-reddit');
INSERT INTO `sys_menu` VALUES ('4', '用户提问管理', ' ', '0', '4', null, 'md-chatboxes');
INSERT INTO `sys_menu` VALUES ('5', '保单赔付管理', ' ', '0', '5', null, 'ios-mail');
INSERT INTO `sys_menu` VALUES ('6', '用户管理', '/base/user', '1', '1', null, 'ios-person');
INSERT INTO `sys_menu` VALUES ('7', '菜单管理', '/base/menu', '1', '2', null, 'md-list-box');
INSERT INTO `sys_menu` VALUES ('8', '角色管理', '/base/role', '1', '3', null, 'ios-people');
INSERT INTO `sys_menu` VALUES ('9', '轮播', '/base/banner', '2', '1', null, 'logo-snapchat');
INSERT INTO `sys_menu` VALUES ('10', '新建', '/base/i-create', '3', '1', null, 'md-checkmark-circle');
INSERT INTO `sys_menu` VALUES ('11', '修改', '/base/i-edit', '3', '2', null, 'md-create');
INSERT INTO `sys_menu` VALUES ('12', '删除', '/base/i-delete', '3', '3', null, 'md-remove-circle');
INSERT INTO `sys_menu` VALUES ('13', '用户提问管理', '/base/card', '4', '1', null, 'ios-create-outline');
INSERT INTO `sys_menu` VALUES ('14', '用户保单', '/base/email', '5', '1', null, 'ios-mail');
INSERT INTO `sys_menu` VALUES ('15', '侧边栏管理', null, '0', '6', null, 'md-paper');
INSERT INTO `sys_menu` VALUES ('16', '侧边栏', '/base/article', '15', '1', null, 'md-paper');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `role` varchar(50) NOT NULL COMMENT '角色',
  `name` varchar(50) DEFAULT NULL COMMENT '角色名',
  `modules` text COMMENT '权限',
  `describe` text COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', 'ROLE_ADMIN', '超级管理员', '4;5;6;7;8;9;10;11;14;1;12;13;16;', '超级管理员，拥有全部权限。');
INSERT INTO `sys_role` VALUES ('2', 'user', '普通用户', '14;10;5;1;2;3;4;6;7;8;9;11;12;13;16;', null);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) DEFAULT NULL COMMENT '用户名',
  `login_name` varchar(50) DEFAULT NULL COMMENT '登录名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `usertype` int(1) NOT NULL DEFAULT '0' COMMENT '用户类型（0:普通用户，1:管理员）',
  `headimg` varchar(255) DEFAULT NULL COMMENT '头像url',
  `url` varchar(255) DEFAULT NULL COMMENT 'GitHub主页',
  `create_time` varchar(255) DEFAULT NULL COMMENT '注册时间',
  `githubid` varchar(255) DEFAULT NULL COMMENT 'github的login',
  `qqid` varchar(255) DEFAULT NULL COMMENT 'qq的openid',
  PRIMARY KEY (`id`),
  UNIQUE KEY `githubid_UNIQUE` (`githubid`),
  UNIQUE KEY `login_name_UNIQUE` (`login_name`),
  UNIQUE KEY `qqid_UNIQUE` (`qqid`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '管理员', 'admin', '{bcrypt}$2a$10$D8E4cuanLviCCe/ASqBC7OZ84JYOH8IT4/y4JLAV/Pm/AdhzPcy2.', '123456@qq.com', '1', 'http://127.0.0.1:8080/interest/interest/head/20190417/f2fe460d-6a30-4b74-bb73-be14ef02cb33.jpeg', 'zz', '1531704654140', null, null);
INSERT INTO `sys_user` VALUES ('12', 'smallsnail-wh', 'qwe', '{bcrypt}$2a$10$D8E4cuanLviCCe/ASqBC7OZ84JYOH8IT4/y4JLAV/Pm/AdhzPcy2.', 'null', '0', 'https://avatars2.githubusercontent.com/u/30545965?v=4', 'https://github.com/smallsnail-wh', '1542463692126', 'smallsnail-wh', null);
INSERT INTO `sys_user` VALUES ('13', '树根', null, null, null, '0', 'http://thirdqq.qlogo.cn/qqapp/101512648/1C47A2C639D3A89E573AC2BF46FBEF63/40', null, '1542463259014', null, '1C47A2C639D3A89E573AC2BF46FBEF63');
INSERT INTO `sys_user` VALUES ('97', '123', 'dyh', '{bcrypt}$2a$10$QcmG1xYOnC2Im9eCWQxYhe1q4Lgn3Hlv56UBdQnkF6sktrcK2shPO', '123@qq.com', '0', null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('98', '123', 'zjy1', '{bcrypt}$2a$10$JzsY9PAvqvUd/Dry/SgB6.qqqe2YlOG2bzuEnRfvx.ISDIZw5uBOe', '123@qq.com', '0', null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('99', '123', 'zwq', '{bcrypt}$2a$10$vI9CCaIJi3m6Rl/YBSxh3.ZCUMbgK3jlAXvn8IRWwHG8QYw34F2GK', '123@qq.com', '0', null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('100', 'zjy', 'zjy', '{bcrypt}$2a$10$lorjkkKSnOdcDBZdgpQk7.7Qdqm4A7yEnbLt6EMW8q4uHho/YGMz.', 'zjy@qq.com', '0', null, null, null, null, null);

-- ----------------------------
-- Table structure for sys_user_detail
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_detail`;
CREATE TABLE `sys_user_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `userid` int(11) NOT NULL COMMENT '用户id',
  `article_sign` int(1) DEFAULT '0' COMMENT '文章标志为（0:可发布文章，1:不可发布文章）',
  `info` varchar(255) DEFAULT NULL COMMENT '个人简介',
  `location` varchar(255) DEFAULT NULL COMMENT '所在位置',
  `skill` varchar(255) DEFAULT NULL COMMENT '技能',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='用户详情表';

-- ----------------------------
-- Records of sys_user_detail
-- ----------------------------
INSERT INTO `sys_user_detail` VALUES ('3', '1', '1', 'my name is。', '', '');
INSERT INTO `sys_user_detail` VALUES ('4', '12', '0', null, null, null);
INSERT INTO `sys_user_detail` VALUES ('5', '13', '0', null, null, null);

-- ----------------------------
-- Table structure for user_github
-- ----------------------------
DROP TABLE IF EXISTS `user_github`;
CREATE TABLE `user_github` (
  `login` varchar(255) NOT NULL COMMENT 'github用户名',
  `avatar_url` varchar(255) DEFAULT NULL COMMENT '头像url',
  `html_url` varchar(255) DEFAULT NULL COMMENT 'github主页',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `userid` int(11) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='github用户';

-- ----------------------------
-- Records of user_github
-- ----------------------------
INSERT INTO `user_github` VALUES ('smallsnail-wh', 'https://avatars2.githubusercontent.com/u/30545965?v=4', 'https://github.com/smallsnail-wh', 'null', '12');

-- ----------------------------
-- Table structure for user_qq
-- ----------------------------
DROP TABLE IF EXISTS `user_qq`;
CREATE TABLE `user_qq` (
  `openid` varchar(255) NOT NULL COMMENT 'openid',
  `nickname` varchar(255) DEFAULT NULL COMMENT '用户名',
  `figureurl_qq_1` varchar(255) DEFAULT NULL COMMENT '头像url',
  `gender` varchar(255) DEFAULT NULL COMMENT '性别',
  `userid` int(11) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`openid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='qq用户';

-- ----------------------------
-- Records of user_qq
-- ----------------------------
INSERT INTO `user_qq` VALUES ('1C47A2C639D3A89E573AC2BF46FBEF63', '树根', 'http://thirdqq.qlogo.cn/qqapp/101512648/1C47A2C639D3A89E573AC2BF46FBEF63/40', '男', '13');
SET FOREIGN_KEY_CHECKS=1;
