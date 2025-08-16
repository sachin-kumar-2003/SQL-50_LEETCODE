-- 1757. Recyclable and Low Fat Products
-- Input: 
-- Products table:
-- +-------------+----------+------------+
-- | product_id  | low_fats | recyclable |
-- +-------------+----------+------------+
-- | 0           | Y        | N          |
-- | 1           | Y        | Y          |
-- | 2           | N        | Y          |
-- | 3           | Y        | Y          |
-- | 4           | N        | N          |
-- +-------------+----------+------------+
-- Output: 
-- +-------------+
-- | product_id  |
-- +-------------+
-- | 1           |
-- | 3           |
-- +-------------+

SELECT product_id FROM products
WHERE low_fats = 'Y' AND recyclable = 'Y';