PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE alembic_version (
	version_num VARCHAR(32) NOT NULL, 
	CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num)
);
INSERT INTO "alembic_version" VALUES('cb1dd35af8df');
CREATE TABLE user_role (
	id INTEGER NOT NULL, 
	name VARCHAR(120) NOT NULL, 
	PRIMARY KEY (id), 
	UNIQUE (id)
);
INSERT INTO "user_role" VALUES(1,'Admin');
INSERT INTO "user_role" VALUES(2,'Faculty');
INSERT INTO "user_role" VALUES(3,'Student');
CREATE TABLE course_type (
	id INTEGER NOT NULL, 
	name VARCHAR(120) NOT NULL, 
	PRIMARY KEY (id), 
	UNIQUE (id)
);
CREATE TABLE course (
	id INTEGER NOT NULL, 
	subject VARCHAR(100) NOT NULL, 
	course_number INTEGER NOT NULL, 
	prereq VARCHAR(400) NOT NULL, 
	credits INTEGER NOT NULL, 
	day_of_week VARCHAR(100), 
	description VARCHAR(700), 
	quarter_offered VARCHAR(100) NOT NULL, 
	delivery_method INTEGER NOT NULL, 
	PRIMARY KEY (id), 
	UNIQUE (id)
);
INSERT INTO "course" VALUES(1,'CSC',423,'IT 403',4,'Sun','','[''Not Offered'']',1);
INSERT INTO "course" VALUES(2,'CSC',424,'CSC 423 or consent of instructor.',4,'Sun','','[''Not Offered'']',1);
INSERT INTO "course" VALUES(3,'CSC',426,'PhD status or consent of instructor.',4,'Sat','','[''EO Spring'']',0);
INSERT INTO "course" VALUES(4,'CSC',428,'CSC 423.',4,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(5,'GPH',436,'CSC 393 and MAT 150.',4,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(6,'CSC',444,'CSC 400 and CSC 403',4,'Sat','','[''As Needed'']',0);
INSERT INTO "course" VALUES(7,'CSC',447,'CSC 403 and CSC 406',4,'Sun','','[''Autumn'', ''Winter'', ''Spring'']',1);
INSERT INTO "course" VALUES(8,'CSC',448,'CSC 447',4,'Sat','','[''As Needed'']',0);
INSERT INTO "course" VALUES(9,'CSC',451,'',4,'Sat','','[''Autumn'', ''Winter'', ''Spring'']',1);
INSERT INTO "course" VALUES(10,'CSC',452,'(CSC 453 or CSC 451 or CSC 455) and (CSC 401 or IT 411)',4,'Sat','','[''Autumn'', ''Winter'', ''Spring'']',1);
INSERT INTO "course" VALUES(11,'CSC',453,'CSC 403',4,'Sun','','[''Autumn'', ''Winter'', ''Spring'']',1);
INSERT INTO "course" VALUES(12,'CSC',457,'CSC 403',4,'Thu','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(13,'CSC',458,'CSC 403',4,'Sat','','[''EO Academic Year'']',0);
INSERT INTO "course" VALUES(14,'GPH',469,'CSC 461 and (GAM 425 or GPH 436)',4,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(15,'GPH',425,'CSC 212 or CSC 262.',4,'Sat','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(16,'CSC',475,'[]',4,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(17,'CSC',480,'CSC 403',4,'Sat','','[''Winter'']',0);
INSERT INTO "course" VALUES(18,'CSC',481,'CSC 412 or consent of instructor',4,'Sat','','[''Autumn'']',1);
INSERT INTO "course" VALUES(19,'CSC',485,'MAT 220 and a programming course.',4,'Sun','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(20,'CSC',421,'CSC 400 and CSC 403',4,'Sun','','[''Autumn'', ''Winter'', ''Spring'']',1);
INSERT INTO "course" VALUES(21,'CSC',503,'CSC 421',4,'Sat','','[''Winter'']',0);
INSERT INTO "course" VALUES(22,'CSC',535,'CSC 447.',4,'Sat','','[''As Needed'']',0);
INSERT INTO "course" VALUES(23,'CSC',538,'CSC 528',4,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(24,'GPH',539,'GPH 425 or GPH 436 or (ANI 439 and GPH 355)',4,'Mon','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(25,'CSC',489,'CSC 444 or CSC 421.',4,'Sat','','[''EO Academic Year'']',0);
INSERT INTO "course" VALUES(26,'CSC',547,'Instructor consent required.',4,'Thu','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(27,'CSC',548,'CSC 448.',4,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(28,'CSC',549,'CSC 453',4,'Sat','','[''As Needed'']',0);
INSERT INTO "course" VALUES(29,'CSC',550,'CSC 453',4,'Sun','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(30,'CSC',551,'CSC 453 and (CSC 435 or TDC 405 or TDC 463)',4,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(31,'CSC',554,'[]',4,'Sat','','[''Winter'']',0);
INSERT INTO "course" VALUES(32,'GPH',570,'GPH 469 or GAM 470',4,'Sat','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(33,'GPH',572,'GPH 469.',4,'Mon','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(34,'GPH',575,'GPH 448 and (GPH 469 or GAM 470)',4,'Sat','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(35,'CSC',578,'(CSC 412 and CSC 478) or (CSC 403 and IS 467)',4,'Sat','','[''Autumn'']',1);
INSERT INTO "course" VALUES(36,'CSC',528,'CSC 481',4,'Sat','','[''As Needed'']',0);
INSERT INTO "course" VALUES(37,'CSC',587,'CSC 403 or HCI 460.',4,'Sat','','[''Winter'']',0);
INSERT INTO "course" VALUES(38,'CSC',589,'For specific prerequisites, see syllabus or consult with course instructor. (variable credit)',0,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(39,'CSC',590,'For specific prerequisites, see syllabus or consult with course instructor. (variable credit)',0,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(40,'CSC',591,'For specific prerequisites, see syllabus or consult course instructor. (variable credit)',0,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(41,'CSC',592,'CSC 482 or CSC 528',0,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(42,'CSC',594,'For specific prerequisites, see syllabus or consult course instructor. (variable credit)',0,'Tue','','[''Autumn'', ''Spring'']',0);
INSERT INTO "course" VALUES(43,'GPH',595,'Permission of instructor.',0,'Mon','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(44,'CSC',598,'For specific prerequisites, see syllabus or consult course instructor. (variable credit)',0,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(45,'CSC',599,'None.  (variable credit)',0,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(46,'CSC',690,'Consent of the instructor. (variable credit)',0,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(47,'CSC',696,'CSC 695 taken twice and approval of report by student''s research supervisor and faculty advisor. (0 credit hours)',0,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(48,'CSC',698,'Successful defense of a Master''s Thesis.  (variable credit)',0,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(49,'CSC',699,'Research course supervised by an instructor. Independent Study Form required.  Variable credit.  Can be repeated for credit. (variable credit)',0,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(50,'CSC',701,'Admission to Candidacy. Independent Study form required.  (0 credit hours)',0,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(51,'CSC',702,'Admission to Candidacy.  Independent Study form required.  (0 credit hours)',0,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(52,'IS',421,'',4,'Wed','','[''Autumn'', ''Winter'', ''Spring'']',1);
INSERT INTO "course" VALUES(53,'IS',422,'IS 421 and CSC 451',4,'Sun','','[''Autumn'', ''Winter'', ''Spring'']',1);
INSERT INTO "course" VALUES(54,'IS',482,'',4,'Sat','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(55,'IS',483,'Completion of five or more SoC MS level courses is required.',4,'Sat','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(56,'IS',511,'[]',4,'Mon','','[''Not Offered'']',1);
INSERT INTO "course" VALUES(57,'IS',440,'',4,'Wed','','[''Autumn'', ''Winter'', ''Spring'']',1);
INSERT INTO "course" VALUES(58,'IS',540,'Completion of five or more SoC MS level courses is required.',4,'Sat','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(59,'IS',549,'[]',4,'Sun','','[''Not Offered'']',1);
INSERT INTO "course" VALUES(60,'IS',556,'IS 430 or PM 430',4,'Fri','','[''Autumn'', ''Winter'', ''Spring'']',1);
INSERT INTO "course" VALUES(61,'IS',560,'Advanced Standing',4,'Mon','','[''Not Offered'']',1);
INSERT INTO "course" VALUES(62,'IS',433,'',4,'Sun','','[''Autumn'', ''Winter'', ''Spring'']',0);
INSERT INTO "course" VALUES(63,'IS',574,'(SE 430 or IS 435 or PM 430 or  MIS 674) and CS C451',4,'Fri','','[''Not Offered'']',1);
INSERT INTO "course" VALUES(64,'IS',577,'Completion of ten or more SoC MS level courses is required.',4,'Wed','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(65,'IS',578,'Completion of foundation or core phase.',4,'Mon','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(66,'IS',596,'[]',4,'Tue','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(67,'IS',690,'[]',0,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(68,'IS',696,'[]',0,'Thu','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(69,'IS',698,'[]',0,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(70,'CSC',435,'CSC 403 and CSC 407',4,'Sat','','[''Autumn'', ''Winter'', ''Spring'']',1);
INSERT INTO "course" VALUES(71,'SE',430,'CSC 403',4,'Thu','','[''Autumn'', ''Winter'', ''Spring'']',1);
INSERT INTO "course" VALUES(72,'SE',549,'SE 430 or SE 450',4,'Mon','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(73,'SE',433,'CSC 403',4,'Thu','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(74,'SE',450,'CSC 403',4,'Sun','','[''Autumn'', ''Winter'', ''Spring'']',1);
INSERT INTO "course" VALUES(75,'SE',468,'IT 403 and (SE430 or SE450)',4,'Sat','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(76,'SE',477,'Knowledge of the Software development life cycle model, for example through courses such as SE430, ECT455, IS425, MIS555 or through appropriate work experience.',4,'Wed','','[''Autumn'', ''Winter'', ''Spring'']',0);
INSERT INTO "course" VALUES(77,'SE',480,'SE 450',4,'Fri','','[''Not Offered'']',1);
INSERT INTO "course" VALUES(78,'SE',491,'SE 450.',4,'Fri','','[''Not Offered'']',1);
INSERT INTO "course" VALUES(79,'SE',529,'IT 403 and SE 430 or consent.',4,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(80,'SE',533,'SE 450.',4,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(81,'SE',690,'Consent of the instructor.',4,'Mon','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(82,'SE',696,'Consent of advisor.',0,'Thu','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(83,'SE',698,'Successful defense of a Master''s Thesis. (0 credit hours)',0,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(84,'SE',699,'SE 698. (0 credit hours)',0,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(85,'ECT',455,'CSC 401 or IT 411 or ECT 410 or ECT 436 or HCI 430',4,'Sat','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(86,'ECT',480,'ECT 424',4,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(87,'ECT',481,'CSC 401 or IT 411 or ECT 410 or ECT 436',4,'Sat','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(88,'ECT',582,'ECT 424 or CSC 435 or TDC 463',4,'Sat','','[''Not Offered'']',1);
INSERT INTO "course" VALUES(89,'ECT',589,'Completion of ten or more School of Computing MS level courses is required.',4,'Fri','','[''Not Offered'']',1);
INSERT INTO "course" VALUES(90,'ECT',596,'Consent of instructor.',4,'Sat','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(91,'ECT',690,'Consent of the instructor.  (variable credit)',0,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(92,'ECT',696,'[]',0,'Sat','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(93,'ECT',698,'Consent of advisor.  (2 quarter hours)',0,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(94,'TDC',463,'[]',4,'Sun','','[''Autumn'', ''Winter'', ''Spring'']',1);
INSERT INTO "course" VALUES(95,'TDC',464,'TDC 413',4,'Sun','','[''Winter'', ''Spring'']',1);
INSERT INTO "course" VALUES(96,'TDC',511,'TDC 411 and TDC 460 and TDC 463',4,'Fri','','[''Autumn'', ''Spring'']',1);
INSERT INTO "course" VALUES(97,'TDC',512,'TDC 464',4,'Fri','','[''Autumn'']',1);
INSERT INTO "course" VALUES(98,'TDC',514,'TDC 463 and TDC 464.',4,'Fri','','[''Spring'']',0);
INSERT INTO "course" VALUES(99,'TDC',468,'(TDC 463 OR CSC 435) and CSC 404',4,'Fri','','[''Winter'']',0);
INSERT INTO "course" VALUES(100,'TDC',562,'TDC 463',4,'Fri','','[''Once Per Year'']',0);
INSERT INTO "course" VALUES(101,'TDC',563,'TDC 463',4,'Sat','','[''Autumn'', ''Winter'', ''Spring'']',1);
INSERT INTO "course" VALUES(102,'TDC',567,'[]',4,'Fri','','[''Spring'']',0);
INSERT INTO "course" VALUES(103,'TDC',568,'TDC 463',4,'Fri','','[''Winter'']',0);
INSERT INTO "course" VALUES(104,'TDC',477,'TDC 463 or CSC 435',4,'Sun','','[''Autumn'', ''Winter'', ''Spring'']',1);
INSERT INTO "course" VALUES(105,'TDC',593,'[]',4,'Thu','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(106,'TDC',690,'Consent of the instructor. (variable credit)',0,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(107,'TDC',696,'Consent of advisor. Independent study form required.',0,'Thu','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(108,'TDC',698,'Consent of advisor. Independent study form required. (2 quarter hours)',0,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(109,'HCI',445,'IT 403 and (HCI 440 or HCI 441)',4,'Sun','','[''Not Offered'']',1);
INSERT INTO "course" VALUES(110,'HCI',422,'HCI 440 or consent of the instructor.',4,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(111,'HCI',430,'IT 411.  Students must have completed or be concurrently enrolled in HCI 440 or HCI 441 to register for this course.',4,'Sat','','[''Not Offered'']',1);
INSERT INTO "course" VALUES(112,'HCI',440,'',0,'Fri','','[''Autumn'', ''Winter'', ''Spring'']',1);
INSERT INTO "course" VALUES(113,'HCI',450,'IT 403',4,'Fri','','[''Not Offered'']',1);
INSERT INTO "course" VALUES(114,'HCI',460,'IT 403 and (HCI 440 or HCI 441)',4,'Sun','','[''Not Offered'']',1);
INSERT INTO "course" VALUES(115,'HCI',511,'HCI 445 (HCI 460 recommended)',4,'Sun','','[''Not Offered'']',1);
INSERT INTO "course" VALUES(116,'HCI',512,'IT 403 and HCI 470',4,'Sun','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(117,'HCI',513,'IS 422 or HCI 430',4,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(118,'HCI',590,'[]',4,'Tue','','[''Not Offered'']',1);
INSERT INTO "course" VALUES(119,'HCI',594,'Completion of the HCI core courses or consent of the instructor.',4,'Sat','','[''Not Offered'']',1);
INSERT INTO "course" VALUES(120,'HCI',690,'Instructor consent required. (variable credit)',0,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(121,'CSC',697,'[]',0,'Sat','','[''As Needed'']',0);
INSERT INTO "course" VALUES(122,'GPH',438,'GPH 425 or GPH 469.',4,'Sat','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(123,'HCI',402,'',4,'Tue','','[''Not Offered'']',1);
INSERT INTO "course" VALUES(124,'SE',452,'CSC 403',4,'Thu','','[''Not Offered'']',1);
INSERT INTO "course" VALUES(125,'CSC',540,'CSC 471',4,'Thu','','[''As Needed'']',0);
INSERT INTO "course" VALUES(126,'CSC',552,'SE 450 and CSC 407',4,'Sat','','[''Autumn'']',1);
INSERT INTO "course" VALUES(127,'SE',560,'SE 450 OR ((CSC 383 or CSC 301)  and SE 430).',4,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(128,'SE',591,'SE 491',4,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(129,'HCI',470,'HCI 402 and HCI 406',4,'Sun','','[''Not Offered'']',1);
INSERT INTO "course" VALUES(130,'ECT',583,'[]',4,'Sat','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(131,'ECT',584,'IT 403 AND (CSC 451 or CSC 453 or CSC 455)',4,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(132,'ECT',586,'ECT 424',4,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(133,'IS',570,'IS 430 or PM 430 or completion of five or more other SoC MS level courses should contact the course instructor or an advisor.',4,'Fri','','[''Autumn'', ''Winter'', ''Spring'']',1);
INSERT INTO "course" VALUES(134,'CSC',536,'CSC 435',4,'Sat','','[''Spring'']',0);
INSERT INTO "course" VALUES(135,'CSC',575,'CSC 403',4,'Thu','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(136,'ECT',587,'CSC 401 or IT 411 or ECT 410 or ECT 436 or ECT 455',4,'Sat','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(137,'HCI',530,'HCI 454',4,'Sun','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(138,'CSC',534,'SE 450',4,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(139,'SE',554,'SE 450 or SE 452.',4,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(140,'CSC',580,'SE 450',4,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(141,'GPH',448,'GPH 438.',4,'Mon','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(142,'GPH',536,'GPH 469 or GAM 470',4,'Sat','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(143,'GPH',560,'any GPH 400-level course or consent of instructor.',4,'Mon','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(144,'CSC',440,'CSC 403',4,'Sat','','[''Winter'']',0);
INSERT INTO "course" VALUES(145,'IS',467,'IT 403 or CSC 423',4,'Fri','','[''Not Offered'']',1);
INSERT INTO "course" VALUES(146,'CSC',454,'CSC 451 or CSC 453 or CSC 455',4,'Sat','','[''Summer'']',0);
INSERT INTO "course" VALUES(147,'SE',546,'[]',4,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(148,'SE',482,'[]',4,'Mon','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(149,'CSC',553,'CSC 453.',4,'Sat','','[''Winter'']',0);
INSERT INTO "course" VALUES(150,'CSC',601,'Completion of required courses. Independent Study form required.  (0 credit hours)',0,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(151,'ECT',556,'[]',4,'Sun','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(152,'SE',691,'[]',0,'Sat','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(153,'TDC',460,'TDC 405 and TDC 413',4,'Sun','','[''Autumn'', ''Winter'', ''Spring'']',1);
INSERT INTO "course" VALUES(154,'CSC',557,'CSC 439',4,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(155,'CNS',594,'TDC 477 or CNS 533',4,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(156,'CSC',482,'CSC 481',4,'Sat','','[''As Needed'']',0);
INSERT INTO "course" VALUES(157,'CSC',521,'(CSC 402 or CSC 404) and CSC 423 or  consent of instructor',4,'Sat','','[''Spring'']',0);
INSERT INTO "course" VALUES(158,'GPH',565,'[]',0,'Mon','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(159,'IS',505,'[]',4,'Wed','','[''Autumn'', ''Winter'', ''Spring'']',1);
INSERT INTO "course" VALUES(160,'IS',430,'',4,'Wed','','[''Autumn'', ''Winter'', ''Spring'']',1);
INSERT INTO "course" VALUES(161,'ECT',565,'ECT 455',4,'Sat','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(162,'IS',456,'',4,'Wed','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(163,'CSC',543,'[]',4,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(164,'CSC',531,'[]',4,'Sat','','[''As Needed'']',0);
INSERT INTO "course" VALUES(165,'CNS',599,'None.  (variable credit)',0,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(166,'CNS',477,'CNS 440',4,'Sat','','[''Not Offered'']',1);
INSERT INTO "course" VALUES(167,'TDC',532,'TDC 512',4,'Fri','','[''Winter'']',0);
INSERT INTO "course" VALUES(168,'IT',599,'',0,'Sat','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(169,'TDC',431,'TDC 405',4,'Thu','','[''Winter'']',0);
INSERT INTO "course" VALUES(170,'CSC',425,'CSC 423 or MAT 456 or consent of instructor',4,'Fri','','[''Not Offered'']',1);
INSERT INTO "course" VALUES(171,'GPH',450,'HCI 470',4,'Wed','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(172,'HCI',454,'HCI 406 and (HCI 440 or HCI 441)',4,'Sun','','[''Not Offered'']',1);
INSERT INTO "course" VALUES(173,'TDC',577,'TDC 477',4,'Fri','','[''Autumn'', ''Spring'']',1);
INSERT INTO "course" VALUES(174,'IS',565,'Completion of five or more SoC MS level courses is required',4,'Sat','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(175,'CSC',431,'(CSC 401 and two quarters of calculus) or instructor permission',4,'Thu','','[''Winter'']',0);
INSERT INTO "course" VALUES(176,'SE',456,'CSC 403',4,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(177,'SE',556,'SE 456 and CSC 407',4,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(178,'GAM',476,'CSC 461 and (SE 456 or SE 450)',4,'Fri','','[''Not Offered'']',1);
INSERT INTO "course" VALUES(179,'GAM',594,'Completion Of Foundation Courses.',4,'Sat','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(180,'GPH',538,'GPH 438',4,'Mon','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(181,'GPH',540,'GPH 539',4,'Mon','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(182,'GPH',541,'GPH 539',4,'Mon','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(183,'CSC',525,'CSC 421.',4,'Sat','','[''EO Academic Year'']',0);
INSERT INTO "course" VALUES(184,'IS',535,'SE 477 or IS 565 or ACCT 500 or IS 430 or PM 430 or ECT 455',4,'Fri','','[''Autumn'', ''Winter'', ''Spring'']',1);
INSERT INTO "course" VALUES(185,'CNS',450,'CSC 407 or CNS 418',4,'Fri','','[''Not Offered'']',1);
INSERT INTO "course" VALUES(186,'CSC',443,'[]',4,'Sun','','[''As Needed'']',0);
INSERT INTO "course" VALUES(187,'IT',698,'Consent of advisor. (2 quarter hours)',0,'Thu','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(188,'CSC',559,'CSC 404 and (CSC 431 or CSC 521 or CSC 425)',4,'Sat','','[''Spring'']',1);
INSERT INTO "course" VALUES(189,'GPH',580,'[]',4,'Sat','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(190,'HCI',599,'[]',0,'Thu','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(191,'SE',453,'[]',4,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(192,'SE',457,'[]',4,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(193,'CSC',438,'[]',4,'Sat','','[''Autumn'', ''Spring'']',1);
INSERT INTO "course" VALUES(194,'CSC',695,'Consent of research advisor. Independent study form required. Students must successfully complete the foundation courses prior to their first enrollment in CSC 695. (variable credit )',0,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(195,'GPH',487,'[]',4,'Sat','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(196,'GAM',599,'None (variable credit)',0,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(197,'GAM',424,'none',4,'Sat','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(198,'IT',432,'IT 411',4,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(199,'IS',590,'[]',4,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(200,'IS',599,'[]',0,'Thu','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(201,'GAM',450,'CSC 461 and (SE 456 or SE 450)',4,'Sat','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(202,'IS',435,'IS 421 or SE 430',4,'Fri','','[''Not Offered'']',1);
INSERT INTO "course" VALUES(203,'CSC',439,'[]',4,'Sat','','[''As Needed'']',0);
INSERT INTO "course" VALUES(204,'GAM',475,'CSC 461 and (SE 456 or SE 450)',4,'Sat','','[''Not Offered'']',1);
INSERT INTO "course" VALUES(205,'GAM',575,'GAM 475',4,'Sat','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(206,'CSC',486,'CSC 461 and (SE 456 or SE 450)',4,'Sun','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(207,'GAM',690,'[]',4,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(208,'GAM',691,'[]',0,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(209,'GAM',453,'CSC 461 and (SE 456 or SE 450)',4,'Sat','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(210,'IS',506,'IS 505',4,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(211,'SE',525,'CSC 435 and SE 450',4,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(212,'SE',526,'[]',4,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(213,'GAM',499,'Permission of instructor  (variable credit)',0,'Tue','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(214,'GAM',598,'For specific prerequisites, see syllabus or consult course instructor.  (variable credit)',0,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(215,'HCI',421,'HCI 406',4,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(216,'SE',511,'[]',0,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(217,'IS',485,'IS 422 or IS 430 or PM 430.',0,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(218,'GAM',491,'CSC 400 and CSC 403 and CSC 407',4,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(219,'IS',444,'',4,'Mon','','[''Not Offered'']',1);
INSERT INTO "course" VALUES(220,'CNS',455,'',4,'Wed','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(221,'CSC',495,'CSC 423 or SOC 412',4,'Wed','','[''Autumn'', ''Spring'']',1);
INSERT INTO "course" VALUES(222,'IS',455,'None.  For Kellstadt students or students pursuing the MS in Business Information Technology only.',4,'Tue','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(223,'CSC',465,'IT 403 and (CSC 401 or IT 411)',4,'Fri','','[''Not Offered'']',1);
INSERT INTO "course" VALUES(224,'GAM',486,'CSC 471',4,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(225,'SE',459,'SE 450',4,'Fri','','[''Not Offered'']',1);
INSERT INTO "course" VALUES(226,'TDC',560,'TDC 460 AND  TDC 463',4,'Fri','','[''Once Per Year'']',0);
INSERT INTO "course" VALUES(227,'TDC',594,'TDC 477 and TDC 511',4,'Fri','','[''As Needed'']',0);
INSERT INTO "course" VALUES(228,'SE',582,'(SE 477 or PM 430 or IS 430) and (SE 430 or SE 482 or IS 485)',4,'Sat','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(229,'ECT',424,'[]',4,'Wed','','[''Autumn'', ''Winter'', ''Spring'']',1);
INSERT INTO "course" VALUES(230,'ECT',436,'',4,'Thu','','[''Autumn'', ''Winter'', ''Spring'']',0);
INSERT INTO "course" VALUES(231,'CSC',500,'None (variable credit)',0,'Fri','','[''Autumn'', ''Winter'', ''Spring'']',1);
INSERT INTO "course" VALUES(232,'IT',590,'Instructor consent required',0,'Mon','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(233,'CSC',583,'CSC 480',4,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(234,'CNS',466,'CNS 440 or TDC 477',4,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(235,'TDC',484,'TDC 413',4,'Sun','','[''Spring'']',0);
INSERT INTO "course" VALUES(236,'HCI',580,'[]',4,'Sat','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(237,'CSC',436,'CSC 435 and CSC 447',4,'Fri','','[''Not Offered'']',1);
INSERT INTO "course" VALUES(238,'CSC',471,'CSC 403 and CSC 407',4,'Sat','','[''Winter'']',0);
INSERT INTO "course" VALUES(239,'TDC',478,'none',4,'Sun','','[''Not Offered'']',1);
INSERT INTO "course" VALUES(240,'IS',500,'IS 430 OR PM 430 OR SE 477',4,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(241,'IS',536,'[]',4,'Mon','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(242,'SE',598,'For specific prerequisites, see syllabus or consult course instructor. (variable credit)',0,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(243,'TDC',542,'TDC 512',4,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(244,'GAM',597,'See syllabus.',4,'Mon','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(245,'CNS',488,'CSC 407 or TDC 477',4,'Sat','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(246,'CSC',595,'For specific prerequisites, see syllabus or consult course instructor. (variable credit)',0,'Mon','','[''Winter'']',1);
INSERT INTO "course" VALUES(247,'IS',580,'Completion of the foundation phase.',4,'Mon','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(248,'IS',579,'PM 430 or IS 430',4,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(249,'CSC',555,'CSC 401 and ( CSC 453 or CSC 455) and (IS 467 or CSC 478)',4,'Sat','','[''Autumn'', ''Spring'']',1);
INSERT INTO "course" VALUES(250,'HCI',520,'IT 403 and (HCI 440 or HCI 441) and HCI 450',4,'Sun','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(251,'HCI',514,'HCI 445 and HCI 460',4,'Sun','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(252,'SE',581,'SE 480',4,'Wed','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(253,'SE',475,'CSC 403',4,'Fri','','[''Not Offered'']',1);
INSERT INTO "course" VALUES(254,'CSC',400,'[]',4,'Sat','','[''Autumn'', ''Winter'', ''Spring'']',1);
INSERT INTO "course" VALUES(255,'CSC',402,'CSC 401',4,'Sat','','[''Autumn'', ''Winter'', ''Spring'']',1);
INSERT INTO "course" VALUES(256,'CSC',401,'',4,'Sat','','[''Autumn'', ''Winter'', ''Spring'']',1);
INSERT INTO "course" VALUES(257,'CSC',403,'CSC 402',4,'Sat','','[''Autumn'', ''Winter'', ''Spring'']',1);
INSERT INTO "course" VALUES(258,'CSC',406,'CSC 401',4,'Sat','','[''Autumn'', ''Winter'', ''Spring'']',1);
INSERT INTO "course" VALUES(259,'CSC',407,'CSC 406 and CSC 402',4,'Sat','','[''Autumn'', ''Winter'', ''Spring'']',1);
INSERT INTO "course" VALUES(260,'CSC',404,'',4,'Sat','','[''Autumn'', ''Winter'', ''Spring'']',0);
INSERT INTO "course" VALUES(261,'TDC',405,'',4,'Tue','','[''Not Offered'']',1);
INSERT INTO "course" VALUES(262,'TDC',411,'',4,'Fri','','[''Not Offered'']',1);
INSERT INTO "course" VALUES(263,'TDC',413,'',4,'Tue','','[''Not Offered'']',1);
INSERT INTO "course" VALUES(264,'IT',403,'',4,'Mon','','[''Not Offered'']',1);
INSERT INTO "course" VALUES(265,'CNS',418,'TDC 411',4,'Fri','','[''Not Offered'']',1);
INSERT INTO "course" VALUES(266,'ECT',410,'CSC 401 or IT 411',4,'Fri','','[''Not Offered'']',1);
INSERT INTO "course" VALUES(267,'IS',400,'None  (1 quarter hour)',0,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(268,'IT',411,'',4,'Mon','','[''Not Offered'']',1);
INSERT INTO "course" VALUES(269,'HCI',406,'',4,'Tue','','[''Not Offered'']',1);
INSERT INTO "course" VALUES(270,'CSC',412,'',4,'Sat','','[''Autumn'', ''Winter'']',1);
INSERT INTO "course" VALUES(271,'CSC',478,'IS 467 and CSC 401',4,'Fri','','[''Not Offered'']',1);
INSERT INTO "course" VALUES(272,'CSC',529,'CSC 424 and  (IS 467 or ECT 584 or CSC 578)',4,'Mon','','[''Not Offered'']',1);
INSERT INTO "course" VALUES(273,'CSC',433,'IT 403 and (CSC 401  or IT 411)',4,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(274,'SE',599,'None. (variable credit)',0,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(275,'IS',431,'',4,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(276,'CNS',440,'',4,'Fri','','[''Not Offered'']',1);
INSERT INTO "course" VALUES(277,'SE',579,'SE 450',4,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(278,'CSC',455,'CSC 401',4,'Sat','','[''Autumn'', ''Winter'', ''Spring'']',1);
INSERT INTO "course" VALUES(279,'CNS',533,'CNS 440',4,'Sun','','[''Not Offered'']',1);
INSERT INTO "course" VALUES(280,'CSC',461,'CSC 400 and CSC 403 and CSC 406',4,'Fri','','[''Autumn'']',1);
INSERT INTO "course" VALUES(281,'TDC',599,'[]',0,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(282,'CSC',672,'Instructor consent required',4,'Thu','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(283,'CNS',587,'CNS 477 and (IS 444 or CNS 490 or CNS 533 or CSC 439 or TDC 577)',4,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(284,'CSC',472,'CSC 403 and CSC 407',4,'Sat','','[''Autumn'']',1);
INSERT INTO "course" VALUES(285,'CNS',597,'For specific prerequisites, see syllabus or consult course instructor. (variable credit)',0,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(286,'CSC',462,'GAM 491 or CSC 461',4,'Thu','','[''As Needed'']',0);
INSERT INTO "course" VALUES(287,'HCI',441,'CSC 403',0,'Thu','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(288,'HCI',553,'HCI 454',4,'Sun','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(289,'GAM',695,'GAM 575 and consent of research advisor',0,'Tue','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(290,'SE',695,'Consent of research advisor. Independent study form required. Students must successfully complete the foundation courses prior to their first enrollment in CSC 695. (variable credit)',0,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(291,'CNS',489,'CSC 407 or CNS 418',4,'Sat','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(292,'CNS',490,'CNS 440',4,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(293,'HCI',515,'HCI 445 and HCI 454 and HCI 430',4,'Sun','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(294,'IS',452,'',4,'Tue','','[''Not Offered'']',1);
INSERT INTO "course" VALUES(295,'CSC',576,'[]',4,'Sat','','[''EO Winter'']',0);
INSERT INTO "course" VALUES(296,'GAM',425,'CSC 403',4,'Fri','','[''Not Offered'']',1);
INSERT INTO "course" VALUES(297,'GAM',576,'GAM 575',4,'Fri','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(298,'IS',550,'CSC 451 or CSC 453 or CSC 455',4,'Fri','','[''Not Offered'']',1);
INSERT INTO "course" VALUES(299,'SE',441,'CSC 403',4,'Thu','','[''Not Offered'']',0);
INSERT INTO "course" VALUES(300,'HCI',522,'[]',4,'Fri','','[''Not Offered'']',0);
CREATE TABLE term (
	id INTEGER NOT NULL, 
	name VARCHAR(120) NOT NULL, 
	year INTEGER NOT NULL, 
	offered VARCHAR(120) NOT NULL, 
	PRIMARY KEY (id, year), 
	UNIQUE (id), 
	UNIQUE (year)
);
CREATE TABLE user (
	id INTEGER NOT NULL, 
	name VARCHAR(120) NOT NULL, 
	email VARCHAR(120) NOT NULL, 
	password VARCHAR(30) NOT NULL, 
	role_id INTEGER NOT NULL, 
	active INTEGER NOT NULL, 
	program VARCHAR(120) NOT NULL, 
	concentration VARCHAR(120) NOT NULL, 
	start_term VARCHAR(10) NOT NULL, 
	start_year INTEGER NOT NULL, 
	delivery_type INTEGER NOT NULL, 
	classes_per_term INTEGER NOT NULL, 
	taken VARCHAR(120) NOT NULL, 
	PRIMARY KEY (id), 
	UNIQUE (id), 
	UNIQUE (email), 
	FOREIGN KEY(role_id) REFERENCES user_role (id)
);
INSERT INTO "user" VALUES(1,'admin','admin@gmail.com','102137',1,0,'Information Systems','Software and Systems Development','Autumn',2017,'In-Class Only',1,'{}');
INSERT INTO "user" VALUES(2,'stutofac','stutofac@gmail.com','102137',3,0,'Information Systems','Software and Systems Development','Autumn',2017,'In-Class Only',1,'{}');
CREATE TABLE "Users" (
	id INTEGER NOT NULL, 
	name VARCHAR(120) NOT NULL, 
	email VARCHAR(120) NOT NULL, 
	password VARCHAR(30) NOT NULL, 
	role INTEGER NOT NULL, 
	active INTEGER NOT NULL, 
	program VARCHAR(120) NOT NULL, 
	concentration VARCHAR(120) NOT NULL, 
	start_term VARCHAR(10) NOT NULL, 
	start_year INTEGER NOT NULL, 
	delivery_type INTEGER NOT NULL, 
	classes_per_term INTEGER NOT NULL, 
	taken VARCHAR(120) NOT NULL, 
	PRIMARY KEY (id), 
	UNIQUE (id), 
	UNIQUE (email)
);
CREATE TABLE "Role" (
	id INTEGER NOT NULL, 
	name VARCHAR(120) NOT NULL, 
	PRIMARY KEY (id), 
	UNIQUE (id)
);
CREATE TABLE "CourseType" (
	id INTEGER NOT NULL, 
	name VARCHAR(120) NOT NULL, 
	PRIMARY KEY (id), 
	UNIQUE (id)
);
COMMIT;