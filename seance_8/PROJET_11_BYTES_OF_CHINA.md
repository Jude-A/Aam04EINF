# Créez un menu pour Bytes of China

Un nouveau restaurant, Bytes of China, vient de s'installer dans une rue très fréquentée de Chinatown. Bytes of China vous a engagé pour concevoir le schéma de sa base de données afin qu'il puisse afficher son menu sur son nouveau site Web. Il vous a fourni une copie de son menu actuel.

<u>Poulet</u>
- C1. **Poulet au brocoli** $6.95
  - Poulet en dés sauté avec de succulents fleurons de brocoli.

- C2. **Poulet aigre-douce** $6.75
  - Poulet mariné avec une sauce aigre-douce piquante accompagnée d'ananas et de poivrons verts.

- C3. **Ailes de poulet** 🌶️ $6.95
  - Une entrée qui met l'eau à la bouche pour épicer n'importe quel déjeuner ou dîner.

<u>Spéciales déjeuner $8.95</u>
  - Servi avec une soupe aigre-douce ou une soupe aux œufs et du riz frit ou à la vapeur entre 11h00 et 15h00 du Lundi au Vendredi.

- SD1. **Poulet avec brocoli**
  - Poulet en dés sauté avec de succulents fleurons de brocoli.

- SD2. **Boeuf à la sauce à l'ail** 🌶️
  - Emincé de bœuf mariné dans une sauce à l'ail pour une saveur piquante.

- SD3. **Champignons frais avec pois mange-tout et petits mais**
  - Entrée colorée parfaite pour les végétariens et les amateurs de champignons.

<u>Spéciales maison</u>

- SM1. **Poulet au sésame** $15.95
  - Morceaux de poulet croustillants aromatisés d'une savoureuse sauce au sésame.

- SM2 **Poulet haché spécial** $16.95
  - Poitrine de poulet marinée sautée avec des légumes colorés, garnie de noix de pin et de laitue déchiquetée.

- SM3 **Spécial Hunan moitié-moitié** 🌶️ $17.95
    - Bœuf effiloché dans une sauce pékinoise et poulet effiloché dans une sauce à l'ail.



Bytes of China se décrit comme suit sur son site web :


```
Bytes of China, une cuisine chinoise délicieuse
2020 Busy Street, Chinatown, MA 02139
Téléphone : 617-555-1212
Heures d'ouverture : Du lundi au vendredi de 9h00 à 21h00, le week-end de 10h00 à 23h00.
Évaluations : 3,9 sur 200 avis
Google Map


```

Une page Web appelée Menu doit comporter les catégories suivantes :

Amuse-bouche, soupe, poulet, bœuf, veau, végétarien, riz et nouilles, plats du midi, plats maison.

Sous chaque catégorie doit figurer une liste de plats dans ce format type :

```
Nom Catégorie
Code1. Nom plat 1        Prix 1
           Description plat 1
Code2. Nom plat 2 *        Prix 2
           Description plat 2
```

Certains plats sont marqués d'un astérisque, *, pour indiquer qu'il s'agit de plats chauds et épicés.

Certaines catégories telles que **Spéciales pour le déjeuner**  fournissent des informations supplémentaires au client mais tous les plats ont le même prix.. :


<u>Spéciales pour le déjeuner $8.95</u>
  - Servi avec une soupe aigre-douce ou une soupe aux œufs et du riz frit ou à la vapeur entre 11h00 et 15h00 du Lundi au Vendredi.


En plus d'un menu, une page web, `avis`, contient une collection d'avis de clients.

```
5.0  étoiles Un service formidable. J'aimerais organiser une autre fête d'anniversaire chez Bytes of China ! 05/22/2020
4.5  étoiles A part une petite confusion, je lui donnerais un 5.0 !  04/01/2020
3.9  étoiles Un endroit raisonnable pour manger à midi, si vous êtes pressé !  03/15/2020
... 
```

En tant que concepteur de base de données, vous êtes amené à concevoir un schéma de base de données et à effectuer les tâches suivantes :

- créer des tables
- définir les relations entre les tables
- désigner les colonnes appropriées comme clés
- insérer des données types et effectuer des requêtes à partir de la base de données.


## Tâche N°1 : Créer des tables et des clés primaires

