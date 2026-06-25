INSERT INTO Products VALUES (1, 'Laptop', 50000, 'Electronics'), (2, 'Mouse', 500, 'Accessories'), 
(3, 'Keyboard', 1200, 'Accessories'), (4, 'Monitor', 8000, 'Electronics'), (5, 'Webcam', 2500, 'Accessories');

INSERT INTO Sales VALUES (1, 1, 2, '2026-06-01'), (2, 2, 10, '2026-06-02'), 
(3, 3, 5, '2026-06-03'), (4, 1, 1, '2026-06-05'), (5, 4, 3, '2026-06-06'), (6, 2, 2, '2026-06-07');
SELECT p.product_name
FROM Products p
LEFT JOIN Sales s ON p.product_id = s.product_id
WHERE s.sale_id IS NULL;
SELECT 
    p.category, 
    SUM(s.quantity * p.price) AS category_revenue
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
GROUP BY p.category
ORDER BY category_revenue DESC;
SELECT 
    p.product_name, 
    SUM(s.quantity) AS total_sold
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
GROUP BY p.product_name
HAVING total_sold > 3;
