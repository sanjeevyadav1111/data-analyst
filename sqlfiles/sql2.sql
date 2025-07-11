# joins
create database join_sql;
use join_sql;
drop table customer;
drop table orders;

create table customer (
customer_id int not null,
customer_name varchar(30),
contact_name varchar(40),
address varchar(50),
city varchar(30),
postalcode varchar(20),
country varchar(40),
primary key (customer_id)
);
create table orders(
order_id int,
customer_id int,
employee_id int,
orderdate datetime,
shipper_id int,
primary key (order_id)
);
select * from customer;
select * from orders;


show tables;
insert into customer values(1,'satya','satya','kauriram','kauriram','0000','india');
insert into customer values(2,'megha','megha','gorakhpur','gorakhpur','0000','india');
insert into customer values(3,'varun','varu','kauriram','kauriram','0000','italy');
insert into customer values(4,'dilly','dill','gorakpur','gorakhpur','0000','france');
insert into customer values(5,'rosy','ros','dhaska','kauriram','0000','italy');
insert into orders values(1,1,1,'2012-01-01',201);
insert into orders values(2,1,1,'2013-01-01',201);
insert into orders values(3,4,4,'2012-01-01',201);
insert into orders values(4,5,5,'2014-01-01',201);
insert into orders values(5,6,6,'2013-01-01',201);
select * from customer c left join orders o on c.customer_id=o.customer_id;
select c.customer_id,c.customer_name,c.country,o.order_id,o.orderdate from customer c left join orders o on c.customer_id=o.customer_id;
select * from customer c inner join orders o on c.customer_id=o.customer_id;
select * from customer c right outer join orders o on c.customer_id=o.customer_id
union 
select * from customer c left outer join orders o on c.customer_id=o.customer_id;

select * from customer c left outer join orders o on c.customer_id=o.customer_id;


