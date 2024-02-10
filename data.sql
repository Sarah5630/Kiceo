Use kiceo;


DELETE FROM Horaire;
DELETE FROM stationsDesservies;
DELETE FROM joursCirculation;
DELETE FROM Ligne;
DELETE FROM Station;
DELETE FROM Jour;



-- Insertion des noms de stations

INSERT INTO
    Station (
        nom_station
    )
VALUES
    ('P+R Ouest'),
    ('Fourchêne 1'),
    ('Madeleine'),
    ('République'),
    ('PIBS 2'),
    ('Petit Tohannic'),
    ('Delestraint'),
    ('Kersec');

-- Insertion des numéros de ligne

INSERT INTO 
    Ligne (
        numero_ligne
    )
VALUES
    (2);

-- Insertion des jours de la semaine

INSERT INTO
    Jour (
        nom_jour
    )
VALUES
    ('Lundi'),
    ('Mardi'),
    ('Mercredi'),
    ('Jeudi'),
    ('Vendredi');



-- Insertion des horaires

INSERT INTO 
    Horaire (
        horaire_passage,
        id_ligne,
        id_station,
        id_jour
    )
VALUES

-- Horaires station P+R Ouest pour la ligne 2 lundi

    ('06:32:00', 1, 1, 1),
    ('06:42:00', 1, 1, 1),
    ('06:52:00', 1, 1, 1),
    ('07:00:00', 1, 1, 1),
    ('07:10:00', 1, 1, 1),

-- Horaires station P+R Ouest pour la ligne 2 mardi

    ('06:32:00', 1, 1, 2),
    ('06:42:00', 1, 1, 2),
    ('06:52:00', 1, 1, 2),
    ('07:00:00', 1, 1, 2),
    ('07:10:00', 1, 1, 2),

-- Horaires station P+R Ouest pour la ligne 2 mercredi

    ('06:32:00', 1, 1, 3),
    ('06:42:00', 1, 1, 3),
    ('06:52:00', 1, 1, 3),
    ('07:00:00', 1, 1, 3),
    ('07:10:00', 1, 1, 3),

-- Horaires station P+R Ouest pour la ligne 2 jeudi

    ('06:32:00', 1, 1, 4),
    ('06:42:00', 1, 1, 4),
    ('06:52:00', 1, 1, 4),
    ('07:00:00', 1, 1, 4),
    ('07:10:00', 1, 1, 4),

-- Horaires station P+R Ouest pour la ligne 2 vendredi

    ('06:32:00', 1, 1, 5),
    ('06:42:00', 1, 1, 5),
    ('06:52:00', 1, 1, 5),
    ('07:00:00', 1, 1, 5),
    ('07:10:00', 1, 1, 5),

-- Horaires station Fourchêne pour la ligne 2 lundi

    ('06:34:00', 1, 2, 1),
    ('06:44:00', 1, 2, 1),
    ('06:54:00', 1, 2, 1),
    ('07:02:00', 1, 2, 1),
    ('07:12:00', 1, 2, 1),

-- Horaires station Fourchêne pour la ligne 2 mardi

    ('06:34:00', 1, 2, 2),
    ('06:44:00', 1, 2, 2),
    ('06:54:00', 1, 2, 2),
    ('07:02:00', 1, 2, 2),
    ('07:12:00', 1, 2, 2),

-- Horaires station Fourchêne pour la ligne 2 mercredi

    ('06:34:00', 1, 2, 3),
    ('06:44:00', 1, 2, 3),
    ('06:54:00', 1, 2, 3),
    ('07:02:00', 1, 2, 3),
    ('07:12:00', 1, 2, 3),

-- Horaires station Fourchêne pour la ligne 2 jeudi

    ('06:34:00', 1, 2, 4),
    ('06:44:00', 1, 2, 4),
    ('06:54:00', 1, 2, 4),
    ('07:02:00', 1, 2, 4),
    ('07:12:00', 1, 2, 4),

-- Horaires station Fourchêne pour la ligne 2 vendredi

    ('06:34:00', 1, 2, 5),
    ('06:44:00', 1, 2, 5),
    ('06:54:00', 1, 2, 5),
    ('07:02:00', 1, 2, 5),
    ('07:12:00', 1, 2, 5),

-- Horaires station Madeleine pour la ligne 2 lundi

    ('06:37:00', 1, 3, 1),
    ('06:47:00', 1, 3, 1),
    ('06:57:00', 1, 3, 1),
    ('07:06:00', 1, 3, 1),
    ('07:16:00', 1, 3, 1),

