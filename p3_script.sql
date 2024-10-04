SELECT o.order_id AS order_id, AVG(o.quantity) as average_qty
FROM (
        SELECT *
        FROM order_details AS od
        WHERE
            od.quantity > 10
    ) AS o
GROUP BY
    o.order_id;