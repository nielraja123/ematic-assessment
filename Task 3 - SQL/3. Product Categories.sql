SELECT category_id, COUNT(product_id) AS product_count
FROM products
GROUP BY category_id;
