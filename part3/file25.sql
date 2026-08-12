
//Stored procedure for fund transfer 

DELIMITER //
CREATE PROCEDURE fundTransfer1(IN fromId int, IN toId int, IN amount int)
BEGIN
 DECLARE EXIT HANDLER FOR SQLEXCEPTION
 BEGIN
   rollback;
 END;
 START TRANSACTION;
 UPDATE users 
 set acc_balance = acc_balance - 200
 where userid=fromId;
 UPDATE users 
 set acc_balance = acc_balance + 200
 where userid=toId;
 COMMIT;
END //
DELIMITER;

call fundTransfer1(100101,100102,200);