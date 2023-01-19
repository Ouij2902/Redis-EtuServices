-- Création de la table
CREATE TABLE utilisateur (
    id_utilisateur int NOT NULL AUTO_INCREMENT,
    nom varchar(255), 
    prenom varchar(255), 
    email varchar(255), 
    motdepasse varchar(255),
    PRIMARY KEY (id_utilisateur)
    );

-- Remplissage de la table
INSERT INTO utilisateur (nom, prenom, email, motdepasse)
VALUES ("Boumahrez", "Ouijdane", "Admin", "adminmdp");

INSERT INTO utilisateur (nom, prenom, email, motdepasse)
VALUES ("Bourabi", "Kaoutar", "bourabi.kao@gmail.com", "BourabiKao");

INSERT INTO utilisateur (nom, prenom, email, motdepasse)
VALUES ("Takahashi", "Vincent", "takahashi.vin@gmail.com", "TakahashiVin");

INSERT INTO utilisateur (nom, prenom, email, motdepasse)
VALUES ("Faska", "Rachid", "faska.rac@gmail.com", "FaskaRac");

INSERT INTO utilisateur (nom, prenom, email, motdepasse)
VALUES ("Descomps", "Alexandre", "descomps.ale@gmail.com", "DescompsAle");

INSERT INTO utilisateur (nom, prenom, email, motdepasse)
VALUES ("Oukziz", "Salma", "oukziz.sal@gmail.com", "OukzizSal");

INSERT INTO utilisateur (nom, prenom, email, motdepasse)
VALUES ("Pruvost", "Jordan", "pruvost.jor@gmail.com", "PruvostJor");

INSERT INTO utilisateur (nom, prenom, email, motdepasse)
VALUES ("Ndri", "Richard", "ndri.ric@gmail.com", "NdriRic");

INSERT INTO utilisateur (nom, prenom, email, motdepasse)
VALUES ("Bouchard", "Gaetan", "bouhard.gae@gmail.com", "BouchardGae");

INSERT INTO utilisateur (nom, prenom, email, motdepasse)
VALUES ("Prichisi", "Maria", "prichisi.mar@gmail.com", "PrichisiMar");

INSERT INTO utilisateur(nom, prenom, email, motdepasse)
VALUES ("Nicolas", "Thomas", "Nicolas.Tho@gmail.com", "NicolasTho")
