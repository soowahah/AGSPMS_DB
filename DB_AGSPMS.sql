/*
SQLyog Ultimate v8.55 
MySQL - 5.5.5-10.4.32-MariaDB : Database - dbusers
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dbusers` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `dbusers`;

/*Table structure for table `tbladmin` */

DROP TABLE IF EXISTS `tbladmin`;

CREATE TABLE `tbladmin` (
  `adminID` int(11) NOT NULL AUTO_INCREMENT,
  `adminNo` varchar(50) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `deptID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  PRIMARY KEY (`adminID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `tbladmin` */

insert  into `tbladmin`(`adminID`,`adminNo`,`fullName`,`deptID`,`userID`) values (1,'ADM-001','Senku Ishigami',6,4);

/*Table structure for table `tbldept` */

DROP TABLE IF EXISTS `tbldept`;

CREATE TABLE `tbldept` (
  `deptID` int(11) NOT NULL AUTO_INCREMENT,
  `deptName` varchar(100) NOT NULL,
  PRIMARY KEY (`deptID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `tbldept` */

insert  into `tbldept`(`deptID`,`deptName`) values (1,'BSIT'),(2,'BSHM'),(3,'BSTM'),(4,'BEED'),(5,'BSED'),(6,'School Admin');

/*Table structure for table `tblroles` */

DROP TABLE IF EXISTS `tblroles`;

CREATE TABLE `tblroles` (
  `roleID` int(11) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(50) NOT NULL,
  PRIMARY KEY (`roleID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `tblroles` */

insert  into `tblroles`(`roleID`,`roleName`) values (1,'Admin'),(2,'Department Admin'),(3,'Faculty'),(4,'Student');

/*Table structure for table `tblsec` */

DROP TABLE IF EXISTS `tblsec`;

CREATE TABLE `tblsec` (
  `secID` int(11) NOT NULL AUTO_INCREMENT,
  `secName` varchar(50) NOT NULL,
  PRIMARY KEY (`secID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `tblsec` */

insert  into `tblsec`(`secID`,`secName`) values (1,'1-1'),(2,'1-2'),(3,'1-3'),(4,'1-4'),(5,'1-5'),(6,'2-1'),(7,'2-2'),(8,'2-3');

/*Table structure for table `tblstudents` */

DROP TABLE IF EXISTS `tblstudents`;

CREATE TABLE `tblstudents` (
  `studentID` int(11) NOT NULL AUTO_INCREMENT,
  `studNo` varchar(50) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `mname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `deptID` int(11) NOT NULL,
  `secID` int(11) NOT NULL,
  `yearID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  PRIMARY KEY (`studentID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `tblstudents` */

insert  into `tblstudents`(`studentID`,`studNo`,`fname`,`mname`,`lname`,`deptID`,`secID`,`yearID`,`userID`) values (1,'24-00252','Sandra','R','Duaso',1,6,2,1),(2,'24-00253','Joyce','N','Marianito',1,6,2,2),(3,'24-00254','Clarenz','Z','Rocas',1,6,2,3),(4,'24-0002','Mikey','M','Sano',2,5,1,5),(5,'001','Eren','Yeah','Ger',2,7,2,6),(6,'01111','kage','yama','tobio',1,1,1,7),(7,'aaa','aaa','aaa','aaa',1,1,1,8),(8,'aaaaaaaaa','aaaaaaaaa','aaaaaaa','aaaaaaaaaaaaa',1,1,1,9),(9,'bbb','bbb','bbbb','bbbbbbb',1,1,1,10),(10,'aaaaaaaaaaaaaaaaaaaaa','aaaaaaaaaaaaaa','aaaaaaaaaaaaaaa','aaaaaaaaaaaa',1,4,1,11),(11,'9090290','sandy','san','dy',1,7,3,12);

/*Table structure for table `tblusers` */

DROP TABLE IF EXISTS `tblusers`;

CREATE TABLE `tblusers` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(50) NOT NULL,
  `pw` varchar(50) NOT NULL,
  `roleID` int(11) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `tblusers` */

insert  into `tblusers`(`userID`,`uname`,`pw`,`roleID`) values (1,'24-00252','sandra',4),(2,'joyce','joyce',4),(3,'clarenz','clarenz',4),(4,'admin1','admin1',1),(5,'mikey','mikey',4),(6,'eren','eren',3),(7,'kage','kage',3),(8,'aaa','aaa',4),(9,'a','a',1),(10,'bbb','bbb',1),(11,'as','as',1),(12,'sandy','sandy',4);

/*Table structure for table `tblyr` */

DROP TABLE IF EXISTS `tblyr`;

CREATE TABLE `tblyr` (
  `yearID` int(11) NOT NULL AUTO_INCREMENT,
  `yrlevel` int(1) NOT NULL,
  PRIMARY KEY (`yearID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `tblyr` */

insert  into `tblyr`(`yearID`,`yrlevel`) values (1,1),(2,2),(3,3),(4,4);

/*Table structure for table `vw_students` */

DROP TABLE IF EXISTS `vw_students`;

/*!50001 DROP VIEW IF EXISTS `vw_students` */;
/*!50001 DROP TABLE IF EXISTS `vw_students` */;

/*!50001 CREATE TABLE  `vw_students`(
 `studNo` varchar(50) ,
 `fname` varchar(100) ,
 `mname` varchar(50) ,
 `lname` varchar(50) ,
 `deptName` varchar(100) ,
 `secName` varchar(50) ,
 `yrlevel` int(1) ,
 `uname` varchar(50) ,
 `pw` varchar(50) ,
 `roleName` varchar(50) 
)*/;

/*Table structure for table `vw_user` */

DROP TABLE IF EXISTS `vw_user`;

/*!50001 DROP VIEW IF EXISTS `vw_user` */;
/*!50001 DROP TABLE IF EXISTS `vw_user` */;

/*!50001 CREATE TABLE  `vw_user`(
 `userID` int(11) ,
 `uname` varchar(50) ,
 `pw` varchar(50) ,
 `roleName` varchar(50) ,
 `fullName` varchar(100) ,
 `deptName` varchar(100) 
)*/;

/*Table structure for table `vw_user_fixed` */

DROP TABLE IF EXISTS `vw_user_fixed`;

/*!50001 DROP VIEW IF EXISTS `vw_user_fixed` */;
/*!50001 DROP TABLE IF EXISTS `vw_user_fixed` */;

/*!50001 CREATE TABLE  `vw_user_fixed`(
 `userID` int(11) ,
 `uname` varchar(50) ,
 `pw` varchar(50) ,
 `roleName` varchar(50) ,
 `fullName` varchar(100) ,
 `deptName` varchar(100) 
)*/;

/*View structure for view vw_students */

/*!50001 DROP TABLE IF EXISTS `vw_students` */;
/*!50001 DROP VIEW IF EXISTS `vw_students` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_students` AS select `s`.`studNo` AS `studNo`,`s`.`fname` AS `fname`,`s`.`mname` AS `mname`,`s`.`lname` AS `lname`,`d`.`deptName` AS `deptName`,`sc`.`secName` AS `secName`,`y`.`yrlevel` AS `yrlevel`,`u`.`uname` AS `uname`,`u`.`pw` AS `pw`,`r`.`roleName` AS `roleName` from (((((`tblstudents` `s` join `tblsec` `sc` on(`s`.`secID` = `sc`.`secID`)) join `tblyr` `y` on(`s`.`yearID` = `y`.`yearID`)) join `tbldept` `d` on(`s`.`deptID` = `d`.`deptID`)) join `tblusers` `u` on(`s`.`userID` = `u`.`userID`)) join `tblroles` `r` on(`u`.`roleID` = `r`.`roleID`)) */;

/*View structure for view vw_user */

/*!50001 DROP TABLE IF EXISTS `vw_user` */;
/*!50001 DROP VIEW IF EXISTS `vw_user` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_user` AS select `u`.`userID` AS `userID`,`u`.`uname` AS `uname`,`u`.`pw` AS `pw`,`r`.`roleName` AS `roleName`,coalesce(`s`.`fname`,`a`.`fullName`) AS `fullName`,`d`.`deptName` AS `deptName` from ((((`tblusers` `u` join `tblroles` `r` on(`u`.`roleID` = `r`.`roleID`)) left join `tblstudents` `s` on(`u`.`userID` = `s`.`userID`)) left join `tbladmin` `a` on(`u`.`userID` = `a`.`userID`)) left join `tbldept` `d` on(`d`.`deptID` = coalesce(`s`.`deptID`,`a`.`deptID`))) */;

/*View structure for view vw_user_fixed */

/*!50001 DROP TABLE IF EXISTS `vw_user_fixed` */;
/*!50001 DROP VIEW IF EXISTS `vw_user_fixed` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_user_fixed` AS select `u`.`userID` AS `userID`,`u`.`uname` AS `uname`,`u`.`pw` AS `pw`,`r`.`roleName` AS `roleName`,coalesce(`s`.`fname`,`a`.`fullName`) AS `fullName`,`d`.`deptName` AS `deptName` from ((((`tblusers` `u` join `tblroles` `r` on(`u`.`roleID` = `r`.`roleID`)) left join `tblstudents` `s` on(`u`.`userID` = `s`.`userID`)) left join `tbladmin` `a` on(`u`.`userID` = `a`.`userID`)) left join `tbldept` `d` on(`d`.`deptID` = coalesce(`s`.`deptID`,`a`.`deptID`))) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
