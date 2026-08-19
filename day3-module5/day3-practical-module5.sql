-- create Table For Athletes
 CREATE TABLE athletes(
  athlete_id int primary key,
  athlete_name varchar(20),
  age int,
  sport varchar(20),
  region varchar(20)
  );

-- insert into Table
insert into athletes values(1,'Lerato Mokoena',21,'Football','Gauteng'); 
insert into athletes values(2,'Thabo Nkosi',24,'Athletics','Gauteng');
insert into athletes values(3,'Zanele Dlamini',19,'Swimming','Mpumalanga');
insert into athletes values(4,'Mpho Molefe',27,'Football','Limpopo');
insert into athletes values(5,'Naledi Khumalo',22,'Netball','Gauteng');
insert into athletes values(6,'Kgosi Maseko',25,'Athletics','North West'),(7,'Lerato Ndlovu',20,'Swimming','Free State'),(8,'Sipho Radebe',29,'Football','Gauteng');
insert into athletes values(9,'Masego Molefe',23,'Netball','Limpopo'),(10,'Ayanda Zulu',26,'Athletics','KwaZulu-Natal');


-- retrieve the data
select * from Athletes;

-- create Table for training Sessions
create table training (
  session_id int primary key,
  athlete_id int,
  session_type varchar(20),
  session_attended int,
  fee_paid real,
  status varchar(20),

  Foreign key (athlete_id)
  references Athletes(athlete_id)
);

-- insert into
insert into training values(101,1,'Strength',4,800,'Completed');
insert into training values(102,2,'Speed',3,600,'Completed');
insert into training values(103,2,'Swimming',5,1000,'Completed'),(104,4,'Fitness',2,400,'Pending');
insert into training values(105,5,'Netball Skills',6,1200,'Completed'),(107,1,'Fitness',3,600,'Completed');
insert into training values(108,8,'Strength',5,1000,'Completed'),(109,9,'Netball Skills',2,400,'Pending'),(110,2,'Strength',5,1000,'Completed');
insert into training values(111,4,'Football Skills',4,800,'Completed'),(112,5,'Fitness',3,600,'Completed'),(113,3,'Technique',2,600,'Completed'),(114,10,'Speed',6,1200,'Completed');
insert into training values(115,6,'Fitness',2,400,'Pending'),(116,8,'Football Skills',3,600,'Completed');

-- retrieve from table
select * from training;


-- PartA group by + having
-- task 1
select sport,COUNT(sport) AS Participants from athletes 
GROUP BY sport;

-- task 2
select region, COUNT(sport) AS region_data from athletes
GROUP BY region;

-- task 3
select sport, AVG(age) from athletes
GROUP BY sport;

-- task 4
select sport , COUNT(athlete_id) AS Participants from athletes
GROUP BY sport HAVING COUNT(athlete_id) > 1;

-- task 5
select region, Count(athlete_id) AS region_count from athletes
GROUP BY region HAVING Count(athlete_id) > 1;

-- TASK 6
select sport, COUNT(age) as above_21 from athletes where age > 21
GROUP BY sport;

-- task 7
select sport, AVG(age) above_22 from athletes
GROUP BY (sport)
Having AVG(age) > 22;
 
-- task 8
select sport, COUNT(sport) AS most_athletes from athletes
GROUP BY sport ORDER BY COUNT(sport) DESC;



-- Part B INNER JOIN
-- task 1
select athletes.athlete_name, training.session_type from athletes
INNER JOIN training ON athletes.athlete_id = training.athlete_id;

-- task 2
select athletes.athlete_name, athletes.sport, training.session_attended from athletes
INNER JOIN training ON athletes.athlete_id = training.athlete_id;

-- task 3
select athletes.athlete_name, training.session_type, training.status from Athletes
INNER JOIN training ON athletes.athlete_id = training.athlete_id 
where training.status = 'Completed';

-- task 4
select athletes.athlete_name, training.session_attended, training.status from Athletes
INNER JOIN training ON athletes.athlete_id = training.athlete_id 
where training.status = 'Completed'
ORDER BY training.session_attended DESC;

-- task 5
select athletes.athlete_name, sum(training.session_attended) AS TOTAL_attendance from athletes
INNER JOIN training ON athletes.athlete_id = training.athlete_id
GROUP BY athletes.athlete_name; 

-- task 6
select athletes.athlete_name, sum(training.fee_paid) AS TOTAL_payments from athletes
INNER JOIN training ON athletes.athlete_id = training.athlete_id
GROUP BY athletes.athlete_name; 

-- task 7 
select athletes.athlete_name, sum(training.fee_paid) AS TOTAL_payments from athletes
INNER JOIN training ON athletes.athlete_id = training.athlete_id
GROUP BY athletes.athlete_name
HAVING sum(training.fee_paid) > 1500 ;

-- Part C Left JOIN
-- task 1
select athletes.athlete_name, training.session_attended from athletes
LEFT JOIN training ON athletes.athlete_id = training.athlete_id;

-- task 2
select athletes.athlete_name, training.session_attended from athletes
LEFT JOIN training ON athletes.athlete_id = training.athlete_id
having training.session_attended is null;

-- task 3
select athletes.athlete_name, athletes.sport, training.session_type from Athletes
LEFT JOIN training ON athletes.athlete_id = training.athlete_id;

-- task 4
select athletes.athlete_name, athletes.region, athletes.sport, training.session_type,training.status from Athletes
LEFT JOIN training ON athletes.athlete_id = training.athlete_id
HAVING athletes.region = 'Gauteng' ;

-- Part D Right JOIN
-- task 1
select athletes.athlete_name, training.session_id, training.session_attended, training.session_type,training.status from athletes
RIGHT JOIN training ON athletes.athlete_id = training.athlete_id;

-- task 2
select athletes.athlete_name, training.session_id, training.session_attended, training.session_type from athletes
RIGHT JOIN training ON athletes.athlete_id = training.athlete_id
ORDER BY training.session_attended DESC;

-- task 3
select athletes.athlete_name, training.session_id, training.session_attended, training.session_type from athletes
RIGHT JOIN training ON athletes.athlete_id = training.athlete_id
where training.status = 'Completed';
-- task 4

-- Part C
-- task 1
select athletes.sport,sum(training.session_attended) from athletes
RIGHT JOIN training ON athletes.athlete_id = training.athlete_id
GROUP BY athletes.sport 
ORDER BY sum(training.session_attended) DESC;

-- task 2
select athletes.sport,sum(training.session_attended) from athletes
LEFT JOIN training ON athletes.athlete_id = training.athlete_id
GROUP BY athletes.sport 
HAVING sum(training.session_attended) > 10;

-- task 3
select athletes.athlete_name,training.session_type from athletes
JOIN training ON athletes.athlete_id = training.athlete_id
where athletes.region= 'Gauteng';

-- task 4
select athletes.athlete_name, sum(training.fee_paid) from athletes
RIGHT JOIN training ON athletes.athlete_id = training.athlete_id
GROUP BY  athletes.athlete_name
HAVING sum(training.fee_paid) > 1000 ;

-- task 5
select athletes.athlete_name, athletes.sport, sum(training.session_attended)AS total_sessions,sum(training.fee_paid) AS total_fees from athletes
INNER JOIN training ON athletes.athlete_id = training.athlete_id
GROUP BY athletes.athlete_name,athletes.sport
ORDER BY sum(training.fee_paid) DESC;

-- task 6
select athletes.athlete_name, sum(training.session_attended) from athletes
JOIN training ON athletes.athlete_id = training.athlete_id
GROUP BY athletes.athlete_name;