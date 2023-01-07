SET SERVEROUTPUT ON;
declare
v_user users.id_user%type;
BEGIN
SELECT id_user
into v_user
FROM users
WHERE name_user = '&Username' 
AND user_password = '&user_password';
IF (v_user IS NULL)THEN
DBMS_OUTPUT.PUT_LINE ('this user not exist');
ELSE
DBMS_OUTPUT.PUT_LINE ('connected');
END IF;
exception
  when no_data_found then
  DBMS_OUTPUT.PUT_LINE('this user not exist');
END;
/
@Procedures/menu