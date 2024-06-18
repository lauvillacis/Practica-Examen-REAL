
SELECT
  t.Id,
  t.Species,
  [Petal.Width] AS petal_w,
  CASE 
    WHEN t.Id LIKE '%9%' THEN NULL
    ELSE [Petal.Width]
  END AS Petal_width
FROM (
  SELECT 
    ROWNUMBER() OVER(ORDER BY(SELECT NULL)) AS Id,
    *
  FROM Iris) as t

