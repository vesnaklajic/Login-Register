INSERT INTO TVA VALUES ('5.5');
INSERT INTO TVA VALUES ('10.00');


INSERT INTO AUTEUR VALUES ('Rowling','Joanne Kathleen');
INSERT INTO AUTEUR VALUES ('Armentrout','Jennifer L.');
INSERT INTO AUTEUR VALUES ('Christie','Agatha');
INSERT INTO AUTEUR VALUES ('Riordan','Rick');
INSERT INTO AUTEUR VALUES ('Mashima','Hiro');
INSERT INTO AUTEUR VALUES ('Ferri','Jean-Yves');


INSERT INTO EDITEUR VALUES ('Pika Édition');
INSERT INTO EDITEUR VALUES ('Gallimard jeunesse');
INSERT INTO EDITEUR VALUES ('J''ai Lu');
INSERT INTO EDITEUR VALUES ('Ldp Jeunesse');
INSERT INTO EDITEUR VALUES ('Albin Michel Jeunesse');
INSERT INTO EDITEUR VALUES ('Albert René');


INSERT INTO EVENEMENT VALUES ('Salon du Livre de Paris','20200320','20200323','c:\\Images\even1.jpg',null);
INSERT INTO EVENEMENT VALUES ('Noel des Livres','20191210','20191231','c:\\Images\even2.jpg', 5);


INSERT INTO MOT_CLE VALUES ('humour');
INSERT INTO MOT_CLE VALUES ('gaulois');
INSERT INTO MOT_CLE VALUES ('bande dessinée');
INSERT INTO MOT_CLE VALUES ('jeunesse');
INSERT INTO MOT_CLE VALUES ('suspens');
INSERT INTO MOT_CLE VALUES ('detective');
INSERT INTO MOT_CLE VALUES ('fantasy');
INSERT INTO MOT_CLE VALUES ('magie');
INSERT INTO MOT_CLE VALUES ('policier')
INSERT INTO MOT_CLE VALUES ('angleterre');
INSERT INTO MOT_CLE VALUES ('drame');
INSERT INTO MOT_CLE VALUES ('émotion');
INSERT INTO MOT_CLE VALUES ('romance');
INSERT INTO MOT_CLE VALUES ('japon');
INSERT INTO MOT_CLE VALUES ('shônen');
INSERT INTO MOT_CLE VALUES ('comédie');


INSERT INTO ADRESSE( ADRRUE, ADRVILLE, ADRCP, ADRPAYS, ADRNOM, ADRPRENOM, ADRTEL) 
VALUES ( '33 Quai de Valmy', 'Paris', '75010', 'FRANCE', 'Martre', 'Paul', '0140030229');
INSERT INTO ADRESSE( ADRRUE, ADRVILLE, ADRCP, ADRPAYS, ADRNOM, ADRPRENOM, ADRTEL) 
VALUES ( '30 rue Amiens', 'Lille', '59800', 'FRANCE', 'Vison', 'Lucie', '0320515561');
INSERT INTO ADRESSE( ADRRUE, ADRVILLE, ADRCP, ADRPAYS, ADRNOM, ADRPRENOM, ADRTEL) 
VALUES ( '115 quai Maurice Metayer', 'Niort', '79000', 'FRANCE', 'Belette', 'Andre', '0549090559');


INSERT INTO CLIENT ( ADRIDLIVR, ADRIDFACT, CLIENTNOM, CLIENTPRENOM,  CLIENTLOGIN, CLIENTMDP, CLIENTMAIL, CLIENTSTATUT)
VALUES ( 3, 1, 'Belette', 'Andre', 'aBelette', 'aBel2019', 'abel@gmail.com',1 );
INSERT INTO CLIENT ( ADRIDLIVR, ADRIDFACT, CLIENTNOM, CLIENTPRENOM,  CLIENTLOGIN, CLIENTMDP, CLIENTMAIL, CLIENTSTATUT)
VALUES ( 1, 2, 'Martre', 'Paul', 'pMartre', 'pMa2019', 'pma@gmail.com',1 );
INSERT INTO CLIENT ( ADRIDLIVR, ADRIDFACT, CLIENTNOM, CLIENTPRENOM,  CLIENTLOGIN, CLIENTMDP, CLIENTMAIL, CLIENTSTATUT)
VALUES ( 2, 2, 'Zybeline', 'Elodie', 'eZybeline', 'eZyb2017', 'ezybeline@gmail.com',1 );


