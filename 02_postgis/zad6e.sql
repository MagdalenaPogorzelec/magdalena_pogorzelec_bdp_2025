SELECT ST_Distance(b.geom, p.geom) AS distance
FROM buildings b, poi p
WHERE b.name = 'BuildingC' AND p.name = 'K';