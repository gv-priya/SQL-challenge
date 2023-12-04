CREATE TABLE employees(emp_no VARCHAR(10) PRIMARY KEY, emp_title_id VARCHAR(10), birth_date DATE, first_name VARCHAR(255), last_name varchar(255),sex varchar(5), hire_date DATE);
COPY employees from 'data'
delimiter ','
csv header;