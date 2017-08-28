/*
SQLyog Enterprise - MySQL GUI v6.15
MySQL - 5.1.41 : Database - vegetable
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `vegetable`;

USE `vegetable`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `vegetable` */

DROP TABLE IF EXISTS `vegetable`;

CREATE TABLE `vegetable` (
  `num` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `weight` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `_weight` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`num`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `vegetable` */

insert  into `vegetable`(`num`,`name`,`weight`,`_weight`) values (1,'白菜','200','170'),(2,'萝卜','300','100'),(3,'青椒','150','90'),(4,'土豆','400','205'),(5,'西红柿','90','30'),(6,'茄子','285','280');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