INSERT INTO TRANSPORTEUR VALUES ('DHL');
INSERT INTO TRANSPORTEUR VALUES ('UPS');
INSERT INTO TRANSPORTEUR VALUES ('FEDEX');


INSERT INTO ACTION VALUES ('Ajouter');
INSERT INTO ACTION VALUES ('Supprimer');
INSERT INTO ACTION VALUES ('Modifier');
INSERT INTO ACTION VALUES ('Valider');
INSERT INTO ACTION VALUES ('Compter');


INSERT INTO ROLE VALUES ('Administrateur');
INSERT INTO ROLE VALUES ('Modérateur');
INSERT INTO ROLE VALUES ('Directeur');
INSERT INTO ROLE VALUES ('Resp vente');
INSERT INTO ROLE VALUES ('Prép commande');
INSERT INTO ROLE VALUES ('Vendeur');


INSERT INTO EMPLOYE VALUES (3, 'Dupont', 'Daniel', 3, 'ddupont', 'libDir2019', 'ddupont@libraire.fr','20140211',null );
INSERT INTO EMPLOYE VALUES (4, 'Dubois', 'Paul', 2, 'pdupont', 'resven19', 'pdubois@libraire.fr', '20150311',null );
INSERT INTO EMPLOYE VALUES (5, 'Dumoulin', 'Roger', 1, 'rdumoulin', 'prepco19', 'rdumoulin-ext@libraire.fr', '20110601',null );
INSERT INTO EMPLOYE VALUES (5, 'Duval', 'Marion', 1, 'mduval', 'prepco17', 'mduval@libraire.fr','20140601', '20170505');


INSERT INTO CATEGORIE VALUES ('Roman');
INSERT INTO CATEGORIE VALUES ('Bande dessinée');
INSERT INTO CATEGORIE VALUES ('Manga');
INSERT INTO CATEGORIE VALUES ('Livre scolaire');
INSERT INTO CATEGORIE VALUES ('Beaux-arts');
INSERT INTO CATEGORIE VALUES ('Poésie');
INSERT INTO CATEGORIE VALUES ('Théâtre');


INSERT INTO THEME VALUES ('Aventure');
INSERT INTO SOUS_THEME VALUES ('Roman noir');
INSERT INTO SOUS_THEME VALUES ('Roman policier');
INSERT INTO SOUS_THEME VALUES ('Roman d''espionnage');


INSERT INTO THEME VALUES ('Science-fiction');
INSERT INTO SOUS_THEME VALUES ('Anticipation');
INSERT INTO SOUS_THEME VALUES ('Cyberpunk');
INSERT INTO SOUS_THEME VALUES ('Steampunk');
INSERT INTO SOUS_THEME VALUES ('Space Opera');


INSERT INTO THEME VALUES ('Fantasy');
INSERT INTO SOUS_THEME VALUES ('Light Fantasy');
INSERT INTO SOUS_THEME VALUES ('High Fantasy');


INSERT INTO THEME VALUES ('Biographie');
INSERT INTO SOUS_THEME VALUES ('Autobiographie');
INSERT INTO SOUS_THEME VALUES ('Autofiction');
INSERT INTO SOUS_THEME VALUES ('Journal intime');
INSERT INTO SOUS_THEME VALUES ('Mémoires');


INSERT INTO THEME VALUES ('Conte');
INSERT INTO THEME VALUES ('Nouvelles');
INSERT INTO THEME VALUES ('Tragédie');
INSERT INTO THEME VALUES ('Comédie');
INSERT INTO THEME VALUES ('Tragicomédie');
INSERT INTO THEME VALUES ('Farce');


INSERT INTO FRACTIONNER VALUES (1,1);
INSERT INTO FRACTIONNER VALUES (1,2);
INSERT INTO FRACTIONNER VALUES (1,3);
INSERT INTO FRACTIONNER VALUES (2,4);
INSERT INTO FRACTIONNER VALUES (2,5);
INSERT INTO FRACTIONNER VALUES (2,6);
INSERT INTO FRACTIONNER VALUES (2,7);
INSERT INTO FRACTIONNER VALUES (3,8);
INSERT INTO FRACTIONNER VALUES (3,9);
INSERT INTO FRACTIONNER VALUES (4,10);
INSERT INTO FRACTIONNER VALUES (4,11);
INSERT INTO FRACTIONNER VALUES (4,12);
INSERT INTO FRACTIONNER VALUES (4,13);


