DROP TABLE IF EXISTS regions;

CREATE TABLE regions (
        region_id INTEGER PRIMARY KEY,
        region VARCHAR,
        city VARCHAR
);

INSERT INTO regions VALUES 
    (1, 'Northeast', 'New York'),
    (2, 'Pacific', 'Los Angeles'),
    (3, 'Midwest', 'Chicago'),
    (4, 'South', 'Miami'),
    (5, 'Pacific', 'Seattle'),
    (6, 'Southwest', 'Dallas'),
    (7, 'Southwest', 'Phoenix'),
    (8, 'Southwest', 'Denver'),
    (9, 'South', 'Atlanta'),
    (10, 'Northeast', 'Boston')
;