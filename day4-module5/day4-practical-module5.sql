-- create table 1
CREATE TABLE customers(
  customer_id int primary key,
  customer_name varchar(50),
  city varchar(20)
);

-- insert info into table
insert into customers values(1,'Thabo Mokoena','Johannesburg');
insert into customers values(2,'Lerato Dlamini','Pretoria'),(3,'Sipho Nkosi','Johannesburg'),(4,'Naledi Molefe','Soweto'),(5,'Ayanda Khumalo','Pretoria');
insert into customers values(6,'Mpho Ndlovu','Johannesburg'),(7,'Zanele Maseko','Midrand'),(8,'Kabelo Sithole','Soweto');


-- fetch data from TABLE
select * from customers;


-- create table 2
CREATE TABLE products(
  product_id int primary key,
  product_name varchar(50),
  category varchar(50),
  price decimal(10, 2)
);

-- insert info into table
insert into products values(101,'Laptop Bag','Electronics',650.00),(102,'Wireless Mouse','Electonics',350.00),(103,'Office Chair','Furniture',1200.00);
insert into products values(104,'Notebook','Stationery',80.00),(105,'Backpack','Stationery',450.00),(106,'Keyboard','Electonics',550.00);
insert into products values(107,'Desk Lamp','Furniture',750.00),(108,'Water Bottle','Lifestyle',180.00);

-- fetch data from TABLE
select * from products;


-- create table 3
CREATE TABLE orders(
  order_id int primary key,
  customer_id int,
  product_id int,
  quantity int,
  order_status varchar(50),
  Foreign Key(customer_id)
  REFERENCES customers(customer_id),

  Foreign Key(product_id)
  REFERENCES products(product_id)
);

-- insert info into TABLE
insert into orders values(201,1,101,1,'Completed'),(202,2,103,1,'Completed');
insert into orders values(203,3,102,2,'Pending'),(204,4,105,1,'Completed'),(205,5,106,2,'Completed');
insert into orders values(206,1,104,5,'Completed'),(207,6,107,5,'Completed'),(208,7,108,3,'Completed');
insert into orders values(209,8,102,1,'Cancelled'),(210,3,101,2,'Completed');

-- fetch data from table
select * from orders;

-- Part C- Business Scenario
-- Scenario 1
select customer_name, city from customers 
where city = 'Johannesburg'
order by customer_name;

-- Scenario 2
select product_name , price from products
where category = 'Electronics'
and category= 'Furniture';

-- Scenario 3
select product_name,category,price from products
where price between 300.00 and 800.00 ;

-- Scenario 4
select product_name, price from products
order by price DESC;

-- Scenario 5
select customers.customer_name,orders.order_id from customers 
inner join orders on customers.customer_id = orders.customer_id;

-- Scenario 6
select customers.customer_name, products.product_name,orders.quantity,
orders.order_status from orders
inner join customers on orders.customer_id = customers.customer_id
inner join products on orders.product_id = products.product_id;

-- Scenario 7
select customers.customer_name,products.product_name,orders.quantity,
orders.order_status from orders
inner join customers on orders.customer_id = customers.customer_id
inner join products on orders.product_id = products.product_id
where orders.order_status = 'Completed'
order by orders.quantity;


-- Scenario 8
select customers.customer_name,COUNT(orders.customer_id) as number_of_orders from orders
inner join customers on orders.customer_id = customers.customer_id
GROUP BY customer_name
order by number_of_orders ;

-- Scenario 9
select products.product_name,sum(orders.quantity) as orders_of_products from products
inner join orders on products.product_id = orders.product_id
GROUP BY products.product_name
order by orders_of_products DESC;

-- Scenario 10
select products.product_name,sum(orders.quantity) as orders_of_products from products
inner join orders on products.product_id = orders.product_id
GROUP BY products.product_name
HAVING sum(orders.quantity) > 2 ; 

-- Scenario 11
select customers.customer_name, products.product_name,orders.quantity, orders.order_status
from orders
inner join customers on orders.customer_id = customers.customer_id
inner join products on orders.product_id = products.product_id;

-- Scenario 12
select customers.customer_name, products.product_name,orders.quantity, orders.order_status
from orders
inner join customers on orders.customer_id = customers.customer_id
inner join products on orders.product_id = products.product_id
where order_status = "Pending";

-- Scenario 13
update products
set price =700.00
where  product_id = 101;
select product_name , price from products;

-- Scenario 14
delete from orders where order_id = 209;
select *  from orders;

-- Scenario 15
select customers.customer_name, products.product_name , orders.quantity from orders
inner join customers on orders.customer_id = customers.customer_id
inner join products on orders.product_id = products.product_id
order by customers.customer_name;

-- Scenario 16
select products.product_name,orders.quantity from products
left join orders on products.product_id = orders.product_id
order by orders.quantity DESC;