create table employees1(
    id int auto_increment primary key,
    empname varchar(255),
    age int,
    check(age>=21)
);

insert into employees1(empname,age) values("emp1",25);

insert into employees1(empname,age) values("emp3",27);


//default constraint
alter table employees1 add country varchar(255) default "IND";

alter table employees1 add city varchar(200);

alter table employees1 alter city set default "Hyderabad";

constraints
//not null 
//check constraint
//primary key constraint
//foreign key constraint
//default constraint
//unique key constraint