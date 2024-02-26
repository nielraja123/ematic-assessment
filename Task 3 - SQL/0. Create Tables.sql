-- Create the employees table
CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT,
    hire_date DATE,
    salary DECIMAL(10, 2)
);

-- Insert sample data into the employees table
INSERT INTO employees (first_name, last_name, department_id, hire_date, salary)
VALUES
    ('John', 'Doe', 1, '2020-01-15', 60000.00),
    ('Jane', 'Smith', 2, '2019-05-20', 55000.00),
    ('Bob', 'Johnson', 1, '2021-03-10', 70000.00),
    ('Alice', 'Williams', 2, '2018-09-01', 52000.00);

-- Create the orders table
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATETIME,
    total_amount DECIMAL(10, 2)
);

-- Insert sample data into the orders table
INSERT INTO orders (customer_id, order_date, total_amount)
VALUES
    (1, '2023-01-15 09:30:00', 120.50),
    (2, '2022-12-20 14:45:00', 75.20),
    (1, '2023-02-10 11:15:00', 220.75),
    (3, '2022-11-05 16:20:00', 300.00);



-- Create the products table
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100),
    category_id INT,
    price DECIMAL(10, 2)
);

-- Insert sample data into the products table
INSERT INTO products (product_name, category_id, price)
VALUES
    ('Widget A', 1, 19.99),
    ('Widget B', 1, 24.99),
    ('Gadget X', 2, 49.99),
    ('Gadget Y', 2, 39.99);

-- Create the departments table
CREATE TABLE departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(100)
);

-- Insert sample data into the departments table
INSERT INTO departments (department_name)
VALUES
    ('Sales'),
    ('Engineering'),
    ('Marketing');
