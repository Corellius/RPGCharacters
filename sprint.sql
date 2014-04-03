DROP DATABASE rpgChar;

CREATE DATABASE IF NOT EXISTS rpgChar;
GRANT ALL PRIVILEGES ON rpgChar.* to 'user'@'localhost' 
identified by 'password';
USE rpgChar;

DROP TABLE Star_Wars, Force_Powers, Appearance, Ability_Scores, Class_Levels;
CREATE TABLE Star_Wars
(
  ID INT(3) NOT NULL AUTO_INCREMENT,
  Name VARCHAR(30),
  PRIMARY KEY (ID),
  INDEX (Name)
);

CREATE TABLE Appearance
(
  ID INT(3) NOT NULL AUTO_INCREMENT,
  Species VARCHAR(20),
  Gender VARCHAR(13),
  PRIMARY KEY (ID),
  FOREIGN KEY (ID) REFERENCES Star_Wars(ID)
);

CREATE TABLE Ability_Scores
(
  ID INT(3) NOT NULL AUTO_INCREMENT,
  Str INT(2),
  Dex INT(2),
  Con INT(2),
  Intl INT(2),
  Wis INT(2),
  Cha INT(2),
  PRIMARY KEY(ID),
  FOREIGN KEY(ID) REFERENCES Star_Wars(ID)
);

CREATE TABLE Class_Levels
(
  ID INT(3) NOT NULL AUTO_INCREMENT,
  Soldier INT(2),
  Jedi INT(2),
  Scoundrel INT(2),
  Scout INT(2),
  Noble INT(2),
  PRIMARY KEY (ID),
  FOREIGN KEY (ID) REFERENCES Star_Wars(ID)
);

CREATE TABLE Force_Powers
(
  ID INT(3) NOT NULL AUTO_INCREMENT,
	Name VARCHAR(25),
	Action VARCHAR(10),
	Target VARCHAR(40),
  Alignment VARCHAR(10),
	Description BLOB,
  Example_Link VARCHAR(50),
  PRIMARY KEY (ID)
);

CREATE TABLE users
(
  userId int auto_increment,
  username varchar(12),
  password blob,
  primary key (userId)
);

INSERT INTO Star_Wars (Name) VALUES ('Artemis');
INSERT INTO Star_Wars (Name) VALUES ('Zander Barcalow');
INSERT INTO Star_Wars (Name) VALUES ('Escalus');
INSERT INTO Star_Wars (Name) VALUES ('Devron Lancer');
INSERT INTO Star_Wars (Name) VALUES ('Osmando');
INSERT INTO Star_Wars (Name) VALUES ('Stormtrooper');
INSERT INTO Star_Wars (Name) VALUES ('Clone Trooper');
INSERT INTO Star_Wars (Name) VALUES ('Curuni');
INSERT INTO Star_Wars (Name) VALUES ('Neeldo');
INSERT INTO Star_Wars (Name) VALUES ('Llleland');
INSERT INTO Star_Wars (Name) VALUES ('Mandalorian Hunter');
INSERT INTO Star_Wars (Name) VALUES ('Sanya');
INSERT INTO Star_Wars (Name) VALUES ('Corellius');
INSERT INTO Star_Wars (Name) VALUES ('Bombax');
INSERT INTO Star_Wars (Name) VALUES ('Kallia');
INSERT INTO Star_Wars (Name) VALUES ('Livia');
INSERT INTO Star_Wars (Name) VALUES ('Arca');

INSERT INTO Appearance (Species, Gender) VALUES ('Human', 'Male');
INSERT INTO Appearance (Species, Gender) VALUES ('Human', 'Male');
INSERT INTO Appearance (Species, Gender) VALUES ('Zabrak', 'Male');
INSERT INTO Appearance (Species, Gender) VALUES ('Human', 'Male');
INSERT INTO Appearance (Species, Gender) VALUES ('Human', 'Male');
INSERT INTO Appearance (Species, Gender) VALUES ('Human', 'Male');
INSERT INTO Appearance (Species, Gender) VALUES ('Human', 'Male');
INSERT INTO Appearance (Species, Gender) VALUES ('Twilek', 'Female');
INSERT INTO Appearance (Species, Gender) VALUES ('Rodian', 'Male');
INSERT INTO Appearance (Species, Gender) VALUES ('Wookiee', 'Male');
INSERT INTO Appearance (Species, Gender) VALUES ('Human', 'Male');
INSERT INTO Appearance (Species, Gender) VALUES ('Mirialan', 'Female');
INSERT INTO Appearance (Species, Gender) VALUES ('Human', 'Male');
INSERT INTO Appearance (Species, Gender) VALUES ('Human', 'Male');
INSERT INTO Appearance (Species, Gender) VALUES ('Mirialan', 'Female');
INSERT INTO Appearance (Species, Gender) VALUES ('Human', 'Female');
INSERT INTO Appearance (Species, Gender) VALUES ('Togruta', 'Female');

