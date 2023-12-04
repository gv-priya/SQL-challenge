ALTER TABLE salaries
ADD CONSTRAINT fk_emp_no FOREIGN KEY(emp_no)
REFERENCES employees(emp_no);