---QUESTION-2   Order Delivery Delay Analysis

select order_id,customer_name,upper(customer_name) as UPPERCASE,order_date,
DATEDIFF(
        IFNULL(delivery_date, CURDATE()),
        order_date
    ) AS delivery_days,		
    IFNULL(delivery_date, CURDATE()) AS delivery_date,
    TRUNCATE(order_amount,1) AS truncated_amount,
	CASE
        WHEN delivery_date IS NULL
            THEN 'Pending'

        WHEN DATEDIFF(delivery_date, order_date) = 0
            THEN 'Same-day'

        WHEN DATEDIFF(delivery_date, order_date) > 3
            THEN 'Delayed'

        ELSE 'Normal'
    END AS delivery_status

FROM orders_delivery;
