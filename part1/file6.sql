--mysql functions

select min(population) from city;

select max(population) from city;

select avg(population) from city;

select count(population) from city;

select count(population) from city;

select countrycode,min(population) from city group by countrycode;