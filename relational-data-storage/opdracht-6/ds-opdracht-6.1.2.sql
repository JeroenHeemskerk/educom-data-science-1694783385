SELECT
co.name,
s.name,
SUM(h.hitcount),
(SELECT AVG(h.hitcount) FROM mhl_suppliers AS s
INNER JOIN mhl_hitcount as h ON s.id = h.supplier_ID
INNER JOIN mhl_cities as ci ON s.city_ID = ci.id
INNER JOIN mhl_communes as co2 ON co2.id = ci.commune_ID
WHERE co2.name = co.name
GROUP BY co2.name
ORDER BY AVG(h.hitcount) DESC) as average_hitcount
FROM mhl_suppliers AS s
INNER JOIN mhl_hitcount as h
ON s.id = h.supplier_ID
INNER JOIN mhl_cities as ci
ON s.city_ID = ci.id
INNER JOIN mhl_communes as co
ON co.id = ci.commune_ID
GROUP BY co.name, s.name
ORDER BY SUM(h.hitcount) DESC