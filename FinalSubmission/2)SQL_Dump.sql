-- Restaurant:
call niner_dining.add_restaurant("UNCC","Crown's","8-10","crowns.charlotte.edu"
,"crowns@uncc.edu","CrownsIG","CrownsFB",@result);
call niner_dining.add_restaurant("901 University City Blvd,","Bojangles","8-5","Bojangles.charlotte.edu"
,"bojangles@uncc.edu","BojanglesIG","BojanglesFB",@result);
call niner_dining.add_restaurant("University Union","Wendy's","8-9","wendys.charlotte.edu"
,"wendys@uncc.edu","WendysIG","WendysFB",@result);
call niner_dining.add_restaurant("Cone Center Charlotte, NC 28223","Chick-fil-A","8-5","chickFilA.charlotte.edu"
,"chickFilA@uncc.edu","ChickFillAIG","ChickFillAIGrestaurantFB",@result);
call niner_dining.add_restaurant("UNCC South Village","SoVi","8-10","sovi.charlotte.edu"
,"sovi@uncc.edu","SoviIG","SoviFB",@result);

-- Person:

Call niner_dining.add_person('Pratik','pzode@uncc.edu','STUDENT',9854678765,'1998-12-26',2023,'IT','GRAD',NULL,NULL,NULL,NULL,NULL,@result);
call niner_dining.add_person('ANNA','agreen@uncc.edu','STUDENT',9754678965,'1996-11-26', 2023,'CS','GRAD',NULL,NULL,NULL,NULL,NULL,@result);
call niner_dining.add_person('Lochana','ldesh@uncc.edu','STUDENT',7854678765,'1997-10-21', 2023,'CS','GRAD',NULL,NULL,NULL,NULL,NULL,@result);
call niner_dining.add_person('Lisa','Ldam@uncc.edu','STUDENT',6844676762,'1999-11-02', 2023,'Economics','GRAD',NULL,NULL,NULL,NULL,NULL,@result);
call niner_dining.add_person('sema','sema@uncc.edu','STUDENT',9854668861,'1998-12-26', 2023,'CS','GRAD',NULL,NULL,NULL,NULL,NULL,@result);
call niner_dining.add_person('Denver','DenverD@uncc.edu','STUDENT',7834668795,'1992-02-12', 2023,'CS','GRAD',NULL,NULL,NULL,NULL,NULL,@result);
call niner_dining.add_person('Deepika','dee@uncc.edu','STUDENT',8854688768,'1990-01-05', 2023,'IT','GRAD',NULL,NULL,NULL,NULL,NULL,@result);
call niner_dining.add_person('Jesica','jessr@uncc.edu','STUDENT',2852682762,'1998-12-23', 2023,'CS','GRAD',NULL,NULL,NULL,NULL,NULL,@result);
call niner_dining.add_person('Katie','kwood@uncc.edu','STUDENT',7854778767,'1997-07-20', 2023,'MBA','GRAD',NULL,NULL,NULL,NULL,NULL,@result);
call niner_dining.add_person('Aleena','aleenaJohn@uncc.edu','STUDENT',7854678769,'1998-12-16', 2023,'CS','GRAD',NULL,NULL,NULL,NULL,NULL,@result);
call niner_dining.add_person('Niraj','Nkini@uncc.edu','STUDENT',7854679799,'1998-12-05', 2023,'MBA','GRAD',NULL,NULL,NULL,NULL,NULL,@result);
call niner_dining.add_person('Priyal','Ppareek@uncc.edu','STUDENT',2854628265,'1992-12-01', 2023,'CS','GRAD',NULL,NULL,NULL,NULL,NULL,@result);


