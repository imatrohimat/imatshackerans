--Top Earners
--We define an employee's total earnings to be their monthly  worked,
--and the maximum total earnings to be the maximum total earnings for any
--employee in the Employee table. Write a query to find the maximum total earnings
-- for all employees as well as the total number of employees who have maximum total
--  earnings. Then print these values as  space-separated integers.



SELECT SALARY*MONTHS AS EARNINGS, COUNT(*)
FROM Employee
GROUP BY EARNINGS
ORDER BY EARNINGS DESC
limit 1
--
--Analysis
--we first produce a column named earnings using salary* months, and then order by earning descendingly and get the top 1 row, which is the max