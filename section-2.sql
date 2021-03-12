-- Créer une base de données d'une entreprise
-- Montrer avec IF NOT EXISTS et sans
CREATE DATABASE IF NOT EXISTS company;

-- Selectionner la base de données à utiliser pour les prochaines requêtes
 -- apres avoir crée la base de données dire à quoi sert la commande USE
USE company;

-- Créer la table pour stocker les données des employés
    -- montrer la table crée
CREATE TABLE IF NOT EXISTS employees (
  id INT PRIMARY KEY AUTO_INCREMENT,
  last_name VARCHAR(255),
  first_name VARCHAR(255),
  birth_date YEAR,
  photo_url VARCHAR(255) 
);

-- Insérer des données dans une table
INSERT INTO employees (last_name, first_name, birth_date, photo_url)
VALUES 
    ('Davolio','Nancy',1998,'https://www.avatar-zone-employee12ED45.png'),
    ('Fuller','Andrew',1999,'https://www.avatar-zone-employee12ED35.png'),
    ('Leverling','Janet',2000,'https://www.avatar-zone-employee12ED65.png'),
    ('Suyama','Michael',1980,'https://www.avatar-zone-employee12ED75.png');

-- Recupérer toutes les données dans notre base de données
    -- Montrer que les Id sont autogénérés
SELECT * FROM employees;

-- Supprimer les données dans une table
    -- Tester et montrer que la table a été purgée 
    -- Remettre les données et repurger
TRUNCATE TABLE employees;

-- Supprimer une table
    -- montrer que la table a bien été supprimée
DROP TABLE employees;

-- Supprimer une base de données
    -- montrer que la BDD a bien été supprimée
DROP DATABASE employees;


----------------
-- EXERCICE 1 --
----------------
CREATE DATABASE IF NOT EXISTS mydatabase;

USE mydatabase;

CREATE TABLE IF NOT EXISTS people (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50),
  email VARCHAR(50),
  birth_date YEAR
);

INSERT INTO people (last_name, first_name, birth_date, photo_url)
VALUES 
    ('Graig','graig@mmail.com',1981),
    ('Annabelle','annabelle@mmail.com',1982),
    ('Rose','rose@mmail.com',1983),
    ('Mathilde','mathilde@mmail.com',1984),
    ('Henry','henry@mmail.com',1985),
    ('Jack','jack@mmail.com',1986),
    ('Naruto','naruto@mmail.com',1987),
    ('Peter','peter@mmail.com',1988),
    ('Mathieu','mathieu@mmail.com',1988),
    ('James','james@mmail.com',1990);

SELECT * FROM people;

UPDATE people SET name='Patrick' WHERE id=10;

SELECT * FROM people;

----------------
-- EXERCICE 2 --
----------------
SELECT * , (2021 - birth_date) AS age
FROM people;