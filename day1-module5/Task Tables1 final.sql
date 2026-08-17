-- create  table 1
CREATE TABLE students(
  student_id int primary key,
  first_name varchar(50),
  last_name varchar(50),
  age int,
  email varchar(100),
  workout class varchar(100),
  fees_paid decimal(10, 2) ,
  is_active BOOLEAN,
);
-- insert data
insert into values (226,'Lindokuhle','Kubeka',27,'lindokuhle67@gamil.com','Weightlifting',R199.99,True);
insert into values(227,'Msizi','Ziqubu',22,'msiziziqubu@gmail.com','Yoga',00.00,False);
insert into values(228,'Mthokozisi','Mokone',25,'mokonewana@gmail.com','Pilates',269.99,True),(229,'Londeka','Mayisela',20,'mayiselalondeka12@gmail.com','Yoga',249.99,True);
insert into values(230,'Zandisiwe','Ndlovu',29,'zandindaba@yahoo.com','Pilates',269.99,True);


--retrieve information
select * from students
sel


--create second table
CREATE TABLE courses(
  course_id int primary key
  course_name varchar(255)
  course_duration int
  course_fee decimAL(10 ,2)
  status_field varchar(25)
);

-- insert data
insert into values (00021,'taxation',12,2789.80,'Available');
insert into values(0022,'auditing',3000.00.'Not Available');
insert into values(0023,'accounting',2599.78.'Available');
insert into values(0025,'Commercial Law',1999.99.'Available');
insert into values(0022,'Financial Management',3999.99.'Available');


-- retrieve information
select * from courses



-- create third table
CREATE TABLE products(
  ID int primary key,
  product name varchar(200),
  price decimal(10, 2),
  quantity int,
  category varchar(50),
  available boolean
);

  -- insert data
  insert into values (7889,'Air freshner',200.00,5,'Interior','Available');
  insert into values (7890,'Tyre Polish',299.50,0,'Exterior','Not Available');
  insert into values (7891,'Tyre brush',49.99,10,'Exterior','Available');
  insert into values (7892,'Interior Wipes',73.50,7,'Interior','Available');
  insert into values (78893,'Soap Wash',20.00,10,'Both','Available');
  insert into values (7894,'Vaccum Cleaner',2999.95,5,'Interior','Not Available');


  -- retrive data
  select* from products