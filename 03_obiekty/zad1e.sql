INSERT INTO obiekty (nazwa, geom) VALUES
('obiekt5', 
	ST_GeomFromText(
		'MULTIPOINT((30 50 59), (38 32 234))'
	)
);