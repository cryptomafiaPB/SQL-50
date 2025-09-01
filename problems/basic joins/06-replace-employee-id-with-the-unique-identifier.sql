-- Problem: 11378. Replace Employee ID With The Unique Identifier
-- Link: [https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/description]
-- Difficulty: [easy]
-- Approach: Am using LEFT JOIN because we have to select all the names from one table and match to other table which might not have some matches or similar values (E.id = EU.id). So the or EU table missing values will null. That is why i have usen LEFT JOIN.


SELECT unique_id, name
FROM Employees AS E
LEFT JOIN EmployeeUNI AS EU
    ON (E.id = EU.id)