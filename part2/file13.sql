

create table department(
    depid int auto_increment primary key,
    depname varchar(100)
);


insert into department(depname) values('IT');
insert into department(depname) values('HR');


create table employees (
    empid int auto_increment primary key,
    name varchar(255),
    depid int,
    foreign key (depid) references department(depid)
);

insert into employees(name,depid) values('emp1',1);


insert into employees(name,depid) values('emp6',6);  // reference error