/*
SQLyog Trial v9.50 
MySQL - 5.5.19 : Database - zhgydb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zhgydb` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `zhgydb`;

/*Data for the table `category` */

insert  into `category`(`CATEGORY_ID`,`HAVEHIGHER`,`HIGHERID`,`NAME`,`NUMBER`,`INTRODUCTION`) values (1,0,NULL,'纹身贴纸','1','分类A'),(2,0,NULL,'滴塑贴纸','2','分类A'),(3,0,NULL,'不干胶贴纸','3','分类C'),(4,0,NULL,'亚克力钻石贴纸','4','分类D'),(6,1,1,'纹身贴纸子分类1',NULL,'A1'),(7,1,1,'纹身贴纸子分类2',NULL,'A2'),(8,1,1,'纹身贴纸子分类3',NULL,'A3'),(9,1,6,'A1.1',NULL,'A1.1'),(10,0,NULL,'泡棉贴纸',NULL,NULL),(11,0,NULL,'镭射贴纸',NULL,NULL),(12,0,NULL,'PVC贴纸',NULL,NULL),(13,0,NULL,'3D贴纸',NULL,NULL),(14,0,NULL,'冰箱贴',NULL,NULL),(15,0,NULL,'告示贴',NULL,NULL),(16,0,NULL,'吸塑贴纸',NULL,NULL),(17,0,NULL,'卡片',NULL,NULL),(18,0,NULL,'钥匙扣',NULL,NULL),(19,0,NULL,'胸章',NULL,NULL),(20,0,NULL,'其他',NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
