-- 2

Voyons ce que contiennent ces tables en exécutant les commandes suivantes :

SELECT * 
FROM lieux ;
 
SELECT * 
FROM avis ;


-- 3

SELECT * 
FROM lieux
WHERE ratio_prix_note = '$' 
  OR ratio_prix_note = '$$'

-- 4

/*

La clé étrangère ici est id_lieux dans la table avis.

N'oubliez pas qu'une clé étrangère est un identifiant unique qui correspond à un identifiant dans une table externe.

*/

-- 5

SELECT * 
FROM lieux 
INNER JOIN avis 
   ON lieux.id = avis.id_lieux;

-- 6

SELECT lieux.nom, lieux.note_moyenne, avis.nom_utilisateur, avis.note, avis.date_avis, avis.commentaire
FROM lieux 
INNER JOIN _____ 
   ON _____ = _____;

-- 7

SELECT lieux.nom, lieux.note_moyenne, avis.nom_utilisateur, avis.note, avis.date_avis, avis.commentaire
FROM lieux 
LEFT JOIN avis 
   ON lieux.id = avis.id_lieux;


-- 8

SELECT lieux.id, lieux.name
FROM lieux 
LEFT JOIN avis 
   ON lieux.id = avis.id_lieux
WHERE avis.id_lieu IS ____;


-- 9
/**
Pour commencer, voici comment vous pouvez utiliser strftime pour 
obtenir uniquement l'année à partir de la date d'examen.
**/

WITH avis_2020 AS (
SELECT id, nom_utilisateur, id_lieux, date_critique, note, commentaire
FROM avis
WHERE strftime('%Y', date_critique) = '2020'
)
SELECT lieux.nom, lieux.adresse, lieux.type, avis_2020.nom_utilisateur, avis_2020.note, avis_2020.commentaire
FROM lieux
INNER JOIN avis_2020 ON lieux.id = avis_2020.id_lieux;


-- 10

