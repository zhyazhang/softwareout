/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50731
 Source Host           : localhost:3306
 Source Schema         : softwareout

 Target Server Type    : MySQL
 Target Server Version : 50731
 File Encoding         : 65001

 Date: 27/04/2021 08:39:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_log_login
-- ----------------------------
DROP TABLE IF EXISTS `sys_log_login`;
CREATE TABLE `sys_log_login`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `login_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录名',
  `login_ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录IP',
  `login_time` datetime NULL DEFAULT NULL COMMENT '登录时间',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `device` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录设备',
  `browser_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '浏览器类型',
  `os_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作系统名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1063 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_log_login
-- ----------------------------
INSERT INTO `sys_log_login` VALUES (663, 'system', '0:0:0:0:0:0:0:1', '2019-07-21 20:07:43', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (664, 'system', '0:0:0:0:0:0:0:1', '2019-07-21 20:19:01', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (665, 'system', '0:0:0:0:0:0:0:1', '2019-07-21 20:48:43', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (666, 'system', '0:0:0:0:0:0:0:1', '2019-07-21 20:54:35', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (667, 'system', '0:0:0:0:0:0:0:1', '2019-07-21 21:02:37', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (668, 'lizong', '0:0:0:0:0:0:0:1', '2019-07-21 21:16:04', '李总', 'Windows', 'Firefox', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (669, 'system', '0:0:0:0:0:0:0:1', '2019-07-21 21:18:52', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (670, 'system', '0:0:0:0:0:0:0:1', '2019-07-21 21:19:25', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (671, 'system', '0:0:0:0:0:0:0:1', '2019-07-21 21:35:13', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (672, 'system', '0:0:0:0:0:0:0:1', '2019-07-21 21:38:01', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (673, 'system', '0:0:0:0:0:0:0:1', '2019-07-21 21:38:38', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (674, 'system', '0:0:0:0:0:0:0:1', '2019-07-21 21:38:47', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (675, 'admin', '0:0:0:0:0:0:0:1', '2019-07-21 21:39:05', 'admin', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (676, 'system', '0:0:0:0:0:0:0:1', '2019-07-21 21:45:52', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (677, 'system', '0:0:0:0:0:0:0:1', '2019-07-21 21:46:08', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (678, 'system', '0:0:0:0:0:0:0:1', '2019-07-21 21:46:20', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (679, 'system', '0:0:0:0:0:0:0:1', '2019-07-21 21:46:48', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (680, 'system', '0:0:0:0:0:0:0:1', '2019-07-21 21:48:40', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (681, 'system', '0:0:0:0:0:0:0:1', '2019-07-21 21:48:56', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (682, 'system', '0:0:0:0:0:0:0:1', '2019-07-21 21:49:04', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (683, 'system', '0:0:0:0:0:0:0:1', '2019-07-21 21:49:17', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (684, 'system', '0:0:0:0:0:0:0:1', '2019-07-21 21:49:47', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (685, 'system', '0:0:0:0:0:0:0:1', '2019-07-21 21:52:05', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (686, 'system', '0:0:0:0:0:0:0:1', '2019-07-21 21:52:39', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (687, 'system', '0:0:0:0:0:0:0:1', '2019-07-21 21:53:08', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (688, 'system', '0:0:0:0:0:0:0:1', '2019-07-21 21:53:36', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (689, 'system', '0:0:0:0:0:0:0:1', '2019-07-21 21:56:43', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (690, 'system', '0:0:0:0:0:0:0:1', '2019-07-21 21:57:29', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (691, 'system', '0:0:0:0:0:0:0:1', '2019-07-21 21:58:18', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (692, 'admin', '0:0:0:0:0:0:0:1', '2019-07-21 21:58:57', 'admin', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (693, 'system', '0:0:0:0:0:0:0:1', '2019-07-22 10:24:09', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (694, 'system', '0:0:0:0:0:0:0:1', '2019-07-22 10:48:11', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (695, 'system', '0:0:0:0:0:0:0:1', '2019-07-22 10:49:24', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (696, 'system', '0:0:0:0:0:0:0:1', '2019-07-22 11:16:47', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (697, 'system', '0:0:0:0:0:0:0:1', '2019-07-22 11:35:51', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (698, 'system', '0:0:0:0:0:0:0:1', '2019-07-22 11:37:37', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (699, 'system', '0:0:0:0:0:0:0:1', '2019-07-22 11:39:41', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (700, 'system', '0:0:0:0:0:0:0:1', '2019-07-22 12:53:40', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (701, 'system', '0:0:0:0:0:0:0:1', '2019-07-22 13:05:55', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (702, 'system', '0:0:0:0:0:0:0:1', '2019-07-22 13:15:19', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (703, 'system', '0:0:0:0:0:0:0:1', '2019-07-22 13:27:46', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (704, 'system', '0:0:0:0:0:0:0:1', '2019-07-22 14:05:46', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (705, 'system', '0:0:0:0:0:0:0:1', '2019-07-22 14:16:34', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (706, 'system', '0:0:0:0:0:0:0:1', '2019-07-22 15:12:53', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (707, 'system', '0:0:0:0:0:0:0:1', '2019-07-22 15:15:29', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (708, 'system', '0:0:0:0:0:0:0:1', '2019-07-22 15:18:35', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (709, 'system', '0:0:0:0:0:0:0:1', '2019-07-22 15:24:35', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (710, 'system', '0:0:0:0:0:0:0:1', '2019-07-22 15:24:44', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (711, 'system', '0:0:0:0:0:0:0:1', '2019-07-22 15:24:50', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (712, 'system', '0:0:0:0:0:0:0:1', '2019-07-22 15:36:49', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (713, 'system', '0:0:0:0:0:0:0:1', '2019-07-22 15:43:20', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (714, 'system', '0:0:0:0:0:0:0:1', '2019-07-22 15:54:04', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (715, 'system', '0:0:0:0:0:0:0:1', '2019-07-22 16:10:40', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (716, 'system', '0:0:0:0:0:0:0:1', '2019-07-22 16:19:00', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (717, 'system', '0:0:0:0:0:0:0:1', '2019-07-22 16:38:36', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (718, 'system', '0:0:0:0:0:0:0:1', '2019-07-22 16:40:04', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (719, 'system', '0:0:0:0:0:0:0:1', '2019-07-22 16:44:59', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (720, 'system', '0:0:0:0:0:0:0:1', '2019-07-22 16:50:39', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (721, 'system', '0:0:0:0:0:0:0:1', '2019-07-22 16:56:54', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (722, 'system', '0:0:0:0:0:0:0:1', '2019-07-22 16:58:52', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (723, 'system', '0:0:0:0:0:0:0:1', '2019-07-22 17:04:34', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (724, 'system', '0:0:0:0:0:0:0:1', '2019-07-22 17:13:59', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (725, 'system', '0:0:0:0:0:0:0:1', '2019-07-22 17:23:00', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (726, 'system', '0:0:0:0:0:0:0:1', '2019-07-22 17:43:37', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (727, 'system', '0:0:0:0:0:0:0:1', '2019-07-22 20:01:11', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (728, 'system', '0:0:0:0:0:0:0:1', '2019-07-22 20:01:29', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (729, 'system', '0:0:0:0:0:0:0:1', '2019-07-22 20:53:27', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (730, 'system', '0:0:0:0:0:0:0:1', '2019-07-23 10:17:27', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (731, 'system', '0:0:0:0:0:0:0:1', '2019-07-23 11:10:56', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (732, 'system', '0:0:0:0:0:0:0:1', '2019-07-23 11:25:02', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (733, 'system', '0:0:0:0:0:0:0:1', '2019-07-23 11:33:36', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (734, 'system', '0:0:0:0:0:0:0:1', '2019-07-23 12:01:34', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (735, 'system', '0:0:0:0:0:0:0:1', '2019-07-23 13:40:09', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (736, 'system', '0:0:0:0:0:0:0:1', '2019-07-23 14:49:48', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (737, 'system', '0:0:0:0:0:0:0:1', '2019-07-23 15:05:40', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (738, 'system', '0:0:0:0:0:0:0:1', '2019-07-23 15:07:32', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (739, 'system', '0:0:0:0:0:0:0:1', '2019-07-23 15:13:01', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (740, 'system', '0:0:0:0:0:0:0:1', '2019-07-23 15:49:59', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (741, 'system', '0:0:0:0:0:0:0:1', '2019-07-23 16:02:22', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (742, 'system', '0:0:0:0:0:0:0:1', '2019-07-23 16:14:00', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (743, 'admin', '0:0:0:0:0:0:0:1', '2019-07-23 16:55:49', 'admin', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (744, 'xiaofang', '0:0:0:0:0:0:0:1', '2019-07-23 16:58:37', '小芳', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (745, 'admin', '0:0:0:0:0:0:0:1', '2019-07-23 17:00:43', 'admin', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (746, 'system', '0:0:0:0:0:0:0:1', '2019-07-23 17:10:29', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (747, 'system', '0:0:0:0:0:0:0:1', '2019-07-23 17:37:37', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (748, 'system', '0:0:0:0:0:0:0:1', '2019-07-23 17:42:21', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (749, 'system', '0:0:0:0:0:0:0:1', '2019-07-23 17:51:26', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (750, 'system', '0:0:0:0:0:0:0:1', '2019-07-23 17:55:02', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (751, 'system', '0:0:0:0:0:0:0:1', '2019-07-23 17:57:24', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (752, 'system', '0:0:0:0:0:0:0:1', '2019-07-25 10:09:30', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (753, 'system', '127.0.0.1', '2019-07-25 11:58:17', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (754, 'system', '127.0.0.1', '2019-07-25 15:09:39', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (755, 'system', '127.0.0.1', '2019-07-25 15:39:57', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (756, 'admin', '127.0.0.1', '2019-07-25 17:24:27', 'admin', 'Windows', 'Firefox', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (757, 'system', '127.0.0.1', '2019-07-25 21:25:36', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (758, 'system', '127.0.0.1', '2019-07-25 21:38:26', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (759, 'system', '127.0.0.1', '2019-07-25 22:33:54', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (760, 'admin', '127.0.0.1', '2019-07-25 22:35:09', 'admin', 'Windows', 'Firefox', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (761, 'system', '127.0.0.1', '2019-07-25 23:03:11', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (762, 'admin', '127.0.0.1', '2019-07-25 23:03:20', 'admin', 'Windows', 'Firefox', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (763, 'system', '127.0.0.1', '2019-07-25 23:04:15', '超级管理员', 'Windows', 'Firefox', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (764, 'admin', '127.0.0.1', '2019-07-25 23:17:03', 'admin', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (765, 'system', '127.0.0.1', '2019-07-26 10:06:24', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (766, 'admin', '127.0.0.1', '2019-07-26 10:09:50', 'admin', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (767, 'system', '127.0.0.1', '2019-07-26 10:26:28', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (768, 'admin', '127.0.0.1', '2019-07-26 10:27:17', 'admin', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (769, 'system', '127.0.0.1', '2019-07-26 10:27:53', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (770, 'system', '127.0.0.1', '2019-07-26 11:20:57', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (771, 'system', '127.0.0.1', '2019-07-26 11:21:18', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (772, 'system', '127.0.0.1', '2019-07-26 12:48:34', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (773, 'system', '127.0.0.1', '2019-07-26 13:51:48', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (774, 'admin', '127.0.0.1', '2019-07-26 13:56:24', 'admin', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (775, 'system', '127.0.0.1', '2019-07-26 13:56:52', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (776, 'system', '127.0.0.1', '2019-07-27 08:15:33', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (777, 'system', '127.0.0.1', '2019-07-27 08:21:47', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (778, 'system', '127.0.0.1', '2019-07-27 08:53:52', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (779, 'system', '127.0.0.1', '2019-07-27 08:59:39', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (780, 'system', '127.0.0.1', '2019-07-27 09:15:20', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (781, 'system', '127.0.0.1', '2019-07-27 09:16:21', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (782, 'system', '127.0.0.1', '2019-07-27 09:26:58', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (783, 'system', '127.0.0.1', '2019-07-27 09:57:08', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (784, 'system', '127.0.0.1', '2019-07-27 10:00:30', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (785, 'system', '127.0.0.1', '2019-07-27 10:00:39', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (786, 'system', '127.0.0.1', '2019-07-27 10:04:32', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (787, 'system', '127.0.0.1', '2019-07-27 10:08:54', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (788, 'system', '127.0.0.1', '2019-07-27 10:25:24', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (789, 'system', '127.0.0.1', '2019-07-27 17:38:29', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (790, 'system', '127.0.0.1', '2019-07-28 00:14:12', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (791, 'system', '127.0.0.1', '2019-07-28 09:15:41', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (792, 'system', '127.0.0.1', '2019-07-28 10:38:01', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (793, 'system', '127.0.0.1', '2019-07-28 10:40:45', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (794, 'system', '127.0.0.1', '2019-07-28 10:47:00', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (795, 'system', '127.0.0.1', '2019-07-28 10:47:06', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (796, 'system', '127.0.0.1', '2019-07-28 11:20:53', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (797, 'system', '127.0.0.1', '2019-07-28 13:28:41', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (798, 'system', '127.0.0.1', '2019-07-28 15:13:09', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (799, 'system', '127.0.0.1', '2019-07-28 15:25:21', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (800, 'system', '127.0.0.1', '2019-07-28 15:26:10', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (801, 'system', '127.0.0.1', '2019-07-28 15:27:31', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (802, 'system', '127.0.0.1', '2019-07-28 15:47:27', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (803, 'system', '127.0.0.1', '2019-07-28 19:50:17', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (804, 'system', '127.0.0.1', '2019-07-28 19:51:37', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (805, 'system', '127.0.0.1', '2019-07-28 19:52:58', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (806, 'admin', '127.0.0.1', '2019-07-28 22:38:59', 'admin', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (807, 'admin', '114.236.93.180', '2019-07-28 22:40:59', 'admin', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (808, 'system', '220.112.125.97', '2019-07-28 22:41:47', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (809, 'system', '114.236.93.180', '2019-07-28 22:43:09', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (810, 'system', '127.0.0.1', '2019-08-01 16:14:23', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (811, 'system', '127.0.0.1', '2019-08-01 16:24:27', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (812, 'system', '127.0.0.1', '2019-08-13 15:46:57', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (813, 'system', '127.0.0.1', '2019-08-14 10:14:54', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (814, 'system', '127.0.0.1', '2019-08-14 12:45:11', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (815, 'system', '127.0.0.1', '2019-08-18 08:37:53', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (816, 'system', '127.0.0.1', '2019-08-19 13:29:42', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (817, 'system', '127.0.0.1', '2019-08-19 17:44:03', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (818, 'system', '127.0.0.1', '2019-08-21 11:35:46', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (819, 'system', '127.0.0.1', '2019-08-21 11:36:46', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (820, 'system', '127.0.0.1', '2019-08-22 10:48:33', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (821, 'system', '127.0.0.1', '2019-08-22 17:21:31', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (822, 'system', '127.0.0.1', '2019-08-22 20:34:55', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (823, 'system', '127.0.0.1', '2019-08-26 10:44:41', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (824, 'system', '127.0.0.1', '2019-08-26 11:53:45', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (825, 'system', '127.0.0.1', '2019-08-26 13:48:03', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (826, 'system', '127.0.0.1', '2019-08-26 15:48:46', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (827, 'system', '127.0.0.1', '2019-08-28 10:16:51', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (828, 'system', '127.0.0.1', '2019-08-28 17:22:02', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (829, 'system', '127.0.0.1', '2019-09-02 10:25:31', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (830, 'system', '127.0.0.1', '2019-09-02 17:04:31', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (831, 'system', '127.0.0.1', '2019-09-03 17:58:48', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (832, 'system', '127.0.0.1', '2019-09-03 20:57:25', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (833, 'system', '127.0.0.1', '2019-09-03 21:25:04', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (834, 'system', '127.0.0.1', '2019-09-03 22:27:07', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (835, 'system', '127.0.0.1', '2019-09-04 10:48:31', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (836, 'system', '127.0.0.1', '2019-09-04 22:16:29', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (837, 'system', '127.0.0.1', '2019-09-16 11:41:31', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (838, 'system', '127.0.0.1', '2019-09-18 15:16:53', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (839, 'system', '127.0.0.1', '2019-09-18 15:41:51', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (840, 'system', '127.0.0.1', '2019-09-29 11:35:45', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (841, 'system', '127.0.0.1', '2019-09-29 13:31:41', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (842, 'system', '127.0.0.1', '2019-09-29 15:02:13', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (843, 'system', '192.168.1.103', '2019-09-29 15:08:24', '超级管理员', 'Windows', 'Firefox', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (844, 'system', '127.0.0.1', '2019-10-08 10:15:12', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (845, 'system', '127.0.0.1', '2019-10-08 18:52:36', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (846, 'system', '127.0.0.1', '2019-10-09 10:43:51', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (847, 'system', '127.0.0.1', '2019-10-09 10:44:08', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (848, 'system', '127.0.0.1', '2019-10-09 10:46:18', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (849, 'admin', '127.0.0.1', '2019-10-09 10:46:32', 'admin', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (850, 'system', '192.168.1.6', '2019-10-09 10:46:49', '超级管理员', 'Windows', 'Firefox', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (851, 'system', '192.168.1.6', '2019-10-09 10:46:59', '超级管理员', 'Windows', 'Firefox', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (852, 'system', '127.0.0.1', '2019-10-18 15:01:43', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (853, 'admin', '127.0.0.1', '2020-02-29 21:26:46', 'admin', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (854, 'mzj', '127.0.0.1', '2020-02-29 21:27:35', '莫总', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (855, 'mzj', '127.0.0.1', '2020-02-29 21:34:49', '莫总', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (856, 'system', '127.0.0.1', '2020-03-01 11:08:15', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (857, 'mzj', '127.0.0.1', '2020-03-01 11:13:02', '莫总', 'Windows', 'Firefox 7', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (858, 'system', '127.0.0.1', '2020-03-01 11:14:32', '超级管理员', 'Windows', 'Firefox 7', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (859, 'system', '127.0.0.1', '2020-03-01 12:08:34', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (860, 'system', '127.0.0.1', '2020-03-01 14:28:07', '超级管理员', 'Windows', 'Chrome', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (861, 'admin', '127.0.0.1', '2021-04-20 16:18:07', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (862, 'admin', '127.0.0.1', '2021-04-20 16:22:44', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (863, 'admin', '127.0.0.1', '2021-04-20 16:34:15', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (864, 'admin', '127.0.0.1', '2021-04-20 16:42:47', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (865, 'admin', '127.0.0.1', '2021-04-20 16:45:48', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (866, 'admin', '127.0.0.1', '2021-04-20 17:36:57', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (867, 'admin', '127.0.0.1', '2021-04-20 19:21:37', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (868, 'aaq', '127.0.0.1', '2021-04-20 19:25:16', 'abc', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (869, 'zhang', '127.0.0.1', '2021-04-20 19:28:04', 'zhang', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (870, 'admin', '127.0.0.1', '2021-04-20 19:43:07', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (871, 'admin', '192.168.81.1', '2021-04-20 19:52:52', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (872, 'admin', '127.0.0.1', '2021-04-20 20:03:35', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (873, 'admin', '127.0.0.1', '2021-04-20 20:04:18', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (874, 'admin', '127.0.0.1', '2021-04-20 20:06:05', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (875, 'admin', '127.0.0.1', '2021-04-20 20:07:20', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (876, 'admin', '127.0.0.1', '2021-04-20 20:09:27', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (877, 'admin', '127.0.0.1', '2021-04-20 20:14:44', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (878, 'admin', '127.0.0.1', '2021-04-20 20:31:19', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (879, 'admin', '127.0.0.1', '2021-04-20 20:38:10', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (880, 'admin', '127.0.0.1', '2021-04-20 21:19:33', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (881, 'admin', '127.0.0.1', '2021-04-20 21:33:48', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (882, 'admin', '127.0.0.1', '2021-04-20 21:50:42', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (883, 'admin', '127.0.0.1', '2021-04-21 11:24:17', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (884, 'admin', '127.0.0.1', '2021-04-21 11:31:34', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (885, 'admin', '127.0.0.1', '2021-04-21 11:39:36', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (886, 'admin', '127.0.0.1', '2021-04-21 11:41:31', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (887, 'admin', '127.0.0.1', '2021-04-21 14:11:18', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (888, 'admin', '127.0.0.1', '2021-04-21 14:14:32', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (889, 'admin', '127.0.0.1', '2021-04-21 14:18:13', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (890, 'admin', '127.0.0.1', '2021-04-21 14:55:19', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (891, 'admin', '127.0.0.1', '2021-04-21 15:19:32', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (892, 'admin', '127.0.0.1', '2021-04-21 15:53:41', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (893, 'admin', '127.0.0.1', '2021-04-21 15:56:04', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (894, 'admin', '127.0.0.1', '2021-04-21 15:59:54', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (895, 'admin', '127.0.0.1', '2021-04-21 16:01:16', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (896, 'admin', '127.0.0.1', '2021-04-21 16:04:55', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (897, 'admin', '127.0.0.1', '2021-04-21 16:14:36', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (898, 'admin', '127.0.0.1', '2021-04-21 16:19:46', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (899, 'admin', '127.0.0.1', '2021-04-21 16:21:53', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (900, 'admin', '127.0.0.1', '2021-04-21 16:29:04', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (901, 'admin', '127.0.0.1', '2021-04-21 16:30:56', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (902, 'admin', '127.0.0.1', '2021-04-21 17:09:52', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (903, 'admin', '127.0.0.1', '2021-04-21 17:14:22', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (904, 'admin', '127.0.0.1', '2021-04-21 17:23:51', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (905, 'admin', '127.0.0.1', '2021-04-21 18:08:38', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (906, 'admin', '127.0.0.1', '2021-04-21 18:18:27', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (907, 'admin', '127.0.0.1', '2021-04-21 18:22:04', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (908, 'admin', '127.0.0.1', '2021-04-21 18:33:05', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (909, 'admin', '127.0.0.1', '2021-04-21 18:37:02', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (910, 'admin', '127.0.0.1', '2021-04-21 18:39:24', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (911, 'admin', '127.0.0.1', '2021-04-21 18:50:23', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (912, 'admin', '127.0.0.1', '2021-04-21 19:32:04', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (913, 'admin', '127.0.0.1', '2021-04-21 19:59:29', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (914, 'admin', '127.0.0.1', '2021-04-21 20:31:42', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (915, 'admin', '127.0.0.1', '2021-04-21 20:35:10', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (916, 'admin', '127.0.0.1', '2021-04-21 20:59:48', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (917, 'admin', '127.0.0.1', '2021-04-21 21:01:06', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (918, 'admin', '127.0.0.1', '2021-04-21 21:03:20', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (919, 'admin', '127.0.0.1', '2021-04-21 21:04:59', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (920, 'admin', '127.0.0.1', '2021-04-21 21:09:01', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (921, 'admin', '127.0.0.1', '2021-04-21 21:11:06', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (922, 'admin', '127.0.0.1', '2021-04-21 21:15:12', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (923, 'admin', '127.0.0.1', '2021-04-21 21:17:05', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (924, 'admin', '127.0.0.1', '2021-04-21 21:18:43', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (925, 'admin', '127.0.0.1', '2021-04-21 21:20:51', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (926, 'admin', '127.0.0.1', '2021-04-21 21:34:05', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (927, 'admin', '127.0.0.1', '2021-04-21 21:55:28', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (928, 'admin', '127.0.0.1', '2021-04-21 21:58:31', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (929, 'admin', '127.0.0.1', '2021-04-21 22:07:11', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (930, 'admin', '127.0.0.1', '2021-04-22 08:33:29', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (931, 'admin', '127.0.0.1', '2021-04-22 09:09:31', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (932, 'admin', '127.0.0.1', '2021-04-22 09:30:56', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (933, 'admin', '127.0.0.1', '2021-04-22 09:34:14', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (934, 'admin', '127.0.0.1', '2021-04-22 09:48:01', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (935, 'admin', '127.0.0.1', '2021-04-22 10:18:57', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (936, 'admin', '127.0.0.1', '2021-04-22 10:51:01', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (937, 'admin', '127.0.0.1', '2021-04-22 11:02:15', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (938, 'admin', '192.168.81.1', '2021-04-22 11:08:05', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (939, 'admin', '127.0.0.1', '2021-04-22 11:10:55', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (940, 'admin', '127.0.0.1', '2021-04-22 11:16:37', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (941, 'admin', '127.0.0.1', '2021-04-22 11:18:05', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (942, 'admin', '127.0.0.1', '2021-04-22 11:20:25', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (943, 'admin', '127.0.0.1', '2021-04-22 11:22:57', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (944, 'admin', '127.0.0.1', '2021-04-22 11:55:32', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (945, 'admin', '127.0.0.1', '2021-04-22 16:22:53', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (946, 'admin', '127.0.0.1', '2021-04-22 16:52:42', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (947, 'admin', '127.0.0.1', '2021-04-22 16:54:22', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (948, 'admin', '127.0.0.1', '2021-04-22 16:59:05', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (949, 'admin', '127.0.0.1', '2021-04-22 17:12:47', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (950, 'admin', '127.0.0.1', '2021-04-22 17:15:32', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (951, 'admin', '127.0.0.1', '2021-04-22 17:46:34', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (952, 'admin', '127.0.0.1', '2021-04-22 17:51:44', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (953, 'admin', '127.0.0.1', '2021-04-22 17:59:05', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (954, 'admin', '127.0.0.1', '2021-04-22 18:09:57', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (955, 'admin', '127.0.0.1', '2021-04-22 18:15:47', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (956, 'admin', '127.0.0.1', '2021-04-22 18:24:56', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (957, 'admin', '127.0.0.1', '2021-04-22 18:31:06', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (958, 'admin', '127.0.0.1', '2021-04-22 18:58:53', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (959, 'admin', '127.0.0.1', '2021-04-22 19:08:02', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (960, 'user', '127.0.0.1', '2021-04-22 19:20:27', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (961, 'user', '127.0.0.1', '2021-04-22 19:22:47', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (962, 'user', '127.0.0.1', '2021-04-22 19:24:25', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (963, 'user', '127.0.0.1', '2021-04-22 19:28:00', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (964, 'user', '127.0.0.1', '2021-04-22 19:33:50', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (965, 'user', '127.0.0.1', '2021-04-22 19:40:43', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (966, 'admin', '127.0.0.1', '2021-04-22 19:58:34', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (967, 'user', '127.0.0.1', '2021-04-22 19:58:52', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (968, 'admin', '127.0.0.1', '2021-04-22 20:08:54', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (969, 'user', '127.0.0.1', '2021-04-22 20:09:11', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (970, 'test', '127.0.0.1', '2021-04-22 20:09:33', '莫总', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (971, 'user', '127.0.0.1', '2021-04-22 20:27:02', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (972, 'user', '127.0.0.1', '2021-04-22 21:05:28', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (973, 'user', '127.0.0.1', '2021-04-22 21:06:49', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (974, 'user', '127.0.0.1', '2021-04-22 21:08:56', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (975, 'admin', '127.0.0.1', '2021-04-22 21:21:51', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (976, 'user', '127.0.0.1', '2021-04-22 21:22:05', '小陈', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (977, 'admin', '127.0.0.1', '2021-04-22 21:25:47', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (978, 'user', '127.0.0.1', '2021-04-22 22:01:57', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (979, 'user', '127.0.0.1', '2021-04-23 11:27:40', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (980, 'user', '127.0.0.1', '2021-04-23 12:25:12', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (981, 'user', '127.0.0.1', '2021-04-23 12:29:05', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (982, 'user', '127.0.0.1', '2021-04-23 12:57:05', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (983, 'user', '127.0.0.1', '2021-04-23 13:07:24', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (984, 'user', '127.0.0.1', '2021-04-23 13:34:01', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (985, 'user', '127.0.0.1', '2021-04-23 13:35:57', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (986, 'user', '127.0.0.1', '2021-04-23 13:40:43', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (987, 'user', '127.0.0.1', '2021-04-23 13:48:39', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (988, 'user', '127.0.0.1', '2021-04-23 13:50:29', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (989, 'user', '127.0.0.1', '2021-04-23 13:56:58', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (990, 'user', '127.0.0.1', '2021-04-23 14:05:20', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (991, 'user', '127.0.0.1', '2021-04-23 14:08:21', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (992, 'user', '127.0.0.1', '2021-04-23 14:13:03', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (993, 'user', '127.0.0.1', '2021-04-23 14:18:50', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (994, 'user', '127.0.0.1', '2021-04-23 14:29:07', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (995, 'user', '127.0.0.1', '2021-04-23 14:38:00', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (996, 'user', '127.0.0.1', '2021-04-23 14:44:58', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (997, 'user', '127.0.0.1', '2021-04-23 14:51:28', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (998, 'user', '127.0.0.1', '2021-04-23 14:53:03', '小陈', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (999, 'user', '127.0.0.1', '2021-04-23 14:57:27', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1000, 'user', '127.0.0.1', '2021-04-23 15:06:02', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1001, 'user', '127.0.0.1', '2021-04-23 15:14:31', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1002, 'admin', '127.0.0.1', '2021-04-23 15:18:11', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1003, 'admin', '127.0.0.1', '2021-04-23 15:24:37', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1004, 'user', '127.0.0.1', '2021-04-23 15:47:39', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1005, 'admin', '127.0.0.1', '2021-04-23 15:48:31', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1006, 'user', '127.0.0.1', '2021-04-23 16:16:34', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1007, 'user', '127.0.0.1', '2021-04-23 16:31:20', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1008, 'admin', '127.0.0.1', '2021-04-23 16:32:57', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1009, 'admin', '127.0.0.1', '2021-04-23 16:37:16', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1010, 'aab', '127.0.0.1', '2021-04-23 16:39:55', '张', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1011, 'aab', '127.0.0.1', '2021-04-23 16:42:21', '张', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1012, 'aab', '127.0.0.1', '2021-04-23 16:43:02', '张', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1013, 'admin', '127.0.0.1', '2021-04-23 16:45:40', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1014, 'user', '127.0.0.1', '2021-04-23 16:47:45', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1015, 'aab', '127.0.0.1', '2021-04-23 16:48:48', '张', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1016, 'aab', '127.0.0.1', '2021-04-23 16:53:40', '张', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1017, 'aab', '127.0.0.1', '2021-04-23 16:55:58', '张', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1018, 'aab', '127.0.0.1', '2021-04-23 16:59:57', '张', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1019, 'aab', '127.0.0.1', '2021-04-23 17:01:57', '张', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1020, 'user', '127.0.0.1', '2021-04-23 17:20:06', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1021, 'admin', '127.0.0.1', '2021-04-23 17:21:30', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1022, 'user', '127.0.0.1', '2021-04-23 17:22:57', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1023, 'admin', '127.0.0.1', '2021-04-23 17:23:13', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1024, 'admin', '127.0.0.1', '2021-04-23 17:25:49', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1025, 'admin', '127.0.0.1', '2021-04-23 17:40:11', 'admin', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1026, 'aab', '127.0.0.1', '2021-04-23 17:40:54', '张', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1027, 'admin', '127.0.0.1', '2021-04-23 18:12:18', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1028, 'admin', '127.0.0.1', '2021-04-23 18:48:03', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1029, 'admin', '127.0.0.1', '2021-04-23 19:10:18', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1030, 'admin', '127.0.0.1', '2021-04-23 19:31:18', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1031, 'user', '127.0.0.1', '2021-04-23 19:47:37', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1032, 'user', '127.0.0.1', '2021-04-23 19:50:29', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1033, 'user', '127.0.0.1', '2021-04-23 20:03:36', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1034, 'admin', '127.0.0.1', '2021-04-23 20:03:52', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1035, 'user', '127.0.0.1', '2021-04-23 20:10:26', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1036, 'user', '127.0.0.1', '2021-04-23 20:33:14', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1037, 'admin', '127.0.0.1', '2021-04-23 20:37:53', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1038, 'user', '127.0.0.1', '2021-04-23 20:40:16', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1039, 'user', '127.0.0.1', '2021-04-23 20:41:40', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1040, 'user', '127.0.0.1', '2021-04-23 20:42:19', '小陈', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1041, 'user', '127.0.0.1', '2021-04-23 20:48:55', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1042, 'user', '127.0.0.1', '2021-04-23 20:55:24', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1043, 'user', '127.0.0.1', '2021-04-23 21:02:20', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1044, 'user', '127.0.0.1', '2021-04-23 21:03:11', '小陈', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1045, 'user', '127.0.0.1', '2021-04-23 21:04:34', '小陈', 'Windows', 'Chrome 8', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1046, 'admin', '127.0.0.1', '2021-04-26 08:52:36', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1047, 'admin', '127.0.0.1', '2021-04-26 08:57:11', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1048, 'admin', '127.0.0.1', '2021-04-26 09:02:02', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1049, 'admin', '127.0.0.1', '2021-04-26 09:02:40', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1050, 'admin', '127.0.0.1', '2021-04-26 09:14:55', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1051, 'aab', '127.0.0.1', '2021-04-26 09:15:45', '张', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1052, 'admin', '127.0.0.1', '2021-04-26 09:17:00', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1053, 'admin', '127.0.0.1', '2021-04-26 09:23:45', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1054, 'admin', '127.0.0.1', '2021-04-26 09:25:48', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1055, 'admin', '127.0.0.1', '2021-04-26 09:26:33', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1056, 'admin', '127.0.0.1', '2021-04-26 09:27:23', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1057, 'admin', '127.0.0.1', '2021-04-26 09:30:39', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1059, 'admin', '127.0.0.1', '2021-04-26 09:33:13', 'admin', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1060, 'test1', '127.0.0.1', '2021-04-26 09:34:03', 'test1', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1061, 'user', '127.0.0.1', '2021-04-26 09:34:25', '小陈', 'Windows', 'Chrome 9', 'Windows 10');
INSERT INTO `sys_log_login` VALUES (1062, 'admin', '127.0.0.1', '2021-04-26 10:24:17', 'admin', 'Windows', 'Chrome 9', 'Windows 10');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '公告编号',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告标题',
  `notice_content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告内容',
  `create_time` datetime NULL DEFAULT NULL COMMENT '公告创建时间',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告发布者',
  `notice_type` tinyint(4) NOT NULL DEFAULT 2 COMMENT '公告类型：1： 通知 ，2：公告',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '公告状态：0，关闭 1，启用',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (12, '欢迎使用系统欢迎使用系统欢迎使用系统欢迎使用系统', '<p>欢迎使用系统欢迎使用系统欢迎使用系统欢迎使用系统欢迎使用系统</p>', '2019-07-23 16:12:31', '超级管理员', 2, '小陈', '2021-04-23 16:32:18', '欢迎使用系统', 1);
INSERT INTO `sys_notice` VALUES (13, '测试通知', '测试测试测试测试', '2019-07-23 16:18:41', '超级管理员', 1, '小陈', '2021-04-23 16:32:29', '测试公告板块', 1);
INSERT INTO `sys_notice` VALUES (14, '阿萨大', 'asdadaaaa', '2021-04-23 15:38:00', 'admin', 2, NULL, NULL, '阿萨大阿萨大阿萨大阿萨大', 1);

-- ----------------------------
-- Table structure for sys_online_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_online_user`;
CREATE TABLE `sys_online_user`  (
  `id` int(50) NOT NULL COMMENT '编号',
  `login_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '登录账户名称',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '所在部门名称',
  `ip_addr` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '登录IP',
  `login_location` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '登录地点',
  `browser` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '浏览器名称',
  `osName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '操作系统名称',
  `start_time` datetime NULL DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime NULL DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(20) NULL DEFAULT NULL COMMENT 'session超时时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_online_user
-- ----------------------------

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限类型[menu/permission]',
  `parent` int(11) NULL DEFAULT 0 COMMENT '0子节点 1父节点',
  `percode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限编码[只有type= permission才有  user:view]',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `href` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `target` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `open` int(11) NOT NULL DEFAULT 0,
  `ordernum` int(11) NULL DEFAULT NULL,
  `available` int(11) NULL DEFAULT NULL COMMENT '状态【0不可用1可用】',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 121 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES (1, 0, 'menu', 1, NULL, '软件外包系统', '&#xe68e;', '', '', 1, 1, 1);
INSERT INTO `sys_permission` VALUES (5, 1, 'menu', 1, NULL, '系统管理', '&#xe614;', '', '', 1, 5, 1);
INSERT INTO `sys_permission` VALUES (6, 1, 'menu', 1, NULL, '其它管理', '&#xe628;', '', '', 1, 6, 1);
INSERT INTO `sys_permission` VALUES (15, 5, 'menu', 0, NULL, '菜单管理', '&#xe857;', '/menu/toMenuManager.page', '', 0, 15, 1);
INSERT INTO `sys_permission` VALUES (16, 5, 'menu', 0, '', '权限管理', '&#xe857;', '/permission/toPermissionManager.page', '', 0, 16, 1);
INSERT INTO `sys_permission` VALUES (18, 5, 'menu', 0, '', '用户管理', '&#xe612;', '/user/toUserManager.page', '', 0, 18, 1);
INSERT INTO `sys_permission` VALUES (34, 15, 'permission', 0, 'menu:create', '添加菜单', '', '', '', 0, 29, 1);
INSERT INTO `sys_permission` VALUES (35, 15, 'permission', 0, 'menu:update', '修改菜单', '', NULL, NULL, 0, 30, 1);
INSERT INTO `sys_permission` VALUES (36, 15, 'permission', 0, 'menu:delete', '删除菜单', '', NULL, NULL, 0, 31, 1);
INSERT INTO `sys_permission` VALUES (37, 15, 'permission', 0, 'menu:batchdelete', '菜单批量删除', '', NULL, NULL, 0, 32, 1);
INSERT INTO `sys_permission` VALUES (38, 16, 'permission', 0, 'permission:create', '添加权限', '', NULL, NULL, 0, 33, 1);
INSERT INTO `sys_permission` VALUES (39, 16, 'permission', 0, 'permission:update', '修改权限', '', NULL, NULL, 0, 34, 1);
INSERT INTO `sys_permission` VALUES (40, 16, 'permission', 0, 'permission:delete', '删除权限', '', NULL, NULL, 0, 35, 1);
INSERT INTO `sys_permission` VALUES (41, 16, 'permission', 0, 'permission:batchdelete', '权限批量删除', '', NULL, NULL, 0, 36, 1);
INSERT INTO `sys_permission` VALUES (47, 18, 'permission', 0, 'user:create', '添加用户', '', NULL, NULL, 0, 42, 1);
INSERT INTO `sys_permission` VALUES (48, 18, 'permission', 0, 'user:update', '修改用户', '', NULL, NULL, 0, 43, 1);
INSERT INTO `sys_permission` VALUES (49, 18, 'permission', 0, 'user:delete', '删除用户', '', NULL, NULL, 0, 44, 1);
INSERT INTO `sys_permission` VALUES (50, 18, 'permission', 0, 'user:batchdelete', '用户批量删除', '', NULL, NULL, 0, 45, 1);
INSERT INTO `sys_permission` VALUES (51, 18, 'permission', 0, 'user:assignrole', '用户分配角色', '', NULL, NULL, 0, 46, 1);
INSERT INTO `sys_permission` VALUES (52, 18, 'permission', 0, 'user:resetpwd', '重置密码', NULL, NULL, NULL, 0, 47, 1);
INSERT INTO `sys_permission` VALUES (54, 15, 'permission', 0, 'menu:view', '菜单查询', NULL, NULL, NULL, 0, 49, 1);
INSERT INTO `sys_permission` VALUES (55, 16, 'permission', 0, 'permission:view', '权限查询', NULL, NULL, NULL, 0, 50, 1);
INSERT INTO `sys_permission` VALUES (56, 17, 'permission', 0, 'role:view', '角色查询', NULL, NULL, NULL, 0, 51, 1);
INSERT INTO `sys_permission` VALUES (57, 18, 'permission', 0, 'user:view', '用户查询', NULL, NULL, NULL, 0, 52, 1);
INSERT INTO `sys_permission` VALUES (65, 108, 'menu', 0, NULL, '数据监控', '&#xe672;', '/druid', '', 0, 8, 1);
INSERT INTO `sys_permission` VALUES (83, 6, 'menu', 0, NULL, '登录日志', '&#xe675;', '/log/toLoginLog.page', '', 0, 11, 1);
INSERT INTO `sys_permission` VALUES (88, 83, 'permission', 0, 'loginLog:view', '查看日志', NULL, NULL, NULL, 0, 22, 1);
INSERT INTO `sys_permission` VALUES (89, 83, 'permission', 0, 'loginLog:delete', '删除日志', NULL, NULL, NULL, 0, 23, 1);
INSERT INTO `sys_permission` VALUES (90, 83, 'permission', 0, 'loginLog:batchDelete', '批量删除日志', NULL, NULL, NULL, 0, 24, 1);
INSERT INTO `sys_permission` VALUES (92, 23, 'permission', 0, 'icon:view', '查看图标', NULL, NULL, NULL, 0, 23, 1);
INSERT INTO `sys_permission` VALUES (108, 1, 'menu', 1, NULL, '系统监控', '&#xe6ed;', '', '', 1, 5, 1);
INSERT INTO `sys_permission` VALUES (109, 108, 'menu', 0, NULL, '服务监控', '&#xe629;', '/server/monitor.page', '', 0, 7, 1);
INSERT INTO `sys_permission` VALUES (110, 108, 'menu', 0, NULL, '在线用户', '&#xe770;', '/server/toOnlineUser.page', '', 0, 9, 1);
INSERT INTO `sys_permission` VALUES (112, 1, 'menu', 1, NULL, '项目管理', '&#xe629;', '', '', 1, 2, 1);
INSERT INTO `sys_permission` VALUES (113, 112, 'menu', 0, NULL, '项目管理', '&#xe60e;', '/project/toManagerProject.page', '', 1, 1, 1);
INSERT INTO `sys_permission` VALUES (114, 112, 'menu', 0, NULL, '发布项目', '&#xe67c;', '/project/toSendProject.page', '', 1, 2, 1);
INSERT INTO `sys_permission` VALUES (115, 112, 'menu', 0, NULL, '接收项目', '&#xe601;', '/project/toReceiveProject.page', '', 1, 3, 1);
INSERT INTO `sys_permission` VALUES (117, 113, 'permission', 0, 'project:state', '项目状态', NULL, NULL, NULL, 0, 3, 1);
INSERT INTO `sys_permission` VALUES (118, 113, 'permission', 0, 'project:receive', '接项目', NULL, NULL, NULL, 0, 4, 1);
INSERT INTO `sys_permission` VALUES (119, 113, 'permission', 0, 'project:audit', '审核项目', NULL, NULL, NULL, 0, 5, 1);
INSERT INTO `sys_permission` VALUES (120, 113, 'permission', 0, 'project:delete', '删除项目', NULL, NULL, NULL, 0, 6, 1);

-- ----------------------------
-- Table structure for sys_project
-- ----------------------------
DROP TABLE IF EXISTS `sys_project`;
CREATE TABLE `sys_project`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '项目表',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目名',
  `introduction` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '项目简介',
  `state` int(1) NULL DEFAULT NULL COMMENT '项目状态1:未审核 2：已审核 3：已被接单 4：已完成 5：项目暂停 6：项目撤销 7:审核不通过',
  `remark` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '备注',
  `sendid` int(11) UNSIGNED NOT NULL COMMENT '发包人id',
  `receiveid` int(11) UNSIGNED NULL DEFAULT NULL COMMENT '接包人id',
  `complete` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '项目完成添加的备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_project
-- ----------------------------
INSERT INTO `sys_project` VALUES (19, '飒飒大苏打', '飒飒大苏打飒飒大苏打飒飒大苏打飒飒大苏打飒飒大苏打', 7, '飒飒大苏打飒飒大苏打飒飒大苏打飒飒大苏打飒飒大苏打飒飒大苏打飒飒大苏打飒飒大苏打飒飒大苏打飒飒大苏打飒飒大苏打飒飒大苏打飒飒大苏打飒飒大苏打飒飒大苏打飒飒大苏打飒飒大苏打飒飒大苏打飒飒大苏打飒飒大苏打飒飒大苏打飒飒大苏打飒飒大苏打飒飒大苏打飒飒大苏打飒飒大苏打飒飒大苏打飒飒大苏打飒飒大苏打飒飒大苏打飒飒大苏打飒飒大苏打飒飒大苏打飒飒大苏打飒飒大苏打', 7, NULL, 'adas');
INSERT INTO `sys_project` VALUES (20, '撒打算', '撒打算撒打算撒打算撒打算撒打算', 5, '撒打算撒打算撒打算撒打算撒打算撒打算', 7, 24, 'adas');
INSERT INTO `sys_project` VALUES (21, 'asdffss', 'asdffssasdffssasdffssasdffss', 1, 'asdffssasdffssasdffssasdffssasdffss', 9, NULL, 'adas');
INSERT INTO `sys_project` VALUES (22, 'asddasda', 'asdadas', 4, 'dasdadad', 9, 7, '已完成已完成已完成已完成已完成');
INSERT INTO `sys_project` VALUES (23, 'asdasdasdadas', 'asdasdadasdasdadasdasdadasdasdadasdasdad', 3, 'asdasdadasdasdadasdasdadasdasdadasdasdad', 24, 7, NULL);
INSERT INTO `sys_project` VALUES (24, '测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试', 1, '测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试', 7, NULL, NULL);

-- ----------------------------
-- Table structure for sys_project_file
-- ----------------------------
DROP TABLE IF EXISTS `sys_project_file`;
CREATE TABLE `sys_project_file`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '项目的文件存储路径表',
  `path` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '路径',
  `type` int(1) NULL DEFAULT NULL COMMENT '类型 1：发包方上传的文件 2：接包方上传的文件',
  `proid` int(11) NOT NULL COMMENT '项目id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_project_file
-- ----------------------------
INSERT INTO `sys_project_file` VALUES (38, 'D:\\file\\file\\1619061867604584.pdf', 1, 20);
INSERT INTO `sys_project_file` VALUES (39, 'D:\\file\\file\\1619087217777388.pdf', 1, 21);
INSERT INTO `sys_project_file` VALUES (40, 'D:\\file\\file\\1619087217779149.pdf', 1, 21);
INSERT INTO `sys_project_file` VALUES (41, 'D:\\file\\file\\1619087217787050.pdf', 1, 21);
INSERT INTO `sys_project_file` VALUES (42, 'D:\\file\\file\\1619087217846196.pdf', 1, 21);
INSERT INTO `sys_project_file` VALUES (43, 'D:\\file\\file\\1619087299634853.pdf', 1, 22);
INSERT INTO `sys_project_file` VALUES (44, 'D:\\file\\file\\1619087299639337.pdf', 1, 22);
INSERT INTO `sys_project_file` VALUES (45, 'D:\\file\\file\\1619400948049968.jpg', 1, 24);
INSERT INTO `sys_project_file` VALUES (46, 'D:\\file\\file\\1619400948049290.jpg', 1, 24);
INSERT INTO `sys_project_file` VALUES (47, 'D:\\file\\file\\1619400948061925.jpg', 1, 24);
INSERT INTO `sys_project_file` VALUES (48, 'D:\\file\\file\\1619400948059219.jpg', 1, 24);
INSERT INTO `sys_project_file` VALUES (49, 'D:\\file\\file\\1619400948049823.jpg', 1, 24);
INSERT INTO `sys_project_file` VALUES (50, 'D:\\file\\file\\1619400948054569.jpg', 1, 24);
INSERT INTO `sys_project_file` VALUES (51, 'D:\\file\\file\\1619400983508524.jpg', 2, 22);
INSERT INTO `sys_project_file` VALUES (52, 'D:\\file\\file\\1619400983512700.jpg', 2, 22);
INSERT INTO `sys_project_file` VALUES (53, 'D:\\file\\file\\1619400983533273.jpg', 2, 22);
INSERT INTO `sys_project_file` VALUES (54, 'D:\\file\\file\\1619400983547513.jpg', 2, 22);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `available` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', '拥有所有菜单权限', 1);
INSERT INTO `sys_role` VALUES (7, '普通用户', '普通用户', 1);

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission`  (
  `rid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`pid`, `rid`) USING BTREE,
  INDEX `FK_tcsr9ucxypb3ce1q5qngsfk33`(`rid`) USING BTREE,
  CONSTRAINT `FK_PERMISSION_PID` FOREIGN KEY (`pid`) REFERENCES `sys_permission` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `FK_ROLE_RID` FOREIGN KEY (`rid`) REFERENCES `sys_role` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
INSERT INTO `sys_role_permission` VALUES (1, 1);
INSERT INTO `sys_role_permission` VALUES (1, 5);
INSERT INTO `sys_role_permission` VALUES (1, 6);
INSERT INTO `sys_role_permission` VALUES (1, 15);
INSERT INTO `sys_role_permission` VALUES (1, 16);
INSERT INTO `sys_role_permission` VALUES (1, 18);
INSERT INTO `sys_role_permission` VALUES (1, 34);
INSERT INTO `sys_role_permission` VALUES (1, 35);
INSERT INTO `sys_role_permission` VALUES (1, 36);
INSERT INTO `sys_role_permission` VALUES (1, 37);
INSERT INTO `sys_role_permission` VALUES (1, 38);
INSERT INTO `sys_role_permission` VALUES (1, 39);
INSERT INTO `sys_role_permission` VALUES (1, 40);
INSERT INTO `sys_role_permission` VALUES (1, 41);
INSERT INTO `sys_role_permission` VALUES (1, 47);
INSERT INTO `sys_role_permission` VALUES (1, 48);
INSERT INTO `sys_role_permission` VALUES (1, 49);
INSERT INTO `sys_role_permission` VALUES (1, 50);
INSERT INTO `sys_role_permission` VALUES (1, 51);
INSERT INTO `sys_role_permission` VALUES (1, 52);
INSERT INTO `sys_role_permission` VALUES (1, 54);
INSERT INTO `sys_role_permission` VALUES (1, 55);
INSERT INTO `sys_role_permission` VALUES (1, 56);
INSERT INTO `sys_role_permission` VALUES (1, 57);
INSERT INTO `sys_role_permission` VALUES (1, 65);
INSERT INTO `sys_role_permission` VALUES (1, 83);
INSERT INTO `sys_role_permission` VALUES (1, 88);
INSERT INTO `sys_role_permission` VALUES (1, 89);
INSERT INTO `sys_role_permission` VALUES (1, 90);
INSERT INTO `sys_role_permission` VALUES (1, 92);
INSERT INTO `sys_role_permission` VALUES (1, 108);
INSERT INTO `sys_role_permission` VALUES (1, 109);
INSERT INTO `sys_role_permission` VALUES (1, 110);
INSERT INTO `sys_role_permission` VALUES (1, 112);
INSERT INTO `sys_role_permission` VALUES (1, 113);
INSERT INTO `sys_role_permission` VALUES (1, 117);
INSERT INTO `sys_role_permission` VALUES (1, 119);
INSERT INTO `sys_role_permission` VALUES (1, 120);
INSERT INTO `sys_role_permission` VALUES (7, 112);
INSERT INTO `sys_role_permission` VALUES (7, 113);
INSERT INTO `sys_role_permission` VALUES (7, 114);
INSERT INTO `sys_role_permission` VALUES (7, 115);
INSERT INTO `sys_role_permission` VALUES (7, 118);

-- ----------------------------
-- Table structure for sys_role_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_user`;
CREATE TABLE `sys_role_user`  (
  `rid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`uid`, `rid`) USING BTREE,
  INDEX `FK_203gdpkwgtow7nxlo2oap5jru`(`rid`) USING BTREE,
  CONSTRAINT `FK_203gdpkwgtow7nxlo2oap5jru` FOREIGN KEY (`rid`) REFERENCES `sys_role` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `FK_rmo144ixp2kul8rgs4sk5j0er` FOREIGN KEY (`uid`) REFERENCES `sys_user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_user
-- ----------------------------
INSERT INTO `sys_role_user` VALUES (1, 17);
INSERT INTO `sys_role_user` VALUES (1, 22);
INSERT INTO `sys_role_user` VALUES (7, 7);
INSERT INTO `sys_role_user` VALUES (7, 9);
INSERT INTO `sys_role_user` VALUES (7, 16);
INSERT INTO `sys_role_user` VALUES (7, 24);
INSERT INTO `sys_role_user` VALUES (7, 25);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `loginname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` int(11) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hiredate` datetime NULL DEFAULT NULL,
  `available` int(11) NULL DEFAULT 1,
  `type` int(255) NULL DEFAULT NULL COMMENT '用户类型[0超级管理员1，管理员，2普通用户]',
  `imgpath` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '头像地址',
  `salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, '超级管理员', 'system', '系统深处的男人', 1, '超级管理员', '00e2767d3ea82cba5930ef2cd53f4259', '2018-06-25 11:06:34', 1, 0, 'head.jpg', '44BBFDA1F7834A04B818AE6C2BE5576A');
INSERT INTO `sys_user` VALUES (7, '小陈', 'user', '上海', 1, '测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试', '4bc98d634c0a3cbb9de6defc9239303b', '2019-07-18 00:00:00', 1, 1, '37220210423150616.jpg', 'F31FD17A6E8148ECA2B9E4C953BF5AAF');
INSERT INTO `sys_user` VALUES (9, '莫总', 'test', '上海总部', 1, '上海', 'a86e1ba34da722f2e9211cd9a56022c2', '2019-07-18 00:00:00', 1, 1, 'head.jpg', '95A7DA99B67C496B9456BC8E5A3E7126');
INSERT INTO `sys_user` VALUES (16, '小张', 'xiaozhang', '上海', 1, '实习生', '45d0a7d047439a561bbbd4a5e98be73f', '2019-07-18 00:00:00', 1, 1, 'head.jpg', 'D43B7C04967E48F2A5C920B346E47350');
INSERT INTO `sys_user` VALUES (17, '李总', 'lizong', '上海', 1, '测试部门老大', 'f14467dc4c36d1fbe728ca7ca4832280', '2019-07-02 00:00:00', 1, 1, 'head.jpg', '4F901B638A5E4B198F3C0CD2A67482A0');
INSERT INTO `sys_user` VALUES (18, '小芳', 'xiaofang', '上海', 0, '软测1部实习生', '832be80de1bc726a937887f0bda3b89a', '2019-07-17 00:00:00', 1, 1, 'head.jpg', 'DD56B58EAD7D458A8A38F8C3BB9D5770');
INSERT INTO `sys_user` VALUES (22, 'admin', 'admin', '北京', 1, '系统管理员', 'eb1196948bceb2f35b99ac59a06ba1eb', '2019-07-16 00:00:00', 1, 1, 'head.jpg', '29D179D6870146D6ABD62C0ED791B717');
INSERT INTO `sys_user` VALUES (24, '张', 'aab', NULL, NULL, NULL, 'fb9eb3ff7b81e5fb0489c3c852b65192', '2021-04-23 16:38:14', 1, 1, 'head.jpg', 'E05892E0DA0C4F939149D346EFE7A378');
INSERT INTO `sys_user` VALUES (25, 'test1', 'test1', NULL, NULL, NULL, '2ecf499bc1446c61252a5d7873ed0adb', '2021-04-26 09:33:51', 1, 1, 'head.jpg', 'B063209EBE8C48F7BF4F348B28AC8FFB');

SET FOREIGN_KEY_CHECKS = 1;
