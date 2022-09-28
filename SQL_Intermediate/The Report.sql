SELECT 
CASE 
    WHEN b.Grade < 8 THEN NULL
    ELSE a.NAME
    END,
b.Grade, a.Marks
FROM STUDENTS a
INNER JOIN Grades b
ON a.Marks BETWEEN b.Min_Mark and Max_Mark
ORDER BY b.Grade DESC, a.Name ASC