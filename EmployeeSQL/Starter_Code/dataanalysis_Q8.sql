SELECT emp_no, first_name, last_name, count(last_name) as "count"
from employees
GROUP BY emp_no, first_name, last_name 
HAVING count(last_name) >=1;
