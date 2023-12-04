ALTER TABLE dept_emp
ADD CONSTRAINT fk_dept_no FOREIGN KEY(dept_no)
REFERENCES departments(dept_no);