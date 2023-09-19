SELECT c1.name, c1.id, c2.id, p1.id, p2.id, p1.name, p2.name 
FROM mhl_cities AS c1
INNER JOIN (SELECT name, id, commune_ID, COUNT(name) 
FROM mhl_cities GROUP BY name HAVING count(name) > 1) AS c2
ON c1.name = c2.name
INNER JOIN mhl_communes AS p1
ON c1.commune_ID = p1.id
INNER JOIN mhl_communes AS p2
ON c2.commune_ID = p2.id
WHERE c1.id != c2.id
ORDER BY c2.name