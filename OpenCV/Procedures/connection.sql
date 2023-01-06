DECLARE
BEGIN
SELECT id_user
FROM users
WHERE name_user = '&user_name' 
AND user_password = '&user_password';
IF
id_user is not null
THEN
DBMS_OUTPUT.PUT_LINE ('connected');
ELSE
DBMS_OUTPUT.PUT_LINE ('this user not exist');
END IF;
END;
/