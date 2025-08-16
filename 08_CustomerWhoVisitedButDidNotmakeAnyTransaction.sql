-- Visits table:                  Transactions table:                    
-- +----------+-------------+     +----------------+----------+--------+ 
-- | visit_id | customer_id |     | transaction_id | visit_id | amount | 
-- +----------+-------------+     +----------------+----------+--------+ 
-- | 1        | 23          |     | 2              | 5        | 310    | 
-- | 2        | 9           |     | 3              | 5        | 300    | 
-- | 4        | 30          |     | 9              | 5        | 200    | 
-- | 5        | 54          |     | 12             | 1        | 910    | 
-- | 6        | 96          |     | 13             | 2        | 970    |
-- | 7        | 54          |     +----------------+----------+--------+
-- | 8        | 54          |
-- +----------+-------------+
-- Output table:
--  +-------------+----------------+
--  | customer_id | count_no_trans |   -- 1581. Customer Who Visited but Did Not Make Any Transactions
--  +-------------+----------------+
--  | 54          | 2              |
--  | 30          | 1              |
--  | 96          | 1              |
--  +-------------+----------------+
SELECT v.customer_id , count(v.visit_id) as count_no_trans 
FROM visits v LEFT JOIN Transactions t
on v.visit_id = t.visit_id
WHERE t.transaction_id IS NULL
GROUP BY v.customer_id