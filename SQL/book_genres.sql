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

 Date: 04/04/2020 14:26:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for book_genres
-- ----------------------------
DROP TABLE IF EXISTS `book_genres`;
CREATE TABLE `book_genres`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `bid` int(11) NOT NULL,
  `gid` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_genres
-- ----------------------------
INSERT INTO `book_genres` VALUES (1, 1, 1, NULL, NULL);
INSERT INTO `book_genres` VALUES (2, 2, 2, NULL, NULL);
INSERT INTO `book_genres` VALUES (3, 3, 3, NULL, NULL);
INSERT INTO `book_genres` VALUES (4, 4, 4, NULL, NULL);
INSERT INTO `book_genres` VALUES (5, 5, 5, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
