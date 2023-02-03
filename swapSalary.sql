-- 1873.

-- Table: Employees

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | employee_id | int     |
-- | name        | varchar |
-- | salary      | int     |
-- +-------------+---------+
-- employee_id is the primary key for this table.
-- Each row of this table indicates the employee ID, employee name, and salary.
 

-- Write an SQL query to calculate the bonus of each employee. The bonus of an employee is 100% of their salary if the ID of the employee is an odd number and the employee name does not start with the character 'M'. The bonus of an employee is 0 otherwise.

-- Return the result table ordered by employee_id.

SELECT employee_id,
CASE
    WHEN employee_id % 2 != 0 and name not like('M%') THEN salary
    ELSE 0
END
AS bonus
FROM Employees
Order by employee_id;

-- This is the first time Ive used the case command and although slower compared to others. Im happy with getting this one done.