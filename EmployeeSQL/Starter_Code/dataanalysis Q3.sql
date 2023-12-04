SELECT employees.first_name, employees.last_name, departments.dept_name,dept_manager.dept_no, dept_manager.emp_no from departments
INNER JOIN dept_manager
ON departments.dept_no = dept_manager.dept_no
INNER JOIN employees ON employees.emp_no = dept_manager.emp_no;
