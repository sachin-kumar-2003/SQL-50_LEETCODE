-- 1633. Percentage of Users Attended a Contest
SELECT 
    r.contest_id,
    ROUND(
        COUNT(DISTINCT r.user_id) * 100.0 /
        (SELECT COUNT(DISTINCT user_id) FROM users),
        2
    ) AS percentage
FROM register r
GROUP BY r.contest_id
ORDER BY percentage desc , r.contest_id;