1. La première étape de la conception d'un schéma de base de données consiste à créer des tables avec les colonnes et les clés primaires appropriées.

    Créez une table  `restaurant` et une table `adresse` avec des colonnes qui ont du sens sur la base de la description ci-dessus. Reportez-vous à notre astuce pour savoir comment créer ces tables. 
    <details>
        <summary>Indice. ⬇️</summary>
        <p>La syntaxe pour créer une table dans PostgreSQL est :</p>
        <code>
            CREATE TABLE nom_table (
           nom_colonne1 <datatype>,
           nom_colonne2 <datatype>,
          ...
          nom_colonne1N <datatype>
        );
        </code>
        <p>Notre table de <b>restaurant</b> contient les colonnes suivantes :</p>
        <ul>
            <li>id un integer</li>
            <li>nom un varchar(20)</li>
            <li>description un varchar(100)</li>
            <li>note un decimal</li>
            <li>téléphone un char(10)</li>
            <li>heures un varchar(100)</li>
        </ul>
        <p>Notre table <b>adresses</b> contient les colonnes suivantes :</p>
        <ul>
            <li>id un integer</li>
            <li>numéro_de_rue un varchar(10)</li>
            <li>nom_rue un varchar(20)</li>
            <li>ville un varchar(20)</li>
            <li>etat un varchar(15)</li>
            <li>google_map_link de varchar(50)</li>
        </ul>
    </details>


2. Assignez une clé primaire à une colonne pour chacune des tables, `restaurant` et `adresse`. Ensuite, écrivez des requêtes pour valider l'existence de ces clés primaires pour ces tables.
<details>
    <summary>Indice. ⬇️</summary>
    <p>La clé primaire est une ou plusieurs colonnes contenant une ou plusieurs valeurs uniques qui peuvent être utilisées pour identifier de manière unique chaque ligne de la table. La colonne <b>id</b> des tables <b>restaurant</b> et <b>adresse</b> devrait constituer une clé primaire idéale. Tapez le mot clé <b>PRIMARY KEY</b> à côté de la colonne désignée comme clé primaire. Par exemple :</p>
    <code>
        CREATE TABLE recette (
          id integer PRIMARY KEY,
          nom varchar(20),
          ...
        );
    </code>
    <p>Utilisez la vue <b>information_schema.key_column_usage</b> pour afficher <b>contrainte_name</b> et <b>colonne_name</b> où <b>table_name</b> est le nom de la table.</p>
    
</details>


3. Ensuite, nous nous concentrons sur le menu du restaurant. Dans le cas de `Bytes of China`, le menu est divisé en plusieurs catégories. Certaines catégories (entrées et plats du jour) ont simplement un nom, tandis que d'autres (plats du jour) ont plus d'informations, comme le prix, les heures et le choix des accompagnements servis avec le plat principal.

    Créez une table  `catégories`. Consultez l'astuce pour savoir comment procéder.

    L'identifiant d'une catégorie est un identifiant à deux caractères, tel que "P" pour Poulet, "SM" pour Spécialités maison et "SD" pour Spécialités déjeuner. Pour simplifier, la colonne de description peut contenir des informations telles que les heures de disponibilité et d'autres informations diverses. Pour la plupart des catégories, seules les colonnes id et nom sont suffisantes et la description est nulle.

    Ajoutez une clé primaire à la bonne colonne. Écrivez une requête pour valider la clé primaire dans cette table.
    <details>
    <summary>Indice. ⬇️</summary>
    <p>Ajoutons un tableau de catégories avec les colonnes suivantes :</p>
    <ul>
            <li>id un char(2)</li>
            <li>nom un varchar(20)</li>
            <li>description un varchar(200)</li>
    </ul>
    <p>La colonne <b>id</b> fera une clé primaire idéale.</p>
</details>


4. Ensuite, nous nous concentrons sur les plats à l'intérieur d'une catégorie. Un plat a un nom, un prix, une description et un indicateur s'il est chaud et épicé.

    Créez une table  `plat`. Consultez l'astuce pour savoir comment créer la table `plat`.

    Ajoutez une clé primaire pour la table `plat`. Écrivez une requête pour valider la clé primaire dans cette table.
    
     <details>
        <summary>Indice. ⬇️</summary>
        <p> Créez une table plat avec ces colonnes :</p>
        <ul>
                <li>id un integer</li>
                <li>nom un varchar(50)</li>
                <li>description un varchar(200)</li>
                <li>est_epice un bool</li>
        </ul>
        <p>La colonne <b>id</b> fera une clé primaire idéale.</p>
        </details>

        
