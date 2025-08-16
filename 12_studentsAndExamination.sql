-- 1280. Students and Examinations

SELECT s.student_id , s.student_name  , sub.subject_name ,
        COUNT(e.subject_name) attended_exams
    FROM students s
    CROSS JOIN subjects sub
    LEFT JOIN examinations e
        ON e.student_id = s.student_id
        AND e.subject_name = sub.subject_name
    GROUP BY s.student_id , s.student_name  , sub.subject_name 
    ORDER BY s.student_id , sub.subject_name;