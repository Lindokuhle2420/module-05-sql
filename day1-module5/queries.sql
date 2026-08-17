CREATE TABLE students(
  ID int primary key,
  Name varchar(255) not null,
  Age int,
  City varchar(255),
  Score real
);

-- insert data
insert into students values(1,'Thando',26, 'Pretoria',78.52);
insert into students values(2,'Sanele',40, 'Capetown',92.0);
insert into students values(3, 'Banele',20,'Bloemfontein',88.5),(4,'Zandile',34,'Gqeberha',85.6);
insert into students (ID,Name,Score) values (5,'Sabelo',21.5);

-- retrieve information from tables
select * from students;
select* from students;

