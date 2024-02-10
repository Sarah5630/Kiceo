CREATE DATABASE IF NOT EXISTS kiceo;

USE kiceo;

-- Reset le schéma
DROP TABLE IF EXISTS Horaire;
DROP TABLE IF EXISTS stationsDesservies;
DROP TABLE IF EXISTS joursCirculation;
DROP TABLE IF EXISTS Ligne;
DROP TABLE IF EXISTS Station;
DROP TABLE IF EXISTS Jour;

CREATE TABLE IF NOT EXISTS Station(
   id_station INT AUTO_INCREMENT,
   nom_station VARCHAR(32) ,
   PRIMARY KEY(id_station)
);

CREATE TABLE IF NOT EXISTS Ligne(
   id_ligne INT AUTO_INCREMENT,
   numero_ligne INT,
   PRIMARY KEY(id_ligne)
);

CREATE TABLE IF NOT EXISTS Jour(
   id_jour INT AUTO_INCREMENT,
   nom_jour VARCHAR(32) ,
   PRIMARY KEY(id_jour)
);

CREATE TABLE IF NOT EXISTS Horaire(
   id_horaire INT AUTO_INCREMENT,
   horaire_passage TIME,
   id_ligne INT NOT NULL,
   id_station INT NOT NULL,
   id_jour INT NOT NULL,
   PRIMARY KEY(id_horaire),
   FOREIGN KEY(id_ligne) REFERENCES Ligne(id_ligne),
   FOREIGN KEY(id_station) REFERENCES Station(id_station),
   FOREIGN KEY(id_jour) REFERENCES Jour(id_jour)
);

CREATE TABLE IF NOT EXISTS stationsDesservies(
   id_station INT,
   id_ligne INT,
   PRIMARY KEY(id_station, id_ligne),
   FOREIGN KEY(id_station) REFERENCES Station(id_station),
   FOREIGN KEY(id_ligne) REFERENCES Ligne(id_ligne)
);

CREATE TABLE IF NOT EXISTS joursCirculation(
   id_ligne INT,
   id_jour INT,
   PRIMARY KEY(id_ligne, id_jour),
   FOREIGN KEY(id_ligne) REFERENCES Ligne(id_ligne),
   FOREIGN KEY(id_jour) REFERENCES Jour(id_jour)
);

-- Afin de modifier le schéma de base de données pour supprimer temporairement l'arrêt Petit Tohannic
-- Il faut d'abord supprimer les horaires associés à la station "Petit Tohannic" car les stations sont
-- une clé étrangère de la table Horaire : 

DELETE FROM Horaire
WHERE id_station IN (SELECT id_station FROM Station WHERE nom_station = 'Petit Tohannic');


-- Ensuite il faut mettre à jour la table stationsDesservies
-- pour remplacer "Petit Tohannic" par "Delestraint" pour chaque ligne de la ligne 2
UPDATE stationsDesservies
SET id_station = (SELECT id_station FROM Station WHERE nom_station = 'Delestraint')
WHERE id_station = (SELECT id_station FROM Station WHERE nom_station = 'Petit Tohannic');
