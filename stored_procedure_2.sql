use niner_dining;
drop procedure if exists add_restaurant;
DELIMITER $$
create PROCEDURE add_restaurant (in location varchar(200), in restaurant_name varchar(75),
in working_hours varchar(20), in website varchar(200), in email varchar(200), in instagram_id varchar(200),
in facebook_id varchar(200), out result boolean)

BEGIN
declare restaurantID int(20) default 1;
declare sql_error TINYINT DEFAULT FALSE;
declare continue handler for sqlexception
set sql_error = true ;
insert into restaurant ( location, restaurant_name, working_hours )
values (location, restaurant_name, working_hours);
set restaurantID = (SELECT LAST_INSERT_ID());
insert into social_media_details ( restaurant_id, website, email, instagram_id, facebook_id )
values ( restaurantID, website, email, instagram_id, facebook_id) ;

if sql_error = false then
set result = true;
commit;
else
set result = false;
rollback;
end if;
END$$
DELIMITER ;