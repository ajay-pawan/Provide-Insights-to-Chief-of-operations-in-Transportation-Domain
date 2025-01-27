

SELECT 
    city_name,
    month_name,
    total_target_trips AS target_trips,
    COUNT(trip_id) AS actual_trips,
    CONCAT(ROUND(((COUNT(trip_id) - total_target_trips) / total_target_trips) * 100, 2), "%") AS difference,
    CASE 
        WHEN COUNT(trip_id) > total_target_trips THEN "Above Target"
        ELSE "Below Target"
    END AS performance_status
FROM
    fact_trips ft 
JOIN 
    dim_city dc ON ft.city_id = dc.city_id 
JOIN 
    dim_date dd ON ft.date = dd.date 
JOIN 
    targets_db.monthly_target_trips mtt 
    ON dc.city_id = mtt.city_id AND dd.start_of_month = mtt.month
GROUP BY 
    city_name,
    month_name,
    total_target_trips
ORDER BY 
  
    city_name,
    FIELD(month_name, 'January', 'February', 'March', 'April', 'May','June');
