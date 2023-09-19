SELECT id
FROM mhl_rubrieken WHERE id = 235 AND parent = 235;

SELECT mhl_suppliers_ID
FROM mhl_suppliers_mhl_rubriek_view WHERE mhl_rubriek_view_ID = 235;

SELECT name, straat, huisnr, postcode 
FROM mhl_suppliers WHERE city_ID = 104;