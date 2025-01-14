# Write your MySQL query statement below
SELECT project_id, ROUND(AVG(experience_years),2) AS average_years FROM
(SELECT p.project_id, p.employee_id, e.experience_years
FROM Project as p
LEFT JOIN Employee as e on p.employee_id = e.employee_id)
AS JT
GROUP BY project_id