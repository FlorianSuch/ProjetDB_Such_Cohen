use bd_projet_s4;

-- Test
Select * from athletes;
Select * from categorie;
Select * from classement;
Select * from clubs;
Select * from combats;
Select * from competitions;
Select * from inscription;
Select * from saisons;

-- Interrogation

-- I. PROJECTIONS, SÉLECTIONS, TRIS ET MASQUES (5 requêtes)
-- 1. Liste des athlètes masculins nés avant 2005, triés par nom
SELECT a_nom, a_prenom, a_date_naissance FROM Athletes WHERE a_sexe = 'M' AND a_date_naissance < '2005-01-01' ORDER BY a_nom ASC;

-- 2. Liste des clubs basés en France ou au Japon (utilisation de IN)
SELECT cl_nom, cl_pays FROM Clubs WHERE cl_pays IN ('France', 'Japon');

-- 3. Athlètes dont le nom commence par 'D' (utilisation de masque LIKE)
SELECT a_nom, a_prenom FROM Athletes WHERE a_nom LIKE 'D%';

-- 4. Catégories dont le poids limite est compris entre 60 et 80 kg (utilisation de BETWEEN)
SELECT * FROM Categorie WHERE cat_poids BETWEEN 60 AND 80;

-- 5. Liste unique des grades (ceintures) possédés par les athlètes (DISTINCT)
SELECT DISTINCT a_grade FROM Athletes;

-- II. FONCTIONS D'AGRÉGATION, GROUP BY ET HAVING (5 requêtes)
-- 6. Nombre total d'athlètes par club
SELECT cl_id, COUNT(*) AS nb_athletes FROM Athletes GROUP BY cl_id;

-- 7. Poids moyen des athlètes par nationalité
SELECT a_nationnalite, AVG(a_poids) AS poids_moyen FROM Athletes GROUP BY a_nationnalite;

-- 8. Somme des scores totaux marqués par l'athlète n°1 (a_id_1) lors de ses combats
SELECT SUM(comb_score_a1) AS total_points_marques FROM Combats WHERE a_id_1 = 1;

-- 9. Nationalités représentées par plus de 2 athlètes (utilisation de HAVING)
SELECT a_nationnalite, COUNT(*) FROM Athletes GROUP BY a_nationnalite HAVING COUNT(*) > 2;

-- 10. Nombre de compétitions organisées par ville
SELECT comp_ville, COUNT(*) AS nb_competitions FROM Competitions GROUP BY comp_ville;

-- III. JOINTURES INTERNES, EXTERNES ET MULTIPLES (5 requêtes)
-- 11. Afficher le nom des athlètes et le nom de leur club respectif (Jointure Interne)
SELECT A.a_nom, A.a_prenom, C.cl_nom FROM Athletes A JOIN Clubs C ON A.cl_id = C.cl_id;

-- 12. Détails des combats avec noms du vainqueur et de la compétition (Jointure Multiple)
SELECT Co.comb_id, A.a_nom AS vainqueur, Comp.comp_nom FROM Combats Co JOIN Athletes A ON Co.a_id = A.a_id JOIN Competitions Comp ON Co.comp_id = Comp.comp_id;

-- 13. Liste des inscriptions montrant l'athlète, la compétition et la catégorie (Jointure Multiple)
SELECT Ath.a_nom, Comp.comp_nom, Cat.cat_ceinture FROM Inscription I JOIN Athletes Ath ON I.a_id = Ath.a_id JOIN Competitions Comp ON I.comp_id = Comp.comp_id JOIN Categorie Cat ON I.cat_id = Cat.cat_id;

-- 14. Afficher tous les clubs, même ceux qui n'auraient pas d'athlètes (LEFT JOIN)
SELECT C.cl_nom, A.a_nom FROM Clubs C LEFT JOIN Athletes A ON C.cl_id = A.cl_id;

-- 15. Liste des athlètes et le nom de la saison de leur classement
SELECT Ath.a_nom, S.s_nom, Cla.cla_rang_classement FROM Classement Cla JOIN Athletes Ath ON Cla.a_id = Ath.a_id JOIN Saisons S ON Cla.s_id = S.s_id;

-- IV. REQUÊTES IMBRIQUÉES (5 requêtes)
-- 16. Athlètes qui n'ont jamais participé à un combat (NOT IN)
SELECT a_nom, a_prenom FROM Athletes WHERE a_id NOT IN (SELECT a_id_1 FROM Combats UNION SELECT a_id_2 FROM Combats);

-- 17. Athlètes appartenant à un club dont le coach est 'Marc L.' (utilisation de IN)
SELECT a_nom, a_prenom FROM Athletes WHERE cl_id IN (SELECT cl_id FROM Clubs WHERE cl_nom_entraineur = 'Marc L.');

-- 18. Trouver les athlètes ayant un poids supérieur à la moyenne globale (Sous-requête simple)
SELECT a_nom, a_poids FROM Athletes WHERE a_poids > (SELECT AVG(a_poids) FROM Athletes);

-- 19. Compétitions pour lesquelles il existe au moins un combat fini par KO (EXISTS)
SELECT comp_nom FROM Competitions Comp WHERE EXISTS (SELECT 1 FROM Combats Comb WHERE Comb.comp_id = Comp.comp_id AND comb_type_victoire = 'KO');

-- 20. Athlète ayant le plus grand nombre de victoires (utilisation de ALL)
SELECT a_id, cla_nbre_total_vic FROM Classement WHERE cla_nbre_total_vic >= ALL (SELECT cla_nbre_total_vic FROM Classement);

-- Suppression
DROP TABLE IF EXISTS Inscription;
DROP TABLE IF EXISTS Classement;
DROP TABLE IF EXISTS Combats;
DROP TABLE IF EXISTS Competitions;
DROP TABLE IF EXISTS Athletes;
DROP TABLE IF EXISTS Categorie;
DROP TABLE IF EXISTS Saisons;
DROP TABLE IF EXISTS Clubs;