INSERT INTO Ability_Scores (Str, Dex, Con, Intl, Wis, Cha) VALUES (14, 12, 13, 10, 16, 16);
INSERT INTO Ability_Scores (Str, Dex, Con, Intl, Wis, Cha) VALUES (11, 15, 13, 14, 18, 10);
INSERT INTO Ability_Scores (Str, Dex, Con, Intl, Wis, Cha) VALUES (10, 16, 13, 16, 11, 12);
INSERT INTO Ability_Scores (Str, Dex, Con, Intl, Wis, Cha) VALUES (11, 18, 14, 12, 14, 9);
INSERT INTO Ability_Scores (Str, Dex, Con, Intl, Wis, Cha) VALUES (14, 16, 12, 17, 8, 14);
INSERT INTO Ability_Scores (Str, Dex, Con, Intl, Wis, Cha) VALUES (11, 14 ,12, 8, 10, 9);
INSERT INTO Ability_Scores (Str, Dex, Con, Intl, Wis, Cha) VALUES (12, 14, 15, 10, 11, 9);
INSERT INTO Ability_Scores (Str, Dex, Con, Intl, Wis, Cha) VALUES (10, 18, 11, 15, 11, 14);
INSERT INTO Ability_Scores (Str, Dex, Con, Intl, Wis, Cha) VALUES (13, 15, 12, 8, 14, 10);
INSERT INTO Ability_Scores (Str, Dex, Con, Intl, Wis, Cha) VALUES (20, 14, 20, 17, 8, 6);
INSERT INTO Ability_Scores (Str, Dex, Con, Intl, Wis, Cha) VALUES (13, 12, 11, 8, 10, 9);
INSERT INTO Ability_Scores (Str, Dex, Con, Intl, Wis, Cha) VALUES (11, 16, 9, 18, 14, 16);
INSERT INTO Ability_Scores (Str, Dex, Con, Intl, Wis, Cha) VALUES (15, 15, 17, 14, 8, 11);
INSERT INTO Ability_Scores (Str, Dex, Con, Intl, Wis, Cha) VALUES (18, 13, 19, 11, 15, 9);
INSERT INTO Ability_Scores (Str, Dex, Con, Intl, Wis, Cha) VALUES (13, 19, 12, 16, 10, 14);
INSERT INTO Ability_Scores (Str, Dex, Con, Intl, Wis, Cha) VALUES (14, 16, 13, 12, 10, 10);
INSERT INTO Ability_Scores (Str, Dex, Con, Intl, Wis, Cha) VALUES (9, 10, 11, 12, 19, 18);

INSERT INTO Class_Levels (Soldier, Jedi, Scoundrel, Scout, Noble) VALUES (0, 6, 0, 0, 0);
INSERT INTO Class_Levels (Soldier, Jedi, Scoundrel, Scout, Noble) VALUES (0, 0, 0, 0, 6);
INSERT INTO Class_Levels (Soldier, Jedi, Scoundrel, Scout, Noble) VALUES (0, 0, 6, 0, 0);
INSERT INTO Class_Levels (Soldier, Jedi, Scoundrel, Scout, Noble) VALUES (3, 0, 0, 3, 0);
INSERT INTO Class_Levels (Soldier, Jedi, Scoundrel, Scout, Noble) VALUES (6, 0, 0, 0, 0);
INSERT INTO Class_Levels (Soldier, Jedi, Scoundrel, Scout, Noble) VALUES (1, 0, 0, 0, 0);
INSERT INTO Class_Levels (Soldier, Jedi, Scoundrel, Scout, Noble) VALUES (2, 0, 0, 0, 0);
INSERT INTO Class_Levels (Soldier, Jedi, Scoundrel, Scout, Noble) VALUES (0, 0, 4, 0, 0);
INSERT INTO Class_Levels (Soldier, Jedi, Scoundrel, Scout, Noble) VALUES (0, 0, 0, 3, 0);
INSERT INTO Class_Levels (Soldier, Jedi, Scoundrel, Scout, Noble) VALUES (0, 0, 3, 3, 0);
INSERT INTO Class_Levels (Soldier, Jedi, Scoundrel, Scout, Noble) VALUES (1, 0, 0, 0, 0);
INSERT INTO Class_Levels (Soldier, Jedi, Scoundrel, Scout, Noble) VALUES (0, 1, 5, 1, 0);
INSERT INTO Class_Levels (Soldier, Jedi, Scoundrel, Scout, Noble) VALUES (3, 5, 2, 3, 0);
INSERT INTO Class_Levels (Soldier, Jedi, Scoundrel, Scout, Noble) VALUES (12, 0, 0, 3, 1);
INSERT INTO Class_Levels (Soldier, Jedi, Scoundrel, Scout, Noble) VALUES (0, 14, 0, 0, 0);
INSERT INTO Class_Levels (Soldier, Jedi, Scoundrel, Scout, Noble) VALUES (10, 0, 0, 0, 3);
INSERT INTO Class_Levels (Soldier, Jedi, Scoundrel, Scout, Noble) VALUES (0, 0, 0, 0, 10);

