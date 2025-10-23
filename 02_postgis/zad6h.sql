WITH poly AS (
  SELECT ST_GeomFromText('POLYGON((4 7, 6 7, 6 8, 4 8, 4 7))') AS geom
)
SELECT
  ST_Area(ST_SymDifference(b.geom, p.geom)) AS non_common_area
FROM buildings b, poly p
WHERE b.name = 'BuildingC';
