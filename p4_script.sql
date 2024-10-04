WITH
    temp AS (
        SELECT *
        FROM order_details
        WHERE
            quantity > 10
    )
SELECT order_id, AVG(quantity) AS average_qty
FROM temp
GROUP BY
    order_id;