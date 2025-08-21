-- Problem: 1757. Recyclable and Low Fat Products
-- Link: [https://leetcode.com/problems/recyclable-and-low-fat-products/description/?envType=study-plan-v2&envId=top-sql-50]
-- Difficulty: [easy]
-- Approach: filter the Products table for rows where both low_fats and recyclable columns have the value 'Y'. Then select and return the product_id for these products. This uses a basic SELECT statement with WHERE conditions combined using AND. It’s a direct query focusing on matching two attributes without needing joins or subqueries.


SELECT product_id
FROM Products
WHERE low_fats = 'Y' AND recyclable = 'Y';