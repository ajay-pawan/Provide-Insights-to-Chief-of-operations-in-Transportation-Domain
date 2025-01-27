
select * from
(select city_name,sum(new_passengers) as total_new_passengers,
rank() over(order by sum(new_passengers) desc) as top_cities,
case when rank() over(order by sum(new_passengers) desc) <=3 then "top-3"
 when rank() over(order by sum(new_passengers) asc)<=3 then "bottom-3"
 else null
end as category
from fact_passenger_summary fp
 join dim_city dc on
fp.city_id = dc.city_id
group by city_name
order by total_new_passengers desc) d
where category = "top-3" or category ="bottom-3";