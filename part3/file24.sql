//Create Procedure to add new customer in emp table

create table customer(
    id int primary key,
    name varchar(100)
);

DELIMITER //
CREATE PROCEDURE AddCustomer4(IN p_id int, IN p_name varchar(100))
BEGIN
 DECLARE CONTINUE HANDLER FOR 1062
 BEGIN
   SELECT 'Duplicate Id' as message;
 END;
 insert into customer
 values(p_id,p_name);
END //
DELIMITER;


call AddCustomer1(2,'Amy');