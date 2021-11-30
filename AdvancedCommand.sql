Retourne les noms, prénoms, rôle et équipe de tous les joueurs, 
classés dans l’ordre alphabétique par équipe,
puis par rôle dans l’équipe, 
puis par nom de famille, puis par prénom

select firstname,lastname,role,name from player
join wizard on wizard.id = player.wizard_id
join team on team.id = player.team_id
order by name,role,lastname,firstname;
+-------------+-----------------+--------+------------+
| firstname   | lastname        | role   | name       |
+-------------+-----------------+--------+------------+
| Sirius      | Black           | beater | Gryffindor |
| Lavender    | Brown           | beater | Gryffindor |
| Seamus      | Finnigan        | beater | Gryffindor |
| Rubeus      | Hagrid          | beater | Gryffindor |
| Alice       | Longbottom      | beater | Gryffindor |
| Minerva     | McGonagall      | beater | Gryffindor |
| Harry       | Potter          | beater | Gryffindor |
| James       | Potter          | beater | Gryffindor |
| Dean        | Thomas          | beater | Gryffindor |
| Arthur      | Weasley         | beater | Gryffindor |
| Percy       | Weasley         | beater | Gryffindor |
| Katie       | Bell            | chaser | Gryffindor |
| Albus       | Dumbledore      | chaser | Gryffindor |
| Hermione    | Granger         | chaser | Gryffindor |
| Lily        | J.              | chaser | Gryffindor |
| Lee         | Jordan          | chaser | Gryffindor |
| Augusta     | Longbottom      | chaser | Gryffindor |
| Frank       | Longbottom      | chaser | Gryffindor |
| Neville     | Longbottom      | chaser | Gryffindor |
| Peter       | Pettigrew       | chaser | Gryffindor |
| Alicia      | Spinnet         | chaser | Gryffindor |
| George      | Weasley         | chaser | Gryffindor |
| Oliver      | Wood            | chaser | Gryffindor |
| Cadogan     |                 | keeper | Gryffindor |
| Dennis      | Creevey         | keeper | Gryffindor |
| Nicholas    | de              | keeper | Gryffindor |
| Aberforth   | Dumbledore      | keeper | Gryffindor |
| Angelina    | Johnson         | keeper | Gryffindor |
| Ginevra     | Weasley         | keeper | Gryffindor |
| Cuthbert    | Binns           | seeker | Gryffindor |
| Colin       | Creevey         | seeker | Gryffindor |
| Godric      | Gryffindor      | seeker | Gryffindor |
| Romilda     | Vane            | seeker | Gryffindor |
| Fred        | Weasley         | seeker | Gryffindor |
| Ronald      | Weasley         | seeker | Gryffindor |
| William     | Weasley         | seeker | Gryffindor |
| Hannah      | Abbott          | beater | Hufflepuff |
| Justin      | Finch-Fletchley | beater | Hufflepuff |
| Fat         | Friar           | beater | Hufflepuff |
| Hepzibah    | Smith           | beater | Hufflepuff |
| Pomona      | Sprout          | beater | Hufflepuff |
| Nymphadora  | Tonks           | beater | Hufflepuff |
| Amelia      | Bones           | chaser | Hufflepuff |
| Newton      | Scamander       | chaser | Hufflepuff |
| Susan       | Bones           | keeper | Hufflepuff |
| Cedric      | Diggory         | keeper | Hufflepuff |
| Zacharias   | Smith           | keeper | Hufflepuff |
| Helga       | Hufflepuff      | seeker | Hufflepuff |
| Penelope    | Clearwater      | beater | Ravenclaw  |
| Quirinus    | Quirrell        | beater | Ravenclaw  |
| Helena      | Ravenclaw       | beater | Ravenclaw  |
| Myrtle      | Warren          | beater | Ravenclaw  |
| Cho         | Chang           | chaser | Ravenclaw  |
| Marietta    | Edgecombe       | chaser | Ravenclaw  |
| Filius      | Flitwick        | chaser | Ravenclaw  |
| Anthony     | Goldstein       | chaser | Ravenclaw  |
| Gilderoy    | Lockhart        | chaser | Ravenclaw  |
| Luna        | Lovegood        | chaser | Ravenclaw  |
| Xenophilius | Lovegood        | chaser | Ravenclaw  |
| Garrick     | Ollivander      | chaser | Ravenclaw  |
| Michael     | Corner          | seeker | Ravenclaw  |
| Rowena      | Ravenclaw       | seeker | Ravenclaw  |
| Sybill      | Trelawney       | seeker | Ravenclaw  |
| Millicent   | Bulstrode       | beater | Slytherin  |
| Vincent     | Crabbe          | beater | Slytherin  |
| Marcus      | Flint           | beater | Slytherin  |
| Pansy       | Parkinson       | beater | Slytherin  |
| Severus     | Snape           | beater | Slytherin  |
| Blaise      | Zabini          | beater | Slytherin  |
| Bloody      | Baron           | chaser | Slytherin  |
| Bellatrix   | Lestrange       | chaser | Slytherin  |
| Rodolphus   | Lestrange       | chaser | Slytherin  |
| Draco       | Malfoy          | chaser | Slytherin  |
| Lucius      | Malfoy          | chaser | Slytherin  |
| Phineas     | Nigellus        | chaser | Slytherin  |
| Theodore    | Nott            | chaser | Slytherin  |
| Tom         | Riddle          | chaser | Slytherin  |
| Andromeda   | Tonks           | chaser | Slytherin  |
| Regulus     | Black           | keeper | Slytherin  |
| Gregory     | Goyle           | seeker | Slytherin  |
| Rabastan    | Lestrange       | seeker | Slytherin  |
| Narcissa    | Malfoy          | seeker | Slytherin  |
| Salazar     | Slytherin       | seeker | Slytherin  |
| Dolores     | Umbridge        | seeker | Slytherin  |
+-------------+-----------------+--------+----------


