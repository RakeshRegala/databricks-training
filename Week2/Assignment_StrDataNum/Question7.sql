
select product_id,product_name,
((mrp - selling_price) * 100 / mrp) AS discount_percentage,abs(selling_price-mrp) as DISCOUNT,    DAYNAME(sale_date) AS sale_day,CONCAT(
        UPPER(LEFT(product_name,1)),
        LOWER(SUBSTRING(product_name,2))
    ) AS product_name,
    CASE

        WHEN selling_price < mrp
            THEN 'Valid Discount'

        WHEN selling_price > mrp
            THEN 'Overpriced'

        ELSE 'No Discount'

    END AS discount_status

from product_sales;
