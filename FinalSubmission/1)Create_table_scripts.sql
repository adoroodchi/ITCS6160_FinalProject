Drop database niner_dining;
Create database niner_dining;
Use niner_dining;


DROP TABLE IF EXISTS person_type;
CREATE TABLE person_type(
person_type_id INT(20) NOT NULL AUTO_INCREMENT,
person_type VARCHAR(75) NOT NULL,
PRIMARY KEY (person_type_id));

INSERT IGNORE INTO person_type (person_type) VALUES('STUDENT'),('FACULTY'),('STAFF'),('DRIVER');
SELECT * FROM person_type;
DROP TABLE IF EXISTS person;
CREATE TABLE person(
person_id INT(20) NOT NULL AUTO_INCREMENT,
person_name VARCHAR(300) NOT NULL,
person_email VARCHAR(300) NOT NULL,
date_of_birth DATETIME NOT NULL,
phone_number BIGINT(20) DEFAULT NULL,
person_type_id INT(20) NOT NULL,
enrolled_date DATETIME NOT NULL,
PRIMARY KEY(person_id)
) ;


DROP TABLE IF EXISTS student;
CREATE TABLE student(
student_id INT(20) NOT NULL AUTO_INCREMENT,
person_id INT(20) NOT NULL,
graduation_year INT(20),
major VARCHAR(75) NOT NULL,
academic_level VARCHAR(75) NOT NULL,
PRIMARY KEY(student_id),
KEY fk_person_id_for_student (person_id),
CONSTRAINT fk_person_id_for_student FOREIGN KEY (person_id) REFERENCES person
(person_id)
); 


DROP TABLE IF EXISTS faculty;
CREATE TABLE faculty(
faculty_id INT(20) NOT NULL AUTO_INCREMENT,
person_id INT(20) NOT NULL,
title VARCHAR(75) NOT NULL,
highest_degree VARCHAR(75) NOT NULL,
degree_college VARCHAR(75) NOT NULL,
PRIMARY KEY(faculty_id),
KEY fk_person_id_for_faculty (person_id),
CONSTRAINT fk_person_id_for_faculty FOREIGN KEY (person_id) REFERENCES person
(person_id)
); 


DROP TABLE IF EXISTS staff;
CREATE TABLE staff(
staff_id INT(20) NOT NULL AUTO_INCREMENT,
person_id INT(20) NOT NULL,
position VARCHAR(75) NOT NULL,
is_admin boolean NOT NULL,
PRIMARY KEY(staff_id),
KEY fk_person_id_for_staff (person_id),
CONSTRAINT fk_person_id_for_staff FOREIGN KEY (person_id) REFERENCES person
(person_id)
); 
DROP TABLE IF EXISTS vehicle;
CREATE TABLE vehicle(
vehicle_id INT(20) NOT NULL AUTO_INCREMENT,
vehicle_number VARCHAR(75) NOT NULL,
model  VARCHAR(75),
PRIMARY KEY(vehicle_id)
);


DROP TABLE IF EXISTS driver;
CREATE TABLE driver(
driver_id INT(20) NOT NULL AUTO_INCREMENT,
student_id  INT(20),
person_id INT(20) NOT NULL,
license_number VARCHAR(75) NOT NULL,
date_hired DATETIME NOT NULL,
vehicle_id INT(20) NOT NULL,
PRIMARY KEY(driver_id),
KEY fk_person_id_for_driver (person_id),
KEY fk_student_id_for_driver (student_id),
KEY fk_vehicle_id_of_driver (vehicle_id),
CONSTRAINT fk_person_id_for_driver FOREIGN KEY (person_id) REFERENCES person
(person_id),
CONSTRAINT fk_student_id_for_driver FOREIGN KEY (student_id) REFERENCES student
(student_id),
CONSTRAINT fk_vehicle_id_of_driver FOREIGN KEY (vehicle_id) REFERENCES vehicle
(vehicle_id)
); 


DROP TABLE IF EXISTS address;
CREATE TABLE address(
address_id INT(20) NOT NULL AUTO_INCREMENT,
person_id INT(20) NOT NULL,
address VARCHAR(200) NOT NULL,
address_type VARCHAR(200) NOT NULL,
PRIMARY KEY(address_id),
KEY fk_person_id_for_address (person_id),
CONSTRAINT fk_person_id_for_address FOREIGN KEY (person_id) REFERENCES person
(person_id)
);


DROP TABLE IF EXISTS restaurant;
CREATE TABLE restaurant(
restaurant_id INT(20) NOT NULL AUTO_INCREMENT,
location VARCHAR(200) NOT NULL,
restaurant_name VARCHAR(75) NOT NULL,
working_hours VARCHAR(75) NOT NULL,
PRIMARY KEY(restaurant_id)
);

