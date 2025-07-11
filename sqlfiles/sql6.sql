use intro;
select * from info;
UPDATE info
SET orderdate = STR_TO_DATE(orderdate, '%c/%e/%Y %H:%i');

ALTER TABLE info
MODIFY COLUMN orderdate DATETIME;

select orderdate,datediff(sysdate(),orderdate) from info;
select * from info where ;
select * from info;

