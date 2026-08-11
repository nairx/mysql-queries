

DELIMIER //
CREATE PROCEDURE getUserById(IN userid int)
BEGIN
SELECT * FROM users where userid=userid;
END //
DELIMIER