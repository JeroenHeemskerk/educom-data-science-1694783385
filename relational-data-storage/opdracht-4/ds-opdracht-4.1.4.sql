SELECT s.name, s.straat, s.huisnr, s.postcode
FROM mhl_suppliers AS s
INNER JOIN mhl_yn_properties AS y
ON s.id = y.supplier_ID
INNER JOIN mhl_propertytypes AS p
ON y.propertytype_ID = p.id
WHERE p.name = 'specialistische leverancier' 
OR p.name = 'ook voor particulieren'