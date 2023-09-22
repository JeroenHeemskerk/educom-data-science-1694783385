SELECT
r.name, COUNT(IF(s.id = sr.mhl_suppliers_ID,1, null))
FROM mhl_rubrieken as r
INNER JOIN mhl_suppliers_mhl_rubriek_view AS sr
on sr.mhl_rubriek_view_ID = r.id
INNER JOIN mhl_suppliers AS s
on s.id = sr.mhl_suppliers_ID
GROUP BY r.name
