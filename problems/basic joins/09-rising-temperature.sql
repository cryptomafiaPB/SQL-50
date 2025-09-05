-- Problem: 197. Rising Temperature
-- Link: [https://leetcode.com/problems/rising-temperature/description]
-- Difficulty: [easy]
-- Approach: Here to compare the prev day temp with current day, we have JOIN the table on current day and tommarow.
        --  Where now we now have a table with each row have a current day data and its tommarows day data. Now we can
        --  filter the results using where clause to find it todays temp is greater than tommarows. And select todays id.



SELECT w1.id
FROM Weather w1
JOIN Weather w2
    ON w1.recordDate = DATE_ADD(w2.recordDate, INTERVAL 1 DAY)
WHERE w1.temperature > w2.temperature;