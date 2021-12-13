use `db-university`

insert into `departments`(name,address) values('Dipartimento di Ingegneria','Via prova');
insert into `degrees`(name,address,`departments_id`) values('Ingegneria','Via Prova',1);
insert into courses (name,`degrees_id`) values('nome',1);
insert into teachers (name,surname) values('giacomo','prova');
insert into exams (`date`,`hour`,location,address,courses_id) values(1/1/2022,'10:00','posto','Via Prova',1);
