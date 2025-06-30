-- Customers Table
CREATE TABLE Customers (
    customer_id INTEGER PRIMARY KEY,
    name TEXT,
    email TEXT,
    city TEXT,
    registration_date DATE
);

-- Products Table
CREATE TABLE Products (
    product_id INTEGER PRIMARY KEY,
    name TEXT,
    category TEXT,
    price REAL,
    stock_quantity INTEGER
);

-- Employees Table
CREATE TABLE Employees (
    employee_id INTEGER PRIMARY KEY,
    name TEXT,
    role TEXT,
    hire_date DATE
);

-- Orders Table
CREATE TABLE Orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    employee_id INTEGER,
    order_date DATE,
    total_amount REAL,
    FOREIGN KEY(customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY(employee_id) REFERENCES Employees(employee_id)
);

-- OrderItems Table
CREATE TABLE OrderItems (
    item_id INTEGER PRIMARY KEY,
    order_id INTEGER,
    product_id INTEGER,
    quantity INTEGER,
    unit_price REAL,
    FOREIGN KEY(order_id) REFERENCES Orders(order_id),
    FOREIGN KEY(product_id) REFERENCES Products(product_id)
);