=======================================================
Retourne uniquement les prénoms et noms des joueurs ayant le rôle de seeker (attrapeur), 
classés par ordre alphabétique de nom puis prénom


select firstname,lastname from player 
join wizard on wizard.id=player.id where role = 'seeker' 
order by lastname, firstname;

+-----------+------------+
| firstname | lastname   |
+-----------+------------+
| Cuthbert  | Binns      |
| Michael   | Corner     |
| Colin     | Creevey    |
| Gregory   | Goyle      |
| Godric    | Gryffindor |
| Helga     | Hufflepuff |
| Rabastan  | Lestrange  |
| Narcissa  | Malfoy     |
| Rowena    | Ravenclaw  |
| Salazar   | Slytherin  |
| Sybill    | Trelawney  |
| Dolores   | Umbridge   |
| Romilda   | Vane       |
| Fred      | Weasley    |
| Ronald    | Weasley    |
| William   | Weasley    |
+-----------+------------+
===============================
Retourne la liste de tous les sorciers qui ne pratiquent pas le quidditch.

select * from wizard where not exists 
(select * from player where wizard_id = wizard.id);

+----+-----------+----------+
| id | firstname | lastname |
+----+-----------+----------+
|  9 | Terry     | Boot     |
| 15 | Crabbe    |          |
| 45 | Remus     | Lupin    |
| 53 | Padma     | Patil    |
| 54 | Parvati   | Patil    |
| 63 | Demelza   | Robins   |
| 65 | Horace    | Slughorn |
| 80 | Charles   | Weasley  |
| 84 | Molly     | Weasley  |
+----+-----------+----------+

===============================================================
Retourne le nom des équipes et le nombre de joueurs par équipe,
le tout classé par nombre de joueurs par équipe,
de la plus nombreuse à la moins nombreuse.

select team.name , count(*) as nb_student from player 
join team on team.id=player.team_id
group by team.name
order by nb_student desc;

+------------+------------+
| name       | nb_student |
+------------+------------+
| Gryffindor |         36 |
| Slytherin  |         21 |
| Ravenclaw  |         15 |
| Hufflepuff |         12 |
+------------+------------+

============================================

Retourne uniquement les noms des équipes complètes (ayant 14 joueurs ou plus,
c’est-à- dire 7 joueurs et 7 remplaçants minimum),
classés par ordre alphabétique.

 select team.name from team 
 join player on team.id=player.team_id 
 group by team.name 
 having count(player.id)>13 
 order by count(player.id) desc;
 
 +------------+
| name       |
+------------+
| Gryffindor |
| Slytherin  |
| Ravenclaw  |


=======================================

L’entraîneur des Gryffondor est superstitieux,
son jour préféré est le lundi. 
Retourne la liste des joueurs de son équipe qui ont été enrôlés un lundi 
(il souhaite les faire jouer en priorité), 
et classe les résultats par date d’enrôlement chronologique.

 SELECT CONCAT(firstname, ' ', lastname) AS monday_players from wizard 
 inner join player on wizard.id=player.wizard_id 
 inner join team on team.id=player.team_id 
 where dayname(player.enrollment_date)='monday' and 
 team.name='Gryffindor' order by player.enrollment_date;
 
 +----------------------+
| monday_players       |
+----------------------+
| George Weasley       |
| Alice Longbottom     |
| Cadogan              |
| Godric Gryffindor    |
| Sirius Black         |
| Aberforth Dumbledore |
| Augusta Longbottom   |
+----------------------+