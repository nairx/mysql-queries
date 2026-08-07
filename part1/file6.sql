--mysql functions

select min(population) from city;

select max(population) from city;

select avg(population) from city;

select count(population) from city;

select count(population) from city;

select countrycode,min(population) from city group by countrycode;

--display top 5 densly populated District/State
select district, sum(population) as total_population from city group by district order by total_population desc limit 5;


--display top 5 densly populated city district wise
select district, max(population) as total_population from city group by district order by total_population desc limit 5;


--display least 5  populated city district wise
select district, min(population) as total_population from city group by district order by total_population desc limit 5;

--Find the average population of countries.
select countrycode, avg(population) from city group by countrycode;