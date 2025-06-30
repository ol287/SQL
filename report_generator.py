import sqlite3
import pandas as pd

conn = sqlite3.connect("sales.db")

query = """
SELECT p.name AS Product, SUM(oi.quantity * oi.unit_price) AS TotalSales
FROM OrderItems oi
JOIN Products p ON oi.product_id = p.product_id
GROUP BY p.name
ORDER BY TotalSales DESC;
"""

df = pd.read_sql(query, conn)
df.to_excel("sales_report.xlsx", index=False)
print("Report exported to sales_report.xlsx")
