SELECT h.hitcount, s.name, c.name, p.name, d.name
FROM mhl_suppliers AS s
INNER JOIN mhl_hitcount AS h
ON s.id = h.supplier_ID
INNER JOIN mhl_cities AS c
ON s.city_ID = c.id
INNER JOIN mhl_communes AS p
ON c.commune_ID = p.id
INNER JOIN mhl_districts AS d
ON p.district_ID = d.id
WHERE h.year = 2014 AND h.month = 1 AND d.id = 6