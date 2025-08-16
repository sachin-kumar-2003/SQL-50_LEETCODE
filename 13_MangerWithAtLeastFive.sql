-- 570. Managers with at Least 5 Direct Reports
SELECT name 
FROM employee 
WHERE id IN ( SELECT managerId FROM employee
                GROUP BY managerId
                HAVING count(managerId) >= 5) ;