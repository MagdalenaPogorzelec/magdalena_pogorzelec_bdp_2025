SELECT b.name
FROM buildings b, roads r
WHERE r.name = 'RoadX' AND ST_Y(ST_Centroid(b.geom)) > ST_YMin(r.geom);