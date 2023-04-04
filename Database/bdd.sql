-- Création de la base de données
CREATE DATABASE IF NOT EXISTS mydb;

USE mydb;


CREATE TABLE IF NOT EXISTS Client (
    id INT PRIMARY KEY,
    Nom VARCHAR(255),
    Prenom VARCHAR(255),
    DateNaissance DATE,
    SuiviMedecin BOOLEAN,
    SuiviPsychologue BOOLEAN,
    Pacemaker BOOLEAN,
    PossedeTatouage BOOLEAN,
    PossedePiercings BOOLEAN,
    EffectueOperations BOOLEAN,
    SuitTraitement BOOLEAN
);

CREATE TABLE IF NOT EXISTS Soin (
    id INT PRIMARY KEY,
    Soin VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS Demande (
    id INT PRIMARY KEY,
    idClient INT,
    idSoin INT,
    SoinFini BOOLEAN,
    FOREIGN KEY (idClient) REFERENCES Client(id),
    FOREIGN KEY (idSoin) REFERENCES Soin(id)
);

-- Insertions de données dans les tables

-- Table Client
INSERT INTO Client (id, Nom, Prenom, DateNaissance, SuiviMedecin, SuiviPsychologue, Pacemaker, PossedeTatouage, PossedePiercings, EffectueOperations, SuitTraitement)
VALUES
    (1, 'Durand', 'Jean', '1980-01-01', TRUE, FALSE, FALSE, TRUE, FALSE, TRUE, FALSE), -- Exemple de client avec des tatouages et des opérations
    (2, 'Dupont', 'Marie', '1990-02-02', FALSE, TRUE, TRUE, FALSE, TRUE, FALSE, TRUE), -- Exemple de client avec un pacemaker et un traitement en cours
    (3, 'Martin', 'Pierre', '1985-03-03', TRUE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE); -- Exemple de client sans problèmes de santé particuliers

-- Table Soin
INSERT INTO Soin (id, Soin)
VALUES
    (1, 'Massage'),
    (2, 'Méditation'),
    (3, 'Acupuncture');

-- Table Demande
INSERT INTO Demande (id, idClient, idSoin, SoinFini)
VALUES
    (1, 1, 1, FALSE), -- Exemple de demande de massage pour le client Durand
    (2, 2, 2, FALSE), -- Exemple de demande de méditation pour le client Dupont
    (3, 3, 3, TRUE); -- Exemple de demande d'acupuncture pour le client Martin