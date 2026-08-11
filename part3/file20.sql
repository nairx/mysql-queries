DELIMITER //
CREATE PROCEDURE DemoVariable()
BEGIN
DECLARE total int;
SET total = 100;
SELECT total;
END //
DELIMITER;


DELIMITER //
CREATE PROCEDURE SalaryCategory(IN empSalary DECIMAL(10,2))
BEGIN
IF empSalary >= 70000 THEN
    SELECT 'High Salary';
ELSE
    SELECT 'Low Salary';
END IF;
END //
DELIMITER;

call SalaryCategory(30000);


DELIMITER //
CREATE PROCEDURE SalaryCategory1(IN empSalary DECIMAL(10,2))
BEGIN
CASE
    WHEN empSalary >= 70000 THEN
        SELECT 'High Salary';
    WHEN empSalary > 50000 THEN
        SELECT 'Average Salary';
    ELSE
        SELECT 'Low Salary';
END CASE;
END //
DELIMITER;

call SalaryCategory1(30000);