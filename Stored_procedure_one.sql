use niner_dining;
drop procedure if exists add_person;
DELIMITER $$
create PROCEDURE add_person (in person_name varchar(300), in person_email varchar(150),
in person_type_param varchar(10), in phone_number bigint (15),in date_of_birth datetime, 
in graduation_year int(20), in major varchar(75), in academic_level varchar(75),
in title varchar(75), in  highest_degree varchar(75), in degree_college varchar(75),
in position varchar(75), in is_admin boolean, out result boolean)
BEGIN
declare personType int(20) default 1;
declare personID int(20);
declare sql_error TINYINT DEFAULT FALSE;
declare continue handler for sqlexception
set sql_error = true ;
set personType =  (SELECT person_type_id FROM person_type where person_type = person_type_param);
insert into person (person_name, person_email,date_of_birth, phone_number,person_type_id,enrolled_date) 
values(person_name, person_email, date_of_birth,phone_number, personType,now());
set personID = (SELECT LAST_INSERT_ID());
if(person_type_param = 'STUDENT') then
insert into student (person_id, graduation_year, major, academic_level) values
(personID, graduation_year, major, academic_level);
elseif(person_type_param = 'FACULTY') then
insert into faculty (person_id, title, highest_degree, degree_college) values
(personID, title, highest_degree, degree_college);
elseif(person_type_param = 'STAFF') then
insert into staff (person_id, position, is_admin) values
(personID, position,is_admin);
end if;

if sql_error = false then
set result = true;
commit;
else
set result = false;
rollback;
end if;

END$$ 
DELIMITER ;