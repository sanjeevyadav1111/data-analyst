create database intro;
use intro;

create table students(id int,name varchar(30) not null,age int,gender varchar(20),location varchar(50));
select * from students;
insert into students values(1,'sanjeev',22,'male','kauriram'),(2,'ravi',21,'male','gorakhpur');
create table dep
(depid int,
depname varchar(30),
depadd varchar(30),
primary key (depid)
);
create table emp
(empid int,
empname varchar(30),
empadd varchar(30),
depid int,
primary key (empid),
foreign key (depid) references dep(depid)

);
select * from emp;
show tables
create table employee
(emp_name varchar(50),
emp_id int not null,
manager_name varchar(50),
division int,
primary key (emp_id)
);
alter table  employee modify  emp_id int not null;
alter table employee add (age int);
select * from employee;
select id ,name from students;
select age from students where age<22;


select count(id) from students;
select count(id) as record_count from students;
select * from students where name like 'ravi';
select * from students where name like '%anj%';
insert into students values(3,'sanjeev',20,'male','kauriram'),(4,'ruvi',21,'female','gorakhpur');
insert into students values(5,'eev',22,'male','kauriram'),(6,'kali',23,'male','gorakhpur');
insert into students values(7,'rojy',22,'female','kauriram'),(8,'jaya',21,'female','gorakhpur');
update  students set age=24 where id=6;
delete from students where name='sanjeev';
select * from students ;



