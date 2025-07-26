select u.unique_id,i.name
from Employees as i left JOIN  EmployeeUNI as u
on i.id = u.id;
