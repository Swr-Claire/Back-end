/*
 Navicat Premium Dump SQL

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80039 (8.0.39)
 Source Host           : localhost:3306
 Source Schema         : demo

 Target Server Type    : MySQL
 Target Server Version : 80039 (8.0.39)
 File Encoding         : 65001

 Date: 25/10/2024 21:04:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '姓名',
  `age` int NULL DEFAULT NULL COMMENT '年龄',
  `sex` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '性别',
  `address` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '学院',
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '电话',
  `create_time` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (2, 'Aaa', 18, '男', '格兰芬多', '12312341234', NULL);
INSERT INTO `user` VALUES (3, 'Bbb', 9, '女', '格兰芬多', '23423452345', NULL);
INSERT INTO `user` VALUES (4, 'Ccc', 21, '男', '斯莱特林', '34534563456', NULL);
INSERT INTO `user` VALUES (5, 'Ddd', 19, '女', '斯莱特林', '45645674567', NULL);
INSERT INTO `user` VALUES (6, '宋文睿', 20, '女', '梅努斯国际工程学院', '13963323162', '2024-10-25');
INSERT INTO `user` VALUES (7, '罗恩', 18, '男', '格兰芬多', '12345678900', '2024-10-25');
INSERT INTO `user` VALUES (11, '哈利波特', 18, '男', '格兰芬多', '23456789012', '2024-10-25');
INSERT INTO `user` VALUES (12, '斯内普', 50, '男', '斯莱特林', '09876543210', '2024-10-25');
INSERT INTO `user` VALUES (13, '赫敏', 18, '女', '格兰芬多', '98765432198', '2024-10-25');

SET FOREIGN_KEY_CHECKS = 1;
