SELECT c1.name, c2.name, c1.id, c2.id, c1.commune_ID, c2.commune_ID 
FROM mhl_cities AS c1
INNER JOIN (SELECT name, id, commune_ID, COUNT(name) 
FROM mhl_cities GROUP BY name HAVING count(name) > 1) AS c2
ON c1.name = c2.name
WHERE c1.id != c2.id
ORDER BY c2.name