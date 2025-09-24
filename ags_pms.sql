/*
SQLyog Ultimate v8.55 
MySQL - 5.5.5-10.4.32-MariaDB : Database - dbrole
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dbrole` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `dbrole`;

/*Table structure for table `tblrole` */

DROP TABLE IF EXISTS `tblrole`;

CREATE TABLE `tblrole` (
  `roleID` int(11) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(50) NOT NULL,
  `roleDesc` text NOT NULL,
  PRIMARY KEY (`roleID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `tblrole` */

insert  into `tblrole`(`roleID`,`roleName`,`roleDesc`) values (1,'Admin','School Super Admin\r\n'),(2,'Department Admin','Department Admin\r\n'),(3,'Faculty','Department Faculty'),(4,'Student','Student\r\n');

/*Table structure for table `tbluser` */

DROP TABLE IF EXISTS `tbluser`;

CREATE TABLE `tbluser` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(50) NOT NULL,
  `mname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `pw` varchar(50) NOT NULL,
  `roleID` int(11) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `tbluser` */

insert  into `tbluser`(`userID`,`fname`,`mname`,`lname`,`uname`,`pw`,`roleID`) values (1,'Sandra','Rapsing','Duaso','Admin1','Admin1',1),(2,'Sandy','Rapsing','Duaso','Fac1','Fac1',3),(3,'Susan','Rapsing','Duaso','Stud1','Stud1',2),(4,'mei','mei','mei','stud2','stud2',4);

/*Table structure for table `vw_user` */

DROP TABLE IF EXISTS `vw_user`;

/*!50001 DROP VIEW IF EXISTS `vw_user` */;
/*!50001 DROP TABLE IF EXISTS `vw_user` */;

/*!50001 CREATE TABLE  `vw_user`(
 `userID` int(11) ,
 `fname` varchar(50) ,
 `mname` varchar(50) ,
 `lname` varchar(50) ,
 `uname` varchar(50) ,
 `pw` varchar(50) ,
 `roleID` int(11) ,
 `roleName` varchar(50) ,
 `roleDesc` text 
)*/;

/*View structure for view vw_user */

/*!50001 DROP TABLE IF EXISTS `vw_user` */;
/*!50001 DROP VIEW IF EXISTS `vw_user` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_user` AS select `tbluser`.`userID` AS `userID`,`tbluser`.`fname` AS `fname`,`tbluser`.`mname` AS `mname`,`tbluser`.`lname` AS `lname`,`tbluser`.`uname` AS `uname`,`tbluser`.`pw` AS `pw`,`tbluser`.`roleID` AS `roleID`,`tblrole`.`roleName` AS `roleName`,`tblrole`.`roleDesc` AS `roleDesc` from (`tbluser` join `tblrole` on(`tbluser`.`roleID` = `tblrole`.`roleID`)) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
