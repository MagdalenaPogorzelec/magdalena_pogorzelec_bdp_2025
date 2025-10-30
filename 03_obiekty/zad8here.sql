--Znajdź punkty przecięcia torów kolejowych (RAILWAYS) z ciekami (WATER_LINES). Zapisz znalezioną geometrię do osobnej tabeli o nazwie ‘T2019_KAR_BRIDGES’

CREATE TABLE T2019_KAR_BRIDGES AS
SELECT DISTINCT(ST_Intersection(r.geom, w.geom)) AS geom
FROM T2019_KAR_RAILWAYS r
JOIN T2019_KAR_WATER_LINES w
ON ST_Intersects(r.geom, w.geom)