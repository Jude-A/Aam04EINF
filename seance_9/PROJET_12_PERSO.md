# Conception d'une base de données à partir de zéro

## À vous de jouer ! 🤠


Bienvenue ! Vous devriez maintenant être familiarisé avec le concept de schéma de base de données et avec les composants qui entrent dans la composition d'un schéma. Pour résumer, ces composants sont les suivants

- des tables avec des colonnes d'un type de données particulier
- des clés primaires pour identifier de manière unique les éléments de vos tables
- des clés étrangères pour définir les relations entre deux tables.
    - Il existe de nombreux types de relations que vous pouvez définir avec les clés. Il existe plusieurs types de relations que vous pouvez définir avec les clés, à savoir : une à une, une à plusieurs et plusieurs à plusieurs.
    
Lors de l'apprentissage des schémas de base de données, nous vous avons toujours donné des informations d'orientation.

Que vous travailliez à partir d'images du schéma lui-même ou d'une description des informations à stocker dans une base de données, vous avez toujours construit votre schéma de base de données avec notre aide.

Pour ce projet, nous revenons en arrière et vous laissons concevoir la base de données à partir de zéro.

La principale différence est qu'il y aura une composante "recherche" dans le projet, dans laquelle vous devrez apprendre quelles données sont pertinentes pour votre base de données. Nous en parlerons plus en détail dans les sections suivantes. Pour l'instant, sachez que les principaux objectifs de ce projet sont les suivants :

- Concevoir un schéma de base de données sur un sujet de votre choix.
- Implémenter ce schéma sur un papier au préalable.


Commençons !


### Partie 1 - Recherche

Pour ce projet, vous allez créer une base de données sur un sujet de votre choix.

Voici quelques exemples:


- Gestion d'une collection de jeux vidéo: une base de données pour suivre les jeux vidéo, les plateformes, les genres et les évaluations.

- Suivi des événements et des festivals: une base de données pour organiser les informations sur les événements locaux, les artistes participants et les lieux.

- Base de données de recettes de cuisine: pour stocker et organiser des recettes, des ingrédients, des temps de préparation et des instructions.

- Plateforme de streaming musical: une base de données pour gérer les informations sur les chansons, les albums, les artistes et les playlists.

- Organisation de soirées jeux de société: une base de données pour gérer les informations sur les jeux, les joueurs, les soirées et les scores.

- Gestion des clubs de sport universitaires: une base de données pour suivre les équipes, les membres, les matchs et les classements.

- Base de données des plantes d'intérieur: pour gérer les informations sur les plantes, leurs besoins en eau et en lumière, et leur emplacement dans la maison.

- Gestion des voyages et des destinations: une base de données pour planifier et organiser les informations sur les voyages, les lieux visités, les activités et les hébergements.

- Suivi des films et des séries: une base de données pour gérer les informations sur les films et les séries, leurs genres, les acteurs et les réalisateurs.

- Base de données des œuvres d'art urbain: pour recenser et organiser les informations sur les œuvres d'art urbain, les artistes et les emplacements.

- Gestion des activités et des ressources d'un FabLab: une base de données pour inventorier les machines, les outils, les projets réalisés et les membres du FabLab.

- Base de données de podcasts et d'épisodes: pour organiser les informations sur les podcasts, leurs épisodes, les thèmes abordés et les intervenants.

- Gestion d'un club de lecture: une base de données pour suivre les livres lus, les critiques, les auteurs et les discussions de groupe.

- Suivi des entraînements sportifs personnels: une base de données pour enregistrer les types d'entraînements, les performances, les objectifs et les progrès.

- Gestion des collections de cartes à collectionner (comme Magic: The Gathering ou Pokémon): une base de données pour inventorier les cartes, les éditions, les valeurs et les transactions effectuées.



Comment commencer un tel projet ? C'est là que la partie "recherche" de ce projet entre en jeu.

Réfléchissez à la manière dont le système  peut être traduit en base de données.

- Ce système comporte-t-il des entités ou des objets spécifiques ? 
- Ces objets seront probablement traduits en tables.
- Existe-t-il des relations entre ces entités ? 
    - De quels types de relations s'agit-il ? Une à une ? De un à plusieurs ? Plusieurs à plusieurs ? Ces relations seront traduites en clés étrangères.
- Existe-t-il un moyen d'identifier les entités de manière unique ? Si c'est le cas, cela doit être représenté par des clés primaires.

Au cours de cette phase de recherche, votre objectif final devrait être un diagramme de schéma, également connu sous le nom de diagramme entités-relations.



