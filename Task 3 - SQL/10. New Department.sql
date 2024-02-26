INSERT INTO departments (department_id, department_name)
SELECT MAX(department_id) + 1, 'Human Resources'
FROM departments;
