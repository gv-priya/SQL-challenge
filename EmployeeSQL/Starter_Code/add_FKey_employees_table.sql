ALTER TABLE employees
ADD CONSTRAINT FK_EMP_TITLE_ID FOREIGN KEY(emp_title_id)
REFERENCES titles(title_id);