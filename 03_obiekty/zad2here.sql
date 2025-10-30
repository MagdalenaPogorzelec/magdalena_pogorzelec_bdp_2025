--Znajdź ile nowych POI pojawiło się w promieniu 500 m od wyremontowanych lub wybudowanych budynków, które znalezione zostały w zadaniu 1. Policz je wg ich kategorii.

CREATE TABLE new_poi_near_buildings AS
WITH new_poi AS (
    SELECT poi2019.*
    FROM t2019_kar_poi_table poi2019
    LEFT JOIN t2018_kar_poi_table poi2018
    ON poi2019.geom = poi2018.geom
    WHERE poi2018.geom IS NULL
)
SELECT np.type, COUNT(DISTINCT(np.*)) AS liczba
FROM new_poi np
JOIN new_or_renovated_buildings b
ON ST_DWithin(b.geom, np.geom,0.005)
GROUP BY np.type
ORDER BY liczba DESC;