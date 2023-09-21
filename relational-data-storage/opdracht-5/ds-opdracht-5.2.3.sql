SELECT h.year, 
SUM(IF(h.month IN (1,2,3),h.hitcount, null)) as kwartaal1,
SUM(IF(h.month IN (4,5,6),h.hitcount, null)) as kwartaal2,
SUM(IF(h.month IN (7,8,9),h.hitcount, null)) as kwartaal3,
SUM(IF(h.month IN (10,11,12),h.hitcount, null)) as kwartaal4,
SUM(h.hitcount) as totaal
FROM mhl_hitcount as h
GROUP BY h.year