DELIMITER //
CREATE PROCEDURE CountToFive()
BEGIN
DECLARE i int DEFAULT 1;
WHILE i<=5 DO
    SELECT i;
    SET i = i + 1;
END WHILE;
END //
DELIMITER;

call CountToFive();


DELIMITER //
CREATE PROCEDURE CountToFive1()
BEGIN
DECLARE i int DEFAULT 1;
REPEAT
    SELECT i;
    SET i = i + 1;
UNTIL i > 5
END REPEAT;
END //
DELIMITER;

call CountToFive1();


DELIMITER //
CREATE PROCEDURE CountToFive2()
BEGIN
DECLARE i int DEFAULT 1;
myLoop: LOOP
    IF i > 5 THEN
        LEAVE myLoop;
    END IF;
    SELECT i;
    SET i = i + 1;
END LOOP;
END //
DELIMITER;

call CountToFive2();