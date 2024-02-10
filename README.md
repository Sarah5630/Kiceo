## Table des matières ##
    1. Installation base de données
    2. Conception
    3. Références

##  1. Installation base de données

Dans le bash, se placer dans le répertoire où se trouve votre script

Executer la commande suivante pour la création de la base de données : 

mysql -h localhost -u root -p <schema.sql;

Ensuite, pour insérer le jeu de données, executer la commande suivante : 

mysql -h localhost -u root -p <data.sql;

Pour effectuer les requêtes, exectuter la commande suivante : 

mysql -h localhost -u root -p <requetes.sql;



## 2. Conception

    -- Modèle conceptuel des données : 
        cf MCD_Kiceo 

    -- Modèle logique des données : 
        cf: MLD_Kiceo

    -- Dictionnaire des données : 

mysql> describe Horaire;
+-----------------+------+------+-----+---------+----------------+
| Field           | Type | Null | Key | Default | Extra          |
+-----------------+------+------+-----+---------+----------------+
| id_horaire      | int  | NO   | PRI | NULL    | auto_increment |
| horaire_passage | time | YES  |     | NULL    |                |
| id_ligne        | int  | NO   | MUL | NULL    |                |
| id_station      | int  | NO   | MUL | NULL    |                |
| id_jour         | int  | NO   | MUL | NULL    |                |
+-----------------+------+------+-----+---------+----------------+

mysql> describe Jour;
+----------+-------------+------+-----+---------+----------------+
| Field    | Type        | Null | Key | Default | Extra          |
+----------+-------------+------+-----+---------+----------------+
| id_jour  | int         | NO   | PRI | NULL    | auto_increment |
| nom_jour | varchar(32) | YES  |     | NULL    |                |
+----------+-------------+------+-----+---------+----------------+

mysql> describe Ligne;
+--------------+------+------+-----+---------+----------------+
| Field        | Type | Null | Key | Default | Extra          |
+--------------+------+------+-----+---------+----------------+
| id_ligne     | int  | NO   | PRI | NULL    | auto_increment |
| numero_ligne | int  | YES  |     | NULL    |                |
+--------------+------+------+-----+---------+----------------+

mysql> describe Station;
+-------------+-------------+------+-----+---------+----------------+
| Field       | Type        | Null | Key | Default | Extra          |
+-------------+-------------+------+-----+---------+----------------+
| id_station  | int         | NO   | PRI | NULL    | auto_increment |
| nom_station | varchar(32) | YES  |     | NULL    |                |
+-------------+-------------+------+-----+---------+----------------+


## 3. Références

Documentation MySql: 
https://dev.mysql.com/doc/refman/8.0/en/

Cours Sql : MyDigitalSchool

Cours Sql : https://sql.sh/

Chat Gpt : https://chat.openai.com/




