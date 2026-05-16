--· Convert emp_name to proper case ---upper /lower ---Initcap (CamelCase)

--select UPPER(emp_name) as UPPERCASE
--from employee_payments

--select LOWER(emp_name) as LOWERCASE
--from employee_payments--

--QUESTION 1--
--QUESTION 1: Employee Compensation Classification

SELECT 
    emp_id,

    emp_name,

    UPPER(emp_name) AS upper_name,

    LOWER(emp_name) AS lower_name,
    
    CONCAT(
        UPPER(LEFT(emp_name,1)),
        LOWER(SUBSTRING(emp_name,2))
    ) AS camel_case,

    base_salary + IFNULL(bonus,0) AS total_income,

    ROUND(base_salary + IFNULL(bonus,0)) AS rounded_income,

    YEAR(joining_date) AS joining_year,

    CASE
        WHEN TIMESTAMPDIFF(YEAR, joining_date, CURDATE()) > 7
            THEN 'Senior'

        WHEN TIMESTAMPDIFF(YEAR, joining_date, CURDATE()) BETWEEN 4 AND 7
            THEN 'Mid'

        ELSE 'Junior'
    END AS employee_level

FROM employee_payments;
