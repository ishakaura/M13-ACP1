CREATE TABLE customers (
  id INTEGER PRIMARY KEY,
  name TEXT,
  city TEXT
);

CREATE TABLE orders (
  id INTEGER PRIMARY KEY,
  customer_id INTEGER,
  amount REAL,
  order_date TEXT,
  FOREIGN KEY (customer_id) REFERENCES customers(id)
);

INSERT INTO customers VALUES
  (1, 'Asha', 'Mumbai'),
  (2, 'Ravi', 'Delhi'),
  (3, 'Meera', 'Mumbai'),
  (4, 'Kabir', 'Pune');

INSERT INTO orders VALUES
  (1, 1, 250.0, '2026-10-01'),
  (2, 1, 120.5, '2026-10-05'),
  (3, 2, 980.0, '2026-10-07'),
  (4, 3, 45.0,  '2026-10-10'),
  (5, 3, 300.0, '2026-10-12');
