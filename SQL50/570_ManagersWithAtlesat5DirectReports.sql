SELECT b.name
FROM 
    Employee A JOIN Employee B
    ON A.managerId = B.id
GROUP BY A.managerId
HAVING Count(*)>=5 ;