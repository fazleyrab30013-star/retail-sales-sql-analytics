**Schema (MySQL v5.7)**

    CREATE TABLE Products (
        product_id INTEGER PRIMARY KEY,
        product_name TEXT,
        price REAL,
        category TEXT
    );
    
    CREATE TABLE Sales (
        sale_id INTEGER PRIMARY KEY,
        product_id INTEGER,
        quantity INTEGER,
        sale_date DATE,
        FOREIGN KEY (product_id) REFERENCES Products(product_id)
    );

---

**Query #1**

    INSERT INTO Products VALUES (1, 'Laptop', 50000, 'Electronics'), (2, 'Mouse', 500, 'Accessories'), 
    (3, 'Keyboard', 1200, 'Accessories'), (4, 'Monitor', 8000, 'Electronics'), (5, 'Webcam', 2500, 'Accessories');

There are no results to be displayed.

---
**Query #2**

    INSERT INTO Sales VALUES (1, 1, 2, '2026-06-01'), (2, 2, 10, '2026-06-02'), 
    (3, 3, 5, '2026-06-03'), (4, 1, 1, '2026-06-05'), (5, 4, 3, '2026-06-06'), (6, 2, 2, '2026-06-07');

There are no results to be displayed.

---
**Query #3**

    SELECT p.product_name
    FROM Products p
    LEFT JOIN Sales s ON p.product_id = s.product_id
    WHERE s.sale_id IS NULL;

| product_name |
| ------------ |
| Webcam       |

---
**Query #4**

    SELECT 
        p.category, 
        SUM(s.quantity * p.price) AS category_revenue
    FROM Sales s
    JOIN Products p ON s.product_id = p.product_id
    GROUP BY p.category
    ORDER BY category_revenue DESC;

| category    | category_revenue |
| ----------- | ---------------- |
| Electronics | 174000           |
| Accessories | 12000            |

---
**Query #5**

    SELECT 
        p.product_name, 
        SUM(s.quantity) AS total_sold
    FROM Sales s
    JOIN Products p ON s.product_id = p.product_id
    GROUP BY p.product_name
    HAVING total_sold > 3;

| product_name | total_sold |
| ------------ | ---------- |
| Keyboard     | 5          |
| Mouse        | 12         |

---

[View on DB Fiddle](https://www.db-fiddle.com/)
