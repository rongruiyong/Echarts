/*
SQLyog Enterprise - MySQL GUI v6.15
MySQL - 5.1.41 : Database - baicai
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `baicai`;

USE `baicai`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `pricebaicai` */

DROP TABLE IF EXISTS `pricebaicai`;

CREATE TABLE `pricebaicai` (
  `date` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `pricebaicai` */

insert  into `pricebaicai`(`date`,`price`) values ('8.1',1),('8.2',1.2),('8.3',1.5),('8.4',1.2),('8.5',1.8),('8.6',1.9),('8.7',1.6),('8.8',1.3),('8.9',1.6),('8.10',0.8),('8.11',2),('8.12',2.1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
