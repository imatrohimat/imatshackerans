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


--Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, but did not realize her keyboard's 0 key was broken until after completing the calculation. She wants your help finding the difference between her miscalculation (using salaries with any zeroes removed), and the actual average salary.
--Write a query calculating the amount of error (i.e.: actual - miscalculated average monthly salaries), and round it up to the next integer

SELECT CAST(CEIL(avg(Salary) - avg(CAST(REPLACE(Salary, '0', '')AS FLOAT)))AS FLOAT) AS Difference FROM Employees

--Analysis:
--we need the difference between the actual average salary and the miscalculated salary
--To remove o from salary number -> REPLACE(SALARY, '0', '')
--To calculate average salary -> avg(salary)
--To calculate average of miscalcalculated salary -> avg(REPLACE(SALARY, '0', ''))
--To calculate the difference -> avg(salary) - avg(REPLACE(SALARY, '0', ''))
--To get the next rounded number: CAST(CEIL(AVG(salary) - AVG(CAST(REPLACE(SALARY, '0', '')))))



SELECT ROUND(SUM(LAT_N),4) FROM STATION WHERE LAT_N BETWEEN 38.7880 AND  137.2345;

--round is for truncate value into 4n decimal behind.



SELECT ROUND (MAX( LAT_N), 4) FROM STATION WHERE LAT_N < 137.2345

-- its using round and max,  to query the maximum value

SELECT ROUND(SUM(LAT_N),4) FROM STATION WHERE LAT_N BETWEEN 38.7880 AND  137.2345;

--round is for truncate value into 4n decimal behind.



SELECT ROUND (MAX( LAT_N), 4) FROM STATION WHERE LAT_N < 137.2345

-- its using round and max,  to query the maximum value


--Weather Observation Station 2
--Query the following two values from the STATION table:
--The sum of all values in LAT_N rounded to a scale of 2 decimal places.



SELECT ROUND(SUM(LAT_N),2), ROUND(SUM(LONG_W),2) FROM STATION


--we will calculate two summations, sum of latitude and sum of longtitude,the result should be rounded to 2 decimal places.