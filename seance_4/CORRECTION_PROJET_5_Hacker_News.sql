/*
1. Trouvons les 5 articles les plus populaires de Hacker News :
*/

SELECT titre, score
FROM hacker_news
ORDER BY score DESC
LIMIT 5 ;


/*
2. Trouvez le nombre total d'articles.
*/
SELECT COUNT(*)
FROM hacker_news;

/*
3. Trouvez les 4 auteurs qui ont le plus publié
*/
SELECT auteur, COUNT(*)
FROM hacker_news
GROUP BY auteur
ORDER BY 2 DESC
LIMIT 4;

/*
4. Additionner le nombre d'articles de ces auteurs et les diviser par le total pour obtenir le pourcentage
*/
SELECT (198 + 123 + 98 + 85) / 20100;


/*
5. Combien de fois chaque auteur fautif a-t-il posté le lien
*/

SELECT auteur,
   COUNT(*)
FROM hacker_news
WHERE url LIKE '%watch?v=dQw4w9WgXcQ%'
GROUP BY auteur
ORDER BY COUNT(*) DESC;

/*
6. Classer chaque article en fonction de sa source
*/
SELECT CASE
   WHEN url LIKE '%github.com%' THEN 'GitHub'
   WHEN url LIKE '%medium.com%' THEN 'Medium'
   WHEN url LIKE '%nytimes.com%' THEN 'New York Times'
   ELSE 'Autre'
  END AS Source
FROM hacker_news;


/*
7. Suite de la requête 6 et ajoutez une colonne pour le nombre d'articles de chaque URL
*/
SELECT CASE
   WHEN url LIKE '%github.com%' THEN 'GitHub'
   WHEN url LIKE '%medium.com%' THEN 'Medium'
   WHEN url LIKE '%nytimes.com%' THEN 'New York Times'
   ELSE 'Autre'
  END AS Source,
  COUNT(*)
FROM hacker_news
GROUP BY 1
ORDER BY 1 ASC;


