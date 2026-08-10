create table emp(
    id int not null,
    empname varchar(255) not null,
    salary int
)

insert into emp(id,empname,salary) values(1,"emp1",3400);

insert into emp(id,empname,salary) values(1,null,3400);

insert into emp(id,empname,salary) values(1,"emp2",null);

alter table emp modify salary int not null

drop table emp;

create table emp(
    id int not null,
    empname varchar(255) not null,
    salary int,
    unique (id)
)

alter table emp add country varchar(255);

alter table emp add country varchar(255) after empname;