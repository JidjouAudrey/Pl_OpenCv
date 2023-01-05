DECLARE
 v_iduser int;
BEGIN
SELECT id_user
into v_iduser
FROM users
WHERE name_user = '&user_name' 
AND user_password = '&user_password';
IF
v_iduser is not null
THEN
'@menu';
ELSE
DBMS_OUTPUT.PUT_LINE ('this user not exist');
END IF;
END;
/