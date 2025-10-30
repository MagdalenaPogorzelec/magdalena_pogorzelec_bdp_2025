--Policz jak wiele sklepów sportowych (‘Sporting Goods Store’ - tabela POIs) znajduje się w odległości 300 m od parków (LAND_USE_A).
 
SELECT COUNT(DISTINCT(poi.*)) 
FROM T2019_KAR_POI_TABLE poi
JOIN T2019_KAR_LAND_USE_A park
ON park.type LIKE '%Park%'
WHERE poi.type = 'Sporting Goods Store'
AND ST_DWithin(poi.geom, park.geom, 0.003);