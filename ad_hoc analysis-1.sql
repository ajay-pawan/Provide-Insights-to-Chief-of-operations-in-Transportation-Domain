


select  round((sum(fare_amount)/count(trip_id)),2) as average_fare_trip from fact_trips;

SELECT 
    city_name,
    COUNT(trip_id) AS total_trips,
    ROUND((SUM(fare_amount) / SUM(distance_travelled_km)),
            2) AS average_fare_km,
    ROUND((SUM(fare_amount) / COUNT(trip_id)), 2) AS average_fare_trip,
    CONCAT(ROUND(COUNT(trip_id) / (SELECT 
                            COUNT(trip_id)
                        FROM
                            fact_trips) * 100,
                    2),
            '%') AS contribution_to_total_trips
FROM
    fact_trips
        JOIN
    dim_city ON fact_trips.city_id = dim_city.city_id
GROUP BY city_name
ORDER BY total_trips DESC;





