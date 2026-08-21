-- create table 
CREATE TABLE customers(
  customer_id int primary key,
  customer_name varchar (50),
  city varchar(50),
  email varchar(50)
);

-- insert data to table
insert into customers values(1,'Thabo Mokoena','Johannesburg','thabo@gmail.com'),(2,'Lerato Dlamini','Pretoria','lerato@gmail.com');
insert into customers values(3,'Sipho Nkosi','Johannesburg','sipho@gmail.com'),(4,'Naledi Molefe','Soweto','naledi@gmail.com');
insert into customers values(5,'Ayanda Khumalo','Pretoria',Null),(6,'Mpho Ndlovu','Johannesburg','mpho@gmail.com'),(7,'Zanele Maseko','Midrand','zanele@gmail.com');
insert into customers values(8,'Kabelo Sithole','Soweto',Null);


-- retrieve
select * from customers;

-- create table for products
CREATE TABLE products(
  product_id int primary key,
  product_name varchar(50),
  category varchar(50),
  price decimal(10, 1)
);

-- insert into table
insert into products values (101,'Laptop Bag','Electronics',650.0),(102,'Wireless Mouse','Electronics',350.0),(103,'Office Chair','Furniture',1800.0);
insert into products values (104,'Office Desk','Furniture',2200.0),(105,'Notebook Pack','Stationery',120.0),(106,'Keyboard','Electronics',550.0),(107,'Desk Lamp','Furniture',750.0);
insert into products values (108,'Office Pen Set','Stationery',280.0);

select *from products;


-- create table for orders
CREATE TABLE orders(
  order_id int primary key,
  customer_id int,
  product_id int,
  quantity varchar(50),
  order_date DATE,
  status varchar(50),
  Foreign Key (customer_id)
  REFERENCES customers(customer_id),
  Foreign Key (product_id)
  REFERENCES products(product_id)
);

-- insert into
insert into orders values (201,1,101,2,'2026-08-01','Completed'),(202,2,103,1,'2026-08-02','Completed');
insert into orders values (203,3,102,3,'2026-08-03','Pending'),(204,4,105,5,'2026-08-03','Completed');
insert into orders values (205,5,106,2,'2026-08-04','Completed'),(206,1,104,1,'2026-08-05','Completed');
insert into orders values (207,6,107,2,'2026-08-06','Pending'),(208,7,108,4,'2026-08-07','Completed');
insert into orders values (209,8,102,1,'2026-08-08','Cancelled'),(210,3,101,2,'2026-08-09','Completed');
insert into orders values (211,2,106,1,'2026-08-10','Completed'),(212,6,105,3,'2026-08-11','Completed');

select * from orders;


-- Section B
-- Scenario 2
select city from customers;

-- Scenario 3
select customer_name,city, email from customers
where city in ('Johannesburg','Pretoria');

-- Scenario 4
select * from customers
where customer_name Like 'L%';

-- Scenario 5
select * from customers
where email IS NULL;

-- Scenario 6
select product_name,category,price from products
where price between 500.0 and 2000.0;

-- Section C
-- Scenario 7
select product_name,price from products
order by price DESC
LIMIT 3;

-- Scenario 8
select * from orders
where status!='Completed';

-- Scenario 9
select * from orders 
where quantity > 2;

-- Scenario 10
select order_id,customer_id,product_id,quantity,status from orders
where quantity >2 or status ='Pending';

-- Section D
-- Scenario 11
select customers.customer_name,products.product_name,orders.quantity,
orders.order_date,orders.status from customers 
inner join orders on customers.customer_id = orders.customer_id
inner join products on orders.product_id = products.product_id;

-- Scenario 12
select customers.customer_name,products.product_name,orders.quantity,
orders.order_date,orders.status from customers
inner join orders on customers.customer_id = orders.customer_id
inner join products on orders.product_id = products.product_id
HAVING orders.status ='Completed';

-- Scenario 13
select customers.customer_name,customers.city,products.product_name,products.category,
orders.quantity,orders.order_date from customers
inner join orders on customers.customer_id = orders.customer_id
inner join products on orders.product_id = products.product_id
HAVING city='Johannesburg';

-- Scenario 14
select customers.customer_name,products.product_name,products.category,
orders.quantity,orders.order_date from customers
inner join orders on customers.customer_id = orders.customer_id
inner join products on orders.product_id = products.product_id
HAVING category='Electronics';

-- Scenario 15 
select customers.customer_name,
products.product_name,
orders.quantity,
orders.order_date,
orders.status 
from customers
inner join orders on customers.customer_id = orders.customer_id
inner join products on orders.product_id = products.product_id
order BY customers.customer_name,orders.order_date;

-- Section
-- Scenario 16
select orders.order_id,
 customers.customer_name,
 orders.quantity,
 products.price,
 price*quantity as order_value 
 from customers
 inner join orders on customers.customer_id = orders.customer_id
 inner join products on orders.product_id = products.product_id;

 -- Scenario 17
select customers.customer_name,
products.product_name,
orders.quantity,
products.price,
price*quantity as total_sale_value from customers
inner join orders on customers.customer_id = orders.customer_id
inner join products on orders.product_id = products.product_id
where orders.status= 'Completed'
ORDER BY  total_sale_value DESC ;

-- Scenario 21
-- Scenario 22
update  products
set price = 700.00,
where product_id = 10;
select * from products


-- Scenario 24
 delete from orders
 where order_id = 209;
 select *from orders;



