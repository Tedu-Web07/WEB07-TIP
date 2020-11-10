/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : tip

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-11-09 14:52:16
*/

-- SET FOREIGN_KEY_CHECKS=0;

#设置客户端连接服务器端的编码为UTF8
SET NAMES UTF8;
#丢弃数据库，如果存在
DROP DATABASE IF EXISTS tip;
#创建新的数据库，使用的编码为UTF8
CREATE DATABASE tip CHARSET=UTF8;
#进入数据库
use tip;
-- ----------------------------
-- Table structure for tip_anime
-- ----------------------------

# 动漫表(tip_anime)
DROP TABLE IF EXISTS tip_anime;                      
CREATE TABLE tip_anime(                              
  anime_id int(11) PRIMARY KEY auto_increment,                          #动漫id
  anime_name varchar(20) NOT NULL,                                      #动漫名称
  chapter varchar(20) NOT NULL,                                         #章节
  anime_pic varchar(30) NOT NULL                                        #动漫图片                         
);
--  ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- ----------------------------
-- Records of tip_anime
-- ----------------------------

-- ----------------------------
-- Table structure for tip_pic_goods
-- ----------------------------
-- DROP TABLE IF EXISTS `tip_pic_goods`;
-- CREATE TABLE `tip_pic_goods` (
--   `pic_goods_id` int(11) NOT NULL,
--   `pic_goods_use` int(11) NOT NULL,
--   `pic_goods_src` varchar(50) NOT NULL,
--   PRIMARY KEY (`pic_goods_id`)
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='图片用处 \r\n1:商品展示\r\n2:商品详情\r\n';

-- ----------------------------
-- Records of tip_pic_goods
-- ----------------------------

-- ----------------------------
-- Table structure for tip_pic_paper
-- ----------------------------
-- DROP TABLE IF EXISTS `tip_pic_paper`;
-- CREATE TABLE `tip_pic_paper` (
--   `pic_paper_id` int(11) NOT NULL,
--   `pic_paper_size` int(11) NOT NULL,
--   `pic_paper_src` varchar(50) DEFAULT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tip_pic_paper
-- ----------------------------

-- ----------------------------
-- Table structure for tip_user
-- ----------------------------
-- DROP TABLE IF EXISTS `tip_user`;
-- CREATE TABLE `tip_user` (
--   `user_id` int(11) NOT NULL,
--   `user_name` varchar(10) NOT NULL,
--   `password` varchar(16) NOT NULL,
--   `user_phone` varchar(11) NOT NULL,
--   `email` varchar(30) NOT NULL,
--   `introduce` varchar(200) DEFAULT NULL,
--   `real_name` varchar(10) NOT NULL,
--   `national` varchar(10) NOT NULL,
--   `province` varchar(10) NOT NULL,
--   `city` varchar(10) NOT NULL,
--   `county` varchar(10) NOT NULL,
--   `user_tel` varchar(11) NOT NULL,
--   `school` varchar(10) NOT NULL,
--   `sex` varchar(2) NOT NULL,
--   `contry` varchar(20) NOT NULL,
--   `zip_code` int(11) NOT NULL,
--   `address` varchar(100) NOT NULL,
--   `birthday` date NOT NULL,
--   PRIMARY KEY (`user_id`)
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tip_user
-- ----------------------------


#动漫表数据插入
INSERT INTO tip_anime VALUES (1,'banner','01','images/dongman/pic01.jpg');
INSERT INTO tip_anime VALUES (2,'banner','02','images/dongman/pic02.png');
INSERT INTO tip_anime VALUES (3,'banner','03','images/dongman/pic03.png');
INSERT INTO tip_anime VALUES (4,'争议的决定','第一话','images/dongman/words1.jpg');
INSERT INTO tip_anime VALUES (5,'南下之路·上','第二话','images/dongman/words2-01.jpg');
INSERT INTO tip_anime VALUES (6,'南下之路·下','第二话','images/dongman/words2-02.jpg');
INSERT INTO tip_anime VALUES (7,'沪上风波·上','第三话','images/dongman/words3-01.jpg');
INSERT INTO tip_anime VALUES (8,'沪上风波·下','第三话','images/dongman/words3-02.jpg');
INSERT INTO tip_anime VALUES (9,'伦敦之行·上','第四话','images/dongman/words4-01.jpg');
INSERT INTO tip_anime VALUES (10,'伦敦之行·下','第四话','images/dongman/words4-02.jpg');
INSERT INTO tip_anime VALUES (11,'大战前夕·上','第五话','images/dongman/words5-01.jpg');
INSERT INTO tip_anime VALUES (12,'大战前夕·下','第五话','images/dongman/words5-02.jpg');
INSERT INTO tip_anime VALUES (13,'汉口火劫·上','第六话','images/dongman/words6-01.jpg');
INSERT INTO tip_anime VALUES (14,'汉口火劫·下','第六话','images/dongman/words6-02.jpg');
INSERT INTO tip_anime VALUES (15,'梁先生讲历史','null','images/dongman/liang.jpg');
INSERT INTO tip_anime VALUES (16,'围追堵截·上','第七话','images/dongman/words7-01.jpg');
INSERT INTO tip_anime VALUES (17,'围追堵截·下','第七话','images/dongman/words7-02.jpg');
INSERT INTO tip_anime VALUES (18,'陪都重庆·上','第八话','images/dongman/words8-01.jpg');
INSERT INTO tip_anime VALUES (19,'陪都重庆·下','第八话','images/dongman/words8-02.jpg');
INSERT INTO tip_anime VALUES (20,'秦岭大川·上','第九话','images/dongman/words9-01.jpg');
INSERT INTO tip_anime VALUES (21,'秦岭大川·下','第九话','images/dongman/words9-02.jpg');
INSERT INTO tip_anime VALUES (22,'乐山轰炸·上','第十话','images/dongman/words10-01.jpg');
INSERT INTO tip_anime VALUES (23,'乐山轰炸·下','第十话','images/dongman/words10-02.jpg');
INSERT INTO tip_anime VALUES (24,'约定难现·上','第十一话','images/dongman/words11-01.jpg');
INSERT INTO tip_anime VALUES (25,'约定难现·下','第十一话','images/dongman/words11-02.jpg');
INSERT INTO tip_anime VALUES (26,'离家，是为了回家·上','第十二话','images/dongman/words12-01.jpg');
INSERT INTO tip_anime VALUES (27,'离家，是为了回家·下','第十二话','images/dongman/words12-02.jpg');






