-- 596. Classes With at Least 5 Students
SELECT class
FROM courses
GROUP BY class
HAVING COUNT(class) >= 5