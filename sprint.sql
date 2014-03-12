DROP DATABASE rpgChar;

CREATE DATABASE IF NOT EXISTS rpgChar;
USE rpgChar;

DROP TABLE Star_Wars, DnD_3.5, Character_Templates;
CREATE TABLE Star_Wars
(
  ID INT(3) AUTO_INCREMENT,
  Name VARCHAR(30),
  Species VARCHAR(15),
  Level INT(2),
  Class VARCHAR(15),
  Str INT(2),
  Dex INT(2),
  Con INT(2),
  Intl INT(2),
  Wis INT(2),
  Cha INT(2),
  HP INT(3),
  Ref INT(2),
  Fort INT(2),
  Will INT(2),
  BAB VARCHAR(3),
  Pri_Weapon VARCHAR(20),
  Sec_Weapon VARCHAR(20),
  Pri_Attack_Bonus VARCHAR(3),
  Pri_Weapon_Dmg VARCHAR(10),
  PRIMARY KEY (ID)
);

CREATE TABLE DnD_3.5
(

);

CREATE TABLE Character_Templates
(
	Name VARCHAR(25),
	Gender VARCHAR(8),
	Age INT(2),
	Race VARCHAR(15),
	Appearance BLOB
);

INSERT INTO Star_Wars VALUES (NULL, 'Osmando', 'Human', 6, 'Soldier', 14, 16, 12, 17, 8, 14, 70, 20, 20, 16, '+6', 'Heavy Blaster Pistol', 'Vibroblade', '+9', '3d8+3');
INSERT INTO Star_Wars VALUES (NULL, 'Artemis', 'Human', 6, 'Jedi', 14, 12, 13, 10, 16, 16, 72, 18, 20, 18, '+6', 'Sith Lightsaber', 'Blaster Pistol', '+8', '2d8+7');
INSERT INTO Star_Wars VALUES (NULL, 'Devron Lancer', 'Human', 6, 'Scout', 11, 18, 14, 12, 14, 9, 61, 18, 20, 18, '+4', 'Heavy Blaster Rifle', 'Blaster Pistol', '+9', '3d12+3');
INSERT INTO Star_Wars VALUES (NULL, 'Escalus', 'Zabrak', 6, 'Scoundrel', 10, 16, 13, 16, 11, 12, 43, 23, 19, 19, '+4', 'Hold-Out Blaster', 'Vibrodagger', '+7', '3d4+3');
INSERT INTO Star_Wars VALUES (NULL, 'Zander Barcalow', 'Human', 7, 'Noble', 11, 15, 13, 14, 18, 10, 46, 19, 17, 22, '+4', 'Grenade Launcher', 'Blaster Pistol', '+6', '4d6+3');
INSERT INTO Star_Wars VALUES (NULL, 'Stormtrooper', 'Human', 1, 'Soldier', 11, 14, 12, 8, 10, 9, 31, 19, 16, 11, '+1', 'Blaster Rifle', 'Blaster Pistol', '+3', '3d8');
INSERT INTO Star_Wars VALUES (NULL, 'Clone Trooper', 'Human', 2, 'Soldier', 12, 14, 15, 10, 11, 9, 39, 19, 18, 12, '+2', 'Blaster Rifle', 'Blaster Pistol', '+4', '3d8+1');
INSERT INTO Star_Wars VALUES (NULL, 'Curuni', 'Twilek', 4, 'Scoundrel', 10, 18, 11, 15, 11, 14, 36, 21, 16, 15, '+3', 'Blaster Pistol', 'Blaster Pistol', '+7', '3d6+2');
INSERT INTO Star_Wars VALUES (NULL, 'Neeldo', 'Rodian', 3, 'Scout', 13, 15, 12, 8, 14, 10, 38, 19, 17, 15, '+2', 'Blaster Rifle', 'Blaster Pistol', '+2', '3d8+1');
INSERT INTO Star_Wars VALUES (NULL, 'Llleland', 'Wookie', 6, 'Scoundrel', 20, 14, 20, 17, 8, 6, 67, 19, 22, 16, '+4', 'Vibroaxe', 'Bowcaster', '+9', '2d10+12');
