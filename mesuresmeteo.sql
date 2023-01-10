-- création des tables --
DROP TABLE IF EXISTS Centres;
CREATE TABLE Centres (                   
    id_centre INTEGER PRIMARY KEY NOT NULL,       
    nom_ville TEXT NOT NULL,                  
    latitude FLOAT,
    longitude FLOAT,
    altitude FLOAT
    );
DROP TABLE IF EXISTS Mesures;
CREATE TABLE Mesures (                   
    id_mesure INTEGER PRIMARY KEY NOT NULL,       
    id_centre INT REFERENCES Centres (id_centre),                  
    date_mesure DATE,
    temperature FLOAT,
    pression INT,
    pluviometrie INT
    );
-- insertion des enregistrements --
INSERT INTO Centres 
VALUES 
(213,'Amiens',49.894,2.293,60),
(138,'Grenoble',45.185,5.723,550),
(263,'Brest',48.388,-4.49,52),
(185,'Tignes',45.469,6.909,2594),
(459,'Nice',43.706,7.262,260),
(126,'Le Puy-en-Velay',45.042,3.888,744),
(317,'Gérardmer',48.073,6.879,855);
-- insertion des enregistrements --
INSERT INTO Mesures 
VALUES 
(1566,138,'2021-10-29',8.0,1015,3),
(1568,213,'2021-10-29',15.1,1011,0),
(2174,126,'2021-10-30',18.2,1023,0),
(2200,185,'2021-10-30',5.6,989,20),
(2232,459,'2021-10-31',25.0,1035,0),
(2514,213,'2021-10-31',17.4,1020,0),
(2563,126,'2021-11-01',10.1,1005,15),
(2592,459,'2021-11-01',23.3,1028,2),
(3425,317,'2021-11-02',9.0,1012,13),
(3430,138,'2021-11-02',7.5,996,16),
(3611,263,'2021-11-03',13.9,1005,8),
(3625,126,'2021-11-03',10.8,1008,8);