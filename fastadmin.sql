/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : fastadmin

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-09-01 21:04:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `fa_admin`
-- ----------------------------
DROP TABLE IF EXISTS `fa_admin`;
CREATE TABLE `fa_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(30) NOT NULL DEFAULT '' COMMENT '密码盐',
  `avatar` varchar(100) NOT NULL DEFAULT '' COMMENT '头像',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `loginfailure` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '失败次数',
  `logintime` int(10) DEFAULT NULL COMMENT '登录时间',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `token` varchar(59) NOT NULL DEFAULT '' COMMENT 'Session标识',
  `status` varchar(30) NOT NULL DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='管理员表';

-- ----------------------------
-- Records of fa_admin
-- ----------------------------
INSERT INTO `fa_admin` VALUES ('1', 'admin', 'Admin', '95a8b7e3780dcbccba0805f64423ad51', 'aaae75', '/assets/img/avatar.png', 'admin@admin.com', '0', '1567325257', '1492186163', '1567325257', 'db25691f-0ed7-44bd-ac6b-8f7a56aa7c2d', 'normal');

-- ----------------------------
-- Table structure for `fa_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `fa_admin_log`;
CREATE TABLE `fa_admin_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `username` varchar(30) NOT NULL DEFAULT '' COMMENT '管理员名字',
  `url` varchar(1500) NOT NULL DEFAULT '' COMMENT '操作页面',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '日志标题',
  `content` text NOT NULL COMMENT '内容',
  `ip` varchar(50) NOT NULL DEFAULT '' COMMENT 'IP',
  `useragent` varchar(255) NOT NULL DEFAULT '' COMMENT 'User-Agent',
  `createtime` int(10) DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `name` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='管理员日志表';

-- ----------------------------
-- Records of fa_admin_log
-- ----------------------------
INSERT INTO `fa_admin_log` VALUES ('1', '1', 'admin', '/fast/public/index.php/admin/index/login', '登录', '{\"__token__\":\"70d501240d50b8fd00ef11b50c4999d7\",\"username\":\"admin\",\"captcha\":\"wxkp\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567128592');
INSERT INTO `fa_admin_log` VALUES ('2', '1', 'admin', '/admin/index/login?url=%2Fadmin', '登录', '{\"url\":\"\\/admin\",\"__token__\":\"f2033b7254af0d96555aad018cf7246a\",\"username\":\"admin\",\"captcha\":\"dun7\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567138209');
INSERT INTO `fa_admin_log` VALUES ('3', '1', 'admin', '/admin/auth/rule/add?dialog=1', '权限管理 菜单规则 添加', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"dashboard\",\"title\":\"\\u7f51\\u7ad9\\u5bfc\\u822a\\u680f\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"}}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567140623');
INSERT INTO `fa_admin_log` VALUES ('4', '1', 'admin', '/admin/auth/rule/add?dialog=1', '权限管理 菜单规则 添加', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"dashboards\",\"title\":\"\\u7f51\\u7ad9\\u5bfc\\u822a\\u680f\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"}}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567140635');
INSERT INTO `fa_admin_log` VALUES ('5', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567140636');
INSERT INTO `fa_admin_log` VALUES ('6', '1', 'admin', '/admin/auth/rule/edit/ids/85?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"netsite\",\"title\":\"\\u7f51\\u7ad9\\u5bfc\\u822a\\u680f\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"85\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567143166');
INSERT INTO `fa_admin_log` VALUES ('7', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567143166');
INSERT INTO `fa_admin_log` VALUES ('8', '1', 'admin', '/admin/netsite/add_info', '', '{\"parent_id\":\"0\",\"name\":\"\\u89e3\\u51b3\\u65b9\\u6848\",\"url\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567145608');
INSERT INTO `fa_admin_log` VALUES ('9', '1', 'admin', '/admin/netsite/add_info', '', '{\"parent_id\":\"0\",\"name\":\"\\u4ea7\\u54c1\\u670d\\u52a1\",\"url\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567145656');
INSERT INTO `fa_admin_log` VALUES ('10', '1', 'admin', '/admin/netsite/add_info', '', '{\"parent_id\":\"2\",\"name\":\"\\u4ea7\\u54c1\\u670d\\u52a11\",\"url\":\"product\\/plan\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567145719');
INSERT INTO `fa_admin_log` VALUES ('11', '1', 'admin', '/admin/netsite/add_info', '', '{\"parent_id\":\"2\",\"name\":\"\\u4ea7\\u54c1\\u670d\\u52a12\",\"url\":\"product\\/plan1\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567145881');
INSERT INTO `fa_admin_log` VALUES ('12', '1', 'admin', '/admin/netsite/add_info', '', '{\"parent_id\":\"0\",\"name\":\"\\u4ea7\\u54c1\\u670d\\u52a13\",\"url\":\"product\\/plan2\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567145912');
INSERT INTO `fa_admin_log` VALUES ('13', '1', 'admin', '/admin/netsite/add_info', '', '{\"parent_id\":\"0\",\"name\":\"\\u4ea7\\u54c1\\u670d\\u52a14\",\"url\":\"product\\/plan3\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567145936');
INSERT INTO `fa_admin_log` VALUES ('14', '1', 'admin', '/admin/netsite/add_info', '', '{\"parent_id\":\"0\",\"name\":\"\\u5f00\\u53d1\\u670d\\u52a1\",\"url\":\"develop\\/develop\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567145997');
INSERT INTO `fa_admin_log` VALUES ('15', '1', 'admin', '/admin/netsite/add_info', '', '{\"parent_id\":\"0\",\"name\":\"\\u6848\\u4f8b\\u4e2d\\u5fc3\",\"url\":\"example\\/examplecenter\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567146042');
INSERT INTO `fa_admin_log` VALUES ('16', '1', 'admin', '/admin/netsite/add_info', '', '{\"parent_id\":\"0\",\"name\":\"\\u5173\\u4e8e\\u6211\\u4eec\",\"url\":\"about\\/aboutus\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567146079');
INSERT INTO `fa_admin_log` VALUES ('17', '1', 'admin', '/admin/netsite/add_info', '', '{\"parent_id\":\"0\",\"name\":\"\\u8054\\u7cfb\\u65b9\\u5f0f\",\"url\":\"contact\\/contant\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567146100');
INSERT INTO `fa_admin_log` VALUES ('18', '1', 'admin', '/admin/index/login?url=%2Fadmin', '登录', '{\"url\":\"\\/admin\",\"__token__\":\"9eed765e575c9ce4f36b8b55b230866e\",\"username\":\"admin\",\"captcha\":\"n6up\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567151171');
INSERT INTO `fa_admin_log` VALUES ('19', '1', 'admin', '/admin/netsite/add_info', '', '{\"parent_id\":\"0\",\"name\":\"\\u8054\\u7cfb\\u65b9\\u5f0f1\",\"url\":\"\\/index\\/contact\\/contant\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567153558');
INSERT INTO `fa_admin_log` VALUES ('20', '1', 'admin', '/admin/netsite/add_info', '', '{\"parent_id\":\"0\",\"name\":\"\\u8054\\u7cfb\\u65b9\\u5f0f122\",\"url\":\"\\/index\\/contact\\/contant\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567153843');
INSERT INTO `fa_admin_log` VALUES ('21', '1', 'admin', '/admin/netsite/edit', '', '{\"parent_id\":\"0\",\"name\":\"\\u8054\\u7cfb\\u65b9\\u5f0f122\\u6253\\u8c46\\u8c46\",\"url\":\"\\/index\\/contact\\/contant\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567153900');
INSERT INTO `fa_admin_log` VALUES ('22', '1', 'admin', '/admin/netsite/edit', '', '{\"parent_id\":\"0\",\"name\":\"\\u8054\\u7cfb\\u65b9\\u5f0f122222\",\"url\":\"\\/index\\/contact\\/contant\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567153909');
INSERT INTO `fa_admin_log` VALUES ('23', '1', 'admin', '/admin/netsite/edit', '', '{\"parent_id\":\"0\",\"name\":\"\\u8054\\u7cfb\\u65b9\\u5f0f122111\",\"url\":\"\\/index\\/contact\\/contant\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567153941');
INSERT INTO `fa_admin_log` VALUES ('24', '1', 'admin', '/admin/netsite/edit', '', '{\"parent_id\":\"0\",\"name\":\"\\u8054\\u7cfb\\u65b9\\u5f0f122111\",\"url\":\"\\/index\\/contact\\/contant\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567153947');
INSERT INTO `fa_admin_log` VALUES ('25', '1', 'admin', '/admin/netsite/edit', '', '{\"parent_id\":\"0\",\"name\":\"\\u8054\\u7cfb\\u65b9\\u5f0f122111\",\"url\":\"\\/index\\/contact\\/contant\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567153987');
INSERT INTO `fa_admin_log` VALUES ('26', '1', 'admin', '/admin/netsite/edit', '', '{\"parent_id\":\"0\",\"name\":\"\\u8054\\u7cfb\\u65b9\\u5f0f122111\",\"url\":\"\\/index\\/contact\\/contant\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567153992');
INSERT INTO `fa_admin_log` VALUES ('27', '1', 'admin', '/admin/netsite/edit', '', '{\"parent_id\":\"0\",\"name\":\"\\u8054\\u7cfb\\u65b9\\u5f0f122\",\"url\":\"\\/index\\/contact\\/contant\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567154018');
INSERT INTO `fa_admin_log` VALUES ('28', '1', 'admin', '/admin/netsite/edit/ids/12?dialog=1', '', '{\"dialog\":\"1\",\"parent_id\":\"0\",\"name\":\"\\u8054\\u7cfb\\u65b9\\u5f0f12211\",\"url\":\"\\/index\\/contact\\/contant\",\"ids\":\"12\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567154100');
INSERT INTO `fa_admin_log` VALUES ('29', '1', 'admin', '/admin/netsite/edit/ids/12?dialog=1', '', '{\"dialog\":\"1\",\"parent_id\":\"0\",\"name\":\"\\u8054\\u7cfb\\u65b9\\u5f0f122111\",\"url\":\"\\/index\\/contact\\/contant\",\"ids\":\"12\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567154248');
INSERT INTO `fa_admin_log` VALUES ('30', '1', 'admin', '/admin/netsite/edit/ids/12?dialog=1', '', '{\"dialog\":\"1\",\"parent_id\":\"0\",\"name\":\"\\u8054\\u7cfb\\u65b9\\u5f0f122111\",\"url\":\"\\/index\\/contact\\/contant\",\"ids\":\"12\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567154286');
INSERT INTO `fa_admin_log` VALUES ('31', '1', 'admin', '/admin/netsite/edit/ids/12?dialog=1', '', '{\"dialog\":\"1\",\"parent_id\":\"0\",\"name\":\"\\u8054\\u7cfb\\u65b9\\u5f0f1221\",\"url\":\"\\/index\\/contact\\/contant\",\"ids\":\"12\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567154509');
INSERT INTO `fa_admin_log` VALUES ('32', '1', 'admin', '/admin/netsite/del/ids/12', '', '{\"action\":\"del\",\"ids\":\"12\",\"params\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567154702');
INSERT INTO `fa_admin_log` VALUES ('33', '1', 'admin', '/admin/netsite/del/ids/11', '', '{\"action\":\"del\",\"ids\":\"11\",\"params\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567154707');
INSERT INTO `fa_admin_log` VALUES ('34', '1', 'admin', '/admin/netsite/add_info', '', '{\"parent_id\":\"0\",\"name\":\"\\u8bd5\\u8bd5\",\"url\":\"\\u7535\\u52a8\\u54e6\\u54e6\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567154801');
INSERT INTO `fa_admin_log` VALUES ('35', '1', 'admin', '/admin/netsite/add_info', '', '{\"parent_id\":\"0\",\"name\":\"dfdf \",\"url\":\"sdfdf\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567154809');
INSERT INTO `fa_admin_log` VALUES ('36', '1', 'admin', '/admin/netsite/del/ids/13,14', '', '{\"action\":\"del\",\"ids\":\"13,14\",\"params\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567154815');
INSERT INTO `fa_admin_log` VALUES ('37', '1', 'admin', '/admin/netsite/del/ids/14', '', '{\"action\":\"del\",\"ids\":\"14\",\"params\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567154825');
INSERT INTO `fa_admin_log` VALUES ('38', '1', 'admin', '/admin/netsite/add_info', '', '{\"parent_id\":\"0\",\"name\":\"ss\",\"url\":\"xxx\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567154870');
INSERT INTO `fa_admin_log` VALUES ('39', '1', 'admin', '/admin/netsite/add_info', '', '{\"parent_id\":\"0\",\"name\":\"aaa\",\"url\":\"sss\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567154877');
INSERT INTO `fa_admin_log` VALUES ('40', '1', 'admin', '/admin/netsite/del/ids/15,16', '', '{\"action\":\"del\",\"ids\":\"15,16\",\"params\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567154881');
INSERT INTO `fa_admin_log` VALUES ('41', '1', 'admin', '/admin/auth/rule/add?dialog=1', '权限管理 菜单规则 添加', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"Contact\",\"title\":\"\\u8054\\u7cfb\\u65b9\\u5f0f\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"}}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567155179');
INSERT INTO `fa_admin_log` VALUES ('42', '1', 'admin', '/admin/auth/rule/add?dialog=1', '权限管理 菜单规则 添加', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"contact\",\"title\":\"\\u8054\\u7cfb\\u65b9\\u5f0f\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"}}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567155185');
INSERT INTO `fa_admin_log` VALUES ('43', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567155186');
INSERT INTO `fa_admin_log` VALUES ('44', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"index.png\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567156299');
INSERT INTO `fa_admin_log` VALUES ('45', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"index.png\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567157915');
INSERT INTO `fa_admin_log` VALUES ('46', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"\\u5d07\\u5dde\\u62a5\\u4ef7.jpg\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567158259');
INSERT INTO `fa_admin_log` VALUES ('47', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"index.png\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567158717');
INSERT INTO `fa_admin_log` VALUES ('48', '1', 'admin', '/admin/contact/add_info', '', '{\"tel\":\"12222222222222\",\"telphone\":\"\\u5509\\u5509\\u5509\",\"email\":\"\\u963f\\u65af\\u987f\\u53d1\\u9001\\u5230\",\"qr_code\":\"\\/uploads\\/20190830\\/c0d93f672dda47a615ae01798c4a0d55.png\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567158719');
INSERT INTO `fa_admin_log` VALUES ('49', '1', 'admin', '/admin/contact/add_info', '', '{\"tel\":\"18382426150\",\"telphone\":\"\\u5509\\u5509\\u5509\",\"email\":\"\\u963f\\u65af\\u987f\\u53d1\\u9001\\u5230\",\"qr_code\":\"\\/uploads\\/20190830\\/c0d93f672dda47a615ae01798c4a0d55.png\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567158728');
INSERT INTO `fa_admin_log` VALUES ('50', '1', 'admin', '/admin/contact/add_info', '', '{\"tel\":\"18382426150\",\"telphone\":\"\\u5509\\u5509\\u5509\",\"email\":\"\\u963f\\u65af\\u987f\\u53d1\\u9001\\u5230\",\"qr_code\":\"\\/uploads\\/20190830\\/c0d93f672dda47a615ae01798c4a0d55.png\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567158750');
INSERT INTO `fa_admin_log` VALUES ('51', '1', 'admin', '/admin/contact/add_info', '', '{\"tel\":\"18382426150\",\"telphone\":\"\\u5509\\u5509\\u5509\",\"email\":\"\\u963f\\u65af\\u987f\\u53d1\\u9001\\u5230\",\"qr_code\":\"\\/uploads\\/20190830\\/c0d93f672dda47a615ae01798c4a0d55.png\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567158752');
INSERT INTO `fa_admin_log` VALUES ('52', '1', 'admin', '/admin/contact/add_info', '', '{\"tel\":\"18382426150\",\"telphone\":\"\\u5509\\u5509\\u5509\",\"email\":\"\\u963f\\u65af\\u987f\\u53d1\\u9001\\u5230\",\"qr_code\":\"\\/uploads\\/20190830\\/c0d93f672dda47a615ae01798c4a0d55.png\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567158753');
INSERT INTO `fa_admin_log` VALUES ('53', '1', 'admin', '/admin/contact/add_info', '', '{\"tel\":\"18382426150\",\"telphone\":\"\\u5509\\u5509\\u5509\",\"email\":\"\\u963f\\u65af\\u987f\\u53d1\\u9001\\u5230\",\"qr_code\":\"\\/uploads\\/20190830\\/c0d93f672dda47a615ae01798c4a0d55.png\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567158778');
INSERT INTO `fa_admin_log` VALUES ('54', '1', 'admin', '/admin/contact/add_info', '', '{\"tel\":\"18382426150\",\"telphone\":\"\\u5509\\u5509\\u5509\",\"email\":\"\\u963f\\u65af\\u987f\\u53d1\\u9001\\u5230\",\"qr_code\":\"\\/uploads\\/20190830\\/c0d93f672dda47a615ae01798c4a0d55.png\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567158941');
INSERT INTO `fa_admin_log` VALUES ('55', '1', 'admin', '/admin/contact/add_info', '', '{\"tel\":\"18382426150\",\"telphone\":\"\\u5509\\u5509\\u5509\",\"email\":\"794863612qqq\",\"qr_code\":\"\\/uploads\\/20190830\\/c0d93f672dda47a615ae01798c4a0d55.png\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567158951');
INSERT INTO `fa_admin_log` VALUES ('56', '1', 'admin', '/admin/contact/add_info', '', '{\"tel\":\"18382426150\",\"telphone\":\"\\u5509\\u5509\\u5509\",\"email\":\"794863612@qq.com\",\"qr_code\":\"\\/uploads\\/20190830\\/c0d93f672dda47a615ae01798c4a0d55.png\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '1567158958');
INSERT INTO `fa_admin_log` VALUES ('57', '1', 'admin', '/admin/index/login?url=%2Fadmin', '登录', '{\"url\":\"\\/admin\",\"__token__\":\"4d3daee426f5dad94f79db93715b4fed\",\"username\":\"admin\",\"captcha\":\"yd3u\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567169314');
INSERT INTO `fa_admin_log` VALUES ('58', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"u=222247294,2919493301&amp;fm=26&amp;gp=0.jpg\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567172036');
INSERT INTO `fa_admin_log` VALUES ('59', '1', 'admin', '/admin/user/user/edit/ids/1?dialog=1', '会员管理 会员管理 编辑', '{\"dialog\":\"1\",\"row\":{\"group_id\":\"1\",\"username\":\"admin\",\"nickname\":\"admin\",\"password\":\"\",\"email\":\"admin@163.com\",\"mobile\":\"13888888888\",\"avatar\":\"\\/uploads\\/20190830\\/ce839c86bf5954157802cdee442285ec.jpg\",\"level\":\"0\",\"gender\":\"0\",\"birthday\":\"2017-04-15\",\"bio\":\"\",\"money\":\"0.00\",\"score\":\"0\",\"successions\":\"1\",\"maxsuccessions\":\"1\",\"prevtime\":\"2018-01-17 14:28:12\",\"logintime\":\"2018-01-17 14:46:54\",\"loginip\":\"127.0.0.1\",\"loginfailure\":\"0\",\"joinip\":\"127.0.0.1\",\"jointime\":\"2017-04-06 14:50:18\",\"status\":\"normal\"},\"ids\":\"1\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567172039');
INSERT INTO `fa_admin_log` VALUES ('60', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"gzj.png\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567172328');
INSERT INTO `fa_admin_log` VALUES ('61', '1', 'admin', '/admin/contact/edit/ids/1?dialog=1', '', '{\"dialog\":\"1\",\"tel\":\"2147483647\",\"telphone\":\"\\u5509\\u5509\\u5509\",\"email\":\"794863612@qq.com\",\"qr_code\":\"\\/uploads\\/20190830\\/65bfed4d1c51da83f97818d5c807f374.png\",\"ids\":\"1\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567172330');
INSERT INTO `fa_admin_log` VALUES ('62', '1', 'admin', '/admin/contact/edit/ids/1?dialog=1', '', '{\"dialog\":\"1\",\"tel\":\"13125692201\",\"telphone\":\"\\u5509\\u5509\\u5509\",\"email\":\"794863612@qq.com\",\"qr_code\":\"\\/uploads\\/20190830\\/65bfed4d1c51da83f97818d5c807f374.png\",\"ids\":\"1\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567172338');
INSERT INTO `fa_admin_log` VALUES ('63', '1', 'admin', '/admin/contact/del/ids/1', '', '{\"action\":\"del\",\"ids\":\"1\",\"params\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567172788');
INSERT INTO `fa_admin_log` VALUES ('64', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"u=1519175636,579560806&amp;fm=26&amp;gp=0.jpg\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567172837');
INSERT INTO `fa_admin_log` VALUES ('65', '1', 'admin', '/admin/contact/add_info', '', '{\"tel\":\"18382426150\",\"telphone\":\"028-3365891\",\"email\":\"794863612@qq.com\",\"qr_code\":\"\\/uploads\\/20190830\\/35c9ead5f7c000901cc91426a54629b1.jpg\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567172838');
INSERT INTO `fa_admin_log` VALUES ('66', '1', 'admin', '/admin/contact/del/ids/2', '', '{\"action\":\"del\",\"ids\":\"2\",\"params\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567172941');
INSERT INTO `fa_admin_log` VALUES ('67', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"\\u4e0b\\u8f7d.jpg\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567172962');
INSERT INTO `fa_admin_log` VALUES ('68', '1', 'admin', '/admin/contact/add_info', '', '{\"tel\":\"18382426150\",\"telphone\":\"028-3321456\",\"email\":\"794863612@qq.com\",\"qr_code\":\"\\/uploads\\/20190830\\/bd7a0d7ec21ddfbafdbbd5a8b65d82a3.jpg\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567172963');
INSERT INTO `fa_admin_log` VALUES ('69', '1', 'admin', '/admin/index/login?url=%2Fadmin', '登录', '{\"url\":\"\\/admin\",\"__token__\":\"5bc170065163d1b66d145e9056da42da\",\"username\":\"admin\",\"captcha\":\"webl\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567304990');
INSERT INTO `fa_admin_log` VALUES ('70', '1', 'admin', '/admin/contact/edit/ids/3?dialog=1', '', '{\"dialog\":\"1\",\"tel\":\"18382426150\",\"telphone\":\"028-3321456\",\"email\":\"794863612@qq.com\",\"address\":\"\\u6210\\u90fd\\u5e02\\u9ad8\\u65b0\\u533a\\u5929\\u7965\\u5e7f\\u573aA\\u5ea72805\",\"qr_code\":\"\\/uploads\\/20190830\\/bd7a0d7ec21ddfbafdbbd5a8b65d82a3.jpg\",\"ids\":\"3\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567305427');
INSERT INTO `fa_admin_log` VALUES ('71', '1', 'admin', '/admin/index/login?url=%2Fadmin%2Fauth%2Frule%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/admin\\/auth\\/rule?ref=addtabs\",\"__token__\":\"d74c679259525716ace8119910e1e4cc\",\"username\":\"admin\",\"captcha\":\"vmip\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567308024');
INSERT INTO `fa_admin_log` VALUES ('72', '1', 'admin', '/admin/auth/rule/add?dialog=1', '权限管理 菜单规则 添加', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"solution\",\"title\":\"\\u89e3\\u51b3\\u65b9\\u6848\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"}}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567308097');
INSERT INTO `fa_admin_log` VALUES ('73', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567308097');
INSERT INTO `fa_admin_log` VALUES ('74', '1', 'admin', '/admin/auth/rule/add?dialog=1', '权限管理 菜单规则 添加', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"cases\",\"title\":\"\\u6848\\u4f8b\\u4e2d\\u5fc3\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"}}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567309121');
INSERT INTO `fa_admin_log` VALUES ('75', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567309122');
INSERT INTO `fa_admin_log` VALUES ('76', '1', 'admin', '/admin/auth/rule/add?dialog=1', '权限管理 菜单规则 添加', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"88\",\"name\":\"cases\\/type\",\"title\":\"\\u6848\\u4f8b\\u7c7b\\u578b\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"}}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567309253');
INSERT INTO `fa_admin_log` VALUES ('77', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567309254');
INSERT INTO `fa_admin_log` VALUES ('78', '1', 'admin', '/admin/auth/rule/add?dialog=1', '权限管理 菜单规则 添加', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"88\",\"name\":\"cases\\/lists\",\"title\":\"\\u6848\\u4f8b\\u5217\\u8868\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"}}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567309300');
INSERT INTO `fa_admin_log` VALUES ('79', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567309300');
INSERT INTO `fa_admin_log` VALUES ('80', '1', 'admin', '/admin/cases/type/add?dialog=1', '', '{\"dialog\":\"1\",\"row\":{\"rules\":\"\"},\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567310889');
INSERT INTO `fa_admin_log` VALUES ('81', '1', 'admin', '/admin/cases/type/add?dialog=1', '', '{\"dialog\":\"1\",\"row\":{\"rules\":\"\"},\"name\":\"\\u5bf9\\u5bf9\\u5bf9\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567311569');
INSERT INTO `fa_admin_log` VALUES ('82', '1', 'admin', '/admin/cases/type/edit/ids/1?dialog=1', '', '{\"dialog\":\"1\",\"name\":\"\\u4f01\\u4e1a\\u5efa\\u7ad9\",\"ids\":\"1\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567312292');
INSERT INTO `fa_admin_log` VALUES ('83', '1', 'admin', '/admin/cases/type/edit/ids/1?dialog=1', '', '{\"dialog\":\"1\",\"name\":\"\\u4f01\\u4e1a\\u5efa\\u7ad91\",\"ids\":\"1\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567312305');
INSERT INTO `fa_admin_log` VALUES ('84', '1', 'admin', '/admin/cases/type/edit/ids/1?dialog=1', '', '{\"dialog\":\"1\",\"name\":\"\\u4f01\\u4e1a\\u5efa\\u7ad912\",\"ids\":\"1\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567314235');
INSERT INTO `fa_admin_log` VALUES ('85', '1', 'admin', '/admin/cases/type/add?dialog=1', '', '{\"dialog\":\"1\",\"name\":\"App\\u5f00\\u53d1\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567314546');
INSERT INTO `fa_admin_log` VALUES ('86', '1', 'admin', '/admin/cases/type/add?dialog=1', '', '{\"dialog\":\"1\",\"name\":\"App\\u5f00\\u53d1\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567314548');
INSERT INTO `fa_admin_log` VALUES ('87', '1', 'admin', '/admin/cases/type/add?dialog=1', '', '{\"dialog\":\"1\",\"name\":\"App\\u5f00\\u53d1\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567314679');
INSERT INTO `fa_admin_log` VALUES ('88', '1', 'admin', '/admin/cases/type/add?dialog=1', '', '{\"dialog\":\"1\",\"name\":\"t\\u4ed6\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567314854');
INSERT INTO `fa_admin_log` VALUES ('89', '1', 'admin', '/admin/cases/type/del/ids/1', '', '{\"action\":\"del\",\"ids\":\"1\",\"params\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567315597');
INSERT INTO `fa_admin_log` VALUES ('90', '1', 'admin', '/admin/cases/type/add?dialog=1', '', '{\"dialog\":\"1\",\"name\":\"\\u4f01\\u4e1a\\u5efa\\u7ad9\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567315608');
INSERT INTO `fa_admin_log` VALUES ('91', '1', 'admin', '/admin/cases/type/add?dialog=1', '', '{\"dialog\":\"1\",\"name\":\"App\\u5f00\\u53d1\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567315614');
INSERT INTO `fa_admin_log` VALUES ('92', '1', 'admin', '/admin/cases/type/add?dialog=1', '', '{\"dialog\":\"1\",\"name\":\"\\u5c0f\\u7a0b\\u5e8f\\u5f00\\u53d1\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567315625');
INSERT INTO `fa_admin_log` VALUES ('93', '1', 'admin', '/admin/cases/type/add?dialog=1', '', '{\"dialog\":\"1\",\"name\":\"H5\\u5f00\\u53d1\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567315636');
INSERT INTO `fa_admin_log` VALUES ('94', '1', 'admin', '/admin/cases/type/edit/ids/5?dialog=1', '', '{\"dialog\":\"1\",\"name\":\"H5\\u5f00\\u53d1666\",\"ids\":\"5\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567315647');
INSERT INTO `fa_admin_log` VALUES ('95', '1', 'admin', '/admin/cases/type/add?dialog=1', '', '{\"dialog\":\"1\",\"name\":\"\\u7f51\\u7ad9\\u4e8c\\u6b21\\u5f00\\u53d1\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567315664');
INSERT INTO `fa_admin_log` VALUES ('96', '1', 'admin', '/admin/cases/type/del/ids/6', '', '{\"action\":\"del\",\"ids\":\"6\",\"params\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567315670');
INSERT INTO `fa_admin_log` VALUES ('97', '1', 'admin', '/admin/index/login?url=%2Fadmin%2Fcases%2Flists%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/admin\\/cases\\/lists?ref=addtabs\",\"__token__\":\"32ba19ec291d4036878be9760c8faf5c\",\"username\":\"admin\",\"captcha\":\"8ask\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567321769');
INSERT INTO `fa_admin_log` VALUES ('98', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"2.jpg\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567322401');
INSERT INTO `fa_admin_log` VALUES ('99', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"2.jpg\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567322885');
INSERT INTO `fa_admin_log` VALUES ('100', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"u=1519175636,579560806&amp;fm=26&amp;gp=0.jpg\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567323006');
INSERT INTO `fa_admin_log` VALUES ('101', '1', 'admin', '/admin/index/login?url=%2Fadmin%2Fcases%2Flists%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/admin\\/cases\\/lists?ref=addtabs\",\"__token__\":\"2a75ce9a6177984830beff43b1959934\",\"username\":\"admin\",\"captcha\":\"xuel\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567323629');
INSERT INTO `fa_admin_log` VALUES ('102', '1', 'admin', '/admin/index/login', '登录', '{\"__token__\":\"477350bbd475d88188d3e6dbb40af1b3\",\"username\":\"admin\",\"captcha\":\"cysx\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567323689');
INSERT INTO `fa_admin_log` VALUES ('103', '1', 'admin', '/admin/index/login?url=%2Fadmin%2Fcases%2Flists%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/admin\\/cases\\/lists?ref=addtabs\",\"__token__\":\"b540bd5047b86803ddaf8e1298c8ad5b\",\"username\":\"admin\",\"captcha\":\"jtwq\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567323956');
INSERT INTO `fa_admin_log` VALUES ('104', '1', 'admin', '/admin/addon/install', '插件管理 安装', '{\"name\":\"simditor\",\"force\":\"0\",\"uid\":\"0\",\"token\":\"\",\"version\":\"1.0.5\",\"faversion\":\"1.0.0.20190705_beta\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567325218');
INSERT INTO `fa_admin_log` VALUES ('105', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567325219');
INSERT INTO `fa_admin_log` VALUES ('106', '1', 'admin', '/admin/index/login?url=%2Fadmin%2Faddon%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/admin\\/addon?ref=addtabs\",\"__token__\":\"a9d426148f8b87130fab8df27bc31add\",\"username\":\"admin\",\"captcha\":\"enpw\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567325258');
INSERT INTO `fa_admin_log` VALUES ('107', '1', 'admin', '/admin/addon/install', '插件管理 安装', '{\"name\":\"tinymce\",\"force\":\"0\",\"uid\":\"0\",\"token\":\"\",\"version\":\"1.0.4\",\"faversion\":\"1.0.0.20190705_beta\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567325285');
INSERT INTO `fa_admin_log` VALUES ('108', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567325286');
INSERT INTO `fa_admin_log` VALUES ('109', '1', 'admin', '/admin/addon/config?name=tinymce&dialog=1', '插件管理 配置', '{\"name\":\"tinymce\",\"dialog\":\"1\",\"row\":{\"language\":\"zh_CN\",\"plugins\":[\"autolink\",\"autosave\",\"print\",\"preview\",\"spellchecker\",\"fullscreen\",\"media\",\"emoticons\",\"template\",\"paste\",\"textcolor\"],\"toolbar\":\"1\",\"subDom\":\":button[type=submit],input[type=submit]\"}}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567325341');
INSERT INTO `fa_admin_log` VALUES ('110', '1', 'admin', '/admin/addon/state', '插件管理 禁用启用', '{\"name\":\"tinymce\",\"action\":\"disable\",\"force\":\"0\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567325666');
INSERT INTO `fa_admin_log` VALUES ('111', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567325666');
INSERT INTO `fa_admin_log` VALUES ('112', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"2.jpg\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567325778');
INSERT INTO `fa_admin_log` VALUES ('113', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"2.jpg\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567326270');
INSERT INTO `fa_admin_log` VALUES ('114', '1', 'admin', '/admin/cases/lists/add?dialog=1', '', '{\"dialog\":\"1\",\"type_id\":\"2\",\"title\":\"\\u662f\\u7684\\u51af\\u7ecd\\u5cf0\",\"img\":\"\\/uploads\\/20190901\\/f7c5f6baa51e7c12d1ae2d37d487207d.jpg\",\"article_title\":\"\\u5927\\u5e08\\u5085\",\"article_content\":\"<h1>\\u963f\\u65af\\u987f\\u53d1\\u53d1<\\/h1>\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567326277');
INSERT INTO `fa_admin_log` VALUES ('115', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"gzj.png\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567326428');
INSERT INTO `fa_admin_log` VALUES ('116', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"\\u4e0b\\u8f7d (1).jpg\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567327046');
INSERT INTO `fa_admin_log` VALUES ('117', '1', 'admin', '/admin/cases/lists/add?dialog=1', '', '{\"dialog\":\"1\",\"type_id\":\"3\",\"title\":\"\\u5927\\u8428\\u8fbe\\u6240\",\"img\":\"\\/uploads\\/20190901\\/eaad46370f56de01ba93d6c9bbc2af78.jpg\",\"article_title\":\"\\u5965\\u5fb7\\u8d5b\\u53d1\\u653e\",\"article_content\":\"<p>\\u963f\\u7684\\u8eab\\u4efdsad\\u53d1<\\/p>\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567327051');
INSERT INTO `fa_admin_log` VALUES ('118', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"u=1519175636,579560806&amp;fm=26&amp;gp=0.jpg\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567327532');
INSERT INTO `fa_admin_log` VALUES ('119', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"u=222247294,2919493301&amp;fm=26&amp;gp=0.jpg\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567328175');
INSERT INTO `fa_admin_log` VALUES ('120', '1', 'admin', '/admin/cases/lists/add?dialog=1', '', '{\"dialog\":\"1\",\"type_id\":\"3\",\"title\":\"\\u80dc\\u591a\\u8d1f\\u5c11\",\"img\":\"\\/uploads\\/20190901\\/ce839c86bf5954157802cdee442285ec.jpg\",\"article_title\":\"\\u963f\\u65af\\u8482\\u82ac\",\"article_content\":\"<p>\\u5927\\u5e08\\u5085<\\/p>\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567328179');
INSERT INTO `fa_admin_log` VALUES ('121', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"\\u4e0b\\u8f7d (1).jpg\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567328532');
INSERT INTO `fa_admin_log` VALUES ('122', '1', 'admin', '/admin/cases/lists/add?dialog=1', '', '{\"dialog\":\"1\",\"type_id\":\"4\",\"title\":\"sad\\u8303\\u5fb7\\u8428\",\"img\":\"\\/uploads\\/20190901\\/eaad46370f56de01ba93d6c9bbc2af78.jpg\",\"article_title\":\"\\u6492\\u5730\\u65b9\\u6492\",\"article_content\":\"<p>\\u7684\\u6492\\u8303\\u5fb7\\u8428\\u53d1<\\/p>\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567328535');
INSERT INTO `fa_admin_log` VALUES ('123', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"\\u4e0b\\u8f7d.jpg\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567329349');
INSERT INTO `fa_admin_log` VALUES ('124', '1', 'admin', '/admin/cases/lists/add?dialog=1', '', '{\"dialog\":\"1\",\"type_id\":\"4\",\"title\":\"\\u5927\\u4e8b\\u53d1\\u751f\",\"img\":\"\\/uploads\\/20190901\\/bd7a0d7ec21ddfbafdbbd5a8b65d82a3.jpg\",\"article_title\":\"\\u963f\\u58eb\\u5927\\u592b\\u6492\",\"article_content\":\"<p>\\u554a\\u662f\\u7684\\u8303\\u5fb7\\u8428\\u53d1\\u751f\\u5927\\u53d1\\u591a\\u5c11<\\/p>\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567329356');
INSERT INTO `fa_admin_log` VALUES ('125', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"GR0ojvDBRDMEKtbtwNv6.jpg\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567330980');
INSERT INTO `fa_admin_log` VALUES ('126', '1', 'admin', '/admin/cases/lists/add?dialog=1', '', '{\"dialog\":\"1\",\"type_id\":\"4\",\"title\":\"\\u963f\\u58eb\\u5927\\u592b\\u6492\",\"img\":\"\\/uploads\\/20190901\\/465cc49b0602bb23b13ef4529e58e136.jpg\",\"article_title\":\"\\u6492\\u5730\\u65b9\\u6492\",\"article_content\":\"<p>\\u6740\\u5bf9\\u65b9\\u8eab\\u4efd<\\/p>\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567330984');
INSERT INTO `fa_admin_log` VALUES ('127', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"u=1519175636,579560806&amp;fm=26&amp;gp=0.jpg\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567331268');
INSERT INTO `fa_admin_log` VALUES ('128', '1', 'admin', '/admin/cases/lists/edit/ids/6?dialog=1', '', '{\"dialog\":\"1\",\"type_id\":\"4\",\"title\":\"\\u963f\\u58eb\\u5927\\u592b\\u6492\",\"img\":\"\\/uploads\\/20190901\\/465cc49b0602bb23b13ef4529e58e136.jpg\",\"article_title\":\"\\u6492\\u5730\\u65b9\\u6492\",\"article_content\":\"<p>\\u6492\\u5730\\u65b9\\u6492<img alt=\\\"u=1519175636,579560806&amp;fm=26&amp;gp=0.jpg\\\" src=\\\"\\/uploads\\/20190901\\/35c9ead5f7c000901cc91426a54629b1.jpg\\\" width=\\\"500\\\" height=\\\"375\\\"><\\/p>\",\"ids\":\"6\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567331271');
INSERT INTO `fa_admin_log` VALUES ('129', '1', 'admin', '/admin/cases/lists/edit/ids/6?dialog=1', '', '{\"dialog\":\"1\",\"type_id\":\"4\",\"title\":\"\\u963f\\u58eb\\u5927\\u592b\\u6492\",\"img\":\"\\/uploads\\/20190901\\/465cc49b0602bb23b13ef4529e58e136.jpg\",\"article_title\":\"\\u6492\\u5730\\u65b9\\u6492\",\"article_content\":\"<p>\\u6492\\u5730\\u65b9\\u6492<img alt=\\\"u=1519175636,579560806&amp;fm=26&amp;gp=0.jpg\\\" src=\\\"\\/uploads\\/20190901\\/35c9ead5f7c000901cc91426a54629b1.jpg\\\" width=\\\"500\\\" height=\\\"375\\\"><\\/p>\",\"ids\":\"6\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567331276');
INSERT INTO `fa_admin_log` VALUES ('130', '1', 'admin', '/admin/cases/lists/edit/ids/6?dialog=1', '', '{\"dialog\":\"1\",\"type_id\":\"4\",\"title\":\"\\u963f\\u58eb\\u5927\\u592b\\u6492\",\"img\":\"\\/uploads\\/20190901\\/465cc49b0602bb23b13ef4529e58e136.jpg\",\"article_title\":\"\\u6492\\u5730\\u65b9\\u6492\",\"article_content\":\"<p>\\u6492\\u5730\\u65b9\\u6492<img alt=\\\"u=1519175636,579560806&amp;fm=26&amp;gp=0.jpg\\\" src=\\\"\\/uploads\\/20190901\\/35c9ead5f7c000901cc91426a54629b1.jpg\\\" width=\\\"500\\\" height=\\\"375\\\"><\\/p>\",\"ids\":\"6\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567331716');
INSERT INTO `fa_admin_log` VALUES ('131', '1', 'admin', '/admin/cases/lists/edit/ids/7?dialog=1', '', '{\"dialog\":\"1\",\"type_id\":\"4\",\"title\":\"\\u963f\\u58eb\\u5927\\u592b\\u6492ssss\",\"img\":\"\\/uploads\\/20190901\\/465cc49b0602bb23b13ef4529e58e136.jpg\",\"article_title\":\"\\u6492\\u5730\\u65b9\\u6492\",\"article_content\":\"\\u6492\\u5730\\u65b9\\u6492\",\"ids\":\"7\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567332020');
INSERT INTO `fa_admin_log` VALUES ('132', '1', 'admin', '/admin/cases/lists/edit/ids/7?dialog=1', '', '{\"dialog\":\"1\",\"type_id\":\"4\",\"title\":\"\\u963f\\u58eb\\u5927\\u592b\\u6492ssss\",\"img\":\"\\/uploads\\/20190901\\/465cc49b0602bb23b13ef4529e58e136.jpg\",\"article_title\":\"\\u6492\\u5730\\u65b9\\u6492\",\"article_content\":\"<p>\\u6492\\u5730\\u65b9\\u6492<img alt=\\\"Image\\\" src=\\\"\\/assets\\/addons\\/simditor\\/images\\/image.png\\\" width=\\\"120\\\" height=\\\"120\\\"><\\/p>\",\"ids\":\"7\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567332050');
INSERT INTO `fa_admin_log` VALUES ('133', '1', 'admin', '/admin/cases/lists/del/ids/7', '', '{\"action\":\"del\",\"ids\":\"7\",\"params\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567332214');
INSERT INTO `fa_admin_log` VALUES ('134', '1', 'admin', '/admin/cases/lists/del/ids/6', '', '{\"action\":\"del\",\"ids\":\"6\",\"params\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567332243');
INSERT INTO `fa_admin_log` VALUES ('135', '1', 'admin', '/admin/cases/lists/edit/ids/5?dialog=1', '', '{\"dialog\":\"1\",\"type_id\":\"4\",\"title\":\"\\u5927\\u4e8b\\u53d1\\u751f\",\"img\":\"\\/uploads\\/20190901\\/bd7a0d7ec21ddfbafdbbd5a8b65d82a3.jpg\",\"article_title\":\"\\u963f\\u58eb\\u5927\\u592b\\u6492\",\"article_content\":\"<p>\\u554a\\u662f\\u7684\\u8303\\u5fb7\\u8428\\u53d1\\u751f\\u5927\\u53d1\\u591a\\u5c11<img alt=\\\"Image\\\" src=\\\"\\/assets\\/addons\\/simditor\\/images\\/image.png\\\" width=\\\"120\\\" height=\\\"120\\\"><\\/p>\",\"ids\":\"5\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567333323');
INSERT INTO `fa_admin_log` VALUES ('136', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"u=1519175636,579560806&amp;fm=26&amp;gp=0.jpg\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567333338');
INSERT INTO `fa_admin_log` VALUES ('137', '1', 'admin', '/admin/cases/lists/edit/ids/5?dialog=1', '', '{\"dialog\":\"1\",\"type_id\":\"4\",\"title\":\"\\u5927\\u4e8b\\u53d1\\u751f\",\"img\":\"\\/uploads\\/20190901\\/bd7a0d7ec21ddfbafdbbd5a8b65d82a3.jpg\",\"article_title\":\"\\u963f\\u58eb\\u5927\\u592b\\u6492\",\"article_content\":\"<p>\\u554a\\u662f\\u7684\\u8303\\u5fb7\\u8428\\u53d1\\u751f\\u5927\\u53d1\\u591a\\u5c11<\\/p>\",\"ids\":\"5\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567333351');
INSERT INTO `fa_admin_log` VALUES ('138', '1', 'admin', '/admin/addon/install', '插件管理 安装', '{\"name\":\"ueditor\",\"force\":\"0\",\"uid\":\"0\",\"token\":\"\",\"version\":\"1.0.3\",\"faversion\":\"1.0.0.20190705_beta\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567333421');
INSERT INTO `fa_admin_log` VALUES ('139', '1', 'admin', '/admin/addon/state', '插件管理 禁用启用', '{\"name\":\"simditor\",\"action\":\"disable\",\"force\":\"0\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567333492');
INSERT INTO `fa_admin_log` VALUES ('140', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567333492');
INSERT INTO `fa_admin_log` VALUES ('141', '1', 'admin', '/admin/addon/state', '插件管理 禁用启用', '{\"name\":\"tinymce\",\"action\":\"enable\",\"force\":\"0\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567333495');
INSERT INTO `fa_admin_log` VALUES ('142', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567333495');
INSERT INTO `fa_admin_log` VALUES ('143', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"2.jpg\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567333513');
INSERT INTO `fa_admin_log` VALUES ('144', '1', 'admin', '/admin/cases/lists/edit/ids/5?dialog=1', '', '{\"dialog\":\"1\",\"type_id\":\"4\",\"title\":\"\\u5927\\u4e8b\\u53d1\\u751f\",\"img\":\"\\/uploads\\/20190901\\/bd7a0d7ec21ddfbafdbbd5a8b65d82a3.jpg\",\"article_title\":\"\\u963f\\u58eb\\u5927\\u592b\\u6492\",\"article_content\":\"<p><img src=\\\"\\/uploads\\/20190901\\/f7c5f6baa51e7c12d1ae2d37d487207d.jpg\\\" alt=\\\"\\\" width=\\\"535\\\" height=\\\"300\\\" \\/>\\u554a\\u662f\\u7684\\u8303\\u5fb7\\u8428\\u53d1\\u751f\\u5927\\u53d1\\u591a\\u5c11<\\/p>\",\"ids\":\"5\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567333518');
INSERT INTO `fa_admin_log` VALUES ('145', '1', 'admin', '/admin/cases/lists/edit/ids/5?dialog=1', '', '{\"dialog\":\"1\",\"type_id\":\"4\",\"title\":\"\\u5927\\u4e8b\\u53d1\\u751f\",\"img\":\"\\/uploads\\/20190901\\/bd7a0d7ec21ddfbafdbbd5a8b65d82a3.jpg\",\"article_title\":\"\\u963f\\u58eb\\u5927\\u592b\\u6492\",\"article_content\":\"<p><img src=\\\"\\/uploads\\/20190901\\/f7c5f6baa51e7c12d1ae2d37d487207d.jpg\\\" alt=\\\"\\\" width=\\\"535\\\" height=\\\"300\\\" \\/>\\u554a\\u662f\\u7684\\u8303\\u5fb7\\u8428\\u53d1\\u751f\\u5927\\u53d1\\u591a\\u5c112233333<\\/p>\",\"ids\":\"5\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567333535');
INSERT INTO `fa_admin_log` VALUES ('146', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"u=222247294,2919493301&amp;fm=26&amp;gp=0.jpg\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567342052');
INSERT INTO `fa_admin_log` VALUES ('147', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"gzj.png\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567342109');
INSERT INTO `fa_admin_log` VALUES ('148', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"u=222247294,2919493301&amp;fm=26&amp;gp=0.jpg\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567342113');
INSERT INTO `fa_admin_log` VALUES ('149', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"\\u4e0b\\u8f7d (1).jpg\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567342181');
INSERT INTO `fa_admin_log` VALUES ('150', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"bac12c0e83cc766cf2641c76a32ba92b.jpg\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567342260');
INSERT INTO `fa_admin_log` VALUES ('151', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"2.jpg\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1567342265');

-- ----------------------------
-- Table structure for `fa_attachment`
-- ----------------------------
DROP TABLE IF EXISTS `fa_attachment`;
CREATE TABLE `fa_attachment` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '物理路径',
  `imagewidth` varchar(30) NOT NULL DEFAULT '' COMMENT '宽度',
  `imageheight` varchar(30) NOT NULL DEFAULT '' COMMENT '高度',
  `imagetype` varchar(30) NOT NULL DEFAULT '' COMMENT '图片类型',
  `imageframes` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '图片帧数',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `mimetype` varchar(100) NOT NULL DEFAULT '' COMMENT 'mime类型',
  `extparam` varchar(255) NOT NULL DEFAULT '' COMMENT '透传数据',
  `createtime` int(10) DEFAULT NULL COMMENT '创建日期',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `uploadtime` int(10) DEFAULT NULL COMMENT '上传时间',
  `storage` varchar(100) NOT NULL DEFAULT 'local' COMMENT '存储位置',
  `sha1` varchar(40) NOT NULL DEFAULT '' COMMENT '文件 sha1编码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='附件表';

-- ----------------------------
-- Records of fa_attachment
-- ----------------------------
INSERT INTO `fa_attachment` VALUES ('1', '1', '0', '/assets/img/qrcode.png', '150', '150', 'png', '0', '21859', 'image/png', '', '1499681848', '1499681848', '1499681848', 'local', '17163603d0263e4838b9387ff2cd4877e8b018f6');
INSERT INTO `fa_attachment` VALUES ('2', '1', '0', '/uploads/20190830/c0d93f672dda47a615ae01798c4a0d55.png', '668', '1312', 'png', '0', '253875', 'image/png', '{\"name\":\"index.png\"}', '1567156299', '1567156299', '1567156299', 'local', 'f65f592cb5654b8a7500fcc8e724db87c2a34e1d');
INSERT INTO `fa_attachment` VALUES ('3', '1', '0', '/uploads/20190830/03d423f4ecca169f3cde9d37c9b67de8.jpg', '1080', '1440', 'jpg', '0', '108805', 'image/jpeg', '{\"name\":\"\\u5d07\\u5dde\\u62a5\\u4ef7.jpg\"}', '1567158259', '1567158259', '1567158259', 'local', '28f1852c6d8b604bf9d8034b11aead53e1db3d28');
INSERT INTO `fa_attachment` VALUES ('4', '1', '0', '/uploads/20190830/ce839c86bf5954157802cdee442285ec.jpg', '500', '624', 'jpg', '0', '49451', 'image/jpeg', '{\"name\":\"u=222247294,2919493301&amp;fm=26&amp;gp=0.jpg\"}', '1567172036', '1567172036', '1567172036', 'local', '28572fe011dd940e62cc321776b910ce3f75b1f3');
INSERT INTO `fa_attachment` VALUES ('5', '1', '0', '/uploads/20190830/65bfed4d1c51da83f97818d5c807f374.png', '250', '253', 'png', '0', '15371', 'image/png', '{\"name\":\"gzj.png\"}', '1567172328', '1567172328', '1567172327', 'local', 'a2cbd6be077e59831ec79ccca4ff7e538ff93363');
INSERT INTO `fa_attachment` VALUES ('6', '1', '0', '/uploads/20190830/35c9ead5f7c000901cc91426a54629b1.jpg', '500', '375', 'jpg', '0', '47625', 'image/jpeg', '{\"name\":\"u=1519175636,579560806&amp;fm=26&amp;gp=0.jpg\"}', '1567172837', '1567172837', '1567172836', 'local', 'ce54970686f6aa42c9a63f896ea03104b8d222c8');
INSERT INTO `fa_attachment` VALUES ('7', '1', '0', '/uploads/20190830/bd7a0d7ec21ddfbafdbbd5a8b65d82a3.jpg', '500', '333', 'jpg', '0', '21487', 'image/jpeg', '{\"name\":\"\\u4e0b\\u8f7d.jpg\"}', '1567172962', '1567172962', '1567172962', 'local', '5ac41c60d37c9c8623d45dcf69fa4c4d1a1dd3fc');
INSERT INTO `fa_attachment` VALUES ('8', '1', '0', '/uploads/20190901/f7c5f6baa51e7c12d1ae2d37d487207d.jpg', '535', '300', 'jpg', '0', '9262', 'image/jpeg', '{\"name\":\"2.jpg\"}', '1567322401', '1567322401', '1567322401', 'local', '80874e0871559cac75d8263001fee6c58c328c45');
INSERT INTO `fa_attachment` VALUES ('9', '1', '0', '/uploads/20190901/35c9ead5f7c000901cc91426a54629b1.jpg', '500', '375', 'jpg', '0', '47625', 'image/jpeg', '{\"name\":\"u=1519175636,579560806&amp;fm=26&amp;gp=0.jpg\"}', '1567323006', '1567323006', '1567323006', 'local', 'ce54970686f6aa42c9a63f896ea03104b8d222c8');
INSERT INTO `fa_attachment` VALUES ('10', '1', '0', '/uploads/20190901/65bfed4d1c51da83f97818d5c807f374.png', '250', '253', 'png', '0', '15371', 'image/png', '{\"name\":\"gzj.png\"}', '1567326428', '1567326428', '1567326428', 'local', 'a2cbd6be077e59831ec79ccca4ff7e538ff93363');
INSERT INTO `fa_attachment` VALUES ('11', '1', '0', '/uploads/20190901/eaad46370f56de01ba93d6c9bbc2af78.jpg', '500', '305', 'jpg', '0', '32116', 'image/jpeg', '{\"name\":\"\\u4e0b\\u8f7d (1).jpg\"}', '1567327046', '1567327046', '1567327046', 'local', 'fac31edbd22b05317d2e6266b176bd56af3c9759');
INSERT INTO `fa_attachment` VALUES ('12', '1', '0', '/uploads/20190901/ce839c86bf5954157802cdee442285ec.jpg', '500', '624', 'jpg', '0', '49451', 'image/jpeg', '{\"name\":\"u=222247294,2919493301&amp;fm=26&amp;gp=0.jpg\"}', '1567328175', '1567328175', '1567328175', 'local', '28572fe011dd940e62cc321776b910ce3f75b1f3');
INSERT INTO `fa_attachment` VALUES ('13', '1', '0', '/uploads/20190901/bd7a0d7ec21ddfbafdbbd5a8b65d82a3.jpg', '500', '333', 'jpg', '0', '21487', 'image/jpeg', '{\"name\":\"\\u4e0b\\u8f7d.jpg\"}', '1567329349', '1567329349', '1567329349', 'local', '5ac41c60d37c9c8623d45dcf69fa4c4d1a1dd3fc');
INSERT INTO `fa_attachment` VALUES ('14', '1', '0', '/uploads/20190901/465cc49b0602bb23b13ef4529e58e136.jpg', '1920', '768', 'jpg', '0', '65396', 'image/jpeg', '{\"name\":\"GR0ojvDBRDMEKtbtwNv6.jpg\"}', '1567330980', '1567330980', '1567330980', 'local', '48869577a8d0de1e22490a0c3934633a27339325');

-- ----------------------------
-- Table structure for `fa_auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `fa_auth_group`;
CREATE TABLE `fa_auth_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父组别',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '组名',
  `rules` text NOT NULL COMMENT '规则ID',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='分组表';

-- ----------------------------
-- Records of fa_auth_group
-- ----------------------------
INSERT INTO `fa_auth_group` VALUES ('1', '0', 'Admin group', '*', '1490883540', '149088354', 'normal');
INSERT INTO `fa_auth_group` VALUES ('2', '1', 'Second group', '13,14,16,15,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,1,9,10,11,7,6,8,2,4,5', '1490883540', '1505465692', 'normal');
INSERT INTO `fa_auth_group` VALUES ('3', '2', 'Third group', '1,4,9,10,11,13,14,15,16,17,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,5', '1490883540', '1502205322', 'normal');
INSERT INTO `fa_auth_group` VALUES ('4', '1', 'Second group 2', '1,4,13,14,15,16,17,55,56,57,58,59,60,61,62,63,64,65', '1490883540', '1502205350', 'normal');
INSERT INTO `fa_auth_group` VALUES ('5', '2', 'Third group 2', '1,2,6,7,8,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34', '1490883540', '1502205344', 'normal');

-- ----------------------------
-- Table structure for `fa_auth_group_access`
-- ----------------------------
DROP TABLE IF EXISTS `fa_auth_group_access`;
CREATE TABLE `fa_auth_group_access` (
  `uid` int(10) unsigned NOT NULL COMMENT '会员ID',
  `group_id` int(10) unsigned NOT NULL COMMENT '级别ID',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `group_id` (`group_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='权限分组表';

