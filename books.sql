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

 Date: 04/04/2020 14:26:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `isbn` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gid` int(11) NOT NULL,
  `pagenum` int(11) NOT NULL,
  `price` double(8, 2) NOT NULL,
  `qty` int(11) NOT NULL,
  `imgurl` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `pid` int(11) NOT NULL,
  `expenditure` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of books
-- ----------------------------
INSERT INTO `books` VALUES (1, 'The Hunger Games', 'Suzanne Collins', '0439023483', 1, 374, 32.00, 5, 'images/6.jfif', '2020-04-03 20:04:03', '2020-04-03 20:07:03', 1, 120);
INSERT INTO `books` VALUES (2, 'Harry Potter and the Philosopher\'s Stone', 'J.K. Rowling', '0439554934', 2, 456, 42.00, 80, 'images/7.jfif', '2020-04-03 20:11:10', '2020-04-03 20:15:49', 2, 199);
INSERT INTO `books` VALUES (3, 'Twilight', 'Stephenie Meyer', '0316015849', 3, 544, 33.00, 78, 'images/3.jfif', '2020-04-03 20:18:43', '2020-04-03 20:18:43', 3, 67);
INSERT INTO `books` VALUES (4, 'To Kill a Mockingbird', 'Harper Lee', '0061120081', 4, 323, 77.00, 32, 'images/8.jfif', '2020-04-03 20:25:04', '2020-04-03 20:25:04', 4, 88);
INSERT INTO `books` VALUES (5, 'The Great Gatsby', 'F. Scott Fitzgerald', '0743273567', 5, 180, 23.00, 66, 'images/9.jfif', '2020-04-03 20:33:03', '2020-04-03 20:33:03', 5, 112);

SET FOREIGN_KEY_CHECKS = 1;
