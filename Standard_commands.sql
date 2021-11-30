

INSERT INTO school (name, country, capacity) VALUES ("Beauxbatons Academy of Magic" ,"France",550),("Castelobruxo"," Brazil",380),("Durmstrang Institute" ,"Norway", 570),("Hogwarts School of Witchcraft and Wizardry" ,"United Kingdom", 450),("Ilvermorny School of Witchcraft and Wizardry"," USA ",300),("Koldovstoretz" ,"Russia", 125),("Mahoutokoro School of Magic" ,"Japan ",800);,

UPDATE school set country = "Sweden" where id = 3;

describe school;
+----------+--------------+------+-----+---------+----------------+
| Field    | Type         | Null | Key | Default | Extra          |
+----------+--------------+------+-----+---------+----------------+
| ID       | int          | NO   | PRI | NULL    | auto_increment |
| NAME     | varchar(100) | NO   |     | NULL    |                |
| COUNTRY  | varchar(255) | NO   |     | NULL    |                |
| CAPACITY | int          | NO   |     | NULL    |                |
+----------+--------------+------+-----+---------+----------------+


select * from school;
+----+----------------------------------------------+----------------+----------+
| ID | NAME                                         | COUNTRY        | CAPACITY |
+----+----------------------------------------------+----------------+----------+
|  1 | Beauxbatons Academy of Magic                 | France         |      550 |
|  2 | Castelobruxo                                 |  Brazil        |      380 |
|  3 | Durmstrang Institute                         | Sweden         |      570 |
|  4 | Hogwarts School of Witchcraft and Wizardry   | United Kingdom |      450 |
|  5 | Ilvermorny School of Witchcraft and Wizardry |  USA           |      300 |
|  6 | Koldovstoretz                                | Russia         |      125 |
|  7 | Mahoutokoro School of Magic                  | Japan          |      800 |
|  8 | Uagadou School of Magic                      | Uganda         |      350 |
+----+----------------------------------------------+----------------+----------+


UPDATE school set capacity = 700 where id = 7;
select * from school;

+----+----------------------------------------------+----------------+----------+
| ID | NAME                                         | COUNTRY        | CAPACITY |
+----+----------------------------------------------+----------------+----------+
|  1 | Beauxbatons Academy of Magic                 | France         |      550 |
|  2 | Castelobruxo                                 |  Brazil        |      380 |
|  3 | Durmstrang Institute                         | Sweden         |      570 |
|  4 | Hogwarts School of Witchcraft and Wizardry   | United Kingdom |      450 |
|  5 | Ilvermorny School of Witchcraft and Wizardry |  USA           |      300 |
|  6 | Koldovstoretz                                | Russia         |      125 |
|  7 | Mahoutokoro School of Magic                  | Japan          |      700 |
|  8 | Uagadou School of Magic                      | Uganda         |      350 |
+----+----------------------------------------------+----------------+----------+


DELETE FROM school  where name like "%Magic%";

select * from school;
+----+----------------------------------------------+----------------+----------+
| ID | NAME                                         | COUNTRY        | CAPACITY |
+----+----------------------------------------------+----------------+----------+
|  2 | Castelobruxo                                 |  Brazil        |      380 |
|  3 | Durmstrang Institute                         | Sweden         |      570 |
|  4 | Hogwarts School of Witchcraft and Wizardry   | United Kingdom |      450 |
|  5 | Ilvermorny School of Witchcraft and Wizardry |  USA           |      300 |
|  6 | Koldovstoretz                                | Russia         |      125 |
+----+----------------------------------------------+----------------+----------+