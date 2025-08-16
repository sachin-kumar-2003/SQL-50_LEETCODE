-- 1661. Average Time of Process per Machine
-- Activity table:                                            Output table:
-- +------------+------------+---------------+-----------+    +------------+-----------------+
-- | machine_id | process_id | activity_type | timestamp |    | machine_id | processing_time |
-- +------------+------------+---------------+-----------+    +------------+-----------------+
-- | 0          | 0          | start         | 0.712     |    | 0          | 0.894           |
-- | 0          | 0          | end           | 1.520     |    | 1          | 0.995           |
-- | 0          | 1          | start         | 3.140     |    | 2          | 1.456           |
-- | 0          | 1          | end           | 4.120     |    +------------+-----------------+
-- | 1          | 0          | start         | 0.550     |
-- | 1          | 0          | end           | 1.550     |
-- | 1          | 1          | start         | 0.430     |
-- | 1          | 1          | end           | 1.420     |
-- | 2          | 0          | start         | 4.100     |
-- | 2          | 0          | end           | 4.512     |
-- | 2          | 1          | start         | 2.500     |
-- | 2          | 1          | end           | 5.000     |
-- +------------+------------+---------------+-----------+
SELECT a1.machine_id,ROUND(AVG(a2.timestamp - a1.timestamp), 3) AS processing_time 
FROM activity a1 
JOIN activity a2
    ON a1.machine_id = a2.machine_id 
    AND a1.process_id = a2.process_id AND a1.activity_type = 'start'
    AND a2.activity_type = 'end'
GROUP BY a1.machine_id;