INSERT INTO Force_Powers VALUES (NULL, 'Battle Strike', 'Swift', 'Self', 'Neutral', 'Gain a bonus to Attack and Damage on your next attack.', 'http://youtu.be/C-DeI3ohVbY?t=5m31s');
INSERT INTO Force_Powers VALUES (NULL, 'Dark Rage', 'Swift', 'Self', 'Dark Side', 'Gain a bonus to Attack and Damage for the next few combat rounds.', 'http://youtu.be/_RFYoZ7H67A?t=3m9s');
INSERT INTO Force_Powers VALUES (NULL, 'Force Disarm', 'Standard', 'One Target within 6 Squares', 'Neutral', 'Deprive an opponent of his weapon and potentially gain it.', 'http://youtu.be/uHH6YVHGh90?t=11s');
INSERT INTO Force_Powers VALUES (NULL, 'Force Grip', 'Standard', 'One Target within Line of Sight', 'Dark Side', 'Crush or choke your enemies with the Force.', 'http://youtu.be/Zzs-OvfG8tE?t=1m39s');
INSERT INTO Force_Powers VALUES (NULL, 'Force Lightning', 'Standard', 'One Target within 6 Squares', 'Dark Side', 'Blast an enemy with deadly arcs of Force energy.', 'http://youtu.be/_RFYoZ7H67A?t=5m46s');
INSERT INTO Force_Powers VALUES (NULL, 'Force Slam', 'Standard', '6-Square Cone', 'Neutral', 'Push enemies away with a wave of Force energy.', 'http://youtu.be/2sromTpE4OE');
INSERT INTO Force_Powers VALUES (NULL, 'Force Thrust', 'Standard', 'One Target withing 6 Squares', 'Neutral', 'Send an enemy flying with a concentrated blast of Force energy.', 'http://youtu.be/S5SkNrWSk5M?t=1m46s');
INSERT INTO Force_Powers VALUES (NULL, 'Mind Trick', 'Standard', 'One sentient creature within 12 Squares', 'Light Side', 'Use the Force to fool others.', 'http://youtu.be/DIzAaY2Jm-s?t=3m21s');
INSERT INTO Force_Powers VALUES (NULL, 'Move Object', 'Standard', 'One creature or object within 6 Squares', 'Neutral', 'Telekinetically move and throw targets in one direction.', 'http://youtu.be/C-DeI3ohVbY?t=3m34s');
INSERT INTO Force_Powers VALUES (NULL, 'Negate Energy', 'Reaction', 'One energy-type attack directed at you', 'Neutral', 'Shield yourself from energy attacks such as blaster shots.', 'http://youtu.be/uHH6YVHGh90?t=6s');
INSERT INTO Force_Powers VALUES (NULL, 'Rebuke', 'Reaction', 'One Force power directed at you', 'Light Side', 'Harmlessly deflect or absorb one Force power used against you.', 'http://youtu.be/BvnwLLXHabg?t=3m23s');
INSERT INTO Force_Powers VALUES (NULL, 'Surge', 'Swift', 'Self', 'Neutral', 'Move and jump with great speed and power.', 'http://youtu.be/C-DeI3ohVbY?t=1m52s');

INSERT INTO users VALUES(1, 'harry', SHA2('rol12', 224)), (2, 'juliana', SHA2('zoraofwater', 224)), (3, 'welson', SHA2('1q2w3e4q', 224)), (4, 'sonia', SHA2('obeng34', 224));
