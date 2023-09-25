SELECT name,
REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(name, '&Uuml;', 'Ü'), '&ouml;', 'ö'), '&eacute;', 'é'), '&euml;', 'ë'), '&egrave;', 'è'), '&iuml;', 'ï') as nette_naam
FROM mhl_suppliers
