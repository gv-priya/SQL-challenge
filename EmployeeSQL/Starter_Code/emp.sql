CREATE TABLE employees(emp_no int primary key, emp_title_id varchar(10),birth_date Date, first_name varchar(255) not null, last_name varchar(255) not null, sex varchar(1), hire_date Date);
COPY employees FROM '\data\'
DELIMITER ',' csv header;
select count(*) from employees;