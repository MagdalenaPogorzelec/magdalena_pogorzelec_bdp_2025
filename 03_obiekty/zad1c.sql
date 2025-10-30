INSERT INTO obiekty (nazwa, geom) VALUES
('obiekt3', 
	ST_GeomFromText(
		'POLYGON((10 17, 12 13, 7 15, 10 17))'
	)
);