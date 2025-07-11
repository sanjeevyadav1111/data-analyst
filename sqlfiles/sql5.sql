use classicmodels;
show tables;
select * from products;
create table productlinemsrp as 
select sum(msrp),productLine from products group by productLine;
select a.productLine,a.*,sum(a.msrp) over (partition by a.productLine) as total_msrp from products a;
select row_number() over (order by msrp) as row_num,productLine,msrp from products ;
select msrp , rank() over (order by msrp) as testrank from products;