DROP DATABASE IF EXIST rpgChar;

CREATE DATABASE IF NOT EXIST rpgChar;
USE rpgChar;

DROP TABLE Star_Wars, DnD_3.5, Character_Templates;
CREATE TABLE Star_Wars VALUES
(
  ID INT(3) NOT NULL AUTO_INCREMENT,
	Character_Name VARCHAR(30),
  Species VARCHAR(15),
  Level INT(2),
  Class VARCHAR(15),
  Strength INT(2),
  Dexterity INT(2),
  Constitution INT(2),
  Intelligence INT(2),
  Wisdom INT(2),
  Charisma INT(2),
  Hitpoints INT(3),
  Ref INT(2),
  Fort INT(2),
  Will INT(2),
  Base_Attack_Bonus VARCHAR(3),
  Primary_Weapon VARCHAR(20),
  Secondary_Weapon VARCHAR(20),
  Primary_Attack_Bonus VARCHAR(3),
  Primary_Weapon_Damage VARCHAR(10)
);

CREATE TABLE DnD_3.5 VALUES
(

);

CREATE TABLE Character_Templates VALUES
(
	Name VARCHAR(25),
	Gender VARCHAR(8),
	Age INT(2),
	Race VARCHAR(15),
	Appearance BLOB
);