


with cte1 as (
select city_name,month_name,sum(fare_amount) as fa from fact_trips ft
join dim_date dd on
dd.date =ft.date join dim_city dc on
dc.city_id=ft.city_id
group by city_name,month_name),


 cte2 as (
select city_name,sum(fare_amount) as ta from fact_trips ft
join dim_city dc on
dc.city_id = ft.city_id
group by city_name),

cte3 as (
select a.city_name,a.month_name,a.fa,b.ta,
round(((a.fa/b.ta)*100),2) as contribution,
rank()over(partition by city_name order by fa desc) as rankd
from cte1 a join cte2 b on
a.city_name=b.city_name)

select city_name,month_name,fa,ta,contribution
 from cte3
 where rankd =1;