INSERT INTO PRESTA_DEDIE VALUES ('Merc@net','1','20190514');
INSERT INTO PRESTA_DEDIE VALUES ('E-transactions','1','20190913');
INSERT INTO PRESTA_DEDIE VALUES ('ElysNet','0','20191113');
INSERT INTO PRESTA_DEDIE VALUES ('Sherlock''s','1','20191113');


INSERT INTO TYPE_PAIEMENT VALUES ('CB', 1);
INSERT INTO TYPE_PAIEMENT VALUES ('CB', 2);
INSERT INTO TYPE_PAIEMENT VALUES ('CB', 3);
INSERT INTO TYPE_PAIEMENT VALUES ('CB', 4);


INSERT INTO LIVRE VALUES ('2070584623',2,1,3,'20170219','Harry Potter','à l école des sorciers', 5.26, 'Le jour de ses onze ans, Harry Potter, un orphelin élevé par un oncle et une tante qui le détestent, voit son existence bouleversée. Un géant vient le chercher pour l emmener à Poudlard, une école de sorcellerie !','"C:/Image/couvhp.jpg"','En magasin', 1,2);
INSERT INTO LIVRE VALUES ('2010009274',1,1,3,'20160320','Le crime de l Orient-Express ',null, 5.50, 'Dans l''Orient-Express bloqué par la neige, le fameux détective Hercule Poirot mène l''enquête. Puisque le criminel ne peut être que dans le wagon, il lui faut examiner tous les éléments: les douze voyageurs de nationalités différentes, les douze coups de poignard, et les alibis de chacun...','"C:/Image/couvorient.jpg"','En magasin',1,3);
INSERT INTO LIVRE VALUES ('2290070459',2,2,4,'20150710','Les travaux d Apollon','Le tombeau du tyran', 16.06, 'Pas facile d''être le dieu Apollon, surtout si on vous bannit de l''Olympe avant de vous envoyer sur Terre ! Pour regagner son enveloppe divine (et irrésistible) Apollon doit restaurer les cinq oracles et affronter de nombreux dangers...','"C:/Image/couvapo.jpg"','En magasin',1,5);
INSERT INTO LIVRE VALUES ('2226446400',1,2,4,'20160812','Fairy Tail',null, 3.00, 'Les guildes magiques sont des associations. Elles proposent différentes tâches aux magiciens, allant de la recherche d''un objet à l''attaque en règle. Lucy, une jeune fille, rêve de devenir magicienne. Un jour, elle rencontre Natsu, ce dernier l''invite alors à rejoindre sa guilde...','"C:/Image/couvft.jpg"','En magasin',3,1);
INSERT INTO LIVRE VALUES ('F044840810',2,1,3,'20190909','Astérix','La Fille de Vercingétorix',8.26, 'Escortée par deux chefs arvernes, une mystérieuse adolescente vient d''arriver au village. César et ses légionnaires la recherchent, et pour cause : au village, on murmure que le père de la visiteuse ne serait autre que...','"C:/Image/couvast.jpg"','En magasin',2,6);


INSERT INTO SUBDIVISER VALUES ('2010009274', 1);
INSERT INTO SUBDIVISER VALUES ('2070584623', 3);
INSERT INTO SUBDIVISER VALUES ('2226446400', 3);
INSERT INTO SUBDIVISER VALUES ('2290070459', 1);
INSERT INTO SUBDIVISER VALUES ('F044840810', 1);


INSERT INTO ECRIRE VALUES (1,'2070584623');
INSERT INTO ECRIRE VALUES (4,'2290070459');
INSERT INTO ECRIRE VALUES (3,'2010009274');
INSERT INTO ECRIRE VALUES (5,'2226446400');
INSERT INTO ECRIRE VALUES (6,'F044840810');


