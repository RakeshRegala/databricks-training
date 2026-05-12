Results

\*\*Schema (MySQL v5.7)\*\*



&#x20;   

&#x20;   CREATE TABLE Employees (

&#x20;       emp\_id INT,

&#x20;       emp\_name VARCHAR(50),

&#x20;       department VARCHAR(50),

&#x20;       salary INT,

&#x20;       city VARCHAR(50),

&#x20;       experience INT

&#x20;   );

&#x20;   

&#x20;   INSERT INTO Employees VALUES

&#x20;   (101, 'Rahul', 'IT', 75000, 'Hyderabad', 5),

&#x20;   (102, 'Anjali', 'HR', 45000, 'Chennai', 3),

&#x20;   (103, 'Kiran', 'IT', 82000, 'Bangalore', 6),

&#x20;   (104, 'Sneha', 'Finance', 67000, 'Hyderabad', 4),

&#x20;   (105, 'Aman', 'HR', 39000, 'Pune', 2),

&#x20;   (106, 'Ravi', 'Finance', 91000, 'Mumbai', 8),

&#x20;   (107, 'Divya', 'IT', 55000, 'Chennai', 3),

&#x20;   (108, 'Meena', 'Sales', 48000, 'Bangalore', 2),

&#x20;   (109, 'Arjun', 'Sales', 61000, 'Hyderabad', 5),

&#x20;   (110, 'Pooja', 'IT', 73000, 'Mumbai', 4),

&#x20;   (111, 'Vikas', 'HR', 52000, 'Pune', 3),

&#x20;   (112, 'Nisha', 'Finance', 88000, 'Bangalore', 7),

&#x20;   (113, 'Tarun', 'Sales', 46000, 'Chennai', 2),

&#x20;   (114, 'Kavya', 'IT', 97000, 'Hyderabad', 9),

&#x20;   (115, 'Manoj', 'Finance', 58000, 'Mumbai', 4);



\---



\*\*Query #1\*\*



&#x20;   -- SELECT QUERIES

&#x20;   -- 1. Display all employee details

&#x20;   SELECT \* FROM Employees;



| emp\_id | emp\_name | department | salary | city      | experience |

| ------ | -------- | ---------- | ------ | --------- | ---------- |

| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |

| 102    | Anjali   | HR         | 45000  | Chennai   | 3          |

| 103    | Kiran    | IT         | 82000  | Bangalore | 6          |

| 104    | Sneha    | Finance    | 67000  | Hyderabad | 4          |

| 105    | Aman     | HR         | 39000  | Pune      | 2          |

| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |

| 107    | Divya    | IT         | 55000  | Chennai   | 3          |

| 108    | Meena    | Sales      | 48000  | Bangalore | 2          |

| 109    | Arjun    | Sales      | 61000  | Hyderabad | 5          |

| 110    | Pooja    | IT         | 73000  | Mumbai    | 4          |

| 111    | Vikas    | HR         | 52000  | Pune      | 3          |

| 112    | Nisha    | Finance    | 88000  | Bangalore | 7          |

| 113    | Tarun    | Sales      | 46000  | Chennai   | 2          |

| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |

| 115    | Manoj    | Finance    | 58000  | Mumbai    | 4          |



\---

\*\*Query #2\*\*



&#x20;   -- 2. Display only employee names and salaries

&#x20;   SELECT emp\_name, salary FROM Employees;



| emp\_name | salary |

| -------- | ------ |

| Rahul    | 75000  |

| Anjali   | 45000  |

| Kiran    | 82000  |

| Sneha    | 67000  |

| Aman     | 39000  |

| Ravi     | 91000  |

| Divya    | 55000  |

| Meena    | 48000  |

| Arjun    | 61000  |

| Pooja    | 73000  |

| Vikas    | 52000  |

| Nisha    | 88000  |

| Tarun    | 46000  |

| Kavya    | 97000  |

| Manoj    | 58000  |



\---

\*\*Query #3\*\*



&#x20;   -- 3. Display employee names and departments

&#x20;   SELECT emp\_name, department FROM Employees;



| emp\_name | department |

| -------- | ---------- |

| Rahul    | IT         |

| Anjali   | HR         |

| Kiran    | IT         |

| Sneha    | Finance    |

| Aman     | HR         |

| Ravi     | Finance    |

| Divya    | IT         |

| Meena    | Sales      |

| Arjun    | Sales      |

| Pooja    | IT         |

| Vikas    | HR         |

| Nisha    | Finance    |

| Tarun    | Sales      |

| Kavya    | IT         |

| Manoj    | Finance    |



\---

\*\*Query #4\*\*



&#x20;   -- 4. Display all employees from the IT department

&#x20;   SELECT \* FROM Employees

&#x20;   WHERE department = 'IT';



| emp\_id | emp\_name | department | salary | city      | experience |

| ------ | -------- | ---------- | ------ | --------- | ---------- |

| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |

| 103    | Kiran    | IT         | 82000  | Bangalore | 6          |

| 107    | Divya    | IT         | 55000  | Chennai   | 3          |

| 110    | Pooja    | IT         | 73000  | Mumbai    | 4          |

| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |



\---

\*\*Query #5\*\*



&#x20;   -- 5. Display employee names and experience

&#x20;   SELECT emp\_name, experience FROM Employees;



| emp\_name | experience |

| -------- | ---------- |

| Rahul    | 5          |

| Anjali   | 3          |

| Kiran    | 6          |

| Sneha    | 4          |

| Aman     | 2          |

| Ravi     | 8          |

| Divya    | 3          |

| Meena    | 2          |

| Arjun    | 5          |

| Pooja    | 4          |

| Vikas    | 3          |

| Nisha    | 7          |

| Tarun    | 2          |

| Kavya    | 9          |

| Manoj    | 4          |



\---

\*\*Query #6\*\*



&#x20;   -- WHERE QUERIES

&#x20;   -- 6. Find employees with salary greater than 70000

&#x20;   SELECT \* FROM Employees

&#x20;   WHERE salary > 70000;



| emp\_id | emp\_name | department | salary | city      | experience |

| ------ | -------- | ---------- | ------ | --------- | ---------- |

| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |

| 103    | Kiran    | IT         | 82000  | Bangalore | 6          |

| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |

| 110    | Pooja    | IT         | 73000  | Mumbai    | 4          |

| 112    | Nisha    | Finance    | 88000  | Bangalore | 7          |

| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |



\---

\*\*Query #7\*\*



&#x20;   -- 7. Find employees working in Hyderabad

&#x20;   SELECT \* FROM Employees

&#x20;   WHERE city = 'Hyderabad';



| emp\_id | emp\_name | department | salary | city      | experience |

| ------ | -------- | ---------- | ------ | --------- | ---------- |

| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |

| 104    | Sneha    | Finance    | 67000  | Hyderabad | 4          |

