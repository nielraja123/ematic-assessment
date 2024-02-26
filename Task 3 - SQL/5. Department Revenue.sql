SELECT d.department_name, SUM(o.total_amount) AS total_revenue
FROM orders o
JOIN employees e ON o.customer_id = e.employee_id
JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_name;