DROP TABLE IF EXISTS social_media_details;
CREATE TABLE social_media_details(
social_media_id INT(20) NOT NULL AUTO_INCREMENT,
restaurant_id INT(20) NOT NULL,
website VARCHAR(100) ,
email VARCHAR(100) ,
instagram_id VARCHAR(100),
facebook_id VARCHAR(100) ,
PRIMARY KEY(social_media_id),
KEY fk_restaurant_id_for_media_details (restaurant_id),
CONSTRAINT fk_restaurant_id_for_media_details FOREIGN KEY (restaurant_id) REFERENCES restaurant
(restaurant_id)
);

CREATE TABLE location (
  location_id int NOT NULL AUTO_INCREMENT,
  location_name varchar(200) NOT NULL,
  location_address varchar(200) NOT NULL,
  latitude varchar(75) DEFAULT NULL,
  longitude varchar(75) DEFAULT NULL,
  dropoff_point varchar(200) NOT NULL,
  PRIMARY KEY (location_id)
);

DROP TABLE IF EXISTS restaurant_items;
CREATE TABLE restaurant_items (
item_id INT(20) NOT NULL AUTO_INCREMENT,
item_name VARCHAR(100),
item_price INT(20),
restaurant_id INT(20) NOT NULL,
PRIMARY KEY(item_id),
KEY fk_restaurant_id_for_item (restaurant_id),
CONSTRAINT fk_restaurant_id_for_item FOREIGN KEY (restaurant_id) REFERENCES restaurant
(restaurant_id)
);

DROP TABLE IF EXISTS payment_type;
CREATE TABLE payment_type(
payment_type_id INT(20) NOT NULL AUTO_INCREMENT,
payment_type VARCHAR(75) NOT NULL,
PRIMARY KEY(payment_type_id)
);
INSERT INTO payment_type (payment_type) VALUES ('Debit Card'), ('Credit Card'), ('Cash'), ('Declining Balance') ;

DROP TABLE IF EXISTS delivery;
CREATE TABLE delivery(
delivery_id INT(20) NOT NULL AUTO_INCREMENT,
driver_id INT(20) NOT NULL,
delivery_time DATETIME NOT NULL,
PRIMARY KEY(delivery_id),
KEY fk_driver_id_for_delivery (driver_id),
CONSTRAINT fk_driver_id_for_delivery FOREIGN KEY (driver_id) REFERENCES driver (driver_id)
);

DROP TABLE IF EXISTS orders;
CREATE TABLE orders(
order_id INT(20) NOT NULL AUTO_INCREMENT,
person_id INT(20) NOT NULL,
delivery_id INT(20) NOT NULL,
location_id INT(20) NOT NULL,
restaurant_id INT(20) NOT NULL,
order_date DATETIME NOT NULL,
delivery_charge FLOAT(20) NOT NULL,
total_price FLOAT(20) NOT NULL,
payment_type_id INT(20) NOT NULL,
tip FLOAT(20) ,
instructions VARCHAR(100),
PRIMARY KEY(order_id),
KEY fk_person_id_for_order (person_id),
KEY fk_delivery_id_for_order (delivery_id),
KEY fk_location_id_for_order (location_id),
KEY fk_restaurant_id_for_order (restaurant_id),
KEY fk_payment_type_id_for_order (payment_type_id),
CONSTRAINT fk_person_id_for_order FOREIGN KEY (person_id) REFERENCES person (person_id),
CONSTRAINT fk_delivery_id_for_order FOREIGN KEY (delivery_id) REFERENCES delivery (delivery_id),
CONSTRAINT fk_location_id_for_order FOREIGN KEY (location_id) REFERENCES location (location_id),
CONSTRAINT fk_restaurant_id_for_order FOREIGN KEY (restaurant_id) REFERENCES restaurant (restaurant_id),
CONSTRAINT fk_payment_type_id_for_order FOREIGN KEY (payment_type_id) REFERENCES payment_type (payment_type_id)
);

DROP TABLE IF EXISTS order_items;
CREATE TABLE order_items(
order_item_id INT(20) NOT NULL AUTO_INCREMENT,
order_id INT(20) NOT NULL,
item_id INT(20) NOT NULL,
quantity INT(20) NOT NULL,
total_price FLOAT(20) NOT NULL,
PRIMARY KEY(order_item_id),
KEY fk_order_id_for_order_item (order_id),
KEY fk_item_id_for_order_item (item_id),
CONSTRAINT fk_order_id_for_order_item FOREIGN KEY (order_id) REFERENCES orders (order_id),
CONSTRAINT fk_item_id_for_order_item FOREIGN KEY (item_id) REFERENCES restaurant_items (item_id)
);

