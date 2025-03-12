# Write your MySQL query statement below
Select a.student_id, a.student_name, s.subject_name, count(b.student_id)  attended_exams 
  from Students a 
  Cross join Subjects s
   left join 
   Examinations b 
  on a.student_id=b.student_id
  and s.subject_name=b.subject_name

  group by a.student_id,a.student_name,s.subject_name
  order by a.student_id,a.student_name,s.subject_name;