5. Enfin, nous créons une table, `avis` qui correspond à un avis client sur le restaurant.
    
    Créez une table `avis` avec des colonnes qui ont un sens. Consultez l'astuce pour savoir comment créer cette table.
    <details>
        <summary>Indice. ⬇️</summary>
        <p> Créez une table <b>avis</b> avec ces colonnes :</p>
        <ul>
                <li>id un integer</li>
                <li>note un décimal(50)</li>
                <li>description un varchar(100)</li>
                <li>date une date</li>
        </ul>
        </details>

## Tâche N° 2 : Définir les relations et les clés étrangères

Il existe trois types de relations dans les bases de données : `une à une`, `une à plusieurs` et `plusieurs à plusieurs`. Parmi les cinq tables que vous avez créées, identifiez les relations entre chaque paire de tables.

Une relation `une à une` existe lorsqu'une ligne d'une table est liée à exactement une ligne d'une autre table et vice-versa. 

Quelles sont les deux tables de notre schéma qui présentent parfaitement une relation `une à une` entre elles ?

6. Après avoir identifié les deux tables qui présentent une relation `une à une` entre elles, implémentez cette relation en ajoutant une clé étrangère dans l'une des tables. Rédigez une requête pour valider l'existence de cette clé étrangère.
    <details>
        <summary>Indice. ⬇️</summary>
        <p> Dans notre schéma de restaurant, la table <b>restaurant</b> a une relation <b>une à une</b> avec la table <b>adresse</b>.
        <p>Pour mettre en œuvre une relation une à une, ajoutez une clé étrangère à la table adresse et désignez-la par le mot-clé <b>UNIQUE</b>.</p>
        <p>Pour implémenter une clé étrangère dans PostgreSQL, ajoutez une colonne dans la table enfant qui fait référence à la clé primaire de la table parent via le mot-clé <b>REFERENCES</b>. Par exemple :</p>
        <code>
        nom_colonne integer REFERENCES table_parent(id_parent)
        </code>
     </details>


7. Une relation de type `un à plusieurs` existe lorsqu'une ligne d'une table est liée à plusieurs lignes d'une autre table. Quelles sont les deux tables qui présentent parfaitement une relation de type `un à plusieurs` entre elles ? Après avoir identifié les deux tables qui présentent une relation de `type un à plusieurs`, implémentez cette relation en ajoutant une clé étrangère dans l'une des tables. Rédigez une requête pour valider l'existence de cette clé étrangère.
    <details>
        <summary>Indice. ⬇️</summary>
        <p> Dans notre schéma de restaurant, un restaurant peut avoir de nombreux avis de clients. Pour mettre en œuvre une relation <b>un-à-plusieurs</b>, la clé primaire de la table <b>une</b> est référencée par la table <b>plusieurs</b> en tant que clé étrangère.</p>
        <p>Ajoutez une colonne <b>restaurant_id<b> dans la table <b>évaluations<b> en tant que clé étrangère faisant référence à la clé primaire de la table des <b>restaurants</b>, id.</p>
     </details>
  
  
8. Une relation de `plusieurs à plusieurs` comprend deux relations  `un à plusieurs`. Quelles sont les deux tables qui répondent parfaitement à une relation `plusieurs à plusieurs` entre elles ?

    Comment mettriez-vous en œuvre cette relation ? Pour mettre en œuvre une relation `plusieurs à plusieurs`, il faut une troisième table de référence croisée contenant deux clés étrangères faisant référence aux clés primaires des tables membres, ainsi qu'une clé primaire composite issue de ces deux clés.

    Si vous identifiez les tables  `catégories` et `plats` comme ayant une relation `plusieurs à plusieurs`, vous avez raison. Une catégorie  menu se compose de plusieurs plats, mais le même plat peut appartenir à plusieurs catégories. Par conséquent, ces deux tables, `catégorie` et `plat`, présentent une relation de `plusieurs à plusieurs`.

    Créez une troisième table de référence croisée, `categories_plat`, pour mettre en œuvre cette relation et affectez les clés primaires et étrangères appropriées qui sont nécessaires dans cette table. En plus des clés mentionnées ci-dessus, ajoutez une colonne de prix de type argent dans cette table. La colonne de prix est nécessaire dans cette table car le coût d'un plat dépend de sa catégorie. Par exemple, le poulet au brocoli coûte 6,95 $ en tant que plat principal, mais 8,95 $ s'il fait partie du menu spécial déjeuner qui comprend des plats d'accompagnement.

     Rédigez une requête pour valider les clés primaires et étrangères qui existent dans cette table.
    <details>
        <summary>Indice. ⬇️</summary>
        <p> Une clé primaire composite est mise en œuvre comme suit :</p>
        <code>
        PRIMARY KEY (colonne_1, colonne_2)
        </code>
     </details>




## Tâche N°3 Insérer des données échantillons

9. Félicitations pour avoir défini le schéma du menu du restaurant. Maintenant, il est temps de remplir le schéma avec notre échantillon de données.

       - Ouvrez `data_BYTES_OF_CHINA.sql`. Etudiez les différentes instructions `INSERT` pour remplir les différentes tables. 
       - Copiez le contenu du fichier et collez-le dans l'éditeur.

    Si vous n'avez pas créé vos tables exactement comme décrit, vous risquez d'obtenir une erreur de syntaxe lorsque vous copiez et collez ces instructions `INSERT`. Cependant, cela ne pose aucun problème. Si vous obtenez une erreur de syntaxe en essayant d'insérer des données, suivez les conseils suivants :

    - Inspectez le message d'erreur.
    - Inspectez les données que vous essayez d'insérer.
    - Vérifiez que le schéma de la table correspond aux données que vous insérez.
  
  
Une fois que vous avez importé avec succès les données d'insertion, vous pouvez commencer à effectuer des requêtes dans la base de données. Les mots-clés `SELECT`, `AS`, `FROM`, `WHERE`, `ORDER BY`, `HAVING` et `GROUP BY` vous seront utiles ici, ainsi que quelques fonctions.

10. Dans l'éditeur saisissez une requête qui affiche le nom du restaurant, son adresse (numéro et nom de la rue) et son numéro de téléphone. Exécuter la requête.
  
  
11. Dans script.sql, écrivez une requête pour obtenir la meilleure note que le restaurant ait jamais reçue. Affichez la note en tant que `meilleur_note`. Exécuter la requête.
    <details>
        <summary>Indice. ⬇️</summary>
        <p> Pour afficher une colonne en utilisant un en-tête personnalisé, utilisez le mot-clé <b>AS</b> comme suit :</p>
        <code>
        SELECT id AS nom_personnalise
        FROM nom_table;
        </code>
        <p>Pour afficher la valeur la plus élevée d'une colonne, utilisez la fonction <b>MAX(colonne)</b> Par exemple :</p>
        <code>
        SELECT MAX(prix) FROM article;
        </code>
        <p>n'affichera que la valeur maximale de la colonne des prix dans le tableau des articles.</p>
     </details>
     
     
12. Rédigez une requête pour afficher le nom d'un plat, son prix et sa catégorie triés par le nom du plat. Vos résultats doivent avoir l'en-tête suivant :
    ```
    nom_plat	prix	categorie
    ```
    Vous devriez obtenir 8 lignes de résultats.
    <details>
        <summary>Indice. ⬇️</summary>
        <p> Vous effectuerez cette requête à partir de trois tables : <b>categories_plat</b>, <b>plat</b> et <b>categorie</b>. Utilisez le mot-clé <b>ORDER BY</b> pour trier les résultats par une colonne spécifique.</p>
     </details>


13. Au lieu de trier les résultats par nom de plat, tapez une nouvelle requête pour afficher les résultats comme suit, triés par nom de catégorie.
    ```
    categorie	nom_plat	prix
    ```
    
14. Ensuite, tapez une requête dans script.sql qui affiche tous les plats épicés, leur prix et leur catégorie. L'en-tête devrait ressembler à ceci :
    ```
    nom_plat_epice	categorie	prix
    ```
    Vous devriez obtenir 3 rangées de résultats.
    <details>
        <summary>Indice. ⬇️</summary>
        <p> Vous ferez cette requête à partir de trois tables : <b>categorie_plat</b>, <b>plat</b> et <b>categorie</b>.</p>
     </details>


15. Dans un menu complet, il y aura des plats qui appartiennent à plus d'une catégorie. Dans notre exemple de menu, seul le poulet avec brocolli est affecté à deux catégories différentes - Spécial dejeuner et Poulet. Comment pouvons-nous interroger la base de données pour trouver les plats qui appartiennent à plusieurs catégories ?

