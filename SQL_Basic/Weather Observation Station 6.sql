SELECT DISTINCT CITY FROM STATION WHERE CITY REGEXP '^[a,e,i,o,u]';
-- or
SELECT DISTINCT CITY FROM STATION 
WHERE CITY LIKE 'a%' or CITY LIKE 'e%' or CITY LIKE 'i%' or CITY LIKE 'o%' or CITY LIKE 'u%';