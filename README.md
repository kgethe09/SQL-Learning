# Retail Sales - SQL Practice

A small SQL Server practice file working with a single-table retail sales dataset

# What's in here
- `01_retail_sales_basics.sql` — table creation, sample data (40 rows), and four queries

# Concepts practiced
- **DDL**: table creation with a primary key constraint
- *DML*: bulk `INSERT` with multiple value rows
- *Computed columns*: deriving `price_per_unit` from `revenue / quantity`
- *Date filtering**: `WHERE ... BETWEEN` for a specific month
- *Aggregation*: `GROUP BY` + `HAVING` + `ORDER BY` to find products with more than 20 total units sold

# Notes
Data is synthetic, generated for practice — not real sales figures.

# Next
Planning to extend this into a small SQL business report generator (revenue by product, top/worst sellers, monthly trend) as I go further into SQL.
