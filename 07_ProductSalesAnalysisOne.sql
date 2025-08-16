-- 1068. Product Sales Analysis I
-- Sales table:                                        Product table:                  
-- +---------+------------+------+----------+-------+   +------------+--------------+  
-- | sale_id | product_id | year | quantity | price |   | product_id | product_name |  
-- +---------+------------+------+----------+-------+   +------------+--------------+  
-- | 1       | 100        | 2008 | 10       | 5000  |   | 100        | Nokia        |  
-- | 2       | 100        | 2009 | 12       | 5000  |   | 200        | Apple        |  
-- | 7       | 200        | 2011 | 15       | 9000  |   | 300        | Samsung      |  
-- +---------+------------+------+----------+-------+   +------------+--------------+  
-- Output table:
--  +--------------+-------+-------+
--  | product_name | year  | price |
--  +--------------+-------+-------+
--  | Nokia        | 2008  | 5000  |
--  | Nokia        | 2009  | 5000  |
--  | Apple        | 2011  | 9000  |
--  +--------------+-------+-------+
SELECT p.product_name , s.year , s.price
FROM sales s join product p
ON s.product_id = p.product_id;