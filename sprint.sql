DROP DATABASE rpgChar;

CREATE DATABASE IF NOT EXISTS rpgChar;
GRANT ALL PRIVILEGES ON rpgChar.* to 'user'@'localhost' 
identified by 'password';
USE rpgChar;

DROP TABLE Star_Wars, DnD_3.5, Force_Powers;
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
INSERT INTO Star_Wars VALUES (NULL, 'Mandalorian Hunter', 1, 'Soldier', 13, 12, 11, 8, 10, 9, 30, 17, 15, 11, '+1', 'Flamethrower', 'Blaster Pistol', '+2', '3d6');

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


