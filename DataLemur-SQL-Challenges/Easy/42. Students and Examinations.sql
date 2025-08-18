
-- https://leetcode.com/problems/students-and-examinations/description/

SELECT s.student_id, s.student_name,sb.subject_name, COUNT(E.student_id) AS attended_exams
FROM Students s
CROSS JOIN Subjects sb
LEFT JOIN Examinations E
ON s.student_id=E.student_id
AND E.subject_name=sb.subject_name
GROUP BY s.student_id,s.student_name,sb.subject_name
ORDER BY s.student_id,s.student_name,sb.subject_name;