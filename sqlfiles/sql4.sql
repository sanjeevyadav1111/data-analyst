create database fun;
use fun;
create table players(
id int,
playername varchar(30),
country varchar(30),
goals int,
primary key (id)
);
insert into players values(1,'sanjeev','india',6),(2,'liza','usa',4),(3,'sin','uk',3),(4,'somy','india',2);
delimiter &&
create procedure top_players()
begin
select playername,country,goals from players where goals>4;
end &&
delimiter ;
call top_players()
delimiter //
create procedure  update_player(in num int ,in player varchar(30))
begin
update players set goals=num where name=player;
end //
delimiter ;
call update_player(8,'sanjeev');
select * from players;