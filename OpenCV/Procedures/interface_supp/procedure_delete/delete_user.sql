set serveroutput on;
declare
v_id_user Users.id_user%type;

begin
select id_user
into v_id_user
from Users
where name_user='&username';

DELETE Users
where id_user = v_id_user;

DBMS_OUTPUT.PUT_LINE(' Suppression de lutilisateur effectuee');
exception
  when no_data_found then
  DBMS_OUTPUT.PUT_LINE('Suppression ');
end;
/