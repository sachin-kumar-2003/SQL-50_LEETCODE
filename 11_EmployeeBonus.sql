-- 577. Employee Bonus
-- Employee table:                                Bonus table:             Output table:
-- +-------+--------+------------+--------+       +-------+-------+        +------+-------+
-- | empId | name   | supervisor | salary |       | empId | bonus |        | name | bonus |
-- +-------+--------+------------+--------+       +-------+-------+        +------+-------+
-- | 3     | Brad   | null       | 4000   |       | 2     | 500   |        | Brad | null  |
-- | 1     | John   | 3          | 1000   |       | 4     | 2000  |        | John | null  |
-- | 2     | Dan    | 3          | 2000   |       +-------+-------+        | Dan  | 500   |
-- | 4     | Thomas | 3          | 4000   |                               +------+-------+
-- +-------+--------+------------+--------+
SELECT e.name , b.bonus 
FROM Employee e
LEFT JOIN Bonus b
ON e.empId = b.empId
WHERE b.bonus < 1000 OR b.bonus IS NULL;