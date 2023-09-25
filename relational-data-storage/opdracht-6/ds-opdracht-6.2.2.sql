SELECT id, joindate, DATEDIFF(joindate, GETDATE())
FROM mhl_suppliers
ORDER BY DATEDIFF(joindate, GETDATE())