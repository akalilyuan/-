/*
 Navicat Premium Data Transfer

 Source Server         : mySQL
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : localhost:3306
 Source Schema         : manage

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 03/12/2022 22:46:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `identify` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'zhangsan', '$2a$10$.WsQMichq6OuiTyiYOAFb.gFjwRiaCZepSSAG/DzgD.1/mQr7KJoW', '2022-11-24 01:32:42', '管理员');
INSERT INTO `admin` VALUES (2, 'test', '$2a$10$ujeM6V1FHmq6kBL35.UAl.zIIaGVXuIdmtPJIEPwrpHTvZaHtijFm', '2022-11-29 21:48:53', '员工');
INSERT INTO `admin` VALUES (3, 'test1', '$2a$10$xh.LeIA8RWDMf49r0NNef.G.szqS7pICiljAw5yuJfNLpFXtlc4Y.', '2022-11-29 22:07:00', '超级管理员');

-- ----------------------------
-- Table structure for funds
-- ----------------------------
DROP TABLE IF EXISTS `funds`;
CREATE TABLE `funds`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `createtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收支类型',
  `income` int(100) NULL DEFAULT NULL COMMENT '收入\r\n',
  `expenditure` int(100) NULL DEFAULT NULL COMMENT '支出',
  `account` int(100) NULL DEFAULT NULL COMMENT '账户现金',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of funds
-- ----------------------------
INSERT INTO `funds` VALUES (1, '2024-12-01 21:13:00', '优惠券', 200, 200, 5000, '购买全套Vue课程', '购买课程');
INSERT INTO `funds` VALUES (2, '2024-12-02 21:51:46', '转账', 0, 20000, 5000000, '公司转账', '转给xx公司');
INSERT INTO `funds` VALUES (3, '2024-12-02 22:02:14', '充值', 9, 2000, 1000000, '公司20名员工话费', '手机话费');
INSERT INTO `funds` VALUES (4, '2024-12-02 22:04:26', '优惠券', 1000000, 0, 2000000, '购买JS课程', '购买JS课程');
INSERT INTO `funds` VALUES (6, '2024-12-02 22:33:58', '转账', 100, 100, 1000, '100', 'update');
INSERT INTO `funds` VALUES (8, '2024-12-02 23:20:23', '提现手续费', 22, 33, 10000, '33222', 'testpageni`');

-- ----------------------------
-- Table structure for mall
-- ----------------------------
DROP TABLE IF EXISTS `mall`;
CREATE TABLE `mall`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编号',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司名称',
  `buy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '购买数量',
  `sell` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '卖出数量',
  `date` datetime NULL DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall
-- ----------------------------
INSERT INTO `mall` VALUES (1, 'l79798440', '精心科技有限公司', '235', '305', '2015-05-05 00:00:00');

-- ----------------------------
-- Table structure for phone_buy
-- ----------------------------
DROP TABLE IF EXISTS `phone_buy`;
CREATE TABLE `phone_buy`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `curse` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `today_buy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `month_buy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `total_buy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of phone_buy
-- ----------------------------
INSERT INTO `phone_buy` VALUES (1, 'oppo', '500', '3500', '22000');
INSERT INTO `phone_buy` VALUES (2, 'vivo', '300', '2200', '24000');
INSERT INTO `phone_buy` VALUES (3, 'apple', '800', '4500', '65000');
INSERT INTO `phone_buy` VALUES (4, 'xiaomi', '1200', '6500', '45000');
INSERT INTO `phone_buy` VALUES (5, 'sansung', '300', '2000', '34000');
INSERT INTO `phone_buy` VALUES (6, 'meizu', '350', '3000', '22000');

-- ----------------------------
-- Table structure for phone_sales
-- ----------------------------
DROP TABLE IF EXISTS `phone_sales`;
CREATE TABLE `phone_sales`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `apple` int(255) NULL DEFAULT NULL,
  `vivo` int(255) NULL DEFAULT NULL,
  `oppo` int(255) NULL DEFAULT NULL,
  `meizu` int(255) NULL DEFAULT NULL,
  `xiaomi` int(255) NULL DEFAULT NULL,
  `sansung` int(255) NULL DEFAULT NULL,
  `date` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of phone_sales
-- ----------------------------
INSERT INTO `phone_sales` VALUES (1, 2246, 1034, 6523, 6248, 7816, 6012, '2022-09-04 13:15:27');
INSERT INTO `phone_sales` VALUES (2, 6647, 1880, 3204, 1224, 6657, 2929, '2022-09-03 13:15:27');
INSERT INTO `phone_sales` VALUES (3, 5021, 1395, 3711, 4405, 3993, 7561, '2022-09-02 13:15:27');
INSERT INTO `phone_sales` VALUES (4, 5458, 1984, 3500, 5457, 7348, 5412, '2022-09-01 13:15:27');
INSERT INTO `phone_sales` VALUES (5, 4392, 6844, 1956, 1573, 2381, 6140, '2022-08-31 13:15:27');
INSERT INTO `phone_sales` VALUES (6, 3013, 5575, 3691, 6982, 7708, 2323, '2022-08-30 13:15:27');
INSERT INTO `phone_sales` VALUES (7, 655, 5309, 3295, 3860, 4674, 7151, '2022-08-29 13:15:27');
INSERT INTO `phone_sales` VALUES (8, 3818, 6239, 1332, 1789, 413, 6458, '2022-08-28 13:15:27');
INSERT INTO `phone_sales` VALUES (9, 7511, 6097, 2445, 7515, 3611, 3248, '2022-08-27 13:15:27');
INSERT INTO `phone_sales` VALUES (10, 5122, 6524, 2396, 2050, 109, 3343, '2022-08-26 13:15:27');
INSERT INTO `phone_sales` VALUES (11, 6529, 1858, 4771, 6069, 257, 5744, '2022-08-25 13:15:27');
INSERT INTO `phone_sales` VALUES (12, 970, 6436, 1671, 7698, 6378, 7208, '2022-08-24 13:15:27');
INSERT INTO `phone_sales` VALUES (13, 6085, 3388, 1506, 6472, 7518, 4514, '2022-08-23 13:15:27');
INSERT INTO `phone_sales` VALUES (14, 2745, 6994, 4593, 5781, 3045, 3595, '2022-08-22 13:15:27');
INSERT INTO `phone_sales` VALUES (15, 5131, 1287, 4366, 1888, 6941, 4392, '2022-08-21 13:15:27');
INSERT INTO `phone_sales` VALUES (16, 1989, 3122, 1220, 6583, 5194, 4551, '2022-08-20 13:15:27');
INSERT INTO `phone_sales` VALUES (17, 6290, 4392, 7351, 1574, 5303, 1411, '2022-08-19 13:15:27');
INSERT INTO `phone_sales` VALUES (18, 3259, 7091, 4499, 6254, 3851, 247, '2022-08-18 13:15:27');
INSERT INTO `phone_sales` VALUES (19, 380, 1321, 7773, 2297, 4408, 1993, '2022-08-17 13:15:27');
INSERT INTO `phone_sales` VALUES (20, 7945, 2239, 1362, 5022, 530, 2994, '2022-08-16 13:15:27');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `age` int(10) NULL DEFAULT NULL,
  `addr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birth` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES (2, 'zhangsan', 20, '江苏徐州', '2002-10-30', '男');

-- ----------------------------
-- Table structure for user_status
-- ----------------------------
DROP TABLE IF EXISTS `user_status`;
CREATE TABLE `user_status`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weekday` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `new` int(255) NULL DEFAULT NULL,
  `active` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_status
-- ----------------------------
INSERT INTO `user_status` VALUES (1, '周一', 5, 200);
INSERT INTO `user_status` VALUES (2, '周二', 10, 500);
INSERT INTO `user_status` VALUES (3, '周三', 12, 400);
INSERT INTO `user_status` VALUES (4, '周四', 20, 300);
INSERT INTO `user_status` VALUES (5, '周五', 56, 770);
INSERT INTO `user_status` VALUES (6, '周六', 78, 550);
INSERT INTO `user_status` VALUES (7, '周日', 36, 230);

SET FOREIGN_KEY_CHECKS = 1;
