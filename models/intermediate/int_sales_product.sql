SELECT
    s.*
    , p.purchase_price
FROM {{ ref("stg_raw__sales")}} as s
JOIN {{ ref("stg_raw__product")}} as p
    ON s.product_id = p.product_id