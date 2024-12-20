 with cte1 as (
SELECT 
c.customer,c.region,
round(sum(net_sales)/1000000,2)as net_sales_mln
FROM gdb0041.net_sales n 
join dim_customer c 
on n.customer_code=c.customer_code
where date between '2017-10-01' and '2018-09-01'
group by c.customer,c.region)

select *,
net_sales_mln*100/sum(net_sales_mln) over(partition by region) as pct 
from cte1
order by region, net_sales_mln desc
