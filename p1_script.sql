USE mydb;

SELECT od.*, (
        SELECT o.customer_id
        FROM orders AS o
        WHERE
            od.order_id = o.id
    ) AS customer_id
FROM order_details AS od;