CREATE TABLE ratings(
rating_id INT(20) NOT NULL AUTO_INCREMENT,
overall_rating INT(20) NOT NULL,
order_id INT(20) NOT NULL,
PRIMARY KEY(rating_id),
KEY fk_order_id_for_ratings (order_id),
CONSTRAINT fk_order_id_for_ratings FOREIGN KEY (order_id) REFERENCES orders (order_id)
);

DROP TABLE IF EXISTS restaurant_rating;
CREATE TABLE restaurant_rating(
restaurant_rating_id INT(20) NOT NULL AUTO_INCREMENT,
restaurant_id INT(20) NOT NULL,
order_id INT(20) NOT NULL,
quality_rating FLOAT(20) ,
menu_rating FLOAT(20) ,
price_rating FLOAT(20) ,
package_rating FLOAT(20),
delivery_time_rating FLOAT(20) ,
comments VARCHAR(250),
images VARBINARY(500),
PRIMARY KEY(restaurant_rating_id),
KEY fk_restaurant_id_for_restaurant_rating (restaurant_id),
KEY fk_order_id_for_restaurant_rating (order_id),
CONSTRAINT fk_restaurant_id_for_restaurant_rating FOREIGN KEY (restaurant_id) REFERENCES restaurant (restaurant_id),
CONSTRAINT fk_order_id_for_restaurant_rating FOREIGN KEY (order_id) REFERENCES orders (order_id)
);

DROP TABLE IF EXISTS driver_ratings;
CREATE TABLE driver_ratings(
driver_rating_id INT(20) NOT NULL AUTO_INCREMENT,
driver_id INT(20) NOT NULL,
order_id INT(20)NOT NULL,
online_rating FLOAT(20) ,
courteous_rating FLOAT(20) ,
comments VARCHAR(250),
PRIMARY KEY(driver_rating_id),
KEY fk_driver_id_for_driver_ratings (driver_id),
KEY fk_order_id_for_driver_ratings(order_id),
CONSTRAINT fk_driver_id_for_driver_ratings FOREIGN KEY (driver_id) REFERENCES driver (driver_id),
CONSTRAINT fk_order_id_for_driver_ratings FOREIGN KEY (order_id) REFERENCES orders (order_id)
);

DROP TABLE IF EXISTS offer_type;
CREATE TABLE offer_type(
offer_type_id INT(20) NOT NULL AUTO_INCREMENT,
offer_type VARCHAR(250) NOT NULL,
PRIMARY KEY(offer_type_id)
);

INSERT INTO offer_type (offer_type) VALUES ('restaurant offer'), ('delivery offer'), ('application offer'), ('referral offer') ; 

DROP TABLE IF EXISTS offers;
CREATE TABLE offers(
offer_id INT(20) NOT NULL AUTO_INCREMENT,
offer_description VARCHAR(250) NOT NULL,
offer_type_id INT(20) NOT NULL,
restaurant_id INT(20) NOT NULL,
PRIMARY KEY(offer_id),
KEY fk_offer_type_id_for_offers (offer_type_id),
KEY fk_restaurant_id_for_offers (restaurant_id),
CONSTRAINT fk_offer_type_id_for_offers FOREIGN KEY (offer_type_id) REFERENCES offer_type (offer_type_id),
CONSTRAINT fk_restaurant_id_for_offers FOREIGN KEY (restaurant_id) REFERENCES restaurant (restaurant_id)
);

DROP TABLE IF EXISTS offer_redeem_details;
CREATE TABLE offer_redeem_details(
offer_id INT(20) NOT NULL ,
person_id INT(20) NOT NULL,
number_of_times INT(20),
KEY fk_offer_id_for_offer_redeem_details (offer_id),
KEY fk_person_id_for_offer_redeem_details (person_id),
CONSTRAINT fk_offer_id_for_offer_redeem_details FOREIGN KEY (offer_id) REFERENCES offers (offer_id),
CONSTRAINT fk_person_id_for_offer_redeem_details FOREIGN KEY (person_id) REFERENCES person (person_id)
);


ALTER TABLE orders 
ADD COLUMN offer_id INT(20) DEFAULT NULL,
ADD CONSTRAINT fk_order_offer_id FOREIGN KEY (offer_id)
REFERENCES offers(offer_id);

CREATE INDEX index_orders
ON orders(order_id,person_id,restaurant_id);

CREATE INDEX index_person
ON person(person_id,phone_number,person_email);

CREATE INDEX index_offer
ON offers(offer_id,restaurant_id,offer_type_id);

CREATE INDEX index_rating
ON ratings(rating_id,order_id);




















