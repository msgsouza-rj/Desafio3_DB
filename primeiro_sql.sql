show databases;
create database if not exists first_example;
use first_example;
show tables;
create table person(
	person_id smallint unsigned,
	fname varchar(20),
    lname varchar(20),
    gender enum('M','F','Other'),
    birth_date date,
    street varchar(30),
    city varchar(20),
    state varchar(20),
    country varchar(20),
    portal_code varchar(20),
    constraint pk_person primary key (person_id)
);
show tables;
desc person;

create table favorite_food(
	person_id smallint unsigned,
    food varchar(20),
    constraint pk_favorite_food primary key (person_id, food),
    constraint fk_favorite_food_person_id foreign key (person_id) references person(person_id)
);

desc favorite_food;

show databases;
/* select * from information_schema.table_constraints
where constraint_schema = 'first_example'; */

desc information_schema.table_constraints;
/* select CONSTRAINT_NAME from information_schema.table_constraints where table_name = 'person'; */
/* select * from information_schema.table_constraints where table_name = 'person'; */
select * from information_schema.table_constraints where constraint_schema = 'first_example';

desc person;
insert into person values ('1','Carolina','Silva','F','2002-12-23','Rua R','Rio','RJ','BR','22222-222');
select * from person;
insert into person values ('2','Ana','Silva','F','2002-2-23','Rua R','Rio','RJ','BR','22222-222');
delete from person where person_id=2 or person_id=1;
desc favorite_food;
insert into favorite_food values (2,'Lasanha');
select * from favorite_food;