INSERT INTO COMMANDE VALUES (1, 3, 1, '20190312', '10.75.240.83', '20190312', 1, 1, 1, 1, 1, '20190512', null, null, null, null)
INSERT INTO COMMANDE VALUES (2, 1, 2, '20190712', '10.75.240.82', '20190712', 1, 2, 2, 2, 2, '20190912', null, null, null, null)
INSERT INTO COMMANDE VALUES (3, 2, 2, '20190912', '10.75.240.81', '20190912', 1, 3, 3, 3, 3, '20191112', null, null, null, null)


INSERT INTO LIGNE_COMMANDE VALUES ('2010009274', 1, 5.50, 2)
INSERT INTO LIGNE_COMMANDE VALUES ('2290070459', 1, 5.26, 2)
INSERT INTO LIGNE_COMMANDE VALUES ('2070584623', 1, 5.26, 4)
INSERT INTO LIGNE_COMMANDE VALUES ('F044840810', 3, 8.26, 2)
INSERT INTO LIGNE_COMMANDE VALUES ('2010009274', 3, 8.26, 2)
INSERT INTO LIGNE_COMMANDE VALUES ('2226446400', 2, 3.00, 2)


INSERT INTO EVALUATION VALUES ('2070584623',null,1,'C''est ici que commence l''aventure de notre célèbre Harry.Un très bon bouquin. Plusieurs niveaux de lecture. Il plaira autant aux plus jeunes qu''aux adultes et autant à ceux qui ont vu le film ou pas.',5,'255.255.255.0',null,null);
INSERT INTO EVALUATION VALUES ('2290070459',null,1,'Très bel ouvrage',4,'134.214.80.12',null,null);
INSERT INTO EVALUATION VALUES ('F044840810',null,3,'Oups...vraiment rien dans cet album d intéressant. ..clin d oeil à Aznavour peut-être. .passez votre chemin..vivement le suivant. .celui ci est à oublier',2,'192.168.1.4',null,null);
INSERT INTO EVALUATION VALUES ('2010009274',null,3,'Un roman sur fond d’amour bien sûr, de doute, de trahison. La fin nous laisse dans l’expectative, nous donne envie de connaître la suite. Dommage qu’il faille attendre la suite qui devrait sortir en français en septembre 2016.',4,'207.142.131.245',null,null);
INSERT INTO EVALUATION VALUES ('2226446400',null,2,'Je ne suis vraiment pas un grand lecteur, et j''ai pourtant dévorer ce manga d''une traite !',4,'86.212.113.159',null,null);


INSERT INTO BANQUE VALUES (4,'LCL','FR7630001007941234567890185');
INSERT INTO BANQUE VALUES (2,'CREDIT AGRICOLE', 'FR7630006000011234567890189');
INSERT INTO BANQUE VALUES (1, 'BNP Paribas','FR7630004000031234567890143');
INSERT INTO BANQUE VALUES (3,'HSBC','FR7610107001011234567890129');


INSERT INTO VISER VALUES (1,3);
INSERT INTO VISER VALUES (2,2);
INSERT INTO VISER VALUES (3,4);
INSERT INTO VISER VALUES (4,5);
INSERT INTO VISER VALUES (5,6);


INSERT INTO CARACTERISER VALUES (9, '2010009274'); 
INSERT INTO CARACTERISER VALUES (10, '2010009274'); 
INSERT INTO CARACTERISER VALUES (5, '2010009274'); 
INSERT INTO CARACTERISER VALUES (6, '2010009274'); 
INSERT INTO CARACTERISER VALUES (8, '2070584623'); 
INSERT INTO CARACTERISER VALUES (4, '2070584623'); 
INSERT INTO CARACTERISER VALUES (7, '2070584623'); 
INSERT INTO CARACTERISER VALUES (12, '2070584623'); 
INSERT INTO CARACTERISER VALUES (15, '2226446400'); 
INSERT INTO CARACTERISER VALUES (7, '2226446400');
INSERT INTO CARACTERISER VALUES (14, '2226446400');
INSERT INTO CARACTERISER VALUES (1, '2226446400');
INSERT INTO CARACTERISER VALUES (4, '2290070459');
INSERT INTO CARACTERISER VALUES (1, '2290070459');
INSERT INTO CARACTERISER VALUES (3, 'F044840810');
INSERT INTO CARACTERISER VALUES (4, 'F044840810');
INSERT INTO CARACTERISER VALUES (1, 'F044840810');

INSERT INTO LIER VALUES ('2010009274', 2);
INSERT INTO LIER VALUES ('2070584623', 8);

