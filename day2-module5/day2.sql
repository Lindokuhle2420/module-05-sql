-- create table for customers
CREATE TABLE customer(
  order_id int primary key,
  customer_name varchar(50),
  product varchar(50),
  category varchar(50),
  quantity int,
  unit_price decimal(10, 2),
  order_date Date,
  region varchar(50),
  status varchar(20),
  sales_rep varchar(20)
);

-- insert into customer  
insert into customer values(1001,'Mokoena Supplies','Laptop','Electronics',2,12500.00,'2026-01-05','Gauteng','Completed','Thabo');
insert into customer values(1002,'Bright Office','Office Chair','Furniture',8,1850.00,'2026-01-07','Gauteng','Completed','Zanele');
insert into customer values(1003,'Kopano Retail','Monitor','Electronics',5,3200.00,'2026-01-09','Limpopo','Pending','Kgotso');
insert into customer values(1004,'Ubuntu Designs','Desks','Furniture',4,4200.00,'2026-01-12','Gauteng','Completed','Lerato');
insert into customer values(1005,'Mvelo Services','Printer','Electronics',3,5400.00,'2026-01-14','Mpumalanga','Cancelled','Sipho');
insert into customer values(1006,'Nala Consulting','Notebook Pack','Stationery',20,180.00,'2026-01-16','Free State','Completed','Naledi');
insert into customer values(1007,'Siyakhula School','Projector','Electronics',2,8900.00,'2026-01-19','Gauteng','Completed','Mpho');
insert into customer values(1008,'Mabaso Legal','Printer','Electronics',1,5400.00,'2026-01-21','KwaZulu-Natal','Pending',NULL);
insert into customer values(1009,'Thuto College','Office Chair','Furniture',12,1850.00,'2026-01-24','North West','Completed','Thabo');
insert into customer values(1010,'Kganya Media','Laptop','Electronics',4,12500.00,'2026-01-27','Western Cape','Completed','Zanele');
insert into customer values(1011,'Mandla Logistics','Desks','Furniture',6,4200.00,'2026-02-02','Gauteng','Pending','Kgotso');
insert into customer values(1012,'Pula Accounting','NotebookPack','Stationery',35,180.00,'2026-02-05','Free State','Completed','Lerato');
insert into customer values(1013,'Lesedi Health','Monitor','Electronics',7,3200.00,'2026-02-08','Gauteng','Completed','Sipho');
insert into customer values(1014,'Bophelo Clinic','Office Chair','Furniture',10,1850.00,'2026-02-11','Limpopo','Cancelled','Naledi');
insert into customer values(1015,'Rea Vaya Services','Projector','Electronics',3,8900.00,'2026-02-14','Gauteng','Completed','Mpho');
insert into customer values(1016,'Masakhane NGO','Notebook Pack','Stationery',50,180.00,'2026-02-18','Eastern Cape','Pending',null);
insert into customer values(1017,'Tshiamo Events','Laptop','Electronics',1,12500.00,'2026-02-21','North West','Completed','Thabo');
insert into customer values(1018,'Imbokodo Architects','Desk','Furniture',9,4200.00,'2026-02-25','Western Cape','Completed','Zanele');
insert into customer values(1019,'Vuka Training','Monitorr','Electronics',6,3200.00,'2026-03-01','Gauteng','Pending','Kgotso');
insert into customer values(1020,'Sisonke Retail','Printer','Electronics',5,5400.00,'2026-03-04','KwaZulu-Natal','Completed','Lerato');

-- retrieve data from table
select * from customer;

-- Part A = finding Data
-- Task1
select * from customer;


-- Task 2
select customer_name, product from customer;


-- Task 3
select product from customer;


-- Task 4
select * from customer where region = 'Gauteng';


-- Task 5
select * from customer 
where quantity >5;


-- Task 7
select * from customer 
where region='Gauteng' and status='Completed';


-- Task 8
select * from customer
where region= 'Gauteng' or region='Limpopo';

-- Task 9
select * from customer
where not status='Cancelled'  