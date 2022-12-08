--Weather Observation Station 2
--Query the following two values from the STATION table:
--The sum of all values in LAT_N rounded to a scale of 2 decimal places.



SELECT ROUND(SUM(LAT_N),2), ROUND(SUM(LONG_W),2) FROM STATION


--we will calculate two summations, sum of latitude and sum of longtitude,the result should be rounded to 2 decimal places.