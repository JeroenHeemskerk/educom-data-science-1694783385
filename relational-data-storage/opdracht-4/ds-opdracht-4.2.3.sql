SELECT r1.id, 
       IFNULL(r2.name, r1.name) as hoofdrubriek, 
       IF(ISNULL(r2.name), '', r1.name) as subrubriek
FROM mhl_rubrieken AS r2
RIGHT OUTER JOIN mhl_rubrieken AS r1
ON r1.parent = r2.id
ORDER BY hoofdrubriek, subrubriek