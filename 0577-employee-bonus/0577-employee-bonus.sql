SELECT
    name,
    (SELECT bonus FROM Bonus WHERE empId = e.empId) AS bonus
FROM
    Employee e
WHERE
    (SELECT bonus FROM Bonus WHERE empId = e.empId) IS NULL
    OR
    (SELECT bonus FROM Bonus WHERE empId = e.empId) < 1000;
