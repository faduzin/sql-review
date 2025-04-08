# SQL Review

## SQL Queries - Keywords and Commands

### 1. `SELECT`
- Used to select specific columns from a table.
- When selecting multiple columns, column names must be separated by commas.
- Use the `*` symbol to select all columns from a table.

### 2. `FROM`
- Specifies the table from which the query retrieves data.

### 3. `DISTINCT`
- Removes duplicate rows from the query result, returning only unique rows.
- Returns distinct combinations of column values if more than one column is selected.

### 4. `WHERE`
- Filters rows based on specified conditions.
- Supports logical operations such as `AND`, `OR`, among others.

### 5. `ORDER BY`
- Defines the sorting order of the query results.
- Sorts results in ascending order by default.
- Use the `DESC` keyword to sort in descending order.
- String columns are ordered alphabetically.

### 6. `LIMIT`
- Limits the number of rows returned by the query.

### 7. Arithmetic and Concatenation Operators
- **Arithmetic operators**: `+`, `-`, `*`, `/`, `%`, `^`
- **Concatenation operator**: `||` (used for joining strings)
- Used to create calculated columns or concatenate text.

### 8. `AS` (Alias)
- Renames columns or tables temporarily in a query.
- To include spaces or special characters, use double quotation marks (`"Column Name"`).

### 9. Comparison Operators
- Symbols: `=`, `>`, `<`, `>=`, `<=`, `<>`
- Used to compare values, returning `TRUE` or `FALSE`.
- `BETWEEN`: Verifies if a value lies within an inclusive specified range.

### 10. Logical and Pattern-Matching Operators
- Combine simple conditions into complex expressions.
  - `AND`: Returns true if both conditions are true.
  - `OR`: Returns true if at least one condition is true.
  - `LIKE`: Compares text values using patterns; `%` is a wildcard representing any sequence of characters, `_` represents a single character.
  - `ILIKE`: Similar to `LIKE`, but case-insensitive.

### 11. Aggregate Functions
- Summarize or calculate statistics across multiple rows.
  - `COUNT(column)`: Counts non-null values in a specific column.
  - `COUNT(*)`: Counts all rows, including those with null values.
  - `COUNT(DISTINCT column)`: Counts distinct non-null values.
  - `MIN(column)`: Returns the minimum value.
  - `MAX(column)`: Returns the maximum value.
  - `AVG(column)`: Calculates the average value.
  - `SUM(column)`: Calculates the total sum of values in a specified column.

### 12. Subqueries
- A query nested within another query, commonly used within a `WHERE` clause.
- Can be positioned in different parts of a query:
  - **In `WHERE`**: Filters results based on a subquery that must return a single column.
  - **In `WITH`** (Common Table Expression - CTE): Defines a temporary named result set.
  ```sql
  WITH table_name AS (
    subquery
  )
  SELECT...
  ```
  - **In `FROM`**: Creates a derived table that can be queried similarly to a regular table. This approach may impact readability and is typically less optimal than using a CTE.
  - **In `SELECT`** (Correlated Subquery): Executes a subquery for each row of the main query, potentially negatively impacting performance.

### 13. Performance Consideration
- Filtering (`WHERE`) significantly affects query performance, especially with large databases. Careful filtering practices are advised.

### 14. GROUP BY
- Groups rows sharing common values in specific columns.
- Often used with aggregate functions; without aggregate functions, it functions similarly to `DISTINCT`.
- Although it's possible to reference columns by their ordinal position, this is discouraged because it reduces readability.

### 15. HAVING
- Filters grouped data based on aggregate conditions.
- Primarily designed for filtering aggregate function results.

### 16. JOIN Operations
- Relate two or more tables using common keys or columns.
  - **INNER JOIN**: Returns only rows with matching values in both tables based on the specified key(s).
  - **LEFT JOIN**: Returns all rows from the first (left) table and matching rows from the second (right) table. Non-matching rows from the second table are filled with NULL values.
  - **RIGHT JOIN**: Returns all rows from the second (right) table and matching rows from the first (left) table. Non-matching rows from the first table are filled with NULL values.
  - **FULL JOIN**: Returns all rows from both tables. Non-matching rows from either table are filled with NULL values.

### 17. UNION and UNION ALL
- `UNION`: Combines results of two or more queries into a single result set, eliminating duplicate rows. Queries must have the same number of columns and compatible types.
- `UNION ALL`: Combines query results similarly to UNION but retains duplicate rows.

### 18. Data Processing
- Involves converting and manipulating data types for compatibility with functions or operations.
- **Casting data types**:
```sql
value::datatype
-- or --
CAST(value AS datatype)
```

### 19. Common Data Types
- **Numeric**: `INTEGER`, `FLOAT`, `DECIMAL`, `MONEY`
- **Textual**: `TEXT`, `VARCHAR`, `CHAR`
- **Date/Time**: `DATE`, `TIMESTAMP`, `INTERVAL`
- **Boolean**: `BOOLEAN`

### 20. CASE Statement
- Evaluates conditions sequentially, returning the first match:
```sql
CASE
  WHEN condition1 THEN output1
  WHEN condition2 THEN output2
  ELSE output3
END AS column_name
```

### 21. COALESCE
- Returns the first non-null value from a list of arguments:
```sql
COALESCE(first_value, second_value, third_value, ...)
```

