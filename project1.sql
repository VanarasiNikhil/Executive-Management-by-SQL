SELECT 
market,
round(sum(net_sales)/1000000,2)as net_sales_mln
FROM gdb0041.net_sales
where date between '2017-09-01' and '2019-08-01'
group by market
order by net_sales_mln desc
limit 5