-- Horaires station Madeleine pour la ligne 2 mardi

    ('06:37:00', 1, 3, 2),
    ('06:47:00', 1, 3, 2),
    ('06:57:00', 1, 3, 2),
    ('07:06:00', 1, 3, 2),
    ('07:16:00', 1, 3, 2),

-- Horaires station Madeleine pour la ligne 2 mercredi

    ('06:37:00', 1, 3, 3),
    ('06:47:00', 1, 3, 3),
    ('06:57:00', 1, 3, 3),
    ('07:06:00', 1, 3, 3),
    ('07:16:00', 1, 3, 3),

-- Horaires station Madeleine pour la ligne 2 jeudi

    ('06:37:00', 1, 3, 4),
    ('06:47:00', 1, 3, 4),
    ('06:57:00', 1, 3, 4),
    ('07:06:00', 1, 3, 4),
    ('07:16:00', 1, 3, 4),

-- Horaires station Madeleine pour la ligne 2 vendredi

    ('06:37:00', 1, 3, 5),
    ('06:47:00', 1, 3, 5),
    ('06:57:00', 1, 3, 5),
    ('07:06:00', 1, 3, 5),
    ('07:16:00', 1, 3, 5),

-- Horaires station République pour la ligne 2 lundi

    ('06:42:00', 1, 4, 1),
    ('06:52:00', 1, 4, 1),
    ('07:02:00', 1, 4, 1),
    ('07:12:00', 1, 4, 1),
    ('07:22:00', 1, 4, 1),

-- Horaires station République pour la ligne 2 mardi

    ('06:42:00', 1, 4, 2),
    ('06:52:00', 1, 4, 2),
    ('07:02:00', 1, 4, 2),
    ('07:12:00', 1, 4, 2),
    ('07:22:00', 1, 4, 2),

-- Horaires station République pour la ligne 2 mercredi

    ('06:42:00', 1, 4, 3),
    ('06:52:00', 1, 4, 3),
    ('07:02:00', 1, 4, 3),
    ('07:12:00', 1, 4, 3),
    ('07:22:00', 1, 4, 3),

-- Horaires station République pour la ligne 2 jeudi

    ('06:42:00', 1, 4, 4),
    ('06:52:00', 1, 4, 4),
    ('07:02:00', 1, 4, 4),
    ('07:12:00', 1, 4, 4),
    ('07:22:00', 1, 4, 4),

-- Horaires station République pour la ligne 2 vendredi

    ('06:42:00', 1, 4, 4),
    ('06:52:00', 1, 4, 4),
    ('07:02:00', 1, 4, 4),
    ('07:12:00', 1, 4, 4),
    ('07:22:00', 1, 4, 4),

-- Horaires station PIBS 2 pour la ligne 2 lundi

    ('06:46:00', 1, 5, 1),
    ('06:56:00', 1, 5, 1),
    ('07:07:00', 1, 5, 1),
    ('07:17:00', 1, 5, 1),
    ('07:27:00', 1, 5, 1),

-- Horaires station PIBS 2 pour la ligne 2 mardi

    ('06:46:00', 1, 5, 2),
    ('06:56:00', 1, 5, 2),
    ('07:07:00', 1, 5, 2),
    ('07:17:00', 1, 5, 2),
    ('07:27:00', 1, 5, 2),

-- Horaires station PIBS 2 pour la ligne 2 mercredi

    ('06:46:00', 1, 5, 3),
    ('06:56:00', 1, 5, 3),
    ('07:07:00', 1, 5, 3),
    ('07:17:00', 1, 5, 3),
    ('07:27:00', 1, 5, 3),

-- Horaires station PIBS 2 pour la ligne 2 jeudi

    ('06:46:00', 1, 5, 4),
    ('06:56:00', 1, 5, 4),
    ('07:07:00', 1, 5, 4),
    ('07:17:00', 1, 5, 4),
    ('07:27:00', 1, 5, 4),

-- Horaires station PIBS 2 pour la ligne 2 vendredi

    ('06:46:00', 1, 5, 4),
    ('06:56:00', 1, 5, 4),
    ('07:07:00', 1, 5, 4),
    ('07:17:00', 1, 5, 4),
    ('07:27:00', 1, 5, 4),

