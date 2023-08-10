# Warehouse Database Assignment

In this assignment, you will design and create a Warehouse Database. The goal is to create a set of tables that represent different aspects of a warehouse management system and establish relationships between them. You will also write SQL queries to solve specific problems related to the database.

## Table of Contents

- [Tables](#tables)
- [Table Relationships](#table-relationships)
- [SQL Files](#sql-files)
- SQL Queries
  - Find the item with the minimum weight
  - Find different warehouses in "Pune"
  - Find items ordered by customer "Mr. Patil"
  - Find the warehouse with the maximum stores
  - Find an item ordered the minimum number of times
  - Find detailed orders given by each customer
## Tables

The database consists of the following tables:

1. CITIES
   - CITY CHAR(20)
   - STATE CHAR(20)

2. WAREHOUSES
   - WID INTEGER
   - WNAME CHAR(30)
   - LOCATION CHAR(20)
   - EXTRA CONTEXT json

3. STORES
   - SID INTEGER
   - STORE_NAME CHAR(20)
   - LOCATION_CITY CHAR(20)

4. CUSTOMER
   - CNO INTEGER
   - CNAME CHAR(50)
   - ADDR VARCHAR(50)
   - CU_CITY CHAR(20)

5. ORDERS
   - ONO INT
   - ODATE DATE

6. ITEMS
   - ITEMNO INTEGER
   - DESCRIPTION TEXT
   - WEIGHT DECIMAL(5,2)
   - COST DECIMAL(5,2)

## Table Relationships

The relationships between the tables are as follows:

- CITIES-WAREHOUSES: One-to-Many
- WAREHOUSES-STORES: One-to-Many
- CUSTOMER-ORDERS: One-to-Many
- ITEMS-ORDERS: Many-to-Many
- STORES-ITEMS: Many-to-Many

## SQL Files

Your assignment should include two SQL files:

1. **DB_Schema.sql**: This file should contain the SQL commands to create the database schema and the necessary tables.

2. **SQL_Queries.sql**: This file should contain the SQL queries to solve the problems listed in the assignment.
