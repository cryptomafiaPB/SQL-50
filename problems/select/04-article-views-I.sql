-- Problem: 1148. Article Views I
-- Link: [https://leetcode.com/problems/article-views-i/description]
-- Difficulty: [easy]
-- Approach: find the IDs of authors who viewed their own articles. The solution uses a simple SQL query: it selects distinct author_id values from the Views table, but only includes rows where the author_id and viewer_id are the same—meaning the author themselves viewed their article. The results are ordered by the author ID. This direct filtering and deduplication approach efficiently identifies all such author IDs without requiring any complex joins or aggregation, making the query both concise and performant.

SELECT DISTINCT author_id AS id
FROM Views 
WHERE author_id = viewer_id
ORDER BY id;