call niner_dining.add_person('Frank','frank@uncc.edu','FACULTY',9756767896,'1970-11-26', NULL,NULL,NULL,'Assistant Professor','PHD','UNC Charlotte',NULL,NULL,@result);
call niner_dining.add_person('Zina','zina@uncc.edu','FACULTY',7094678765,'1986-10-21', NULL,NULL,NULL,'Professor','PHD','UNC Charlotte',NULL,NULL,@result);
call niner_dining.add_person('Renauld','Renauld@uncc.edu','FACULTY',89844676762,'1984-11-02', NULL,NULL,NULL,'Assistant Professor','PHD','UNC Charlotte',NULL,NULL,@result);
call niner_dining.add_person('Ali','ali@uncc.edu','FACULTY',9855676886,'1983-12-26', NULL,NULL,NULL,'Professor','PHD','UNC Charlotte',NULL,NULL,@result);
call niner_dining.add_person('Chang','Chang@uncc.edu','FACULTY',7834668795,'1978-02-12', NULL,NULL,NULL,'Assistant Professor','PHD','UNC Charlotte',NULL,NULL,@result);
call niner_dining.add_person('Maddy','maddy@uncc.edu','STAFF',8854688768,'1986-01-05', NULL,NULL,NULL,NULL,NULL,NULL,'Manager',true,@result);
call niner_dining.add_person('Maddy','maddy@uncc.edu','STAFF',8854688768,'1986-01-05', NULL,NULL,NULL,NULL,NULL,NULL,'Manager',true,@result);
call niner_dining.add_person('Jesica','jessr@uncc.edu','STAFF',2855482762,'1984-12-23', NULL,NULL,NULL,NULL,NULL,NULL,'Owner',true,@result);
call niner_dining.add_person('Kary','Kary@uncc.edu','STAFF',78544568767,'1990-07-20', NULL,NULL,NULL,NULL,NULL,NULL,'Cashier',false,@result);
call niner_dining.add_person('Cynthia','cynthia@uncc.edu','STAFF',7454678769,'1991-12-16', NULL,NULL,NULL,NULL,NULL,NULL,'Cashier',false,@result);
call niner_dining.add_person('Alex','Nkini@uncc.edu','STAFF',7854689799,'1995-12-05', NULL,NULL,NULL,NULL,NULL,NULL,'Manager',true,@result);

-- Address:

INSERT IGNORE INTO address(person_id,address,address_type) VALUES(1,"UTN 11006 A","HOME"),
(2,"UT 9545 A","HOME"),
(3,"UTN 11006 A","HOME"),
(4,"UTN 11000 E","HOME"),
(5,"Arlyn Circle 1620 D","HOME"),
(6,"Mallard Creek 1895 A","HOME"),
(7,"UT 9535 F","HOME"),
(8,"The Edge 2067 C","HOME"),
(9,"The Mill 5689 B","HOME"),
(10,"Arlyn Circle 1638 H","HOME"),
(11,"The Edge 2053 E","HOME"),
(12,"Mallard Creek 1845 J","HOME"),
(13,"UT 9515 G","HOME"),
(14,"UT 9505 E","HOME"),
(15,"UTN 12002 C","HOME"),
(16,"The Edge 2089 D","HOME"),
(17,"Mallard Creek 1876 B","HOME"),
(18,"UT 9505 E","HOME"),
(19,"UTN 11006 A","HOME"),
(20,"Arlyn Circle 1638 H","HOME"),
(21,"UT 9515 G","HOME"),
(22,"UTN 11000 E","HOME"),
(23,"Mallard Creek 1876 B","HOME"),
(24,"UTN 11006 A","HOME"),
(25,"Arlyn Circle 1638 F","HOME"),
(26,"The Edge 2053 B","HOME"),
(27,"UTN 11006 A","HOME"),
(28,"Mallard Creek 1876 F","HOME"),
(29,"The Edge 8905 A","HOME"),
(28,"Uptown 2344","Office");

-- Restaurant Item: 

INSERT IGNORE INTO restaurant_items(item_name,item_price,restaurant_id)VALUES
("Pizza",7,1),("Salad",10,1),("soup",4,1),("Fries",5,1),("Noodles",15,1),
("Chicken Sandwitch",4,2),("Tenders",6,2),("Fries",3,2),("Bo Rounds",4,2),("Cajun Biscuit",6,2),
("Honey Butter Biscuit",5,3),("Sausage Biscuit",6,3),("Bacyon Egg Sandwitch",10,3),("Classin Bacyon Egg and Cheese",15,3),
("Chick-fill-A chicken",7,4),("Grilled Chicken",10,4),("spicy Chicken",12,4),("Grilled Chicken Club",17,4),
("Fries",5,5),("Pizza",10,5),("Ice-cream",5,5),("Salad",11,5);


-- Vehicle:

INSERT IGNORE INTO vehicle(vehicle_number, model)  VALUES 
('A22 345','Camry'), 
('326 JVA','Corolla'), 
('DM4 605','Spark'),
('VMC 286','Highlander'),
('BJ5 225','Malibu') ;

-- Driver:

