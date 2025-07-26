WITH ranked_prices AS (
  SELECT *,
         ROW_NUMBER() OVER (PARTITION BY product_id ORDER BY change_date DESC) AS rn
  FROM Products
  WHERE change_date <= '2019-08-16'
)

SELECT p.product_id,
       IFNULL(r.new_price, 10) AS price
FROM (SELECT DISTINCT product_id FROM Products) p
LEFT JOIN ranked_prices r
  ON p.product_id = r.product_id AND r.rn = 1;
