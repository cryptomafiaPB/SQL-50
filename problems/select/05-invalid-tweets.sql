-- Problem: 1683. Invalid Tweets
-- Link: [https://leetcode.com/problems/invalid-tweets/description]
-- Difficulty: [easy]
-- Approach: First is to select the tweets id, we can use length function to get length of content and using where clause we can check if the content is greater than 15 or not


SELECT tweet_id 
FROM Tweets
WHERE LENGTH(content) > 15;