/*1. Write a query to display the name (first_name, last_name) and department ID of all employees in departments 30 or 100 in ascending order.*/
SELECT 
    first_name, last_name, department_id
FROM
    employees
WHERE
    department_id = 30
        OR department_id = 100
ORDER BY department_id ASC;

/*2. Write a query to display the name (first_name, last_name) and salary for all employees whose salary is not in the range $10,000 through $15,000 and are in department 30 or 100*/
SELECT 
    first_name, last_name, salary, DEPARTMENT_ID
FROM
    employees
WHERE
    salary NOT BETWEEN 10000 AND 15000
        AND department_id = 30
        OR department_id = 100;
        
/*3. Write a query to display the name (first_name, last_name) and hire date for all employees who were hired in 1987 */
SELECT 
    first_name, last_name, hire_date
FROM
    employees
WHERE
    hire_date LIKE '1987-%%-%%';

/*4.Write a query to display the first_name of all employees who have both "b" and "c" in their first name*/
SELECT 
    first_name
FROM
    employees
WHERE
    first_name LIKE '%b%'
        AND first_name LIKE '%c%';
        
/*5.Write a query to display the last name, job, and salary for all employees whose job is that of a Programmer or a Shipping Clerk, and whose salary is not equal to $4,500, $10,000, or $15,000*/
SELECT 
    last_name, job_id, salary
FROM
    employees
WHERE
    job_id LIKE 'IT_PROG'
        OR job_id LIKE 'SH_CLERK'
        AND salary != 4500
        AND salary != 10000
        AND salary != 15000;
        
/*6.Write a query to display the last name of employees whose names have exactly 6 characters*/
SELECT 
    last_name
FROM
    employees
WHERE
    last_name LIKE '______';

/*7.Write a query to display the last name of employees having 'e' as the third character*/
SELECT 
    last_name
FROM
    employees
WHERE
    last_name LIKE '__e%';
    
/*8. Write a query to display the jobs/designations available in the employees table*/
SELECT DISTINCT
    job_id AS jobs_avialable
FROM
    employees;
    
/*9x. Write a query to display the name (first_name, last_name), salary and PF (15% of salary) of all employees*/
SELECT 
    first_name, last_name, salary, salary * .15 AS PF_15
FROM
    employees;
    
/*10x. Write a query to select all record from employees where last name in 'BLAKE', 'SCOTT', 'KING' and 'FORD'*/
SELECT 
    *
FROM
    employees
WHERE
    LAST_NAME IN ('BLAKE' , 'SCOTT', 'KING', 'FORD');