--1.Select all columns from the employee table--

select * from Employee;

--2.Select only name and salary column from the employee table**

Select name,salary from Employee

-- 3. Employees older than 30 --

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

-- 31. Employees by salary ASC --

select *
from Employee
order by salary asc;

-- 32. Employees by age DESC --
SELECT * FROM Employee
ORDER BY age DESC;

-- 33. Employees by hire date ASC --
SELECT * FROM Employee
ORDER BY hire_date ASC;

--34. Select employees ordered by their department and then by their salary.--
SELECT * FROM Employee
ORDER BY department_id, salary;

--35. Select departments ordered by the total-- salary of their employees.--
SELECT department_id, SUM(salary) AS total_salary
FROM Employee
GROUP BY department_id
ORDER BY total_salary;

--Q36. Select employee names along with their department names.--
SELECT e.name AS employee_name, d.name AS department_name
from Employee e join Department d
on e.department_id=d.department_id;

--Q37. Select project names along with the department names they belong to.--
SELECT p.name AS project_name, d.name AS department_name
from Project p join Department d
on p.department_id=d.department_id;

--Q38. Select employee names and their corresponding project names.--
SELECT e.name AS employee, p.name AS project
FROM Employee e
JOIN Project p
ON e.department_id = p.department_id;

--Q39. Select all employees and their departments, including those without a department.--
SELECT e.name, d.name AS department
FROM Employee e
LEFT JOIN Department d
ON e.department_id = d.department_id;

--Q40. Select all departments and their employees, including departments without employees--
SELECT d.name AS department, e.name AS employee
FROM Department d
LEFT JOIN Employee e
ON d.department_id = e.department_id;

--Q41. Select employees who are not assigned to any project.--
SELECT e.*
FROM Employee e
LEFT JOIN Project p
ON e.department_id = p.department_id
WHERE p.project_id IS NULL;

--Q42. Select employees and the number of projects their department is working on.--
SELECT e.name, COUNT(p.project_id) AS project_count
FROM Employee e
LEFT JOIN Project p
ON e.department_id = p.department_id
GROUP BY e.emp_id, e.name;

--Q43. Select the departments that have no employees.--
SELECT d.*
FROM Department d
LEFT JOIN Employee e
ON d.department_id = e.department_id
WHERE e.emp_id IS NULL;

--Q44. Select employee names who share the same department with ‘John Doe’.--
SELECT e.name
FROM Employee e
WHERE e.department_id = (
    SELECT department_id
    FROM Employee
    WHERE name = 'John Doe'
)
AND e.name <> 'John Doe';

--Q45. Select the department name with the highest average salary.--
SELECT d.name
FROM Department d
JOIN Employee e ON d.department_id = e.department_id
GROUP BY d.name
ORDER BY AVG(e.salary) DESC
LIMIT 1;

--Q46. Select the employee with the highest salary.--
SELECT *
FROM Employee
WHERE salary = (SELECT MAX(salary) FROM Employee);

--Q47. Select employees whose salary is above the average salary.--
SELECT *
FROM Employee
WHERE salary>(SELECT MAX(salary) FROM Employee);

--Q48. Select the second highest salary from the Employee table.--
SELECT MAX(salary)
FROM Employee
WHERE salary < (SELECT MAX(salary) FROM Employee);

--Q49. Select the department with the most employees.--
SELECT department_id
FROM Employee
GROUP BY department_id
ORDER BY COUNT(*) DESC
LIMIT 1;

--Q50. Select employees who earn more than the average salary of their department.--
SELECT *
FROM Employee e
WHERE salary > (
    SELECT AVG(salary)
    FROM Employee
    WHERE department_id = e.department_id
);

-- 51. 3rd highest salary --
SELECT DISTINCT salary
FROM Employee
ORDER BY salary DESC
LIMIT 1 OFFSET 2;

-- 53. Departments avg salary > 55000 --
SELECT department_id
FROM Employee
GROUP BY department_id
HAVING AVG(salary) > 55000;

-- 54. Employees in dept with >=2 projects --
SELECT *
FROM Employee
WHERE department_id IN (
    SELECT department_id
    FROM Project
    WHERE department_id IS NOT NULL
    GROUP BY department_id
    HAVING COUNT(*) >= 2
);

-- 55. Same hire date as Jane Smith --
SELECT *
FROM Employee
WHERE hire_date = (
    SELECT hire_date FROM Employee WHERE name='Jane Smith'
);

-- 56. Total salary hired in 2020 --
SELECT SUM(salary)
FROM Employee
WHERE YEAR(hire_date)=2020;

-- 57. Avg salary per dept DESC --
SELECT department_id, AVG(salary) AS avg_salary
FROM Employee
GROUP BY department_id
ORDER BY avg_salary DESC;

-- 58. Dept >1 employee & avg >55000 --
SELECT department_id
FROM Employee
GROUP BY department_id
HAVING COUNT(*)>1 AND AVG(salary)>55000;

-- 59. Employees hired last 2 years ordered --
SELECT *
FROM Employee
WHERE hire_date >= DATE_SUB(CURDATE(), INTERVAL 2 YEAR)
ORDER BY hire_date;

-- 60. Count & avg salary (dept >2 emp) --
SELECT department_id, COUNT(*) AS total_employees, AVG(salary) AS avg_salary
FROM Employee
GROUP BY department_id
HAVING COUNT(*) > 2;

-- 61. Name & salary > dept avg --
SELECT name, salary
FROM Employee e
WHERE salary > (
    SELECT AVG(salary)
    FROM Employee
    WHERE department_id = e.department_id
);

-- 62. Same hire date as oldest employee --
SELECT name
FROM Employee
WHERE hire_date = (
    SELECT hire_date
    FROM Employee
    WHERE age = (SELECT MAX(age) FROM Employee)
);

-- 63. Dept + total projects ordered --
SELECT d.name, COUNT(p.project_id) AS total_projects
FROM Department d
LEFT JOIN Project p
ON d.department_id = p.department_id
GROUP BY d.department_id, d.name
ORDER BY total_projects DESC;

-- 64. Highest salary in each department --
SELECT *
FROM Employee e
WHERE salary = (
    SELECT MAX(salary)
    FROM Employee
    WHERE department_id = e.department_id
)
AND department_id IS NOT NULL;

-- 65. Older than dept avg age --
SELECT name, salary
FROM Employee e
WHERE age > (
    SELECT AVG(age)
    FROM Employee
    WHERE department_id = e.department_id
);
