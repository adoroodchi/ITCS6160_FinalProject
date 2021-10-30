# ITCS6160_FinalProject

Team Members: 
Nehal Kathale
Pratik Sunil Zode
Sreelekha Pasikanti 
Ali Doroodchi

Project Introduction: 
Our Project describes the entire ecosystem at UNCC. The students, faculty, staff, and many more entities compose UNC-Charlotte as a whole. Our Project contains 20 tables -- starting with the Person table. 
The Person table has a primary key of person_id which is an integer and each person has an identification number . It also has a foreign key of person_type_id which is also an integer and describes how each person type has an identification number as well. Person types can either be a driver, student, campus faculty, or staff member. Person type also has its own table. 
The Address table has a primary key of address_id which is an integer and means each address has its own identification number. It has a foreign key of person_id which is an integer.
The Faculty table has a primary key of faculty_id which is an integer and defines each faculty member with his/her own identification number. It has a foreign key of person_id which is an integer. 
The Student table has a primary key of student_id which is an integer and means each student has his/her own identification number. It has a foreign key of person_id which is an integer. 
The Staff table has a primary key of staff_id which is an integer and identifies each staff member with his/her own identification number. It has a foreign key of person_id which is an integer. 
The Driver table has a primary key of driver_id which is an integer and identifies the driver with his/her own identification number. This table has 3 foreign keys -- student_id, vehicle_id, and person_id which are all integers. 
The Vehicle table has a primary key of vehicle_id which is an integer and identifies the vehicle with its own identification number. This table does not have a foreign key. 
The Restaurant table has a primary key of restaurant_id which is an integer and identifies every restaurant with its own identification number. It has a foreign key of social_media_id which is an integer. 
The Social Media table has a primary key of social_media_id which is an integer and identifies each restaurant’s social media with an identification number. It has a foreign key of restaurant_id which is an integer. 
The Restaurant Items table has a primary key of item_id which is an integer and identifies each item with an identification number. It has a foreign key of restaurant_id which is an integer. 
The Order table has a primary key of order_id which is an integer and identifies each restaurant’s order with its own identification number. This table has 5 foreign keys -- person_id, delivery_id, location_id, restaurant_id, and payment_type_id which are all integers. 
The Delivery table has a primary key of delivery_id which is an integer and identifies each delivery with its own identification number. This table does not have a foreign key. 
The Order Items table has a primary key of order_item_id which is an integer and identifies each order item with its own identification number. This table has 2 foreign keys -- order_id and item_id which are both integers. 
The Payment Type table has a primary key of payment_type_id which is an integer and identifies each payment type with a corresponding identification number. 
The Rating table has a primary key of rating_id which is an integer and identifies each rating with its own identification number. It has a foreign key of order_id which is an integer as well. 
The Driver Rating table has a primary key of rating_id which is an integer and identifies each driver’s rating with its own identification number. It has a foreign key of driver_id which is also an integer. 
The Restaurant Rating table has a primary key of restaurant_rating which is an integer and identifies each restaurant’s rating with its own identification number. It has a foreign key of restaurant_id which is also an integer. 
The Location table has a primary key of location_id which is an integer and identifies each location with its own identification number. This table does not have a foreign key. 
The Offers table has a primary key of offer_id which is an integer and identifies each offer with its own identification number. This table has 2 foreign keys -- offer_type_id and restaurant_id which are both integers. 
The Offers Type table has a primary key of offer_type_id which is an integer and identifies each restaurant, delivery, referral, or application offer with its own identification number. This table does not contain a foreign key. 
The Offer Redeem Details table does not contain a primary key and has 2 foreign keys -- offer_id and person_id which are both integers. 

Business Rules: 
Person types are limited to students, faculty, staff, and drivers. 
Drivers can be students, faculty, and/or staff. 
Limit to one rating per order. 
Ratings are optional. 
An order can have an overall rating and no restaurant rating -- or vice versa or both.
Persons who can order are limited to students, faculty, and/or staff. 
One offer redeemable per person. 
Only students, faculty, staff, and drivers can redeem offers at restaurants. 
Offer types include restaurant, delivery, referral, or application offers only. 
Each restaurant can only have one social media handle. 
No limit to how many order items per order. 
Locations have to be within UNCC campus. 
Payment type can be cash, card, or DB. 
