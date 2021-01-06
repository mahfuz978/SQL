/*Write a query to extract the year from the current date.*/
SELECT DATE_FORMAT(CURDATE(), '%Y') AS Current_year;

/*Write a query to get the first name and hire date from employees table where hire date between '1987-06-01' and '1987-07-30'*/
SELECT 
    first_name, hire_date
FROM
    employees
WHERE
    hire_date BETWEEN '1987-06-01' AND '1987-07-30';