| 109    | Arjun    | Sales      | 61000  | Hyderabad | 5          |

| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |



\---

\*\*Query #8\*\*



&#x20;   -- 8. Find employees with experience less than 4 years

&#x20;   SELECT \* FROM Employees

&#x20;   WHERE experience < 4;



| emp\_id | emp\_name | department | salary | city      | experience |

| ------ | -------- | ---------- | ------ | --------- | ---------- |

| 102    | Anjali   | HR         | 45000  | Chennai   | 3          |

| 105    | Aman     | HR         | 39000  | Pune      | 2          |

| 107    | Divya    | IT         | 55000  | Chennai   | 3          |

| 108    | Meena    | Sales      | 48000  | Bangalore | 2          |

| 111    | Vikas    | HR         | 52000  | Pune      | 3          |

| 113    | Tarun    | Sales      | 46000  | Chennai   | 2          |



\---

\*\*Query #9\*\*



&#x20;   -- 9. Find employees from Finance department

&#x20;   SELECT \* FROM Employees

&#x20;   WHERE department = 'Finance';



| emp\_id | emp\_name | department | salary | city      | experience |

| ------ | -------- | ---------- | ------ | --------- | ---------- |

| 104    | Sneha    | Finance    | 67000  | Hyderabad | 4          |

| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |

| 112    | Nisha    | Finance    | 88000  | Bangalore | 7          |

| 115    | Manoj    | Finance    | 58000  | Mumbai    | 4          |



\---

\*\*Query #10\*\*



&#x20;   -- 10. Find employees whose salary is equal to 52000

&#x20;   SELECT \* FROM Employees

&#x20;   WHERE salary = 52000;



| emp\_id | emp\_name | department | salary | city | experience |

| ------ | -------- | ---------- | ------ | ---- | ---------- |

| 111    | Vikas    | HR         | 52000  | Pune | 3          |



\---

\*\*Query #11\*\*



&#x20;   -- GROUP BY QUERIES

&#x20;   -- 11. Find total salary department-wise

&#x20;   SELECT department, SUM(salary) AS total\_salary

&#x20;   FROM Employees

&#x20;   GROUP BY department;



| department | total\_salary |

| ---------- | ------------ |

| Finance    | 304000       |

| HR         | 136000       |

| IT         | 382000       |

| Sales      | 155000       |



\---

\*\*Query #12\*\*



&#x20;   -- 12. Find average salary in each department

&#x20;   SELECT department, AVG(salary) AS avg\_salary

&#x20;   FROM Employees

&#x20;   GROUP BY department;



| department | avg\_salary |

| ---------- | ---------- |

| Finance    | 76000.0    |

| HR         | 45333.3333 |

| IT         | 76400.0    |

| Sales      | 51666.6667 |



\---

\*\*Query #13\*\*



&#x20;   -- 13. Count employees in each city

&#x20;   SELECT city, COUNT(\*) AS employee\_count

&#x20;   FROM Employees

&#x20;   GROUP BY city;



| city      | employee\_count |

| --------- | -------------- |

| Bangalore | 3              |

| Chennai   | 3              |

| Hyderabad | 4              |

| Mumbai    | 3              |

| Pune      | 2              |



\---

\*\*Query #14\*\*



&#x20;   -- 14. Find maximum salary in each department

&#x20;   SELECT department, MAX(salary) AS max\_salary

&#x20;   FROM Employees

&#x20;   GROUP BY department;



| department | max\_salary |

| ---------- | ---------- |

| Finance    | 91000      |

| HR         | 52000      |

| IT         | 97000      |

| Sales      | 61000      |



\---

\*\*Query #15\*\*



&#x20;   -- 15. Find minimum experience department-wise

&#x20;   SELECT department, MIN(experience) AS min\_experience

&#x20;   FROM Employees

&#x20;   GROUP BY department;



| department | min\_experience |

| ---------- | -------------- |

| Finance    | 4              |

| HR         | 2              |

| IT         | 3              |

| Sales      | 2              |



\---

\*\*Query #16\*\*



&#x20;   -- HAVING QUERIES

&#x20;   -- 16. Find departments having more than 3 employees

&#x20;   SELECT department, COUNT(\*) AS employee\_count

&#x20;   FROM Employees

&#x20;   GROUP BY department

&#x20;   HAVING COUNT(\*) > 3;



| department | employee\_count |

| ---------- | -------------- |

| Finance    | 4              |

| IT         | 5              |



\---

\*\*Query #17\*\*



&#x20;   -- 17. Find departments where average salary is greater than 60000

&#x20;   SELECT department, AVG(salary) AS avg\_salary

&#x20;   FROM Employees

&#x20;   GROUP BY department

&#x20;   HAVING AVG(salary) > 60000;



| department | avg\_salary |

| ---------- | ---------- |

| Finance    | 76000.0    |

| IT         | 76400.0    |



\---

\*\*Query #18\*\*



&#x20;   -- 18. Find cities having more than 2 employees

&#x20;   SELECT city, COUNT(\*) AS employee\_count

&#x20;   FROM Employees

&#x20;   GROUP BY city

&#x20;   HAVING COUNT(\*) > 2;



| city      | employee\_count |

| --------- | -------------- |

| Bangalore | 3              |

| Chennai   | 3              |

| Hyderabad | 4              |

| Mumbai    | 3              |



\---

\*\*Query #19\*\*



&#x20;   -- 19. Find departments where total salary is greater than 200000

&#x20;   SELECT department, SUM(salary) AS total\_salary

&#x20;   FROM Employees

&#x20;   GROUP BY department

&#x20;   HAVING SUM(salary) > 200000;



| department | total\_salary |

| ---------- | ------------ |

| Finance    | 304000       |

| IT         | 382000       |



\---

\*\*Query #20\*\*



&#x20;   -- 20. Find departments where maximum salary is above 90000

&#x20;   SELECT department, MAX(salary) AS max\_salary

&#x20;   FROM Employees

&#x20;   GROUP BY department

&#x20;   HAVING MAX(salary) > 90000;



| department | max\_salary |

| ---------- | ---------- |

| Finance    | 91000      |

| IT         | 97000      |



\---

\*\*Query #21\*\*



&#x20;   -- TOP QUERIES

&#x20;   -- 21. Display top 5 highest paid employees

&#x20;   SELECT \* FROM Employees

&#x20;   ORDER BY salary DESC

&#x20;   LIMIT 5;



| emp\_id | emp\_name | department | salary | city      | experience |

| ------ | -------- | ---------- | ------ | --------- | ---------- |

| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |

| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |

| 112    | Nisha    | Finance    | 88000  | Bangalore | 7          |

| 103    | Kiran    | IT         | 82000  | Bangalore | 6          |

| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |



\---

\*\*Query #22\*\*



&#x20;   -- 22. Display top 3 employees with highest experience

&#x20;   SELECT \* FROM Employees

