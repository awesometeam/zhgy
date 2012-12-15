/*
SQLyog Trial v9.50 
MySQL - 5.5.19 : Database - zhgydb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zhgydb` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `zhgydb`;

/*Data for the table `company_info` */

insert  into `company_info`(`COMPANY_INFO_ID`,`KEYWORD`,`VAL`) values (1,'CompanyIntroduction','温州中昊工艺品有限公司座落于中国印刷城--温州龙港,是专业从事研发、制造和销售各种促销礼品和包装产品的企业。公司自成立以来，本着\"以质量赢市场、以创新促发展、以服务强信誉、以管理增效益\"的企业宗旨，走出了一条自主创新、稳定发展、走向品牌的坚实之路。先后引进世界一流印刷设备\"海德堡\"CD74+UV全数控印刷机器，采用国际环保型UV油墨，做到与国外先进厂家同等水平。公司同时配备了其他印刷设备和各种一流的自动包装机。\r\n  温州中昊工艺品有限公司座落于中国印刷城--温州龙港,是专业从事研发、制造和销售各种促销礼品和包装产品的企业。公司自成立以来，本着\"以质量赢市场、以创新促发展、以服务强信誉、以管理增效益\"的企业宗旨，走出了一条自主创新、稳定发展、走向品牌的坚实之路。先后引进世界一流印刷设备\"海德堡\"CD74+UV全数控印刷机器，采用国际环保型UV油墨，做到与国外先进厂家同等水平。公司同时配备了其他印刷设备和各种一流的自动包装机。'),(2,'CompanyPhone','0577-59877566'),(3,'CompanyFax','0577-59877566'),(4,'CompanyAddress','中国·温州·龙港镇示范工业园区5区7幢'),(5,'CompanyEmail','wzzhgift@wzzhgift.com'),(6,'CompanyQQ','87525384');

/*Data for the table `information` */

insert  into `information`(`INFO_ID`,`TITLE`,`AUTHOR`,`CONTENT`,`DATE`) values (1000000,'在逆市中不断突破 期盼今年产值翻番','admin','在逆市中不断突破 期盼今年产值翻番','2012-11-27'),(1000001,'经济衰退使亚洲印刷出口额出现下降趋势','admin','经济衰退使亚洲印刷出口额出现下降趋势','2012-11-27'),(1000002,'title0','admin','this is NO.0 info.','2012-11-29'),(1000003,'title1','admin','this is NO.1 info.','2012-11-29'),(1000004,'title2','admin','this is NO.2 info.','2012-11-29'),(1000005,'title3','admin','this is NO.3 info.','2012-11-29'),(1000006,'title4','admin','this is NO.4 info.','2012-11-29'),(1000007,'title5','admin','this is NO.5 info.','2012-11-29'),(1000008,'title6','admin','this is NO.6 info.','2012-11-29'),(1000009,'title7','admin','this is NO.7 info.','2012-11-29'),(1000010,'title8','admin','this is NO.8 info.','2012-11-29'),(1000011,'title9','admin','this is NO.9 info.','2012-11-29'),(1000012,'title10','admin','this is NO.10 info.','2012-11-29'),(1000013,'title11','admin','this is NO.11 info.','2012-11-29'),(1000014,'title12','admin','this is NO.12 info.','2012-11-29'),(1000015,'title13','admin','this is NO.13 info.','2012-11-29'),(1000016,'title14','admin','this is NO.14 info.','2012-11-29'),(1000017,'title15','admin','this is NO.15 info.','2012-11-29'),(1000018,'title16','admin','this is NO.16 info.','2012-11-29'),(1000019,'title17','admin','this is NO.17 info.','2012-11-29'),(1000020,'title18','admin','this is NO.18 info.','2012-11-29'),(1000021,'title19','admin','this is NO.19 info.','2012-11-29');

/*Data for the table `information_log` */

/*Data for the table `picture` */

