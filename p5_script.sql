DROP FUNCTION IF EXISTS Divide;

DELIMITER / /

CREATE FUNCTION Divide(divisor FLOAT, divider FLOAT)
RETURNS FLOAT
DETERMINISTIC
NO SQL
BEGIN
	DECLARE result FLOAT;
    SET result = divisor / divider;
    RETURN result;
END //

DELIMITER;

SELECT od.*, Divide (od.quantity, 6) AS qty_crates
FROM order_details AS od;