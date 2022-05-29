/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3306
 Source Schema         : db_campus_market

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 17/04/2021 20:00:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gc_book
-- ----------------------------
DROP TABLE IF EXISTS `gc_book`;
CREATE TABLE `gc_book`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '主键',
  `create_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `version` bigint(0) NULL DEFAULT 1 COMMENT '版本号',
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '姓名',
  `iPhone` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '电话',
  `num` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '数量',
  `address` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '地址',
  `appointment_time` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预约时间',
  `is_recovery` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '0未回收1已回收',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '旧书本回收' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gc_book
-- ----------------------------
INSERT INTO `gc_book` VALUES ('0194f50d109c4d9ca2762fe4fd22b644', NULL, '2021-04-11 21:36:59', NULL, '2021-04-11 21:36:59', 1, '源', '1503976177', '10-50本', '111', '2021-04-10', '1');
INSERT INTO `gc_book` VALUES ('21316a919ca44e05ad46e3e7014a71bd', NULL, '2021-04-11 21:26:57', NULL, '2021-04-11 21:26:57', 1, '源', '1503976177', '10-50本', '111', '2021-04-17', '0');
INSERT INTO `gc_book` VALUES ('221562fdf1594a2d9753f5e97a5462de', NULL, '2021-04-11 21:34:49', NULL, '2021-04-11 21:34:49', 1, '源', '1503976177', '5-10本', '111', '2021-04-15', '0');
INSERT INTO `gc_book` VALUES ('27e86ffc399149d08775542b293e9738', NULL, '2021-04-11 21:24:59', NULL, '2021-04-11 21:24:59', 1, '源', '1503976177', '10-50本', '111', '2021-04-10', '0');
INSERT INTO `gc_book` VALUES ('2a30cde002f3409895e7975e0c3c2448', NULL, '2021-04-11 21:14:58', NULL, '2021-04-11 21:14:58', 1, '源', '1503976177', '5-10本', '111', '2021-04-17', '0');
INSERT INTO `gc_book` VALUES ('2a61aec1c6d54a7995fe9796fb8fb225', NULL, '2021-04-11 21:11:18', NULL, '2021-04-11 21:11:18', 1, '源', '1503976177', '10-50本', '111', '2021-04-10', '0');
INSERT INTO `gc_book` VALUES ('392be875056344dfa20f2cf477966701', NULL, '2021-04-11 20:53:13', NULL, '2021-04-11 20:53:13', 1, '源', '1503976177', '10-50本', '111', '2021-04-09', '0');
INSERT INTO `gc_book` VALUES ('3ec54be4e4fa421fa55fda6d97e9fac4', NULL, '2021-04-11 20:45:20', NULL, '2021-04-11 20:45:20', 1, '源2', '1503976177', '10-50本', '111', '2021-04-11', '0');
INSERT INTO `gc_book` VALUES ('4e449df99fe545869893993d8b4da855', NULL, '2021-04-11 21:15:47', NULL, '2021-04-11 21:15:47', 1, '源', '1503976177', '10-50本', '111', '', '0');
INSERT INTO `gc_book` VALUES ('56575a0e61cb43a89303c27d3de0ccb1', NULL, '2021-04-11 21:38:10', NULL, '2021-04-11 21:38:10', 1, '源', '1503976177', '10-50本', '111', '2021-04-16', '0');
INSERT INTO `gc_book` VALUES ('6032927e6ab04d78ab24153bb5587c23', NULL, '2021-04-11 21:35:29', NULL, '2021-04-11 21:35:29', 1, '源', '1503976177', '5-10本', '111', '2021-04-10', '0');
INSERT INTO `gc_book` VALUES ('632678834d014127965532564dddc337', NULL, '2021-04-11 21:27:47', NULL, '2021-04-11 21:27:47', 1, '1111', '15039657160', '5-10本', '1', '2021-04-18', '0');
INSERT INTO `gc_book` VALUES ('6e9e876cd00047adbc910db3bdc14730', NULL, '2021-04-11 18:50:26', NULL, '2021-04-11 18:50:26', 1, '姓名', '电话', '数量', '地址', '预约时间', '0');
INSERT INTO `gc_book` VALUES ('72d5ba2887a74f42b6c96d5531984b72', NULL, '2021-04-11 21:20:22', NULL, '2021-04-11 21:20:22', 1, '源', '1503976177', '10-50本', '111', '2021-04-10', '0');
INSERT INTO `gc_book` VALUES ('8ad935d654b345d1aad273cf76a77d50', NULL, '2021-04-11 21:38:23', NULL, '2021-04-11 21:38:23', 1, '源', '1503976177', '10-50本', '111', '2021-04-23', '0');
INSERT INTO `gc_book` VALUES ('8d31827f5e9f4a299dfd71327b9b3a4e', NULL, '2021-04-11 21:37:23', NULL, '2021-04-11 21:37:23', 1, '源', '1503976177', '5-10本', '111', '2021-04-10', '0');
INSERT INTO `gc_book` VALUES ('94c8478a8b1c42858499d309184efa8c', NULL, '2021-04-11 21:21:19', NULL, '2021-04-11 21:21:19', 1, '源', '1503976177', '5-10本', '111', '', '0');
INSERT INTO `gc_book` VALUES ('962be54ac62443c2a0a3b0d978014d96', NULL, '2021-04-11 21:18:28', NULL, '2021-04-11 21:18:28', 1, '源', '1503976177', '50-100本', '111', '2021-04-24', '0');
INSERT INTO `gc_book` VALUES ('9f6a63c99acd4e2ca1c31fe2b7f5689a', NULL, '2021-04-11 18:50:57', NULL, '2021-04-11 18:50:57', 1, '源', '1503976177', '5-10本', '被审计那个是', '2021-04-17', '0');
INSERT INTO `gc_book` VALUES ('a02c857e46344bf0aba693dde8b843f5', NULL, '2021-04-11 21:34:10', NULL, '2021-04-11 21:34:10', 1, '源', '1503976177', '10-50本', '111', '2021-04-10', '0');
INSERT INTO `gc_book` VALUES ('ae8139781b5e4cd3b38fab1d53f0dd1e', NULL, '2021-04-11 21:19:30', NULL, '2021-04-11 21:19:30', 1, '源', '1503976177', '10-50本', '111', '2021-04-16', '0');
INSERT INTO `gc_book` VALUES ('c1becb83df7a49d18292f2dfe92f4ebb', NULL, '2021-04-11 21:29:19', NULL, '2021-04-11 21:29:19', 1, '源', '1503976177', '10-50本', '111', '2021-04-09', '0');
INSERT INTO `gc_book` VALUES ('c2ff7a367ba74023ab6099fb3dfe61bb', NULL, '2021-04-11 21:17:55', NULL, '2021-04-11 21:17:55', 1, '源', '1503976177', '10-50本', '111', '2021-04-11', '0');
INSERT INTO `gc_book` VALUES ('c61cfaa0e35840f1afcf5f4700869f51', NULL, '2021-04-11 21:33:37', NULL, '2021-04-11 21:33:37', 1, '源', '1503976177', '5-10本', '111', '2021-04-18', '0');
INSERT INTO `gc_book` VALUES ('da2a9966599c4442b4bda8d041fa793f', NULL, '2021-04-11 21:33:04', NULL, '2021-04-11 21:33:04', 1, '源', '1503976177', '10-50本', '111', '2021-04-23', '0');
INSERT INTO `gc_book` VALUES ('e57e3852fdfc4cf99c87733640d86839', NULL, '2021-04-11 18:55:05', NULL, '2021-04-11 18:55:05', 1, '源2', '1503976177', '10-50本', '被审计那个是', '2021-04-15', '0');
INSERT INTO `gc_book` VALUES ('f47383ff1a2f42e699ea59c894599e09', NULL, '2021-04-11 21:10:41', NULL, '2021-04-11 21:10:41', 1, '源', '1503976177', '5-10本', '111', '2021-04-22', '0');
INSERT INTO `gc_book` VALUES ('fb257ab139dd493f88e2b93a03694cbd', NULL, '2021-04-11 21:16:52', NULL, '2021-04-11 21:16:52', 1, '源', '1503976177', '5-10本', '111', '2021-04-11', '0');
INSERT INTO `gc_book` VALUES ('fbba9f1f3a694750a0b9293375c99288', NULL, '2021-04-11 21:26:30', NULL, '2021-04-11 21:26:30', 1, '源2', '1503976177', '10-50本', '111', '2021-04-10', '0');

-- ----------------------------
-- Table structure for gc_clothes
-- ----------------------------
DROP TABLE IF EXISTS `gc_clothes`;
CREATE TABLE `gc_clothes`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '主键',
  `create_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `version` bigint(0) NULL DEFAULT 1 COMMENT '版本号',
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '姓名',
  `iPhone` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '电话',
  `address` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '地址',
  `appointment_time` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预约时间',
  `file_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '图片地址',
  `is_recovery` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '0未回收1已回收',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '旧衣物回收' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gc_clothes
-- ----------------------------
INSERT INTO `gc_clothes` VALUES ('582e102d89914ccd965b6fcf81f7dea8', NULL, '2021-04-11 21:58:35', NULL, '2021-04-11 21:58:35', 1, '源', '1503976177', '111', '2021-04-10', NULL, '1');
INSERT INTO `gc_clothes` VALUES ('668afe5fad8e40108e59c6cef33f1941', NULL, '2021-04-11 20:12:41', NULL, '2021-04-11 20:12:41', 1, '源2', '1503976177', '111', '2021-04-16', NULL, '0');
INSERT INTO `gc_clothes` VALUES ('6bc2c56f2f694abe921966b497796a82', NULL, '2021-04-11 20:12:01', NULL, '2021-04-11 20:12:01', 1, '姓名', '电话', '地址', '预约时间', '图片地址', '0');
INSERT INTO `gc_clothes` VALUES ('9ae88ed23e8d4b64872529af23f5615b', NULL, '2021-04-11 21:58:19', NULL, '2021-04-11 21:58:19', 1, '源', '1503976177', '111', '2021-04-09', NULL, '0');
INSERT INTO `gc_clothes` VALUES ('a1f2b628ad754d23838bacff7500547f', NULL, '2021-04-11 21:40:16', NULL, '2021-04-11 21:40:16', 1, '源', '1503976177', '111', '2021-04-09', NULL, '0');
INSERT INTO `gc_clothes` VALUES ('a615a78180614b3b955d2ac168a9d990', NULL, '2021-04-11 20:11:32', NULL, '2021-04-11 20:11:32', 1, '源2', '1503976177', '111', '2021-04-11', NULL, '0');

-- ----------------------------
-- Table structure for gc_garbage
-- ----------------------------
DROP TABLE IF EXISTS `gc_garbage`;
CREATE TABLE `gc_garbage`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '主键',
  `create_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `version` bigint(0) NULL DEFAULT 1 COMMENT '版本号',
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '姓名',
  `iPhone` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '电话',
  `address` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '地址',
  `appointment_time` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预约时间',
  `is_recovery` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '0未回收1已回收',
  `bigWeight` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '重量(kg)',
  `bigLength` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '长度(cm)',
  `bigWide` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '宽度(cm)',
  `bigHigh` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '高度(cm)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '大型垃圾回收' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gc_garbage
