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

 Date: 04/04/2020 14:25:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2016_01_04_173148_create_admin_tables', 1);
INSERT INTO `migrations` VALUES (4, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (5, '2020_03_30_031039_create_genres_table', 1);
INSERT INTO `migrations` VALUES (6, '2020_03_30_031123_create_books_table', 1);
INSERT INTO `migrations` VALUES (7, '2020_03_30_034124_create_orders_table', 1);
INSERT INTO `migrations` VALUES (8, '2020_03_30_034229_create_publishers_table', 1);
INSERT INTO `migrations` VALUES (9, '2020_03_30_093304_create_order_books_table', 1);
INSERT INTO `migrations` VALUES (10, '2020_03_30_142335_alter_publishers_table', 1);
INSERT INTO `migrations` VALUES (11, '2020_03_30_142415_alter_books_table', 1);
INSERT INTO `migrations` VALUES (12, '2020_03_30_145829_create_book_genres_table', 1);
INSERT INTO `migrations` VALUES (13, '2020_03_31_033722_add_books_expenditure', 1);

SET FOREIGN_KEY_CHECKS = 1;
