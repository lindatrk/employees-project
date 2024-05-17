SELECT * FROM employees

-- Inseting new employee for our company:
INSERT INTO employees
(
  emp_no,
  birth_date,
  first_name,
  last_name,
  gender,
  hire_date
  )VALUES
  (
  999904,
  '1990-08-13',
  'Joul',
  'Shawwar',
  'M',
  '2017-03-12'
  );
  
select * 
from employees
where emp_no= 999904; 
 
 -- Creating NEW Table 
 CREATE TABLE departments_dupp
 (
  dep_no char(4) NOT NULL,
  dep_name VARCHAR(40) NOT NULL
  );
 
 SELECT * 
 from departments_dupp;
 
-- Inserting information to our new table
INSERT INTO departments_dupp
(
dep_no,
dep_name
)
SELECT * 
FROM departments;

SELECT * 
from departments_dupp
order by dep_no;

Update employees
set 
    first_name= 'Stella',
    last_name= 'Parkinson',
    birth_date= '1990-05-03',
    gender= 'F'
where emp_no = 999901;

select *
from employees
where emp_no= 999901;

-- which salary is the highest?
select MAX(salary) 
from salaries;

select round(avg(salary),2)
from salaries;

-- Joining:

SELECT 
    d.dept_name, AVG(salary) AS average_salary
FROM
    departments d
        JOIN
    dept_manager m ON d.dept_no = m.dept_no
        JOIN
    salaries s ON m.emp_no = s.emp_no
    GROUP BY d.dept_name
    HAVING average_salary > 60000
    ORDER BY average_salary DESC
;    

-- Making a View

SELECT * 
FROM dept_emp;

SELECT emp_no, from_date, to_date, COUNT(emp_no) as Num
FROM dept_emp
GROUP BY emp_no
HAVING Num >1 ;

CREATE OR REPLACE VIEW v_dept_emp_latest_date AS 
SELECT emp_no, MAX(from_date) AS from_date, MAX(to_date) AS to_date
FROM dept_emp
GROUP BY emp_no;

SELECT * 
FROM employees.v_dept_emp_latest_date;

    


  
  
  
  
  
