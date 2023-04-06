CREATE TABLE livre (
  titre varchar(100),
  isbn varchar(50),
  pages integer,
  prix money,
  description varchar(256),
  editeur varchar(100)
);

CREATE TABLE chapitre (
  id integer,
  numero integer,
  titre varchar(50),
  contenu varchar(1024)
);

CREATE TABLE auteur (
  nom varchar(50),
  bio varchar(100),
  email varchar(20)
);

INSERT INTO livre (titre, isbn, pages, prix, description, editeur)
VALUES ('L''Economie bleue 3.0','979-1032906125',480, 24.0, 'il est possible de révolutionner notre consommation et nos moyens de production tout en protégeant la nature.','L''OBSERVATOIRE');

INSERT INTO livre (titre, isbn, pages, prix, description, editeur)
VALUES ('Pensées pour moi-même','979-1032906125',222, 3.90, 'Réflexions stoïciennes rédigées par l''empereur Marc Aurèle','FLAMMARION');

DROP TABLE livre;

CREATE TABLE livre (
  titre varchar(100),
  isbn varchar(50) PRIMARY KEY,
  pages integer,
  prix money,
  description varchar(256),
  editeur varchar(100)
);

DROP TABLE chapitre;

CREATE TABLE chapitre (
  id integer PRIMARY KEY,
  numero integer,
  titre varchar(50),
  contenu varchar(1024)
);

DROP TABLE auteur;

CREATE TABLE auteur (
  nom varchar(50),
  bio varchar(100),
  email varchar(20) PRIMARY KEY
);

SELECT
  constraint_name, table_name, column_name
FROM
  information_schema.key_column_usage
WHERE
  table_name = 'livre';

  SELECT
  constraint_name, table_name, column_name
FROM
  information_schema.key_column_usage
WHERE
  table_name = 'auteur';

create table livres_populaires (
    titre_du_livre varchar(100),
    nom_auteur varchar(50),
    nombre_vendu integer,
    nombre_prevus integer,
    PRIMARY KEY (titre_du_livre, nom_auteur)
);

SELECT
  constraint_name, table_name, column_name
FROM
  information_schema.key_column_usage
WHERE
  table_name = 'livres_populaires';