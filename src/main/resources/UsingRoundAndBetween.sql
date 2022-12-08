SELECT ROUND(SUM(LAT_N),4) FROM STATION WHERE LAT_N BETWEEN 38.7880 AND  137.2345;

--round is for truncate value into 4n decimal behind.



SELECT ROUND (MAX( LAT_N), 4) FROM STATION WHERE LAT_N < 137.2345

-- its using round and max,  to query the maximum value