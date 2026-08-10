create database myapp25
drop database myapp25;

create database myapp37;

use myapp37;

create table
    users (
        userid int auto_increment primary key,
        username varchar(255),
        retired boolean,
        entry datetime,
        height decimal,
        awards json,
        priority enum('Low','Medium','High')
    );

show tables;

drop table users;

insert into users(username,retired,entry,height,awards,priority) value("user1",true,'2025-12-23 10:10:10',1.75,'{"2023":"Grammy Award"}','Low');

alter table users auto_increment=100101;

insert into users(username,retired,entry,height,awards,priority) value("user2",true,'2025-12-23 10:10:10',1.75,'{"2023":"Grammy Award"}','Low');

alter table users add country varchar(255);

alter table users modify country int;

alter table users drop column country;