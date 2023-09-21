SELECT c.name, 
COUNT(IF(m.id = 1,1, null)) as gold,
COUNT(IF(m.id = 2,1, null)) as zilver,
COUNT(IF(m.id = 3,1, null)) as brons,
COUNT(IF(m.id NOT IN (1,2,3),1, null)) as overig
FROM mhl_suppliers as s
INNER JOIN mhl_cities AS c
on c.id = s.city_ID
INNER JOIN mhl_membertypes AS m
on m.id = s.membertype
GROUP BY c.name
ORDER BY COUNT(IF(m.id = 1,1, null)) DESC, COUNT(IF(m.id = 2,1, null)) DESC, 
COUNT(IF(m.id = 3,1, null)) DESC, COUNT(IF(m.id NOT IN (1,2,3),1, null)) DESC