USE bd_projet_s4;

-- ======================
-- Clubs
-- ======================
INSERT INTO Clubs VALUES
(1,'Paris Judo Club','France','Jean Martin'),
(2,'Tokyo Elite Dojo','Japon','Hiroshi Tanaka'),
(3,'Rio Fight Academy','Brésil','Carlos Silva'),
(4,'New York Judo Center','USA','Michael Brown'),
(5,'Berlin Combat Club','Allemagne','Hans Müller'),
(6,'Madrid Combat Team','Espagne','Luis Garcia'),
(7,'Seoul Judo Academy','Corée','Kim Minsoo'),
(8,'Sydney Fight Club','Australie','David Wilson');

-- ======================
-- Saisons
-- ======================
INSERT INTO Saisons VALUES
(1,'2022'),
(2,'2023'),
(3,'2024'),
(4,'2025');

-- ======================
-- Categories
-- ======================
INSERT INTO Categorie VALUES
(1,18,60,'Bleue'),
(2,21,73,'Marron'),
(3,25,81,'Noire'),
(4,30,90,'Noire'),
(5,35,100,'Noire');

-- ======================
-- Athletes
-- ======================
INSERT INTO Athletes VALUES
(1,'Dupont','Lucas','2000-05-12','M','France',72,'Marron','2021-06-10',1001,1),
(2,'Bernard','Thomas','1999-02-11','M','France',60,'Bleue','2022-05-10',1002,1),
(3,'Sato','Kenji','1998-03-02','M','Japon',68,'Noire','2020-08-15',1003,2),
(4,'Tanaka','Ryu','1997-12-30','M','Japon',81,'Noire','2019-10-10',1004,2),
(5,'Silva','Pedro','1997-11-20','M','Brésil',80,'Noire','2019-05-20',1005,3),
(6,'Costa','Andre','1996-04-05','M','Brésil',88,'Noire','2018-07-07',1006,3),
(7,'Johnson','Mark','1999-07-10','M','USA',90,'Noire','2022-02-10',1007,4),
(8,'Brown','Alex','2001-01-14','M','USA',73,'Marron','2023-01-01',1008,4),
(9,'Schmidt','Lukas','2001-01-18','M','Allemagne',73,'Marron','2023-03-15',1009,5),
(10,'Meyer','Paul','1998-10-10','M','Allemagne',81,'Noire','2020-09-09',1010,5),
(11,'Garcia','Luis','1999-06-12','M','Espagne',70,'Marron','2022-08-01',1011,6),
(12,'Lopez','Diego','2000-02-22','M','Espagne',90,'Noire','2023-05-05',1012,6),
(13,'Kim','Jin','1998-09-09','M','Corée',81,'Noire','2019-11-11',1013,7),
(14,'Park','Min','1997-03-03','M','Corée',73,'Marron','2020-10-10',1014,7),
(15,'Wilson','Jack','1999-12-12','M','Australie',90,'Noire','2021-12-12',1015,8);

-- ======================
-- Competitions
-- ======================
INSERT INTO Competitions VALUES
(1,'Championnat Europe','2023-03-12','Paris','France',2),
(2,'Open International','2023-05-20','Tokyo','Japon',2),
(3,'World Cup','2024-02-15','Rio','Brésil',3),
(4,'Grand Prix','2024-06-10','Berlin','Allemagne',3),
(5,'Master Series','2025-03-18','Madrid','Espagne',4),
(6,'Asian Championship','2025-07-11','Seoul','Corée',4);

-- ======================
-- Combats
-- ======================
INSERT INTO Combats VALUES
(1,10,7,'Ippon',1,1,3,1),
(2,5,3,'Waza-ari',3,3,9,1),
(3,8,6,'Ippon',4,4,7,2),
(4,4,2,'Décision',3,3,2,2),
(5,7,5,'Ippon',5,5,8,3),
(6,6,4,'Waza-ari',7,7,13,3),
(7,3,1,'Décision',9,9,11,4),
(8,9,7,'Ippon',6,6,15,4),
(9,10,6,'Ippon',10,10,4,5),
(10,7,3,'Waza-ari',12,12,6,5),
(11,5,2,'Décision',13,13,14,6),
(12,8,4,'Ippon',15,15,7,6);

-- ======================
-- Classement
-- ======================
INSERT INTO Classement VALUES
(1,1,10,12,2,1,2),
(2,2,9,12,2,3,2),
(3,3,8,11,2,4,3),
(4,4,7,10,2,5,3),
(5,5,6,9,3,7,4),
(6,6,5,8,3,9,2),
(7,7,4,7,3,10,3),
(8,8,3,6,4,12,4),
(9,9,3,5,4,13,3),
(10,10,2,4,4,15,4);

-- ======================
-- Inscription
-- ======================
INSERT INTO Inscription VALUES
(1,1,2),
(3,1,2),
(9,1,2),
(4,2,3),
(3,2,2),
(7,2,4),
(5,3,3),
(6,3,4),
(13,3,3),
(9,4,2),
(11,4,2),
(15,4,4),
(10,5,3),
(12,5,4),
(13,6,3),
(14,6,2),
(15,6,4);