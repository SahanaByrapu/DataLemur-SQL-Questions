-- classifying-triangles-by-lengths

-- https://leetcode.com/problems/classifying-triangles-by-lengths/description/

SELECT 
(CASE WHEN x+y > z AND y+z > x AND x+z > y  THEN 1 ELSE 0) AS NotATriangle,
(CASE WHEN x=y AND y=z THEN 1 ELSE 0) AS Equilateral,
(CASE WHEN x=y OR y=z OR x=z  THEN 1 ELSE 0) AS Isosceles,
ELSE Scalene
FROM Triangles

SELECT 
 CASE
   WHEN x+y > z AND y+z > x AND x+z > y  THEN 'NotATriangle' 
   WHEN x=y AND y=z THEN 'Equilateral',
   WHEN x=y OR y=z OR x=z  THEN  'Isosceles',
   ELSE 'Scalene' 
 END AS TriangleType
FROM Triangles