
DELIMIIER //
CREATE PROCEDURE getUserById(IN userid int)
BEGIN
SELECT * FROM users where userid=userid;
END //
DELIMITER;


DELIMITER //
CREATE PROCEDURE getBalance(OUT balance int)
BEGIN
SELECT acc_balance
into balance
FROM users 
where userid=1;
END //
DELIMITER;

call getBalance(@balance)

select @balance


DELIMITER //
CREATE PROCEDURE IncreaseValue(INOUT num int)
BEGIN
SET NUM = NUM + 10;
END //
DELIMITER;

set @x = 10;
call IncreaseValue(@x);
select @x;