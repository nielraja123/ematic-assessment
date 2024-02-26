SELECT e.first_name, e.last_name, o.customer_id, SUM(o.total_amount) AS total_order_amount
FROM orders o
JOIN employees e ON o.customer_id = e.employee_id
GROUP BY e.first_name, e.last_name, o.customer_id;
