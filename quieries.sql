-- List customers from London
SELECT name, email FROM Customers WHERE city = 'London';

-- Total sales per product
SELECT p.name, SUM(oi.quantity * oi.unit_price) AS total_sales
FROM OrderItems oi
JOIN Products p ON oi.product_id = p.product_id
GROUP BY p.name;

-- Monthly sales trend
SELECT strftime('%Y-%m', order_date) AS month, SUM(total_amount) AS revenue
FROM Orders
GROUP BY month;