Nous avons fait cet  image de notre diagramme entité-relation. Si vous souhaitez lire notre processus de création de notre propre diagramme entités-relations, vous trouverez nos notes au bas de ce document.



### Partie 2 - Transformer votre diagramme en schéma de base de données

Maintenant que vous avez pris connaissance de la base de données que vous allez créer, il est temps d'implémenter votre base de données dans Postgres !

Il y a un certain nombre d'étapes dans ce processus. Nous allons essayer de mettre en évidence les plus importantes d'entre elles ci-dessous.

- Il est probablement préférable de créer une nouvelle base de données pour ce projet. De cette façon, vous n'aurez pas de tables provenant d'autres projets dans votre base de données. 
- Créez les tables que vous avez dessinées dans votre diagramme entité-relation. Lors de la création de ces tables, il convient de faire attention à certaines choses.
    - Assurez-vous que vous avez attribué à chaque colonne un type de données approprié.
    - Définissez des clés primaires pour que chaque ligne de vos tables soit identifiable de manière unique.
    - Définissez des clés étrangères pour créer des relations entre les tables. L'ordre à respecter ici peut s'avérer un peu délicat. Si vous créez une table avec une clé étrangère faisant référence à une colonne d'une autre table, assurez-vous que l'autre table a déjà été créée !


### Partie 3 - Ajouter des données à vos tableaux

Maintenant que vous avez créé vos tableaux, l'une des meilleures façons de vérifier qu'ils fonctionnent comme prévu est d'ajouter des données de test. Ajoutez suffisamment de lignes à vos tableaux pour tester toutes les relations que vous avez créées. Par exemple, si vous pensez avoir créé une relation de type "un à plusieurs" en utilisant des clés étrangères, assurez-vous que vous pouvez réellement créer plusieurs lignes qui font toutes référence à une seule ligne d'une autre table.

### Partie 4 - Modifiez votre schéma si nécessaire

Au fur et à mesure que vous saisissez des données dans vos tables, vous avez peut-être découvert des problèmes que vous n'aviez pas anticipés. Ce n'est pas grave ! Il est difficile d'obtenir un schéma parfait du premier coup. Le type de données d'une colonne doit peut-être être modifié. Ou peut-être vous êtes-vous rendu compte qu'une relation de un à plusieurs devrait en fait être une relation de plusieurs à plusieurs. Quel que soit le problème, c'est l'occasion d'itérer.

Si vous ne savez pas comment modifier la structure d'une table après sa création, vous pouvez consulter la documentation sur ALTER TABLE. Plus précisément, certaines des commandes qui peuvent être utiles sont ADD COLUMN, DROP COLUMN, SET DATA TYPE et ADD table_constraint.



## Notre base de données

Dans cette section, nous allons vous présenter le processus de réflexion que nous avons suivi pour réaliser notre exemple. Nous décomposerons nos commentaires en fonction des étapes qui vous serons demandées .

### Recherche

Nous avons discuté avec un ami qui travaille dans le secteur de l'édition. Nous étions curieux de savoir comment fonctionnent les relations entre un auteur, un livre, un agent et une maison d'édition. La plupart des questions que nous avons posées lors de notre entretien visaient à clarifier les relations entre ces entités.

Par exemple, une fois que nous avons établi qu'un agent travaille avec de nombreux auteurs, nous avons demandé si un auteur pouvait travailler avec plus d'un agent. Nous voulions savoir si la relation entre l'agent et l'auteur était de type "un pour plusieurs" ou "plusieurs pour plusieurs". La réponse a été "parfois" : un auteur peut parfois travailler avec un agent pour les livres et un autre pour les films. En général, ces deux agents travaillent dans la même agence. Les questions de ce type nous ont aidés à déterminer comment nous voulions configurer la base de données. En fin de compte, nous avons décidé de restreindre notre base de données pour ne pas inclure les films et, par conséquent, nous avons décidé qu'un auteur ne pouvait avoir qu'un seul agent.

Nous avons posé des questions similaires sur la relation entre les livres, les éditeurs et les rédacteurs en chef - et nous avons appris l'existence des maisons d'édition et leur relation avec les éditeurs !

En fin de compte, toutes ces recherches nous ont conduits au diagramme Entité-Relation inclus dans les fichiers téléchargés.

![schema](./ressources/schema.png)


Notez qu'en réalité, nous aurions probablement beaucoup plus de champs dans toutes ces tables. Après tout, il n'est pas très utile d'avoir une table "éditeur" qui ne comporte qu'un champ "nom". Dans le cadre de cet exercice, nous nous sommes concentrés sur la mise en place du squelette des relations entre toutes ces entités. Nous aurions pu passer beaucoup plus de temps à ajouter des détails à toutes ces tables !

