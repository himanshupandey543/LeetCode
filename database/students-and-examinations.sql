# Write your MySQL query statement below
select S.student_id,S.student_name,Su.subject_name,count(E.student_id) as attended_exams from Students S cross join Subjects su left join Examinations E on S.student_id=E.student_id and Su.subject_name=E.subject_name group by S.student_id,S.student_name,Su.subject_name order by S.student_id,S.student_name,Su.subject_name;

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna