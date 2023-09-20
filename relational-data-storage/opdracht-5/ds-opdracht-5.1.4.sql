SELECT s.name, SUM(h.hitcount), COUNT(h.month), AVG(h.hitcount)
FROM mhl_hitcount as h
INNER JOIN mhl_suppliers AS s
on s.id = h.supplier_ID
GROUP BY s.name
ORDER BY SUM(h.hitcount) DESC