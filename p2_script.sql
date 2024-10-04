SELECT od.*
FROM order_details AS od
WHERE
    od.order_id IN (
        SELECT o.id
        FROM orders AS o
        WHERE
            o.shipper_id = 3
    );