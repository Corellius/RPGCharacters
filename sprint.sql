DROP DATABASE IF EXIST rpgChar;

CREATE DATABASE IF NOT EXIST rpgChar;
USE rpgChar;

DROP TABLE Star_Wars, DnD_3.5, Character_Templates;
CREATE TABLE Star_Wars VALUES
(
	
);

CREATE TABLE DnD_3.5 VALUES
(

);

CREATE TABLE Character_Templates VALUES
(
	Name VARCHAR(25);
	Gender VARCHAR(8);
	Age INT(2);
	Race VARCHAR(15);
	Appearance BLOB;
);