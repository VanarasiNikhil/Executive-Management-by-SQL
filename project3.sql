SELECT 
p.product,
round(sum(net_sales)/1000000,2)as net_sales_mln
FROM gdb0041.net_sales n 
join dim_product p 
on p.product_code=n.product_code
where date between '2017-09-01' and '2021-08-01'
group by p.product
order by net_sales_mln desc
limit 5