INSERT IGNORE INTO driver (student_id, person_id, license_number, date_hired, vehicle_id ) VALUES
(1, 1, 'B13654424', '2020-04-14 10:45:34', 2),
(2, 2, 'HGF624783', '2020-04-25 15:35:38', 5),
(3, 3, 'RG7328780', '2020-05-06 11:09:27', 1),
(4, 4, 'GHS936452', '2020-06-17 12:32:21', 3),
(5, 5, 'UHE628490', '2020-06-24 13:14:08', 4);


-- Delivery:

INSERT IGNORE INTO delivery(driver_id, delivery_time) VALUES
(1, '2021-09-23 17:09:43'),
(3, '2021-08-12 14:04:05'),
(4, '2021-10-15 10:23:34'),
(2, '2021-07-08 19:45:42'),
(5, '2021-06-18 11:30:56'),
(3, '2021-06-25 13:09:43'),
(2, '2021-06-09 14:35:28'),
(4, '2021-07-14 18:12:54'),
(1, '2021-07-19 10:19:32'),
(5, '2021-07-10 20:24:46'),
(3, '2021-08-12 16:45:20'),
(2, '2021-08-02 19:37:28'),
(4, '2021-09-11 17:42:16'),
(1, '2021-09-15 15:23:48'),
(3, '2021-10-29 14:07:44'),
(5, '2021-10-30 12:57:32'),
( 2,  '2021-10-30 17:35:06'),
( 4, '2021-11-02 18:45:33'),
( 3, '2021-11-05 14:32:09'),
 (1, '2021-11-07 13:28:16');


-- Location:

INSERT IGNORE INTO location (location_name, location_address, latitude, longitude, dropoff_point) VALUES
('UTN','11006 A', '35.6744777','-66.5478889','Door'),
('UT','9545 A', '35.6744777','-66.5478889','Door'),
('UTN','11000 E', '35.6744777','-66.5478889','Door'),
('Arlyn Circle','1620 D', '30.6904777','-76.54788859','Door'),
('Mallard Creek','1895 A', '40.4543477','-26.5409889','Door'),
('UT','9535 F','25.6795777','96.5476786','Door'),
('The Edge','2067 C', '95.6564777','87.5479089','Door'),
('The Mill','5689 B', '55.4564777','46.5678889','Door'),
('Arlyn Circle','1638 H', '40.9044777','-56.56788889','Door'),
('The Edge','2053 E', '94.4574777','-45.78478889','Door'),
('Mallard Creek','1845 J', '89.0944777','-90.9078889','Door'),
('UT','9515 G', '87.6790777','56.5568889','Door'),
('UT','9505 E', '84.6747877','-32.5988889','Door'),
('UTN','12002 C', '35.6700777','-98.5898889','Door'),
('The Edge ','2089 D', '39.6564777','-78.5478085','Door'),
('Mallard Creek','1876 B', '45.456777','-54.5456889','Door');

-- Orders:

INSERT IGNORE INTO orders (person_id, delivery_id, location_id, restaurant_id, order_date, delivery_charge, total_price, payment_type_id, tip, instructions)
VALUES
(2,1,1,1, '2021-09-23 16:30:43', 7.45, 23.34, 2, 3.5,''),
(1,2,2,2, '2021-08-12 14:04:05', 5.34, 34.89, 2, 5.0,'leave it at the door'),
(3,3,3,3, '2021-10-15 10:23:34', 8.98, 25.98, 1, 4.8,'please knock'),
(4,4,4,4, '2021-07-08 19:45:42', 9.23, 45.87, 2, 2.5,'leave at doorstep'),
(5,5,5,5, '2021-06-18 11:30:56', 7.89, 27.45, 4, 4.5,'no ice in drinks'),
(7,6,6,1, '2021-06-25 13:09:43', 8.62, 32.29, 3, 6.5,'leave at the door'),
(21,7,7,2, '2021-06-09 14:35:28', 10.87, 29.76, 2, 7.0,'do not make it spicy'),
(14,8,8,3, '2021-07-14 18:12:54', 9.82, 35.88, 2, 5.0,'knock on the door'),
(8,9,9,4, '2021-07-19 10:19:32', 9.53, 42.77, 1, 6,''),
(9,10,10,5, '2021-07-10 20:24:46', 9.99, 57.45, 1, 3.6,'add extra ketchup'),
(22,11,11,1, '2021-08-12 16:45:20', 12.23, 52.85, 3, 4.5,'please add extra seasoning'),
(10,12,12,2, '2021-08-02 19:37:28', 6.40, 62.96, 4, 5.5,'Make it spicy'),
(20,13,13,3, '2021-09-11 17:42:16', 8.76, 50.46, 4, 6.0,''),
(6,14,14,4, '2021-09-15 15:23:48', 10.53, 36.78, 1, 3.0,''),
(9,15,15,5, '2021-10-29 14:07:44', 11.24, 39.96, 3, 3.8,'please add extra sauces'),
(18,16,16,1, '2021-10-30 12:57:32', 7.99, 43.42, 3, 4.0,'no ice'),
( '5', '17', '15', '2', '2021-10-30 17:00:18', '8.67', '34.43', '2', '5', 'add honey mustard'),
( '12', '18', '10', '3', '2021-11-02 18:10:43', '5.65', '56.25', '2', '3', 'add ketchup'),
( '19', '19', '11', '4', '2021-11-05 13:52:07', '7.70', '25.70', '1', '4', 'do not add cheese'),
( '3', '20', '9', '5', '2021-11-07 12:48:19', '8.50', '28.50', '1', '3', 'no mayo');





