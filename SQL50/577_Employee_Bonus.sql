select e.name,b.bonus
from
    Employee e Left Join Bonus b
    ON e.empId = b.empId
where
    b.bonus<1000 or b.bonus is NULL;
