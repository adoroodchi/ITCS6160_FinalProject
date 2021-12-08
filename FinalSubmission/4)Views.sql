-- 1) display total price of the orders by each customer (distinct) for a  specified date range
CREATE VIEW totalOrderCost AS
SELECT DISTINCT person_id AS CustomerId, ROUND(SUM(total_price),2) AS totalCost FROM orders
WHERE order_date BETWEEN "2021-03-04 00:00:00" AND "2022-12-04 00:00:00"
GROUP BY person_id;

SELECT * FROM totalOrderCost;

-- 2) Get TOP 3 restaurants
CREATE VIEW topRestaurant AS
SELECT rating.overall_rating,rating.order_id,orders.restaurant_id
FROM ratings rating 
LEFT JOIN orders orders ON rating.order_id=orders.order_id
ORDER BY overall_rating DESC;

SELECT restaurant_id,restaurant_name
FROM restaurant
WHERE restaurant_id IN
(SELECT restaurant_id
FROM topRestaurant)
LIMIT 3;