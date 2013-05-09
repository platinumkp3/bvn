/*
SQLyog - Free MySQL GUI v5.19
Host - 5.0.24a-community-nt : Database - invoice_master
*********************************************************************
Server version : 5.0.24a-community-nt
*/

SET NAMES utf8;

SET SQL_MODE='';

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `inv_customer` */

DROP TABLE IF EXISTS `inv_customer`;

CREATE TABLE `inv_customer` (
  `customerid` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) default NULL,
  `district` int(3) NOT NULL,
  `state` int(2) NOT NULL,
  `pincode` int(6) NOT NULL,
  `stdcode` varchar(4) default NULL,
  `phone` int(11) default NULL,
  `cell` varchar(11) default NULL,
  `email` varchar(100) default NULL,
  `fax` varchar(20) default NULL,
  `createddate` datetime NOT NULL,
  `pan` varchar(10) default NULL,
  `tin` varchar(15) default NULL,
  PRIMARY KEY  (`customerid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `inv_customer` */

insert into `inv_customer` (`customerid`,`name`,`address`,`district`,`state`,`pincode`,`stdcode`,`phone`,`cell`,`email`,`fax`,`createddate`,`pan`,`tin`) values (1,'Nagamani','mahalaxmilayout',238,15,560014,'080',23002100,'9448594390','deepika_nagu05@yahoo.co.in','','2013-05-08 00:00:00','','');
insert into `inv_customer` (`customerid`,`name`,`address`,`district`,`state`,`pincode`,`stdcode`,`phone`,`cell`,`email`,`fax`,`createddate`,`pan`,`tin`) values (3,'deepika','rajaji nagar',238,15,560014,'080',23002100,'9448594390','deepika_nagu05@yahoo.co.in','','2013-05-08 00:00:00','','');

/*Table structure for table `inv_mas_district` */

DROP TABLE IF EXISTS `inv_mas_district`;

CREATE TABLE `inv_mas_district` (
  `slno` int(30) NOT NULL auto_increment,
  `districtname` varchar(40) NOT NULL,
  `statecode` varchar(40) NOT NULL,
  `districtcode` varchar(6) NOT NULL,
  PRIMARY KEY  (`slno`),
  KEY `statecode` (`statecode`),
  KEY `districtcode` (`districtcode`)
) ENGINE=MyISAM AUTO_INCREMENT=611 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `inv_mas_district` */

insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (1,'Andaman Islands','01','001');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (2,'Nicobar Islands','01','002');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (3,'Medak','02','003');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (4,'West Godavari','02','004');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (5,'Warangal','02','005');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (6,'Vizianagaram','02','006');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (7,'Vishakhapatnam','02','007');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (8,'Srikakulam','02','008');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (9,'Rangareddi','02','009');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (10,'Prakasam','02','010');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (11,'Nizamabad','02','011');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (12,'Nalgonda','02','012');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (13,'Chittoor','02','013');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (14,'Mahbubnagar','02','014');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (15,'Kurnool','02','015');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (16,'Krishna','02','016');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (17,'Khammam','02','017');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (18,'Karimnagar','02','018');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (19,'Hyderabad','02','019');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (20,'Guntur','02','020');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (21,'East Godavari','02','021');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (22,'Cuddapah','02','022');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (23,'Anantapur','02','023');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (24,'Nellore','02','024');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (25,'Adilabad','02','025');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (26,'Lower Subansiri','03','026');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (27,'West Kameng','03','027');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (28,'Upper Siang','03','028');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (29,'Upper Subansiri','03','029');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (30,'Tirap','03','030');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (31,'Tawang','03','031');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (32,'West Siang','03','032');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (33,'Lohit','03','033');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (34,'Lower Dibang Valley','03','034');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (35,'Kurung Kumey','03','035');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (36,'East Kameng','03','036');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (37,'Dibang Valley','03','037');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (38,'Changlang','03','038');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (39,'Anjaw','03','039');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (40,'Papum Pare','03','040');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (41,'East Siang','03','041');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (42,'Hailakandi','04','042');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (43,'Sibsagar','04','043');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (44,'Nagaon','04','044');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (45,'North Cachar Hills','04','045');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (46,'Marigaon','04','046');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (47,'Lakhimpur','04','047');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (48,'Karimganj','04','048');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (49,'Kamrup','04','049');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (50,'Kokrajhar','04','050');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (51,'Tinsukia','04','051');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (52,'Jorhat','04','052');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (53,'Sonitpur','04','053');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (54,'Goalpara','04','054');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (55,'Golaghat','04','055');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (56,'Dhemaji','04','056');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (57,'Dibrugarh','04','057');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (58,'Dhubri','04','058');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (59,'Darrang','04','059');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (60,'Cachar','04','060');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (61,'Bongaigaon','04','061');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (62,'Barpeta','04','062');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (63,'Karbi Anglong','04','063');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (64,'Nalbari','04','064');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (65,'Supaul','05','065');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (66,'Patna','05','066');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (67,'Purnia','05','067');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (68,'Rohtas','05','068');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (69,'Saharsa','05','069');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (70,'Buxar','05','070');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (71,'Samastipur','05','071');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (72,'Nalanda','05','072');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (73,'Sheikhpura','05','073');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (74,'Muzaffarpur','05','074');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (75,'Saran','05','075');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (76,'Sitamarhi','05','076');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (77,'Araria','05','077');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (78,'Aurangabad','05','078');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (79,'West Champaran','05','079');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (80,'Vaishali','05','080');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (81,'Siwan','05','081');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (82,'Sheohar','05','082');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (83,'Jamui','05','083');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (84,'Darbhanga','05','084');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (85,'Madhubani','05','085');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (86,'Lakhisarai','05','086');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (87,'Katihar','05','087');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (88,'Kaimur','05','088');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (89,'East Champaran','05','089');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (90,'Kishanganj','05','090');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (91,'Nawada','05','091');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (92,'Jehanabad','05','092');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (93,'Gopalganj','05','093');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (94,'Gaya','05','094');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (95,'Bhojpur','05','095');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (96,'Banka','05','096');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (97,'Bhagalpur','05','097');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (98,'Begusarai','05','098');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (99,'Munger','05','099');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (100,'Madhepura','05','100');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (101,'Khagaria','05','101');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (102,'Chandigarh','06','102');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (103,'Kanker','33','103');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (104,'Surguja','33','104');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (105,'Raipur','33','105');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (106,'Rajnandgaon','33','106');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (107,'Raigarh','33','107');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (108,'Kawardha','33','108');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (109,'Korba','33','109');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (110,'Jashpur','33','110');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (111,'Durg','33','111');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (112,'Dhamtari','33','112');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (113,'Dantewada','33','113');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (114,'Bilaspur','33','114');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (115,'Koriya','33','115');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (116,'Bastar','33','116');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (117,'Mahasamund','33','117');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (118,'Janjgir-Champa','33','118');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (119,'Diu','08','119');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (120,'Daman','08','120');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (121,'South Delhi','09','121');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (122,'South West Delhi','09','122');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (123,'North West','09','123');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (124,'North East','09','124');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (125,'North Delhi','09','125');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (126,'East Delhi','09','126');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (127,'Central Delhi','09','127');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (128,'New Delhi','09','128');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (129,'West Delhi','09','129');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (130,'Dadar & Nagar Haveli','07','130');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (131,'South Goa','10','131');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (132,'North Goa','10','132');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (133,'Valsad','11','133');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (134,'Navsari','11','134');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (135,'Patan','11','135');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (136,'Panch Mahals','11','136');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (137,'Porbandar','11','137');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (138,'Rajkot','11','138');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (139,'Sabar Kantha','11','139');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (140,'Surat','11','140');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (141,'Vadodara','11','141');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (142,'Kheda','11','142');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (143,'Surendranagar','11','143');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (144,'Amreli','11','144');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (145,'Narmada','11','145');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (146,'Ahmedabad','11','146');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (147,'Mahesana','11','147');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (148,'Anand','11','148');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (149,'Banas Kantha','11','149');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (150,'Bharuch','11','150');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (151,'Bhavnagar','11','151');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (152,'The Dangs','11','152');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (153,'Gandhinagar','11','153');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (154,'Jamnagar','11','154');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (155,'Junagadh','11','155');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (156,'Kachchh','11','156');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (157,'Dahod','11','157');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (158,'Sirmaur','13','158');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (159,'Bilaspur','13','159');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (160,'Hamirpur','13','160');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (161,'Kangra','13','161');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (162,'Kinnaur','13','162');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (163,'Kulu','13','163');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (164,'Lahaul and Spiti','13','164');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (165,'Una','13','165');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (166,'Shimla','13','166');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (167,'Solan','13','167');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (168,'Chamba','13','168');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (169,'Mandi','13','169');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (170,'Mewat','12','170');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (171,'Sonepat','12','171');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (172,'Sirsa','12','172');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (173,'Rohtak','12','173');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (174,'Rewari','12','174');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (175,'Ambala','12','175');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (176,'Panchkula','12','176');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (177,'Mahendragarh','12','177');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (178,'Kurukshetra','12','178');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (179,'Kaithal','12','179');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (180,'Faridabad','12','180');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (181,'Panipat','12','181');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (182,'Bhiwani','12','182');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (183,'Karnal','12','183');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (184,'Fatehabad','12','184');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (185,'Gurgaon','12','185');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (186,'Hissar','12','186');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (187,'Jhajjar','12','187');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (188,'Jind','12','188');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (189,'Yamuna Nagar','12','189');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (190,'Gumla','35','190');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (191,'Deoghar','35','191');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (192,'Bokaro','35','192');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (193,'Dhanbad','35','193');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (194,'Dumka','35','194');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (195,'Purba Singhbhum','35','195');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (196,'Garhwa','35','196');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (197,'Chatra','35','197');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (198,'Simdega','35','198');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (199,'Giridih','35','199');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (200,'Pashchim Singhbhum','35','200');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (201,'Godda','35','201');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (202,'Seraikela','35','202');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (203,'Sahibganj','35','203');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (204,'Ranchi','35','204');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (205,'Palamu','35','205');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (206,'Lohardaga','35','206');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (207,'Latehar','35','207');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (208,'Koderma','35','208');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (209,'Jamtara','35','209');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (210,'Hazaribagh','35','210');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (211,'Pakur','35','211');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (212,'Rajauri','14','212');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (213,'Anantnag','14','213');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (214,'Badgam','14','214');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (215,'Baramula','14','215');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (216,'Doda','14','216');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (217,'Jammu','14','217');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (218,'Kargil','14','218');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (219,'Kathua','14','219');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (220,'Udhampur','14','220');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (221,'Pulwama','14','221');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (222,'Srinagar','14','222');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (223,'Poonch','14','223');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (224,'Leh','14','224');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (225,'Kupwara','14','225');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (226,'Chitradurga','15','226');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (227,'Kolar','15','227');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (228,'Kodagu','15','228');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (229,'Haveri','15','229');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (230,'Hassan','15','230');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (231,'Gulbarga','15','231');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (232,'Gadag','15','232');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (233,'Dakshina Kannada','15','233');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (234,'Koppal','15','234');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (235,'Davanagere','15','235');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (236,'Chikmagalur','15','236');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (237,'Chamrajnagar','15','237');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (238,'Bangalore','15','238');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (239,'Bellary','15','239');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (240,'Bagalkot','15','240');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (241,'Bijapur','15','241');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (242,'Belgaum','15','242');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (243,'Bidar','15','243');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (244,'Dharwad','15','244');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (245,'Mysore','15','245');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (246,'Raichur','15','246');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (247,'Shimoga','15','247');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (248,'Tumkur','15','248');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (249,'Udupi','15','249');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (250,'Uttara Kannada','15','250');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (251,'Mandya','15','251');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (252,'Bangalore Rural','15','252');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (253,'Idukki','16','253');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (254,'Thrissur','16','254');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (255,'Palakkad','16','255');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (256,'Malappuram','16','256');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (257,'Kozhikode','16','257');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (258,'Kottayam','16','258');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (259,'Kasargod','16','259');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (260,'Wayanad','16','260');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (261,'Kollam','16','261');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (262,'Thiruvananthapuram','16','262');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (263,'Ernakulam','16','263');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (264,'Alappuzha','16','264');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (265,'Kannur','16','265');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (266,'Pathanamthitta','16','266');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (267,'Lakshadweep','17','267');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (268,'Aurangabad','19','268');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (269,'Osmanabad','19','269');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (270,'Nashik','19','270');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (271,'Nagpur','19','271');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (272,'Nanded','19','272');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (273,'Nandurbar','19','273');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (274,'Mumbai City','19','274');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (275,'Latur','19','275');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (276,'Kolhapur','19','276');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (277,'Jalna','19','277');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (278,'Amravati','19','278');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (279,'Gadchiroli','19','279');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (280,'Bandra suburban','19','280');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (281,'Bhandara','19','281');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (282,'Hingoli','19','282');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (283,'Parbhani','19','283');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (284,'Bid','19','284');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (285,'Jalgaon','19','285');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (286,'Buldhana','19','286');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (287,'Ahmednagar','19','287');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (288,'Chandrapur','19','288');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (289,'Dhule','19','289');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (290,'Akola','19','290');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (291,'Wardha','19','291');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (292,'Pune','19','292');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (293,'Gondiya','19','293');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (294,'Washim','19','294');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (295,'Thane','19','295');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (296,'Satara','19','296');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (297,'Solapur','19','297');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (298,'Sangli','19','298');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (299,'Sindhudurg','19','299');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (300,'Ratnagiri','19','300');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (301,'Raigarh','19','301');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (302,'Yavatmal','19','302');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (303,'Ri-Bhoi','21','303');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (304,'West Khasi Hills','21','304');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (305,'East Garo Hills','21','305');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (306,'Jaintia Hills','21','306');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (307,'South Garo Hills','21','307');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (308,'West Garo Hills','21','308');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (309,'East Khasi Hills','21','309');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (310,'East Imphal','20','310');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (311,'Bishnupur','20','311');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (312,'Chandel','20','312');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (313,'Senapati','20','313');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (314,'Tamenglong','20','314');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (315,'Thoubal','20','315');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (316,'Ukhrul','20','316');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (317,'West Imphal','20','317');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (318,'Churachandpur','20','318');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (319,'Datia','18','319');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (320,'Neemuch','18','320');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (321,'Narsinghpur','18','321');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (322,'Mandsaur','18','322');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (323,'Morena','18','323');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (324,'Mandla','18','324');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (325,'Khargone','18','325');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (326,'Khandwa','18','326');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (327,'Katni','18','327');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (328,'Jhabua','18','328');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (329,'Jabalpur','18','329');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (330,'Indore','18','330');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (331,'Hoshangabad','18','331');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (332,'Harda','18','332');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (333,'Dindori','18','333');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (334,'Barwani','18','334');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (335,'Ashok Nagar','18','335');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (336,'Panna','18','336');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (337,'Anuppur','18','337');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (338,'Betul','18','338');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (339,'Gwalior','18','339');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (340,'Damoh','18','340');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (341,'Guna','18','341');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (342,'Dhar','18','342');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (343,'Burhanpur','18','343');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (344,'Dewas','18','344');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (345,'Chhatarpur','18','345');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (346,'Chhindwara','18','346');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (347,'Bhind','18','347');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (348,'Bhopal','18','348');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (349,'Vidisha','18','349');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (350,'Balaghat','18','350');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (351,'Rewa','18','351');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (352,'Umaria','18','352');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (353,'Ujjain','18','353');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (354,'Tikamgarh','18','354');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (355,'Shivpuri','18','355');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (356,'Satna','18','356');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (357,'Sehore','18','357');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (358,'Seoni','18','358');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (359,'Shajapur','18','359');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (360,'Sidhi','18','360');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (361,'Shahdol','18','361');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (362,'Sagar','18','362');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (363,'Raisen','18','363');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (364,'Ratlam','18','364');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (365,'Rajgarh','18','365');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (366,'Sheopur','18','366');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (367,'Champhai','22','367');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (368,'Mamit','22','368');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (369,'Saiha','22','369');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (370,'Serchhip','22','370');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (371,'Lawngtlai','22','371');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (372,'Kolasib','22','372');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (373,'Aizawl','22','373');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (374,'Lunglei','22','374');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (375,'Wokha','23','375');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (376,'Dimapur','23','376');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (377,'Kohima','23','377');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (378,'Mokokchung','23','378');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (379,'Mon','23','379');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (380,'Phek','23','380');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (381,'Zunheboto','23','381');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (382,'Tuensang','23','382');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (383,'Koraput','24','383');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (384,'Khordha','24','384');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (385,'Keonjhar','24','385');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (386,'Kandhamal','24','386');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (387,'Gajapati','24','387');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (388,'Kendrapara','24','388');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (389,'Malkangiri','24','389');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (390,'Kalahandi','24','390');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (391,'Jagatsinghpur','24','391');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (392,'Jharsuguda','24','392');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (393,'Nuapada','24','393');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (394,'Ganjam','24','394');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (395,'Dhenkanal','24','395');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (396,'Deogarh','24','396');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (397,'Cuttack','24','397');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (398,'Baleshwar','24','398');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (399,'Baragarh','24','399');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (400,'Bolangir','24','400');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (401,'Bhadrak','24','401');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (402,'Boudh','24','402');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (403,'Angul','24','403');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (404,'Jajpur','24','404');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (405,'Nayagarh','24','405');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (406,'Puri','24','406');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (407,'Rayagada','24','407');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (408,'Sambalpur','24','408');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (409,'Sonepur','24','409');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (410,'Sundargarh','24','410');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (411,'Nabarangpur','24','411');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (412,'Mayurbhanj','24','412');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (413,'Faridkot','26','413');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (414,'Nawan Shehar','26','414');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (415,'Moga','26','415');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (416,'Ludhiana','26','416');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (417,'Kapurthala','26','417');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (418,'Jalandhar','26','418');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (419,'Hoshiarpur','26','419');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (420,'Patiala','26','420');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (421,'Fatehgarh Sahib','26','421');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (422,'Muktsar','26','422');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (423,'Firozpur','26','423');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (424,'Bathinda','26','424');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (425,'Amritsar','26','425');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (426,'Gurdaspur','26','426');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (427,'Sangrur','26','427');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (428,'Rupnagar','26','428');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (429,'Mansa','26','429');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (430,'Pondicherry','25','430');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (431,'Mahe','25','431');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (432,'Karaikal','25','432');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (433,'Yanam','25','433');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (434,'Jhunjhunun','27','434');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (435,'Alwar','27','435');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (436,'Ajmer','27','436');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (437,'Jalore','27','437');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (438,'Jodhpur','27','438');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (439,'Jaipur','27','439');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (440,'Jaisalmer','27','440');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (441,'Jhalawar','27','441');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (442,'Hanumangarh','27','442');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (443,'Barmer','27','443');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (444,'Banswara','27','444');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (445,'Bharatpur','27','445');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (446,'Karauli','27','446');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (447,'Baran','27','447');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (448,'Udaipur','27','448');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (449,'Bundi','27','449');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (450,'Bhilwara','27','450');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (451,'Churu','27','451');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (452,'Chittorgarh','27','452');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (453,'Dausa','27','453');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (454,'Dholpur','27','454');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (455,'Dungarpur','27','455');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (456,'Bikaner','27','456');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (457,'Kota','27','457');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (458,'Nagaur','27','458');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (459,'Pali','27','459');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (460,'Rajsamand','27','460');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (461,'Sikar','27','461');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (462,'Sawai Madhopur','27','462');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (463,'Sirohi','27','463');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (464,'Tonk','27','464');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (465,'Sriganga nagar','27','465');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (466,'South Sikkim','28','466');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (467,'North Sikkim','28','467');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (468,'West Sikkim','28','468');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (469,'East Sikkim','28','469');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (470,'Perambalur','29','470');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (471,'Pudukkottai','29','471');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (472,'Ramanathapuram','29','472');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (473,'Salem','29','473');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (474,'Sivaganga','29','474');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (475,'Theni','29','475');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (476,'Kancheepuram','29','476');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (477,'Tiruchirappalli','29','477');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (478,'Namakkal','29','478');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (479,'Nagapattinam','29','479');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (480,'Krishnagiri','29','480');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (481,'Tirunelveli','29','481');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (482,'Kanyakumari','29','482');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (483,'Nilgiris','29','483');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (484,'Erode','29','484');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (485,'Dindigul','29','485');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (486,'Dharmapuri','29','486');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (487,'Cuddalore','29','487');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (488,'Coimbatore','29','488');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (489,'Chennai','29','489');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (490,'Karur','29','490');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (491,'Thoothukudi','29','491');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (492,'Thiruvallur','29','492');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (493,'Thiruvarur','29','493');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (494,'Tiruvannamalai','29','494');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (495,'Vellore','29','495');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (496,'Villupuram','29','496');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (497,'Virudhunagar','29','497');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (498,'Madurai','29','498');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (499,'Thanjavur','29','499');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (500,'West Tripura','30','500');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (501,'South Tripura','30','501');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (502,'North Tripura','30','502');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (503,'Dhalai','30','503');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (504,'Fatehpur','31','504');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (505,'Allahabad','31','505');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (506,'Gonda','31','506');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (507,'Faizabad','31','507');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (508,'Hamirpur','31','508');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (509,'Farrukhabad','31','509');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (510,'Gautam Buddha Nagar','31','510');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (511,'Agra','31','511');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (512,'Ghazipur','31','512');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (513,'Firozabad','31','513');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (514,'Ghaziabad','31','514');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (515,'Bareilly','31','515');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (516,'Hardoi','31','516');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (517,'Hathras','31','517');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (518,'Jhansi','31','518');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (519,'Jalaun','31','519');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (520,'Jyotiba Phule Nagar','31','520');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (521,'Jaunpur','31','521');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (522,'Kanpur Dehat','31','522');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (523,'Kannauj','31','523');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (524,'Gorakhpur','31','524');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (525,'Azamgarh','31','525');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (526,'Balrampur','31','526');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (527,'Pratapgarh','31','527');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (528,'Banda','31','528');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (529,'Kanpur','31','529');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (530,'Ballia','31','530');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (531,'Bijnor','31','531');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (532,'Bahraich','31','532');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (533,'Baghpat','31','533');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (534,'Bulandshahr','31','534');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (535,'Barabanki','31','535');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (536,'Etawa','31','536');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (537,'Auraiya','31','537');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (538,'Ambedkar Nagar','31','538');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (539,'Aligarh','31','539');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (540,'Basti','31','540');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (541,'Chandauli','31','541');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (542,'Chitrakoot','31','542');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (543,'Deoria','31','543');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (544,'Etah','31','544');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (545,'Badaun','31','545');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (546,'Saharanpur','31','546');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (547,'Muzaffarnagar','31','547');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (548,'Kaushambi','31','548');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (549,'Varanasi','31','549');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (550,'Unnao','31','550');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (551,'Shravasti','31','551');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (552,'Sultanpur','31','552');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (553,'Sant Ravi Das Nagar','31','553');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (554,'Sonbhadra','31','554');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (555,'Siddharth Nagar','31','555');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (556,'Sant Kabir Nagar','31','556');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (557,'Sitapur','31','557');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (558,'Rae Bareli','31','558');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (559,'Rampur','31','559');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (560,'Meerut','31','560');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (561,'Kheri','31','561');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (562,'Kushinagar','31','562');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (563,'Lalitpur','31','563');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (564,'Shahjahanpur','31','564');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (565,'Maunathbhanjan','31','565');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (566,'Pilibhit','31','566');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (567,'Maharajganj','31','567');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (568,'Mahoba','31','568');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (569,'Mirzapur','31','569');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (570,'Moradabad','31','570');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (571,'Mainpuri','31','571');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (572,'Mathura','31','572');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (573,'Lucknow','31','573');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (574,'Nainital','34','574');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (575,'Udham Singh Nagar','34','575');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (576,'Almora','34','576');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (577,'Tehri Garhwal','34','577');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (578,'Rudra Prayag','34','578');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (579,'Pithoragarh','34','579');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (580,'Pauri Garhwal','34','580');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (581,'Dehradun','34','581');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (582,'Champawat','34','582');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (583,'Chamoli','34','583');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (584,'Bageshwar','34','584');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (585,'Uttarkashi','34','585');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (586,'Haridwar','34','586');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (587,'Murshidabad','32','587');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (588,'Bankura','32','588');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (589,'Bardhaman','32','589');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (590,'Darjeeling','32','590');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (591,'Dakshin Dinajpur','32','591');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (592,'Hooghly','32','592');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (593,'Howrah','32','593');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (594,'Jalpaiguri','32','594');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (595,'Koch Bihar','32','595');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (596,'Kolkata','32','596');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (597,'Birbhum','32','597');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (598,'Midnapore','32','598');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (599,'Nadia','32','599');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (600,'Parganas North','32','600');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (601,'Parganas South','32','601');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (602,'Purulia','32','602');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (603,'Uttar Dinajpur','32','603');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (604,'Malda','32','604');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (605,'Tirupur','29','605');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (606,'Chikballapur','15','606');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (607,'Tarn Taran','26','607');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (608,'Foreign','36','608');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (609,'Ramanagara','15','609');
insert into `inv_mas_district` (`slno`,`districtname`,`statecode`,`districtcode`) values (610,'Balasore','24','610');

/*Table structure for table `inv_mas_state` */

DROP TABLE IF EXISTS `inv_mas_state`;

CREATE TABLE `inv_mas_state` (
  `slno` int(30) NOT NULL auto_increment,
  `statecode` varchar(30) NOT NULL,
  `statename` varchar(40) NOT NULL,
  PRIMARY KEY  (`slno`),
  KEY `statecode` (`statecode`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `inv_mas_state` */

insert into `inv_mas_state` (`slno`,`statecode`,`statename`) values (1,'01','Andaman & Nicobar Islands');
insert into `inv_mas_state` (`slno`,`statecode`,`statename`) values (2,'02','Andhra Pradesh');
insert into `inv_mas_state` (`slno`,`statecode`,`statename`) values (3,'03','Arunachal Pradesh');
insert into `inv_mas_state` (`slno`,`statecode`,`statename`) values (4,'04','Assam');
insert into `inv_mas_state` (`slno`,`statecode`,`statename`) values (5,'05','Bihar');
insert into `inv_mas_state` (`slno`,`statecode`,`statename`) values (6,'06','Chandigarh');
insert into `inv_mas_state` (`slno`,`statecode`,`statename`) values (7,'07','Dadra & Nagar Haveli');
insert into `inv_mas_state` (`slno`,`statecode`,`statename`) values (8,'08','Daman & Diu');
insert into `inv_mas_state` (`slno`,`statecode`,`statename`) values (9,'09','Delhi');
insert into `inv_mas_state` (`slno`,`statecode`,`statename`) values (10,'10','Goa');
insert into `inv_mas_state` (`slno`,`statecode`,`statename`) values (11,'11','Gujarat');
insert into `inv_mas_state` (`slno`,`statecode`,`statename`) values (12,'12','Haryana');
insert into `inv_mas_state` (`slno`,`statecode`,`statename`) values (13,'13','Himachal Pradesh');
insert into `inv_mas_state` (`slno`,`statecode`,`statename`) values (14,'14','Jammu & Kashmir');
insert into `inv_mas_state` (`slno`,`statecode`,`statename`) values (15,'15','Karnataka');
insert into `inv_mas_state` (`slno`,`statecode`,`statename`) values (16,'16','Kerala');
insert into `inv_mas_state` (`slno`,`statecode`,`statename`) values (17,'17','Lakshadweep');
insert into `inv_mas_state` (`slno`,`statecode`,`statename`) values (18,'18','Madhya Pradesh');
insert into `inv_mas_state` (`slno`,`statecode`,`statename`) values (19,'19','Maharashtra');
insert into `inv_mas_state` (`slno`,`statecode`,`statename`) values (20,'20','Manipur');
insert into `inv_mas_state` (`slno`,`statecode`,`statename`) values (21,'21','Meghalaya');
insert into `inv_mas_state` (`slno`,`statecode`,`statename`) values (22,'22','Mizoram');
insert into `inv_mas_state` (`slno`,`statecode`,`statename`) values (23,'23','Nagaland');
insert into `inv_mas_state` (`slno`,`statecode`,`statename`) values (24,'24','Orissa');
insert into `inv_mas_state` (`slno`,`statecode`,`statename`) values (25,'25','Pondicherry');
insert into `inv_mas_state` (`slno`,`statecode`,`statename`) values (26,'26','Punjab');
insert into `inv_mas_state` (`slno`,`statecode`,`statename`) values (27,'27','Rajasthan');
insert into `inv_mas_state` (`slno`,`statecode`,`statename`) values (28,'28','Sikkim');
insert into `inv_mas_state` (`slno`,`statecode`,`statename`) values (29,'29','Tamilnadu');
insert into `inv_mas_state` (`slno`,`statecode`,`statename`) values (30,'30','Tripura');
insert into `inv_mas_state` (`slno`,`statecode`,`statename`) values (31,'31','Uttar Pradesh');
insert into `inv_mas_state` (`slno`,`statecode`,`statename`) values (32,'32','West Bengal');
insert into `inv_mas_state` (`slno`,`statecode`,`statename`) values (33,'33','Chhatishgarh');
insert into `inv_mas_state` (`slno`,`statecode`,`statename`) values (34,'34','Uttaranchal');
insert into `inv_mas_state` (`slno`,`statecode`,`statename`) values (35,'35','Jharkhand');
insert into `inv_mas_state` (`slno`,`statecode`,`statename`) values (36,'36','Foreign');

/*Table structure for table `inv_products` */

DROP TABLE IF EXISTS `inv_products`;

CREATE TABLE `inv_products` (
  `prdid` int(11) NOT NULL auto_increment,
  `name` varchar(220) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `dealer` varchar(220) default NULL,
  `purchasedate` datetime default NULL,
  `expirydate` datetime default NULL,
  `stockdate` datetime default NULL,
  `notinuse` tinyint(1) default '0',
  PRIMARY KEY  (`prdid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `inv_products` */

insert into `inv_products` (`prdid`,`name`,`quantity`,`price`,`dealer`,`purchasedate`,`expirydate`,`stockdate`,`notinuse`) values (1,'Mobile',12,1000,'Nagamani','2013-05-07 00:00:00','2013-12-31 00:00:00','2013-05-07 00:00:00',1);

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
