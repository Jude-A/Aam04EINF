# Tables multiples avec Reddit

Pour ce projet, vous travaillerez en tant qu'analyste de données et examinerez des données fictives provenant de Reddit, un site d'agrégation de nouvelles sociales et d'évaluation de contenu.

Sur Reddit, les utilisateurs peuvent créer des messages avec du contenu tel que du texte, des médias et des liens vers d'autres sites web. Les utilisateurs peuvent publier des contenus dans différentes communautés appelées "groupes", qui se concentrent sur un sujet particulier. Les utilisateurs peuvent ensuite évaluer le contenu des autres en le notant à la hausse ou à la baisse, et chaque message affichera son score total cumulé.

Pour cette tâche, vous avez reçu trois tableaux :

- utilisateurs : données sur les utilisateurs
- posts : informations sur les posts
- groupes : informations sur les groupes


## À vous de jouer ! 🤠

### Comprendre les données


1. Créez une nouvelle base de données et charger le contenu du fichier `DATABASE_REDDIT.sql`.


2. Examinez les 3 tables et essayez d'en comprendre la structure.

	- Écrivez des requêtes pour sélectionner les lignes de chaque table. Certaines tables comportent de nombreuses lignes, ne sélectionnez que les 10 premières lignes de chacun d'entre eux.

	-vQuels sont les noms des colonnes de chaque table ?


3. Quelle est la clé primaire de chaque table ? Pouvez-vous identifier les clés étrangères ?


4. Écrire une requête pour compter le nombre de groupes différents.


5. Écrivez quelques requêtes supplémentaires pour obtenir les informations suivantes :

	- Quel utilisateur a le score le plus élevé ?
	- Quel post a le score le plus élevé ?
	- Quels sont les 5 premiers groupes avec le plus grand nombre d'abonnés ?

## Utilisation des jointures

Joignons maintenant les données des différentes tables pour obtenir davantage d'informations.


6. Utilisez une `LEFT_JOIN` avec les tables des utilisateurs et des posts pour connaître le nombre de messages publiés par chaque utilisateur.

 La table des utilisateurs est la table de gauche et les données sont classées par ordre décroissant du nombre de posts.



Au fil du temps, les messages peuvent être supprimés et les utilisateurs peuvent supprimer leur compte.

7. Nous ne voulons voir que les messages existants pour lesquels les utilisateurs sont encore actifs, et nous utilisons donc une `INNER JOIN` pour écrire une requête permettant d'obtenir ces messages. La table posts est la table de gauche. 



8. De nouveaux messages ont été ajoutés à Reddit !

	- Empilez la table des nouveaux posts (posts2) sous la table des messages existants pour les voir.


## Requêtes plus avancées

9. Vous devez maintenant déterminer quels sont les groupes dont les posts sont les plus populaires. Nous dirons qu'un **article est populaire** s'il a un **score d'au moins 5000**. Pour ce faire, nous utiliserons un `WITH` et un `JOIN`.

	- Tout d'abord, vous devez créer la table temporaire que nous placerons dans la clause `WITH` en écrivant une requête pour sélectionner tous les messages qui ont un score d'au moins 5000.

	- Ensuite, placez la requête précédente dans une clause `WITH` et donnez à cette table le nom de `posts_populaires`.

	- Enfin, utilisez une `INNER JOIN` pour joindre cette table à la table `groupes`, avec `groupes` comme table de gauche. Sélectionnez le nom du `groupe`, le `titre` et le `score` de chaque message et classez les résultats en fonction du score de chaque message populaire, par ordre décroissant.


10. Enfin, vous devez écrire une requête pour calculer le score moyen de tous les messages pour chaque groupe.

Envisagez d'utiliser un `JOIN`, un `AVG` et un `GROUP BY` pour y parvenir, avec la table `groupes` comme table de gauche.

