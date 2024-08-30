/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.0.67-community-nt : Database - finance
*********************************************************************
Server version : 5.0.67-community-nt
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `finance`;

USE `finance`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `assets` */

DROP TABLE IF EXISTS `assets`;

CREATE TABLE `assets` (
  `name` varchar(30) default NULL,
  `amount` decimal(30,0) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `assets` */

insert  into `assets`(`name`,`amount`) values ('land','456987'),('land','10000');

/*Table structure for table `audit` */

DROP TABLE IF EXISTS `audit`;

CREATE TABLE `audit` (
  `transactionType` varchar(20) default NULL,
  `amount` varchar(30) default NULL,
  `description` varchar(30) default NULL,
  `timestamp` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `audit` */

insert  into `audit`(`transactionType`,`amount`,`description`,`timestamp`) values ('phone pay','2345','yes','6'),('phone pay','200','good','8'),('phone pay','200','good','8'),('google pay','3000','reached','5');

/*Table structure for table `budget` */

DROP TABLE IF EXISTS `budget`;

CREATE TABLE `budget` (
  `category` varchar(30) default NULL,
  `amount` decimal(30,0) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `budget` */

insert  into `budget`(`category`,`amount`) values ('salary\"','5412'),('investment','4563'),('investment','4563'),('investment','4563'),('salary\"','45987'),('freelance','1000'),('freelance','345678');

/*Table structure for table `expenses` */

DROP TABLE IF EXISTS `expenses`;

CREATE TABLE `expenses` (
  `amount` decimal(30,0) default NULL,
  `category` varchar(30) default NULL,
  `date` varchar(456) default NULL,
  `transaction` varchar(30) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `expenses` */

insert  into `expenses`(`amount`,`category`,`date`,`transaction`) values ('45987','freelance','2026-05-04','78'),('45520','salary\"','2021-06-08','4'),('3000','infrastructure','12-08-2003','678');

/*Table structure for table `income` */

DROP TABLE IF EXISTS `income`;

CREATE TABLE `income` (
  `amount` int(11) default NULL,
  `category` varchar(255) default NULL,
  `date` varchar(255) default NULL,
  `transaction` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `income` */

insert  into `income`(`amount`,`category`,`date`,`transaction`) values (1,'freelance','2025-12-14','7521'),(458,'investment','2025-05-04','456'),(45987,'investment','2026-05-04','78'),(7890,'freelance','2024-02-09','45'),(7890,'freelance','2024-02-09','45'),(12254,'investment','2024-05-08','4566'),(45520,'consulting fees','2023-12-30','45'),(123234,'sales','12-03-2004','1234'),(1000,'consulting fees','09-07-2004','5678');

/*Table structure for table `integration` */

DROP TABLE IF EXISTS `integration`;

CREATE TABLE `integration` (
  `account_number` varchar(20) default NULL,
  `amount` varchar(30) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `integration` */

insert  into `integration`(`account_number`,`amount`) values ('9878654345678','1000'),('4567456782457','78787'),('145678923456','45678'),('234567','345'),('456789','300');

/*Table structure for table `invoice` */

DROP TABLE IF EXISTS `invoice`;

CREATE TABLE `invoice` (
  `clientName` varchar(20) default NULL,
  `invoiceNumber` varchar(30) default NULL,
  `amount` varchar(20) default NULL,
  `status` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `invoice` */

insert  into `invoice`(`clientName`,`invoiceNumber`,`amount`,`status`) values ('megi','67890','200','unpaid'),('Thithiksha','678998','1000','paid'),('thithksha','678','100000','paid');

/*Table structure for table `ledger` */

DROP TABLE IF EXISTS `ledger`;

CREATE TABLE `ledger` (
  `income` varchar(20) default NULL,
  `expenses` varchar(30) default NULL,
  `savings` varchar(15) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ledger` */

insert  into `ledger`(`income`,`expenses`,`savings`) values ('1000','200','300'),('1000','200','800'),('345678','456','678'),('345','345','46'),(NULL,NULL,NULL),('50000','400','56789'),(NULL,NULL,NULL),('1000','600','300');

/*Table structure for table `liability` */

DROP TABLE IF EXISTS `liability`;

CREATE TABLE `liability` (
  `name` varchar(20) default NULL,
  `amount` varchar(30) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `liability` */

insert  into `liability`(`name`,`amount`) values ('building','2345678'),('land','1234567');

/*Table structure for table `register` */

DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `Name` varchar(30) default NULL,
  `Email` varchar(30) default NULL,
  `Contact` varchar(30) default NULL,
  `Password` varchar(30) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `register` */

insert  into `register`(`Name`,`Email`,`Contact`,`Password`) values ('vennela','vennelapotla1234@gmail.com','6303780859','Venni@123'),('viha','viha1234@gmail.com','6303780859','Viha@123'),('viha','viha1234@gmail.com','6303780859','Viha@12345'),('thithiksha','thithikshabasuvoju@gmail.com','8790254262','Thithiksha@123'),('thithiksha','chinni@gmail.com','8790254262','Thithiksha$123'),('thithiksha','thithiksha@gmail.com','8790254262','Thithiksha34@'),('megi','meg@gmail.com','9701154262','Megi@1234');

/*Table structure for table `transaction` */

DROP TABLE IF EXISTS `transaction`;

CREATE TABLE `transaction` (
  `amount` decimal(30,0) default NULL,
  `category` varchar(30) default NULL,
  `date` date default NULL,
  `transaction` varchar(30) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `transaction` */

insert  into `transaction`(`amount`,`category`,`date`,`transaction`) values ('7890','freelance','2024-02-09','45'),(NULL,NULL,NULL,NULL),('45520','salary\"','2021-06-08','4'),('12254','investment','2024-05-08','4566'),('45520','consulting fees','2023-12-30','45'),(NULL,NULL,NULL,NULL),('345','investment',NULL,'1234'),('1000','freelance',NULL,'234'),('1000','consulting fees',NULL,'456'),('300','integration services',NULL,'4567'),('234','sales',NULL,'1234');

/*Table structure for table `userpermission` */

DROP TABLE IF EXISTS `userpermission`;

CREATE TABLE `userpermission` (
  `username` varchar(20) default NULL,
  `role` varchar(30) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `userpermission` */

insert  into `userpermission`(`username`,`role`) values ('Thithiksha','employee'),('Thithiksha','employee');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
