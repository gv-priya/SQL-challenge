CREATE TABLE departments(dept_no varchar(4) NOT NULL primary key, dept_name varchar(20) NOT NULL);

CREATE TABLE dept_emp(emp_no INT not null, dept_no varchar(4) NOT NULL);
ALTER TABLE dept_emp
ADD id SERIAL PRIMARY KEY;

CREATE TABLE dept_manager(dept_no varchar(4) NOT NULL primary key, emp_no INT NOT NULL);

ALTER TABLE dept_emp
ADD CONSTRAINT fk_dept_no FOREIGN KEY(dept_no)
REFERENCES departments(dept_no);

CREATE TABLE employees(emp_no int primary key, emp_title_id varchar(10),birth_date Date, first_name varchar(255) not null, last_name varchar(255) not null, sex varchar(1), hire_date Date);
COPY employees FROM '\data\'
DELIMITER ',' csv header;
select count(*) from employees;
copy employees from 'data\employees.csv'

ALTER TABLE employees
ADD CONSTRAINT FK_EMP_TITLE_ID FOREIGN KEY(emp_title_id)
REFERENCES titles(title_id);

ALTER TABLE salaries
ADD CONSTRAINT fk_emp_no FOREIGN KEY(emp_no)
REFERENCES employees(emp_no);

CREATE TABLE titles(title_id varchar(5) primary key, title varchar(20));

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex,salaries.salary
from salaries
INNER JOIN employees ON
employees.emp_no = salaries.emp_no;

select first_name, last_name, hire_date from employees
where hire_date BETWEEN '1/1/1986' AND '12/31/1986';

SELECT employees.first_name, employees.last_name, departments.dept_name,dept_manager.dept_no, dept_manager.emp_no from departments
INNER JOIN dept_manager
ON departments.dept_no = dept_manager.dept_no
INNER JOIN employees ON employees.emp_no = dept_manager.emp_no;

SELECT departments.dept_no, departments.dept_name,dept_emp.emp_no, employees.first_name, employees.last_name
from departments
inner join dept_emp on dept_emp.dept_no = departments.dept_no
inner join employees on dept_emp.emp_no = employees.emp_no;

SELECT first_name, last_name, sex from employees
WHERE first_name = 'Hercules' and last_name like 'B%'; 

SELECT departments.dept_no, departments.dept_name, dept_emp.emp_no, employees.first_name, employees.last_name 
from departments
inner join dept_emp on dept_emp.dept_no = departments.dept_no
inner join employees on employees.emp_no = dept_emp.emp_no
WHERE dept_emp.dept_no in ('d007');

SELECT departments.dept_no, departments.dept_name, dept_emp.emp_no, employees.first_name, employees.last_name 
from departments
inner join dept_emp on dept_emp.dept_no = departments.dept_no
inner join employees on employees.emp_no = dept_emp.emp_no
WHERE dept_emp.dept_no in ('d005','d007');

SELECT emp_no, first_name, last_name, count(last_name) as "count"
from employees
GROUP BY emp_no, first_name, last_name 
HAVING count(last_name) >=1;
