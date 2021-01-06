/*1. Write a query to get unique department ID from employee table*/
SELECT DISTINCT
    department_id
FROM
    employees;

/*2. Write a query to get all employee details from the employee table order by first name, descending*/
SELECT 
    *
FROM
    employees
ORDER BY first_name DESC;

/*3.Write a query to get the names (first_name, last_name), salary, PF of all the employees (PF is calculated as 15% of salary)*/
SELECT 
    first_name, last_name, salary, salary * .15 AS PF
FROM
    employees;

/*4.Write a query to get the employee ID, names (first_name, last_name), salary in ascending order of salary*/
SELECT 
    first_name, last_name, EMPLOYEE_ID, salary
FROM
    employees
ORDER BY SALARY;

/*5.Write a query to get the total salaries payable to employees*/
SELECT 
    SUM(salary) AS total_payable_salary
FROM
    employees;

/*6.Write a query to get the maximum and minimum salary from employees table*/
SELECT 
    MAX(salary) AS MAX_salary, MIN(salary) AS MIN_salary
FROM
    employees;

/*7.Write a query to get the average salary and number of employees in the employees table*/
SELECT 
    AVG(salary) AS average_salary,
    COUNT(EMPLOYEE_ID) AS number_of_employees
FROM
    employees;

/*8.Write a query to get the number of employees working with the company*/
SELECT 
    COUNT(EMPLOYEE_ID) AS number_of_employees
FROM
    employees;

/*9x. Write a query to get the number of jobs available in the employees table*/
SELECT 
    COUNT(DISTINCT JOB_ID) AS number_of_jobs_avilable
FROM
    employees;

/*10x. Write a query get all first name from employees table in upper case*/
SELECT 
    UPPER(first_name) AS FIRST_NAMES
FROM
    employees;