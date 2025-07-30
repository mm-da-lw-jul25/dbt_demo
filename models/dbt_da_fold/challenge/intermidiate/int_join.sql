select * from 
{{ref("stg_raw_chlg__sales")}} as sl
inner join 
{{ref("stg_raw_chlg__product")}} as prd
--using (products_id) 
on sl.products_id = prd.products_id