SET @rowindex = -1;

SELECT ROUND(AVG(lat_n), 4) AS median
FROM
(
    SELECT
    @rowindex := @rowindex + 1 AS rowindex,
    lat_n
FROM
    station
ORDER BY lat_n
) AS temptable
WHERE
temptable.rowindex IN (FLOOR(@rowindex/2), CEIL(@rowindex/2));