CREATE TABLE buildings (
    id SERIAL PRIMARY KEY,
    name TEXT,
    geom GEOMETRY(POLYGON)
);

CREATE TABLE roads (
    id SERIAL PRIMARY KEY,
    name TEXT,
    geom GEOMETRY(LINESTRING)
);

CREATE TABLE poi (
    id SERIAL PRIMARY KEY,
    name TEXT,
    geom GEOMETRY(POINT)
);