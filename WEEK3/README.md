# Week 3 - PySpark Training

## Problem 1: Load and Transform Data

### Objective
Read customer data from a CSV file, filter records based on business conditions, and display only the required columns.

### Concepts Used
- SparkSession
- Reading CSV files
- inferSchema
- DataFrame
- filter()
- select()
- display()

### Steps Performed
1. Created a SparkSession.
2. Read the `customers.csv` dataset.
3. Filtered customers with:
   - `purchase_amount > 100`
   - `age >= 30`
4. Selected the following columns:
   - customer_id
   - name
   - purchase_amount
5. Displayed the final DataFrame.

### Output
The output contains customers who satisfy the filtering conditions and displays only the required columns.

### Technologies
- PySpark
- Spark Playground

### Author
Rakesh Regala