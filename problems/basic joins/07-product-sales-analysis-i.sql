-- Problem: 1068. Product Sales Analysis I
-- Link: [https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/description]
-- Difficulty: [easy]
-- Approach: We have to join the both tables on product_id bases. Them select the required columns.


SELECT P.product_name, S.year, S.price
FROM Sales AS S
JOIN Product AS P
    ON (S.product_id = P.product_id);