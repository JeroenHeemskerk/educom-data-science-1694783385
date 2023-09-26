SELECT DATE_FORMAT(joindate, "%m.%d.%Y"), id
FROM mhl_suppliers
WHERE joindate < LAST_DAY(joindate) AND
joindate > LAST_DAY(joindate) -8