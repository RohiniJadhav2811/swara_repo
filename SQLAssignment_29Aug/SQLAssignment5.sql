--Display first name and last name after converting the first letter of each name to upper case 
--and the rest to lower case.
Select UPPER(SUBSTRING(FIRST_NAME, 1,1))+
LOWER(SUBSTRING(FIRST_NAME, 2, Len(FIRST_NAME)-1))As FIRST_NAME,
UPPER(SUBSTRING(LAST_NAME, 1,1))+
LOWER(SUBSTRING(LAST_NAME, 2, Len(LAST_NAME)-1))As LAST_NAME FROM employees;



--Display the first word in job title.
Select SUBSTRING(JOB_TITLE, 1,1) as 'First word' FROM jobs;

--Display the length of first name for employees where 
--last name contain character ‘b’ after 3rd position.
SELECT Len(FIRST_NAME) FROM employees where LAST_NAME IN (SELECT LAST_NAME 
FROM employees WHERE LAST_NAME LIKE '___%b%');



--Display first name in upper case and email address in lower case for employees
 --where the first name and email address are same irrespective of the case.
SELECT UPPER(FIRST_NAME) AS FIRST_NAME,lower(EMAIL) as email from employees where lower(FIRST_NAME)=lower(EMAIL);

--Display first name, salary, and round the salary to thousands.
SELECT FIRST_NAME, SALARY, ROUND(SALARY, -3) FROM employees;
select salary from employees;

--Display employee ID and the date on which he ended his previous job.
SELECT EMPLOYEE_ID, max(END_DATE) FROM job_history GROUP BY EMPLOYEE_ID;


--Display first name and date of first salary of the employees.
SELECT  FIRST_NAME,EOMONTH(HIRE_DATE ) as end_of_month_feb2019 from employees;

--Display first name and experience of the employees.
select floor(datediff(day, HIRE_DATE, getdate())/365) as 'Number of Days' from employees;



--Display first name of employees who joined in 2001.
SELECT FIRST_NAME, HIRE_DATE FROM EMPLOYEES WHERE YEAR(HIRE_DATE)=2001;


--Display employees who joined in the current year.
SELECT * FROM EMPLOYEES WHERE YEAR(HIRE_DATE)=YEAR(GETDATE());


--Display the number of days between system date and 1st January 2011.
select datediff(day, 2011-01-01, getdate()) as 'Number of Days';

--Display number of employees joined after 15th of the month.
SELECT COUNT(*) FROM EMPLOYEES WHERE DAY(HIRE_DATE) > 15;

--Display third highest salary of employees.
SELECT SALARY FROM employees e WHERE  2 = (SELECT count( distinct SALARY ) FROM employees
WHERE  SALARY > e.SALARY);

            