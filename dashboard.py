import streamlit as st
import sqlite3
import pandas as pd

st.title("📊 Sales Dashboard")

conn = sqlite3.connect("sales.db")

query = "SELECT * FROM Orders"
df = pd.read_sql(query, conn)

st.subheader("Orders Table")
st.dataframe(df)

st.subheader("Total Revenue")
st.metric(label="Total Revenue", value=f"${df['total_amount'].sum():,.2f}")