INSERT INTO `PICTURE` (`PICTURE_ID`, `PICTURE_PATH`, `PICTURE_DESCRIPTION`, `CORRELATION_ID`, `IS_PRIMARY`) VALUES
(2, '/zhgy/images/SlideshowPictures/wrap1.jpg', '图片1', -1, 0),
(3, '/zhgy/images/SlideshowPictures/wrap2.jpg', '图片2', -1, 0),
(4, '/zhgy/images/SlideshowPictures/wrap3.jpg', '图片3', -1, 0),
(5, '/zhgy/images/product/1/6/ZH-CS050.jpg', '产品图片1', 1, 1),
(6, '/zhgy/images/product/1/6/ZH-CS051.jpg', '产品图片2', 2, 1),
(7, '/zhgy/images/product/1/6/ZH-CS052.jpg', '产品图片3', 3, 1),
(8, '/zhgy/images/product/1/6/ZH-CS053.jpg', '产品图片4', 4, 1),
(9, '/zhgy/images/product/1/7/ZH-CS054.jpg', '产品图片5', 5, 1),
(10, '/zhgy/images/product/1/7/ZH-CS055.jpg', '产品图片6', 6, 1),
(11, '/zhgy/images/product/1/7/ZH-CS056.jpg', '产品图片7', 7, 1);

/*Data for the table `product` */

insert  into `product`(`PRODUCT_ID`,`NAME`,`NUMBER`,`SPECIFICATIONS`,`MATERIALS`,`PROCESSES`,`PACKAGING`,`INTRODUCTION`,`CATEGORY_ID`,`INSHOWCASE`) values (1,'ZH-CS050',NULL,NULL,NULL,NULL,NULL,NULL,6,1),(2,'ZH-CS051',NULL,NULL,NULL,NULL,NULL,NULL,6,1),(3,'ZH-CS052',NULL,NULL,NULL,NULL,NULL,NULL,6,1),(4,'ZH-CS053',NULL,NULL,NULL,NULL,NULL,NULL,6,1),(5,'ZH-CS054',NULL,NULL,NULL,NULL,NULL,NULL,7,1),(6,'ZH-CS055',NULL,NULL,NULL,NULL,NULL,NULL,7,1),(7,'ZH-CS056',NULL,NULL,NULL,NULL,NULL,NULL,7,1);

/*Data for the table `product_log` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
USE `zhgydb`;

/*Data for the table `company_info` */

insert  into `company_info`(`COMPANY_INFO_ID`,`KEYWORD`,`VAL`) values (1,'CompanyIntroduction','温州中昊工艺品有限公司座落于中国印刷城--温州龙港,是专业从事研发、制造和销售各种促销礼品和包装产品的企业。公司自成立以来，本着\"以质量赢市场、以创新促发展、以服务强信誉、以管理增效益\"的企业宗旨，走出了一条自主创新、稳定发展、走向品牌的坚实之路。先后引进世界一流印刷设备\"海德堡\"CD74+UV全数控印刷机器，采用国际环保型UV油墨，做到与国外先进厂家同等水平。公司同时配备了其他印刷设备和各种一流的自动包装机。\r\n  温州中昊工艺品有限公司座落于中国印刷城--温州龙港,是专业从事研发、制造和销售各种促销礼品和包装产品的企业。公司自成立以来，本着\"以质量赢市场、以创新促发展、以服务强信誉、以管理增效益\"的企业宗旨，走出了一条自主创新、稳定发展、走向品牌的坚实之路。先后引进世界一流印刷设备\"海德堡\"CD74+UV全数控印刷机器，采用国际环保型UV油墨，做到与国外先进厂家同等水平。公司同时配备了其他印刷设备和各种一流的自动包装机。'),(2,'CompanyPhone','0577-59877566'),(3,'CompanyFax','0577-59877566'),(4,'CompanyAddress','中国·温州·龙港镇示范工业园区5区7幢'),(5,'CompanyEmail','wzzhgift@wzzhgift.com'),(6,'CompanyQQ','87525384');

/*Data for the table `information` */

