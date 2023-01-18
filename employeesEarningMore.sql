-- not fast bust gets it done

SELECT e.name as Employee
FROM 
    Employee as e, Employee as m
WHERE e.managerID = m.id
AND e.salary > m.salary