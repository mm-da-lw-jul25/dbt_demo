-- finance_campaigns_day.sql

SELECT
    m.date_date as date_date,
    operational_margin - ads_cost AS ads_margin,
    ROUND(average_basket,2) AS average_basket,
    operational_margin,
    ads_cost,
    ads_impression,
    ads_clicks,
    quantity,
    revenue,
    purchase_cost,
    margin,
    shipping_fee,
    logcost,
    ship_cost
FROM {{ ref('int_campaigns_day') }} i
FULL OUTER JOIN {{ ref('finance_days') }} m
    on i.date_date = m.date_date   
where operational_margin - ads_cost is null 
ORDER BY date_date DESC