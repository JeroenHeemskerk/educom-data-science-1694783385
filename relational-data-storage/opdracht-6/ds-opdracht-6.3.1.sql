SELECT name
FROM mhl_cities
WHERE ASCII(name) > 64 AND ASCII(name) < 91
ORDER BY name