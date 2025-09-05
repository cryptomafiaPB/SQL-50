-- Problem: 1581. Customer Who Visited but Did Not Make Any Transactions
-- Link: [https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/description]
-- Difficulty: [easy]
-- Approach: We will LEFT JOIN table Visits on table Transactions on visit_id, Where we will have a joined table of every visit by customer where some
        --  of them have transaction_id and some of them who have'nt buyed anything will not have transaction_id. Now we will filter using where cause where
        --  transaction_id IS NULL. And further group them on basis of unique customer_id. So now we have a group of each unique customer who have not buyed anything
        --  during their visits. Now we will select customer_id And count no of visits by customer in group where they have not buyed anything during their visit.



SELECT V.customer_id,
    COUNT(*) AS count_no_trans
FROM Visits AS V
LEFT JOIN Transactions AS T
    ON (V.visit_id = T.visit_id)
WHERE T.transaction_id IS NULL
GROUP BY V.customer_id;