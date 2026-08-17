-- create a table
CREATE TABLE students2(
  student_id int,
  first_name varchar(50),
  last_name varchar(50),
  age int,
  email varchar(100),
  workout class varchar(100),
  fees_paid decimal(10,2),
  is_active boolean
);

-- insert data
insert into values (226,'Lindokuhle','Kubeka',27,'lindokuhle67@gamil.com','Weightlifting',R199.99,True);
insert into values(227,'Msizi','Ziqubu',22,'msiziziqubu@gmail.com','Yoga',00.00,False);
insert into values(228,'Mthokozisi','Mokone',25,'mokonewana@gmail.com','Pilates',269.99,True),(229,'Londeka','Mayisela',20,'mayiselalondeka12@gmail.com','Yoga',249.99,True);
insert into values(230,'Zandisiwe','Ndlovu',29,'zandindaba@yahoo.com','Pilates',269.99,True);


--retrieve information
select * from students2