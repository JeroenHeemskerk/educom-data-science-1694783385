SELECT
r.name, SUM(h.hitcount)
FROM mhl_rubrieken as r
INNER JOIN mhl_suppliers_mhl_rubriek_view AS sr
on sr.mhl_rubriek_view_ID = r.id
INNER JOIN mhl_suppliers AS s
on s.id = sr.mhl_suppliers_ID
INNER JOIN mhl_hitcount AS h
on s.id = h.supplier_ID
GROUP BY r.name
