SELECT s.name, p.name, y.content 
FROM mhl_suppliers AS s
LEFT JOIN mhl_yn_properties AS y
ON s.id = y.supplier_ID
LEFT JOIN mhl_propertytypes AS p
ON y.propertytype_ID = p.id
WHERE s.city_ID = 104
ORDER BY s.name