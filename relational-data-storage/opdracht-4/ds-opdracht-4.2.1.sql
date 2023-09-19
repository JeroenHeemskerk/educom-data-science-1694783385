SELECT c.name, c.commune_ID
FROM mhl_cities AS c
LEFT JOIN mhl_communes AS g
ON c.commune_ID = g.id
WHERE g.name IS NULL