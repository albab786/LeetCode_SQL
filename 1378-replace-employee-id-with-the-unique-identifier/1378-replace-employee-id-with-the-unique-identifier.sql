# Write your MySQL query statement below
# SELECT e2.unique_id, e1.name
# From Employees e1 
# LEFT JOIN EmployeeUNI e2
# ON e1.id = e2.id
SELECT 
    (SELECT unique_id FROM EmployeeUNI e2 WHERE e2.id = e1.id) AS unique_id,
    e1.name
FROM 
    Employees e1;