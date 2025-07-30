select 
 products_id,
 round ( avg(purchase_cost), 2)  as avg_purch_cost
from {{ref("int_sales_margin")}}
group by products_id