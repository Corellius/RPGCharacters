DROP DATABASE rpgChar;

CREATE DATABASE IF NOT EXISTS rpgChar;
GRANT ALL PRIVILEGES ON rpgChar.* to 'user'@'localhost' 
identified by 'password';
USE rpgChar;

DROP TABLE Star_Wars, Force_Powers, Species, Soldier, Jedi, Scout, Scoundrel, Noble;
CREATE TABLE Star_Wars
(
  ID INT(3) AUTO_INCREMENT,
  Name VARCHAR(30)
  PRIMARY KEY (ID)
);

CREATE TABLE Appearance
(
  ID INT(3) AUTO_INCREMENT,
  Species VARCHAR(20),
  Gender VARCHAR(13),
  PRIMARY KEY (ID),
  FOREIGN KEY (ID) REFERENCES Star_Wars(ID)
);

CREATE TABLE Ability_Scores
(
  ID INT(3) AUTO_INCREMENT,
  Strength INT(2),
  Dexterity INT(2),
  Constitution INT(2),
  Intelligence INT(2),
  Wisdom INT(2),
  Charisma INT(2),
  PRIMARY KEY(ID),
  FOREIGN KEY(ID) REFERENCES Star_Wars(ID)
);

CREATE TABLE Soldier
(
  ID INT(3) AUTO_INCREMENT,
  Level INT(2),
  PRIMARY KEY (ID),
  FOREIGN KEY (ID) REFERENCES Star_Wars(ID);
);

CREATE TABLE Jedi
(
  ID INT(3) AUTO_INCREMENT,
  Level INT(2),
  PRIMARY KEY (ID),
  FOREIGN KEY (ID) REFERENCES Star_Wars(ID);
);

CREATE TABLE Scout
(
  ID INT(3) AUTO_INCREMENT,
  Level INT(2),
  PRIMARY KEY (ID),
  FOREIGN KEY (ID) REFERENCES Star_Wars(ID);
);

CREATE TABLE Scoundrel
(
  ID INT(3) AUTO_INCREMENT,
  Level INT(2),
  PRIMARY KEY (ID),
  FOREIGN KEY (ID) REFERENCES Star_Wars(ID);
);

CREATE TABLE Noble
(
  ID INT(3) AUTO_INCREMENT,
  Level INT(2),
  PRIMARY KEY (ID),
  FOREIGN KEY (ID) REFERENCES Star_Wars(ID);
);

CREATE TABLE Force_Powers
(
  ID INT(3) AUTO_INCREMENT,
	Name VARCHAR(25),
	Action VARCHAR(10),
	Target VARCHAR(40),
  Alignment VARCHAR(10),
	Description BLOB,
  Example_Link VARCHAR(50),
  PRIMARY KEY (ID)
);

INSERT INTO Star_Wars VALUES (1, 'Artemis');
INSERT INTO Star_Wars VALUES (2, 'Zander Barcalow');
INSERT INTO Star_Wars VALUES (3, 'Escalus');
INSERT INTO Star_Wars VALUES (4, 'Devron Lancer');
INSERT INTO Star_Wars VALUES (5, 'Osmando');
INSERT INTO Star_Wars VALUES (6, 'Stormtrooper');
INSERT INTO Star_Wars VALUES (7, 'Clone Trooper');
INSERT INTO Star_Wars VALUES (8, 'Curuni');
INSERT INTO Star_Wars VALUES (9, 'Neeldo');
INSERT INTO Star_Wars VALUES (10, 'Llleland');
INSERT INTO Star_Wars VALUES (11, 'Mandalorian Hunter');
INSERT INTO Star_Wars VALUES (12, 'Sanya');

INSERT INTO Appearance VALUES (1, 'Human', 'Male');
INSERT INTO Appearance VALUES (2, 'Human', 'Male');
INSERT INTO Appearance VALUES (3, 'Zabrak', 'Male');
INSERT INTO Appearance VALUES (4, 'Human', 'Male');
INSERT INTO Appearance VALUES (5, 'Human', 'Male');
INSERT INTO Appearance VALUES (6, 'Human', 'Male');
INSERT INTO Appearance VALUES (7, 'Human', 'Male');
INSERT INTO Appearance VALUES (8, 'Twilek', 'Female');
INSERT INTO Appearance VALUES (9, 'Rodian', 'Male');
INSERT INTO Appearance VALUES (10, 'Wookiee', 'Male');
INSERT INTO Appearance VALUES (11, 'Human', 'Male');
INSERT INTO Appearance VALUES (12, 'Mirialan', 'Female');

