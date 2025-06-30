from fastapi import FastAPI
import sqlite3

app = FastAPI()

@app.get("/products")
def get_products():
    conn = sqlite3.connect("sales.db")
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM Products")
    rows = cursor.fetchall()
    return {"products": rows}
