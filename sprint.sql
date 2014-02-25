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

INSERT INTO Star_Wars VALUES (NULL, 'Osmando', 'Human', 6, 'Soldier', 14, 16, 13, 17,10, 14, 70, 20, 20, 16, '+6', 'Heavy Blaster Pistol', 'Vibroblade', '+9', '3d8+3');