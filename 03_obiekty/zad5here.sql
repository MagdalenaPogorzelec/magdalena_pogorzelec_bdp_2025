--Zaktualizuj dane w tabeli ‘input_points’ tak, aby punkty te były w układzie współrzędnych DHDN.Berlin/Cassini.
 
 UPDATE input_points
 SET geom = ST_Transform(ST_SetSRID(geom, 4326), 3068);