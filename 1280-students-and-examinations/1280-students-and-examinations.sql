# Write your MySQL query statement below
SELECT
    s.student_id,
    s.student_name,
    u.subject_name,
    (SELECT COUNT(e.subject_name)
     FROM Examinations e
     WHERE s.student_id = e.student_id AND u.subject_name = e.subject_name) AS attended_exams
FROM
    Students s, Subjects u
ORDER BY
    s.student_id, u.subject_name;
