/*
 Navicat Premium Data Transfer

 Source Server         : mysql123
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : book

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 04/04/2020 14:27:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `admin_operation_log_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 183 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES (1, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-03 04:46:13', '2020-04-03 04:46:13');
INSERT INTO `admin_operation_log` VALUES (2, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-03 04:46:57', '2020-04-03 04:46:57');
INSERT INTO `admin_operation_log` VALUES (3, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 04:47:38', '2020-04-03 04:47:38');
INSERT INTO `admin_operation_log` VALUES (4, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 04:49:26', '2020-04-03 04:49:26');
INSERT INTO `admin_operation_log` VALUES (5, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 04:49:27', '2020-04-03 04:49:27');
INSERT INTO `admin_operation_log` VALUES (6, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 04:49:44', '2020-04-03 04:49:44');
INSERT INTO `admin_operation_log` VALUES (7, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 04:49:48', '2020-04-03 04:49:48');
INSERT INTO `admin_operation_log` VALUES (8, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 04:50:01', '2020-04-03 04:50:01');
INSERT INTO `admin_operation_log` VALUES (9, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"books\",\"icon\":\"fa-book\",\"uri\":\"books\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"ooMnIA4mmcQympalhdU5o4PLUsgBfOtEGnDfC30F\"}', '2020-04-03 04:50:50', '2020-04-03 04:50:50');
INSERT INTO `admin_operation_log` VALUES (10, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-03 04:50:50', '2020-04-03 04:50:50');
INSERT INTO `admin_operation_log` VALUES (11, 1, 'admin/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 04:50:53', '2020-04-03 04:50:53');
INSERT INTO `admin_operation_log` VALUES (12, 1, 'admin/books/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 04:51:02', '2020-04-03 04:51:02');
INSERT INTO `admin_operation_log` VALUES (13, 1, 'admin/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 04:51:07', '2020-04-03 04:51:07');
INSERT INTO `admin_operation_log` VALUES (14, 1, 'admin/books/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 04:52:54', '2020-04-03 04:52:54');
INSERT INTO `admin_operation_log` VALUES (15, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-03 04:54:10', '2020-04-03 04:54:10');
INSERT INTO `admin_operation_log` VALUES (16, 1, 'admin/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 05:15:00', '2020-04-03 05:15:00');
INSERT INTO `admin_operation_log` VALUES (17, 1, 'admin/books/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 05:15:10', '2020-04-03 05:15:10');
INSERT INTO `admin_operation_log` VALUES (18, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-03 17:39:04', '2020-04-03 17:39:04');
INSERT INTO `admin_operation_log` VALUES (19, 1, 'admin/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 17:39:18', '2020-04-03 17:39:18');
INSERT INTO `admin_operation_log` VALUES (20, 1, 'admin/books/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 17:39:34', '2020-04-03 17:39:34');
INSERT INTO `admin_operation_log` VALUES (21, 1, 'admin/books', 'POST', '127.0.0.1', '{\"name\":\"yizezhao\",\"author\":\"Yize Zhao\",\"isbn\":\"123\",\"gid\":\"1\",\"pagenum\":\"123213\",\"price\":\"100\",\"qty\":\"2\",\"pid\":\"1\",\"expenditure\":\"120\",\"_token\":\"ngwdLKLz2nGkN4EtfclGR32DvOTEBvkeXmnOIFIW\",\"_previous_\":\"http:\\/\\/bookstore\\/admin\\/books\"}', '2020-04-03 17:40:50', '2020-04-03 17:40:50');
INSERT INTO `admin_operation_log` VALUES (22, 1, 'admin/books', 'GET', '127.0.0.1', '[]', '2020-04-03 17:40:50', '2020-04-03 17:40:50');
INSERT INTO `admin_operation_log` VALUES (23, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 18:19:55', '2020-04-03 18:19:55');
INSERT INTO `admin_operation_log` VALUES (24, 1, 'admin/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 18:20:06', '2020-04-03 18:20:06');
INSERT INTO `admin_operation_log` VALUES (25, 1, 'admin/books/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 18:20:53', '2020-04-03 18:20:53');
INSERT INTO `admin_operation_log` VALUES (26, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 18:20:57', '2020-04-03 18:20:57');
INSERT INTO `admin_operation_log` VALUES (27, 1, 'admin/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 18:20:59', '2020-04-03 18:20:59');
INSERT INTO `admin_operation_log` VALUES (28, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"1\",\"_model\":\"App_Book\",\"_token\":\"ngwdLKLz2nGkN4EtfclGR32DvOTEBvkeXmnOIFIW\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-04-03 18:25:18', '2020-04-03 18:25:18');
INSERT INTO `admin_operation_log` VALUES (29, 1, 'admin/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 18:25:19', '2020-04-03 18:25:19');
INSERT INTO `admin_operation_log` VALUES (30, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 18:25:33', '2020-04-03 18:25:33');
INSERT INTO `admin_operation_log` VALUES (31, 1, 'admin/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 18:25:47', '2020-04-03 18:25:47');
INSERT INTO `admin_operation_log` VALUES (32, 1, 'admin/books/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 18:25:51', '2020-04-03 18:25:51');
INSERT INTO `admin_operation_log` VALUES (33, 1, 'admin/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 18:26:03', '2020-04-03 18:26:03');
INSERT INTO `admin_operation_log` VALUES (34, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 18:26:07', '2020-04-03 18:26:07');
INSERT INTO `admin_operation_log` VALUES (35, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 18:26:11', '2020-04-03 18:26:11');
INSERT INTO `admin_operation_log` VALUES (36, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 18:26:16', '2020-04-03 18:26:16');
INSERT INTO `admin_operation_log` VALUES (37, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 18:26:22', '2020-04-03 18:26:22');
INSERT INTO `admin_operation_log` VALUES (38, 1, 'admin/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 18:27:17', '2020-04-03 18:27:17');
INSERT INTO `admin_operation_log` VALUES (39, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 18:27:19', '2020-04-03 18:27:19');
INSERT INTO `admin_operation_log` VALUES (40, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 18:27:24', '2020-04-03 18:27:24');
INSERT INTO `admin_operation_log` VALUES (41, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 18:27:31', '2020-04-03 18:27:31');
INSERT INTO `admin_operation_log` VALUES (42, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-03 18:30:59', '2020-04-03 18:30:59');
INSERT INTO `admin_operation_log` VALUES (43, 1, 'admin/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 18:31:04', '2020-04-03 18:31:04');
INSERT INTO `admin_operation_log` VALUES (44, 1, 'admin/books/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 18:31:06', '2020-04-03 18:31:06');
INSERT INTO `admin_operation_log` VALUES (45, 1, 'admin/books', 'POST', '127.0.0.1', '{\"name\":\"yizezhao\",\"author\":\"w\",\"isbn\":\"2332423\",\"gid\":\"1\",\"pagenum\":\"324\",\"price\":\"234\",\"qty\":\"2\",\"pid\":\"2\",\"expenditure\":\"120\",\"_token\":\"ngwdLKLz2nGkN4EtfclGR32DvOTEBvkeXmnOIFIW\",\"_previous_\":\"http:\\/\\/bookstore\\/admin\\/books\"}', '2020-04-03 18:31:41', '2020-04-03 18:31:41');
INSERT INTO `admin_operation_log` VALUES (46, 1, 'admin/books', 'GET', '127.0.0.1', '[]', '2020-04-03 18:31:42', '2020-04-03 18:31:42');
INSERT INTO `admin_operation_log` VALUES (47, 1, 'admin/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 18:34:35', '2020-04-03 18:34:35');
INSERT INTO `admin_operation_log` VALUES (48, 1, 'admin/books', 'GET', '127.0.0.1', '[]', '2020-04-03 18:50:28', '2020-04-03 18:50:28');
INSERT INTO `admin_operation_log` VALUES (49, 1, 'admin/books/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 18:50:32', '2020-04-03 18:50:32');
INSERT INTO `admin_operation_log` VALUES (50, 1, 'admin/books/create', 'GET', '127.0.0.1', '[]', '2020-04-03 18:50:58', '2020-04-03 18:50:58');
INSERT INTO `admin_operation_log` VALUES (51, 1, 'admin/books', 'POST', '127.0.0.1', '{\"name\":\"test\",\"author\":\"test\",\"isbn\":\"333\",\"gid\":\"1\",\"pagenum\":\"1111\",\"price\":\"111\",\"qty\":\"1\",\"pid\":\"1\",\"expenditure\":\"199\",\"_token\":\"ngwdLKLz2nGkN4EtfclGR32DvOTEBvkeXmnOIFIW\"}', '2020-04-03 18:51:25', '2020-04-03 18:51:25');
INSERT INTO `admin_operation_log` VALUES (52, 1, 'admin/books', 'GET', '127.0.0.1', '[]', '2020-04-03 18:51:25', '2020-04-03 18:51:25');
INSERT INTO `admin_operation_log` VALUES (53, 1, 'admin/books/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 18:56:01', '2020-04-03 18:56:01');
INSERT INTO `admin_operation_log` VALUES (54, 1, 'admin/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 18:56:05', '2020-04-03 18:56:05');
INSERT INTO `admin_operation_log` VALUES (55, 1, 'admin/books/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 18:56:06', '2020-04-03 18:56:06');
INSERT INTO `admin_operation_log` VALUES (56, 1, 'admin/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 18:56:08', '2020-04-03 18:56:08');
INSERT INTO `admin_operation_log` VALUES (57, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"2\",\"_model\":\"App_Book\",\"_token\":\"ngwdLKLz2nGkN4EtfclGR32DvOTEBvkeXmnOIFIW\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-04-03 18:56:17', '2020-04-03 18:56:17');
INSERT INTO `admin_operation_log` VALUES (58, 1, 'admin/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 18:56:17', '2020-04-03 18:56:17');
INSERT INTO `admin_operation_log` VALUES (59, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"3\",\"_model\":\"App_Book\",\"_token\":\"ngwdLKLz2nGkN4EtfclGR32DvOTEBvkeXmnOIFIW\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-04-03 18:56:22', '2020-04-03 18:56:22');
INSERT INTO `admin_operation_log` VALUES (60, 1, 'admin/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 18:56:22', '2020-04-03 18:56:22');
INSERT INTO `admin_operation_log` VALUES (61, 1, 'admin/books/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 18:56:24', '2020-04-03 18:56:24');
INSERT INTO `admin_operation_log` VALUES (62, 1, 'admin/books', 'POST', '127.0.0.1', '{\"name\":\"yizezhao\",\"author\":\"Yize Zhao\",\"isbn\":\"123\",\"gid\":\"1\",\"pagenum\":\"123213\",\"price\":\"234\",\"qty\":\"2\",\"pid\":\"1\",\"expenditure\":\"120\",\"_token\":\"ngwdLKLz2nGkN4EtfclGR32DvOTEBvkeXmnOIFIW\",\"_previous_\":\"http:\\/\\/bookstore\\/admin\\/books\"}', '2020-04-03 18:56:46', '2020-04-03 18:56:46');
INSERT INTO `admin_operation_log` VALUES (63, 1, 'admin/books', 'GET', '127.0.0.1', '[]', '2020-04-03 18:56:47', '2020-04-03 18:56:47');
INSERT INTO `admin_operation_log` VALUES (64, 1, 'admin/books/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 19:57:12', '2020-04-03 19:57:12');
INSERT INTO `admin_operation_log` VALUES (65, 1, 'admin/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 19:57:12', '2020-04-03 19:57:12');
INSERT INTO `admin_operation_log` VALUES (66, 1, 'admin/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 19:57:27', '2020-04-03 19:57:27');
INSERT INTO `admin_operation_log` VALUES (67, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"4\",\"_model\":\"App_Book\",\"_token\":\"ngwdLKLz2nGkN4EtfclGR32DvOTEBvkeXmnOIFIW\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-04-03 19:57:34', '2020-04-03 19:57:34');
INSERT INTO `admin_operation_log` VALUES (68, 1, 'admin/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 19:57:34', '2020-04-03 19:57:34');
INSERT INTO `admin_operation_log` VALUES (69, 1, 'admin/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 19:57:43', '2020-04-03 19:57:43');
INSERT INTO `admin_operation_log` VALUES (70, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 19:57:46', '2020-04-03 19:57:46');
INSERT INTO `admin_operation_log` VALUES (71, 1, 'admin/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 19:57:56', '2020-04-03 19:57:56');
INSERT INTO `admin_operation_log` VALUES (72, 1, 'admin/books/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 19:57:59', '2020-04-03 19:57:59');
INSERT INTO `admin_operation_log` VALUES (73, 1, 'admin/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 19:58:06', '2020-04-03 19:58:06');
INSERT INTO `admin_operation_log` VALUES (74, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 19:58:14', '2020-04-03 19:58:14');
INSERT INTO `admin_operation_log` VALUES (75, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-03 19:58:19', '2020-04-03 19:58:19');
INSERT INTO `admin_operation_log` VALUES (76, 1, 'admin/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 19:58:24', '2020-04-03 19:58:24');
INSERT INTO `admin_operation_log` VALUES (77, 1, 'admin/books/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 20:00:14', '2020-04-03 20:00:14');
INSERT INTO `admin_operation_log` VALUES (78, 1, 'admin/books', 'POST', '127.0.0.1', '{\"name\":\"The Hunger Games\",\"author\":\"Suzanne Collins\",\"isbn\":\"0439023483\",\"gid\":\"1\",\"pagenum\":\"374\",\"price\":\"32\",\"qty\":\"5\",\"pid\":\"1\",\"expenditure\":\"120\",\"_token\":\"UWVuuR1CiG826tYFMD7VKNzr20FTHtwMo8MdnNbS\",\"_previous_\":\"http:\\/\\/bookstore\\/admin\\/books\"}', '2020-04-03 20:04:03', '2020-04-03 20:04:03');
INSERT INTO `admin_operation_log` VALUES (79, 1, 'admin/books', 'GET', '127.0.0.1', '[]', '2020-04-03 20:04:03', '2020-04-03 20:04:03');
INSERT INTO `admin_operation_log` VALUES (80, 1, 'admin/books/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 20:04:31', '2020-04-03 20:04:31');
INSERT INTO `admin_operation_log` VALUES (81, 1, 'admin/books/5', 'PUT', '127.0.0.1', '{\"name\":\"The Hunger Games\",\"author\":\"Suzanne Collins\",\"isbn\":\"0439023483\",\"gid\":\"1\",\"pagenum\":\"374\",\"price\":\"32\",\"qty\":\"5\",\"pid\":\"1\",\"expenditure\":\"120\",\"_token\":\"UWVuuR1CiG826tYFMD7VKNzr20FTHtwMo8MdnNbS\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/bookstore\\/admin\\/books\"}', '2020-04-03 20:04:43', '2020-04-03 20:04:43');
INSERT INTO `admin_operation_log` VALUES (82, 1, 'admin/books', 'GET', '127.0.0.1', '[]', '2020-04-03 20:04:43', '2020-04-03 20:04:43');
INSERT INTO `admin_operation_log` VALUES (83, 1, 'admin/books/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 20:04:52', '2020-04-03 20:04:52');
INSERT INTO `admin_operation_log` VALUES (84, 1, 'admin/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 20:05:40', '2020-04-03 20:05:40');
INSERT INTO `admin_operation_log` VALUES (85, 1, 'admin/books/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 20:05:43', '2020-04-03 20:05:43');
INSERT INTO `admin_operation_log` VALUES (86, 1, 'admin/books/5', 'PUT', '127.0.0.1', '{\"name\":\"The Hunger Games\",\"author\":\"Suzanne Collins\",\"isbn\":\"0439023483\",\"gid\":\"1\",\"pagenum\":\"374\",\"price\":\"32\",\"qty\":\"5\",\"pid\":\"1\",\"expenditure\":\"120\",\"_token\":\"UWVuuR1CiG826tYFMD7VKNzr20FTHtwMo8MdnNbS\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/bookstore\\/admin\\/books\"}', '2020-04-03 20:07:03', '2020-04-03 20:07:03');
INSERT INTO `admin_operation_log` VALUES (87, 1, 'admin/books', 'GET', '127.0.0.1', '[]', '2020-04-03 20:07:03', '2020-04-03 20:07:03');
INSERT INTO `admin_operation_log` VALUES (88, 1, 'admin/books', 'GET', '127.0.0.1', '[]', '2020-04-03 20:09:54', '2020-04-03 20:09:54');
INSERT INTO `admin_operation_log` VALUES (89, 1, 'admin/books/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 20:09:59', '2020-04-03 20:09:59');
INSERT INTO `admin_operation_log` VALUES (90, 1, 'admin/books', 'POST', '127.0.0.1', '{\"name\":\"Harry Potter and the Philosopher\'s Stone\",\"author\":\"J.K. Rowling\",\"isbn\":\"0439554934\",\"gid\":\"2\",\"pagenum\":\"456\",\"price\":\"42\",\"qty\":\"80\",\"pid\":\"2\",\"expenditure\":\"199\",\"_token\":\"UWVuuR1CiG826tYFMD7VKNzr20FTHtwMo8MdnNbS\",\"_previous_\":\"http:\\/\\/bookstore\\/admin\\/books\"}', '2020-04-03 20:11:10', '2020-04-03 20:11:10');
INSERT INTO `admin_operation_log` VALUES (91, 1, 'admin/books', 'GET', '127.0.0.1', '[]', '2020-04-03 20:11:10', '2020-04-03 20:11:10');
INSERT INTO `admin_operation_log` VALUES (92, 1, 'admin/books', 'GET', '127.0.0.1', '[]', '2020-04-03 20:12:41', '2020-04-03 20:12:41');
INSERT INTO `admin_operation_log` VALUES (93, 1, 'admin/books/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 20:12:57', '2020-04-03 20:12:57');
INSERT INTO `admin_operation_log` VALUES (94, 1, 'admin/books/2', 'PUT', '127.0.0.1', '{\"name\":\"Harry Potter and the Philosopher\'s Stone\",\"author\":\"J.K. Rowling\",\"isbn\":\"0439554934\",\"gid\":\"2\",\"pagenum\":\"456\",\"price\":\"42\",\"qty\":\"80\",\"pid\":\"2\",\"expenditure\":\"199\",\"_token\":\"UWVuuR1CiG826tYFMD7VKNzr20FTHtwMo8MdnNbS\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/bookstore\\/admin\\/books\"}', '2020-04-03 20:13:16', '2020-04-03 20:13:16');
INSERT INTO `admin_operation_log` VALUES (95, 1, 'admin/books', 'GET', '127.0.0.1', '[]', '2020-04-03 20:13:16', '2020-04-03 20:13:16');
INSERT INTO `admin_operation_log` VALUES (96, 1, 'admin/books/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 20:13:39', '2020-04-03 20:13:39');
INSERT INTO `admin_operation_log` VALUES (97, 1, 'admin/books/2', 'PUT', '127.0.0.1', '{\"name\":\"Harry Potter and the Philosopher\'s Stone\",\"author\":\"J.K. Rowling\",\"isbn\":\"0439554934\",\"gid\":\"2\",\"pagenum\":\"456\",\"price\":\"42\",\"qty\":\"80\",\"pid\":\"2\",\"expenditure\":\"199\",\"_token\":\"UWVuuR1CiG826tYFMD7VKNzr20FTHtwMo8MdnNbS\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/bookstore\\/admin\\/books\"}', '2020-04-03 20:13:46', '2020-04-03 20:13:46');
INSERT INTO `admin_operation_log` VALUES (98, 1, 'admin/books', 'GET', '127.0.0.1', '[]', '2020-04-03 20:13:46', '2020-04-03 20:13:46');
INSERT INTO `admin_operation_log` VALUES (99, 1, 'admin/books/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 20:13:59', '2020-04-03 20:13:59');
INSERT INTO `admin_operation_log` VALUES (100, 1, 'admin/books/2', 'PUT', '127.0.0.1', '{\"name\":\"Harry Potter and the Philosopher\'s Stone\",\"author\":\"J.K. Rowling\",\"isbn\":\"0439554934\",\"gid\":\"2\",\"pagenum\":\"456\",\"price\":\"42\",\"qty\":\"80\",\"pid\":\"2\",\"expenditure\":\"199\",\"_token\":\"UWVuuR1CiG826tYFMD7VKNzr20FTHtwMo8MdnNbS\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/bookstore\\/admin\\/books\"}', '2020-04-03 20:14:38', '2020-04-03 20:14:38');
INSERT INTO `admin_operation_log` VALUES (101, 1, 'admin/books', 'GET', '127.0.0.1', '[]', '2020-04-03 20:14:39', '2020-04-03 20:14:39');
INSERT INTO `admin_operation_log` VALUES (102, 1, 'admin/books/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 20:15:41', '2020-04-03 20:15:41');
INSERT INTO `admin_operation_log` VALUES (103, 1, 'admin/books/2', 'PUT', '127.0.0.1', '{\"name\":\"Harry Potter and the Philosopher\'s Stone\",\"author\":\"J.K. Rowling\",\"isbn\":\"0439554934\",\"gid\":\"2\",\"pagenum\":\"456\",\"price\":\"42\",\"qty\":\"80\",\"pid\":\"2\",\"expenditure\":\"199\",\"_token\":\"UWVuuR1CiG826tYFMD7VKNzr20FTHtwMo8MdnNbS\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/bookstore\\/admin\\/books\"}', '2020-04-03 20:15:49', '2020-04-03 20:15:49');
INSERT INTO `admin_operation_log` VALUES (104, 1, 'admin/books', 'GET', '127.0.0.1', '[]', '2020-04-03 20:15:49', '2020-04-03 20:15:49');
INSERT INTO `admin_operation_log` VALUES (105, 1, 'admin/books/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 20:17:11', '2020-04-03 20:17:11');
INSERT INTO `admin_operation_log` VALUES (106, 1, 'admin/books', 'POST', '127.0.0.1', '{\"name\":\"Twilight\",\"author\":\"Stephenie Meyer\",\"isbn\":\"0316015849\",\"gid\":\"3\",\"pagenum\":\"544\",\"price\":\"33\",\"qty\":\"78\",\"pid\":\"3\",\"expenditure\":\"67\",\"_token\":\"UWVuuR1CiG826tYFMD7VKNzr20FTHtwMo8MdnNbS\",\"_previous_\":\"http:\\/\\/bookstore\\/admin\\/books\"}', '2020-04-03 20:18:43', '2020-04-03 20:18:43');
INSERT INTO `admin_operation_log` VALUES (107, 1, 'admin/books', 'GET', '127.0.0.1', '[]', '2020-04-03 20:18:43', '2020-04-03 20:18:43');
INSERT INTO `admin_operation_log` VALUES (108, 1, 'admin/books', 'GET', '127.0.0.1', '[]', '2020-04-03 20:21:49', '2020-04-03 20:21:49');
INSERT INTO `admin_operation_log` VALUES (109, 1, 'admin/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 20:22:08', '2020-04-03 20:22:08');
INSERT INTO `admin_operation_log` VALUES (110, 1, 'admin/books/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 20:22:19', '2020-04-03 20:22:19');
INSERT INTO `admin_operation_log` VALUES (111, 1, 'admin/books', 'POST', '127.0.0.1', '{\"name\":\"To Kill a Mockingbird\",\"author\":\"Harper Lee\",\"isbn\":\"0061120081\",\"gid\":\"8\",\"pagenum\":\"323\",\"price\":\"77\",\"qty\":\"32\",\"pid\":\"8\",\"expenditure\":\"88\",\"_token\":\"UWVuuR1CiG826tYFMD7VKNzr20FTHtwMo8MdnNbS\",\"_previous_\":\"http:\\/\\/bookstore\\/admin\\/books\"}', '2020-04-03 20:25:04', '2020-04-03 20:25:04');
INSERT INTO `admin_operation_log` VALUES (112, 1, 'admin/books', 'GET', '127.0.0.1', '[]', '2020-04-03 20:25:04', '2020-04-03 20:25:04');
INSERT INTO `admin_operation_log` VALUES (113, 1, 'admin/books/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 20:30:23', '2020-04-03 20:30:23');
INSERT INTO `admin_operation_log` VALUES (114, 1, 'admin/books', 'POST', '127.0.0.1', '{\"name\":\"The Great Gatsby\",\"author\":\"F. Scott Fitzgerald\",\"isbn\":\"0743273567\",\"gid\":\"9\",\"pagenum\":\"180\",\"price\":\"23\",\"qty\":\"66\",\"pid\":\"9\",\"expenditure\":\"112\",\"_token\":\"UWVuuR1CiG826tYFMD7VKNzr20FTHtwMo8MdnNbS\",\"_previous_\":\"http:\\/\\/bookstore\\/admin\\/books\"}', '2020-04-03 20:33:03', '2020-04-03 20:33:03');
INSERT INTO `admin_operation_log` VALUES (115, 1, 'admin/books', 'GET', '127.0.0.1', '[]', '2020-04-03 20:33:03', '2020-04-03 20:33:03');
INSERT INTO `admin_operation_log` VALUES (116, 1, 'admin/books/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 20:33:24', '2020-04-03 20:33:24');
INSERT INTO `admin_operation_log` VALUES (117, 1, 'admin/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 20:33:30', '2020-04-03 20:33:30');
INSERT INTO `admin_operation_log` VALUES (118, 1, 'admin/books', 'GET', '127.0.0.1', '[]', '2020-04-03 20:36:09', '2020-04-03 20:36:09');
INSERT INTO `admin_operation_log` VALUES (119, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 20:37:56', '2020-04-03 20:37:56');
INSERT INTO `admin_operation_log` VALUES (120, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 20:38:03', '2020-04-03 20:38:03');
INSERT INTO `admin_operation_log` VALUES (121, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 20:38:06', '2020-04-03 20:38:06');
INSERT INTO `admin_operation_log` VALUES (122, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 20:50:11', '2020-04-03 20:50:11');
INSERT INTO `admin_operation_log` VALUES (123, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 20:50:16', '2020-04-03 20:50:16');
INSERT INTO `admin_operation_log` VALUES (124, 1, 'admin/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 20:50:18', '2020-04-03 20:50:18');
INSERT INTO `admin_operation_log` VALUES (125, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 21:03:55', '2020-04-03 21:03:55');
INSERT INTO `admin_operation_log` VALUES (126, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"order\",\"icon\":\"fa-database\",\"uri\":\"sss\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"UWVuuR1CiG826tYFMD7VKNzr20FTHtwMo8MdnNbS\"}', '2020-04-03 21:05:47', '2020-04-03 21:05:47');
INSERT INTO `admin_operation_log` VALUES (127, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-03 21:05:47', '2020-04-03 21:05:47');
INSERT INTO `admin_operation_log` VALUES (128, 1, 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 21:06:12', '2020-04-03 21:06:12');
INSERT INTO `admin_operation_log` VALUES (129, 1, 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"order\",\"icon\":\"fa-database\",\"uri\":\"order\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"UWVuuR1CiG826tYFMD7VKNzr20FTHtwMo8MdnNbS\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/bookstore\\/admin\\/auth\\/menu\"}', '2020-04-03 21:06:19', '2020-04-03 21:06:19');
INSERT INTO `admin_operation_log` VALUES (130, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-03 21:06:19', '2020-04-03 21:06:19');
INSERT INTO `admin_operation_log` VALUES (131, 1, 'admin/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 21:06:35', '2020-04-03 21:06:35');
INSERT INTO `admin_operation_log` VALUES (132, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 21:06:39', '2020-04-03 21:06:39');
INSERT INTO `admin_operation_log` VALUES (133, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 21:06:41', '2020-04-03 21:06:41');
INSERT INTO `admin_operation_log` VALUES (134, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 21:06:43', '2020-04-03 21:06:43');
INSERT INTO `admin_operation_log` VALUES (135, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-03 21:07:03', '2020-04-03 21:07:03');
INSERT INTO `admin_operation_log` VALUES (136, 1, 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 21:07:07', '2020-04-03 21:07:07');
INSERT INTO `admin_operation_log` VALUES (137, 1, 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"orders\",\"icon\":\"fa-database\",\"uri\":\"orders\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"UWVuuR1CiG826tYFMD7VKNzr20FTHtwMo8MdnNbS\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/bookstore\\/admin\\/auth\\/menu\"}', '2020-04-03 21:07:15', '2020-04-03 21:07:15');
INSERT INTO `admin_operation_log` VALUES (138, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-03 21:07:15', '2020-04-03 21:07:15');
INSERT INTO `admin_operation_log` VALUES (139, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-03 21:07:37', '2020-04-03 21:07:37');
INSERT INTO `admin_operation_log` VALUES (140, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 21:07:44', '2020-04-03 21:07:44');
INSERT INTO `admin_operation_log` VALUES (141, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 21:07:48', '2020-04-03 21:07:48');
INSERT INTO `admin_operation_log` VALUES (142, 1, 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 21:09:32', '2020-04-03 21:09:32');
INSERT INTO `admin_operation_log` VALUES (143, 1, 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"Orders\",\"icon\":\"fa-database\",\"uri\":\"Orders\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"UWVuuR1CiG826tYFMD7VKNzr20FTHtwMo8MdnNbS\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/bookstore\\/admin\\/auth\\/menu\"}', '2020-04-03 21:09:42', '2020-04-03 21:09:42');
INSERT INTO `admin_operation_log` VALUES (144, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-03 21:09:42', '2020-04-03 21:09:42');
INSERT INTO `admin_operation_log` VALUES (145, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-03 21:09:51', '2020-04-03 21:09:51');
INSERT INTO `admin_operation_log` VALUES (146, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 21:10:05', '2020-04-03 21:10:05');
INSERT INTO `admin_operation_log` VALUES (147, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 21:10:06', '2020-04-03 21:10:06');
INSERT INTO `admin_operation_log` VALUES (148, 1, 'admin/auth/menu/9', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"UWVuuR1CiG826tYFMD7VKNzr20FTHtwMo8MdnNbS\"}', '2020-04-03 21:10:19', '2020-04-03 21:10:19');
INSERT INTO `admin_operation_log` VALUES (149, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 21:10:19', '2020-04-03 21:10:19');
INSERT INTO `admin_operation_log` VALUES (150, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 21:10:22', '2020-04-03 21:10:22');
INSERT INTO `admin_operation_log` VALUES (151, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 21:10:25', '2020-04-03 21:10:25');
INSERT INTO `admin_operation_log` VALUES (152, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"Order\",\"icon\":\"fa-adjust\",\"uri\":\"Order\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"UWVuuR1CiG826tYFMD7VKNzr20FTHtwMo8MdnNbS\"}', '2020-04-03 21:11:21', '2020-04-03 21:11:21');
INSERT INTO `admin_operation_log` VALUES (153, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-03 21:11:22', '2020-04-03 21:11:22');
INSERT INTO `admin_operation_log` VALUES (154, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-03 21:13:35', '2020-04-03 21:13:35');
INSERT INTO `admin_operation_log` VALUES (155, 1, 'admin/auth/menu/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 21:13:46', '2020-04-03 21:13:46');
INSERT INTO `admin_operation_log` VALUES (156, 1, 'admin/auth/menu/3', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"Users\",\"icon\":\"fa-users\",\"uri\":\"auth\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"UWVuuR1CiG826tYFMD7VKNzr20FTHtwMo8MdnNbS\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/bookstore\\/admin\\/auth\\/menu\"}', '2020-04-03 21:13:56', '2020-04-03 21:13:56');
INSERT INTO `admin_operation_log` VALUES (157, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-03 21:13:57', '2020-04-03 21:13:57');
INSERT INTO `admin_operation_log` VALUES (158, 1, 'admin/auth/menu/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 21:14:05', '2020-04-03 21:14:05');
INSERT INTO `admin_operation_log` VALUES (159, 1, 'admin/auth/menu/10', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"Order\",\"icon\":\"fa-adjust\",\"uri\":\"auth\\/order\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"UWVuuR1CiG826tYFMD7VKNzr20FTHtwMo8MdnNbS\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/bookstore\\/admin\\/auth\\/menu\"}', '2020-04-03 21:14:17', '2020-04-03 21:14:17');
INSERT INTO `admin_operation_log` VALUES (160, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-03 21:14:17', '2020-04-03 21:14:17');
INSERT INTO `admin_operation_log` VALUES (161, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-03 21:14:25', '2020-04-03 21:14:25');
INSERT INTO `admin_operation_log` VALUES (162, 1, 'admin/auth/menu/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 21:14:52', '2020-04-03 21:14:52');
INSERT INTO `admin_operation_log` VALUES (163, 1, 'admin/auth/menu/10', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"Order\",\"icon\":\"fa-adjust\",\"uri\":\"auth\\/orders\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"UWVuuR1CiG826tYFMD7VKNzr20FTHtwMo8MdnNbS\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/bookstore\\/admin\\/auth\\/menu\"}', '2020-04-03 21:14:56', '2020-04-03 21:14:56');
INSERT INTO `admin_operation_log` VALUES (164, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-03 21:14:56', '2020-04-03 21:14:56');
INSERT INTO `admin_operation_log` VALUES (165, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-03 21:50:31', '2020-04-03 21:50:31');
INSERT INTO `admin_operation_log` VALUES (166, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-04 10:42:17', '2020-04-04 10:42:17');
INSERT INTO `admin_operation_log` VALUES (167, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-04 10:42:17', '2020-04-04 10:42:17');
INSERT INTO `admin_operation_log` VALUES (168, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-04 10:42:17', '2020-04-04 10:42:17');
INSERT INTO `admin_operation_log` VALUES (169, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-04 10:42:32', '2020-04-04 10:42:32');
INSERT INTO `admin_operation_log` VALUES (170, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-04 10:42:40', '2020-04-04 10:42:40');
INSERT INTO `admin_operation_log` VALUES (171, 1, 'admin/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-04 11:06:35', '2020-04-04 11:06:35');
INSERT INTO `admin_operation_log` VALUES (172, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-04 11:06:42', '2020-04-04 11:06:42');
INSERT INTO `admin_operation_log` VALUES (173, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-04 11:09:11', '2020-04-04 11:09:11');
INSERT INTO `admin_operation_log` VALUES (174, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-04 11:36:54', '2020-04-04 11:36:54');
INSERT INTO `admin_operation_log` VALUES (175, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-04 11:37:14', '2020-04-04 11:37:14');
INSERT INTO `admin_operation_log` VALUES (176, 1, 'admin/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-04 11:37:22', '2020-04-04 11:37:22');
INSERT INTO `admin_operation_log` VALUES (177, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-04 11:37:46', '2020-04-04 11:37:46');
INSERT INTO `admin_operation_log` VALUES (178, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-04 11:38:01', '2020-04-04 11:38:01');
INSERT INTO `admin_operation_log` VALUES (179, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-04 11:38:06', '2020-04-04 11:38:06');
INSERT INTO `admin_operation_log` VALUES (180, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-04 11:38:19', '2020-04-04 11:38:19');
INSERT INTO `admin_operation_log` VALUES (181, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-04 11:40:25', '2020-04-04 11:40:25');
INSERT INTO `admin_operation_log` VALUES (182, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-04 11:40:53', '2020-04-04 11:40:53');

SET FOREIGN_KEY_CHECKS = 1;
