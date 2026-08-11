DELIMIER //
CREATE PROCEDURE getMostPopulousCities1()
BEGIN
 select * from city order by population desc limit 10;
END //
DELIMTER;

show procedure status where db='world';

call getMostPopulousCities1;

drop procedure getMostPopulousCities1;