insert  into `information`(`INFO_ID`,`TITLE`,`AUTHOR`,`CONTENT`,`DATE`) values (1000000,'在逆市中不断突破 期盼今年产值翻番','admin','在逆市中不断突破 期盼今年产值翻番','2012-11-27'),(1000001,'经济衰退使亚洲印刷出口额出现下降趋势','admin','经济衰退使亚洲印刷出口额出现下降趋势','2012-11-27'),(1000002,'title0','admin','this is NO.0 info.','2012-11-29'),(1000003,'title1','admin','this is NO.1 info.','2012-11-29'),(1000004,'title2','admin','this is NO.2 info.','2012-11-29'),(1000005,'title3','admin','this is NO.3 info.','2012-11-29'),(1000006,'title4','admin','this is NO.4 info.','2012-11-29'),(1000007,'title5','admin','this is NO.5 info.','2012-11-29'),(1000008,'title6','admin','this is NO.6 info.','2012-11-29'),(1000009,'title7','admin','this is NO.7 info.','2012-11-29'),(1000010,'title8','admin','this is NO.8 info.','2012-11-29'),(1000011,'title9','admin','this is NO.9 info.','2012-11-29'),(1000012,'title10','admin','this is NO.10 info.','2012-11-29'),(1000013,'title11','admin','this is NO.11 info.','2012-11-29'),(1000014,'title12','admin','this is NO.12 info.','2012-11-29'),(1000015,'title13','admin','this is NO.13 info.','2012-11-29'),(1000016,'title14','admin','this is NO.14 info.','2012-11-29'),(1000017,'title15','admin','this is NO.15 info.','2012-11-29'),(1000018,'title16','admin','this is NO.16 info.','2012-11-29'),(1000019,'title17','admin','this is NO.17 info.','2012-11-29'),(1000020,'title18','admin','this is NO.18 info.','2012-11-29'),(1000021,'title19','admin','this is NO.19 info.','2012-11-29');

/*Data for the table `information_log` */

/*Data for the table `picture` */

insert  into `picture`(`PICTURE_ID`,`PICTURE_PATH`,`PICTURE_DESCRIPTION`,`CORRELATION_ID`) values (2,'/zhgy/images/SlideshowPictures/wrap1.jpg','图片1',-1),(3,'/zhgy/images/SlideshowPictures/wrap2.jpg','图片2',-1),(4,'/zhgy/images/SlideshowPictures/wrap3.jpg','图片3',-1),(5,'/zhgy/images/product/1/6/ZH-CS050.jpg','产品图片1',1),(6,'/zhgy/images/product/1/6/ZH-CS051.jpg','产品图片2',2),(7,'/zhgy/images/product/1/6/ZH-CS052.jpg','产品图片3',3),(8,'/zhgy/images/product/1/6/ZH-CS053.jpg','产品图片4',4),(9,'/zhgy/images/product/1/7/ZH-CS054.jpg','产品图片5',5),(10,'/zhgy/images/product/1/7/ZH-CS055.jpg','产品图片6',6),(11,'/zhgy/images/product/1/7/ZH-CS056.jpg','产品图片7',7);

/*Data for the table `product` */

INSERT INTO `product` (`PRODUCT_ID`, `NAME`, `NUMBER`, `SPECIFICATIONS`, `MATERIALS`, `PROCESSES`, `PACKAGING`, `INTRODUCTION`, `CATEGORY_ID`, `INSHOWCASE`) VALUES
(1, 'ZH-CS050', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(2, 'ZH-CS051', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1),
(3, 'ZH-CS052', NULL, NULL, NULL, NULL, NULL, NULL, 3, 1),
(4, 'ZH-CS053', NULL, NULL, NULL, NULL, NULL, NULL, 4, 1),
(5, 'ZH-CS054', NULL, NULL, NULL, NULL, NULL, NULL, 6, 1),
(6, 'ZH-CS055', NULL, NULL, NULL, NULL, NULL, NULL, 7, 1),
(7, 'ZH-CS056', NULL, NULL, NULL, NULL, NULL, NULL, 10, 1);


/*Data for the table `product_log` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


INSERT INTO `CATEGORY` (`CATEGORY_ID`, `HAVEHIGHER`, `HIGHERID`, `NAME`, `NUMBER`, `INTRODUCTION`) VALUES
(1, 0, NULL, '分类A', '1', '分类A'),
(2, 0, NULL, '分类B', '2', '分类B'),
(3, 0, NULL, '分类C', '3', '分类C'),
(4, 0, NULL, '分类D', '4', '分类D'),
(6, 1, 1, 'A1', NULL, 'A1'),
(7, 1, 1, 'A2', NULL, 'A2'),
(8, 1, 1, 'A3', NULL, 'A3'),
(10, 1, 3, 'C1', NULL, 'C1');



INSERT INTO  `zhgyDB`.`product` (
`PRODUCT_ID` ,
`NAME` ,
`NUMBER` ,
`SPECIFICATIONS` ,
`MATERIALS` ,
`PROCESSES` ,
`PACKAGING` ,
`INTRODUCTION` ,
`CATEGORY_ID` ,
`INSHOWCASE`
)
VALUES (
NULL ,  '测试没有图片', NULL , NULL , NULL , NULL , NULL , NULL ,  '1',  '0'
);
