use bd_projet_s4;

-- Sexe de l’athlète : seulement M ou F
ALTER TABLE Athletes
ADD CONSTRAINT chk_sexe
CHECK (a_sexe IN ('M','F'));

-- Le poids d’un athlète doit être positif
ALTER TABLE Athletes
ADD CONSTRAINT chk_poids_athlete
CHECK (a_poids > 0);

-- Le poids d’une catégorie doit être positif
ALTER TABLE Categorie
ADD CONSTRAINT chk_poids_categorie
CHECK (cat_poids > 0);

-- L’âge de catégorie doit être positif
ALTER TABLE Categorie
ADD CONSTRAINT chk_age_categorie
CHECK (cat_age > 0);

-- Un combat doit avoir des scores positifs ou nuls
ALTER TABLE Combats
ADD CONSTRAINT chk_score_positif
CHECK (comb_score_a1 >= 0 AND comb_score_a2 >= 0);

-- Les deux combattants doivent être différents
ALTER TABLE Combats
ADD CONSTRAINT chk_combattants_differents
CHECK (a_id_1 <> a_id_2);

-- Rang de classement positif
ALTER TABLE Classement
ADD CONSTRAINT chk_rang_classement
CHECK (cla_rang_classement > 0);

-- Nombre total de victoires positif
ALTER TABLE Classement
ADD CONSTRAINT chk_victoires
CHECK (cla_nbre_total_vic >= 0);

-- Nombre de participations positif
ALTER TABLE Classement
ADD CONSTRAINT chk_participations
CHECK (cla_nbre_participation >= 0);

-- Numéro de licence sportive unique
ALTER TABLE Athletes
ADD CONSTRAINT unique_licence
UNIQUE (a_num_licence_sportive);