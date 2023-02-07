-- 1527.

-- Table: Patients

-- +--------------+---------+
-- | Column Name  | Type    |
-- +--------------+---------+
-- | patient_id   | int     |
-- | patient_name | varchar |
-- | conditions   | varchar |
-- +--------------+---------+
-- patient_id is the primary key for this table.
-- 'conditions' contains 0 or more code separated by spaces. 
-- This table contains information of the patients in the hospital.
 

-- Write an SQL query to report the patient_id, patient_name and conditions of the patients who have Type I Diabetes. Type I Diabetes always starts with DIAB1 prefix.

-- Return the result table in any order.

-- The query result format is in the following example.

-- This appears like a "simple" plug and play but it can get you if your lazy with it.

SELECT *
FROM Patients
WHERE conditions LIKE 'DIAB1%' or conditions LIKE '% DIAB1%'