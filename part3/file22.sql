//Create Procedure to add new customer in emp table

create table customer(
    id int primary key,
    name varchar(100)
);

DELIMITER //
CREATE PROCEDURE AddCustomer(IN p_id int, IN p_name varchar(100))
BEGIN
 DECLARE EXIT HANDLER FOR SQLEXCEPTION
 BEGIN
   SELECT 'An Error Occurred...';
 END;
 insert into customer
 values(p_id,p_name);
END //
DELIMITER;