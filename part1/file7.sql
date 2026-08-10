select name,indepyear from country;

select name, ifnull(indepyear,'NA') from country;

select name, ifnull(indepyear,0) from country;

select name, 1+ifnull(indepyear,0) from country;

select concat(name,", ",district,", ",countrycode) as Address from city limit 10;

select name,format(population,2) from city limit 10;

select name,char_length(name) from country;

select name, insert(countrycode,1,0,"Country Code - ") as countrycode from city limit 10;

select lcase(name) from city limit 10; // lower also works

select ucase(name) from city limit 10; // upper also works

select left(name,3) as city from city limit 10;

select name,length(name) as city from city limit 10;

select name,mid(name,1,3) as city from city limit 10;

select name, replace(region,"East","E") from country limit 10;

select name, substring(name,2,3) from country limit 10;