DROP TABLE IF EXISTS sales;
CREATE TABLE sales (
        sale_id INTEGER PRIMARY KEY,
        category VARCHAR,
        sale_date DATE,
        amount INTEGER
);

INSERT INTO sales VALUES 
    (1, 'Electronics', '2024-01-15', 1200),
    (2, 'Furniture', '2024-01-20', 800),
    (3, 'Electronics', '2024-02-10', 1500),
    (4, 'Clothing', '2024-02-15', 300),
    (5, 'Furniture', '2024-03-05', 700),
    (6, 'Clothing', '2024-03-10', 400),
    (7, 'Electronics', '2024-03-15', 2000),
    (8, 'Furniture', '2024-03-22', 950),
    (9, 'Electronics', '2024-04-02', 1750),
    (10, 'Clothing', '2024-04-08', 280),
    (11, 'Electronics', '2024-04-18', 2200),
    (12, 'Furniture', '2024-04-25', 640),
    (13, 'Clothing', '2024-05-01', 520),
    (14, 'Electronics', '2024-05-12', 1950),
    (15, 'Furniture', '2024-05-20', 890),
    (16, 'Clothing', '2024-06-03', 310),
    (17, 'Electronics', '2024-06-10', 2400),
    (18, 'Furniture', '2024-06-15', 760),
    (19, 'Clothing', '2024-06-21', 450),
    (20, 'Electronics', '2024-07-05', 1800)
;




