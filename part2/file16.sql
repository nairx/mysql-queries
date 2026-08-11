show indexes from city;

create index idx_name
on city(name);

alter table city
drop index idx_name;