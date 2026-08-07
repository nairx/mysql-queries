open SQL client
show databases;
system cls;  -- to clear the screen
show tables; -- display all table names
desc city;
select * from city;
select Name,CountryCode from city;
select distinct CountryCode from city;
select count(name) from city;
select count(distinct CountryCode) from city;