-- Horaires station Petit Tohannic pour la ligne 2 lundi

    ('06:50:00', 1, 6, 1),
    ('07:00:00', 1, 6, 1),
    ('07:11:00', 1, 6, 1),
    ('07:21:00', 1, 6, 1),
    ('07:31:00', 1, 6, 1),

-- Horaires station Petit Tohannic pour la ligne 2 mardi

    ('06:50:00', 1, 6, 2),
    ('07:00:00', 1, 6, 2),
    ('07:11:00', 1, 6, 2),
    ('07:21:00', 1, 6, 2),
    ('07:31:00', 1, 6, 2),

-- Horaires station Petit Tohannic pour la ligne 2 mercredi

    ('06:50:00', 1, 6, 3),
    ('07:00:00', 1, 6, 3),
    ('07:11:00', 1, 6, 3),
    ('07:21:00', 1, 6, 3),
    ('07:31:00', 1, 6, 3),

-- Horaires station Petit Tohannic pour la ligne 2 jeudi

    ('06:50:00', 1, 6, 4),
    ('07:00:00', 1, 6, 4),
    ('07:11:00', 1, 6, 4),
    ('07:21:00', 1, 6, 4),
    ('07:31:00', 1, 6, 4),

-- Horaires station Petit Tohannic pour la ligne 2 vendredi

    ('06:50:00', 1, 6, 4),
    ('07:00:00', 1, 6, 4),
    ('07:11:00', 1, 6, 4),
    ('07:21:00', 1, 6, 4),
    ('07:31:00', 1, 6, 4),

-- Horaires station Delestraint pour la ligne 2 lundi

    ('06:51:00', 1, 7, 1),
    ('07:01:00', 1, 7, 1),
    ('07:12:00', 1, 7, 1),
    ('07:22:00', 1, 7, 1),
    ('07:32:00', 1, 7, 1),

-- Horaires station Delestraint pour la ligne 2 mardi

    ('06:51:00', 1, 7, 2),
    ('07:01:00', 1, 7, 2),
    ('07:12:00', 1, 7, 2),
    ('07:22:00', 1, 7, 2),
    ('07:32:00', 1, 7, 2),

-- Horaires station Delestraint pour la ligne 2 mercredi

    ('06:51:00', 1, 7, 3),
    ('07:01:00', 1, 7, 3),
    ('07:12:00', 1, 7, 3),
    ('07:22:00', 1, 7, 3),
    ('07:32:00', 1, 7, 3),

-- Horaires station Delestraint pour la ligne 2 jeudi

    ('06:51:00', 1, 7, 4),
    ('07:01:00', 1, 7, 4),
    ('07:11:00', 1, 7, 4),
    ('07:22:00', 1, 7, 4),
    ('07:32:00', 1, 7, 4),

-- Horaires station Delestraint pour la ligne 2 vendredi

    ('06:51:00', 1, 7, 4),
    ('07:01:00', 1, 7, 4),
    ('07:12:00', 1, 7, 4),
    ('07:22:00', 1, 7, 4),
    ('07:32:00', 1, 7, 4),

-- Horaires station Kersec pour la ligne 2 lundi

    ('06:55:00', 1, 8, 1),
    ('07:05:00', 1, 8, 1),
    ('07:16:00', 1, 8, 1),
    ('07:26:00', 1, 8, 1),
    ('07:36:00', 1, 8, 1),

-- Horaires station Kersec pour la ligne 2 mardi

    ('06:55:00', 1, 8, 2),
    ('07:05:00', 1, 8, 2),
    ('07:16:00', 1, 8, 2),
    ('07:26:00', 1, 8, 2),
    ('07:36:00', 1, 8, 2),

-- Horaires station Kersec pour la ligne 2 mercredi

    ('06:55:00', 1, 8, 3),
    ('07:05:00', 1, 8, 3),
    ('07:16:00', 1, 8, 3),
    ('07:26:00', 1, 8, 3),
    ('07:36:00', 1, 8, 3),

-- Horaires station Kersec pour la ligne 2 jeudi

    ('06:55:00', 1, 8, 4),
    ('07:05:00', 1, 8, 4),
    ('07:16:00', 1, 8, 4),
    ('07:26:00', 1, 8, 4),
    ('07:36:00', 1, 8, 4),

-- Horaires station Kersec pour la ligne 2 vendredi

    ('06:55:00', 1, 8, 4),
    ('07:05:00', 1, 8, 4),
    ('07:16:00', 1, 8, 4),
    ('07:26:00', 1, 8, 4),
    ('07:36:00', 1, 8, 4);