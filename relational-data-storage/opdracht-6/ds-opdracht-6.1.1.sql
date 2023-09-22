SELECT DISTINCT h.year, 
CASE
    WHEN h.month = 1 THEN 'januari'
    WHEN h.month = 2 THEN 'februari'
    WHEN h.month = 3 THEN 'maart'
    WHEN h.month = 4 THEN 'april'
    WHEN h.month = 5 THEN 'mei'
    WHEN h.month = 6 THEN 'juni'
    WHEN h.month = 7 THEN 'juli'
    WHEN h.month = 8 THEN 'augustus'
    WHEN h.month = 9 THEN 'september'
    WHEN h.month = 10 THEN 'oktober'
    WHEN h.month = 11 THEN 'november'
    WHEN h.month = 12 THEN 'december'
END as maand,
COUNT(h.supplier_ID),
SUM(h.hitcount)
FROM mhl_hitcount AS h
GROUP BY h.year, h.month
ORDER BY h.year DESC, h.month DESC