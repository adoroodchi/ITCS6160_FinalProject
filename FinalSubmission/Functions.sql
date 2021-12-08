-- 1)Function to get Restaurant star rating
DELIMITER //
CREATE FUNCTION restaurantLevel ( restaurantId INT )
RETURNS CHAR
BEGIN
DECLARE starLevelOfRestaurant CHAR;
DECLARE avgRating FLOAT;
SET starLevelOfRestaurant = "1-Star";
SET avgRating = (SELECT (((quatlity_rating + menu_rating + price_rating + package_rating + delivery_time_rating)/5) from restaurant_rating where restaurant_id = restaurantId))
   IF avgRating BETWEEN 1 AND 1.9 THEN
	SET starLevelOfRestaurant = "1-Star"
   ELSEIF avgRating BETWEEN 2 AND 2.9 THEN
	SET starLevelOfRestaurant = "2-Star"
   ELSEIF avgRating BETWEEN 3 AND 3.9 THEN
	SET starLevelOfRestaurant = "3-Star"
   ELSEIF avgRating BETWEEN 4 AND 4.9 THEN
	SET starLevelOfRestaurant = "4-Star"
    ELSE
    SET starLevelOfRestaurant = "5-Star"
    END IF;
   RETURN starLevelOfRestaurant;
END; 
DELIMITER ;
