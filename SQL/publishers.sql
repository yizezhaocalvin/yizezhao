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

 Date: 04/04/2020 14:25:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for publishers
-- ----------------------------
DROP TABLE IF EXISTS `publishers`;
CREATE TABLE `publishers`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `account` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of publishers
-- ----------------------------
INSERT INTO `publishers` VALUES (1, NULL, NULL, 'Scholastic Press', 'china', '1@1.com', '1234567', '1234');
INSERT INTO `publishers` VALUES (2, NULL, NULL, 'Arthur A. Levine Books', 'ottawa', '2@2.com', '3221455', '333');
INSERT INTO `publishers` VALUES (3, NULL, NULL, 'Little, Brown Young Readers', 'usa', '3@3.com', '2234111', '1234');
INSERT INTO `publishers` VALUES (4, NULL, NULL, 'Harper Perennial Modern Classics', 'USA', '4@4.com', '22334566', '453');
INSERT INTO `publishers` VALUES (5, NULL, NULL, 'Scribner', 'canada', '5@5.com', '11234421', '1222');

SET FOREIGN_KEY_CHECKS = 1;
