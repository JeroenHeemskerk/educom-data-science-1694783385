SELECT 
CASE 
WHEN WEEKDAY(joindate) = 0 THEN 'monday'
WHEN WEEKDAY(joindate) = 1 THEN 'tuesday'
WHEN WEEKDAY(joindate) = 2 THEN 'wednesday'
WHEN WEEKDAY(joindate) = 3 THEN 'thursday'
WHEN WEEKDAY(joindate) = 4 THEN 'friday'
WHEN WEEKDAY(joindate) = 5 THEN 'saterday'
WHEN WEEKDAY(joindate) = 6 THEN 'sunday'
END as dag_van_de_week,
COUNT(id)
FROM mhl_suppliers
GROUP BY WEEKDAY(joindate)
ORDER BY WEEKDAY(joindate)