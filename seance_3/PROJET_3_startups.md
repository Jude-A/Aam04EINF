# Tendances dans la Silicone Valley

Pour vous permettre de commencer vos recherches, votre patron vous a envoyé par e-mail un fichier `startup.sql` qui contient une table appelée `startups. Il s'agit d'un portefeuille de quelques-uns des plus grands noms du secteur.

Rédigez des requêtes avec des fonctions d'agrégation pour récupérer des informations intéressantes sur ces entreprises.

### A vous de jouer !

#### Quelques reqêtes

1. Pour commencer, jetez un coup d'œil au tableau des startups :

```sql
SELECT *
FROM startups;
```


2. Combien de colonnes y a-t-il ?


3. Nous voulons connaître la valeur totale de toutes les entreprises de ce tableau.

    Calculez-la en obtenant la SUM() de la colonne de `valorisation`.
    
4. Quel est le montant le plus élevé levé par une startup ?

    Retournez le montant maximum d'argent levée.


5. Modifiez la requête de façon à ce qu'elle renvoie le montant maximum d'argent levé, pendant la phase 'Jeune Pousse'.


6. En quelle année l'entreprise la plus ancienne de la liste a-t-elle été fondée ?

#### Découvrons les valorisations entre les différents secteurs :

7. Retournez la valorisation moyenne.

8. Retournez la valorisation moyenne, dans chaque catégorie.


9. Retournez la valorisation moyenne, dans chaque catégorie.

    Arrondissez les moyennes à deux décimales.

10. Retournez la valorisation moyenne, dans chaque catégorie.

    Arrondissez les moyennes à deux décimales.

    Enfin, ordonnez la liste des moyennes les plus élevées aux plus basses.


#### Quels sont les marchés les plus concurrentiels ?

11. Tout d'abord, rapportez le nom de chaque catégorie avec le nombre total d'entreprises qui en font partie.


12. Ensuite, filtrez le résultat pour n'inclure que les catégories qui comptent plus de trois entreprises.

    Quels sont les marchés les plus compétitifs ?

    Voyons s'il y a une différence dans la taille des startups entre les différents sites :

13. Quelle est la taille moyenne d'une startup dans chaque lieu ?

14. Quelle est la taille moyenne d'une startup dans chaque lieu, avec des tailles moyennes supérieures à 500 ?