-- Procedures
-- 1)  Procedure to add person details in a dataset
USE	 niner_dining;
DROP PROCEDURE IF EXISTS add_person;
DELIMITER $$
CREATE PROCEDURE add_person (IN person_name VARCHAR(300), IN person_email VARCHAR(150),
IN person_type_param VARCHAR(10), IN phone_number BIGINT (15),IN date_of_birth DATETIME, 
IN graduation_year INT(20), IN major VARCHAR(75), IN academic_level VARCHAR(75),
IN title VARCHAR(75), IN  highest_degree VARCHAR(75), IN degree_college VARCHAR(75),
IN position VARCHAR(75), IN is_admin BOOLEAN, OUT result BOOLEAN)
BEGIN
DECLARE personType INT(20) DEFAULT 1;
DECLARE personID INT(20);
DECLARE sql_error TINYINT DEFAULT FALSE;
DECLARE continue handler for sqlexception
SET sql_error = TRUE ;
SET personType =  (SELECT person_type_id FROM person_type where person_type = person_type_param);
INSERT INTO person (person_name, person_email,date_of_birth, phone_number,person_type_id,enrolled_date) 
VALUES(person_name, person_email, date_of_birth,phone_number, personType,NOW());
SET personID = (SELECT LAST_INSERT_ID());
IF(person_type_param = 'STUDENT') THEN
INSERT INTO student (person_id, graduation_year, major, academic_level) VALUES
(personID, graduation_year, major, academic_level);
ELSEIF(person_type_param = 'FACULTY') THEN
INSERT INTO faculty (person_id, title, highest_degree, degree_college) VALUES
(personID, title, highest_degree, degree_college);
elseif(person_type_param = 'STAFF') THEN
INSERT INTO staff (person_id, position, is_admin) VALUES
(personID, position,is_admin);
END IF;
IF sql_error = FALSE THEN
SET result = TRUE;
COMMIT;
ELSE
SET result = FALSE;
ROLLBACK;
END IF;
END$$ 
DELIMITER ;

-- 2) Procedure to add restaurant details in a dataset 
USE niner_dining;
DROP PROCEDURE IF EXISTS add_restaurant;
DELIMITER $$
CREATE PROCEDURE add_restaurant (IN location VARCHAR(200), IN restaurant_name VARCHAR(75),
IN working_hours VARCHAR(20), IN website VARCHAR(200), IN email VARCHAR(200), IN instagram_id VARCHAR(200),
IN facebook_id VARCHAR(200), OUT result BOOLEAN)
BEGIN
DECLARE restaurantID INT(20) DEFAULT 1;
DECLARE sql_error TINYINT DEFAULT FALSE;
DECLARE continue handler for sqlexception
SET sql_error = TRUE ;
INSERT INTO restaurant ( location, restaurant_name, working_hours )
VALUES (location, restaurant_name, working_hours);
SET restaurantID = (SELECT LAST_INSERT_ID());
INSERT INTO social_media_details ( restaurant_id, website, email, instagram_id, facebook_id )
VALUES ( restaurantID, website, email, instagram_id, facebook_id) ;
IF sql_error = FALSE THEN
SET result = TRUE;
COMMIT;
ELSE
SET result = FALSE;
ROLLBACK;
END IF;
END$$
DELIMITER ;


-- 3) Procedure to calculate average rating of a restaurent and a driver for particular order and update in table rating
USE niner_dining;
DROP PROCEDURE IF EXISTS calculateAverageRating;
DELIMITER $$
CREATE PROCEDURE calculateAverageRating(IN orderId int(20),OUT result boolean)
BEGIN 
DECLARE sqlError TINYINT DEFAULT FALSE;
DECLARE avgRating DOUBLE DEFAULT 0.0;
SET avgRating = (SELECT (IFNULL((resRating.quality_rating + resRating.menu_rating + resRating.price_rating +
resRating.package_rating + resRating.delivery_time_rating + drRating.online_Rating + drRating.courteous_rating/7),0.0)) FROM restaurant_rating resRating
LEFT JOIN driver_ratings drRating ON drRating.order_id = resRating.order_id
WHERE resRating.order_id = orderId);
INSERT INTO ratings(order_Id,overall_rating) VALUES(orderId,avgRating);
IF sqlError = FALSE THEN
SET result = TRUE;
COMMIT;
ELSE
SET result = FALSE;
ROLLBACK;
END IF;
END$$ 
CALL calculateAverageRating(6,@result); 


-- 4) Prcodure which calculates and updates total of an orders in orders table by getting data from order_items table 
USE niner_dining;
DROP PROCEDURE IF EXISTS calculateTotalAmountOfOrder;
DELIMITER $$
CREATE PROCEDURE calculateTotalAmountOfOrder (IN orderId INT(20), OUT totalAmount INT(20))
BEGIN 
DECLARE totalAmountOrder FLOAT(20) DEFAULT 0;
SET totalAmountOrder = (SELECT IFNULL(SUM(orderItem.total_price),0) FROM order_items orderItem
LEFT JOIN orders orders ON orders.order_id = orderItem.order_id
WHERE orders.order_id = orderId);
UPDATE orders SET orders.total_price = (totalAmountOrder + orders.delivery_charge) WHERE order_id = orderId;
END;
CALL calculateTotalAmountOfOrder(4,@result);