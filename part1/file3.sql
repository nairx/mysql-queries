-- filtering data

select * from city where CountryCode = 'IND';
select * from city where CountryCode in ("IND","USA");
select * from city where CountryCode not in ("IND","USA");
select name, countrycode, population from city order by population desc limit 10;
select distinct CountryCode from city where CountryCode != "USA";
-/*
select * from city where Population > 5000000;
select * from city where Population between 5598953 and 7000000;
select name, countrycode, population from city order by population desc limit 10 offset 2;
select name, countrycode, population from city order by population desc limit 2,10;
*/-
select * from city where Population > 5000000 and CountryCode="IND";
--select * from city where Population > 5000000 or CountryCode="IND";
select * from city where not CountryCode = 'IND';