-- ----------------------------
INSERT INTO `gc_garbage` VALUES ('71e2654105f44df0b025668569387f7b', NULL, '2021-04-12 09:58:03', NULL, '2021-04-12 09:58:03', 1, '源', '1503976177', '18', '2021-04-17', '1', '18', '18', '18', '18');
INSERT INTO `gc_garbage` VALUES ('acfa219d1cbc4d179f69d42011988d51', NULL, '2021-04-12 09:57:13', NULL, '2021-04-12 09:57:13', 1, '源2', '1503976177', '18', '2021-04-17', '0', '18', '18', '18', '18');
INSERT INTO `gc_garbage` VALUES ('c81a50d1b99749f09852ec9436414ce2', NULL, '2021-04-12 09:40:51', NULL, '2021-04-12 09:40:51', 1, '姓名', NULL, '地址', '2021-04-13', '0', '重量(kg)', '长度(cm)', '宽度(cm)', '高度(cm)');

-- ----------------------------
-- Table structure for gc_home_electric
-- ----------------------------
DROP TABLE IF EXISTS `gc_home_electric`;
CREATE TABLE `gc_home_electric`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '主键',
  `create_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `version` bigint(0) NULL DEFAULT 1 COMMENT '版本号',
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '姓名',
  `iPhone` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '电话',
  `address` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '地址',
  `appointment_time` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预约时间',
  `is_recovery` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '0未回收1已回收',
  `type` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '家电种类',
  `brand` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '品牌',
  `year` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '使用年限',
  `appearance` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '外观情况',
  `func` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '功能情况',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '家电回收' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gc_home_electric
-- ----------------------------
INSERT INTO `gc_home_electric` VALUES ('0b0c6856902c45c29a3c280b0f5a6a1e', NULL, '2021-04-11 20:39:46', NULL, '2021-04-11 20:39:46', 1, '源2', '1503976177', '111', '2021-04-10', '1', '风扇', '得力', '3年以内', '外观完好', '正常');
INSERT INTO `gc_home_electric` VALUES ('51bfc1f79d7e439eb73f1f8acf348446', NULL, '2021-04-11 21:38:43', NULL, '2021-04-11 21:38:43', 1, '源', '1503976177', '111', '2021-04-09', '0', '风扇', '得力', '3-5年', '外观完好', '正常');
INSERT INTO `gc_home_electric` VALUES ('6394f832e678490e9ee4efbd19f9574e', NULL, '2021-04-11 20:38:24', NULL, '2021-04-11 20:38:40', 1, '源2', '1503976177', '111', '2021-04-11', '0', '风扇', '得力', '3年以内', '外观完好', '正常');
INSERT INTO `gc_home_electric` VALUES ('7847ac64417b48de9c3c06060ef5f26e', NULL, '2021-04-12 09:17:39', NULL, '2021-04-12 09:17:39', 1, '源2', '1503976177', '111', '2021-04-12', '0', '风扇', '得力', '3年以内', '外观完好', '正常');
INSERT INTO `gc_home_electric` VALUES ('a036609cec854d66915a716c592d12f2', NULL, '2021-04-11 20:40:14', NULL, '2021-04-12 09:18:59', 1, '源2', '1503976177', '111', '2021-04-12', '0', '风扇', '得力', '3年以内', '外观完好', '正常');
INSERT INTO `gc_home_electric` VALUES ('b6816f90cef54debbd72e5669ac75371', NULL, '2021-04-12 09:17:32', NULL, '2021-04-12 09:18:54', 1, '源2', '1503976177', '111', '2021-04-12', '0', '风扇', '得力', '3年以内', '外观完好', '正常');
INSERT INTO `gc_home_electric` VALUES ('f73e7ff7b2ed4da482ab9c74a648daef', NULL, '2021-04-11 20:36:43', NULL, '2021-04-11 20:37:34', 1, '源2', '1503976177', '111', '2021-04-11', '0', '风扇', '得力', '3年以内', '外观完好', '正常');

-- ----------------------------
-- Table structure for gc_love
-- ----------------------------
DROP TABLE IF EXISTS `gc_love`;
CREATE TABLE `gc_love`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '主键',
  `create_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `version` bigint(0) NULL DEFAULT 1 COMMENT '版本号',
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '姓名',
  `iPhone` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '电话',
  `address` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '地址',
  `money` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '金钱',
  `is_recovery` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '0未回收1已回收',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '爱心捐献' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gc_love
-- ----------------------------
INSERT INTO `gc_love` VALUES ('546b9ecb93164ab98f875c34e82a5fea', NULL, '2021-04-12 10:54:37', NULL, '2021-04-12 10:54:37', 1, '源2', '1503976177', '111', '1112', '0');
INSERT INTO `gc_love` VALUES ('c6a231cf9adb497abbd9f7309319934d', NULL, '2021-04-12 10:53:36', NULL, '2021-04-12 10:53:36', 1, '姓名', '电话', '地址', '金钱', '0');

-- ----------------------------
-- Table structure for ylrc_comment
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_comment`;
CREATE TABLE `ylrc_comment`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NULL,
  `update_time` datetime(0) NULL,
  `content` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reply_to` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goods_id` bigint(0) NULL DEFAULT NULL,
  `student_id` bigint(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKd01gnchhuj06oumqxrikccc3r`(`goods_id`) USING BTREE,
  INDEX `FKswirics8hhydki5ff0emtmbii`(`student_id`) USING BTREE,
  CONSTRAINT `FKd01gnchhuj06oumqxrikccc3r` FOREIGN KEY (`goods_id`) REFERENCES `ylrc_goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKswirics8hhydki5ff0emtmbii` FOREIGN KEY (`student_id`) REFERENCES `ylrc_studnet` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ylrc_comment
-- ----------------------------
INSERT INTO `ylrc_comment` VALUES (3, '2020-04-12 21:44:43', '2020-04-12 21:44:43', '现在还能用嘛？', NULL, 12, 5);
INSERT INTO `ylrc_comment` VALUES (4, '2020-04-12 21:47:00', '2020-04-12 21:47:00', '应该有的吧？', '管理员', 12, 5);
INSERT INTO `ylrc_comment` VALUES (5, '2020-04-12 22:07:22', '2020-04-12 22:07:22', '回复：“你好，现在还有货嘛？”\n应该没有了，这个很抢手的呀，你要抓紧才行。', '管理员', 12, 5);
INSERT INTO `ylrc_comment` VALUES (6, '2020-04-12 22:08:09', '2020-04-12 22:08:09', '回复：“你好价格还能优惠点嘛？”<br>这个价格已经很公道了呀。', '管理员', 12, 5);
INSERT INTO `ylrc_comment` VALUES (7, '2020-04-12 22:08:57', '2020-04-12 22:08:57', '回复：“现在还能用嘛？”<br>应该没问题的，这个机子很皮实的。', '158549530922', 12, 5);
INSERT INTO `ylrc_comment` VALUES (8, '2020-04-12 22:11:54', '2020-04-12 22:11:54', '你好，价格能再优惠吗？', NULL, 13, 5);
INSERT INTO `ylrc_comment` VALUES (9, '2020-04-12 22:12:59', '2020-04-12 22:12:59', '回复：“你好，价格能再优惠吗？”<br>亲，这个价格已经很优惠了哦，我这个电脑配置很高的，4g内存 320g硬盘，独立集成双显卡，疫情期间给孩子上网课，看看视频，办公学习都不错，双侧立体声音响，15.6寸大屏幕。', '起名字真难', 13, 3);
INSERT INTO `ylrc_comment` VALUES (10, '2020-04-15 22:32:37', '2020-04-15 22:32:37', '看上去不错哦！', NULL, 31, 3);

