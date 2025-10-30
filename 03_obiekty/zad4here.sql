--Stwórz tabelę o nazwie ‘input_points’ i dodaj do niej dwa rekordy o geometrii punktowej

CREATE TABLE input_points (
    id SERIAL PRIMARY KEY,
    geom GEOMETRY
);

INSERT INTO input_points(geom) VALUES
('POINT(8.36093 49.03174)'),
('POINT(8.39876 49.00644)');