BEGIN TRANSACTION;
INSERT INTO FOCUSZONES VALUES(1,907,947,1402,1442,3,'The Meadow','');
INSERT INTO FOCUSZONES VALUES(2,417,457,669,709,3,'West Lake','');
INSERT INTO FOCUSZONES VALUES(3,1394,1434,558,598,3,'Soulfall East Beach','');
INSERT INTO FOCUSZONES VALUES(4,1294,1374,584,664,3,'Soulfall Mountain','');
INSERT INTO FOCUSZONES VALUES(5,1162,1202,1026,1066,3,'Central Lakes','');
INSERT INTO FOCUSZONES VALUES(6,1124,1164,286,326,3,'Northern Shores','');
INSERT INTO KINGDOMS VALUES(0,'no known kingdom','',0,'','none','Unknown','Unknown',0,0);
INSERT INTO KINGDOMS VALUES(1,'Jenn-Kellon','',1,'jenn.','Jenn-Kellon','Noble','Protectors',1,0);
INSERT INTO KINGDOMS VALUES(2,'Mol Rehan','',2,'molr.','Mol Rehan','Fire','Gold',1,0);
INSERT INTO KINGDOMS VALUES(3,'Horde of the Summoned','',3,'hots.','HOTS','Hate','Vengeance',1,0);
INSERT INTO KINGDOMS VALUES(4,'Freedom Isles','',4,'free.','Freedom','Peaceful','Friendly',1,0);
COMMIT;