INSERT INTO Ability_Scores VALUES (1, 14, 12, 13, 10, 16, 16);
INSERT INTO Ability_Scores VALUES (2, 11, 15, 13, 14, 18, 10);
INSERT INTO Ability_Scores VALUES (3, 10, 16, 13, 16, 11, 12);
INSERT INTO Ability_Scores VALUES (4, 11, 18, 14, 12, 14, 9);
INSERT INTO Ability_Scores VALUES (5, 14, 16, 12, 17, 8, 14);
INSERT INTO Ability_Scores VALUES (6, 11, 14 ,12, 8, 10, 9);
INSERT INTO Ability_Scores VALUES (7, 12, 14, 15, 10, 11, 9);
INSERT INTO Ability_Scores VALUES (8, 10, 18, 11, 15, 11, 14);
INSERT INTO Ability_Scores VALUES (9, 13, 15, 12, 8, 14, 10);
INSERT INTO Ability_Scores VALUES (10, 20, 14, 20, 17, 8, 6);
INSERT INTO Ability_Scores VALUES (11, 13, 12, 11, 8, 10, 9);
INSERT INTO Ability_Scores VALUES (12, 11, 16, 9, 18, 14, 16);

INSERT INTO Soldier VALUES (1, 0);
INSERT INTO Soldier VALUES (2, 0);
INSERT INTO Soldier VALUES (3, 0);
INSERT INTO Soldier VALUES (4, 3);
INSERT INTO Soldier VALUES (5, 6);
INSERT INTO Soldier VALUES (6, 1);
INSERT INTO Soldier VALUES (7, 2);
INSERT INTO Soldier VALUES (8, 0);
INSERT INTO Soldier VALUES (9, 0);
INSERT INTO Soldier VALUES (10, 0);
INSERT INTO Soldier VALUES (11, 1);
INSERT INTO Soldier VALUES (12, 0);

INSERT INTO Jedi VALUES (1, 6);
INSERT INTO Jedi VALUES (2, 0);
INSERT INTO Jedi VALUES (3, 0);
INSERT INTO Jedi VALUES (4, 0);
INSERT INTO Jedi VALUES (5, 0);
INSERT INTO Jedi VALUES (6, 0);
INSERT INTO Jedi VALUES (7, 0);
INSERT INTO Jedi VALUES (8, 0);
INSERT INTO Jedi VALUES (9, 0);
INSERT INTO Jedi VALUES (10, 0);
INSERT INTO Jedi VALUES (11, 0);
INSERT INTO Jedi VALUES (12, 1);

INSERT INTO Scout VALUES (1, 0);
INSERT INTO Scout VALUES (2, 0);
INSERT INTO Scout VALUES (3, 0);
INSERT INTO Scout VALUES (4, 3);
INSERT INTO Scout VALUES (5, 0);
INSERT INTO Scout VALUES (6, 0);
INSERT INTO Scout VALUES (7, 0);
INSERT INTO Scout VALUES (8, 0);
INSERT INTO Scout VALUES (9, 3);
INSERT INTO Scout VALUES (10, 3);
INSERT INTO Scout VALUES (11, 0);
INSERT INTO Scout VALUES (12, 1);

INSERT INTO Scoundrel VALUES (1, 0);
INSERT INTO Scoundrel VALUES (2, 0);
INSERT INTO Scoundrel VALUES (3, 6);
INSERT INTO Scoundrel VALUES (4, 0);
INSERT INTO Scoundrel VALUES (5, 0);
INSERT INTO Scoundrel VALUES (6, 0);
INSERT INTO Scoundrel VALUES (7, 0);
INSERT INTO Scoundrel VALUES (8, 4);
INSERT INTO Scoundrel VALUES (9, 0);
INSERT INTO Scoundrel VALUES (10, 3);
INSERT INTO Scoundrel VALUES (11, 1);
INSERT INTO Scoundrel VALUES (12, 5);

INSERT INTO Noble VALUES (1, 0);
INSERT INTO Noble VALUES (2, 6);
INSERT INTO Noble VALUES (3, 0);
INSERT INTO Noble VALUES (4, 0);
INSERT INTO Noble VALUES (5, 0);
INSERT INTO Noble VALUES (6, 0);
INSERT INTO Noble VALUES (7, 0);
INSERT INTO Noble VALUES (8, 0);
INSERT INTO Noble VALUES (9, 0);
INSERT INTO Noble VALUES (10, 0);
INSERT INTO Noble VALUES (11, 0);
INSERT INTO Noble VALUES (12, 0);

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


