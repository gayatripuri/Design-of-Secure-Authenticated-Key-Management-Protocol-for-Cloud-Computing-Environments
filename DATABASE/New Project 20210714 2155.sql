-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.22-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema dsak
--

CREATE DATABASE IF NOT EXISTS dsak;
USE dsak;

--
-- Definition of table `data_files`
--

DROP TABLE IF EXISTS `data_files`;
CREATE TABLE `data_files` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `uid` varchar(45) NOT NULL,
  `uname` varchar(45) NOT NULL,
  `enc_data` longblob NOT NULL,
  `dkey` longtext NOT NULL,
  `time` varchar(45) NOT NULL,
  `filekeyword` varchar(450) NOT NULL,
  `filename` longtext NOT NULL,
  `data` longblob NOT NULL,
  `enc_time` varchar(85) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_files`
--

/*!40000 ALTER TABLE `data_files` DISABLE KEYS */;
INSERT INTO `data_files` (`id`,`uid`,`uname`,`enc_data`,`dkey`,`time`,`filekeyword`,`filename`,`data`,`enc_time`) VALUES 
 (1,'1','abdul',0x4567417375474E695A512B344A3546774F484A524B575466736D50637843556C326D3162564C574F41496A73554D4E6A2F6434414C32523677654A726B5757645A515765362B39746167394E0D0A512B30636A6B566241316869306A525734505048514F347A434767574C61634F2B3876356E71686363534D545A6B71484E70423333777A4C2B7A35376E416B4C6641323534384B68435150450D0A6F744B623832754438434F3050685A386263336A41304B704450476145424E36553270594C724F775A596351386731717A45632F5A755459457A49784C704D4A796F776465574C396578422B0D0A4535616555366B68556A304A56764A36596371563859766E735336547475783172344245587442714B41616A7350334178513D3D,'EP/N5Iwtit6fkQsQncGsAQ==','2021/07/14 20:30:07','test','test.txt',0x4F6E65206F6620746865206D6F737420776964656C7920757365642070726F6772616D6D696E67206C616E6775616765732C0A4A617661206973207573656420617320746865207365727665722D73696465206C616E677561676520666F72206D6F7374206261636B2D656E640A646576656C6F706D656E742070726F6A656374732C20696E636C7564696E672074686F736520696E766F6C76696E672062696720646174610A616E6420416E64726F696420646576656C6F706D656E742E0A,'17963.0'),
 (2,'2','Hadhi',0x4A6652636C7945396D725276535A5376737544786E36624159686A4E66567A5779355141706A392F6C496C78617A346651484F696378796278364778784B64536336453636535A567665496C0D0A6C57696E746C4E3178566B414B3963412B3946435439576773527930714F4E34664E57704D71466242396A3535786575316B46536A355A3651306E3069534E32397A61367A33632B6A586A790D0A756476374534444D415773777139522B575A70644C4D512F615A3639587A515231652F4630727A6B534D5937522F36746D5577365771546F4A57536A7836374D2B432F506266752B61424E570D0A446A54565043384C6653664F4E6A4A755249686C6B77315435496A527A426A2F5462367745334D586E2B395331376B6B63413D3D,'JICo63KuHjLUEP/NZOgo8w==','2021/07/14 21:34:07','testing','laptop.txt',0x54686520323032302044656C6C205850532031352069732061206E6561722D696465616C2031352E362D696E6368206465736B746F702D7265706C6163656D656E74206C6170746F702E0A49747320736C65656B2064657369676E2C206661737420706572666F726D616E63652C20616E6420726F62757374206665617475726520736574206D616B65206974206F757220746F700A7069636B20616D6F6E67207072656D69756D2057696E646F7773206F7074696F6E73206174206974732073697A652E0A,'1964.0');
/*!40000 ALTER TABLE `data_files` ENABLE KEYS */;


--
-- Definition of table `user_reg`
--

DROP TABLE IF EXISTS `user_reg`;
CREATE TABLE `user_reg` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `dob` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `address` varchar(500) NOT NULL,
  `password` varchar(45) NOT NULL,
  `details` varchar(500) NOT NULL,
  `logattempt` int(10) unsigned default '0',
  `status` varchar(45) NOT NULL default 'Active',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_reg`
--

/*!40000 ALTER TABLE `user_reg` DISABLE KEYS */;
INSERT INTO `user_reg` (`id`,`name`,`email`,`dob`,`gender`,`phone`,`address`,`password`,`details`,`logattempt`,`status`) VALUES 
 (1,'abdul','abdulhathi.jpinfotech@gmail.com','1999-03-22','Male','6383527549','Pondicherry','abd','Name :abdulEmail :abdulhathi.jpinfotech@gmail.comPhone No :6383527549Address :Pondicherry',5,'Active'),
 (2,'Hadhi','abdulhadhi223@gmail.com','1999-03-22','Male','6383527549','Pondicherry','abd','Name :HadhiEmail :abdulhadhi223@gmail.comPhone No :6383527549Address :Pondicherry',0,'Active');
/*!40000 ALTER TABLE `user_reg` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;