DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
        employee_id INTEGER PRIMARY KEY,
        employee_name VARCHAR,
        department VARCHAR,
        salary INTEGER
);

INSERT INTO employees (employee_id, employee_name, department, salary) VALUES
    -- Sales employees from your dataset
    (1, 'Alice Johnson', 'Sales', 550000),
    (2, 'Bob Smith', 'Sales', 700000),
    (3, 'Charlie Brown', 'Sales', 320000),
    (4, 'Diana Prince', 'Sales', 620000),
    (5, 'Ethan Hunt', 'Sales', 410000),
    (6, 'Frank Green', 'Sales', 490000),
    (7, 'Grace Adams', 'Sales', 520000),
    (8, 'Henry King', 'Sales', 400000),
    (9, 'Ivy Walker', 'Sales', 540000),
    (10, 'Jack White', 'Sales', 470000),

    -- Additional Sales employees
    (11, 'Laura Chen', 'Sales', 380000),
    (12, 'Marcus Lee', 'Sales', 420000),
    (13, 'Nina Patel', 'Sales', 450000),

    -- Operations employees
    (14, 'Oliver Stone', 'Operations', 85000),
    (15, 'Patricia Wells', 'Operations', 78000),
    (16, 'Samuel Turner', 'Operations', 90000),

    -- Marketing employees
    (17, 'Tara Benson', 'Marketing', 95000),
    (18, 'Uma Garcia', 'Marketing', 88000),
    (19, 'Victor Ramirez', 'Marketing', 92000)
