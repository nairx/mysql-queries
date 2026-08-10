select code from country where gnp > 250000;

select * from city where countrycode in (select code from country where gnp > 2250000);

select max(cities),min(cities) from (
select countrycode,count(name) as cities from city group by countrycode) as lineitems;

select city.name,country.name from country, city where country.code = city.countrycode;

select ct.name,cn.name from country cn, city ct where cn.code = ct.countrycode;

select city.name, country.name from country inner join city on country.code = city.countrycode;

//display countryname and language spoken
select country.name,countrylanguage.language from country inner join countrylanguage on country.code = countrylanguage.countrycode;

