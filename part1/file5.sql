select name,population,
case
    when population > 5000000 then 'High'
    when population between 200000 and 5000000 then 'Moderate'
    else 'Low'
end as population_status
from city;