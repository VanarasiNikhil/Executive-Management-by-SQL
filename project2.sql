
SELECT 
c.customer,
round(sum(net_sales)/1000000,2)as net_sales_mln
FROM gdb0041.net_sales n 
join dim_customer c 
on c.customer_code=n.customer_code
where date between '2017-09-01' and '2018-08-01'
group by c.customer
order by net_sales_mln desc
limit 5
