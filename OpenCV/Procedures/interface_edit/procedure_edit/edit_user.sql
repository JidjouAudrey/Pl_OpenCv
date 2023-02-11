SET SERVEROUTPUT ON;
declare
 v_id_user Users.id_user%type;
BEGIN

select id_user
into v_id_user
from Users
where name_user='&username';

  
update Users set 
name_user='&New_username',
email='&Email',
user_password='&Password'
where id_user=v_id_user;
DBMS_OUTPUT.PUT_LINE('Vos donnee sont a jour');
exception
when no_data_found then
DBMS_OUTPUT.PUT_LINE('cette utilisateur existe pas');
end;
/