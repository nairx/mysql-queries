--grouping data
select CountryCode,count(Name) from city group by CountryCode;
select CountryCode,count(Name) from city group by CountryCode order by count(name) desc;
select CountryCode,count(Name) as Cities from city group by CountryCode having count(name) > 100 order by count(name) desc;
select CountryCode,count(Name) from city group by CountryCode with rollup;
select COALESCE(CountryCode, 'Grand Total') as CountryCode,count(Name) from city group by CountryCode with rollup;
select COALESCE(CountryCode, 'Grand Total') as CountryCode,count(Name) as 'Total' from city group by CountryCode with rollup;
select CountryCode,District,count(Name) as 'Cities' from city group by CountryCode,District with rollup;