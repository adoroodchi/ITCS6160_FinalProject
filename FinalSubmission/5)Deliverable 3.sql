-- a)display the max, min and average ratings for each feature when given a restaurant ID for all orders for that restaurant
select MIN(resR.quality_rating) AS minQuanlity, MAX(resR.quality_rating)AS maxQuanlity,AVG(resR.quality_rating) AS avgQuality, 
MIN(resR.menu_rating) AS minMenu, MAX(resR.menu_rating)AS maxMenu,AVG(resR.menu_rating) AS avgMenu,
MIN(resR.price_rating) AS minPrice, MAX(resR.price_rating)AS maxPrice,AVG(resR.price_rating) AS avgPrice,
MIN(resR.package_rating) AS minPackage, MAX(resR.package_rating)AS maxPackage,AVG(resR.package_rating) AS avgPackage,
MIN(driverR.courteous_rating) AS minCourteousR, MAX(driverR.courteous_rating)AS maxcourteousR,AVG(driverR.courteous_rating) AS avgCourteousR,
MIN(driverR.online_rating) AS minOnlineR, MAX(driverR.online_rating)AS maxOnlineR,AVG(driverR.online_rating) AS avgOnlineR,
MIN(overAll.overall_rating) AS minOverallR, MAX(overAll.overall_rating)AS maxOverallR,AVG(overAll.overall_rating) AS avgOverallR
FROM orders orders 
LEFT JOIN restaurant_rating resR ON orders.order_id = resR.order_id
LEFT JOIN driver_ratings driverR ON resR.order_id = driverR.order_id
LEFT JOIN  ratings overAll ON driverR.order_id = overAll.order_id
WHERE orders.restaurant_id = 2;

-- b) display a count of the orders made by a customer for a specified date range when given a customer id
SELECT COUNT(*) AS count FROM orders WHERE person_id = 4
AND order_date BETWEEN "2021-03-04 00:00:00" AND "2022-12-04 00:00:00";

-- c) display total price of the orders by each customer (distinct) for a  specified date range
SELECT DISTINCT person_id AS CustomerId, ROUND(SUM(total_price),2) AS totalCost FROM orders
WHERE order_date BETWEEN "2021-03-04 00:00:00" AND "2022-12-04 00:00:00"
GROUP BY person_id;


-- d) display a particular customer’s rating for a restaurant
SELECT * FROM ratings rating
LEFT JOIN restaurant_rating restaurantR ON   rating.order_id = restaurantR.order_id
LEFT JOIN driver_ratings driverR ON driverR.order_id = restaurantR.order_id
WHERE driverR.order_id IN (SELECT order_id FROM orders WHERE person_id = 4);

-- e) Have one of the above requirements represented in a View
CREATE VIEW totalOrderCost AS
SELECT DISTINCT person_id AS CustomerId, ROUND(SUM(total_price),2) AS totalCost FROM orders
WHERE order_date BETWEEN "2021-03-04 00:00:00" AND "2022-12-04 00:00:00"
GROUP BY person_id;

SELECT * FROM totalOrderCost;

-- f) Have one of the above requirements represented in a Stored Procedure
DROP PROCEDURE IF EXISTS getCustomerOrdersCount;
DELIMITER $$
CREATE PROCEDURE getCustomerOrdersCount(IN personID INT(20),IN startDate DATETIME, IN lastDate DATETIME, OUT orderCount int(20))
BEGIN
DECLARE orderCount INT(20) DEFAULT 0;
SET orderCount = (SELECT COUNT(*) FROM orders WHERE person_id = personID
AND order_date BETWEEN startDate and lastDate);
END$$ 
CALL getCustomerOrdersCount(4,'2021-03-04 00:00:00','2022-12-04 00:00:00',@result);

