SELECT joindate, id
FROM mhl_suppliers
WHERE joindate < LAST_DAY(joindate) AND
joindate > LAST_DAY(joindate) -7