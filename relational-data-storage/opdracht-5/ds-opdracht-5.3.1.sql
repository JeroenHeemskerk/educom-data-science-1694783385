CREATE VIEW DIRECTIE
AS
SELECT
    c.supplier_ID,
    c.name as contact,
    c.contacttype as functie,
    IF(d.name = 'Directie', 'Directie', 'nvt') as department
FROM
    mhl_contacts as c
INNER JOIN mhl_departments AS d
    on d.id = c.department
WHERE c.contacttype LIKE '%directeur%'