### Transformation du diagramme en schéma de base de données

Le code que nous avons utilisé pour transformer notre diagramme en une véritable base de données Postgres se trouve ci-dessous. Une chose à noter : lorsque nous avons créé la colonne age_range pour la table imprint, nous avons pensé qu'il était plus logique de la diviser en colonnes minimum_age et maximum_age de type int. La création de ces colonnes de type int nous permettra de filtrer la table pour trouver, par exemple, les maisons d'édition qui publient des livres pour les enfants de moins de 20 ans, alors qu'il serait plus difficile et plus lent de le faire avec un champ de texte représentant la fourchette d'âge.

```sql

    -- Creating all of the tables

    CREATE TABLE agency (
      name text PRIMARY KEY,
      address text
    );

    CREATE TABLE agent (
      name text PRIMARY KEY,
      agency_name text REFERENCES agency(name)
    );

    CREATE TABLE author (
      name text PRIMARY KEY,
      bio text,
      agent_name text REFERENCES agent(name)
    );

    CREATE TABLE publisher (
      name text PRIMARY KEY
    );

    CREATE TABLE book(
      isbn bigint PRIMARY KEY,
      title text,
      publisher_name text REFERENCES publisher(name),
      price money
    );

    CREATE TABLE authors_books(
      author_name text REFERENCES author(name),
      book_isbn bigint REFERENCES book(isbn),
      PRIMARY KEY (author_name, book_isbn)
    );

    CREATE TABLE imprint (
      name text PRIMARY KEY,
      genre text,
      age_range text,
      publisher_name text REFERENCES publisher(name)
    );

    CREATE TABLE editor (
      name text PRIMARY KEY,
      imprint_name text REFERENCES imprint(name)
    );

    -- Creating an agency, two agents, and a publisher

    INSERT INTO agency VALUES ('Writers Home', '123 Fake St.');
    INSERT INTO agent VALUES ('Frodo Baggins', 'Writers Home');
    INSERT INTO agent  VALUES ('Bilbo Baggins', 'Writers Home');
    INSERT INTO publisher VALUES ('Simon and Schuster');


    -- Realizing that the data type of age_range should actually be two columns of ints
    ALTER TABLE imprint DROP COLUMN age_range;
    ALTER TABLE imprint ADD COLUMN age_min int;
    ALTER TABLE imprint ADD COLUMN age_max int;


    -- Adding two imprints and an editor that works at one of the imprints
    INSERT INTO imprint VALUES ('Pocket Books', 'paperback', 'Simon and Schuster', 7, 80);
    INSERT INTO imprint VALUES ('Stormy Castle', 'fantasy', 'Simon and Schuster', 16, 30);
    INSERT INTO editor VALUES ('Jennifer Editor', 'Stormy Castle');

    -- Realizing that a book is only connected to a publisher, but we can't find the editor based on that information alone
    ALTER TABLE book ADD COLUMN	editor_name text REFERENCES editor(name);

    -- Adding two books
    INSERT INTO book VALUES (1234, 'The Great Adventure', 'Simon and Schuster', 12.99, 'Jennifer Editor');
    INSERT INTO book VALUES (5249, 'The Return of the Queen', 'Simon and Schuster', 15.99, 'Jennifer Editor');

    -- Adding an author
    INSERT INTO author VALUES ('J.T.T Rolkin', 'This author is a prolific fantasy author', 'Frodo Baggins');

    -- Making it so our author has written two books
    INSERT INTO authors_books VALUES ('J.T.T Rolkin', 5249);
    INSERT INTO authors_books VALUES ('J.T.T Rolkin', 1234);


    -- Realizing that a book doesn't need to know the publisher, as long as we know the editor.
    ALTER TABLE book DROP COLUMN publisher_name;

```


### Ajouter des données à nos tables
Nous avons veillé à insérer des lignes permettant de tester les relations "un à plusieurs" et "plusieurs à plusieurs" que nous avions établies précédemment. Par exemple, nous voulions nous assurer que plusieurs agents pouvaient appartenir à la même agence.



### Modifiez  schéma si nécessaire
Au fur et à mesure que nous ajoutions des données à nos tables, nous nous sommes rendu compte de certaines choses. Tout d'abord, nous avons réalisé qu'il n'y avait aucun moyen de relier un livre à un éditeur. Nous pouvions relier un livre à un éditeur et un éditeur à une maison d'édition, mais comme plusieurs éditeurs pouvaient travailler pour la même maison d'édition, l'élément