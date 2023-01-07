SET SERVEROUTPUT ON;
declare
begin
     
INSERT INTO Users(id_user,
	name_user,
	email,
	user_password) 
VALUES (seq_users.nextval,
	'&name_user',
	'&email',
	'&user_password');
DBMS_OUTPUT.PUT_LINE('User created');
exception
 when no_data_found then
  DBMS_OUTPUT.PUT_LINE('aucune valeur trouvée');

end ;
/

select name_user "Username",email
from users;

@Procedures/Accueil
