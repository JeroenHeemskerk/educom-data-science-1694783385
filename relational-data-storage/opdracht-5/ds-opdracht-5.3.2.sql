CREATE VIEW VERZENDLIJST
AS
SELECT
    s.id,
    IF(s.p_address = '',concat(s.straat,' ',s.huisnr), s.p_address) as adres,
    IF(s.p_address = '',s.postcode, s.p_postcode) as postcode,
    IF(s.p_address = '',c.name, pc.name) as stad
FROM
    mhl_suppliers as s
INNER JOIN mhl_cities AS c
    on c.id = s.city_ID
INNER JOIN mhl_cities AS pc
    on pc.id = s.p_city_ID
GROUP BY s.id


IF(s.p_address = '',c.name, pc.name) as stad

RIGHT JOIN mhl_cities AS c
    on c.id = s.city_ID
RIGHT JOIN mhl_cities AS pc
    on c.id = s.p_city_ID