&#x20;   ORDER BY experience DESC

&#x20;   LIMIT 3;



| emp\_id | emp\_name | department | salary | city      | experience |

| ------ | -------- | ---------- | ------ | --------- | ---------- |

| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |

| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |

| 112    | Nisha    | Finance    | 88000  | Bangalore | 7          |



\---

\*\*Query #23\*\*



&#x20;   -- 23. Display top 2 salaries from Finance department

&#x20;   SELECT \* FROM Employees

&#x20;   WHERE department = 'Finance'

&#x20;   ORDER BY salary DESC

&#x20;   LIMIT 2;



| emp\_id | emp\_name | department | salary | city      | experience |

| ------ | -------- | ---------- | ------ | --------- | ---------- |

| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |

| 112    | Nisha    | Finance    | 88000  | Bangalore | 7          |



\---

\*\*Query #24\*\*



&#x20;   -- 24. Display top 4 employees from Hyderabad

&#x20;   SELECT \* FROM Employees

&#x20;   WHERE city = 'Hyderabad'

&#x20;   LIMIT 4;



| emp\_id | emp\_name | department | salary | city      | experience |

| ------ | -------- | ---------- | ------ | --------- | ---------- |

| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |

| 104    | Sneha    | Finance    | 67000  | Hyderabad | 4          |

| 109    | Arjun    | Sales      | 61000  | Hyderabad | 5          |

| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |



\---

\*\*Query #25\*\*



&#x20;   -- 25. Display top 1 highest salary employee

&#x20;   SELECT \* FROM Employees

&#x20;   ORDER BY salary DESC

&#x20;   LIMIT 1;



| emp\_id | emp\_name | department | salary | city      | experience |

| ------ | -------- | ---------- | ------ | --------- | ---------- |

| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |



\---

\*\*Query #26\*\*



&#x20;   -- DISTINCT QUERIES

&#x20;   -- 26. Display distinct department names

&#x20;   SELECT DISTINCT department FROM Employees;



| department |

| ---------- |

| IT         |

| HR         |

| Finance    |

| Sales      |



\---

\*\*Query #27\*\*



&#x20;   -- 27. Display distinct city names

&#x20;   SELECT DISTINCT city FROM Employees;



| city      |

| --------- |

| Hyderabad |

| Chennai   |

| Bangalore |

| Pune      |

| Mumbai    |



\---

\*\*Query #28\*\*



&#x20;   -- 28. Display distinct salary values

&#x20;   SELECT DISTINCT salary FROM Employees;



| salary |

| ------ |

| 75000  |

| 45000  |

| 82000  |

| 67000  |

| 39000  |

| 91000  |

| 55000  |

| 48000  |

| 61000  |

| 73000  |

| 52000  |

| 88000  |

| 46000  |

| 97000  |

| 58000  |



\---

\*\*Query #29\*\*



&#x20;   -- 29. Display distinct combinations of department and city

&#x20;   SELECT DISTINCT department, city

&#x20;   FROM Employees;



| department | city      |

| ---------- | --------- |

| IT         | Hyderabad |

| HR         | Chennai   |

| IT         | Bangalore |

| Finance    | Hyderabad |

| HR         | Pune      |

| Finance    | Mumbai    |

| IT         | Chennai   |

| Sales      | Bangalore |

| Sales      | Hyderabad |

| IT         | Mumbai    |

| Finance    | Bangalore |

| Sales      | Chennai   |



\---

\*\*Query #30\*\*



&#x20;   -- 30. Display distinct experience values

&#x20;   SELECT DISTINCT experience FROM Employees;



| experience |

| ---------- |

| 5          |

| 3          |

| 6          |

| 4          |

| 2          |

| 8          |

| 7          |

| 9          |



\---

\*\*Query #31\*\*



&#x20;   -- COMPARISON OPERATOR QUERIES

&#x20;   -- 31. Find employees with salary >= 80000

&#x20;   SELECT \* FROM Employees

&#x20;   WHERE salary >= 80000;



| emp\_id | emp\_name | department | salary | city      | experience |

| ------ | -------- | ---------- | ------ | --------- | ---------- |

| 103    | Kiran    | IT         | 82000  | Bangalore | 6          |

| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |

| 112    | Nisha    | Finance    | 88000  | Bangalore | 7          |

| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |



\---

\*\*Query #32\*\*



&#x20;   -- 32. Find employees with experience <= 3

&#x20;   SELECT \* FROM Employees

&#x20;   WHERE experience <= 3;



| emp\_id | emp\_name | department | salary | city      | experience |

| ------ | -------- | ---------- | ------ | --------- | ---------- |

| 102    | Anjali   | HR         | 45000  | Chennai   | 3          |

| 105    | Aman     | HR         | 39000  | Pune      | 2          |

| 107    | Divya    | IT         | 55000  | Chennai   | 3          |

| 108    | Meena    | Sales      | 48000  | Bangalore | 2          |

| 111    | Vikas    | HR         | 52000  | Pune      | 3          |

| 113    | Tarun    | Sales      | 46000  | Chennai   | 2          |



\---

\*\*Query #33\*\*



&#x20;   -- 33. Find employees whose salary <> 45000

&#x20;   SELECT \* FROM Employees

&#x20;   WHERE salary <> 45000;



| emp\_id | emp\_name | department | salary | city      | experience |

| ------ | -------- | ---------- | ------ | --------- | ---------- |

| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |

| 103    | Kiran    | IT         | 82000  | Bangalore | 6          |

| 104    | Sneha    | Finance    | 67000  | Hyderabad | 4          |

| 105    | Aman     | HR         | 39000  | Pune      | 2          |

| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |

| 107    | Divya    | IT         | 55000  | Chennai   | 3          |

| 108    | Meena    | Sales      | 48000  | Bangalore | 2          |

| 109    | Arjun    | Sales      | 61000  | Hyderabad | 5          |

| 110    | Pooja    | IT         | 73000  | Mumbai    | 4          |

| 111    | Vikas    | HR         | 52000  | Pune      | 3          |

| 112    | Nisha    | Finance    | 88000  | Bangalore | 7          |

| 113    | Tarun    | Sales      | 46000  | Chennai   | 2          |

| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |

| 115    | Manoj    | Finance    | 58000  | Mumbai    | 4          |



\---

\*\*Query #34\*\*



&#x20;   -- 34. Find employees with salary < 50000

&#x20;   SELECT \* FROM Employees

&#x20;   WHERE salary < 50000;



| emp\_id | emp\_name | department | salary | city      | experience |

| ------ | -------- | ---------- | ------ | --------- | ---------- |

| 102    | Anjali   | HR         | 45000  | Chennai   | 3          |

| 105    | Aman     | HR         | 39000  | Pune      | 2          |

| 108    | Meena    | Sales      | 48000  | Bangalore | 2          |

