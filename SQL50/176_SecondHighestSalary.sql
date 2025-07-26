SELECT 
    (SELECT DISTINCT salary 
     FROM Employee 
     ORDER BY salary DESC 
     LIMIT 1 OFFSET 1) 
    AS SecondHighestSalary;


-- In SQL, when a scalar subquery (i.e., a subquery used inside a SELECT, returning a single value) returns no rows, SQL treats the result as NULL.