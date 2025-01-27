

with cte1 as (
select city_name, month_name,
sum(total_passengers) as tp,
sum(repeat_passengers) as rp ,
round((sum(repeat_passengers)/sum(total_passengers)*100),2) as monthly_rp 
from fact_passenger_summary fp  join
dim_city dc on dc.city_id=fp.city_id join dim_date dd on
dd.date =fp.month
group by city_name,month_name),

 cte2 as (
select city_name,
sum(total_passengers) as tp,
sum(repeat_passengers) as rp ,
round((sum(repeat_passengers)/sum(total_passengers)*100),2) as city_rp
from fact_passenger_summary fp  join
dim_city dc on dc.city_id=fp.city_id join dim_date dd on
dd.date =fp.month
group by city_name)
select a.city_name,a.month_name,a.rp,a.tp,a.monthly_rp,b.city_rp
from cte2 b join cte1 a on
a.city_name=b.city_name;

