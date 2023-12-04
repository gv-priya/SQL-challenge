SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex,salaries.salary
from salaries
INNER JOIN employees ON
employees.emp_no = salaries.emp_no;