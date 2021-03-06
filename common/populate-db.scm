(use sql-de-lite)

(define queries
  '("INSERT INTO \"roles\" VALUES(1,'admin');" "INSERT INTO \"roles\" VALUES(2,'editor');"
    "INSERT INTO \"roles\" VALUES(3,'author');" "INSERT INTO \"roles\" VALUES(4,'member');"
    "INSERT INTO \"roles\" VALUES(5,'guest');"
    "INSERT INTO \"tags\" VALUES(9,'art deco');" "INSERT INTO \"tags\" VALUES(2,'autism');"
    "INSERT INTO \"tags\" VALUES(25,'beer');" "INSERT INTO \"tags\" VALUES(15,'bicycles');"
    "INSERT INTO \"tags\" VALUES(5,'birth control');" "INSERT INTO \"tags\" VALUES(26,'brazil');"
    "INSERT INTO \"tags\" VALUES(1,'bunnies');" "INSERT INTO \"tags\" VALUES(22,'butterflies');"
    "INSERT INTO \"tags\" VALUES(6,'celiac disease');" "INSERT INTO \"tags\" VALUES(27,'chocolate');"
    "INSERT INTO \"tags\" VALUES(16,'crocodiles');" "INSERT INTO \"tags\" VALUES(4,'economics');"
    "INSERT INTO \"tags\" VALUES(7,'fashion');" "INSERT INTO \"tags\" VALUES(8,'fear');"
    "INSERT INTO \"tags\" VALUES(3,'greece');" "INSERT INTO \"tags\" VALUES(10,'hazardous waste');"
    "INSERT INTO \"tags\" VALUES(11,'korea');" "INSERT INTO \"tags\" VALUES(12,'oysters');"
    "INSERT INTO \"tags\" VALUES(17,'pizza');" "INSERT INTO \"tags\" VALUES(21,'postmodernism');"
    "INSERT INTO \"tags\" VALUES(14,'propaganda');" "INSERT INTO \"tags\" VALUES(18,'queer');"
    "INSERT INTO \"tags\" VALUES(19,'radiation');" "INSERT INTO \"tags\" VALUES(23,'sex');"
    "INSERT INTO \"tags\" VALUES(20,'sushi');" "INSERT INTO \"tags\" VALUES(24,'typography');"
    "INSERT INTO \"tags\" VALUES(13,'vegetables');"
    "INSERT INTO \"users\" VALUES(1,'ali','b42a6d93d796915222f6ffb2ffdd6137d93c1cdb','ali@mali.net',3,'Ali Farka Toure',NULL);"
    "INSERT INTO \"users\" VALUES(2,'jason','68c46a606457643eab92053c1c05574abb26f861','jason@athens.org',2,'Just Jason',NULL);"
    "INSERT INTO \"users\" VALUES(3,'jonathan','3692bfa45759a67d83aedf0045f6cb635a966abf','johnny@appleseed.com',3,NULL,NULL);"
    "INSERT INTO \"users\" VALUES(4,'judy','38fc8caea6f2c86986a5520ccffc64fd875c5bd7','judyblue@gmail.com',3,'Judy Blue Eyes',NULL);"
    "INSERT INTO \"users\" VALUES(5,'madeleine','54446095882f63c946421fbb007abdc84eb09e1f','msc@gmail.com',2,'Madeleine St. Clair',NULL);"
    "INSERT INTO \"users\" VALUES(6,'matt','1fa2ef4755a9226cb9a0a4840bd89b158ac71391','matt@matt.org',1,'Matt the Cat',NULL);"
    "INSERT INTO \"users\" VALUES(7,'megan','777f16b7ee2e1489dd2a9b0bb7926afed64d62d5','megan@megan.net',3,NULL,NULL);"
    "INSERT INTO \"users\" VALUES(8,'valerie','3895da854ac51800a8b821b4330859705f37cfc3','vb@gmail.com',3,'Valerie Bertinelli',NULL);"
    "INSERT INTO \"series\" VALUES(1,'Evil Corporadoes Perpetrate Evil','A series');"
    "INSERT INTO \"series\" VALUES(2,'New Frontiers in Conceptual Art','A series');"
    "INSERT INTO \"articles\" VALUES(1,'a3b28001','Duane Slats Plans Misgendered Systems',1,1,NULL,1291678156,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(2,'a3b28002','Rasputin Fiddles with Revolutionary Canvases',2,1,NULL,1306759167,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(3,'a3b28003','Senator Spiegel Spews Spotless Mirrors',NULL,NULL,NULL,1343599683,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(4,'a3b28004','Cheesemakers Anonymous Uproots Smutty Monuments',NULL,NULL,NULL,1302574931,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(5,'a3b28005','Rasputin Endures Oblique Lectures',NULL,NULL,NULL,1339275732,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(6,'a3b28006','Dr. Frankenstein Fiddles with Smarmy Systems',1,2,NULL,1350595867,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(7,'a3b28011','Zortheimer Cashes in on Significant Children',NULL,NULL,NULL,1324937551,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(8,'a3b28012','Cargill Cashes in on Evil Palimpsests',1,3,NULL,1332593447,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(9,'a3b28013','Lao Tzu Flirts with Imaginative Caribou',2,2,NULL,1316877138,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(10,'a3b28014','Cargill Plans Revolutionary Whores',1,4,NULL,1301792335,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(11,'a3b28015','Acme Industries Takes on Northerly Systems',NULL,NULL,NULL,1350288471,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(12,'a3b28016','The Warthog Destroys Entombed Palimpsests',NULL,NULL,NULL,1325246806,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(13,'a3b28021','Senator Spiegel Flirts with Significant Shipments',NULL,NULL,NULL,1328873776,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(14,'a3b28022','Drano Society Overlooks Evil Mausoleums',1,5,NULL,1328906549,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(15,'a3b28023','Mr. Stools Adores Useless Corporations',NULL,NULL,NULL,1342025472,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(16,'a3b28024','Western Willywhackers Patents Obvious Children',1,6,NULL,1331571544,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(17,'a3b28025','Barton Fink Plans Abstruse Tartlets',2,3,NULL,1298602784,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(18,'a3b28026','Mozart Creates Decaying Shipments',2,4,NULL,1302853668,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(19,'a3b28031','Duane Slats Ignores Decaying Conspiracies',NULL,NULL,NULL,1343128531,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(20,'a3b28032','Johnny English Criticizes Northerly Funds',NULL,NULL,NULL,1329273741,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(21,'a3b28033','Zortheimer Fiddles with Northerly Mirrors',NULL,NULL,NULL,1294616060,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(22,'a3b28034','Duane Slats Works on Imaginary Monuments',2,5,NULL,1318332384,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(23,'a3b28035','Norton Dork Destroys Misgendered Smokers',NULL,NULL,NULL,1318944542,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(24,'a3b28036','Norton Dork Ignores Green Monuments',NULL,NULL,NULL,1303274629,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(25,'a3b28041','Johnny English Works on Useless Strategies',NULL,NULL,NULL,1316275242,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(26,'a3b28042','Johnny English Works on Groovy Gales',NULL,NULL,NULL,1331086664,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(27,'a3b28043','Lao Tzu Uproots Misgendered Countertops',NULL,NULL,NULL,1349694148,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(28,'a3b28044','Father Randy Buys Smutty Gales',NULL,NULL,NULL,1309266553,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(29,'a3b28045','Johnny English Works on Arrogant Emotions',NULL,NULL,NULL,1299744208,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(30,'a3b28046','Barton Fink Creates Avid Systems',NULL,NULL,NULL,1351673083,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(31,'a3b28051','Duane Slats Ignores Unpleasant Lectures',NULL,NULL,NULL,1315124441,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(32,'a3b28052','Father Randy Overlooks Significant Cartridges',NULL,NULL,NULL,1342105904,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(33,'a3b28053','Drano Society Praises Oblique Antelope',NULL,NULL,NULL,1312765295,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(34,'a3b28054','Mr. Stools Ignores Entombed Escalators',NULL,NULL,NULL,1323291672,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(35,'a3b28055','Acme Industries Fiddles with Evil Canvases',1,7,NULL,1332268639,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(36,'a3b28056','Jennifer Cashes in on Obtuse Canvases',NULL,NULL,NULL,1326301864,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(37,'a3b28061','Novartis Creates Passionate Emotions',NULL,NULL,NULL,1294383361,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(38,'a3b28062','Duane Slats Screws up Arrogant Muffins',NULL,NULL,NULL,1348796939,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(39,'a3b28063','Johnny English Takes on Obsequious Mine Shafts',NULL,NULL,NULL,1328916523,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(40,'a3b28064','Jennifer Criticizes Obtuse Mirrors',NULL,NULL,NULL,1305687394,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(41,'a3b28065','Mr. Stools Adores Decaying Ad Campaigns',NULL,NULL,NULL,1341449554,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(42,'a3b28066','Zortheimer Works on Misgendered Mirrors',NULL,NULL,NULL,1324957278,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(43,'a3b28071','Senator Spiegel Borrows Worthless Chimneys',NULL,NULL,NULL,1298102374,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(44,'a3b28072','Lao Tzu Plans Unpleasant Crystals',NULL,NULL,NULL,1347876638,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(45,'a3b28073','Sam Smoot Patents Revolutionary Monuments',NULL,NULL,NULL,1346273408,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(46,'a3b28074','Drano Society Misses Avid Missives',NULL,NULL,NULL,1349227996,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(47,'a3b28075','Acme Industries Adores Spotless Monuments',NULL,NULL,NULL,1323779603,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(48,'a3b28076','Zortheimer Fiddles with Evil Ad Campaigns',NULL,NULL,NULL,1333494988,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(49,'a3b28081','Western Willywhackers Focuses on Evil Whores',1,8,NULL,1327852413,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(50,'a3b28082','Jim James Destroys Worthless Children',NULL,NULL,NULL,1309162080,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(51,'a3b28083','Jim James Criticizes Obtuse Emotions',NULL,NULL,NULL,1316644061,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(52,'a3b28084','Novartis Buys Northerly Countertops',NULL,NULL,NULL,1305547077,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(53,'a3b28085','Barton Fink Borrows Entombed Monuments',NULL,NULL,NULL,1332172603,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(54,'a3b28086','Jennifer Patents Groovy Antelope',NULL,NULL,NULL,1304310945,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(55,'a3b28091','Jennifer Spews Green Manuscripts',NULL,NULL,NULL,1322602636,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(56,'a3b28092','Senator Spiegel Renews Passionate Lectures',NULL,NULL,NULL,1330809969,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(57,'a3b28093','Cheesemakers Anonymous Borrows Misgendered Exhibitions',NULL,NULL,NULL,1307134429,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(58,'a3b28094','Jim James Buys Abstruse Emotions',NULL,NULL,NULL,1337398865,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(59,'a3b28095','Mr. Stools Praises Passionate Diagrams',NULL,NULL,NULL,1304744787,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(60,'a3b28096','Lao Tzu Criticizes Imaginary Mine Shafts',NULL,NULL,NULL,1328520746,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(61,'a3b28101','Father Randy Ignores Scrofulous Subway Trains',NULL,NULL,NULL,1300202514,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(62,'a3b28102','Senator Spiegel Ignores Smarmy Palimpsests',NULL,NULL,NULL,1347264914,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(63,'a3b28103','Novartis Takes on Arrogant Cartridges',NULL,NULL,NULL,1348071053,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(64,'a3b28104','Zortheimer Overlooks Groovy Mausoleums',NULL,NULL,NULL,1321811042,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(65,'a3b28105','Rasputin Endures Entombed Children',NULL,NULL,NULL,1324926932,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles\" VALUES(66,'a3b28106','Father Randy Creates Revolutionary Antelope',NULL,NULL,NULL,1326975927,NULL,NULL,NULL,NULL,0,NULL);"
    "INSERT INTO \"articles_x_authors\" VALUES(1,1,1);" "INSERT INTO \"articles_x_authors\" VALUES(2,2,6);"
    "INSERT INTO \"articles_x_authors\" VALUES(3,3,5);" "INSERT INTO \"articles_x_authors\" VALUES(4,4,7);"
    "INSERT INTO \"articles_x_authors\" VALUES(5,5,8);" "INSERT INTO \"articles_x_authors\" VALUES(6,6,8);"
    "INSERT INTO \"articles_x_authors\" VALUES(7,7,1);" "INSERT INTO \"articles_x_authors\" VALUES(8,8,7);"
    "INSERT INTO \"articles_x_authors\" VALUES(9,9,6);" "INSERT INTO \"articles_x_authors\" VALUES(10,10,2);"
    "INSERT INTO \"articles_x_authors\" VALUES(11,11,3);" "INSERT INTO \"articles_x_authors\" VALUES(12,12,1);"
    "INSERT INTO \"articles_x_authors\" VALUES(13,13,4);" "INSERT INTO \"articles_x_authors\" VALUES(14,14,5);"
    "INSERT INTO \"articles_x_authors\" VALUES(15,15,8);" "INSERT INTO \"articles_x_authors\" VALUES(16,16,4);"
    "INSERT INTO \"articles_x_authors\" VALUES(17,17,8);" "INSERT INTO \"articles_x_authors\" VALUES(18,18,6);"
    "INSERT INTO \"articles_x_authors\" VALUES(19,19,2);" "INSERT INTO \"articles_x_authors\" VALUES(20,20,4);"
    "INSERT INTO \"articles_x_authors\" VALUES(21,21,6);" "INSERT INTO \"articles_x_authors\" VALUES(22,22,5);"
    "INSERT INTO \"articles_x_authors\" VALUES(23,23,4);" "INSERT INTO \"articles_x_authors\" VALUES(24,24,1);"
    "INSERT INTO \"articles_x_authors\" VALUES(25,25,4);" "INSERT INTO \"articles_x_authors\" VALUES(26,26,5);"
    "INSERT INTO \"articles_x_authors\" VALUES(27,27,5);" "INSERT INTO \"articles_x_authors\" VALUES(28,28,2);"
    "INSERT INTO \"articles_x_authors\" VALUES(29,29,8);" "INSERT INTO \"articles_x_authors\" VALUES(30,30,2);"
    "INSERT INTO \"articles_x_authors\" VALUES(31,31,8);" "INSERT INTO \"articles_x_authors\" VALUES(32,32,7);"
    "INSERT INTO \"articles_x_authors\" VALUES(33,33,2);" "INSERT INTO \"articles_x_authors\" VALUES(34,34,4);"
    "INSERT INTO \"articles_x_authors\" VALUES(35,35,3);" "INSERT INTO \"articles_x_authors\" VALUES(36,36,8);"
    "INSERT INTO \"articles_x_authors\" VALUES(37,37,8);" "INSERT INTO \"articles_x_authors\" VALUES(38,38,6);"
    "INSERT INTO \"articles_x_authors\" VALUES(39,39,7);" "INSERT INTO \"articles_x_authors\" VALUES(40,40,2);"
    "INSERT INTO \"articles_x_authors\" VALUES(41,41,5);" "INSERT INTO \"articles_x_authors\" VALUES(42,42,7);"
    "INSERT INTO \"articles_x_authors\" VALUES(43,43,4);" "INSERT INTO \"articles_x_authors\" VALUES(44,44,8);"
    "INSERT INTO \"articles_x_authors\" VALUES(45,45,8);" "INSERT INTO \"articles_x_authors\" VALUES(46,46,1);"
    "INSERT INTO \"articles_x_authors\" VALUES(47,47,8);" "INSERT INTO \"articles_x_authors\" VALUES(48,48,7);"
    "INSERT INTO \"articles_x_authors\" VALUES(49,49,5);" "INSERT INTO \"articles_x_authors\" VALUES(50,50,5);"
    "INSERT INTO \"articles_x_authors\" VALUES(51,51,4);" "INSERT INTO \"articles_x_authors\" VALUES(52,52,4);"
    "INSERT INTO \"articles_x_authors\" VALUES(53,53,7);" "INSERT INTO \"articles_x_authors\" VALUES(54,54,2);"
    "INSERT INTO \"articles_x_authors\" VALUES(55,55,8);" "INSERT INTO \"articles_x_authors\" VALUES(56,56,4);"
    "INSERT INTO \"articles_x_authors\" VALUES(57,57,5);" "INSERT INTO \"articles_x_authors\" VALUES(58,58,7);"
    "INSERT INTO \"articles_x_authors\" VALUES(59,59,5);" "INSERT INTO \"articles_x_authors\" VALUES(60,60,1);"
    "INSERT INTO \"articles_x_authors\" VALUES(61,61,2);" "INSERT INTO \"articles_x_authors\" VALUES(62,62,8);"
    "INSERT INTO \"articles_x_authors\" VALUES(63,63,8);" "INSERT INTO \"articles_x_authors\" VALUES(64,64,7);"
    "INSERT INTO \"articles_x_authors\" VALUES(65,65,8);" "INSERT INTO \"articles_x_authors\" VALUES(66,66,6);"
    "INSERT INTO \"articles_x_authors\" VALUES(67,44,3);" "INSERT INTO \"articles_x_authors\" VALUES(68,44,4);"
  
    "INSERT INTO \"articles_x_tags\" VALUES(1,1,27);" "INSERT INTO \"articles_x_tags\" VALUES(2,1,26);"
    "INSERT INTO \"articles_x_tags\" VALUES(3,2,27);" "INSERT INTO \"articles_x_tags\" VALUES(4,2,25);"
    "INSERT INTO \"articles_x_tags\" VALUES(5,2,24);" "INSERT INTO \"articles_x_tags\" VALUES(6,2,26);"
    "INSERT INTO \"articles_x_tags\" VALUES(7,3,27);" "INSERT INTO \"articles_x_tags\" VALUES(8,3,24);"
    "INSERT INTO \"articles_x_tags\" VALUES(9,3,23);" "INSERT INTO \"articles_x_tags\" VALUES(10,4,27);"
    "INSERT INTO \"articles_x_tags\" VALUES(11,4,24);" "INSERT INTO \"articles_x_tags\" VALUES(12,4,23);"
    "INSERT INTO \"articles_x_tags\" VALUES(13,5,27);" "INSERT INTO \"articles_x_tags\" VALUES(14,5,24);"
    "INSERT INTO \"articles_x_tags\" VALUES(15,5,23);" "INSERT INTO \"articles_x_tags\" VALUES(16,6,22);"
    "INSERT INTO \"articles_x_tags\" VALUES(17,6,21);" "INSERT INTO \"articles_x_tags\" VALUES(18,7,27);"
    "INSERT INTO \"articles_x_tags\" VALUES(19,7,24);" "INSERT INTO \"articles_x_tags\" VALUES(20,7,23);"
    "INSERT INTO \"articles_x_tags\" VALUES(21,8,20);" "INSERT INTO \"articles_x_tags\" VALUES(22,8,19);"
    "INSERT INTO \"articles_x_tags\" VALUES(23,8,18);" "INSERT INTO \"articles_x_tags\" VALUES(24,8,17);"
    "INSERT INTO \"articles_x_tags\" VALUES(25,9,27);" "INSERT INTO \"articles_x_tags\" VALUES(26,9,24);"
    "INSERT INTO \"articles_x_tags\" VALUES(27,9,23);" "INSERT INTO \"articles_x_tags\" VALUES(28,10,27);"
    "INSERT INTO \"articles_x_tags\" VALUES(29,10,16);" "INSERT INTO \"articles_x_tags\" VALUES(30,10,21);"
    "INSERT INTO \"articles_x_tags\" VALUES(31,10,15);" "INSERT INTO \"articles_x_tags\" VALUES(32,11,27);"
    "INSERT INTO \"articles_x_tags\" VALUES(33,11,24);" "INSERT INTO \"articles_x_tags\" VALUES(34,11,23);"
    "INSERT INTO \"articles_x_tags\" VALUES(35,12,27);" "INSERT INTO \"articles_x_tags\" VALUES(36,12,24);"
    "INSERT INTO \"articles_x_tags\" VALUES(37,13,27);" "INSERT INTO \"articles_x_tags\" VALUES(38,13,25);"
    "INSERT INTO \"articles_x_tags\" VALUES(39,13,26);" "INSERT INTO \"articles_x_tags\" VALUES(40,14,27);"
    "INSERT INTO \"articles_x_tags\" VALUES(41,14,24);" "INSERT INTO \"articles_x_tags\" VALUES(42,14,23);"
    "INSERT INTO \"articles_x_tags\" VALUES(43,15,24);" "INSERT INTO \"articles_x_tags\" VALUES(44,16,14);"
    "INSERT INTO \"articles_x_tags\" VALUES(45,16,13);" "INSERT INTO \"articles_x_tags\" VALUES(46,17,27);"
    "INSERT INTO \"articles_x_tags\" VALUES(47,17,25);" "INSERT INTO \"articles_x_tags\" VALUES(48,18,16);"
    "INSERT INTO \"articles_x_tags\" VALUES(49,18,24);" "INSERT INTO \"articles_x_tags\" VALUES(50,18,19);"
    "INSERT INTO \"articles_x_tags\" VALUES(51,18,12);" "INSERT INTO \"articles_x_tags\" VALUES(52,19,25);"
    "INSERT INTO \"articles_x_tags\" VALUES(53,19,21);" "INSERT INTO \"articles_x_tags\" VALUES(54,19,11);"
    "INSERT INTO \"articles_x_tags\" VALUES(55,20,25);" "INSERT INTO \"articles_x_tags\" VALUES(56,20,10);"
    "INSERT INTO \"articles_x_tags\" VALUES(57,20,24);" "INSERT INTO \"articles_x_tags\" VALUES(58,20,9);"
    "INSERT INTO \"articles_x_tags\" VALUES(59,20,19);" "INSERT INTO \"articles_x_tags\" VALUES(60,21,24);"
    "INSERT INTO \"articles_x_tags\" VALUES(61,21,26);" "INSERT INTO \"articles_x_tags\" VALUES(62,21,8);"
    "INSERT INTO \"articles_x_tags\" VALUES(63,21,18);" "INSERT INTO \"articles_x_tags\" VALUES(64,22,7);"
    "INSERT INTO \"articles_x_tags\" VALUES(65,22,15);" "INSERT INTO \"articles_x_tags\" VALUES(66,22,10);"
    "INSERT INTO \"articles_x_tags\" VALUES(67,22,6);" "INSERT INTO \"articles_x_tags\" VALUES(68,22,9);"
    "INSERT INTO \"articles_x_tags\" VALUES(69,23,5);" "INSERT INTO \"articles_x_tags\" VALUES(70,24,16);"
    "INSERT INTO \"articles_x_tags\" VALUES(71,24,24);" "INSERT INTO \"articles_x_tags\" VALUES(72,24,26);"
    "INSERT INTO \"articles_x_tags\" VALUES(73,25,7);" "INSERT INTO \"articles_x_tags\" VALUES(74,25,26);"
    "INSERT INTO \"articles_x_tags\" VALUES(75,25,18);" "INSERT INTO \"articles_x_tags\" VALUES(76,25,13);"
    "INSERT INTO \"articles_x_tags\" VALUES(77,26,10);" "INSERT INTO \"articles_x_tags\" VALUES(78,27,25);"
    "INSERT INTO \"articles_x_tags\" VALUES(79,28,7);" "INSERT INTO \"articles_x_tags\" VALUES(80,28,10);"
    "INSERT INTO \"articles_x_tags\" VALUES(81,28,17);" "INSERT INTO \"articles_x_tags\" VALUES(82,28,9);"
    "INSERT INTO \"articles_x_tags\" VALUES(83,28,23);" "INSERT INTO \"articles_x_tags\" VALUES(84,29,7);"
    "INSERT INTO \"articles_x_tags\" VALUES(85,30,24);" "INSERT INTO \"articles_x_tags\" VALUES(86,31,25);"
    "INSERT INTO \"articles_x_tags\" VALUES(87,31,9);" "INSERT INTO \"articles_x_tags\" VALUES(88,31,18);"
    "INSERT INTO \"articles_x_tags\" VALUES(89,32,11);" "INSERT INTO \"articles_x_tags\" VALUES(90,33,27);"
    "INSERT INTO \"articles_x_tags\" VALUES(91,33,7);" "INSERT INTO \"articles_x_tags\" VALUES(92,33,26);"
    "INSERT INTO \"articles_x_tags\" VALUES(93,34,25);" "INSERT INTO \"articles_x_tags\" VALUES(94,35,7);"
    "INSERT INTO \"articles_x_tags\" VALUES(95,35,10);" "INSERT INTO \"articles_x_tags\" VALUES(96,35,17);"
    "INSERT INTO \"articles_x_tags\" VALUES(97,35,4);" "INSERT INTO \"articles_x_tags\" VALUES(98,35,9);"
    "INSERT INTO \"articles_x_tags\" VALUES(99,36,27);" "INSERT INTO \"articles_x_tags\" VALUES(100,36,24);"
    "INSERT INTO \"articles_x_tags\" VALUES(101,36,23);" "INSERT INTO \"articles_x_tags\" VALUES(102,37,24);"
    "INSERT INTO \"articles_x_tags\" VALUES(103,37,23);" "INSERT INTO \"articles_x_tags\" VALUES(104,38,25);"
    "INSERT INTO \"articles_x_tags\" VALUES(105,38,7);" "INSERT INTO \"articles_x_tags\" VALUES(106,38,5);"
    "INSERT INTO \"articles_x_tags\" VALUES(107,38,24);" "INSERT INTO \"articles_x_tags\" VALUES(108,38,18);"
    "INSERT INTO \"articles_x_tags\" VALUES(109,39,27);" "INSERT INTO \"articles_x_tags\" VALUES(110,40,25);"
    "INSERT INTO \"articles_x_tags\" VALUES(111,40,7);" "INSERT INTO \"articles_x_tags\" VALUES(112,40,11);"
    "INSERT INTO \"articles_x_tags\" VALUES(113,40,17);" "INSERT INTO \"articles_x_tags\" VALUES(114,41,7);"
    "INSERT INTO \"articles_x_tags\" VALUES(115,41,11);" "INSERT INTO \"articles_x_tags\" VALUES(116,41,18);"
    "INSERT INTO \"articles_x_tags\" VALUES(117,41,17);" "INSERT INTO \"articles_x_tags\" VALUES(118,42,16);"
    "INSERT INTO \"articles_x_tags\" VALUES(119,42,7);" "INSERT INTO \"articles_x_tags\" VALUES(120,42,22);"
    "INSERT INTO \"articles_x_tags\" VALUES(121,42,15);" "INSERT INTO \"articles_x_tags\" VALUES(122,42,10);"
    "INSERT INTO \"articles_x_tags\" VALUES(123,42,8);" "INSERT INTO \"articles_x_tags\" VALUES(124,43,27);"
    "INSERT INTO \"articles_x_tags\" VALUES(125,43,25);" "INSERT INTO \"articles_x_tags\" VALUES(126,43,26);"
    "INSERT INTO \"articles_x_tags\" VALUES(127,43,17);" "INSERT INTO \"articles_x_tags\" VALUES(128,44,16);"
    "INSERT INTO \"articles_x_tags\" VALUES(129,44,20);" "INSERT INTO \"articles_x_tags\" VALUES(130,44,14);"
    "INSERT INTO \"articles_x_tags\" VALUES(131,44,27);" "INSERT INTO \"articles_x_tags\" VALUES(132,44,9);"
    "INSERT INTO \"articles_x_tags\" VALUES(133,44,11);" "INSERT INTO \"articles_x_tags\" VALUES(134,45,27);"
    "INSERT INTO \"articles_x_tags\" VALUES(135,45,24);" "INSERT INTO \"articles_x_tags\" VALUES(136,45,23);"
    "INSERT INTO \"articles_x_tags\" VALUES(137,46,27);" "INSERT INTO \"articles_x_tags\" VALUES(138,46,24);"
    "INSERT INTO \"articles_x_tags\" VALUES(139,46,23);" "INSERT INTO \"articles_x_tags\" VALUES(140,47,23);"
    "INSERT INTO \"articles_x_tags\" VALUES(141,47,17);" "INSERT INTO \"articles_x_tags\" VALUES(142,48,17);"
    "INSERT INTO \"articles_x_tags\" VALUES(143,48,13);" "INSERT INTO \"articles_x_tags\" VALUES(144,48,8);"
    "INSERT INTO \"articles_x_tags\" VALUES(145,48,24);" "INSERT INTO \"articles_x_tags\" VALUES(146,48,9);"
    "INSERT INTO \"articles_x_tags\" VALUES(147,49,16);" "INSERT INTO \"articles_x_tags\" VALUES(148,49,3);"
    "INSERT INTO \"articles_x_tags\" VALUES(149,49,7);" "INSERT INTO \"articles_x_tags\" VALUES(150,49,22);"
    "INSERT INTO \"articles_x_tags\" VALUES(151,49,17);" "INSERT INTO \"articles_x_tags\" VALUES(152,49,27);"
    "INSERT INTO \"articles_x_tags\" VALUES(153,50,21);" "INSERT INTO \"articles_x_tags\" VALUES(154,50,19);"
    "INSERT INTO \"articles_x_tags\" VALUES(155,50,10);" "INSERT INTO \"articles_x_tags\" VALUES(156,50,2);"
    "INSERT INTO \"articles_x_tags\" VALUES(157,51,27);" "INSERT INTO \"articles_x_tags\" VALUES(158,51,25);"
    "INSERT INTO \"articles_x_tags\" VALUES(159,51,7);" "INSERT INTO \"articles_x_tags\" VALUES(160,52,25);"
    "INSERT INTO \"articles_x_tags\" VALUES(161,52,24);" "INSERT INTO \"articles_x_tags\" VALUES(162,52,20);"
    "INSERT INTO \"articles_x_tags\" VALUES(163,52,26);" "INSERT INTO \"articles_x_tags\" VALUES(164,53,7);"
    "INSERT INTO \"articles_x_tags\" VALUES(165,53,10);" "INSERT INTO \"articles_x_tags\" VALUES(166,53,26);"
    "INSERT INTO \"articles_x_tags\" VALUES(167,53,8);" "INSERT INTO \"articles_x_tags\" VALUES(168,53,9);"
    "INSERT INTO \"articles_x_tags\" VALUES(169,54,24);" "INSERT INTO \"articles_x_tags\" VALUES(170,54,23);"
    "INSERT INTO \"articles_x_tags\" VALUES(171,55,27);" "INSERT INTO \"articles_x_tags\" VALUES(172,55,25);"
    "INSERT INTO \"articles_x_tags\" VALUES(173,55,20);" "INSERT INTO \"articles_x_tags\" VALUES(174,56,25);"
    "INSERT INTO \"articles_x_tags\" VALUES(175,57,7);" "INSERT INTO \"articles_x_tags\" VALUES(176,57,22);"
    "INSERT INTO \"articles_x_tags\" VALUES(177,57,17);" "INSERT INTO \"articles_x_tags\" VALUES(178,57,13);"
    "INSERT INTO \"articles_x_tags\" VALUES(179,57,21);" "INSERT INTO \"articles_x_tags\" VALUES(180,57,18);"
    "INSERT INTO \"articles_x_tags\" VALUES(181,58,25);" "INSERT INTO \"articles_x_tags\" VALUES(182,58,9);"
    "INSERT INTO \"articles_x_tags\" VALUES(183,58,18);" "INSERT INTO \"articles_x_tags\" VALUES(184,59,19);"
    "INSERT INTO \"articles_x_tags\" VALUES(185,59,5);" "INSERT INTO \"articles_x_tags\" VALUES(186,59,17);"
    "INSERT INTO \"articles_x_tags\" VALUES(187,60,27);" "INSERT INTO \"articles_x_tags\" VALUES(188,60,20);"
    "INSERT INTO \"articles_x_tags\" VALUES(189,60,26);" "INSERT INTO \"articles_x_tags\" VALUES(190,61,10);"
    "INSERT INTO \"articles_x_tags\" VALUES(191,61,8);" "INSERT INTO \"articles_x_tags\" VALUES(192,61,4);"
    "INSERT INTO \"articles_x_tags\" VALUES(193,61,27);" "INSERT INTO \"articles_x_tags\" VALUES(194,61,24);"
    "INSERT INTO \"articles_x_tags\" VALUES(195,61,23);" "INSERT INTO \"articles_x_tags\" VALUES(196,62,1);"
    "INSERT INTO \"articles_x_tags\" VALUES(197,62,10);" "INSERT INTO \"articles_x_tags\" VALUES(198,62,23);"
    "INSERT INTO \"articles_x_tags\" VALUES(199,63,25);" "INSERT INTO \"articles_x_tags\" VALUES(200,63,24);"
    "INSERT INTO \"articles_x_tags\" VALUES(201,63,19);" "INSERT INTO \"articles_x_tags\" VALUES(202,63,26);"
    "INSERT INTO \"articles_x_tags\" VALUES(203,64,24);" "INSERT INTO \"articles_x_tags\" VALUES(204,64,10);"
    "INSERT INTO \"articles_x_tags\" VALUES(205,64,18);" "INSERT INTO \"articles_x_tags\" VALUES(206,65,21);"
    "INSERT INTO \"articles_x_tags\" VALUES(207,66,27);" "INSERT INTO \"articles_x_tags\" VALUES(208,66,25);"
    "INSERT INTO \"articles_x_tags\" VALUES(209,66,19);" "INSERT INTO \"articles_x_tags\" VALUES(210,66,11);"))

(define (populate db-file)
  (call-with-database
    db-file
    (lambda (conn)
      (with-transaction
        conn
        (lambda ()
          (for-each
            (lambda (q)
              (let ((st (sql/transient conn q)))
                (exec st)))
            queries))))))
