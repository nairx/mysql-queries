select code from country where gnp > 250000;

select * from city where countrycode in (select code from country where gnp > 2250000);

select max(cities),min(cities) from (
select countrycode,count(name) as cities from city group by countrycode) as lineitems;