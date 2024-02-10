USE kiceo;

-- Requête pour afficher la table des horaires dans l'ordre chronologique à l'arrêt Madeleine

SELECT horaire_passage AS "Horaires à l'arrêt Madeleine (lundi)" 
FROM Horaire AS H
INNER JOIN Station AS S 
ON H.id_station = S.id_station 
INNER JOIN Jour AS J
ON H.id_jour = J.id_jour
WHERE S.nom_station = 'Madeleine' AND J.nom_jour = 'Lundi'
ORDER BY H.horaire_passage;


-- Requête pour afficher la table des horaires dans l'ordre chronologique à l'arrêt République

SELECT horaire_passage AS "Horaires à l'arrêt République (lundi)" 
FROM Horaire AS H
INNER JOIN Station AS S 
ON H.id_station = S.id_station 
INNER JOIN Jour AS J
ON H.id_jour = J.id_jour
WHERE S.nom_station = 'République' AND J.nom_jour = 'Lundi'
ORDER BY H.horaire_passage;

-- Requête pour afficher le parcours complet de la ligne 2 direction Kersec

SELECT nom_station AS "Parcours de la ligne 2 direction Kersec" 
FROM Station AS S
INNER JOIN Horaire AS H
ON S.id_station = H.id_station
GROUP BY nom_station
ORDER BY MIN(horaire_passage);


-- Requête pour afficher les horaires à l'arrêt Petit Tohannic (Lundi) qui précise l'arrêt
-- auquel se reporter. 
-- WHEN EXISTS permet de vérifier si au moins une ligne est renvoyée par la sous-requête. 

SELECT 
    CASE
        WHEN EXISTS (
            SELECT 1
            FROM Horaire AS H
            INNER JOIN Station AS S 
            ON H.id_station = S.id_station 
            INNER JOIN Jour AS J ON H.id_jour = J.id_jour
            WHERE S.nom_station = 'Petit Tohannic' AND J.nom_jour = 'Lundi'
        ) THEN "L\'arrêt n\'est pas desservi. Veuillez vous reporter à l\'arrêt Delestraint."
    END AS "Horaires à l'arrêt Petit Tohannic (Lundi)";


-- Requête pour afficher le parcours complet de la ligne 2 direction P+R Ouest

SELECT nom_station AS "Parcours de la ligne 2 direction P+R Ouest" 
FROM Station AS S
INNER JOIN Horaire AS H
ON S.id_station = H.id_station
GROUP BY nom_station
ORDER BY MIN(horaire_passage) DESC;



-- Requête pour afficher le parcours complet de la ligne 2 dans les 2 sens

SELECT
    '2 Direction Kersec' AS Ligne,
    GROUP_CONCAT(nom_station ORDER BY premier_trajet SEPARATOR ',') AS 'Arrêts desservis'
FROM
    (
        SELECT
            S.nom_station,
            MIN(H.horaire_passage) AS premier_trajet
        FROM
            Station AS S
        INNER JOIN
            Horaire AS H ON S.id_station = H.id_station
        WHERE
            H.id_ligne = (SELECT id_ligne FROM Ligne WHERE numero_ligne = 2)
        AND
            H.id_jour = (SELECT id_jour FROM Jour WHERE nom_jour = 'Lundi')
        GROUP BY
            S.nom_station
    ) AS direction_kersec

UNION

SELECT
    '2 Direction P+R Ouest' AS Ligne,
    GROUP_CONCAT(nom_station ORDER BY premier_trajet DESC SEPARATOR ',') AS 'Arrêts desservis'
FROM
    (
        SELECT
            S.nom_station,
            MIN(H.horaire_passage) AS premier_trajet
        FROM
            Station AS S
        INNER JOIN
            Horaire AS H ON S.id_station = H.id_station
        WHERE
            H.id_ligne = (SELECT id_ligne FROM Ligne WHERE numero_ligne = 2)
        AND
            H.id_jour = (SELECT id_jour FROM Jour WHERE nom_jour = 'Lundi') 
        GROUP BY
            S.nom_station
    ) AS direction_pr_ouest;
