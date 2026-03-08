use bd_projet_s4;

CREATE TABLE Clubs(
	cl_id smallint,
    cl_nom varchar(50),
    cl_pays varchar(50),
    cl_nom_entraineur varchar(50),
    primary key(cl_id)
);

CREATE TABLE Saisons(
	s_id smallint,
    s_nom varchar(50),
    primary key(s_id)
);

CREATE TABLE Categorie(
	cat_id smallint,
    cat_age smallint,
    cat_poids decimal(15,2),
    cat_ceinture varchar(50),
    primary key(cat_id)
);

CREATE TABLE Athletes(
	a_id smallint,
    a_nom varchar(50),
    a_prenom varchar(50),
    a_date_naissance date,
    a_sexe char(1),
    a_nationnalite varchar(50),
    a_poids decimal(15,2),
    a_grade varchar(50),
    a_date_obtention_ceinture date,
    a_num_licence_sportive smallint,
    cl_id smallint NOT NULL,
    primary key(a_id),
    foreign key(cl_id) references Clubs(cl_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Competitions(
	comp_id smallint,
    comp_nom varchar(50),
    comp_date date,
    comp_ville varchar(50),
    comp_pays varchar(50),
    s_id smallint NOT NULL,
    primary key(comp_id),
    foreign key(s_id) references Saisons (s_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Combats(
	comb_id smallint,
    comb_score_a1 smallint,
    comb_score_a2 smallint,
    comb_type_victoire varchar(50),
    a_id smallint,
    a_id_1 smallint NOT NULL,
    a_id_2 smallint NOT NULL,
    comp_id smallint NOT NULL,
    primary key(comb_id),
    foreign key(a_id) references Athletes (a_id) ON DELETE CASCADE ON UPDATE CASCADE,
    foreign key(a_id_1) references Athletes (a_id) ON DELETE CASCADE ON UPDATE CASCADE,
    foreign key(a_id_2) references Athletes (a_id) ON DELETE CASCADE ON UPDATE CASCADE,
    foreign key(comp_id) references Competitions (comp_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Classement(
	cla_id smallint,
    cla_rang_classement smallint,
    cla_nbre_total_vic smallint,
    cla_nbre_participation smallint,
    s_id smallint,
    a_id smallint NOT NULL,
    cat_id smallint NOT NULL,
    primary key(cla_id),
    foreign key(s_id) references Saisons (s_id) ON DELETE CASCADE ON UPDATE CASCADE,
    foreign key(a_id) references Athletes (a_id) ON DELETE CASCADE ON UPDATE CASCADE,
    foreign key(cat_id) references Categorie (cat_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Inscription(
	a_id smallint,
    comp_id smallint,
    cat_id smallint,
    primary key(a_id, comp_id, cat_id),
    foreign key(a_id) references Athletes (a_id) ON DELETE CASCADE ON UPDATE CASCADE,
    foreign key(comp_id) references Competitions (comp_id) ON DELETE CASCADE ON UPDATE CASCADE,
    foreign key(cat_id) references Categorie (cat_id) ON DELETE CASCADE ON UPDATE CASCADE
);