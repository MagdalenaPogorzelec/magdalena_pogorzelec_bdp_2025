INSERT INTO obiekty (nazwa, geom) VALUES
('obiekt6', 
		ST_Collect(
			'LINESTRING(1 1, 3 2)',
			'POINT(4 2)'
	)
);