CREATE VIEW VERZENDLIJST2
AS
SELECT
    s.name,
    IF(ISNULL(d.contact),'t.a.v. directie', d.contact) as contact,
    l.adres,
    l.postcode,
    l.stad
FROM
    mhl_suppliers as s
LEFT JOIN directie AS d
    on s.id = d.supplier_ID
LEFT JOIN verzendlijst AS l
    on s.id = l.id