| 113    | Tarun    | Sales      | 46000  | Chennai   | 2          |



\---

\*\*Query #35\*\*



&#x20;   -- 35. Find employees with experience > 5

&#x20;   SELECT \* FROM Employees

&#x20;   WHERE experience > 5;



| emp\_id | emp\_name | department | salary | city      | experience |

| ------ | -------- | ---------- | ------ | --------- | ---------- |

| 103    | Kiran    | IT         | 82000  | Bangalore | 6          |

| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |

| 112    | Nisha    | Finance    | 88000  | Bangalore | 7          |

| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |



\---

\*\*Query #36\*\*



&#x20;   -- LOGICAL OPERATOR QUERIES

&#x20;   -- 36. Find employees from IT department AND salary greater than 70000

&#x20;   SELECT \* FROM Employees

&#x20;   WHERE department = 'IT' AND salary > 70000;



| emp\_id | emp\_name | department | salary | city      | experience |

| ------ | -------- | ---------- | ------ | --------- | ---------- |

| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |

| 103    | Kiran    | IT         | 82000  | Bangalore | 6          |

| 110    | Pooja    | IT         | 73000  | Mumbai    | 4          |

| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |



\---

\*\*Query #37\*\*



&#x20;   -- 37. Find employees from Hyderabad OR Bangalore

&#x20;   SELECT \* FROM Employees

&#x20;   WHERE city = 'Hyderabad' OR city = 'Bangalore';



| emp\_id | emp\_name | department | salary | city      | experience |

| ------ | -------- | ---------- | ------ | --------- | ---------- |

| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |

| 103    | Kiran    | IT         | 82000  | Bangalore | 6          |

| 104    | Sneha    | Finance    | 67000  | Hyderabad | 4          |

| 108    | Meena    | Sales      | 48000  | Bangalore | 2          |

| 109    | Arjun    | Sales      | 61000  | Hyderabad | 5          |

| 112    | Nisha    | Finance    | 88000  | Bangalore | 7          |

| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |



\---

\*\*Query #38\*\*



&#x20;   -- 38. Find employees from HR department AND experience less than 3

&#x20;   SELECT \* FROM Employees

&#x20;   WHERE department = 'HR' AND experience < 3;



| emp\_id | emp\_name | department | salary | city | experience |

| ------ | -------- | ---------- | ------ | ---- | ---------- |

| 105    | Aman     | HR         | 39000  | Pune | 2          |



\---

\*\*Query #39\*\*



&#x20;   -- 39. Find employees with salary greater than 60000 OR experience greater than 6

&#x20;   SELECT \* FROM Employees

&#x20;   WHERE salary > 60000 OR experience > 6;



| emp\_id | emp\_name | department | salary | city      | experience |

| ------ | -------- | ---------- | ------ | --------- | ---------- |

| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |

| 103    | Kiran    | IT         | 82000  | Bangalore | 6          |

| 104    | Sneha    | Finance    | 67000  | Hyderabad | 4          |

| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |

| 109    | Arjun    | Sales      | 61000  | Hyderabad | 5          |

| 110    | Pooja    | IT         | 73000  | Mumbai    | 4          |

| 112    | Nisha    | Finance    | 88000  | Bangalore | 7          |

| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |



\---

\*\*Query #40\*\*



&#x20;   -- 40. Find employees NOT from Sales department

&#x20;   SELECT \* FROM Employees

&#x20;   WHERE department <> 'Sales';



| emp\_id | emp\_name | department | salary | city      | experience |

| ------ | -------- | ---------- | ------ | --------- | ---------- |

| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |

| 102    | Anjali   | HR         | 45000  | Chennai   | 3          |

| 103    | Kiran    | IT         | 82000  | Bangalore | 6          |

| 104    | Sneha    | Finance    | 67000  | Hyderabad | 4          |

| 105    | Aman     | HR         | 39000  | Pune      | 2          |

| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |

| 107    | Divya    | IT         | 55000  | Chennai   | 3          |

| 110    | Pooja    | IT         | 73000  | Mumbai    | 4          |

| 111    | Vikas    | HR         | 52000  | Pune      | 3          |

| 112    | Nisha    | Finance    | 88000  | Bangalore | 7          |

| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |

| 115    | Manoj    | Finance    | 58000  | Mumbai    | 4          |



\---

\*\*Query #41\*\*



&#x20;   -- IN AND NOT IN QUERIES

&#x20;   -- 41. Find employees working in ('Hyderabad', 'Mumbai')

&#x20;   SELECT \* FROM Employees

&#x20;   WHERE city IN ('Hyderabad', 'Mumbai');



| emp\_id | emp\_name | department | salary | city      | experience |

| ------ | -------- | ---------- | ------ | --------- | ---------- |

| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |

| 104    | Sneha    | Finance    | 67000  | Hyderabad | 4          |

| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |

| 109    | Arjun    | Sales      | 61000  | Hyderabad | 5          |

| 110    | Pooja    | IT         | 73000  | Mumbai    | 4          |

| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |

| 115    | Manoj    | Finance    | 58000  | Mumbai    | 4          |



\---

\*\*Query #42\*\*



&#x20;   -- 42. Find employees whose department IN ('IT', 'Finance')

&#x20;   SELECT \* FROM Employees

&#x20;   WHERE department IN ('IT', 'Finance');



| emp\_id | emp\_name | department | salary | city      | experience |

| ------ | -------- | ---------- | ------ | --------- | ---------- |

| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |

| 103    | Kiran    | IT         | 82000  | Bangalore | 6          |

| 104    | Sneha    | Finance    | 67000  | Hyderabad | 4          |

| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |

| 107    | Divya    | IT         | 55000  | Chennai   | 3          |

| 110    | Pooja    | IT         | 73000  | Mumbai    | 4          |

| 112    | Nisha    | Finance    | 88000  | Bangalore | 7          |

| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |

| 115    | Manoj    | Finance    | 58000  | Mumbai    | 4          |



\---

\*\*Query #43\*\*



&#x20;   -- 43. Find employees whose city NOT IN ('Chennai', 'Pune')

&#x20;   SELECT \* FROM Employees

&#x20;   WHERE city NOT IN ('Chennai', 'Pune');



| emp\_id | emp\_name | department | salary | city      | experience |

| ------ | -------- | ---------- | ------ | --------- | ---------- |

| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |

| 103    | Kiran    | IT         | 82000  | Bangalore | 6          |

| 104    | Sneha    | Finance    | 67000  | Hyderabad | 4          |

| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |

| 108    | Meena    | Sales      | 48000  | Bangalore | 2          |

| 109    | Arjun    | Sales      | 61000  | Hyderabad | 5          |

| 110    | Pooja    | IT         | 73000  | Mumbai    | 4          |

| 112    | Nisha    | Finance    | 88000  | Bangalore | 7          |

| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |

