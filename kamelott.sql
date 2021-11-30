Le prénom, nom des personnages ainsi que leur royaume,
 uniquement pour ceux étant reliés à un royaume

select firstname,name from person
join kingdom on kingdom.id=person.kingdom_id;

+-------------+---------------+-----+
| firstname   | lastname      | age |
+-------------+---------------+-----+
| Arthur      | Pendragon     |  35 |
| Guenièvre   | NULL          |  30 |
| Merlin      | NULL          | 850 |
| Perceval    | NULL          |  36 |
| Caradoc     | NULL          |  32 |
| Calogrenant | NULL          |  44 |
| Leodagan    | NULL          |  47 |
| Lancelot    | Du Lac        |  33 |
| Elias       | De Kelliwic'h |  52 |
| Mevanwi     |               |  28 |
| Yvain       |               |  23 |
+-------------+---------------+-----+

==================================================

Ecrire la requête qui permet d'afficher
La même chose en incluant tous les personnages


select firstname,
name from person left join kingdom on kingdom.id=person.kingdom_id;



+-------------+-----------+
| firstname   | name      |
+-------------+-----------+
| Arthur      | Logre     |
| Guenièvre   | Carmelide |
| Merlin      | NULL      |
| Perceval    | Galles    |
| Caradoc     | Vannes    |
| Calogrenant | Caledonie |
| Leodagan    | Carmelide |
| Lancelot    | NULL      |
| Elias       | NULL      |
| Mevanwi     | Vannes    |
| Yvain       | Carmelide |
+-------------+-----------+

==============================================

Ecrire la requête qui permet d'afficher
La moyenne de l'âge des personnages

select round(avg(age),0) from person;

+-------------------+
| round(avg(age),0) |
+-------------------+
|               110 |
+-------------------+

===============================================

Ecrire la requête qui permet d'afficher
Le nombre de personnage par royaume 
(inclure les royaumes n’ayant pas de personnage)

select name,count(kingdom_id) from person
right join kingdom on kingdom.id = person.kingdom_id group by name;

+-----------+-------------------+
| name      | count(kingdom_id) |
+-----------+-------------------+
| Logre     |                 1 |
| Caledonie |                 1 |
| Carmelide |                 3 |
| Vannes    |                 2 |
| Galles    |                 1 |
| Aquitaine |                 0 |
+-----------+-------------------+

====================================================

La moyenne de l’âge par rôle

select role,round(avg(age),0) from person
join role on role.id=person.role_id group by role;

+-----------+-------------------+
| role      | round(avg(age),0) |
+-----------+-------------------+
| roi       |                42 |
| chevalier |                31 |
| magicien  |               451 |
+-----------+-------------------+


========================================================

La liste de tous les personnages avec leur rôle et royaume éventuels

SELECT firstname, lastname, role, name FROM person 
left  JOIN role on role.id = person.role_id 
left JOIN kingdom on kingdom.id = person.kingdom_id    
GROUP BY firstname, lastname, role, name;

+-------------+---------------+-----------+-----------+
| firstname   | lastname      | role      | name      |
+-------------+---------------+-----------+-----------+
| Arthur      | Pendragon     | roi       | Logre     |
| Guenièvre   | NULL          | NULL      | Carmelide |
| Merlin      | NULL          | magicien  | NULL      |
| Perceval    | NULL          | chevalier | Galles    |
| Caradoc     | NULL          | chevalier | Vannes    |
| Calogrenant | NULL          | roi       | Caledonie |
| Leodagan    | NULL          | roi       | Carmelide |
| Lancelot    | Du Lac        | chevalier | NULL      |
| Elias       | De Kelliwic'h | magicien  | NULL      |
| Mevanwi     |               | NULL      | Vannes    |
| Yvain       |               | chevalier | Carmelide |
+-------------+---------------+-----------+-----------+

======================================================

La liste des royaumes ayant au moins 2 sujets

select name,count(kingdom_id) from person
right join kingdom on kingdom.id = person.kingdom_id group by name 
having count(kingdom_id) >=2;

+-----------+-------------------+
| name      | count(kingdom_id) |
+-----------+-------------------+
| Carmelide |                 3 |
| Vannes    |                 2 |
+-----------+-------------------+
