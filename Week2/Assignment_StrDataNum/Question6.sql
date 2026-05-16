select emp_id,LOWER(emp_name),ROUND((present_days/total_days)*100) as Attendance_percentage ,MONTHNAME(record_date),(total_days-present_days) AS DIFF_TOTAL_PRESENT,
CASE

        WHEN (present_days * 100.0 / total_days) >= 90
            THEN 'Excellent'

        WHEN (present_days * 100.0 / total_days) BETWEEN 75 AND 89
            THEN 'Average'

        ELSE 'Poor'

    END AS attendance_status



from attendance;
