/* 1.Write a query to find the name (first_name, last name), department ID and name of all the employees.*/
SELECT 
    first_name, last_name, department_id
FROM
    employees;

/*2. Write a query to find the name (first_name, last_name), job, department ID and name of the employees who works in London.*/
SELECT 
    e.first_name,
    e.last_name,
    e.job_id,
    d.DEPARTMENT_NAME,
    d.DEPARTMENT_ID
FROM
    employees AS e
        JOIN
    departments AS d ON (e.DEPARTMENT_ID = d.DEPARTMENT_ID)
        JOIN
    locations AS l ON (d.LOCATION_ID = l.LOCATION_ID)
WHERE
    city = 'London';
    
/* 3. Write a query to get the department name and number of employees in the department*/
SELECT 
    d.DEPARTMENT_NAME, d.DEPARTMENT_ID, COUNT(*) AS number_of_employees
FROM
    employees AS e
        JOIN
    departments AS d ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
GROUP BY d.DEPARTMENT_ID , d.DEPARTMENT_NAME;

    