-- ----------------------------
-- Records of fa_auth_group_access
-- ----------------------------
INSERT INTO `fa_auth_group_access` VALUES ('1', '1');

-- ----------------------------
-- Table structure for `fa_auth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `fa_auth_rule`;
CREATE TABLE `fa_auth_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('menu','file') NOT NULL DEFAULT 'file' COMMENT 'menu为菜单,file为权限节点',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则名称',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '规则名称',
  `icon` varchar(50) NOT NULL DEFAULT '' COMMENT '图标',
  `condition` varchar(255) NOT NULL DEFAULT '' COMMENT '条件',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为菜单',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `pid` (`pid`) USING BTREE,
  KEY `weigh` (`weigh`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='节点表';

-- ----------------------------
-- Records of fa_auth_rule
-- ----------------------------
INSERT INTO `fa_auth_rule` VALUES ('1', 'file', '0', 'dashboard', 'Dashboard', 'fa fa-dashboard', '', 'Dashboard tips', '1', '1497429920', '1497429920', '143', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('2', 'file', '0', 'general', 'General', 'fa fa-cogs', '', '', '1', '1497429920', '1497430169', '137', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('3', 'file', '0', 'category', 'Category', 'fa fa-leaf', '', 'Category tips', '1', '1497429920', '1497429920', '119', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('4', 'file', '0', 'addon', 'Addon', 'fa fa-rocket', '', 'Addon tips', '1', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('5', 'file', '0', 'auth', 'Auth', 'fa fa-group', '', '', '1', '1497429920', '1497430092', '99', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('6', 'file', '2', 'general/config', 'Config', 'fa fa-cog', '', 'Config tips', '1', '1497429920', '1497430683', '60', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('7', 'file', '2', 'general/attachment', 'Attachment', 'fa fa-file-image-o', '', 'Attachment tips', '1', '1497429920', '1497430699', '53', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('8', 'file', '2', 'general/profile', 'Profile', 'fa fa-user', '', '', '1', '1497429920', '1497429920', '34', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('9', 'file', '5', 'auth/admin', 'Admin', 'fa fa-user', '', 'Admin tips', '1', '1497429920', '1497430320', '118', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('10', 'file', '5', 'auth/adminlog', 'Admin log', 'fa fa-list-alt', '', 'Admin log tips', '1', '1497429920', '1497430307', '113', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('11', 'file', '5', 'auth/group', 'Group', 'fa fa-group', '', 'Group tips', '1', '1497429920', '1497429920', '109', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('12', 'file', '5', 'auth/rule', 'Rule', 'fa fa-bars', '', 'Rule tips', '1', '1497429920', '1497430581', '104', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('13', 'file', '1', 'dashboard/index', 'View', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '136', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('14', 'file', '1', 'dashboard/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '135', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('15', 'file', '1', 'dashboard/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '133', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('16', 'file', '1', 'dashboard/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '134', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('17', 'file', '1', 'dashboard/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '132', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('18', 'file', '6', 'general/config/index', 'View', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '52', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('19', 'file', '6', 'general/config/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '51', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('20', 'file', '6', 'general/config/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '50', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('21', 'file', '6', 'general/config/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '49', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('22', 'file', '6', 'general/config/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '48', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('23', 'file', '7', 'general/attachment/index', 'View', 'fa fa-circle-o', '', 'Attachment tips', '0', '1497429920', '1497429920', '59', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('24', 'file', '7', 'general/attachment/select', 'Select attachment', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '58', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('25', 'file', '7', 'general/attachment/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '57', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('26', 'file', '7', 'general/attachment/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '56', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('27', 'file', '7', 'general/attachment/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '55', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('28', 'file', '7', 'general/attachment/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '54', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('29', 'file', '8', 'general/profile/index', 'View', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '33', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('30', 'file', '8', 'general/profile/update', 'Update profile', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '32', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('31', 'file', '8', 'general/profile/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '31', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('32', 'file', '8', 'general/profile/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '30', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('33', 'file', '8', 'general/profile/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '29', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('34', 'file', '8', 'general/profile/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '28', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('35', 'file', '3', 'category/index', 'View', 'fa fa-circle-o', '', 'Category tips', '0', '1497429920', '1497429920', '142', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('36', 'file', '3', 'category/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '141', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('37', 'file', '3', 'category/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '140', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('38', 'file', '3', 'category/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '139', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('39', 'file', '3', 'category/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '138', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('40', 'file', '9', 'auth/admin/index', 'View', 'fa fa-circle-o', '', 'Admin tips', '0', '1497429920', '1497429920', '117', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('41', 'file', '9', 'auth/admin/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '116', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('42', 'file', '9', 'auth/admin/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '115', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('43', 'file', '9', 'auth/admin/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '114', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('44', 'file', '10', 'auth/adminlog/index', 'View', 'fa fa-circle-o', '', 'Admin log tips', '0', '1497429920', '1497429920', '112', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('45', 'file', '10', 'auth/adminlog/detail', 'Detail', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '111', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('46', 'file', '10', 'auth/adminlog/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '110', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('47', 'file', '11', 'auth/group/index', 'View', 'fa fa-circle-o', '', 'Group tips', '0', '1497429920', '1497429920', '108', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('48', 'file', '11', 'auth/group/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '107', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('49', 'file', '11', 'auth/group/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '106', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('50', 'file', '11', 'auth/group/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '105', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('51', 'file', '12', 'auth/rule/index', 'View', 'fa fa-circle-o', '', 'Rule tips', '0', '1497429920', '1497429920', '103', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('52', 'file', '12', 'auth/rule/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '102', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('53', 'file', '12', 'auth/rule/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '101', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('54', 'file', '12', 'auth/rule/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '100', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('55', 'file', '4', 'addon/index', 'View', 'fa fa-circle-o', '', 'Addon tips', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('56', 'file', '4', 'addon/add', 'Add', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('57', 'file', '4', 'addon/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('58', 'file', '4', 'addon/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('59', 'file', '4', 'addon/local', 'Local install', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('60', 'file', '4', 'addon/state', 'Update state', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('61', 'file', '4', 'addon/install', 'Install', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('62', 'file', '4', 'addon/uninstall', 'Uninstall', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('63', 'file', '4', 'addon/config', 'Setting', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('64', 'file', '4', 'addon/refresh', 'Refresh', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('65', 'file', '4', 'addon/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('66', 'file', '0', 'user', 'User', 'fa fa-list', '', '', '1', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('67', 'file', '66', 'user/user', 'User', 'fa fa-user', '', '', '1', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('68', 'file', '67', 'user/user/index', 'View', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('69', 'file', '67', 'user/user/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('70', 'file', '67', 'user/user/add', 'Add', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('71', 'file', '67', 'user/user/del', 'Del', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('72', 'file', '67', 'user/user/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('73', 'file', '66', 'user/group', 'User group', 'fa fa-users', '', '', '1', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('74', 'file', '73', 'user/group/add', 'Add', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('75', 'file', '73', 'user/group/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('76', 'file', '73', 'user/group/index', 'View', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('77', 'file', '73', 'user/group/del', 'Del', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('78', 'file', '73', 'user/group/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('79', 'file', '66', 'user/rule', 'User rule', 'fa fa-circle-o', '', '', '1', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('80', 'file', '79', 'user/rule/index', 'View', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('81', 'file', '79', 'user/rule/del', 'Del', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('82', 'file', '79', 'user/rule/add', 'Add', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('83', 'file', '79', 'user/rule/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('84', 'file', '79', 'user/rule/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('85', 'file', '0', 'netsite', '网站导航栏', 'fa fa-circle-o', '', '', '1', '1567140635', '1567143166', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('86', 'file', '0', 'contact', '联系方式', 'fa fa-circle-o', '', '', '1', '1567155185', '1567155185', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('87', 'file', '0', 'solution', '解决方案', 'fa fa-circle-o', '', '', '1', '1567308097', '1567308097', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('88', 'file', '0', 'cases', '案例中心', 'fa fa-circle-o', '', '', '1', '1567309121', '1567309121', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('89', 'file', '88', 'cases/type', '案例类型', 'fa fa-circle-o', '', '', '1', '1567309253', '1567309253', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('90', 'file', '88', 'cases/lists', '案例列表', 'fa fa-circle-o', '', '', '1', '1567309300', '1567309300', '0', 'normal');

-- ----------------------------
-- Table structure for `fa_case_lists`
-- ----------------------------
DROP TABLE IF EXISTS `fa_case_lists`;
CREATE TABLE `fa_case_lists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NOT NULL DEFAULT '0' COMMENT '类型id',
  `title` varchar(40) NOT NULL DEFAULT '' COMMENT '封面标题',
  `img` varchar(70) NOT NULL DEFAULT '' COMMENT '图片地址',
  `article_title` varchar(40) NOT NULL DEFAULT '' COMMENT '文章标题',
  `article_content` text NOT NULL COMMENT '文章内容',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '发布时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `mimetype` varchar(30) NOT NULL DEFAULT '' COMMENT '图片类型',
  PRIMARY KEY (`id`),
  KEY `type_id` (`type_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fa_case_lists
-- ----------------------------
INSERT INTO `fa_case_lists` VALUES ('1', '2', '是的冯绍峰', '/uploads/20190901/f7c5f6baa51e7c12d1ae2d37d487207d.jpg', '大师傅', '&lt;h1&gt;阿斯顿发发&lt;/h1&gt;', '0', '0', 'image/jpg');
INSERT INTO `fa_case_lists` VALUES ('2', '3', '大萨达所', '/uploads/20190901/eaad46370f56de01ba93d6c9bbc2af78.jpg', '奥德赛发放', '&lt;p&gt;阿的身份sad发&lt;/p&gt;', '0', '0', 'image/jpg');
INSERT INTO `fa_case_lists` VALUES ('3', '3', '胜多负少', '/uploads/20190901/ce839c86bf5954157802cdee442285ec.jpg', '阿斯蒂芬', '&lt;p&gt;大师傅&lt;/p&gt;', '1567328179', '0', 'image/jpg');
INSERT INTO `fa_case_lists` VALUES ('4', '4', 'sad范德萨', '/uploads/20190901/eaad46370f56de01ba93d6c9bbc2af78.jpg', '撒地方撒', '&lt;p&gt;的撒范德萨发&lt;/p&gt;', '1567328535', '0', 'image/jpg');
INSERT INTO `fa_case_lists` VALUES ('5', '4', '大事发生', '/uploads/20190901/bd7a0d7ec21ddfbafdbbd5a8b65d82a3.jpg', '阿士大夫撒', '&lt;p&gt;&lt;img src=&quot;/uploads/20190901/f7c5f6baa51e7c12d1ae2d37d487207d.jpg&quot; alt=&quot;&quot; width=&quot;535&quot; height=&quot;300&quot; /&gt;啊是的范德萨发生大发多少2233333&lt;/p&gt;', '1567329356', '1567329356', 'image/jpg');

-- ----------------------------
-- Table structure for `fa_case_type`
-- ----------------------------
DROP TABLE IF EXISTS `fa_case_type`;
CREATE TABLE `fa_case_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL DEFAULT '' COMMENT '类型名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fa_case_type
-- ----------------------------
INSERT INTO `fa_case_type` VALUES ('2', '企业建站');
INSERT INTO `fa_case_type` VALUES ('3', 'App开发');
INSERT INTO `fa_case_type` VALUES ('4', '小程序开发');
INSERT INTO `fa_case_type` VALUES ('5', 'H5开发666');

-- ----------------------------
-- Table structure for `fa_category`
-- ----------------------------
DROP TABLE IF EXISTS `fa_category`;
CREATE TABLE `fa_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '栏目类型',
  `name` varchar(30) NOT NULL DEFAULT '',
  `nickname` varchar(50) NOT NULL DEFAULT '',
  `flag` set('hot','index','recommend') NOT NULL DEFAULT '',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `diyname` varchar(30) NOT NULL DEFAULT '' COMMENT '自定义名称',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `weigh` (`weigh`,`id`) USING BTREE,
  KEY `pid` (`pid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='分类表';

-- ----------------------------
-- Records of fa_category
-- ----------------------------
INSERT INTO `fa_category` VALUES ('1', '0', 'page', '官方新闻', 'news', 'recommend', '/assets/img/qrcode.png', '', '', 'news', '1495262190', '1495262190', '1', 'normal');
INSERT INTO `fa_category` VALUES ('2', '0', 'page', '移动应用', 'mobileapp', 'hot', '/assets/img/qrcode.png', '', '', 'mobileapp', '1495262244', '1495262244', '2', 'normal');
INSERT INTO `fa_category` VALUES ('3', '2', 'page', '微信公众号', 'wechatpublic', 'index', '/assets/img/qrcode.png', '', '', 'wechatpublic', '1495262288', '1495262288', '3', 'normal');
INSERT INTO `fa_category` VALUES ('4', '2', 'page', 'Android开发', 'android', 'recommend', '/assets/img/qrcode.png', '', '', 'android', '1495262317', '1495262317', '4', 'normal');
INSERT INTO `fa_category` VALUES ('5', '0', 'page', '软件产品', 'software', 'recommend', '/assets/img/qrcode.png', '', '', 'software', '1495262336', '1499681850', '5', 'normal');
INSERT INTO `fa_category` VALUES ('6', '5', 'page', '网站建站', 'website', 'recommend', '/assets/img/qrcode.png', '', '', 'website', '1495262357', '1495262357', '6', 'normal');
INSERT INTO `fa_category` VALUES ('7', '5', 'page', '企业管理软件', 'company', 'index', '/assets/img/qrcode.png', '', '', 'company', '1495262391', '1495262391', '7', 'normal');
INSERT INTO `fa_category` VALUES ('8', '6', 'page', 'PC端', 'website-pc', 'recommend', '/assets/img/qrcode.png', '', '', 'website-pc', '1495262424', '1495262424', '8', 'normal');
INSERT INTO `fa_category` VALUES ('9', '6', 'page', '移动端', 'website-mobile', 'recommend', '/assets/img/qrcode.png', '', '', 'website-mobile', '1495262456', '1495262456', '9', 'normal');
INSERT INTO `fa_category` VALUES ('10', '7', 'page', 'CRM系统 ', 'company-crm', 'recommend', '/assets/img/qrcode.png', '', '', 'company-crm', '1495262487', '1495262487', '10', 'normal');
INSERT INTO `fa_category` VALUES ('11', '7', 'page', 'SASS平台软件', 'company-sass', 'recommend', '/assets/img/qrcode.png', '', '', 'company-sass', '1495262515', '1495262515', '11', 'normal');
INSERT INTO `fa_category` VALUES ('12', '0', 'test', '测试1', 'test1', 'recommend', '/assets/img/qrcode.png', '', '', 'test1', '1497015727', '1497015727', '12', 'normal');
INSERT INTO `fa_category` VALUES ('13', '0', 'test', '测试2', 'test2', 'recommend', '/assets/img/qrcode.png', '', '', 'test2', '1497015738', '1497015738', '13', 'normal');

-- ----------------------------
-- Table structure for `fa_company_contact`
-- ----------------------------
DROP TABLE IF EXISTS `fa_company_contact`;
CREATE TABLE `fa_company_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tel` varchar(15) NOT NULL DEFAULT '0',
  `telphone` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(30) NOT NULL DEFAULT '',
  `qr_code` varchar(255) NOT NULL DEFAULT '',
  `mimetype` varchar(30) NOT NULL DEFAULT '' COMMENT '图片类型',
  `address` varchar(70) NOT NULL DEFAULT '' COMMENT '公司地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of fa_company_contact
-- ----------------------------
INSERT INTO `fa_company_contact` VALUES ('3', '18382426150', '028-3321456', '794863612@qq.com', '/uploads/20190830/bd7a0d7ec21ddfbafdbbd5a8b65d82a3.jpg', 'image/jpg', '成都市高新区天祥广场A座2805');

-- ----------------------------
-- Table structure for `fa_config`
-- ----------------------------
DROP TABLE IF EXISTS `fa_config`;
CREATE TABLE `fa_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '变量名',
  `group` varchar(30) NOT NULL DEFAULT '' COMMENT '分组',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '变量标题',
  `tip` varchar(100) NOT NULL DEFAULT '' COMMENT '变量描述',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '类型:string,text,int,bool,array,datetime,date,file',
  `value` text NOT NULL COMMENT '变量值',
  `content` text NOT NULL COMMENT '变量字典数据',
  `rule` varchar(100) NOT NULL DEFAULT '' COMMENT '验证规则',
  `extend` varchar(255) NOT NULL DEFAULT '' COMMENT '扩展属性',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统配置';

-- ----------------------------
-- Records of fa_config
-- ----------------------------
INSERT INTO `fa_config` VALUES ('1', 'name', 'basic', 'Site name', '请填写站点名称', 'string', 'FastAdmin', '', 'required', '');
INSERT INTO `fa_config` VALUES ('2', 'beian', 'basic', 'Beian', '粤ICP备15000000号-1', 'string', '', '', '', '');
INSERT INTO `fa_config` VALUES ('3', 'cdnurl', 'basic', 'Cdn url', '如果静态资源使用第三方云储存请配置该值', 'string', '', '', '', '');
INSERT INTO `fa_config` VALUES ('4', 'version', 'basic', 'Version', '如果静态资源有变动请重新配置该值', 'string', '1.0.1', '', 'required', '');
INSERT INTO `fa_config` VALUES ('5', 'timezone', 'basic', 'Timezone', '', 'string', 'Asia/Shanghai', '', 'required', '');
INSERT INTO `fa_config` VALUES ('6', 'forbiddenip', 'basic', 'Forbidden ip', '一行一条记录', 'text', '', '', '', '');
INSERT INTO `fa_config` VALUES ('7', 'languages', 'basic', 'Languages', '', 'array', '{\"backend\":\"zh-cn\",\"frontend\":\"zh-cn\"}', '', 'required', '');
INSERT INTO `fa_config` VALUES ('8', 'fixedpage', 'basic', 'Fixed page', '请尽量输入左侧菜单栏存在的链接', 'string', 'dashboard', '', 'required', '');
INSERT INTO `fa_config` VALUES ('9', 'categorytype', 'dictionary', 'Category type', '', 'array', '{\"default\":\"Default\",\"page\":\"Page\",\"article\":\"Article\",\"test\":\"Test\"}', '', '', '');
INSERT INTO `fa_config` VALUES ('10', 'configgroup', 'dictionary', 'Config group', '', 'array', '{\"basic\":\"Basic\",\"email\":\"Email\",\"dictionary\":\"Dictionary\",\"user\":\"User\",\"example\":\"Example\"}', '', '', '');
INSERT INTO `fa_config` VALUES ('11', 'mail_type', 'email', 'Mail type', '选择邮件发送方式', 'select', '1', '[\"Please select\",\"SMTP\",\"Mail\"]', '', '');
INSERT INTO `fa_config` VALUES ('12', 'mail_smtp_host', 'email', 'Mail smtp host', '错误的配置发送邮件会导致服务器超时', 'string', 'smtp.qq.com', '', '', '');
INSERT INTO `fa_config` VALUES ('13', 'mail_smtp_port', 'email', 'Mail smtp port', '(不加密默认25,SSL默认465,TLS默认587)', 'string', '465', '', '', '');
INSERT INTO `fa_config` VALUES ('14', 'mail_smtp_user', 'email', 'Mail smtp user', '（填写完整用户名）', 'string', '10000', '', '', '');
INSERT INTO `fa_config` VALUES ('15', 'mail_smtp_pass', 'email', 'Mail smtp password', '（填写您的密码）', 'string', 'password', '', '', '');
INSERT INTO `fa_config` VALUES ('16', 'mail_verify_type', 'email', 'Mail vertify type', '（SMTP验证方式[推荐SSL]）', 'select', '2', '[\"None\",\"TLS\",\"SSL\"]', '', '');
INSERT INTO `fa_config` VALUES ('17', 'mail_from', 'email', 'Mail from', '', 'string', '10000@qq.com', '', '', '');

-- ----------------------------
-- Table structure for `fa_ems`
-- ----------------------------
DROP TABLE IF EXISTS `fa_ems`;
CREATE TABLE `fa_ems` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `event` varchar(30) NOT NULL DEFAULT '' COMMENT '事件',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '邮箱',
  `code` varchar(10) NOT NULL DEFAULT '' COMMENT '验证码',
  `times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '验证次数',
  `ip` varchar(30) NOT NULL DEFAULT '' COMMENT 'IP',
  `createtime` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='邮箱验证码表';

-- ----------------------------
-- Records of fa_ems
-- ----------------------------

-- ----------------------------
-- Table structure for `fa_nav_name`
-- ----------------------------
DROP TABLE IF EXISTS `fa_nav_name`;
CREATE TABLE `fa_nav_name` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `url` varchar(60) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of fa_nav_name
-- ----------------------------
INSERT INTO `fa_nav_name` VALUES ('1', '解决方案', '', '0');
INSERT INTO `fa_nav_name` VALUES ('2', '产品服务', '', '0');
INSERT INTO `fa_nav_name` VALUES ('3', '产品服务1', '/index/product/plan', '2');
INSERT INTO `fa_nav_name` VALUES ('4', '产品服务2', '/index/product/plan1', '2');
INSERT INTO `fa_nav_name` VALUES ('5', '产品服务3', '/index/product/plan2', '2');
INSERT INTO `fa_nav_name` VALUES ('6', '产品服务4', '/index/product/plan3', '2');
INSERT INTO `fa_nav_name` VALUES ('7', '开发服务', '/index/develop/develop', '0');
INSERT INTO `fa_nav_name` VALUES ('8', '案例中心', '/index/example/examplecenter', '0');
INSERT INTO `fa_nav_name` VALUES ('9', '关于我们', '/index/about/aboutus', '0');
INSERT INTO `fa_nav_name` VALUES ('10', '联系方式', '/index/contact/contant', '0');

-- ----------------------------
-- Table structure for `fa_service_info`
-- ----------------------------
DROP TABLE IF EXISTS `fa_service_info`;
CREATE TABLE `fa_service_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nav_id` int(11) NOT NULL DEFAULT '0' COMMENT '导航id',
  `bg_img` varchar(70) NOT NULL DEFAULT '' COMMENT '背景图片',
  `bg_small_img` varchar(70) NOT NULL DEFAULT '' COMMENT '背景小图片',
  `title` varchar(30) NOT NULL DEFAULT '' COMMENT '标题',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '描述',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `content` text NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`),
  KEY `nav_id` (`nav_id`) USING BTREE,
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fa_service_info
-- ----------------------------

-- ----------------------------
-- Table structure for `fa_sms`
-- ----------------------------
DROP TABLE IF EXISTS `fa_sms`;
CREATE TABLE `fa_sms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `event` varchar(30) NOT NULL DEFAULT '' COMMENT '事件',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号',
  `code` varchar(10) NOT NULL DEFAULT '' COMMENT '验证码',
  `times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '验证次数',
  `ip` varchar(30) NOT NULL DEFAULT '' COMMENT 'IP',
  `createtime` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='短信验证码表';

-- ----------------------------
-- Records of fa_sms
-- ----------------------------

-- ----------------------------
-- Table structure for `fa_test`
-- ----------------------------
DROP TABLE IF EXISTS `fa_test`;
CREATE TABLE `fa_test` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类ID(单选)',
  `category_ids` varchar(100) NOT NULL COMMENT '分类ID(多选)',
  `week` enum('monday','tuesday','wednesday') NOT NULL COMMENT '星期(单选):monday=星期一,tuesday=星期二,wednesday=星期三',
  `flag` set('hot','index','recommend') NOT NULL DEFAULT '' COMMENT '标志(多选):hot=热门,index=首页,recommend=推荐',
  `genderdata` enum('male','female') NOT NULL DEFAULT 'male' COMMENT '性别(单选):male=男,female=女',
  `hobbydata` set('music','reading','swimming') NOT NULL COMMENT '爱好(多选):music=音乐,reading=读书,swimming=游泳',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `images` varchar(1500) NOT NULL DEFAULT '' COMMENT '图片组',
  `attachfile` varchar(100) NOT NULL DEFAULT '' COMMENT '附件',
  `keywords` varchar(100) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `city` varchar(100) NOT NULL DEFAULT '' COMMENT '省市',
  `json` varchar(255) DEFAULT NULL COMMENT '配置:key=名称,value=值',
  `price` float(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '价格',
  `views` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击',
  `startdate` date DEFAULT NULL COMMENT '开始日期',
  `activitytime` datetime DEFAULT NULL COMMENT '活动时间(datetime)',
  `year` year(4) DEFAULT NULL COMMENT '年',
  `times` time DEFAULT NULL COMMENT '时间',
  `refreshtime` int(10) DEFAULT NULL COMMENT '刷新时间(int)',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `deletetime` int(10) DEFAULT NULL COMMENT '删除时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `switch` tinyint(1) NOT NULL DEFAULT '0' COMMENT '开关',
  `status` enum('normal','hidden') NOT NULL DEFAULT 'normal' COMMENT '状态',
  `state` enum('0','1','2') NOT NULL DEFAULT '1' COMMENT '状态值:0=禁用,1=正常,2=推荐',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='测试表';

-- ----------------------------
-- Records of fa_test
-- ----------------------------
INSERT INTO `fa_test` VALUES ('1', '0', '12', '12,13', 'monday', 'hot,index', 'male', 'music,reading', '我是一篇测试文章', '<p>我是测试内容</p>', '/assets/img/avatar.png', '/assets/img/avatar.png,/assets/img/qrcode.png', '/assets/img/avatar.png', '关键字', '描述', '广西壮族自治区/百色市/平果县', '{\"a\":\"1\",\"b\":\"2\"}', '0.00', '0', '2017-07-10', '2017-07-10 18:24:45', '2017', '18:24:45', '1499682285', '1499682526', '1499682526', null, '0', '1', 'normal', '1');

-- ----------------------------
-- Table structure for `fa_user`
-- ----------------------------
DROP TABLE IF EXISTS `fa_user`;
CREATE TABLE `fa_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '组别ID',
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(30) NOT NULL DEFAULT '' COMMENT '密码盐',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `mobile` varchar(11) NOT NULL DEFAULT '' COMMENT '手机号',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '头像',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '等级',
  `gender` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '性别',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `bio` varchar(100) NOT NULL DEFAULT '' COMMENT '格言',
  `money` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '余额',
  `score` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '积分',
  `successions` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '连续登录天数',
  `maxsuccessions` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '最大连续登录天数',
  `prevtime` int(10) DEFAULT NULL COMMENT '上次登录时间',
  `logintime` int(10) DEFAULT NULL COMMENT '登录时间',
  `loginip` varchar(50) NOT NULL DEFAULT '' COMMENT '登录IP',
  `loginfailure` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '失败次数',
  `joinip` varchar(50) NOT NULL DEFAULT '' COMMENT '加入IP',
  `jointime` int(10) DEFAULT NULL COMMENT '加入时间',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `token` varchar(50) NOT NULL DEFAULT '' COMMENT 'Token',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  `verification` varchar(255) NOT NULL DEFAULT '' COMMENT '验证',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `username` (`username`) USING BTREE,
  KEY `email` (`email`) USING BTREE,
  KEY `mobile` (`mobile`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='会员表';

-- ----------------------------
-- Records of fa_user
-- ----------------------------
INSERT INTO `fa_user` VALUES ('1', '1', 'admin', 'admin', 'c13f62012fd6a8fdf06b3452a94430e5', 'rpR6Bv', 'admin@163.com', '13888888888', '/uploads/20190830/ce839c86bf5954157802cdee442285ec.jpg', '0', '0', '2017-04-15', '', '0.00', '0', '1', '1', '1516170492', '1516171614', '127.0.0.1', '0', '127.0.0.1', '1491461418', '0', '1567172039', '', 'normal', '');

-- ----------------------------
-- Table structure for `fa_user_group`
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_group`;
CREATE TABLE `fa_user_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT '' COMMENT '组名',
  `rules` text COMMENT '权限节点',
  `createtime` int(10) DEFAULT NULL COMMENT '添加时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `status` enum('normal','hidden') DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='会员组表';

-- ----------------------------
-- Records of fa_user_group
-- ----------------------------
INSERT INTO `fa_user_group` VALUES ('1', '默认组', '1,2,3,4,5,6,7,8,9,10,11,12', '1515386468', '1516168298', 'normal');

-- ----------------------------
-- Table structure for `fa_user_money_log`
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_money_log`;
CREATE TABLE `fa_user_money_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '变更余额',
  `before` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '变更前余额',
  `after` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '变更后余额',
  `memo` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='会员余额变动表';

-- ----------------------------
-- Records of fa_user_money_log
-- ----------------------------

-- ----------------------------
-- Table structure for `fa_user_rule`
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_rule`;
CREATE TABLE `fa_user_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) DEFAULT NULL COMMENT '父ID',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `title` varchar(50) DEFAULT '' COMMENT '标题',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `ismenu` tinyint(1) DEFAULT NULL COMMENT '是否菜单',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) DEFAULT '0' COMMENT '权重',
  `status` enum('normal','hidden') DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='会员规则表';

-- ----------------------------
-- Records of fa_user_rule
-- ----------------------------
INSERT INTO `fa_user_rule` VALUES ('1', '0', 'index', '前台', '', '1', '1516168079', '1516168079', '1', 'normal');
INSERT INTO `fa_user_rule` VALUES ('2', '0', 'api', 'API接口', '', '1', '1516168062', '1516168062', '2', 'normal');
INSERT INTO `fa_user_rule` VALUES ('3', '1', 'user', '会员模块', '', '1', '1515386221', '1516168103', '12', 'normal');
INSERT INTO `fa_user_rule` VALUES ('4', '2', 'user', '会员模块', '', '1', '1515386221', '1516168092', '11', 'normal');
INSERT INTO `fa_user_rule` VALUES ('5', '3', 'index/user/login', '登录', '', '0', '1515386247', '1515386247', '5', 'normal');
INSERT INTO `fa_user_rule` VALUES ('6', '3', 'index/user/register', '注册', '', '0', '1515386262', '1516015236', '7', 'normal');
INSERT INTO `fa_user_rule` VALUES ('7', '3', 'index/user/index', '会员中心', '', '0', '1516015012', '1516015012', '9', 'normal');
INSERT INTO `fa_user_rule` VALUES ('8', '3', 'index/user/profile', '个人资料', '', '0', '1516015012', '1516015012', '4', 'normal');
INSERT INTO `fa_user_rule` VALUES ('9', '4', 'api/user/login', '登录', '', '0', '1515386247', '1515386247', '6', 'normal');
INSERT INTO `fa_user_rule` VALUES ('10', '4', 'api/user/register', '注册', '', '0', '1515386262', '1516015236', '8', 'normal');
INSERT INTO `fa_user_rule` VALUES ('11', '4', 'api/user/index', '会员中心', '', '0', '1516015012', '1516015012', '10', 'normal');
INSERT INTO `fa_user_rule` VALUES ('12', '4', 'api/user/profile', '个人资料', '', '0', '1516015012', '1516015012', '3', 'normal');

-- ----------------------------
-- Table structure for `fa_user_score_log`
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_score_log`;
CREATE TABLE `fa_user_score_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `score` int(10) NOT NULL DEFAULT '0' COMMENT '变更积分',
  `before` int(10) NOT NULL DEFAULT '0' COMMENT '变更前积分',
  `after` int(10) NOT NULL DEFAULT '0' COMMENT '变更后积分',
  `memo` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='会员积分变动表';

-- ----------------------------
-- Records of fa_user_score_log
-- ----------------------------

-- ----------------------------
-- Table structure for `fa_user_token`
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_token`;
CREATE TABLE `fa_user_token` (
  `token` varchar(50) NOT NULL COMMENT 'Token',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `expiretime` int(10) DEFAULT NULL COMMENT '过期时间',
  PRIMARY KEY (`token`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='会员Token表';

-- ----------------------------
-- Records of fa_user_token
-- ----------------------------

-- ----------------------------
-- Table structure for `fa_version`
-- ----------------------------
DROP TABLE IF EXISTS `fa_version`;
CREATE TABLE `fa_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `oldversion` varchar(30) NOT NULL DEFAULT '' COMMENT '旧版本号',
  `newversion` varchar(30) NOT NULL DEFAULT '' COMMENT '新版本号',
  `packagesize` varchar(30) NOT NULL DEFAULT '' COMMENT '包大小',
  `content` varchar(500) NOT NULL DEFAULT '' COMMENT '升级内容',
  `downloadurl` varchar(255) NOT NULL DEFAULT '' COMMENT '下载地址',
  `enforce` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '强制更新',
  `createtime` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='版本表';

-- ----------------------------
-- Records of fa_version
-- ----------------------------
INSERT INTO `fa_version` VALUES ('1', '1.1.1,2', '1.2.1', '20M', '更新内容', 'https://www.fastadmin.net/download.html', '1', '1520425318', '0', '0', 'normal');