-- Restaurant_rating:

INSERT IGNORE INTO `restaurant_rating` (`restaurant_rating_id`, `restaurant_id`, `order_id`, `quality_rating`, `menu_rating`, `price_rating`, `package_rating`, `delivery_time_rating`, `comments`) VALUES ('1', '1', '1', '4', '3', '5', '5', '3', '\"Good Food\"');
INSERT IGNORE INTO `niner_dining`.`restaurant_rating` (`restaurant_rating_id`, `restaurant_id`, `order_id`, `quality_rating`, `menu_rating`, `price_rating`, `package_rating`, `delivery_time_rating`) VALUES ('2', '2', '2', '2', '4', '5', '4', '4');
INSERT IGNORE INTO `niner_dining`.`restaurant_rating` (`restaurant_rating_id`, `restaurant_id`, `order_id`, `quality_rating`, `menu_rating`, `price_rating`, `package_rating`, `delivery_time_rating`, `comments`) VALUES ('3', '3', '3', '5', '3', '2', '2', '2', '\"Very bad packing\"');
INSERT IGNORE INTO `niner_dining`.`restaurant_rating` (`restaurant_rating_id`, `restaurant_id`, `order_id`, `quality_rating`, `menu_rating`, `price_rating`, `package_rating`, `delivery_time_rating`) VALUES ('4', '4', '4', '4', '2', '5', '3', '5');
INSERT IGNORE INTO `niner_dining`.`restaurant_rating` (`restaurant_rating_id`, `restaurant_id`, `order_id`, `quality_rating`, `menu_rating`, `price_rating`, `package_rating`, `delivery_time_rating`) VALUES ('5', '5', '5', '5', '5', '5', '5', '5');
INSERT IGNORE INTO `niner_dining`.`restaurant_rating` (`restaurant_rating_id`, `restaurant_id`, `order_id`, `quality_rating`, `menu_rating`, `price_rating`, `package_rating`, `delivery_time_rating`) VALUES ('6', '2', '7', '3', '4', '5', '3', '5');
INSERT IGNORE INTO `niner_dining`.`restaurant_rating` (`restaurant_rating_id`, `restaurant_id`, `order_id`, `quality_rating`, `menu_rating`, `price_rating`, `package_rating`, `delivery_time_rating`) VALUES ('7', '5', '10', '5', '3', '5', '4', '2');



-- Order items :

