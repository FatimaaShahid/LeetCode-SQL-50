
SELECT
    person_name
FROM
    (SELECT turn,person_id,person_name,weight,SUM(weight) OVER (ORDER BY Turn) AS TotalWeight
FROM Queue
ORDER BY Turn) AS sub
WHERE 
    TotalWeight <= 1000
ORDER BY 
    TotalWeight DESC
LIMIT 1;
