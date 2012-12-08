/*
SQLyog Trial v9.50 
MySQL - 5.5.28-0ubuntu0.12.04.2 : Database - zhgyDB
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zhgyDB` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `zhgyDB`;

/*Table structure for table `CATEGORY` */

DROP TABLE IF EXISTS `CATEGORY`;

CREATE TABLE `CATEGORY` (
  `CATEGORY_ID` bigint(15) NOT NULL AUTO_INCREMENT COMMENT '类别ID',
  `HAVEHIGHER` int(1) NOT NULL COMMENT '是否有上级(1-有 0-没有)',
  `HIGHERID` bigint(15) DEFAULT NULL COMMENT '上级ID',
  `NAME` varchar(50) DEFAULT NULL COMMENT '类别名称',
  `NUMBER` varchar(50) DEFAULT NULL COMMENT '类别编号',
  `INTRODUCTION` varchar(200) DEFAULT NULL COMMENT '类别介绍',
  PRIMARY KEY (`CATEGORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `CATEGORY` */

/*Table structure for table `COMPANY_INFO` */

DROP TABLE IF EXISTS `COMPANY_INFO`;

CREATE TABLE `COMPANY_INFO` (
  `COMPANY_INFO_ID` bigint(15) NOT NULL AUTO_INCREMENT COMMENT '公司信息ID',
  `KEYWORD` varchar(100) DEFAULT NULL COMMENT '描述',
  `VAL` varchar(300) DEFAULT NULL COMMENT '值',
  PRIMARY KEY (`COMPANY_INFO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `COMPANY_INFO` */

/*Table structure for table `INFORMATION` */

DROP TABLE IF EXISTS `INFORMATION`;

CREATE TABLE `INFORMATION` (
  `INFO_ID` bigint(15) NOT NULL AUTO_INCREMENT COMMENT '资讯ID',
  `TITLE` varchar(100) NOT NULL COMMENT '标题',
  `AUTHOR` varchar(100) DEFAULT NULL COMMENT '作者',
  `CONTENT` varchar(4000) DEFAULT NULL COMMENT '内容',
  `DATE` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`INFO_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1000002 DEFAULT CHARSET=utf8;

/*Data for the table `INFORMATION` */

insert  into `INFORMATION`(`INFO_ID`,`TITLE`,`AUTHOR`,`CONTENT`,`DATE`) values (1000000,'在逆市中不断突破 期盼今年产值翻番','admin','在逆市中不断突破 期盼今年产值翻番','2012-11-27'),(1000001,'经济衰退使亚洲印刷出口额出现下降趋势','admin','经济衰退使亚洲印刷出口额出现下降趋势','2012-11-27');

/*Table structure for table `INFORMATION_LOG` */

DROP TABLE IF EXISTS `INFORMATION_LOG`;

CREATE TABLE `INFORMATION_LOG` (
  `INFO_LOG_ID` bigint(15) NOT NULL AUTO_INCREMENT COMMENT '资讯日志ID',
  `INFO_ID` bigint(15) NOT NULL COMMENT '资讯ID',
  `TITLE` varchar(100) DEFAULT NULL COMMENT '标题',
  `AUTHOR` varchar(50) DEFAULT NULL COMMENT '作者',
  `CONTENT` varchar(4000) DEFAULT NULL COMMENT '内容',
  `DATE` date DEFAULT NULL COMMENT '发布日期',
  `MODIFY_DATE` date DEFAULT NULL COMMENT '修改时间',
  `MODIFY_TYPE` int(1) NOT NULL COMMENT '操作分类（1-添加，2-修改，3-删除）',
  `MODIFY_BY` varchar(100) DEFAULT NULL COMMENT '操作人',
  PRIMARY KEY (`INFO_LOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `INFORMATION_LOG` */

/*Table structure for table `PICTURE` */

DROP TABLE IF EXISTS `PICTURE`;

CREATE TABLE `PICTURE` (
  `PICTURE_ID` bigint(15) NOT NULL AUTO_INCREMENT COMMENT '图片ID',
  `PICTURE_PATH` varchar(300) NOT NULL COMMENT '图片地址',
  `PICTURE_DESCRIPTION` varchar(200) DEFAULT NULL COMMENT '图片描述',
  `CORRELATION_ID` bigint(15) DEFAULT NULL COMMENT '关联ID',
  `IS_PRIMARY` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`PICTURE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `PICTURE` */

/*Table structure for table `PRODUCT` */

DROP TABLE IF EXISTS `PRODUCT`;

CREATE TABLE `PRODUCT` (
  `PRODUCT_ID` bigint(15) NOT NULL AUTO_INCREMENT COMMENT '产品ID',
  `NAME` varchar(50) NOT NULL COMMENT '名称',
  `NUMBER` varchar(50) DEFAULT NULL COMMENT '编号',
  `SPECIFICATIONS` varchar(50) DEFAULT NULL COMMENT '规格',
  `MATERIALS` varchar(50) DEFAULT NULL COMMENT '材料\r\n工艺\r\n包装\r\n产品介绍\r\n分类ID',
  `PROCESSES` varchar(50) DEFAULT NULL COMMENT '工艺',
  `PACKAGING` varchar(50) DEFAULT NULL COMMENT '包装',
  `INTRODUCTION` varchar(300) DEFAULT NULL COMMENT '产品介绍',
  `CATEGORY_ID` bigint(15) DEFAULT NULL COMMENT '分类ID',
  PRIMARY KEY (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `PRODUCT` */

/*Table structure for table `PRODUCT_LOG` */

DROP TABLE IF EXISTS `PRODUCT_LOG`;

CREATE TABLE `PRODUCT_LOG` (
  `PRODUCT_LOG_ID` bigint(15) NOT NULL AUTO_INCREMENT COMMENT '产品日志ID',
  `PRODUCT_ID` bigint(15) NOT NULL COMMENT '产品ID',
  `NAME` varchar(50) NOT NULL COMMENT '名称',
  `NUMBER` varchar(50) DEFAULT NULL COMMENT '编号',
  `SPECIFICATIONS` varchar(50) DEFAULT NULL COMMENT '规格',
  `MATERIALS` varchar(50) DEFAULT NULL COMMENT '材料',
  `PROCESSES` varchar(50) DEFAULT NULL COMMENT '工艺',
  `PACKAGING` varchar(50) DEFAULT NULL COMMENT '包装',
  `INTRODUCTION` varchar(300) DEFAULT NULL COMMENT '产品介绍',
  `CATEGORYID` bigint(15) DEFAULT NULL COMMENT '分类ID',
  `MODIFY_DATE` date DEFAULT NULL COMMENT '修改时间',
  `MODIFY_TYPE` int(1) DEFAULT NULL COMMENT '操作分类（1-添加，2-修改，3-删除）',
  `MODIFY_BY` varchar(50) DEFAULT NULL COMMENT '操作人',
  PRIMARY KEY (`PRODUCT_LOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `PRODUCT_LOG` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


ALTER TABLE `ZHGYDB`.`COMPANY_INFO`   
  ADD  UNIQUE INDEX `UNIQUE_KEY` (`KEYWORD`);

ALTER TABLE `product`   
ADD COLUMN INSHOWCASE BOOLEAN NOT NULL DEFAULT FALSE