INSERT IGNORE INTO `niner_dining`.`order_items` (`order_item_id`,`order_id`,`item_id`,`quantity`,`total_price`) VALUES (1,1,1,1,7);
INSERT IGNORE INTO `niner_dining`.`order_items` (`order_item_id`,`order_id`,`item_id`,`quantity`,`total_price`) VALUES (2,2,6,1,4);
INSERT IGNORE INTO `niner_dining`.`order_items` (`order_item_id`,`order_id`,`item_id`,`quantity`,`total_price`) VALUES (3,2,7,1,6);
INSERT IGNORE INTO `niner_dining`.`order_items` (`order_item_id`,`order_id`,`item_id`,`quantity`,`total_price`) VALUES (4,3,11,2,10);
INSERT IGNORE INTO `niner_dining`.`order_items` (`order_item_id`,`order_id`,`item_id`,`quantity`,`total_price`) VALUES (5,4,17,1,12);
INSERT IGNORE INTO `niner_dining`.`order_items` (`order_item_id`,`order_id`,`item_id`,`quantity`,`total_price`) VALUES (6,5,20,2,20);
INSERT IGNORE INTO `niner_dining`.`order_items` (`order_item_id`,`order_id`,`item_id`,`quantity`,`total_price`) VALUES (7,6,3,2,8);
INSERT IGNORE INTO `niner_dining`.`order_items` (`order_item_id`,`order_id`,`item_id`,`quantity`,`total_price`) VALUES (8,7,8,2,6);
INSERT IGNORE INTO `niner_dining`.`order_items` (`order_item_id`,`order_id`,`item_id`,`quantity`,`total_price`) VALUES (9,8,14,1,15);
INSERT IGNORE INTO `niner_dining`.`order_items` (`order_item_id`,`order_id`,`item_id`,`quantity`,`total_price`) VALUES (10,9,18,1,17);
INSERT IGNORE INTO `niner_dining`.`order_items` (`order_item_id`,`order_id`,`item_id`,`quantity`,`total_price`) VALUES (11,10,21,2,10);
INSERT IGNORE INTO `niner_dining`.`order_items` (`order_item_id`,`order_id`,`item_id`,`quantity`,`total_price`) VALUES (12,11,4,1,5);
INSERT IGNORE INTO `niner_dining`.`order_items` (`order_item_id`,`order_id`,`item_id`,`quantity`,`total_price`) VALUES (13,12,9,1,4);
INSERT IGNORE INTO `niner_dining`.`order_items` (`order_item_id`,`order_id`,`item_id`,`quantity`,`total_price`) VALUES (14,13,13,2,10);
INSERT IGNORE INTO `niner_dining`.`order_items` (`order_item_id`,`order_id`,`item_id`,`quantity`,`total_price`) VALUES (15,14,17,2,24);
INSERT IGNORE INTO `niner_dining`.`order_items` (`order_item_id`,`order_id`,`item_id`,`quantity`,`total_price`) VALUES (16,15,19,2,10);
INSERT IGNORE INTO `niner_dining`.`order_items` (`order_item_id`,`order_id`,`item_id`,`quantity`,`total_price`) VALUES (17,16,5,1,15);
INSERT INTO `niner_dining`.`order_items` (`order_item_id`, `order_id`, `item_id`, `quantity`, `total_price`) VALUES ('18', '17', '6', '1', '4');
INSERT INTO `niner_dining`.`order_items` (`order_item_id`, `order_id`, `item_id`, `quantity`, `total_price`) VALUES ('19', '18', '12', '2', '12');
INSERT INTO `niner_dining`.`order_items` (`order_item_id`, `order_id`, `item_id`, `quantity`, `total_price`) VALUES ('20', '19', '16', '2', '20');
INSERT INTO `niner_dining`.`order_items` (`order_item_id`, `order_id`, `item_id`, `quantity`, `total_price`) VALUES ('21', '20', '20', '1', '10');



-- Offer: 

INSERT IGNORE INTO offers(offer_description,offer_type_id,restaurant_id)VALUES ("BUY 1 GET ONE FREE",1,1), 
("Get Free Delivery Above 10$",2,4),
("Free Delivery On First Order",3,4),
("Buy 2 Spicy Chicken At 20$",1,3),
("Get 50% of on Order",1,2),
("Get 100 Credits On referral",4,1),
("Get 100 Credits On referral",4,2),
("Get 100 Credits On referral",4,3),
("Get 100 Credits On referral",4,4),
("Get 100 Credits On referral",4,5);




-- Ratings

INSERT INTO `niner_dining`.`ratings` (`rating_id`, `overall_rating`, `order_id`) VALUES ('1', '4.3', '1');
INSERT INTO `niner_dining`.`ratings` (`rating_id`, `overall_rating`, `order_id`) VALUES ('2', '3.3', '2');
INSERT INTO `niner_dining`.`ratings` (`rating_id`, `overall_rating`, `order_id`) VALUES ('3', '5', '3');
INSERT INTO `niner_dining`.`ratings` (`rating_id`, `overall_rating`, `order_id`) VALUES ('4', '3.4', '4');
INSERT INTO `niner_dining`.`ratings` (`rating_id`, `overall_rating`, `order_id`) VALUES ('5', '4.1', '5');
INSERT INTO `niner_dining`.`ratings` (`rating_id`, `overall_rating`, `order_id`) VALUES ('6', '3.8', '7');
