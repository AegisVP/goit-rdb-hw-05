DROP FUNCTION IF EXISTS Divide;

DELIMITER / /

CREATE FUNCTION Divide(divisor FLOAT, divider FLOAT)
RETURNS FLOAT
DETERMINISTIC
NO SQL
BEGIN
    IF divider = 0 THEN
        RETURN 0;
    ELSE
        RETURN divisor / divider;
    END IF;
END //

DELIMITER;

SELECT od.*, Divide (od.quantity, 6) AS qty_crates
FROM order_details AS od;