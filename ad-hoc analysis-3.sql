SELECT * FROM trips_db.dim_repeat_trip_distribution;

select city_id,
sum(case when trip_count="2-Trips" then repeat_passenger_count else null end) as 2_trips,
sum(case when trip_count="3-Trips" then repeat_passenger_count else null end) as 3_trips,
sum(case when trip_count="4-Trips" then repeat_passenger_count else null end) as 4_trips,
sum(case when trip_count="5-Trips" then repeat_passenger_count else null end) as 5_trips,
sum(case when trip_count="6-Trips" then repeat_passenger_count else null end) as 6_trips,
sum(case when trip_count="7-Trips" then repeat_passenger_count else null end) as 7_trips,
sum(case when trip_count="8-Trips" then repeat_passenger_count else null end) as 8_trips,
sum(case when trip_count="9-Trips" then repeat_passenger_count else null end) as 9_trips,
sum(case when trip_count="10-Trips" then repeat_passenger_count else null end) as 10_trips,
sum(repeat_passenger_count) as total
from dim_repeat_trip_distribution rtt
group by city_id;



select city_name,
round(((sum(case when trip_count="2-Trips" then repeat_passenger_count else null end)
/sum(repeat_passenger_count))*100),2) as 2_trips,
round(((sum(case when trip_count="3-Trips" then repeat_passenger_count else null end)
/sum(repeat_passenger_count))*100),2) as 3_trips,
round(((sum(case when trip_count="4-Trips" then repeat_passenger_count else null end)
/sum(repeat_passenger_count))*100),2) as 4_trips,
round(((sum(case when trip_count="5-Trips" then repeat_passenger_count else null end)
/sum(repeat_passenger_count))*100),2) as 5_trips,
round(((sum(case when trip_count="6-Trips" then repeat_passenger_count else null end)
/sum(repeat_passenger_count))*100),2) as 6_trips,
round(((sum(case when trip_count="7-Trips" then repeat_passenger_count else null end)
/sum(repeat_passenger_count))*100),2) as 7_trips,
round(((sum(case when trip_count="8-Trips" then repeat_passenger_count else null end)
/sum(repeat_passenger_count))*100),2) as 8_trips,
round(((sum(case when trip_count="9-Trips" then repeat_passenger_count else null end)
/sum(repeat_passenger_count))*100),2) as 9_trips,
round(((sum(case when trip_count="10-Trips" then repeat_passenger_count else null end)
/sum(repeat_passenger_count))*100),2) as 10_trips,
sum(repeat_passenger_count) as total
from dim_repeat_trip_distribution rtt join dim_city dc on
rtt.city_id=dc.city_id
group by city_name
order by total desc;