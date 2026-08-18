-- create table 1
CREATE TABLE students(
  student_id int,
  first_name varchar(50),
  last_name varchar(50),
  age int,
  email varchar(100),
  programme varchar(100),
  fees decimal(10,2),
  is_active boolean
);

insert into students values (226,'Lindokuhle','Kubeka',27,'lindokuhle67@gamil.com','Weightlifting',199.99,true);
insert into students values(227,'Msizi','Ziqubu',22,'msiziziqubu@gmail.com','Yoga',00.00,false);
insert into students values(228,'Mthokozisi','Mokone',25,'mokonewana@gmail.com','Pilates',269.99,true),(229,'Londeka','Mayisela',20,'mayiselalondeka12@gmail.com','Yoga',249.99,true);
insert into students values(230,'Zandisiwe','Ndlovu',29,'zandindaba@yahoo.com','Pilates',269.99,true);
select * from students