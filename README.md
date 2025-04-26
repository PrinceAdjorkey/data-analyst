# ECOMMERCE DATABASE: 
Creating Tables and Inserting Values
Overview
This project demonstrates how to create tables and insert data into a MySQL database. It serves as a basic foundation for anyone learning database design and data management using SQL.

## Project Structure
create_tables.sql: Script to create all necessary tables.

insert_values.sql: Script to insert sample data into the tables.

## Features
Creation of multiple related tables using appropriate data types and constraints (e.g., primary keys, foreign keys).

Insertion of sample records into the tables.

Simple relationships between tables to demonstrate normalization.

## How to Run
Make sure you have MySQL installed and running.

Open your MySQL client (Workbench, CLI, or other tools).

Run the create_tables.sql script to create the database and tables.

Run the insert_values.sql script to populate the tables with sample data.

## Requirements
MySQL 8.0 or later

## Basic understanding of SQL commands

## Example Tables
users — stores user information

products — stores product details

orders — stores user orders linked to products

## Sample SQL Commands
sql
Copy
Edit
-- Create a table
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE
);

-- Insert values into a table
INSERT INTO users (name, email) 
VALUES ('John Doe', 'john@example.com');