| 115    | Manoj    | Finance    | 58000  | Mumbai    | 4          |



\---

\*\*Query #44\*\*



&#x20;   -- 44. Find employees whose salary IN (45000, 75000, 91000)

&#x20;   SELECT \* FROM Employees

&#x20;   WHERE salary IN (45000, 75000, 91000);



| emp\_id | emp\_name | department | salary | city      | experience |

| ------ | -------- | ---------- | ------ | --------- | ---------- |

| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |

| 102    | Anjali   | HR         | 45000  | Chennai   | 3          |

| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |



\---

\*\*Query #45\*\*



&#x20;   -- 45. Find employees whose department NOT IN ('HR', 'Sales')

&#x20;   SELECT \* FROM Employees

&#x20;   WHERE department NOT IN ('HR', 'Sales');



| emp\_id | emp\_name | department | salary | city      | experience |

| ------ | -------- | ---------- | ------ | --------- | ---------- |

| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |

| 103    | Kiran    | IT         | 82000  | Bangalore | 6          |

| 104    | Sneha    | Finance    | 67000  | Hyderabad | 4          |

| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |

| 107    | Divya    | IT         | 55000  | Chennai   | 3          |

| 110    | Pooja    | IT         | 73000  | Mumbai    | 4          |

| 112    | Nisha    | Finance    | 88000  | Bangalore | 7          |

| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |

| 115    | Manoj    | Finance    | 58000  | Mumbai    | 4          |



\---

\*\*Query #46\*\*



&#x20;   -- BETWEEN QUERIES

&#x20;   -- 46. Find employees with salary BETWEEN 50000 AND 80000

&#x20;   SELECT \* FROM Employees

&#x20;   WHERE salary BETWEEN 50000 AND 80000;



| emp\_id | emp\_name | department | salary | city      | experience |

| ------ | -------- | ---------- | ------ | --------- | ---------- |

| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |

| 104    | Sneha    | Finance    | 67000  | Hyderabad | 4          |

| 107    | Divya    | IT         | 55000  | Chennai   | 3          |

| 109    | Arjun    | Sales      | 61000  | Hyderabad | 5          |

| 110    | Pooja    | IT         | 73000  | Mumbai    | 4          |

| 111    | Vikas    | HR         | 52000  | Pune      | 3          |

| 115    | Manoj    | Finance    | 58000  | Mumbai    | 4          |



\---

\*\*Query #47\*\*



&#x20;   -- 47. Find employees with experience BETWEEN 3 AND 6

&#x20;   SELECT \* FROM Employees

&#x20;   WHERE experience BETWEEN 3 AND 6;



| emp\_id | emp\_name | department | salary | city      | experience |

| ------ | -------- | ---------- | ------ | --------- | ---------- |

| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |

| 102    | Anjali   | HR         | 45000  | Chennai   | 3          |

| 103    | Kiran    | IT         | 82000  | Bangalore | 6          |

| 104    | Sneha    | Finance    | 67000  | Hyderabad | 4          |

| 107    | Divya    | IT         | 55000  | Chennai   | 3          |

| 109    | Arjun    | Sales      | 61000  | Hyderabad | 5          |

| 110    | Pooja    | IT         | 73000  | Mumbai    | 4          |

| 111    | Vikas    | HR         | 52000  | Pune      | 3          |

| 115    | Manoj    | Finance    | 58000  | Mumbai    | 4          |



\---

\*\*Query #48\*\*



&#x20;   -- 48. Find employees whose emp\_id BETWEEN 105 AND 112

&#x20;   SELECT \* FROM Employees

&#x20;   WHERE emp\_id BETWEEN 105 AND 112;



| emp\_id | emp\_name | department | salary | city      | experience |

| ------ | -------- | ---------- | ------ | --------- | ---------- |

| 105    | Aman     | HR         | 39000  | Pune      | 2          |

| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |

| 107    | Divya    | IT         | 55000  | Chennai   | 3          |

| 108    | Meena    | Sales      | 48000  | Bangalore | 2          |

| 109    | Arjun    | Sales      | 61000  | Hyderabad | 5          |

| 110    | Pooja    | IT         | 73000  | Mumbai    | 4          |

| 111    | Vikas    | HR         | 52000  | Pune      | 3          |

| 112    | Nisha    | Finance    | 88000  | Bangalore | 7          |



\---

\*\*Query #49\*\*



&#x20;   -- 49. Find employees with salary NOT BETWEEN 40000 AND 60000

&#x20;   SELECT \* FROM Employees

&#x20;   WHERE salary NOT BETWEEN 40000 AND 60000;



| emp\_id | emp\_name | department | salary | city      | experience |

| ------ | -------- | ---------- | ------ | --------- | ---------- |

| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |

| 103    | Kiran    | IT         | 82000  | Bangalore | 6          |

| 104    | Sneha    | Finance    | 67000  | Hyderabad | 4          |

| 105    | Aman     | HR         | 39000  | Pune      | 2          |

| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |

| 109    | Arjun    | Sales      | 61000  | Hyderabad | 5          |

| 110    | Pooja    | IT         | 73000  | Mumbai    | 4          |

| 112    | Nisha    | Finance    | 88000  | Bangalore | 7          |

| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |



\---

\*\*Query #50\*\*



&#x20;   -- 50. Find employees with experience BETWEEN 2 AND 4

&#x20;   SELECT \* FROM Employees

&#x20;   WHERE experience BETWEEN 2 AND 4;



| emp\_id | emp\_name | department | salary | city      | experience |

| ------ | -------- | ---------- | ------ | --------- | ---------- |

| 102    | Anjali   | HR         | 45000  | Chennai   | 3          |

| 104    | Sneha    | Finance    | 67000  | Hyderabad | 4          |

| 105    | Aman     | HR         | 39000  | Pune      | 2          |

| 107    | Divya    | IT         | 55000  | Chennai   | 3          |

| 108    | Meena    | Sales      | 48000  | Bangalore | 2          |

| 110    | Pooja    | IT         | 73000  | Mumbai    | 4          |

| 111    | Vikas    | HR         | 52000  | Pune      | 3          |

| 113    | Tarun    | Sales      | 46000  | Chennai   | 2          |

| 115    | Manoj    | Finance    | 58000  | Mumbai    | 4          |



\---

\*\*Query #51\*\*



&#x20;   -- LIKE OPERATOR QUERIES

&#x20;   -- 51. Find employees whose names start with 'R'

&#x20;   SELECT \* FROM Employees

&#x20;   WHERE emp\_name LIKE 'R%';



| emp\_id | emp\_name | department | salary | city      | experience |

| ------ | -------- | ---------- | ------ | --------- | ---------- |

| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |

| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |



\---

\*\*Query #52\*\*



&#x20;   -- 52. Find employees whose names end with 'a'

&#x20;   SELECT \* FROM Employees

&#x20;   WHERE emp\_name LIKE '%a';



