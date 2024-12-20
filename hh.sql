SELECT get_fiscal_year(s.date) as fiscal_year,sum(round(g.gross_price*s.sold_quantity,2)) as Yearly_sales
from fact_sales_monthly s 
join fact_gross_price g 
on g.product_code=s.product_code and g.fiscal_year=get_fiscal_year(s.date)
where customer_code=90002002
group by get_fiscal_year(date)
order by fiscal_year;