SELECT
    p.product_name,
    SUM(o.unit) AS total_units
FROM
    Products p
    LEFT JOIN (
        SELECT * FROM Orders WHERE order_date BETWEEN '2020-02-01' AND '2020-02-29'
    ) o ON p.product_id = o.product_id
GROUP BY
    p.product_name
HAVING
    SUM(o.unit) >= 100;
