SELECT

    cust_id,cust_name,

    CONCAT(
        UPPER(LEFT(cust_name,1)),
        LOWER(SUBSTRING(cust_name,2))
    ) AS UPPERCASE_customer_name,

    city,
	MONTHNAME(purchase_date) AS purchase_month,
    ROUND(purchase_amount) AS rounded_amount,
    ABS(purchase_amount) AS absolute_amount,
    CASE
    	WHEN purchase_amount>15000
        	THEN 'High spender'
            
        WHEN purchase_amount BETWEEN 8000 AND 15000
            THEN 'Medium'

        ELSE 'Low'
    END AS spending_category
  
from customer_spending;
