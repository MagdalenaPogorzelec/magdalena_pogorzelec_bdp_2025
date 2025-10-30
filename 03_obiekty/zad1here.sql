-- Znajdź budynki, które zostały wybudowane lub wyremontowane na przestrzeni roku (zmiana pomiędzy 2018 a 2019)

CREATE TABLE new_or_renovated_buildings AS
SELECT b2019.*
FROM t2019_kar_buildings b2019
LEFT JOIN t2018_kar_buildings b2018
ON b2019.geom = b2018.geom AND b2019.height = b2018.height
WHERE b2018.geom IS NULL;