| emp\_id | emp\_name | department | salary | city      | experience |

| ------ | -------- | ---------- | ------ | --------- | ---------- |

| 104    | Sneha    | Finance    | 67000  | Hyderabad | 4          |

| 107    | Divya    | IT         | 55000  | Chennai   | 3          |

| 108    | Meena    | Sales      | 48000  | Bangalore | 2          |

| 110    | Pooja    | IT         | 73000  | Mumbai    | 4          |

| 112    | Nisha    | Finance    | 88000  | Bangalore | 7          |

| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |



\---

\*\*Query #53\*\*



&#x20;   -- 53. Find employees whose names contain 'v'

&#x20;   SELECT \* FROM Employees

&#x20;   WHERE emp\_name LIKE '%v%';



| emp\_id | emp\_name | department | salary | city      | experience |

| ------ | -------- | ---------- | ------ | --------- | ---------- |

| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |

| 107    | Divya    | IT         | 55000  | Chennai   | 3          |

| 111    | Vikas    | HR         | 52000  | Pune      | 3          |

| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |



\---

\*\*Query #54\*\*



&#x20;   -- 54. Find employees whose city starts with 'B'

&#x20;   SELECT \* FROM Employees

&#x20;   WHERE city LIKE 'B%';



| emp\_id | emp\_name | department | salary | city      | experience |

| ------ | -------- | ---------- | ------ | --------- | ---------- |

| 103    | Kiran    | IT         | 82000  | Bangalore | 6          |

| 108    | Meena    | Sales      | 48000  | Bangalore | 2          |

| 112    | Nisha    | Finance    | 88000  | Bangalore | 7          |



\---

\*\*Query #55\*\*



&#x20;   -- 55. Find employees whose department ends with 's'

&#x20;   SELECT \* FROM Employees

&#x20;   WHERE department LIKE '%s';



| emp\_id | emp\_name | department | salary | city      | experience |

| ------ | -------- | ---------- | ------ | --------- | ---------- |

| 108    | Meena    | Sales      | 48000  | Bangalore | 2          |

| 109    | Arjun    | Sales      | 61000  | Hyderabad | 5          |

| 113    | Tarun    | Sales      | 46000  | Chennai   | 2          |



\---



