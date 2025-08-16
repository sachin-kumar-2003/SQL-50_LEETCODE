-- 1378. Replace Employee ID With The Unique Identifier


-- Employees table:                 EmployeeUNI table:             Output table:
-- +----+----------+                +----+-----------+             +-----------+----------+
-- | id | name     |                | id | unique_id |             | unique_id | name     |
-- +----+----------+                +----+-----------+             +-----------+----------+
-- | 1  | Alice    |                | 3  | 1         |             | null      | Alice    |
-- | 7  | Bob      |                | 11 | 2         |             | null      | Bob      |
-- | 11 | Meir     |                | 90 | 3         |             | 2         | Meir     |
-- | 90 | Winston  |                +----+-----------+             | 3         | Winston  |
-- | 3  | Jonathan |                                               | 1         | Jonathan |
-- +----+----------+                                               +-----------+----------+


SELECT eu.unique_id , e.name FROM employees e
LEFT JOIN employeeUNI eu 
ON eu.id = e.id;