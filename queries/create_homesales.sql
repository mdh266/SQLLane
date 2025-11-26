DROP TABLE IF EXISTS home_sales;
CREATE TABLE home_sales (
        employee_name VARCHAR,
        sale_date DATE,
        home_price INTEGER,
        city VARCHAR
);

INSERT INTO home_sales VALUES 
    ('Alice Johnson', '2024-01-10', 350000, 'New York'),
    ('Bob Smith', '2024-01-15', 450000, 'Los Angeles'),
    ('Charlie Brown', '2024-02-05', 300000, 'Chicago'),
    ('Diana Prince', '2024-02-20', 600000, 'Miami'),
    ('Ethan Hunt', '2024-03-12', 400000, 'Seattle'),
    ('Alice Johnson', '2024-03-25', 550000, 'New York'),
    ('Bob Smith', '2024-04-10', 700000, 'Los Angeles'),
    ('Charlie Brown', '2024-04-18', 320000, 'Chicago'),
    ('Diana Prince', '2024-05-05', 620000, 'Miami'),
    ('Ethan Hunt', '2024-05-22', 410000, 'Seattle'),
    ('Frank Green', '2024-06-01', 480000, 'Dallas'),
    ('Grace Adams', '2024-06-15', 510000, 'Phoenix'),
    ('Henry King', '2024-07-07', 390000, 'Denver'),
    ('Ivy Walker', '2024-07-21', 530000, 'Atlanta'),
    ('Jack White', '2024-08-09', 460000, 'Boston'),
    ('Frank Green', '2024-08-28', 490000, 'New York'), -- Frank now has a sale in a different city
    ('Grace Adams', '2024-09-14', 520000, 'Los Angeles'), -- Grace now has a sale in a different city
    ('Henry King', '2024-10-03', 400000, 'Denver'),
    ('Ivy Walker', '2024-10-17', 540000, 'Atlanta'),
    ('Jack White', '2024-11-05', 470000, 'Miami'); -- Jack now has a sale in a different city
;

