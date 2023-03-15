# Welp

Pour mettre en pratique ce que vous avez appris sur la jonction de plusieurs tables, vous allez utiliser les données d'une application passionnante appelée Welp. Les utilisateurs adorent Welp parce qu'elle leur permet de laisser des avis sur les entreprises de leur ville et de voir comment d'autres personnes ont évalué ces entreprises.

Pour ce projet, vous travaillerez avec deux tables :

- lieux
- avis


## À vous de jouer ! 🤠

### Comprendre les données


1. Créez une nouvelle base de données et charger le contenu du fichier `DATABASE_WELP.sql`.


2. Examinez les 2 tables et essayez d'en comprendre la structure.


3. Si chaque signe de dollar ($) représente 10 $, comment pouvez-vous trouver tous les endroits qui coûtent 20 $ ou moins ?


4. Quelles colonnes peuvent être utilisées pour JOINDRE ces deux tables ?


### Joindre les tables

Voyons comment les établissements figurant sur Welp sont jugés par les évaluateurs.


5. Rédigez une requête pour effectuer un `INNER JOIN` sur les deux tables afin d'afficher tous les avis sur les restaurants qui ont au moins un avis.


Vous avez probablement remarqué toutes les informations supplémentaires dans vos résultats.


6. Modifiez votre requête précédente pour ne sélectionner que les colonnes les plus importantes afin d'afficher un journal d'avis en sélectionnant les éléments suivants :

	- Dans la table des lieux : `nom`, `note_moyenne`

	- Dans la table des avis : `nom_utilisateur`, `note`, `date_avis`, `commentaire`


7. Écrivez maintenant une requête pour effectuer un  jointure à gauche ou `LEFT JOIN` sur les tables, en sélectionnant les mêmes colonnes que dans la question précédente.

En quoi les résultats de cette requête sont-ils différents ? Cette requête ou une `INNER JOIN` serait-elle plus utile pour un journal d'avis ?


Qu'en est-il des lieux qui n'ont pas d'avis dans notre base de données ?


8. Écrivez une requête pour trouver tous les identifiants des lieux qui n'ont actuellement aucun avis dans notre table d'avis.


Parfois, sur Welp, il y a de vieux commentaires qui ne sont plus utiles.


9. Rédigez une requête à l'aide de la clause `WITH` pour sélectionner tous les avis publiés en `2020`. Joignez les lieux à votre requête `WITH` pour afficher un journal de tous les avis de 2020.

(Vous utiliserez la clause `WITH` ainsi que la fonction `strftime()`. Essayez d'utiliser Google pour trouver des informations sur la fonction avant de consulter l'astuce).


10. Les entreprises veulent être à l'affût des critiques difficiles. Rédigez une requête qui trouve l'évaluateur ayant le plus grand nombre d'évaluations inférieures à l'évaluation moyenne des lieux.

	Pour résoudre ce problème, vous devrez peut-être utiliser ce qui suit dans votre requête :

	- `COUNT`
	- `GROUP BY`
	- `ORDER BY`
	- `LIMIT`


