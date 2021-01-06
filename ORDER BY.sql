/*1. Write a query to find the manager ID and the salary of the lowest-paid employee for that manager.*/
SELECT 
    CONCAT(first_name, ' ', last_name) AS Name,
    manager_id,
    salary
FROM
    employees
ORDER BY salary
LIMIT 1;

/*2. Write a query to get the average salary for each job ID excluding programmer.*/
SELECT 
    job_id, AVG(salary) AS Average_salary
FROM
    employees
WHERE
    JOB_ID != 'IT_PROG'
GROUP BY JOB_ID;

/* 3. Write a query to get the total salary, maximum, minimum, average salary of employees (job ID wise), for department ID 90 only.*/
SELECT 
    DEPARTMENT_ID,
    (salary) AS total_salary,
    MAX(salary),
    MIN(salary),
    AVG(salary)
FROM
    employees
WHERE
    department_id = 90;

/*4. Write a query to get the job ID and maximum salary of the employees where maximum salary is greater than or equal to $4000.*/
SELECT 
    JOB_ID, MAX(salary)
FROM
    employees
WHERE
    SALARY >= 4000
GROUP BY JOB_ID;

/*5.Write a query to get the average salary for all departments employing more than 10 employees.*/
SELECT 
    DEPARTMENT_ID, AVG(salary), COUNT(*) as number_employees
FROM
    employees
GROUP BY DEPARTMENT_ID
HAVING COUNT(*) > 10;





