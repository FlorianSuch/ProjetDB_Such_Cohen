use bd_projet_s4;

-- 1. Tables sans dépendances (Clubs, Saisons, Categorie)
INSERT INTO Clubs (cl_id, cl_nom, cl_pays, cl_nom_entraineur) VALUES
(1, 'CDK TEAMS', 'France', 'Marc L.'),
(2, 'Bushido Dojo', 'Japon', 'Kenji S.'),
(3, 'Dragon Martial', 'Chine', 'Li Wei'),
(4, 'Iron Fist', 'USA', 'John D.'),
(5, 'Tiger Muay', 'Thailande', 'Somchai P.'),
(6, 'Brazilian BJJ', 'Brésil', 'Carlos R.'),
(7, 'German Fighters', 'Allemagne', 'Hans M.'),
(8, 'Italian Team', 'Italie', 'Marco V.'),
(9, 'Spartan Gym', 'Grèce', 'Nikos K.'),
(10, 'London Kick', 'UK', 'Paul B.');

INSERT INTO Saisons (s_id, s_nom) VALUES
(1, 'Saison 2023'), (2, 'Saison 2024'), (3, 'Saison 2025'), (4, 'Saison 2026');

INSERT INTO Categorie (cat_id, cat_age, cat_poids, cat_ceinture) VALUES
(1, 18, 60.00, 'Marron'), (2, 20, 70.00, 'Noire'),
(3, 22, 80.00, 'Noire'), (4, 19, 65.00, 'Bleue'), (5, 25, 90.00, 'Noire');

-- 2. Tables avec clés étrangères (Athlètes, Compétitions)
INSERT INTO Athletes (a_id, a_nom, a_prenom, a_date_naissance, a_sexe, a_nationnalite, a_poids, a_grade, a_date_obtention_ceinture, a_num_licence_sportive, cl_id) VALUES
(1, 'Dupont', 'Lucas', '2005-01-10', 'M', 'France', 60.00, 'Marron', '2025-01-01', 101, 1),
(2, 'Bernard', 'Hugo', '2004-02-15', 'M', 'France', 70.00, 'Noire', '2024-06-15', 102, 2),
(3, 'Thomas', 'Theo', '2005-03-20', 'M', 'France', 80.00, 'Noire', '2024-06-15', 103, 3),
(4, 'Petit', 'Marc', '2004-05-20', 'M', 'France', 80.00, 'Noire', '2024-06-15', 104, 4),
(5, 'Robert', 'Paul', '2005-06-10', 'M', 'France', 90.00, 'Noire', '2024-06-15', 105, 5),
(6, 'Richard', 'Tom', '2004-07-25', 'M', 'France', 65.00, 'Bleue', '2025-01-10', 106, 6),
(7, 'Durand', 'Alex', '2005-08-30', 'M', 'France', 75.00, 'Noire', '2024-05-20', 107, 7),
(8, 'Dubois', 'Max', '2004-09-12', 'M', 'France', 85.00, 'Noire', '2024-05-20', 108, 8),
(9, 'Moreau', 'Leo', '2005-10-05', 'M', 'France', 60.00, 'Marron', '2025-02-01', 109, 9),
(10, 'Laurent', 'Enzo', '2004-11-20', 'M', 'France', 70.00, 'Noire', '2024-05-20', 110, 10),
(11, 'Simon', 'Noah', '2005-12-15', 'M', 'France', 80.00, 'Noire', '2024-05-20', 111, 1),
(12, 'Michel', 'Jules', '2004-01-25', 'M', 'France', 90.00, 'Noire', '2024-05-20', 112, 2),
(13, 'Lefebvre', 'Adam', '2005-02-10', 'M', 'France', 65.00, 'Bleue', '2025-02-10', 113, 3),
(14, 'Leroy', 'Louis', '2004-03-05', 'M', 'France', 75.00, 'Noire', '2024-05-20', 114, 4),
(15, 'Roux', 'Yan', '2005-04-12', 'M', 'France', 85.00, 'Noire', '2024-05-20', 115, 5),
(16, 'Martin', 'Léa', '2006-03-12', 'F', 'France', 60.00, 'Bleue', '2025-02-10', 201, 1),
(17, 'Garcia', 'Ana', '2003-08-30', 'F', 'Espagne', 65.00, 'Noire', '2023-11-20', 202, 6),
(18, 'David', 'Eva', '2006-05-12', 'F', 'France', 60.00, 'Marron', '2025-02-10', 203, 7),
(19, 'Bertrand', 'Zoé', '2003-09-20', 'F', 'France', 70.00, 'Noire', '2023-11-20', 204, 8),
(20, 'Fournier', 'Jade', '2006-06-15', 'F', 'France', 65.00, 'Bleue', '2025-02-10', 205, 9),
(21, 'Girard', 'Chloé', '2003-10-10', 'F', 'France', 60.00, 'Marron', '2023-11-20', 206, 10),
(22, 'Bonnet', 'Emma', '2006-07-20', 'F', 'France', 70.00, 'Noire', '2025-02-10', 207, 1),
(23, 'Vincent', 'Sarah', '2003-11-05', 'F', 'France', 65.00, 'Bleue', '2023-11-20', 208, 2),
(24, 'Lefebvre', 'Inès', '2006-08-15', 'F', 'France', 60.00, 'Marron', '2025-02-10', 209, 3),
(25, 'Mercier', 'Rose', '2003-12-20', 'F', 'France', 70.00, 'Noire', '2023-11-20', 210, 4),
(26, 'Blanc', 'Alice', '2006-09-10', 'F', 'France', 65.00, 'Bleue', '2025-02-10', 211, 5),
(27, 'Guérin', 'Nina', '2003-01-25', 'F', 'France', 60.00, 'Marron', '2023-11-20', 212, 6),
(28, 'Boyer', 'Lina', '2006-10-05', 'F', 'France', 70.00, 'Noire', '2025-02-10', 213, 7),
(29, 'Fontaine', 'Luna', '2003-02-10', 'F', 'France', 65.00, 'Bleue', '2023-11-20', 214, 8),
(30, 'Deschamps', 'Clara', '2006-11-20', 'F', 'France', 60.00, 'Marron', '2025-02-10', 215, 9);

