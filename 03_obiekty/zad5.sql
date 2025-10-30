--Wyznacz pole powierzchni wszystkich buforów o wielkości 5 jednostek, które zostały utworzone wokół obiektów nie zawierających łuków. 

SELECT ST_Area(ST_Buffer(ST_Union(ST_Force3D(geom)), 5)) 
FROM obiekty
WHERE NOT ST_HasArc(geom)
