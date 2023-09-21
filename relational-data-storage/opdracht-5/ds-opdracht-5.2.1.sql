SELECT s.name,
IFNULL(c.name, 't.a.v. de directie') as aanhef,
CASE 
WHEN s.p_address = '' THEN s.straat 
WHEN s.p_address != '' THEN s.p_address 
END as adres,
s.postcode
FROM mhl_suppliers as s
LEFT JOIN mhl_contacts AS c
on s.id = c.supplier_ID
INNER JOIN mhl_cities AS ci
on ci.id = s.city_ID
INNER JOIN mhl_communes AS co
on ci.commune_ID = co.id
INNER JOIN mhl_districts AS d
on co.district_ID = d.id
ORDER BY d.name, co.name, s.name