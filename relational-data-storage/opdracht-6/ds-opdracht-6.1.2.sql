SELECT
d.name,
s.name,
SUM(h.hitcount),
AVG(h.hitcount)
FROM mhl_suppliers AS s
INNER JOIN mhl_hitcount as h
ON s.id = h.supplier_ID
INNER JOIN mhl_cities as ci
ON s.city_ID = ci.id
INNER JOIN mhl_communes as co
ON co.id = ci.commune_ID
INNER JOIN mhl_districts as d
ON co.district_ID = d.id
GROUP BY d.name, s.name
ORDER BY SUM(h.hitcount) DESC, AVG(h.hitcount) DESC