--Write a query to get unique department ID from employee table.
use hr_db;
select distinct (DEPARTMENT_ID)  from employees;

--Write a query to get all employee details from the employee table
-- order by first name, descending.
SELECT * FROM employees ORDER BY FIRST_NAME DESC;


--Write a query to get the employee ID, names (first_name, last_name), 
--salary in ascending order of salary.
 SELECT EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY  FROM employees ORDER BY SALARY ASC;



--Display first name and join date of the employees 
--who is either IT Programmer or Sales Man.
SELECT FIRST_NAME,HIRE_DATE FROM employees WHERE DEPARTMENT_ID  IN
(SELECT DEPARTMENT_ID FROM departments WHERE
 departments.DEPARTMENT_NAME='IT' 
 OR departments.DEPARTMENT_NAME='Sales' );

 




--Display details of employee with ID 150 or 160.
select * from employees WHERE EMPLOYEE_ID in(150,160);


--Display first name, salary, commission pct, and hire date 
--for employees with salary less than 10000.
SELECT FIRST_NAME,SALARY,COMMISSION_PCT,HIRE_DATE FROM employees 
WHERE SALARY<10000;




--Display employees where the first name or last name starts with S.
SELECT * FROM employees WHERE FIRST_NAME like 's%' OR LAST_NAME like 's%';

--Display details of jobs in the descending order of the title.
select * from jobs ORDER BY  JOB_TITLE DESC ;


--Display details of the employees where commission percentage is null and
 --salary in the range 5000 to 10000 and department is 30.
 SELECT * FROM employees where COMMISSION_PCT is NULl AND 
 SALARY BETWEEN 5000 AND 10000 
 AND DEPARTMENT_ID=30;

 

--Display employees first_name,email who are working in “Executive” department.
SELECT FIRST_NAME,EMAIL FROM employees WHERE DEPARTMENT_ID=
(SELECT DEPARTMENT_ID FROM departments WHERE DEPARTMENT_NAME='Executive');


--Display unique contry_id from locations table.
SELECT DISTINCT(COUNTRY_ID) FROM locations;

--Display all employees whose have job_id IT_PROG and FI_ACCOUNT.
SELECT * FROM employees WHERE job_id in ('IT_PROG','FI_ACCOUNT');


--Display all countries in ascending order
SELECT COUNTRY_NAME from countries ORDER BY COUNTRY_NAME ASC;