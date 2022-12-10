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



--Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than . Round your answer to  decimal places.

SELECT ROUND(LONG_W, 4) FROM STATION WHERE LAT_N = (SELECT MAX(LAT_N) FROM STATION WHERE LAT_N < 137.2345)
--
--Analysis
--This question asks for the longitude of the largest latitude in station table having latitude less than 137.2345. We will have the table
--select round(long_w, 4)
--from station
--
--    where lat_n = (select max(lat_n) from station where lat_n < 137.2345 ORDER BY LAT_N  DESC )
--
--Note:
--when using max, the order of the table is not important; when suing limit, the order of the list will matter as the limit/top select from the top of the list


--Generate the following two result sets:
--
--    Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of each profession as a parenthetical (i.e.: enclosed in parentheses). For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).
--    Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, and output them in the following format:
--    There are a total of [occupation_count] [occupation]s.
--    where [occupation_count] is the number of occurrences of an occupation in OCCUPATIONS and [occupation] is the lowercase occupation name. If more than one Occupation has the same [occupation_count], they should be ordered alphabetically.
--
--Note: There will be at least two entries in the table for each type of occupation.



select concat (name, '(', SUBSTR(occupation,1,1), ')') FROM occupations ORDER BY name;


SELECT CONCAT ('There are a total of ', COUNT(occupation), ' ', LOWER(occupation), 's', '.')
FROM occupations GROUP BY occupation ORDER BY COUNT(occupation), occupation ASC;

