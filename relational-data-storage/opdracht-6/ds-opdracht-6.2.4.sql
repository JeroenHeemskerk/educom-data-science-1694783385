SELECT 
YEAR(joindate),
CASE 
WHEN MONTH(joindate) = 1 THEN 'january'
WHEN MONTH(joindate) = 2 THEN 'february'
WHEN MONTH(joindate) = 3 THEN 'march'
WHEN MONTH(joindate) = 4 THEN 'april'
WHEN MONTH(joindate) = 5 THEN 'may'
WHEN MONTH(joindate) = 6 THEN 'june'
WHEN MONTH(joindate) = 7 THEN 'july'
WHEN MONTH(joindate) = 8 THEN 'august'
WHEN MONTH(joindate) = 9 THEN 'september'
WHEN MONTH(joindate) = 10 THEN 'october'
WHEN MONTH(joindate) = 11 THEN 'november'
WHEN MONTH(joindate) = 12 THEN 'december'
END as maand,
COUNT(id)
FROM mhl_suppliers
GROUP BY YEAR(joindate), MONTH(joindate)
ORDER BY YEAR(joindate), MONTH(joindate)