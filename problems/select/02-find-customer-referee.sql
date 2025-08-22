-- Problem: 584. Find Customer Referee
-- Link: [https://leetcode.com/problems/find-customer-referee/description]
-- Difficulty: [easy]
-- Approach: Use a WHERE filter to select customers whose referee_id is either NULL or not equal to 2. Select the name field as required by the problem. Return results in any order.

SELECT name
FROM Customer
WHERE referee_id != 2 OR referee_id IS NULL;