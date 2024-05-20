use employees;
-- Remove Duplicates
WITH RowNum AS (
SELECT *,
     ROW_NUMBER() OVER(
	 PARTITION BY dept_no,
				  dept_name
				  ORDER BY 
				    dept_no
					) row_num
FROM departments
)
SELECT * 
FROM RowNum
WHERE row_num >1;


-- Dropping unused tables and columns:

 DROP TABLE departments_dupp;
 
 DROP TABLE employees_dup;
 
 
 
 
SELECT *
FROM employees
-- WHERE PropertyAddress is null
order by emp_no;



 
 
 