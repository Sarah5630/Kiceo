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

##### Horaire ####
|-----------------|--------------------|
| Field           | Type               | 
|-----------------|--------------------|
| id_horaire      | INT  auto_increment|
| horaire_passage | TIME               |
| id_ligne        | INT                | 
| id_station      | INT                | 
| id_jour         | INT                | 
|-----------------|--------------------|

#### Jour ####
|----------|---------------------|
| Field    | Type                | 
|----------|---------------------|
| id_jour  | INT auto_increment  | 
| nom_jour | VARCHAR(32)         | 
|----------|---------------------|

#### Ligne ####
|--------------|----------------------|
| Field        | Type                 | 
|--------------|----------------------|
| id_ligne     | INT auto_increment   |
| numero_ligne | INT                  |
|--------------|----------------------|

#### Station ####
|-------------|--------------------|
| Field       | Type               | 
|-------------|--------------------|
| id_station  | INT auto_increment |
| nom_station | VARCHAR(32)        |  
|-------------|--------------------|



## 3. Références

Documentation MySql: 
https://dev.mysql.com/doc/refman/8.0/en/

Cours Sql : MyDigitalSchool

Cours Sql : https://sql.sh/

Chat Gpt : https://chat.openai.com/




