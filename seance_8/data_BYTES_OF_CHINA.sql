/* 
 *--------------------------------------------
 Insérer les valeurs pour le restaurant
 *--------------------------------------------
 */
INSERT INTO restaurant VALUES (
  1,
  'Bytes de Chine',
  'Cuisine chinoise délicieuse',
  3.9,
  '6175551212',
  'Lun - Ven 9h00 à 21h00, Week-ends 10h00 à 23h00'
);

/* 
 *--------------------------------------------
 Insérer les valeurs pour l'adresse
 *--------------------------------------------
 */
INSERT INTO adresse VALUES (
  1,
  '2020',
  'Busy Street',
  'Chinatown',
  'MA 02139',
  'http://bit.ly/BytesDeChine',
  1
);

/* 
 *--------------------------------------------
 Insérer les valeurs pour les avis
 *--------------------------------------------
 */
INSERT INTO avis VALUES (
  1,
  5.0,
  'J''aimerais organiser une autre fête d''anniversaire chez Bytes de Chine !',
  '2020-05-22',2018-09-24
  1
);

INSERT INTO avis VALUES (
  2,
  4.5,
  'Mis à part un petit malentendu, je lui donnerais 5.0 !',
  '2020-04-01',
  1
);

INSERT INTO avis VALUES (
  3,
  3.9,
  'Un endroit raisonnable pour manger le midi si vous êtes pressé !',
  '03-15-2020',
  1
);

/* 
 *--------------------------------------------
 Insérer les valeurs pour la catégorie
 *--------------------------------------------
 */
INSERT INTO categorie VALUES (
  'P',
  'Poulet',
  null
);

INSERT INTO categorie VALUES (
  'SD',
  'Spéciales déjeuner',
  'Servi avec soupe aigre-douce ou soupe aux œufs et riz frit ou vapeur entre 11h00 et 15h00 du lundi au vendredi.'
);

INSERT INTO categorie VALUES (
  'SM',
  'Spéciales maison',
  null
);

/* 
 *--------------------------------------------
 Insérer les valeurs pour le plat
 *--------------------------------------------
 */
INSERT INTO plat VALUES (
  1,
  'Poulet au brocoli',
  'Poulet en dés sauté avec de succulents fleurons de brocoli',
  false
);

INSERT INTO plat VALUES (
  2,
  'Poulet aigre-doux',
  'Poulet mariné avec une sauce aigre-douce piquante accompagnée d''ananas et de poivrons verts',
  false
);

INSERT INTO plat VALUES (
  3,
  'Ailes de poulet',
  'Entrée alléchante pour épicer n''importe quel déjeuner ou dîner',
  true
);

INSERT INTO plat VALUES (
  4,
  'Bœuf à la sauce à l''ail',
  'Tranches de steak de bœuf marinées dans une sauce à l''ail pour une saveur piquante',
  true
);

INSERT INTO plat VALUES (
  5,
  'Champignons frais avec pois mange-tout et petits maïs',
  'Entrée colorée parfaite pour les végétariens et les amateurs de champignons',
  false
);

INSERT INTO plat VALUES (
	 6,
  'Poulet au sésame',
  'Morceaux de poulet croustillants aromatisés avec une savoureuse sauce au sésame',
  false
);

INSERT INTO plat VALUES (
  7,
  'Poulet haché spécial',
  'Poitrine de poulet marinée sautée avec des légumes colorés, garnie de noix de pin et de laitue émincée',
  false
);

INSERT INTO plat VALUES (
  8,
  'Spécial Hunan moitié-moitié',
  'Bœuf effiloché dans une sauce pékinoise et poulet effiloché dans une sauce à l''ail',
  true
);


/*
 *--------------------------------------------
 Insérer les valeurs pour la table de référence croisée, categories_plat
 *--------------------------------------------
 */
INSERT INTO categories_plat VALUES (
  'P',
  1,
  6.95
);

INSERT INTO categories_plat VALUES (
  'P',
  3,
  6.95
);

INSERT INTO categories_plat VALUES (
  'SD',
  1,
  8.95
);

INSERT INTO categories_plat VALUES (
  'SD',
  4,
  8.95
);

INSERT INTO categories_plat VALUES (
  'SD',
  5,
  8.95
);

INSERT INTO categories_plat VALUES (
  'SM',
  6,
  15.95
);

INSERT INTO categories_plat VALUES (
  'SM',
  7,
  16.95
);

INSERT INTO categories_plat VALUES (
  'SM',
  8,
  17.95
);
