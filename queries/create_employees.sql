DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
        employee_id INTEGER PRIMARY KEY,
        employee_name VARCHAR,
        department VARCHAR,
        salary INTEGER
);

INSERT INTO employees VALUES 
    (1, 'Alice Johnson', 'Sales', 90000),
    (2, 'Bob Smith', 'Marketing', 75000),
    (3, 'Charlie Brown', 'Sales', 95000),
    (4, 'Diana Prince', 'Sales', 70000),
    (5, 'Ethan Hunt', 'Marketing', 20000)
;