-- Problem: 595. Big Countries
-- Link: [https://leetcode.com/problems/big-countries/description/]
-- Difficulty: [easy]
-- Approach: you need to select the country names, their populations, and areas from the "World" table, but only include countries that are either very large in area (at least 3,000,000 square kilometers) or have a very large population (at least 25,000,000 people). This is done by filtering the records using a WHERE clause with an OR condition that checks if either the area or population meets the respective threshold. The result is a list of countries that are prominent due to their size or population.


SELECT name, population, area 
FROM World
WHERE area >= 3000000 OR population >= 25000000;