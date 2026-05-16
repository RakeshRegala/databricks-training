SELECT

    loan_id,

    UPPER(customer_name) AS customer_name,

    loan_amount,

    interest_rate,
    ROUND(loan_amount*POWER((1 + interest_rate/(12*100)),12)) as monthly_interest,
    TIMESTAMPDIFF(YEAR, loan_start, CURDATE()) AS years_since_loan,
CASE

        WHEN interest_rate > 9
            THEN 'High Risk'

        WHEN interest_rate BETWEEN 8 AND 9
            THEN 'Medium Risk'

        ELSE 'Low Risk'

    END AS risk_category
    from loan_details;
