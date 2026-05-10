--1.Select all columns from the employee table--

select * from Employee;

--2.Select only name and salary column from the employee table**

Select name,salary from Employee

SELECT * FROM Employee 
WHERE age > 30;

**select the names of all departments**

select name from Department

**select employees who work in the IT Department**

select * from Employee e join Department d where d.name="IT";

**6.select employees whose name start with J**

select * from Employee where name LIKE "J%";

**7.Select employees whose names end with ‘e’.**

select * from Employee where name LIKE "%e";

**8. Select employees whose names contain ‘a’.**

select * from Employee where name LIKE "%a%";

**9. Select employees whose names are exactly 9 characters long.**

SELECT * 
FROM Employee
WHERE LENGTH(name) = 9;

**10. Select employees whose names have 'o' as the second character**

SELECT * 
FROM Employee
WHERE name like "_o%";

**11. Select employees hired in the year 2020.**

SELECT name
FROM Employee
WHERE year(hire_date)=2020;

**12. Select employees hired in January of any year.**

SELECT name
FROM Employee
WHERE month(hire_date)=01;

**13. Select employees hired before 2019.**

SELECT name
FROM Employee
WHERE hire_date<'2019-01-01';

**14. Select employees hired on or after March 1, 2021.**

SELECT * 
FROM Employee
WHERE hire_date >= '2021-03-01';

**15. Select employees hired in the last 2 years.**

SELECT * 
FROM Employee
WHERE hire_date >= DATE_SUB(CURDATE(), INTERVAL 2 YEAR);

**16. Select the total salary of all employees.**

SELECT sum(salary) as Total_Salary
FROM Employee

**17. Select the average salary of employees.**

SELECT avg(salary) as Average_Salary
FROM Employee

**18. Select the minimum salary in the Employee table.**

SELECT min(salary) as Minimum_Salary
FROM Employee

**19. Select the number of employees in each department.**

SELECT department_id,count(*) as employee_count
FROM Employee
group by department_id;

**20. Select the average salary of employees in each department**

SELECT department_id,avg(salary)
FROM Employee
group by department_id;

**21. Select the total salary for each department**

SELECT department_id,sum(salary)
FROM Employee
group by department_id;

**22. Select the average age of employees in each department.**

SELECT department_id,avg(age)
FROM Employee
group by department_id;

**23. Select the number of employees hired in each year.**

SELECT year(hire_date) as YEAR,count(*) as no_of_employess_hired
FROM Employee
group by year(hire_date);

**24. Select the highest salary in each department.**

SELECT department_id, MAX(salary) AS highest_salary
FROM Employee
GROUP BY department_id;

**25.Select the department with the highest average salary.**

SELECT department_id
FROM Employee
GROUP BY department_id
ORDER BY AVG(salary) DESC
LIMIT 1;

**26. Select departments with more than 2 employees.**

SELECT department_id, COUNT(*) AS employee_count
FROM Employee
GROUP BY department_id
HAVING COUNT(*) > 2;

**27. Select departments with an average salary greater than 55000.**

SELECT department_id, AVG(salary) AS avg_salary
FROM Employee
GROUP BY department_id
HAVING AVG(salary) > 55000;

**28. Select years with more than 1 employee hired.**

SELECT YEAR(hire_date) AS hire_year, COUNT(*) AS employee_count
FROM Employee
GROUP BY YEAR(hire_date)
HAVING COUNT(*) > 1;

**29. Select departments with a total salary expense less than 100000.**

SELECT department_id, SUM(salary) AS total_salary
FROM Employee
GROUP BY department_id
HAVING SUM(salary) < 100000;

**30. Select departments with the maximum salary above 75000.**

SELECT department_id, MAX(salary) AS max_salary
FROM Employee
GROUP BY department_id
HAVING MAX(salary) > 75000;
