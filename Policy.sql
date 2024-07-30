/*
SQLyog Community v12.02 (32 bit)
MySQL - 5.5.29 : Database - policy
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`policy` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `policy`;

/*Table structure for table `oreg` */

DROP TABLE IF EXISTS `oreg`;

CREATE TABLE `oreg` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `mail_id` varchar(200) DEFAULT NULL,
  `dob` varchar(200) DEFAULT NULL,
  `Gender` varchar(200) DEFAULT NULL,
  `profile` varchar(200) DEFAULT NULL,
  `cont` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT 'Waiting',
  KEY `sno` (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Data for the table `oreg` */

insert  into `oreg`(`sno`,`id`,`name`,`password`,`mail_id`,`dob`,`Gender`,`profile`,`cont`,`address`,`status`) values (12,'123','Abi','1234','techpowerotp@gmail.com','12/09/1999','Male','header.jpg','75643243442','Chennai','Activated'),(17,'1235','Gokul','1234','techpowerotp@gmail.com','12/09/1999','Male','WIN_20231019_15_16_57_Pro.jpg','75643243442','Chennai','Activated'),(18,'123','Maran','1234','maran12@gmail.com','12/09/1999','Male','health.gif','75643243442','Chennai','Activated');

/*Table structure for table `reg` */

DROP TABLE IF EXISTS `reg`;

CREATE TABLE `reg` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `mail_id` varchar(200) DEFAULT NULL,
  `dob` varchar(200) DEFAULT NULL,
  `profile` varchar(200) DEFAULT NULL,
  `Gender` varchar(200) DEFAULT NULL,
  `cont` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT 'Waiting',
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `reg` */

/*Table structure for table `reqreg` */

DROP TABLE IF EXISTS `reqreg`;

CREATE TABLE `reqreg` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `mail_id` varchar(200) DEFAULT NULL,
  `keyy` int(20) DEFAULT NULL,
  `statua` varchar(200) DEFAULT 'Waiting',
  KEY `sno` (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

/*Data for the table `reqreg` */

insert  into `reqreg`(`sno`,`id`,`name`,`mail_id`,`keyy`,`statua`) values (15,123,'Abi','techpowerotp@gmail.com',8456,'Sent'),(19,1235,'Gokul','techpowerotp@gmail.com',3051,'Sent'),(20,1235,'Gokul','techpowerotp@gmail.com',9030,'Sent'),(21,123,'Maran','maran12@gmail.com',NULL,'Waiting'),(22,123,'Maran','maran12@gmail.com',NULL,'Waiting'),(23,123,'Maran','maran12@gmail.com',5244,'Sent');

/*Table structure for table `request` */

DROP TABLE IF EXISTS `request`;

CREATE TABLE `request` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `reg` varchar(200) DEFAULT NULL,
  `oname` varchar(200) DEFAULT NULL,
  `trap` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT 'waiting',
  `fkey` varchar(200) DEFAULT '--------',
  `request` varchar(200) DEFAULT '0',
  `downlad` varchar(200) DEFAULT '0',
  KEY `sno` (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

/*Data for the table `request` */

insert  into `request`(`sno`,`id`,`name`,`reg`,`oname`,`trap`,`image`,`status`,`fkey`,`request`,`downlad`) values (17,'123','Abi','123','Abi','BD37245EF8E81B87','Sign.PNG','Send Key','693','1','1'),(20,'1235','Gokul','1235','Gokul','2C1BA6432696CAD5','AA_Home.jsp','Send Key','5706','1','1'),(21,'123','Maran','123','Maran','E790A9564B6AF371','paracetamol.jpg','Send Key','4781','1','1');

/*Table structure for table `upload` */

DROP TABLE IF EXISTS `upload`;

CREATE TABLE `upload` (
  `reg` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `fkey` varchar(200) DEFAULT NULL,
  `dates` varchar(200) DEFAULT NULL,
  `trapdoor` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `upload` */

insert  into `upload`(`reg`,`name`,`fkey`,`dates`,`trapdoor`,`image`) values ('123','Abi','693','01/11/23 18:27:33','BD37245EF8E81B87','Sign.PNG'),('1235','Gokul','5706','06/11/23 17:54:28','2C1BA6432696CAD5','AA_Home.jsp'),('123','Maran','4781','27/11/23 12:23:19','E790A9564B6AF371','paracetamol.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
