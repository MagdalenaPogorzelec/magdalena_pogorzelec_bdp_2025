SELECT ST_Area(
    ST_Difference(bc.geom, ST_Buffer(bb.geom, 0.5))
) AS area_outside_buffer
FROM buildings bc, buildings bb
WHERE bc.name = 'BuildingC' AND bb.name = 'BuildingB';