Nous pouvons utiliser une fonction de la base de données, `COUNT(nom_colonne)` pour nous aider. Par exemple, si nous disposons d'une table dont la colonne clé non primaire apparaît plusieurs fois dans les résultats, nous pouvons compter combien de fois la ligne apparaît.

Rédigez une requête qui affiche le `id_plat` et COUNT(id_plat) comme `nombre_plat` à partir de la table `categorie_plat`. Lorsque nous affichons `id_plat` avec une fonction d'agrégation telle que `COUNT()`, nous devons également ajouter une clause `GROUP BY` qui inclut `id_plat`.
    <details>
            <summary>Indice. ⬇️</summary>
            <p> Pour afficher le nom de la colonne en plus d'une fonction d'agrégation telle que <b>COUNT(nom de la colonne)</b>, ajoutez le nom de la colonne à la clause <b>GROUP BY</b> comme suit :</p>
            <code>
            SELECT nom_colonne, COUNT(nom_colonne)
            FROM nom_table
            GROUP BY nom_colonne;
            </code>
     </details>


16. Excellent travail ! Essayez d'ajuster la requête précédente pour afficher uniquement le(s) plat(s) de la table `categories_plat` qui apparaît(nt) plus d'une fois. Nous pouvons utiliser la fonction d'agrégation, `COUNT()` comme condition. Mais au lieu d'utiliser la clause `WHERE`, nous utilisons la clause `HAVING` avec `COUNT()`.
     <details>
            <summary>Indice. ⬇️</summary>
            <p> Pour ajouter une condition utilisant une fonction d'agrégation telle que <b>COUNT(nom_colonne) > 1</b>, procédez comme suit :</p>
       <code>
        SELECT nom_colonne, COUNT(nom_colonne)
        FROM nom_table
        GROUP BY nom_colonne
        HAVING COUNT(nom_colonne) > 1;
       </code>
     </details>


17. Excellent ! Les deux requêtes précédentes nous donnent seulement un `id_plat`, ce qui n'est pas très informatif. Nous devrions écrire une meilleure requête qui nous indique exactement le(s) nom(s) du plat qui apparaît(nt) plus d'une fois dans la table `categories_plat`. Écrivez une requête qui incorpore plusieurs tables qui affichent le nom du plat comme `nom_plat` et le nombre de plats comme `nombre_plats`.
    <details>
            <summary>Indice. ⬇️</summary>
            <p>Ajoutez une autre condition à la clause <b>HAVING</b>, basée sur les clés primaires <b>categories_plat.id_plat</b> et <b>id_plat</b>. Ensuite, ajoutez <b>plat.nom</b> et <b>plat.id</b> à la clause <b>GROUP BY</b>.</p>
       <code>
        SELECT
          table_1.colonne_2, COUNT(table_2.colonne_1) 
        FROM
          table_1, table_2
        GROUP BY
          table_1.colonne_1, table_1.colonne_2, table_2.colonne_1
        HAVING
          COUNT(table_2.colonne_1) > 1 and table_2.colonne_1 = table_1.colonne_1;
       </code>
     </details>
   
   
18. Notre dernière tâche est une amélioration de la tâche 11 qui consistait à afficher l'évaluation la plus élevée du tableau `avis` en utilisant une fonction d'agrégation, `MAX(nom_colonne)`. Comme le résultat ne renvoyait qu'une seule colonne, il n'est pas très informatif.
    ```
    meilleur_note
    5.0
    (1 row)

    ```
    Il serait préférable que nous puissions également voir l'avis lui-même. Écrivez une requête qui affiche la meilleure évaluation en tant que `meilleur_note` et la description également. Pour faire cela correctement, nous devons avoir une requête imbriquée ou une sous-requête. Nous placerons cette requête dans la clause `WHERE`.
    
    ```sql
    SELECT colonne_1, colonne_2
    FROM nom_table
    WHERE  colonne_1 = ( SELECT MAX(colonne_1) from nom_table );
    ```
    
    Saisissez votre dernière requête dans script.sql.

    Vous avez terminé ce projet en écrivant des tables, en définissant des contraintes et des relations entre les tables. Vous avez rempli les tables et écrit des requêtes intéressantes et stimulantes pour la base de données.


Félicitations pour ce projet bien mené !