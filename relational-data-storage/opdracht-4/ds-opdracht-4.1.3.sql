SELECT s.name, s.straat, s.huisnr, s.postcode, 
FROM mhl_suppliers AS s
INNER JOIN mhl_suppliers_mhl_rubriek_view AS x
ON s.id = x.mhl_suppliers_ID
INNER JOIN mhl_rubrieken AS r
ON r.id = x.mhl_rubriek_view_ID
WHERE s.city_ID = 104 AND r.id = 235 
OR s.city_ID = 104 AND r.parent = 235 
ORDER BY r.name, s.name