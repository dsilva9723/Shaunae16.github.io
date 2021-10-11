PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "passenger" (
	"id"	INTEGER NOT NULL,
	"First_Name"	TEXT NOT NULL,
	"Last_Name"	TEXT NOT NULL,
	"carrier"	TEXT NOT NULL,
	"flightid"	INTEGER NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
INSERT INTO passenger VALUES(1,'Kindel','Acrobat','WN',1);
INSERT INTO passenger VALUES(2,'Cindel','Reden','WN',1);
INSERT INTO passenger VALUES(3,'Chormi','Book','AA',2);
INSERT INTO passenger VALUES(4,'Edge','Sims','AA',2);
INSERT INTO passenger VALUES(5,'Dave','Brick','AA',3);
INSERT INTO passenger VALUES(6,'Mane','Rock','AA',3);
INSERT INTO passenger VALUES(7,'Snake','Zoomer','F9',4);
INSERT INTO passenger VALUES(8,'Raddle','Boomer','F9',4);
INSERT INTO passenger VALUES(9,'Milano','Gold','AA',5);
INSERT INTO passenger VALUES(10,'Milana','Silver','AA',5);
INSERT INTO passenger VALUES(11,'Pepper','Fush','UA',6);
INSERT INTO passenger VALUES(12,'Virginia','Fish','UA',6);
INSERT INTO passenger VALUES(13,'August','Washington','DL',7);
INSERT INTO passenger VALUES(14,'Hayley','Washington','DL',7);
INSERT INTO passenger VALUES(15,'Jake','Myers','DL',8);
INSERT INTO passenger VALUES(16,'Justin','Myers','DL',8);
INSERT INTO passenger VALUES(17,'Chris','Johnson','UA',9);
INSERT INTO passenger VALUES(18,'Brain','Berry','UA',9);
INSERT INTO passenger VALUES(19,'Stepahie','Goat','F9',10);
INSERT INTO passenger VALUES(20,'Jodie','Boat','F9',10);
INSERT INTO passenger VALUES(21,'Matt','Ferris','F9',10);
CREATE TABLE IF NOT EXISTS "flights" (
	"id"	INTEGER NOT NULL,
	"departure"	TEXT NOT NULL,
	"arrival"	TEXT NOT NULL,
	"duration"	INTEGER NOT NULL,
	"carrier"	TEXT NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
INSERT INTO flights VALUES(1,'MDW','FLL',160,'WN');
INSERT INTO flights VALUES(2,'BWI','ORD',145,'AA');
INSERT INTO flights VALUES(3,'BTR','ORD',200,'AA');
INSERT INTO flights VALUES(4,'ATL','FLL',45,'F9');
INSERT INTO flights VALUES(5,'ORD','BWI',145,'AA');
INSERT INTO flights VALUES(6,'CMH','JFK',100,'UA');
INSERT INTO flights VALUES(7,'JFK','LAX',373,'DL');
INSERT INTO flights VALUES(8,'BTR','CRW',215,'DL');
INSERT INTO flights VALUES(9,'CID','ORD',40,'UA');
INSERT INTO flights VALUES(10,'BBF','MIA',110,'F9');
CREATE TABLE IF NOT EXISTS "airports" (
	"faa"	TEXT NOT NULL,
	"name"	TEXT NOT NULL,
	"tzone"	TEXT NOT NULL,
	PRIMARY KEY("faa")
);
INSERT INTO airports VALUES('DFW','Dallas Fort Worth Intl','America/Chicago');
INSERT INTO airports VALUES('BQK','Brunswick Golden Isles','America/New_York');
INSERT INTO airports VALUES('EWR','Newark Liberty Intl','America/New_York');
INSERT INTO airports VALUES('FLL','Fort Lauderdale Hollywood Intl','America/New_York');
INSERT INTO airports VALUES('IAH','George Bush Intercontinental','America/Chicago');
INSERT INTO airports VALUES('JFK','John F Kennedy Intl','America/New_York');
INSERT INTO airports VALUES('LGA','La Guardia','America/New_York');
INSERT INTO airports VALUES('MIA','Miami Intl','America/New_York');
INSERT INTO airports VALUES('ORD','Chicago Ohare Intl','America/Chicago');
INSERT INTO airports VALUES('MDW','Chicago Midway Intl','America/Chicago');
INSERT INTO airports VALUES('BWI','Baltimore-Washington Intl','America/New_York');
INSERT INTO airports VALUES('BTR','Baton Rouge Metropolitan','America/Chicago');
INSERT INTO airports VALUES('CRW','Yeager Airport','America/New_York');
INSERT INTO airports VALUES('CID','Eastern Iowa Airport','America/Chicago');
INSERT INTO airports VALUES('BBF','Burlington Airport','America/New_York');
CREATE TABLE IF NOT EXISTS "airlines" (
	"carrier"	TEXT NOT NULL,
	"name"	TEXT NOT NULL,
	PRIMARY KEY("carrier")
);
INSERT INTO airlines VALUES('9E','Endeavor Air Inc.');
INSERT INTO airlines VALUES('AA','American Airlines Inc.');
INSERT INTO airlines VALUES('AS','Alaska Airlines Inc.');
INSERT INTO airlines VALUES('B6','JetBlue Airways');
INSERT INTO airlines VALUES('DL','Delta Air Lines Inc.');
INSERT INTO airlines VALUES('EV','ExpressJet Airlines Inc.');
INSERT INTO airlines VALUES('F9','Frontier Airlines Inc.');
INSERT INTO airlines VALUES('FL','AirTran Airways Corporation');
INSERT INTO airlines VALUES('HA','Hawaiian Airlines Inc.');
INSERT INTO airlines VALUES('MQ','Envoy Air');
INSERT INTO airlines VALUES('OO','SkyWest Airlines Inc.');
INSERT INTO airlines VALUES('UA','United Air Lines Inc.');
INSERT INTO airlines VALUES('US','US Airways Inc.');
INSERT INTO airlines VALUES('VX','Virgin America');
INSERT INTO airlines VALUES('WN','Southwest Airlines Co.');
INSERT INTO airlines VALUES('YV','Mesa Airlines Inc.');
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('passenger',21);
INSERT INTO sqlite_sequence VALUES('flights',10);
COMMIT;