INSERT INTO Competitions (comp_id, comp_nom, comp_date, comp_ville, comp_pays, s_id) VALUES
(1, 'Open Paris', '2024-10-10', 'Paris', 'France', 2),
(2, 'Grand Slam Tokyo', '2025-01-15', 'Tokyo', 'Japon', 3),
(3, 'Tournoi Mondial', '2025-05-20', 'Londres', 'UK', 3),
(4, 'Coupe Europe', '2025-09-10', 'Berlin', 'Allemagne', 3),
(5, 'Open Rome', '2026-02-10', 'Rome', 'Italie', 4),
(6, 'Fight Night', '2026-04-12', 'Athènes', 'Grèce', 4),
(7, 'Masters BJJ', '2026-06-05', 'Rio', 'Brésil', 4),
(8, 'Global Cup', '2026-08-20', 'Pékin', 'Chine', 4);

-- 3. Tables de relations (Combats, Classement, Inscription)
INSERT INTO Combats (comb_id, comb_score_a1, comb_score_a2, comb_type_victoire, a_id, a_id_1, a_id_2, comp_id) VALUES
(1, 10, 2, 'Points', 1, 1, 2, 1), (2, 5, 0, 'KO', 3, 3, 4, 1),
(3, 8, 4, 'Points', 5, 5, 6, 2), (4, 12, 1, 'KO', 7, 7, 8, 2),
(5, 3, 2, 'Points', 9, 9, 10, 3), (6, 6, 6, 'Egalité', 11, 11, 12, 3),
(7, 10, 5, 'Points', 13, 13, 14, 4), (8, 9, 0, 'KO', 15, 15, 1, 4),
(9, 4, 3, 'Points', 16, 16, 17, 5), (10, 7, 2, 'Points', 18, 18, 19, 6),
(11, 10, 8, 'Points', 20, 20, 21, 7), (12, 5, 1, 'KO', 22, 22, 23, 8);

INSERT INTO Classement (cla_id, cla_rang_classement, cla_nbre_total_vic, cla_nbre_participation, s_id, a_id, cat_id) VALUES
(1, 1, 10, 12, 3, 1, 1), (2, 2, 8, 11, 3, 2, 2), (3, 3, 7, 10, 3, 3, 3),
(4, 4, 6, 9, 3, 4, 4), (5, 5, 5, 8, 3, 5, 5), (6, 6, 4, 7, 2, 6, 1),
(7, 7, 3, 6, 2, 7, 2), (8, 8, 2, 5, 2, 8, 3), (9, 9, 1, 4, 2, 9, 4), (10, 10, 0, 3, 2, 10, 5);

INSERT INTO Inscription (a_id, comp_id, cat_id) VALUES
(1, 1, 1), (2, 1, 2), (3, 2, 3), (4, 2, 4), (5, 3, 5),
(6, 3, 1), (7, 4, 2), (8, 4, 3), (9, 5, 4), (10, 5, 5),
(11, 6, 1), (12, 6, 2), (13, 7, 3), (14, 7, 4), (15, 8, 5);