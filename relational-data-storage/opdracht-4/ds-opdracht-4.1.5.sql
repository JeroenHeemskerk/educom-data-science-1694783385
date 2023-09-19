SELECT s.name, s.straat, s.huisnr, s.postcode
FROM mhl_suppliers AS s
INNER JOIN pc_lat_long AS l
ON s.postcode = l.pc6
ORDER BY l.lat DESC LIMIT 5