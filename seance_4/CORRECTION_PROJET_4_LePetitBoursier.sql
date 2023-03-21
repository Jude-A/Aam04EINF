/*
1. Quels sont les noms des colonnes de transactions.
*/

SELECT *
FROM transactions;


/*
2. Quel est le montant total de la colonne `entree` dans la table ?
*/

Quel est le nombre total de transactions dans la table ?

SELECT COUNT(*) FROM transactions;

/*
3. Quel est le montant total de la colonne `entree` dans la table ?
*/

SELECT SUM(entree)
FROM transactions;


/*
4. Quelles sont les devises utilisées dans la table ?
*/
SELECT DISTINCT devise FROM transactions;


/*
5. Quel est le montant total de `sortie` dans la table ?
*/
SELECT SUM(sortie)
FROM transactions;


/*
6. Combien de transactions entrée y a-t-il dans ce tableau ?
   Combien de transactions " entrée " y a-t-il dans ce tableau où `BTC` est la devise ?
*/

SELECT COUNT(entree)
FROM transactions;
 
SELECT COUNT(entree)
FROM transactions
WHERE devise = 'BTC';


/*
7. Quelle était la plus grosse transaction de la table
*/

SELECT MAX(entree)
FROM transactions;
 
SELECT MAX(sortie)
FROM transactions;

/*
La transaction la plus importante était une transaction de sortie substantielle de 15 047 € !
*/


/*
8. Quelle est l'entrée moyenne pour la devise Ethereum (`'ETH'`) ?
*/

SELECT AVG(entree)
FROM transactions
WHERE devise = 'ETH';


/*
9. Sélectionnez la date, la moyenne des entrées d'argent et la moyenne des sorties d'argent dans la table.

Et regroupons tout par date.
*/

SELECT date, 
   AVG(entree), 
   AVG(sortie)
FROM transactions
GROUP BY date


/*
10. Pour faciliter la lecture de la requête précédente, arrondissez les moyennes à 2 décimales.
    Donnez des alias aux colonnes en utilisant AS pour plus de lisibilité.
*/
SELECT date AS 'Date', 
   ROUND(AVG(entree), 2) AS 'Moyenne achat',
   ROUND(AVG(money_out), 2) AS 'Moyenne vente'
FROM transactions
GROUP BY date;

/*
11. Quel est le nombre de transactions par utilisateur ?
*/
SELECT id_utilisateur, COUNT(*) as nombre_transactions
FROM transactions
GROUP BY id_utilisateur;

/*
12. Quel est le nombre de transactions effectuées chaque jour ?
*/
SELECT date, COUNT(*) as nombre_transactions
FROM transactions
GROUP BY date;

/*
13. Quelle est la devise la plus utilisée dans les transactions ?
*/
SELECT devise, COUNT(*) as nombre_transactions
FROM transactions
GROUP BY devise
ORDER BY nombre_transactions DESC
LIMIT 1;

/*
14. Quel est le montant total des entrées et des sorties pour chaque jour ?
*/
SELECT date, SUM(entree) as total_entrees, SUM(sortie) as total_sorties
FROM transactions
GROUP BY date;