-- ----------------------------
-- Table structure for ylrc_database_bak
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_database_bak`;
CREATE TABLE `ylrc_database_bak`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NULL,
  `update_time` datetime(0) NULL,
  `filename` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `filepath` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ylrc_friend_link
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_friend_link`;
CREATE TABLE `ylrc_friend_link`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NULL,
  `update_time` datetime(0) NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sort` int(0) NOT NULL,
  `url` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ylrc_goods
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_goods`;
CREATE TABLE `ylrc_goods`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NULL,
  `update_time` datetime(0) NULL,
  `buy_price` float NOT NULL,
  `content` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `flag` int(0) NOT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `photo` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `recommend` int(0) NOT NULL,
  `sell_price` float NOT NULL,
  `status` int(0) NOT NULL,
  `goods_category_id` bigint(0) NULL DEFAULT NULL,
  `student_id` bigint(0) NULL DEFAULT NULL,
  `view_number` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKjtyl6pmb9j4aj64sm54xi1hbi`(`goods_category_id`) USING BTREE,
  INDEX `FKf68a0a9u8u8hqckg0ycnjarv6`(`student_id`) USING BTREE,
  CONSTRAINT `FKf68a0a9u8u8hqckg0ycnjarv6` FOREIGN KEY (`student_id`) REFERENCES `ylrc_studnet` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKjtyl6pmb9j4aj64sm54xi1hbi` FOREIGN KEY (`goods_category_id`) REFERENCES `ylrc_goods_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ylrc_goods
-- ----------------------------
INSERT INTO `ylrc_goods` VALUES (1, '2020-04-06 21:39:29', '2020-04-12 15:24:09', 128, '猿来入此1.0版本上线于2018年1月12日，现如今已经度过了652个日夜，当初的定位很简单，就是给大家分享站长在学习工作中积累的一些编程开发经验，使得大家能够在学习的道路上少走弯路。 快速掌握学习的方法，编程开发的思想。\r\n\r\n截止目前，猿来入此发布的实战开发教程累计学习人数已超过5万余人，有人赞赏就有人批评，一路走来，猿来入此赢得了不少好评，当然也有很多人痛骂我们、质疑我们，猿来入此的确有很多缺点，但我们相信生活不会拒绝一个想要变好的人，猿来入此正在不断的完善、改进。\r\n\r\n而今，推出猿来入此Beta版，旨在帮助更多更广层次的人，在猿来入此Beat版，你可以有很多个身份，你可以专心学习教程，做一个好学的小猿。也可以施展自己的技能，录制发布自己的教程资源，帮助别人学习的同时自己获得收入。你还可以推荐别的小猿来这里学习，你也有奖励哦！', 0, '猿来入此Java开发教程', '20200408/1586344264407.png', 0, 127, 1, 39, 2, 35);
INSERT INTO `ylrc_goods` VALUES (5, '2020-04-06 21:54:28', '2020-04-11 15:17:45', 5888, '手机是iPhone5s，用了两年多，保养的很好，手机屏幕都没有换过，保存很完整的。有意向的请联系我。', 0, '八成新iPhone5s现低出售', '20200406/1586181213129.jpg', 0, 588, 1, 4, 2, 26);
INSERT INTO `ylrc_goods` VALUES (6, '2020-04-11 15:13:43', '2020-04-15 19:20:15', 6999, '华硕平板电脑 超薄的 非常漂亮手感好 8寸左右屏幕​‌‌ 大小合适 携带方便 4Ｇ运行内存 64Ｇ储存的 并且可以插内存卡的 看电影 微信 视频 娱乐 游戏都很流畅 使用舒服。机器没拆没修过 全原装的 质量保证。带数据线充电器\r\nPlay Video \r\n联系我时，请说是在猿来入此二手网看到的，谢谢！', 0, '华硕P01MA 超薄平板电脑 4+6', '20200411/1586589170711.png', 1, 1698, 1, 11, 2, 1);
INSERT INTO `ylrc_goods` VALUES (7, '2020-04-11 15:15:19', '2020-04-12 12:40:34', 399, '鞋子太多38码到41码9.5新​‌‌ 鞋子太多38码到41码9.5新​‌‌ 鞋子太多38码到41码9.5新​‌‌ 鞋子太多38码到41码9.5新​‌‌ 鞋子太多38码到41码9.5新​‌‌ 鞋子太多38码到41码9.5新​‌‌ 鞋子太多38码到41码9.5新​‌‌ ', 1, '耐克正品高帮鞋子一次都没穿过很新的', '20200411/1586589269693.png', 0, 159, 2, 35, 2, 0);
INSERT INTO `ylrc_goods` VALUES (8, '2020-04-11 15:25:38', '2020-04-11 15:26:06', 59, '播讲： 路遥\r\n【原Ｙ版Ｂ音Ｙ频Ｐ，已完结】\r\n所​‌‌有有声均可以先试听，联系我获取\r\n立即添＋徽信：ｌｉｕ１６８８ｂ\r\n加我备注：猿来入此二手网过来的', 0, '平凡的世界小说路遥百度云mp3分享在', '20200411/1586589915016.png', 0, 5, 1, 17, 3, 1);
INSERT INTO `ylrc_goods` VALUES (9, '2020-04-11 15:28:52', '2020-04-11 21:20:01', 9999, '二手卡地亚手表山度士大号表径：38.4×51mm ​‌‌9.99新全套自动机械，现货好价，手微同号l52～l077～663l，欢迎垂询。保真不贵，全国直销，无中间商赚差价，专注高端名表交易。本店承诺所售手表2年内可8折回购。\r\n卡地亚山度士大号表径：38.4×51mm \r\n9.99新全套自动机械，现货好价。', 0, '二手卡地亚手表山度士大号表径', '20200411/1586590067910.jpg', 0, 3999, 1, 54, 3, 2);
INSERT INTO `ylrc_goods` VALUES (10, '2020-04-11 16:55:10', '2020-04-16 19:39:20', 25, '黑色两个8新苹果7/8 软手机套5元', 0, '黑色两个8新苹果7/8 软手机套5元', '20200411/1586595290815.jpg', 0, 5, 1, 5, 3, 8);
INSERT INTO `ylrc_goods` VALUES (11, '2020-04-11 16:56:13', '2020-04-11 16:56:13', 399, '诺基亚的滑盖手机，买的时候一千多，具体什么型号搞不​‌‌清了。没有拆修过，功能一切正常。塞班系统，充电器电池都有到手即用。80元出售不议价。', 0, '诺基亚 滑盖手机 另还有个E71 智', '20200411/1586595364409.jpg', 0, 80, 1, 6, 3, 0);
INSERT INTO `ylrc_goods` VALUES (12, '2020-04-11 16:57:12', '2020-04-15 22:26:42', 690, '夏普翻盖机，有太阳能电板辅助，之前一直是​‌‌女生使用，由于很早就使用智能机故一直闲置（为保持状态，开机充电维持正常频度），弃之可惜；机器保守说8成新，待机3-4天，作为备用机或老人机没问题，无拆无修无进水，可以使用移动，联通2G。', 0, '夏普翻盖机，有太阳能电板辅助', '20200411/1586595414403.jpeg', 0, 160, 1, 7, 3, 45);
INSERT INTO `ylrc_goods` VALUES (13, '2020-04-11 21:05:32', '2020-04-15 22:26:32', 8999, '公司员工自用的电脑，功能都正常，正常使用痕迹，配置​‌‌​‌‌是i5处理器，4g内存 320g硬盘，独立集成双显卡，疫情期间给孩子上网课，看看视频，办公学习都不错，双侧立体声音响，15.6寸大屏幕，公司员工自用的电脑，不要电源适配器可以少一百元，低价处理了！', 0, 'macbook pro15寸笔记本', '20200411/1586610285979.jpg', 0, 1599, 1, 9, 3, 7);
INSERT INTO `ylrc_goods` VALUES (14, '2020-04-11 21:08:41', '2020-04-15 19:19:08', 6999, '转让三台一样华牛苹果款i3一体电脑很新，出售100​‌‌​‌‌0元一台，配置如图；CPU;core i3 M380 @2.53GHz,\r\n主板；英特尔H55,\r\n主硬盘；固态；64G,\r\n内存；2G\r\n显示器；MS-0003\r\n注；以上三台i3出售1000元一台，\r\n二台AMD四核一体电脑很新出售1300元一台\r\n配置如图\r\nCPU;AMD A-5000四核\r\n主板；AMD AT3X2\r\n内存；4G，\r\n硬盘；64G主硬盘，\r\n显示器；AMD0006(25.2英寸）\r\n注；二台AMD四核很新出售1300元一台\r\n机器全好，正常使用中，配件齐全，拿回去就可以使用，公司搬家急需处理，没有质量问题\r\n配置如图，欢迎上门看货试机', 0, '华牛苹果款i3 四核一体电脑', '20200411/1586610506621.jpg', 0, 1269, 1, 10, 3, 7);
INSERT INTO `ylrc_goods` VALUES (15, '2020-04-11 21:12:41', '2020-04-11 21:12:41', 299, '1.型号：美图耳机原装 线控入耳式音乐耳机 ; \r\n2 处理原因：设备闲置； \r\n3.成色描述：全新；’ \r\n4.包含配件：包装盒齐全； \r\n5.收到货物外观检测期：1天（网页照片均为实物图，商品都是实物图片 由于每个人对成色的理解不一样 所以发布所有物品均以实物图片为准 如收货后对外观有疑议，收货当日申请退款，当日、最迟次日发回） \r\n6.邮费：往返邮费全部由买家承担； \r\n其他说明：都是良心如实描述非诚勿扰！', 0, '美图耳机原装 线控入耳式音乐耳机 美', '20200411/1586610735654.jpg', 0, 29, 1, 16, 3, 0);
INSERT INTO `ylrc_goods` VALUES (16, '2020-04-11 21:14:03', '2020-04-12 22:12:18', 8999, '出只惠普i5四核游戏机笔记本电脑,95新，4G内存！ \r\n\r\n当地的自提或者我送过去，外地的全部走担保交易！！！详细的你可以加我微信详聊！ \r\n\r\n出只i5四核游戏机笔记本电脑，可以小刀，大刀的不要来，那些开口就1000，800的对不起各位大神了。还有发货后电话找不到的人的，对不起了，不要拍！我不是专做电脑的，发货贵的要命！！!还有那些加我V信（V信qq871301232）的或者闲鱼私聊的，说帮你留意笔记本的，不要说等我收来了，然后就再也找不到人了！！！ \r\n\r\n笔记本是广州米光工作室出来的机子，这个配置只有几十台而已，这个配置全新价值多少，请自行百度！别问一些比较低的问题，好货只卖给有缘人，我一直都是相信有缘人！！ \r\n\r\n配置如下： \r\nCPU I5 ，4G DDR3（最新款） \r\n独立显卡512 \r\n250g硬盘（够你存多少嘿嘿嘿嘿了，你懂的） \r\n带键盘灯光，蓝牙，光驱，摄像头！！！样样齐全，办公娱乐家用都非常给力！ \r\n14英寸多高大山，重点是超薄，成色非常非常的爆新！！！ \r\nlol,地下城，都可以玩爆，不多，要的赶紧的！！ ', 0, 'i5四核游戏机笔记本电脑', '20200411/1586610811445.jpg', 0, 1700, 1, 18, 3, 1);
INSERT INTO `ylrc_goods` VALUES (17, '2020-04-11 21:15:52', '2020-04-12 15:02:27', 599, 'SONY 索尼 VGP-WKB5IE 经典无线键盘 收藏级，品相不错，只有一点点使用痕迹。具体成色请看图片，实物拍摄。这个型号是索尼的经典设计款，市场上很少见的！键盘使用四姐5号电池供电，键盘上上电量显示。由于本人没有配套的电脑测试所以不能保证链接功能正常。（这需要索尼的主机配合使用）。 \r\n\r\n东西难得！ ', 0, 'SONY 索尼 经典无线键盘 收藏级', '20200411/1586610934287.jpg', 0, 200, 1, 19, 3, 97);
INSERT INTO `ylrc_goods` VALUES (18, '2020-04-11 21:16:58', '2020-04-12 11:43:39', 580, '全新原装苹果鼠标没有开封，因为买了重复了，官网价格580元，我出500元。', 0, '苹果原装鼠标未开封', '20200411/1586610997167.jpg', 0, 500, 1, 20, 3, 1);
INSERT INTO `ylrc_goods` VALUES (19, '2020-04-11 21:21:08', '2020-04-11 23:43:45', 998, '这款产品需要搭配存储使用；有了移动硬盘的各位，可以将移动硬盘连接魔盒，手机装个APP，就可以通过手机上传和下载所以移动硬盘的资料了，电脑装个客户端，也可以通过电脑上传下载，修改移动硬盘的资料。非常方便，相当于一个网盘。而且想分享的就分享，想加密的就加密，谁都看不到。并且是双重备份，就算硬盘坏了，丢了，也能一键恢复哦', 0, '1 2T移动硬盘、U盘秒变网盘', '20200411/1586611245599.jpg', 0, 289, 1, 22, 3, 1);
INSERT INTO `ylrc_goods` VALUES (20, '2020-04-11 21:22:10', '2020-04-16 19:39:29', 1980, 'MINOX M3 LEICA 数码相机 功能好 带原厂电池一块，没有充电器，可以通过USB口充电，不带卡。只有机器一台。及其制作精美，适合收藏！关于机器参数请自行百度，本店不负责科普！ \r\n\r\n非常难得一见的数码相机。500万像素，可以拍视频。 \r\n\r\nhttps://item.taobao.com/item.htm?spm=a2126o.11854294.0.0.8ea94831d8VrRw&id=614654560447 \r\n不议价！慢出 ', 0, 'MINOX M3 LEICA 数码相', '20200411/1586611303491.jpg', 0, 920, 1, 23, 3, 4);
INSERT INTO `ylrc_goods` VALUES (21, '2020-04-11 21:23:09', '2020-04-16 19:40:44', 2980, '1.型号要求：艺卓mx191 \r\n2.到手时间/使用时长：2016年12月产 \r\n3.成色描述：95新 \r\n4.器材情况：带配件公司替换品 \r\n5.包含配件：说明书，cd，电源线，数据线 \r\n6.其他说明：可直接微信：Allenfindu.邮费顺丰到付，可小刀。', 0, '艺卓MX191显示器', '20200411/1586611370203.jpg', 0, 1980, 1, 24, 3, 2);
INSERT INTO `ylrc_goods` VALUES (22, '2020-04-11 21:25:14', '2020-04-11 21:25:14', 75, '得力安格耐特F11165号PU篮球青少年小学室内外训练篮球耐磨弹性好', 0, '得力安格耐特篮球', '20200411/1586611479618.jpg', 0, 57, 1, 26, 3, 0);
INSERT INTO `ylrc_goods` VALUES (23, '2020-04-11 21:27:46', '2020-04-11 21:27:46', 78, '厂家直销儿童足球机缝足球4号5号足球六色可选耐磨足球体育用品', 0, '耐磨足球体育用品', '20200411/1586611630115.jpg', 0, 66, 1, 27, 3, 0);
INSERT INTO `ylrc_goods` VALUES (24, '2020-04-11 21:30:06', '2020-04-16 19:38:47', 24, '广羽2号黑鹅毛羽毛球 批发12个装家庭娱乐型球馆训练超耐打羽毛球\r\n跨境属性\r\n跨境包裹重量0.2 kg 单位重量0.2 kg 产品体积 35.0 cm * 7.0 cm * 7.0 cm\r\n品牌	广羽	产品类别	鹅毛球	球头类别	双拼球头\r\n毛片样式	全圆	货号	羽毛球	产地	安徽\r\n加印LOGO	不可以	加工定制	否	规格	12只装\r\n适用场景	乒羽网球运动	颜色	【2号黑鹅毛】	是否跨境货源	否', 0, '球馆训练超耐打羽毛球12个', '20200411/1586611756004.jpg', 0, 22, 1, 28, 2, 2);
INSERT INTO `ylrc_goods` VALUES (25, '2020-04-11 21:31:27', '2020-04-15 19:12:46', 37, '【品名】克洛斯威/crossway \r\n【名称】克洛斯威-乒乓球6星拍\r\n【货号】1122带球带拍套带护边贴\r\n【打法分类】攻防兼备型\r\n【底板材质】椴木5层\r\n【厚度】14.5mm\r\n【包套材料】拍包+6个乒乓球+1个护边贴', 0, '克洛斯威六星乒乓球拍', '20200411/1586611861285.jpg', 1, 27, 1, 29, 2, 0);
INSERT INTO `ylrc_goods` VALUES (26, '2020-04-11 23:58:05', '2020-04-15 19:13:32', 35, '产品参数：\r\n品牌: 遇上适用年龄: 25-29周岁尺码: S M L XL 2XL 3XL图案: 字母风格: 通勤通勤: 韩版领型: 圆领流行元素: 印花主要颜色: 浅黄色 浅绿色 白色 黑色 酒红色 mystery白色 mystery姜黄 antique白色 antique黑色 WARNING砖红 WARNING白色 星空白色 火烈鸟白色 仙人掌白色 108白色 108黑色 099白色 101白色 Bike白色 another白色 day白色 night黑色 NY白色 sunny白色 GUCCL白色 california姜黄色 鲸鱼白色 化学白色 柠檬姜黄 牛油果绿茶色 山竹梦紫色 西瓜白色 刺绣款红色 刺绣款白色 yushang白色 猫猫和狗子姜黄色 梦紫色 灰色 大红 藕粉 姜黄 砖红 藏青色 孔雀蓝 烟灰色 橡皮粉袖型: 常规货号: YST086图案文化: 经典年份季节: 2020年夏季袖长: 短袖衣长: 常规款服装版型: 宽松销售渠道类型: 纯电商(只在线上销售)材质成分: 棉96% 聚氨酯弹性纤维(氨纶)4%', 0, '纯棉白色T恤女短袖夏装', '20200411/1586620659982.jpg', 1, 25, 1, 31, 4, 0);
INSERT INTO `ylrc_goods` VALUES (27, '2020-04-11 23:59:22', '2020-04-15 19:13:27', 69, '产品参数：\r\n品牌: GW/哥维格面料: 罗马布货号: 52-173037弹力: 微弹基础风格: 青春流行上市年份季节: 2017年秋季厚薄: 常规销售渠道类型: 纯电商(只在线上销售)材质成分: 粘胶纤维(粘纤)66.6% 聚酯纤维29.', 0, '裤子男春季宽松九分休闲裤', '20200411/1586620738132.jpg', 1, 39, 1, 32, 4, 3);
INSERT INTO `ylrc_goods` VALUES (28, '2020-04-12 00:01:34', '2020-04-15 19:13:23', 235, '品牌: other/其他质地: 尼龙布闭合方式: 拉链图案: 纯色风格: 日韩形状: 竖款方形成色: 全新性别: 男流行元素: 车缝线颜色分类: 浅灰色中号 黑色中号 黑色大号 浅灰色大号 黑色加大版内部结构: 手机袋 电脑插袋有无夹层: 有货号: 0701251361536适用场景: 休闲里料材质: 腈纶肩带样式: 双根适用对象: 青年提拎部件类型: 软把箱包外袋种类: 内贴袋箱包硬度: 软大小: 中防水程度: 防泼水是否有背部缓冲棉: 是容纳电脑尺寸: 14英寸', 0, '防水尼龙布双肩包纯色百搭滑面潮男', '20200412/1586620860709.png', 1, 125, 1, 33, 4, 0);
INSERT INTO `ylrc_goods` VALUES (29, '2020-04-12 00:03:39', '2020-04-18 17:22:03', 65, '产品参数：\r\n品牌: 宝缇妃产地: 中国大陆省份: 浙江省地市: 金华市流行元素: 纯色颜色分类: 雨伞-8骨自动-藏蓝 雨伞8骨自动-黑色 雨伞8骨自动-酒红 两用-10骨自动黑胶-藏青色 两用-10骨自动黑胶-藏蓝 两用-10骨自动黑胶-酒红 普通折叠-宝蓝伞布: 黑胶打开方式: 全自动货号: A-123半径: 48cm(含)-53cm(含)伞面涂层: 黑胶上市年份季节: 2020年夏季伞的种类: 晴雨伞适用对象: 成人性别: 男女通用伞杆材质: 不锈钢款式: 三折伞设计使用年限: 5年', 0, '全自动商务伞晴雨两用防晒防紫外线', '20200412/1586620999408.jpg', 1, 25, 1, 34, 4, 26);
INSERT INTO `ylrc_goods` VALUES (30, '2020-04-12 00:04:51', '2020-04-16 19:39:02', 56, '品牌: 红依材质: 混合材质适用性别: 女图案: 植物花卉风格: 民族风是否现货: 现货镶嵌材质: 未镶嵌成色: 全新价格区间: 10-19.99元新奇特: 新鲜出炉颜色分类: 【好事连连】', 0, '民族风穗子流苏胸针天然玉石珍珠', '20200412/1586621065769.jpg', 1, 25, 1, 36, 4, 6);
INSERT INTO `ylrc_goods` VALUES (31, '2020-04-12 00:07:24', '2020-04-15 22:35:46', 799, '夏威夷小吉他斯达威SDW-UK268\r\n品牌: STARWAY材质: 其他', 0, '夏威夷小吉他斯达威SDW-UK268', '20200412/1586621219617.jpg', 0, 499, 1, 38, 4, 38);
INSERT INTO `ylrc_goods` VALUES (32, '2020-04-12 13:02:48', '2020-04-15 19:18:33', 999, '微信公众号粉丝1万多，不想运营了，有需要的请联系我。', 0, '微信公众号粉丝1万多', '20200412/1586667722030.png', 0, 888, 3, 39, 3, 3);

-- ----------------------------
-- Table structure for ylrc_goods_category
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_goods_category`;
CREATE TABLE `ylrc_goods_category`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NULL,
  `update_time` datetime(0) NULL,
  `icon` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sort` int(0) NOT NULL,
  `parent_id` bigint(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKos35mkmw4k5dvi4fi2govg2pa`(`parent_id`) USING BTREE,
  CONSTRAINT `FKos35mkmw4k5dvi4fi2govg2pa` FOREIGN KEY (`parent_id`) REFERENCES `ylrc_goods_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ylrc_goods_category
-- ----------------------------
INSERT INTO `ylrc_goods_category` VALUES (1, '2020-04-02 20:20:05', '2020-04-02 21:35:15', '20200402/1585834512163.png', '手机', 0, NULL);
INSERT INTO `ylrc_goods_category` VALUES (4, '2020-04-02 20:26:45', '2020-04-02 21:35:54', '20200402/1585834542235.png', '智能机', 1, 1);
INSERT INTO `ylrc_goods_category` VALUES (5, '2020-04-02 21:13:04', '2020-04-02 21:36:24', '20200402/1585834572308.png', '手机配件', 2, 1);
INSERT INTO `ylrc_goods_category` VALUES (6, '2020-04-02 21:37:05', '2020-04-02 21:37:05', '20200402/1585834607924.png', '滑盖机', 3, 1);
INSERT INTO `ylrc_goods_category` VALUES (7, '2020-04-02 21:37:23', '2020-04-02 21:37:23', '20200402/1585834633735.png', '翻盖机', 4, 1);
INSERT INTO `ylrc_goods_category` VALUES (8, '2020-04-02 21:37:50', '2020-04-02 21:37:50', '20200402/1585834662625.png', '电脑', 5, NULL);
INSERT INTO `ylrc_goods_category` VALUES (9, '2020-04-02 21:38:08', '2020-04-02 21:38:08', '20200402/1585834679788.png', '笔记本', 6, 8);
INSERT INTO `ylrc_goods_category` VALUES (10, '2020-04-02 21:38:26', '2020-04-02 21:38:26', '20200402/1585834694895.png', '台式机', 7, 8);
INSERT INTO `ylrc_goods_category` VALUES (11, '2020-04-02 21:38:45', '2020-04-02 21:38:45', '20200402/1585834717184.png', '平板', 8, 8);
INSERT INTO `ylrc_goods_category` VALUES (15, '2020-04-05 18:46:54', '2020-04-05 19:07:07', '20200405/1586084764264.png', '影音娱乐', 9, NULL);
INSERT INTO `ylrc_goods_category` VALUES (16, '2020-04-05 19:06:56', '2020-04-05 19:07:20', '20200405/1586084805468.png', '耳机', 10, 15);
INSERT INTO `ylrc_goods_category` VALUES (17, '2020-04-05 19:07:45', '2020-04-05 19:07:45', '20200405/1586084854001.png', 'MP3/MP4', 11, 15);
INSERT INTO `ylrc_goods_category` VALUES (18, '2020-04-05 19:08:15', '2020-04-05 19:08:15', '20200405/1586084878657.png', '游戏机', 12, 15);
INSERT INTO `ylrc_goods_category` VALUES (19, '2020-04-05 19:08:44', '2020-04-05 19:08:44', '20200405/1586084911580.png', '键盘', 13, 15);
INSERT INTO `ylrc_goods_category` VALUES (20, '2020-04-05 19:09:04', '2020-04-05 19:09:04', '20200405/1586084936056.png', '鼠标', 14, 15);
INSERT INTO `ylrc_goods_category` VALUES (21, '2020-04-05 19:10:14', '2020-04-05 19:10:14', '20200405/1586085005899.png', '数码配件', 15, NULL);
INSERT INTO `ylrc_goods_category` VALUES (22, '2020-04-05 19:10:45', '2020-04-05 19:10:45', '20200405/1586085024716.png', '移动硬盘', 16, 21);
INSERT INTO `ylrc_goods_category` VALUES (23, '2020-04-05 19:11:08', '2020-04-05 19:11:08', '20200405/1586085052292.png', '相机', 17, 21);
INSERT INTO `ylrc_goods_category` VALUES (24, '2020-04-05 19:11:25', '2020-04-05 19:11:25', '20200405/1586085077518.png', '显示器', 18, 21);
INSERT INTO `ylrc_goods_category` VALUES (25, '2020-04-05 19:11:50', '2020-04-05 19:11:50', '20200405/1586085102042.png', '运动健身', 19, NULL);
INSERT INTO `ylrc_goods_category` VALUES (26, '2020-04-05 19:12:13', '2020-04-05 19:12:13', '20200405/1586085124703.png', '篮球', 20, 25);
INSERT INTO `ylrc_goods_category` VALUES (27, '2020-04-05 19:12:34', '2020-04-05 19:12:34', '20200405/1586085152812.png', '足球', 21, 25);
INSERT INTO `ylrc_goods_category` VALUES (28, '2020-04-05 19:12:53', '2020-04-05 19:12:53', '20200405/1586085164372.png', '羽毛球', 22, 25);
INSERT INTO `ylrc_goods_category` VALUES (29, '2020-04-05 19:13:11', '2020-04-05 19:13:11', '20200405/1586085182130.png', '球拍', 23, 25);
INSERT INTO `ylrc_goods_category` VALUES (30, '2020-04-05 19:13:50', '2020-04-05 19:13:50', '20200405/1586085217886.png', '衣物鞋帽', 24, NULL);
INSERT INTO `ylrc_goods_category` VALUES (31, '2020-04-05 19:14:15', '2020-04-05 19:14:15', '20200405/1586085239138.png', '上衣', 25, 30);
INSERT INTO `ylrc_goods_category` VALUES (32, '2020-04-05 19:14:30', '2020-04-05 19:14:30', '20200405/1586085262037.png', '裤子', 26, 30);
INSERT INTO `ylrc_goods_category` VALUES (33, '2020-04-05 19:14:48', '2020-04-05 19:14:48', '20200405/1586085278533.png', '背包', 27, 30);
INSERT INTO `ylrc_goods_category` VALUES (34, '2020-04-05 19:15:12', '2020-04-05 19:15:12', '20200405/1586085302412.png', '雨伞', 28, 30);
INSERT INTO `ylrc_goods_category` VALUES (35, '2020-04-05 19:15:29', '2020-04-05 19:15:29', '20200405/1586085319791.png', '鞋子', 29, 30);
INSERT INTO `ylrc_goods_category` VALUES (36, '2020-04-05 19:15:55', '2020-04-05 19:15:55', '20200405/1586085349204.png', '配饰', 30, 30);
INSERT INTO `ylrc_goods_category` VALUES (37, '2020-04-05 19:16:38', '2020-04-05 19:16:38', '20200405/1586085388834.png', '生活娱乐', 31, NULL);
INSERT INTO `ylrc_goods_category` VALUES (38, '2020-04-05 19:17:05', '2020-04-05 19:17:05', '20200405/1586085407122.png', '乐器', 32, 37);
INSERT INTO `ylrc_goods_category` VALUES (39, '2020-04-05 19:17:22', '2020-04-05 19:17:22', '20200405/1586085433434.png', '虚拟账号', 33, 37);
INSERT INTO `ylrc_goods_category` VALUES (40, '2020-04-05 19:17:39', '2020-04-05 19:17:39', '20200405/1586085449303.png', '会员卡', 34, 37);
INSERT INTO `ylrc_goods_category` VALUES (41, '2020-04-05 19:18:00', '2020-04-05 19:18:00', '20200405/1586085471766.png', '化妆品', 35, 37);
INSERT INTO `ylrc_goods_category` VALUES (42, '2020-04-05 19:18:31', '2020-04-05 19:18:31', '20200405/1586085499095.png', '图书教材', 36, NULL);
INSERT INTO `ylrc_goods_category` VALUES (43, '2020-04-05 19:18:49', '2020-04-05 19:18:49', '20200405/1586085520436.png', '教材', 37, 42);
INSERT INTO `ylrc_goods_category` VALUES (44, '2020-04-05 19:19:05', '2020-04-05 19:19:05', '20200405/1586085534371.png', '考研材料', 38, 42);
INSERT INTO `ylrc_goods_category` VALUES (45, '2020-04-05 19:19:24', '2020-04-05 19:19:24', '20200405/1586085556673.png', '课外书', 39, 42);
INSERT INTO `ylrc_goods_category` VALUES (46, '2020-04-05 19:19:54', '2020-04-05 19:19:54', '20200405/1586085585909.png', '交通出行', 40, NULL);
INSERT INTO `ylrc_goods_category` VALUES (47, '2020-04-05 19:20:18', '2020-04-05 19:20:18', '20200405/1586085604095.png', '自行车', 41, 46);
INSERT INTO `ylrc_goods_category` VALUES (48, '2020-04-05 19:20:35', '2020-04-05 19:20:35', '20200405/1586085624951.png', '电动车', 42, 46);
INSERT INTO `ylrc_goods_category` VALUES (49, '2020-04-05 19:21:01', '2020-04-05 19:21:01', '20200405/1586085652162.png', '交通卡', 43, 46);
INSERT INTO `ylrc_goods_category` VALUES (50, '2020-04-05 19:21:29', '2020-04-05 19:21:29', '20200405/1586085681117.png', '个人技能', 44, NULL);
INSERT INTO `ylrc_goods_category` VALUES (51, '2020-04-05 19:21:47', '2020-04-05 19:21:47', '20200405/1586085696883.png', '摄影', 45, 50);
INSERT INTO `ylrc_goods_category` VALUES (52, '2020-04-05 19:22:05', '2020-04-05 19:22:05', '20200405/1586085714915.png', '绘画', 46, 50);
INSERT INTO `ylrc_goods_category` VALUES (53, '2020-04-05 19:22:29', '2020-04-05 19:22:29', '20200405/1586085739125.png', '其他', 46, NULL);
INSERT INTO `ylrc_goods_category` VALUES (54, '2020-04-11 21:19:25', '2020-04-11 21:19:40', '20200411/1586611155253.png', '手表', 47, 21);
INSERT INTO `ylrc_goods_category` VALUES (55, '2020-04-12 22:31:58', '2020-04-12 22:32:08', '20200412/1586701902327.png', '其他小类', 48, 53);

-- ----------------------------
-- Table structure for ylrc_menu
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_menu`;
CREATE TABLE `ylrc_menu`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NULL,
  `update_time` datetime(0) NULL,
  `name` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort` int(0) NOT NULL,
  `parent_id` bigint(0) NULL DEFAULT NULL,
  `is_bitton` bit(1) NOT NULL,
  `is_show` bit(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKsbtnjocfrq29e8taxdwo21gic`(`parent_id`) USING BTREE,
  CONSTRAINT `FKsbtnjocfrq29e8taxdwo21gic` FOREIGN KEY (`parent_id`) REFERENCES `ylrc_menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ylrc_menu
-- ----------------------------
INSERT INTO `ylrc_menu` VALUES (2, '2020-03-14 14:26:03', '2020-03-14 18:24:53', '系统设置', '', 'mdi-settings', 0, NULL, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (3, '2020-03-14 16:58:55', '2020-03-14 18:26:02', '菜单管理', '/admin/menu/list', 'mdi-view-list', 1, 2, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (5, '2020-03-14 17:04:44', '2020-03-14 18:27:53', '新增', '/admin/menu/add', 'mdi-plus', 2, 3, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (7, '2020-03-14 17:07:43', '2020-03-15 12:11:25', '角色管理', '/admin/role/list', 'mdi-account-settings-variant', 5, 2, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (8, '2020-03-14 18:28:48', '2020-03-21 22:04:45', '编辑', 'edit(\'/admin/menu/edit\')', 'mdi-grease-pencil', 3, 3, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (9, '2020-03-14 18:30:00', '2020-03-21 22:08:20', '删除', 'del(\'/admin/menu/delete\')', 'mdi-close', 4, 3, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (10, '2020-03-15 12:12:00', '2020-03-15 12:12:00', '添加', '/admin/role/add', 'mdi-account-plus', 6, 7, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (11, '2020-03-15 12:12:36', '2020-03-21 22:10:45', '编辑', 'edit(\'/admin/role/edit\')', 'mdi-account-edit', 7, 7, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (12, '2020-03-15 12:13:19', '2020-03-21 22:15:27', '删除', 'del(\'/admin/role/delete\')', 'mdi-account-remove', 8, 7, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (13, '2020-03-15 12:14:52', '2020-03-15 12:17:00', '用户管理', '/admin/user/list', 'mdi-account-multiple', 9, 2, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (14, '2020-03-15 12:15:22', '2020-03-15 12:17:27', '添加', '/admin/user/add', 'mdi-account-plus', 10, 13, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (15, '2020-03-16 17:18:14', '2020-03-21 22:11:19', '编辑', 'edit(\'/admin/user/edit\')', 'mdi-account-edit', 11, 13, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (16, '2020-03-16 17:19:01', '2020-03-21 22:15:36', '删除', 'del(\'/admin/user/delete\')', 'mdi-account-remove', 12, 13, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (19, '2020-03-22 11:24:36', '2020-03-22 11:26:00', '上传图片', '/admin/upload/upload_photo', 'mdi-arrow-up-bold-circle', 0, 13, b'0', b'0');
INSERT INTO `ylrc_menu` VALUES (20, '2020-03-22 14:09:35', '2020-03-22 14:09:47', '日志管理', '/system/operator_log_list', 'mdi-tag-multiple', 13, 2, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (21, '2020-03-22 14:11:39', '2020-03-22 14:11:39', '删除', 'del(\'/system/delete_operator_log\')', 'mdi-tag-remove', 14, 20, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (22, '2020-03-22 14:12:57', '2020-03-22 14:46:55', '清空日志', 'delAll(\'/system/delete_all_operator_log\')', 'mdi-delete-circle', 15, 20, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (23, '2020-03-22 14:46:40', '2020-03-22 14:47:09', '数据备份', '/admin/database_bak/list', 'mdi-database', 16, 2, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (24, '2020-03-22 14:48:07', '2020-03-22 15:13:41', '备份', 'add(\'/admin/database_bak/add\')', 'mdi-database-plus', 17, 23, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (25, '2020-03-22 14:49:03', '2020-03-22 14:49:03', '删除', 'del(\'/admin/database_bak/delete\')', 'mdi-database-minus', 18, 23, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (26, '2020-03-22 19:36:20', '2020-03-22 19:36:20', '还原', 'restore(\'/admin/database_bak/restore\')', 'mdi-database-minus', 19, 23, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (27, '2020-04-01 20:35:09', '2020-04-01 20:35:09', '物品管理', '/admin/goods_category/list', 'mdi-dialpad', 0, NULL, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (28, '2020-04-01 20:35:46', '2020-04-12 22:28:09', '分类管理', '/admin/goods_category/list', 'mdi-apps', 0, 27, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (29, '2020-04-01 20:36:27', '2020-04-12 22:30:39', '物品管理', '/admin/goods/list', 'mdi-cart', 0, 27, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (30, '2020-04-01 20:40:48', '2020-04-12 22:28:34', '添加', '/admin/goods_category/add', 'mdi-battery-positive', 0, 28, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (31, '2020-04-01 20:41:33', '2020-04-12 22:30:02', '编辑', 'edit(\'/admin/goods_category/edit\')', 'mdi-border-color', 0, 28, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (32, '2020-04-01 20:42:15', '2020-04-12 22:30:21', '删除', 'del(\'/admin/goods_category/delete\')', 'mdi-close', 0, 28, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (33, '2020-04-13 18:52:12', '2020-04-13 18:52:12', '上架', 'up(\'/admin/goods/up_down\')', 'mdi-arrow-up-bold-box', 0, 29, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (34, '2020-04-13 18:52:55', '2020-04-13 18:52:55', '下架', 'down(\'/admin/goods/up_down\')', 'mdi-arrow-down-bold-box', 0, 29, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (35, '2020-04-13 18:54:10', '2020-04-15 19:17:48', '删除', 'del(\'/admin/goods/delete\')', 'mdi-close-box', 0, 29, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (36, '2020-04-15 19:06:49', '2020-04-15 19:06:49', '推荐', 'recommend(\'/admin/goods/recommend\')', 'mdi-thumb-up', 0, 29, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (37, '2020-04-15 19:07:45', '2020-04-15 19:07:45', '取消推荐', 'unrecommend(\'/admin/goods/recommend\')', 'mdi-thumb-down', 0, 29, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (38, '2020-04-15 19:32:16', '2020-04-15 19:32:16', '求购物品', '/admin/wanted_goods/list', 'mdi-ticket', 0, 27, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (39, '2020-04-15 19:32:55', '2020-04-15 19:59:53', '删除', 'del(\'/admin/wanted_goods/delete\')', 'mdi-close-box', 0, 38, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (40, '2020-04-15 20:02:04', '2020-04-15 20:02:04', '学生管理', '/admin/student/list', 'mdi-account-multiple', 0, NULL, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (41, '2020-04-15 20:02:38', '2020-04-15 20:02:38', '学生列表', '/admin/student/list', 'mdi-account-multiple', 0, 40, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (42, '2020-04-15 20:06:28', '2020-04-15 20:06:28', '冻结', 'freeze(\'/admin/student/update_status\')', 'mdi-account-settings-variant', 0, 41, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (43, '2020-04-15 20:06:59', '2020-04-15 21:45:31', '激活', 'openStudent(\'/admin/student/update_status\')', 'mdi-account-key', 0, 41, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (44, '2020-04-15 20:07:33', '2020-04-15 20:07:33', '删除', 'del(\'/admin/student/delete\')', 'mdi-account-remove', 0, 41, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (45, '2020-04-15 21:52:57', '2020-04-15 21:52:57', '评论管理', '/admin/comment/list', 'mdi-comment-account', 0, NULL, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (46, '2020-04-15 21:53:39', '2020-04-15 21:53:39', '评论列表', '/admin/comment/list', 'mdi-comment-multiple-outline', 0, 45, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (47, '2020-04-15 21:54:35', '2020-04-15 21:54:35', '删除', 'del(\'/admin/comment/delete\')', 'mdi-message-bulleted-off', 0, 46, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (48, '2020-04-16 19:28:48', '2020-04-16 19:28:48', '举报管理', '/admin/report/list', 'mdi-alert', 0, NULL, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (49, '2020-04-16 19:30:31', '2020-04-16 19:30:31', '举报列表', '/admin/report/list', 'mdi-view-headline', 0, 48, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (50, '2020-04-16 19:31:09', '2020-04-16 19:31:09', '删除', 'del(\'/admin/report/delete\')', 'mdi-close-box', 0, 49, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (51, '2020-04-16 19:46:08', '2020-04-16 19:46:08', '新闻公告', '/admin/news/list', 'mdi-onenote', 0, NULL, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (52, '2020-04-16 19:46:39', '2020-04-16 19:46:39', '公告列表', '/admin/news/list', 'mdi-book-open', 0, 51, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (53, '2020-04-16 19:48:01', '2020-04-16 19:48:01', '添加', '/admin/news/add', 'mdi-plus', 0, 52, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (54, '2020-04-16 19:48:46', '2020-04-16 19:48:46', '编辑', 'edit(\'/admin/news/edit\')', 'mdi-border-color', 0, 52, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (55, '2020-04-16 19:49:37', '2020-04-16 19:49:37', '删除', 'del(\'/admin/news/delete\')', 'mdi-close', 0, 52, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (56, '2020-04-18 14:25:58', '2020-04-18 14:25:58', '网站设置', '', 'mdi-settings', 0, NULL, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (57, '2020-04-18 14:27:31', '2020-04-18 14:27:31', '友情链接', '/admin/friend_link/list', 'mdi-vector-line', 0, 56, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (58, '2020-04-18 14:28:36', '2020-04-18 14:28:36', '添加', '/admin/friend_link/add', 'mdi-plus', 0, 57, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (59, '2020-04-18 14:29:17', '2020-04-18 15:38:53', '编辑', 'edit(\'/admin/friend_link/edit\')', 'mdi-border-color', 0, 57, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (60, '2020-04-18 14:29:45', '2020-04-18 14:29:45', '删除', 'del(\'/admin/friend_link/delete\')', 'mdi-close-box', 0, 57, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (61, '2020-04-18 16:26:45', '2020-04-18 16:26:45', '站点设置', '/admin/site_setting/setting', 'mdi-wrench', 0, 56, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (62, '2020-04-18 16:28:25', '2020-04-18 16:28:25', '提交修改', '/admin/site_setting/save_setting', 'mdi-marker-check', 0, 61, b'1', b'0');

-- ----------------------------
-- Table structure for ylrc_news
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_news`;
CREATE TABLE `ylrc_news`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NULL,
  `update_time` datetime(0) NULL,
  `content` varchar(10024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sort` int(0) NOT NULL,
  `title` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `view_number` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ylrc_news
-- ----------------------------
INSERT INTO `ylrc_news` VALUES (1, '2020-04-16 21:29:17', '2020-04-16 21:54:38', '校园二手市场平台', 2, '关于校园二手市场平台', 1);
INSERT INTO `ylrc_news` VALUES (2, '2020-04-16 21:29:49', '2020-04-16 21:54:41', '1.禁止和限制发布物品管理规则\r\n2.重复铺货商品管理规则\r\n3.支付方式不符商品管理规则\r\n4.商品价格、邮费不符商品管理规则\r\n5.信用炒作商品管理规则', 0, '校园二手市场发布商品规则', 4);
INSERT INTO `ylrc_news` VALUES (3, '2020-04-16 21:30:22', '2020-04-16 21:54:35', '注册时请填写详细的注册信息，学号为必填项。', 1, '校园二手市场账号注册规则', 1);

-- ----------------------------
-- Table structure for ylrc_operater_log
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_operater_log`;
CREATE TABLE `ylrc_operater_log`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NULL,
  `update_time` datetime(0) NULL,
  `content` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `operator` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 401 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ylrc_operater_log
-- ----------------------------
INSERT INTO `ylrc_operater_log` VALUES (393, '2021-04-16 17:18:44', '2021-04-16 17:18:44', '用户【admin】于【2021-04-16 17:18:43】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (394, '2021-04-16 17:38:43', '2021-04-16 17:38:43', '用户【admin】于【2021-04-16 17:38:42】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (395, '2021-04-16 19:21:19', '2021-04-16 19:21:19', '用户【admin】于【2021-04-16 19:21:18】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (396, '2021-04-16 19:43:13', '2021-04-16 19:43:13', '用户【admin】于【2021-04-16 19:43:12】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (397, '2021-04-16 20:06:30', '2021-04-16 20:06:30', '用户【admin】于【2021-04-16 20:06:29】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (398, '2021-04-16 20:15:45', '2021-04-16 20:15:45', '用户【admin】于【2021-04-16 20:15:44】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (399, '2021-04-16 20:58:08', '2021-04-16 20:58:08', '用户【admin】于【2021-04-16 20:58:08】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (400, '2021-04-16 22:44:40', '2021-04-16 22:44:40', '用户【admin】于【2021-04-16 22:44:40】登录系统！', 'admin');

-- ----------------------------
-- Table structure for ylrc_order_auth
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_order_auth`;
CREATE TABLE `ylrc_order_auth`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NULL,
  `update_time` datetime(0) NULL,
  `mac` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `order_sn` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `phone` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_ahqv988xcab5a70bem0piku3l`(`order_sn`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ylrc_order_auth
-- ----------------------------
INSERT INTO `ylrc_order_auth` VALUES (1, '2021-04-16 19:53:53', '2021-04-16 19:53:56', '005056C00008', '123456789012345678', '12345678901');

-- ----------------------------
-- Table structure for ylrc_report_goods
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_report_goods`;
CREATE TABLE `ylrc_report_goods`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NULL,
  `update_time` datetime(0) NULL,
  `content` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goods_id` bigint(0) NULL DEFAULT NULL,
  `student_id` bigint(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK6g0s4688rq2bnty1u1ev1rgly`(`goods_id`) USING BTREE,
  INDEX `FKmr7s3q3jpq824h69f5ip9gleq`(`student_id`) USING BTREE,
  CONSTRAINT `FK6g0s4688rq2bnty1u1ev1rgly` FOREIGN KEY (`goods_id`) REFERENCES `ylrc_goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKmr7s3q3jpq824h69f5ip9gleq` FOREIGN KEY (`student_id`) REFERENCES `ylrc_studnet` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ylrc_report_goods
-- ----------------------------
INSERT INTO `ylrc_report_goods` VALUES (5, '2020-04-12 12:00:49', '2020-04-12 12:00:49', '涉嫌广告传销！', 20, 2);

-- ----------------------------
-- Table structure for ylrc_role
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_role`;
CREATE TABLE `ylrc_role`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NULL,
  `update_time` datetime(0) NULL,
  `name` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ylrc_role
-- ----------------------------
INSERT INTO `ylrc_role` VALUES (1, '2020-03-15 13:16:38', '2020-04-18 16:28:37', '超级管理员', '超级管理员拥有最高权限。', 1);
INSERT INTO `ylrc_role` VALUES (2, '2020-03-15 13:18:57', '2020-03-21 22:18:43', '普通管理员', '普通管理员只有部分权限', 1);
INSERT INTO `ylrc_role` VALUES (4, '2020-03-21 20:11:00', '2020-03-23 17:49:00', '测试角色', 'sadsa', 0);

-- ----------------------------
-- Table structure for ylrc_role_authorities
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_role_authorities`;
CREATE TABLE `ylrc_role_authorities`  (
  `role_id` bigint(0) NOT NULL,
  `authorities_id` bigint(0) NOT NULL,
  INDEX `FKhj7ap1o1cjrl7enr9arf5f2qp`(`authorities_id`) USING BTREE,
  INDEX `FKg3xdaexmr0x1qx8omhvjtk46d`(`role_id`) USING BTREE,
  CONSTRAINT `FKg3xdaexmr0x1qx8omhvjtk46d` FOREIGN KEY (`role_id`) REFERENCES `ylrc_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKhj7ap1o1cjrl7enr9arf5f2qp` FOREIGN KEY (`authorities_id`) REFERENCES `ylrc_menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ylrc_role_authorities
-- ----------------------------
INSERT INTO `ylrc_role_authorities` VALUES (2, 2);
INSERT INTO `ylrc_role_authorities` VALUES (2, 3);
INSERT INTO `ylrc_role_authorities` VALUES (2, 5);
INSERT INTO `ylrc_role_authorities` VALUES (2, 7);
INSERT INTO `ylrc_role_authorities` VALUES (2, 11);
INSERT INTO `ylrc_role_authorities` VALUES (2, 13);
INSERT INTO `ylrc_role_authorities` VALUES (2, 16);
INSERT INTO `ylrc_role_authorities` VALUES (4, 2);
INSERT INTO `ylrc_role_authorities` VALUES (4, 13);
INSERT INTO `ylrc_role_authorities` VALUES (4, 15);
INSERT INTO `ylrc_role_authorities` VALUES (1, 2);
INSERT INTO `ylrc_role_authorities` VALUES (1, 3);
INSERT INTO `ylrc_role_authorities` VALUES (1, 5);
INSERT INTO `ylrc_role_authorities` VALUES (1, 8);
INSERT INTO `ylrc_role_authorities` VALUES (1, 9);
INSERT INTO `ylrc_role_authorities` VALUES (1, 7);
INSERT INTO `ylrc_role_authorities` VALUES (1, 10);
INSERT INTO `ylrc_role_authorities` VALUES (1, 11);
INSERT INTO `ylrc_role_authorities` VALUES (1, 12);
INSERT INTO `ylrc_role_authorities` VALUES (1, 13);
INSERT INTO `ylrc_role_authorities` VALUES (1, 14);
INSERT INTO `ylrc_role_authorities` VALUES (1, 15);
INSERT INTO `ylrc_role_authorities` VALUES (1, 16);
INSERT INTO `ylrc_role_authorities` VALUES (1, 19);
INSERT INTO `ylrc_role_authorities` VALUES (1, 20);
INSERT INTO `ylrc_role_authorities` VALUES (1, 21);
INSERT INTO `ylrc_role_authorities` VALUES (1, 22);
INSERT INTO `ylrc_role_authorities` VALUES (1, 23);
INSERT INTO `ylrc_role_authorities` VALUES (1, 24);
INSERT INTO `ylrc_role_authorities` VALUES (1, 25);
INSERT INTO `ylrc_role_authorities` VALUES (1, 26);
INSERT INTO `ylrc_role_authorities` VALUES (1, 27);
INSERT INTO `ylrc_role_authorities` VALUES (1, 28);
INSERT INTO `ylrc_role_authorities` VALUES (1, 30);
INSERT INTO `ylrc_role_authorities` VALUES (1, 31);
INSERT INTO `ylrc_role_authorities` VALUES (1, 32);
INSERT INTO `ylrc_role_authorities` VALUES (1, 29);
INSERT INTO `ylrc_role_authorities` VALUES (1, 33);
INSERT INTO `ylrc_role_authorities` VALUES (1, 34);
INSERT INTO `ylrc_role_authorities` VALUES (1, 35);
INSERT INTO `ylrc_role_authorities` VALUES (1, 36);
INSERT INTO `ylrc_role_authorities` VALUES (1, 37);
INSERT INTO `ylrc_role_authorities` VALUES (1, 38);
INSERT INTO `ylrc_role_authorities` VALUES (1, 39);
INSERT INTO `ylrc_role_authorities` VALUES (1, 40);
INSERT INTO `ylrc_role_authorities` VALUES (1, 41);
INSERT INTO `ylrc_role_authorities` VALUES (1, 42);
INSERT INTO `ylrc_role_authorities` VALUES (1, 43);
INSERT INTO `ylrc_role_authorities` VALUES (1, 44);
INSERT INTO `ylrc_role_authorities` VALUES (1, 45);
INSERT INTO `ylrc_role_authorities` VALUES (1, 46);
INSERT INTO `ylrc_role_authorities` VALUES (1, 47);
INSERT INTO `ylrc_role_authorities` VALUES (1, 48);
INSERT INTO `ylrc_role_authorities` VALUES (1, 49);
INSERT INTO `ylrc_role_authorities` VALUES (1, 50);
INSERT INTO `ylrc_role_authorities` VALUES (1, 51);
INSERT INTO `ylrc_role_authorities` VALUES (1, 52);
INSERT INTO `ylrc_role_authorities` VALUES (1, 53);
INSERT INTO `ylrc_role_authorities` VALUES (1, 54);
INSERT INTO `ylrc_role_authorities` VALUES (1, 55);
INSERT INTO `ylrc_role_authorities` VALUES (1, 56);
INSERT INTO `ylrc_role_authorities` VALUES (1, 57);
INSERT INTO `ylrc_role_authorities` VALUES (1, 58);
INSERT INTO `ylrc_role_authorities` VALUES (1, 59);
INSERT INTO `ylrc_role_authorities` VALUES (1, 60);
INSERT INTO `ylrc_role_authorities` VALUES (1, 61);
INSERT INTO `ylrc_role_authorities` VALUES (1, 62);

-- ----------------------------
-- Table structure for ylrc_site_setting
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_site_setting`;
CREATE TABLE `ylrc_site_setting`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NULL,
  `update_time` datetime(0) NULL,
  `all_rights` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `logo_1` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `logo_2` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `qrcode` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `site_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `site_url` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ylrc_site_setting
-- ----------------------------
INSERT INTO `ylrc_site_setting` VALUES (1, '2020-04-18 17:02:17', '2020-04-18 17:21:09', '©2021 版权所有', '20200418/1587201658762.png', '20200418/1587201663687.png', '20200418/1587201667179.png', '转转二手市场', 'www.baidu.com');

-- ----------------------------
-- Table structure for ylrc_studnet
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_studnet`;
CREATE TABLE `ylrc_studnet`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NULL,
  `update_time` datetime(0) NULL,
  `academy` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `grade` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickname` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `qq` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `school` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sn` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `head_pic` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(0) NULL DEFAULT NULL,
  `password` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_5se32pxcytmbwgepjrjrdmvjr`(`sn`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ylrc_studnet
-- ----------------------------
INSERT INTO `ylrc_studnet` VALUES (2, '2020-04-06 12:52:02', '2020-04-18 18:05:56', '计算机科学与技术学院', '软件1102', '13656565656', '猿来入此', '11221232132', '东华大学', '158549530920', '20200406/1586162585279.jpg', 1, '111111');
INSERT INTO `ylrc_studnet` VALUES (3, '2020-04-11 15:20:12', '2020-04-11 15:23:29', '计算机与科学技术学院', '计算机1103', '13946598956', '小猪爱佩琪', '11956256', '清华大学', '158549530921', '20200411/1586589655027.jpg', 1, '111111');
INSERT INTO `ylrc_studnet` VALUES (4, '2020-04-11 23:35:40', '2020-04-15 21:48:47', '材料学院', '材料1104', '13656569456', '会飞的小乌龟', '1658555644', '同济大学', '158540174522', '20200411/1586619722105.png', 1, '111111');
INSERT INTO `ylrc_studnet` VALUES (5, '2020-04-12 20:58:29', '2020-04-15 21:46:39', '材料学院', '材料2011级', '13656565656', '起名字真难', '1122123213', '上海交通大学', '158549530922', '20200412/1586700613292.png', 1, '111111');
INSERT INTO `ylrc_studnet` VALUES (6, '2021-04-16 19:22:44', '2021-04-16 19:22:44', NULL, NULL, NULL, NULL, '111144', NULL, '123456789012', NULL, 1, '123456');

-- ----------------------------
-- Table structure for ylrc_user
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_user`;
CREATE TABLE `ylrc_user`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NULL,
  `update_time` datetime(0) NULL,
  `email` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `head_pic` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` int(0) NULL DEFAULT NULL,
  `status` int(0) NULL DEFAULT NULL,
  `username` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role_id` bigint(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_btsosjytrl4hu7fnm1intcpo8`(`username`) USING BTREE,
  INDEX `FKg09b8o67eu61st68rv6nk8npj`(`role_id`) USING BTREE,
  CONSTRAINT `FKg09b8o67eu61st68rv6nk8npj` FOREIGN KEY (`role_id`) REFERENCES `ylrc_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ylrc_user
-- ----------------------------
INSERT INTO `ylrc_user` VALUES (1, '2020-03-18 19:18:53', '2020-03-22 12:43:54', 'admin@qq.com', '20200322/1584850135123.jpg', '13356565656', '123456', 1, 1, 'admin', 1);
INSERT INTO `ylrc_user` VALUES (2, '2020-03-18 19:20:36', '2020-03-21 22:18:55', 'llq@qq.com', '20200318/1584530412075.jpg', '13918655656', '123456', 1, 1, '测试账号', 2);
INSERT INTO `ylrc_user` VALUES (5, '2020-03-20 20:42:19', '2020-03-23 17:50:19', 'yw@qq.com', '20200323/1584956702094.png', '13356565656', '123456', 1, 1, '小刘同志', 4);
INSERT INTO `ylrc_user` VALUES (7, '2020-03-30 22:59:02', '2020-03-30 22:59:02', 'llq@qq.com', '20200330/1585580308721.jpg', '13656565656', '123456', 1, 1, '张三同志', 2);

-- ----------------------------
-- Table structure for ylrc_wanted_goods
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_wanted_goods`;
CREATE TABLE `ylrc_wanted_goods`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NULL,
  `update_time` datetime(0) NULL,
  `content` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sell_price` float NOT NULL,
  `trade_place` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `view_number` int(0) NOT NULL,
  `student_id` bigint(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKqvrfd43yhp11er38hkfcxi103`(`student_id`) USING BTREE,
  CONSTRAINT `FKqvrfd43yhp11er38hkfcxi103` FOREIGN KEY (`student_id`) REFERENCES `ylrc_studnet` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ylrc_wanted_goods
-- ----------------------------
INSERT INTO `ylrc_wanted_goods` VALUES (1, '2020-04-11 18:00:07', '2020-04-11 22:57:47', '想买iphoneX 256G的，有没有人需要出售的呢？有愿意卖的请联系我。', '想买iphoneX 256G的，有吗', 899, '男生宿舍楼17号宿舍楼', 0, 3);
INSERT INTO `ylrc_wanted_goods` VALUES (4, '2020-04-11 23:29:32', '2020-04-11 23:29:32', '本人想买一个mac book pro，有没有人愿意卖的，有的话请联系我的QQ！', '想买一个mac book pro', 5999, '东华大学北门', 0, 3);
INSERT INTO `ylrc_wanted_goods` VALUES (5, '2020-04-11 23:31:01', '2020-04-11 23:31:01', '有没有快要毕业的学长想卖掉自己自行车的，本人自行车骑了没两天就被偷了，想买个二手的来骑，有愿意卖的请联系我QQ！', '有没有学长想卖自行车？', 98, '文汇路300弄', 0, 2);
INSERT INTO `ylrc_wanted_goods` VALUES (6, '2020-04-11 23:34:43', '2020-04-11 23:34:43', '本人笔记本电脑太卡了，想买一个配置比较高的笔记本电脑，有意者请联系我。', '想买一个笔记本电脑', 2699, '17号宿舍楼', 0, 2);
INSERT INTO `ylrc_wanted_goods` VALUES (7, '2020-04-11 23:37:18', '2020-04-11 23:37:18', '有人愿意卖自己的球拍嘛？最好是一副，有的请联系我！', '有没有人手上有羽毛球拍要出售的？', 55, '同济大学嘉定小区北门', 0, 4);

SET FOREIGN_KEY_CHECKS = 1;
