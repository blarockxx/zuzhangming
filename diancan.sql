/*
 Navicat Premium Data Transfer

 Source Server         : LOCAL
 Source Server Type    : MySQL
 Source Server Version : 80034
 Source Host           : localhost:3306
 Source Schema         : diancan

 Target Server Type    : MySQL
 Target Server Version : 80034
 File Encoding         : 65001

 Date: 06/11/2024 17:29:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `desk_id` int(0) NULL DEFAULT NULL,
  `product_id` int(0) NULL DEFAULT NULL,
  `num` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------

-- ----------------------------
-- Table structure for desk
-- ----------------------------
DROP TABLE IF EXISTS `desk`;
CREATE TABLE `desk`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `dname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of desk
-- ----------------------------
INSERT INTO `desk` VALUES (1, '普通包间', '1');
INSERT INTO `desk` VALUES (2, '豪华包间', '2');
INSERT INTO `desk` VALUES (3, '顶层包间', '3');

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `order_id` int(0) NULL DEFAULT NULL,
  `pro_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `pro_price` decimal(10, 2) NULL DEFAULT NULL,
  `pro_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `num` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES (2, 2, '水煮鱼', 31.00, 'MjUweDI1MA (1).webp', 5);
INSERT INTO `order_detail` VALUES (3, 2, '担担面', 10.00, 'NjAwX2MxXzQwMA.webp', 1);
INSERT INTO `order_detail` VALUES (4, 2, '荷塘小炒', 12.00, 'MTYweDEyMA.webp', 1);
INSERT INTO `order_detail` VALUES (5, 3, '水煮鱼', 31.00, 'MjUweDI1MA (1).webp', 8);
INSERT INTO `order_detail` VALUES (6, 3, '担担面', 10.00, 'NjAwX2MxXzQwMA.webp', 3);
INSERT INTO `order_detail` VALUES (7, 3, '辣子鸡', 21.00, 'MjUweDI1MA.webp', 5);
INSERT INTO `order_detail` VALUES (8, 3, '荷塘小炒', 12.00, 'MTYweDEyMA.webp', 6);
INSERT INTO `order_detail` VALUES (9, 4, '辣子鸡', 21.00, 'MjUweDI1MA.webp', 1);
INSERT INTO `order_detail` VALUES (10, 4, '菠萝咕咾肉（鸡肉版）', 31.00, 'MTYweDEyMA.webp', 1);
INSERT INTO `order_detail` VALUES (11, 4, '水煮鱼', 31.00, 'MjUweDI1MA (1).webp', 1);
INSERT INTO `order_detail` VALUES (12, 4, '担担面', 10.00, 'NjAwX2MxXzQwMA.webp', 1);
INSERT INTO `order_detail` VALUES (13, 5, '辣子鸡', 21.00, 'MjUweDI1MA.webp', 4);
INSERT INTO `order_detail` VALUES (14, 5, '水煮鱼', 31.00, 'MjUweDI1MA (1).webp', 3);
INSERT INTO `order_detail` VALUES (15, 5, '菠萝咕咾肉（鸡肉版）', 31.00, 'MTYweDEyMA.webp', 5);
INSERT INTO `order_detail` VALUES (16, 6, '担担面', 10.00, 'NjAwX2MxXzQwMA.webp', 1);
INSERT INTO `order_detail` VALUES (17, 6, '荷塘小炒', 12.00, 'MTYweDEyMA.webp', 1);
INSERT INTO `order_detail` VALUES (18, 6, '菠萝咕咾肉（鸡肉版）', 31.00, 'MTYweDEyMA.webp', 2);
INSERT INTO `order_detail` VALUES (19, 6, '辣子鸡', 21.00, 'MjUweDI1MA.webp', 3);
INSERT INTO `order_detail` VALUES (20, 7, '菠萝咕咾肉（鸡肉版）', 31.00, 'MTYweDEyMA.webp', 3);
INSERT INTO `order_detail` VALUES (21, 8, '辣子鸡', 21.00, 'MjUweDI1MA.webp', 2);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `desk_id` int(0) NULL DEFAULT NULL,
  `prople_count` int(0) NULL DEFAULT NULL,
  `descr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `total` decimal(10, 2) NULL DEFAULT NULL,
  `states` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '0待支付，1已取消 2已完成',
  `order_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `pay_time` datetime(0) NULL DEFAULT NULL,
  `finial_time` datetime(0) NULL DEFAULT NULL,
  `cal_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, 1, 1, '1·11', 71.00, '3', '2024-10-15 16:01:03', '2024-11-04 14:05:27', '2024-10-04 15:05:39', '2024-11-14 01:28:25');
INSERT INTO `orders` VALUES (2, 2, 0, '111', 0.00, '2', '2024-11-05 15:47:25', NULL, NULL, NULL);
INSERT INTO `orders` VALUES (3, 2, 2, '', 455.00, '2', '2024-11-06 11:03:13', NULL, NULL, NULL);
INSERT INTO `orders` VALUES (4, 2, 1, '甜', 93.00, '2', '2024-11-06 16:07:47', NULL, NULL, NULL);
INSERT INTO `orders` VALUES (5, 3, 1, '', 332.00, '2', '2024-11-06 16:12:30', NULL, NULL, NULL);
INSERT INTO `orders` VALUES (6, 1, 1, '', 147.00, '3', '2024-11-06 17:01:32', NULL, NULL, NULL);
INSERT INTO `orders` VALUES (7, 3, 1, '辣的', 93.00, '2', '2024-11-06 17:08:25', NULL, NULL, NULL);
INSERT INTO `orders` VALUES (8, 3, 1, '辣的', 42.00, '3', '2024-11-06 17:08:43', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `pname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `old_price` decimal(10, 2) NULL DEFAULT NULL,
  `taste` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sale_month` int(0) NULL DEFAULT 0,
  `sale_on_off` tinyint(0) NULL DEFAULT 0,
  `tid` int(0) NULL DEFAULT NULL,
  `weight` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, '辣子鸡', 'MjUweDI1MA.webp', 21.00, 31.00, '麻辣', 15, 1, 1, 5);
INSERT INTO `product` VALUES (2, '水煮鱼', 'MjUweDI1MA (1).webp', 31.00, 40.00, '香辣', 17, 1, 1, 2);
INSERT INTO `product` VALUES (3, '担担面', 'NjAwX2MxXzQwMA.webp', 10.00, 15.00, '甜辣', 6, 1, 1, 2);
INSERT INTO `product` VALUES (4, '荷塘小炒', 'MTYweDEyMA.webp', 12.00, 13.00, '甜', 8, 1, 2, 2);
INSERT INTO `product` VALUES (5, '菠萝咕咾肉（鸡肉版）', 'MTYweDEyMA.webp', 31.00, 45.00, '甜', 11, 1, 1, 3);

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `tname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `weight` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES (1, '川菜', NULL);
INSERT INTO `type` VALUES (2, '粤菜', NULL);
INSERT INTO `type` VALUES (3, '东北菜', NULL);
INSERT INTO `type` VALUES (4, '港式菜', NULL);
INSERT INTO `type` VALUES (5, '新疆肉串', NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (8, '苏苏', '123123');
INSERT INTO `users` VALUES (9, '管理', '111');

SET FOREIGN_KEY_CHECKS = 1;