\[View on DB Fiddle](https://www.db-fiddle.com/)

Copy as Markdown

Query #1 Execution time: 0.26ms

emp\_id	emp\_name	department	salary	city	experience

101	Rahul	IT	75000	Hyderabad	5

102	Anjali	HR	45000	Chennai	3

103	Kiran	IT	82000	Bangalore	6

104	Sneha	Finance	67000	Hyderabad	4

105	Aman	HR	39000	Pune	2

106	Ravi	Finance	91000	Mumbai	8

107	Divya	IT	55000	Chennai	3

108	Meena	Sales	48000	Bangalore	2

109	Arjun	Sales	61000	Hyderabad	5

110	Pooja	IT	73000	Mumbai	4

111	Vikas	HR	52000	Pune	3

112	Nisha	Finance	88000	Bangalore	7

113	Tarun	Sales	46000	Chennai	2

114	Kavya	IT	97000	Hyderabad	9

115	Manoj	Finance	58000	Mumbai	4

Query #2 Execution time: 0.14ms

emp\_name	salary

Rahul	75000

Anjali	45000

Kiran	82000

Sneha	67000

Aman	39000

Ravi	91000

Divya	55000

Meena	48000

Arjun	61000

Pooja	73000

Vikas	52000

Nisha	88000

Tarun	46000

Kavya	97000

Manoj	58000

Query #3 Execution time: 0.2ms

emp\_name	department

Rahul	IT

Anjali	HR

Kiran	IT

Sneha	Finance

Aman	HR

Ravi	Finance

Divya	IT

Meena	Sales

Arjun	Sales

Pooja	IT

Vikas	HR

Nisha	Finance

Tarun	Sales

Kavya	IT

Manoj	Finance

Query #4 Execution time: 0.21ms

emp\_id	emp\_name	department	salary	city	experience

101	Rahul	IT	75000	Hyderabad	5

103	Kiran	IT	82000	Bangalore	6

107	Divya	IT	55000	Chennai	3

110	Pooja	IT	73000	Mumbai	4

114	Kavya	IT	97000	Hyderabad	9

Query #5 Execution time: 0.09ms

emp\_name	experience

Rahul	5

Anjali	3

Kiran	6

Sneha	4

Aman	2

Ravi	8

Divya	3

Meena	2

Arjun	5

Pooja	4

Vikas	3

Nisha	7

Tarun	2

Kavya	9

Manoj	4

Query #6 Execution time: 0.1ms

emp\_id	emp\_name	department	salary	city	experience

101	Rahul	IT	75000	Hyderabad	5

103	Kiran	IT	82000	Bangalore	6

106	Ravi	Finance	91000	Mumbai	8

110	Pooja	IT	73000	Mumbai	4

112	Nisha	Finance	88000	Bangalore	7

114	Kavya	IT	97000	Hyderabad	9

Query #7 Execution time: 0.11ms

emp\_id	emp\_name	department	salary	city	experience

101	Rahul	IT	75000	Hyderabad	5

104	Sneha	Finance	67000	Hyderabad	4

109	Arjun	Sales	61000	Hyderabad	5

114	Kavya	IT	97000	Hyderabad	9

Query #8 Execution time: 0.09ms

emp\_id	emp\_name	department	salary	city	experience

102	Anjali	HR	45000	Chennai	3

105	Aman	HR	39000	Pune	2

107	Divya	IT	55000	Chennai	3

108	Meena	Sales	48000	Bangalore	2

111	Vikas	HR	52000	Pune	3

113	Tarun	Sales	46000	Chennai	2

Query #9 Execution time: 0.08ms

emp\_id	emp\_name	department	salary	city	experience

104	Sneha	Finance	67000	Hyderabad	4

106	Ravi	Finance	91000	Mumbai	8

112	Nisha	Finance	88000	Bangalore	7

115	Manoj	Finance	58000	Mumbai	4

Query #10 Execution time: 0.07ms

emp\_id	emp\_name	department	salary	city	experience

111	Vikas	HR	52000	Pune	3

Query #11 Execution time: 0.16ms

department	total\_salary

Finance	304000

HR	136000

IT	382000

Sales	155000

Query #12 Execution time: 0.12ms

department	avg\_salary

Finance	76000.0

HR	45333.3333

IT	76400.0

Sales	51666.6667

Query #13 Execution time: 0.09ms

city	employee\_count

Bangalore	3

Chennai	3

Hyderabad	4

Mumbai	3

Pune	2

Query #14 Execution time: 0.12ms

department	max\_salary

Finance	91000

HR	52000

IT	97000

Sales	61000

Query #15 Execution time: 0.17ms

department	min\_experience

Finance	4

HR	2

IT	3

Sales	2

Query #16 Execution time: 0.16ms

department	employee\_count

Finance	4

IT	5

Query #17 Execution time: 0.15ms

department	avg\_salary

Finance	76000.0

IT	76400.0

Query #18 Execution time: 0.11ms

city	employee\_count

Bangalore	3

Chennai	3

Hyderabad	4

Mumbai	3

Query #19 Execution time: 0.1ms

department	total\_salary

Finance	304000

IT	382000

Query #20 Execution time: 0.12ms

department	max\_salary

Finance	91000

IT	97000

Query #21 Execution time: 0.11ms

emp\_id	emp\_name	department	salary	city	experience

114	Kavya	IT	97000	Hyderabad	9

106	Ravi	Finance	91000	Mumbai	8

112	Nisha	Finance	88000	Bangalore	7

103	Kiran	IT	82000	Bangalore	6

101	Rahul	IT	75000	Hyderabad	5

Query #22 Execution time: 0.09ms

emp\_id	emp\_name	department	salary	city	experience

114	Kavya	IT	97000	Hyderabad	9

106	Ravi	Finance	91000	Mumbai	8

112	Nisha	Finance	88000	Bangalore	7

Query #23 Execution time: 0.12ms

emp\_id	emp\_name	department	salary	city	experience

106	Ravi	Finance	91000	Mumbai	8

112	Nisha	Finance	88000	Bangalore	7

Query #24 Execution time: 0.08ms

emp\_id	emp\_name	department	salary	city	experience

101	Rahul	IT	75000	Hyderabad	5

104	Sneha	Finance	67000	Hyderabad	4

109	Arjun	Sales	61000	Hyderabad	5

114	Kavya	IT	97000	Hyderabad	9

Query #25 Execution time: 0.07ms

emp\_id	emp\_name	department	salary	city	experience

114	Kavya	IT	97000	Hyderabad	9

Query #26 Execution time: 0.08ms

department

IT

HR

Finance

Sales

Query #27 Execution time: 0.07ms

city

Hyderabad

Chennai

Bangalore

Pune

Mumbai

Query #28 Execution time: 0.08ms

salary

75000

45000

82000

67000

39000

91000

55000

48000

61000

73000

52000

88000

46000

97000

58000

Query #29 Execution time: 0.09ms

department	city

IT	Hyderabad

HR	Chennai

IT	Bangalore

Finance	Hyderabad

HR	Pune

Finance	Mumbai

IT	Chennai

Sales	Bangalore

Sales	Hyderabad

IT	Mumbai

Finance	Bangalore

Sales	Chennai

Query #30 Execution time: 0.08ms

experience

5

3

6

4

2

8

7

9

Query #31 Execution time: 0.08ms

emp\_id	emp\_name	department	salary	city	experience

103	Kiran	IT	82000	Bangalore	6

106	Ravi	Finance	91000	Mumbai	8

112	Nisha	Finance	88000	Bangalore	7

114	Kavya	IT	97000	Hyderabad	9

Query #32 Execution time: 0.08ms

emp\_id	emp\_name	department	salary	city	experience

102	Anjali	HR	45000	Chennai	3

105	Aman	HR	39000	Pune	2

107	Divya	IT	55000	Chennai	3

108	Meena	Sales	48000	Bangalore	2

111	Vikas	HR	52000	Pune	3

113	Tarun	Sales	46000	Chennai	2

Query #33 Execution time: 0.11ms

emp\_id	emp\_name	department	salary	city	experience

101	Rahul	IT	75000	Hyderabad	5

103	Kiran	IT	82000	Bangalore	6

104	Sneha	Finance	67000	Hyderabad	4

105	Aman	HR	39000	Pune	2

106	Ravi	Finance	91000	Mumbai	8

107	Divya	IT	55000	Chennai	3

108	Meena	Sales	48000	Bangalore	2

109	Arjun	Sales	61000	Hyderabad	5

110	Pooja	IT	73000	Mumbai	4

111	Vikas	HR	52000	Pune	3

112	Nisha	Finance	88000	Bangalore	7

113	Tarun	Sales	46000	Chennai	2

114	Kavya	IT	97000	Hyderabad	9

115	Manoj	Finance	58000	Mumbai	4

Query #34 Execution time: 0.08ms

emp\_id	emp\_name	department	salary	city	experience

102	Anjali	HR	45000	Chennai	3

105	Aman	HR	39000	Pune	2

108	Meena	Sales	48000	Bangalore	2

113	Tarun	Sales	46000	Chennai	2

Query #35 Execution time: 0.07ms

emp\_id	emp\_name	department	salary	city	experience

103	Kiran	IT	82000	Bangalore	6

106	Ravi	Finance	91000	Mumbai	8

112	Nisha	Finance	88000	Bangalore	7

114	Kavya	IT	97000	Hyderabad	9

Query #36 Execution time: 0.09ms

emp\_id	emp\_name	department	salary	city	experience

101	Rahul	IT	75000	Hyderabad	5

103	Kiran	IT	82000	Bangalore	6

110	Pooja	IT	73000	Mumbai	4

114	Kavya	IT	97000	Hyderabad	9

Query #37 Execution time: 0.09ms

emp\_id	emp\_name	department	salary	city	experience

101	Rahul	IT	75000	Hyderabad	5

103	Kiran	IT	82000	Bangalore	6

104	Sneha	Finance	67000	Hyderabad	4

108	Meena	Sales	48000	Bangalore	2

109	Arjun	Sales	61000	Hyderabad	5

112	Nisha	Finance	88000	Bangalore	7

114	Kavya	IT	97000	Hyderabad	9

Query #38 Execution time: 0.08ms

emp\_id	emp\_name	department	salary	city	experience

105	Aman	HR	39000	Pune	2

Query #39 Execution time: 0.11ms

emp\_id	emp\_name	department	salary	city	experience

101	Rahul	IT	75000	Hyderabad	5

103	Kiran	IT	82000	Bangalore	6

104	Sneha	Finance	67000	Hyderabad	4

106	Ravi	Finance	91000	Mumbai	8

109	Arjun	Sales	61000	Hyderabad	5

110	Pooja	IT	73000	Mumbai	4

112	Nisha	Finance	88000	Bangalore	7

114	Kavya	IT	97000	Hyderabad	9

Query #40 Execution time: 0.1ms

emp\_id	emp\_name	department	salary	city	experience

101	Rahul	IT	75000	Hyderabad	5

102	Anjali	HR	45000	Chennai	3

103	Kiran	IT	82000	Bangalore	6

104	Sneha	Finance	67000	Hyderabad	4

105	Aman	HR	39000	Pune	2

106	Ravi	Finance	91000	Mumbai	8

107	Divya	IT	55000	Chennai	3

110	Pooja	IT	73000	Mumbai	4

111	Vikas	HR	52000	Pune	3

112	Nisha	Finance	88000	Bangalore	7

114	Kavya	IT	97000	Hyderabad	9

115	Manoj	Finance	58000	Mumbai	4

Query #41 Execution time: 0.11ms

emp\_id	emp\_name	department	salary	city	experience

101	Rahul	IT	75000	Hyderabad	5

104	Sneha	Finance	67000	Hyderabad	4

106	Ravi	Finance	91000	Mumbai	8

109	Arjun	Sales	61000	Hyderabad	5

110	Pooja	IT	73000	Mumbai	4

114	Kavya	IT	97000	Hyderabad	9

115	Manoj	Finance	58000	Mumbai	4

Query #42 Execution time: 0.09ms

emp\_id	emp\_name	department	salary	city	experience

101	Rahul	IT	75000	Hyderabad	5

103	Kiran	IT	82000	Bangalore	6

104	Sneha	Finance	67000	Hyderabad	4

106	Ravi	Finance	91000	Mumbai	8

107	Divya	IT	55000	Chennai	3

110	Pooja	IT	73000	Mumbai	4

112	Nisha	Finance	88000	Bangalore	7

114	Kavya	IT	97000	Hyderabad	9

115	Manoj	Finance	58000	Mumbai	4

Query #43 Execution time: 0.1ms

emp\_id	emp\_name	department	salary	city	experience

101	Rahul	IT	75000	Hyderabad	5

103	Kiran	IT	82000	Bangalore	6

104	Sneha	Finance	67000	Hyderabad	4

106	Ravi	Finance	91000	Mumbai	8

108	Meena	Sales	48000	Bangalore	2

109	Arjun	Sales	61000	Hyderabad	5

110	Pooja	IT	73000	Mumbai	4

112	Nisha	Finance	88000	Bangalore	7

114	Kavya	IT	97000	Hyderabad	9

115	Manoj	Finance	58000	Mumbai	4

Query #44 Execution time: 0.1ms

emp\_id	emp\_name	department	salary	city	experience

101	Rahul	IT	75000	Hyderabad	5

102	Anjali	HR	45000	Chennai	3

106	Ravi	Finance	91000	Mumbai	8

Query #45 Execution time: 0.09ms

emp\_id	emp\_name	department	salary	city	experience

101	Rahul	IT	75000	Hyderabad	5

103	Kiran	IT	82000	Bangalore	6

104	Sneha	Finance	67000	Hyderabad	4

106	Ravi	Finance	91000	Mumbai	8

107	Divya	IT	55000	Chennai	3

110	Pooja	IT	73000	Mumbai	4

112	Nisha	Finance	88000	Bangalore	7

114	Kavya	IT	97000	Hyderabad	9

115	Manoj	Finance	58000	Mumbai	4

Query #46 Execution time: 0.08ms

emp\_id	emp\_name	department	salary	city	experience

101	Rahul	IT	75000	Hyderabad	5

104	Sneha	Finance	67000	Hyderabad	4

107	Divya	IT	55000	Chennai	3

109	Arjun	Sales	61000	Hyderabad	5

110	Pooja	IT	73000	Mumbai	4

111	Vikas	HR	52000	Pune	3

115	Manoj	Finance	58000	Mumbai	4

Query #47 Execution time: 0.1ms

emp\_id	emp\_name	department	salary	city	experience

101	Rahul	IT	75000	Hyderabad	5

102	Anjali	HR	45000	Chennai	3

103	Kiran	IT	82000	Bangalore	6

104	Sneha	Finance	67000	Hyderabad	4

107	Divya	IT	55000	Chennai	3

109	Arjun	Sales	61000	Hyderabad	5

110	Pooja	IT	73000	Mumbai	4

111	Vikas	HR	52000	Pune	3

115	Manoj	Finance	58000	Mumbai	4

Query #48 Execution time: 0.08ms

emp\_id	emp\_name	department	salary	city	experience

105	Aman	HR	39000	Pune	2

106	Ravi	Finance	91000	Mumbai	8

107	Divya	IT	55000	Chennai	3

108	Meena	Sales	48000	Bangalore	2

109	Arjun	Sales	61000	Hyderabad	5

110	Pooja	IT	73000	Mumbai	4

111	Vikas	HR	52000	Pune	3

112	Nisha	Finance	88000	Bangalore	7

Query #49 Execution time: 0.09ms

emp\_id	emp\_name	department	salary	city	experience

101	Rahul	IT	75000	Hyderabad	5

103	Kiran	IT	82000	Bangalore	6

104	Sneha	Finance	67000	Hyderabad	4

105	Aman	HR	39000	Pune	2

106	Ravi	Finance	91000	Mumbai	8

109	Arjun	Sales	61000	Hyderabad	5

110	Pooja	IT	73000	Mumbai	4

112	Nisha	Finance	88000	Bangalore	7

114	Kavya	IT	97000	Hyderabad	9

Query #50 Execution time: 0.08ms

emp\_id	emp\_name	department	salary	city	experience

102	Anjali	HR	45000	Chennai	3

104	Sneha	Finance	67000	Hyderabad	4

105	Aman	HR	39000	Pune	2

107	Divya	IT	55000	Chennai	3

108	Meena	Sales	48000	Bangalore	2

110	Pooja	IT	73000	Mumbai	4

111	Vikas	HR	52000	Pune	3

113	Tarun	Sales	46000	Chennai	2

115	Manoj	Finance	58000	Mumbai	4

Query #51 Execution time: 0.08ms

emp\_id	emp\_name	department	salary	city	experience

101	Rahul	IT	75000	Hyderabad	5

106	Ravi	Finance	91000	Mumbai	8

Query #52 Execution time: 0.08ms

emp\_id	emp\_name	department	salary	city	experience

104	Sneha	Finance	67000	Hyderabad	4

107	Divya	IT	55000	Chennai	3

108	Meena	Sales	48000	Bangalore	2

110	Pooja	IT	73000	Mumbai	4

112	Nisha	Finance	88000	Bangalore	7

114	Kavya	IT	97000	Hyderabad	9

Query #53 Execution time: 0.08ms

emp\_id	emp\_name	department	salary	city	experience

106	Ravi	Finance	91000	Mumbai	8

107	Divya	IT	55000	Chennai	3

111	Vikas	HR	52000	Pune	3

114	Kavya	IT	97000	Hyderabad	9

Query #54 Execution time: 0.07ms

emp\_id	emp\_name	department	salary	city	experience

103	Kiran	IT	82000	Bangalore	6

108	Meena	Sales	48000	Bangalore	2

112	Nisha	Finance	88000	Bangalore	7

Query #55 Execution time: 0.07ms

emp\_id	emp\_name	department	salary	city	experience

108	Meena	Sales	48000	Bangalore	2

109	Arjun	Sales	61000	Hyderabad	5

113	Tarun	Sales	46000	Chennai	2
