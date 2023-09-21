SELECT s.name, p.name, IF(ISNULL(y.content),'NOT SET',y.content) AS value
FROM mhl_suppliers AS s
CROSS JOIN mhl_propertytypes AS p
LEFT JOIN mhl_yn_properties AS y
ON s.id = y.supplier_ID AND y.propertytype_ID = p.id
INNER JOIN mhl_cities AS c
ON s.city_ID = c.id
WHERE c.name = 'Amsterdam' AND proptype = "A"