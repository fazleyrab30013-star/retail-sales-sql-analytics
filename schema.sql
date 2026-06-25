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
