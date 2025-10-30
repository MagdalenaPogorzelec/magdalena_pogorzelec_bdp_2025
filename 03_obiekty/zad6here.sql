-- Znajdź wszystkie skrzyżowania, które znajdują się w odległości 200 m od linii zbudowanej z punktów w tabeli ‘input_points’.
 -- Wykorzystaj tabelę T2019_STREET_NODE. Dokonaj reprojekcji geometrii, aby była zgodna z resztą tabel.


WITH intersections AS (
	SELECT node_id, ST_Transform(geom, 3068) as geom
	FROM T2019_KAR_STREET_NODE s2019
	WHERE s2019."intersect" = 'Y'
), new_line AS (
	SELECT ST_MakeLine(geom) AS geom FROM input_points
)

SELECT DISTINCT(intersections.*)
FROM intersections 
CROSS JOIN new_line 
WHERE ST_Contains(ST_Buffer(new_line.geom, 200), intersections.geom)