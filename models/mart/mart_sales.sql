SELECT
    date_date
    , order_id
    , ROUND(SUM(revenue - purchase_price), 2) as margin
FROM {{ ref("int_sales_product")}} 
GROUP BY date_date, order_id