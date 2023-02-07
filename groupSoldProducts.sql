-- 1484
-- Table Activities:

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | sell_date   | date    |
-- | product     | varchar |
-- +-------------+---------+
-- There is no primary key for this table, it may contain duplicates.
-- Each row of this table contains the product name and the date it was sold in a market.
 

-- Write an SQL query to find for each date the number of different products sold and their names.

-- The sold products names for each date should be sorted lexicographically.

-- Return the result table ordered by sell_date.

-- The query result format is in the following example.



-- First time using STUFF()
-- I was close in how I wanted to solve this but had to use google to find STUFF and was the missing piece 
-- to my solutuon.

SELECT sell_date, COUNT(DISTINCT product) as num_sold,
    STUFF(
        (SELECT DISTINCT ',' + product 
        FROM Activities a1
        WHERE a1.sell_date = a2.sell_date
        FOR XML PATH('')), 1, 1, ''
    ) AS products
FROM Activities a2
GROUP BY sell_date
ORDER BY sell_date