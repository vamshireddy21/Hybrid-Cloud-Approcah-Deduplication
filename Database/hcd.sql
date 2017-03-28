/*
SQLyog Community v11.52 (32 bit)
MySQL - 5.1.67-community : Database - hcd
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`hcd` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hcd`;

/*Table structure for table `duplcheck` */

DROP TABLE IF EXISTS `duplcheck`;

CREATE TABLE `duplcheck` (
  `uid` varchar(2000) DEFAULT NULL,
  `filetoken` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `duplcheck` */

/*Table structure for table `filedata` */

DROP TABLE IF EXISTS `filedata`;

CREATE TABLE `filedata` (
  `fid` int(200) DEFAULT NULL,
  `fname` varchar(2000) DEFAULT NULL,
  `file_` blob,
  `hash` varchar(4000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `filedata` */

/*Table structure for table `reference` */

DROP TABLE IF EXISTS `reference`;

CREATE TABLE `reference` (
  `fid` varchar(2000) DEFAULT NULL,
  `rfid` varchar(4000) DEFAULT NULL,
  `fname` varchar(4000) DEFAULT NULL,
  `userid` varchar(4000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `reference` */

insert  into `reference`(`fid`,`rfid`,`fname`,`userid`) values ('22','21','blockjava','sajid26');

/*Table structure for table `servicecloud` */

DROP TABLE IF EXISTS `servicecloud`;

CREATE TABLE `servicecloud` (
  `userid` varchar(4000) DEFAULT NULL,
  `fid` varchar(2000) DEFAULT NULL,
  `fname` varchar(4000) DEFAULT NULL,
  `fdata` blob,
  `ckey` varchar(4000) DEFAULT NULL,
  `token` varchar(4000) DEFAULT NULL,
  `pkey` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `servicecloud` */

insert  into `servicecloud`(`userid`,`fid`,`fname`,`fdata`,`ckey`,`token`,`pkey`) values ('sajid26','21','java','rp«¯êÈä£ÆˆÿÙ√y:UO=ôé~ïÀ<÷H„Ô∏y/ï∆Bõ÷ŒlÔÓb[\r;[ä‹UDfÀGû%AÒó…ﬁ∑Í^5#ÈèüÌ”=H¯‚•øÂ%~‘!A\ZÄ_%»ª}u—“\ZËs79í-Dñ4WW<ÁÃŸa+»uI:{År<ˆmB/ÓÄ≥œ⁄~»ƒ)˘mËÖ#›⁄CÓÁÚC[÷Õ˝+)5≤£ùü2„§œ6„x(Ïö]ùÍW∑È⁄ˇ*kLÁ˘YAHçkmPW%c3ﬁU\rΩ/≥w∑rt“ÉÀd∂¶˘ä¨:\\…≤ÇQ4d°2xKﬂ1	3sÍ¿Èπ∫˚6_¯ÁºÚ\ZK.°}+¨å˚[≈ˇÕˇH¥0≠ÛÍ6πtπõT/o√Ä®‚>a`ªÇƒ…Ç˜˚YëYN(;üƒh4Ò≈Éòl˙hπ–m∫ºHp[˜Bóº›=£8˚\n.˙EÓ¸ZIÏÑŒuä§Åà‰õ•–p±8Ø=/5ÃIÉKiÈô/í	;≠âcø˛œòı}Ì©\0çèñ,\"KÜÚD¡\nZáTÂêzñ¬ﬁƒœL#ò]∞™¨Q˙±kÂùï0£ãÜ\"Ò%Y˝À∞ÖÎXL∑—\ny»S∏;Ñ£ôk,Bà*\'ÔªUﬂ}©n¬\0MˆáÊ—PYﬂ,','he#zw‚ÄùxM√í√≤K5De√µ¬©P.¬°√ß¬ÆM√¨√†√∑b‚ÄîLH√é0=‚Äô√ø>‚Ä†4√´√í√ò√Ñ√¶‚Äì¬∑4√≠','e88d3e1143802f697ed2de05e8acf27f1fd379547bda5c673f0a6f8fbfcc229f3406b09547529c47','7bda5c673f0a6f8fbfcc229f3406b09547529c47');

/*Table structure for table `signup` */

DROP TABLE IF EXISTS `signup`;

CREATE TABLE `signup` (
  `uname` varchar(2000) DEFAULT NULL,
  `userid` varchar(2000) DEFAULT NULL,
  `passwrd` varchar(2000) DEFAULT NULL,
  `eid` varchar(2000) DEFAULT NULL,
  `mno` varchar(2000) DEFAULT NULL,
  `pkey` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `signup` */

insert  into `signup`(`uname`,`userid`,`passwrd`,`eid`,`mno`,`pkey`) values ('alice','alice21','alice21','cloudtechnologiesprojects@gmail.com','8121953811','294f627b4f478132c4220e7f6bb06c2aa7f0b792'),('aliya','aliya21','aliya21','cloudtechnologiesprojects@gmail.com','8121953811','5ff073a0ace35845fa4d5fc510b420b59439bbb0'),('sajid','sajid26','sajid26','cloudtechnologiesprojects@gmail.com','9985714374','7bda5c673f0a6f8fbfcc229f3406b09547529c47');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `uid` varchar(200) DEFAULT NULL,
  `token` varchar(2000) DEFAULT NULL,
  `pkey` varchar(2000) DEFAULT NULL,
  `status` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `token` */

/*Table structure for table `treq` */

DROP TABLE IF EXISTS `treq`;

CREATE TABLE `treq` (
  `uid` varchar(2000) DEFAULT NULL,
  `hash` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `treq` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
