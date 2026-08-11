update employees set name="emp6" where empid=5;

delete from employees where empid=5;

create table orders(
    id int auto_increment primary key,
    userid int,
    ordervalue double
);

insert into orders(userid,orderValue) values (1,3500);

//inner join
select u.userid,u.username,o.orderValue
from users u
inner join orders o on u.userid = o.userid;


//left join
select u.userid,u.username,o.orderValue
from users u
left join orders o on u.userid = o.userid;


//right join
select u.userid,u.username,o.orderValue
from orders o
right join users u on u.userid = o.userid;


alter table employees add column mgr int;


insert into employees(name,depid,mgr) values ('emp5',1,3);

update employees set mgr=7 where empid in (1,2,4);

//display empid,empname,mgrname
select e.empid,e.name as emp,m.name as reportee
from employees e
inner join employees m on e.empid = m.mgr;

select * from employees
cross join orders;