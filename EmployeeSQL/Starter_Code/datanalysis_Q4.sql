SELECT departments.dept_no, departments.dept_name,dept_emp.emp_no, employees.first_name, employees.last_name
from departments
inner join dept_emp on dept_emp.dept_no = departments.dept_no
inner join employees on dept_emp.emp_no = employees.emp_no;
