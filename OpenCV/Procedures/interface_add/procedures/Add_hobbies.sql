set serveroutput on 
declare
  v_id_user Hobbies.id_user%type;

begin

select id_user
into v_id_user
from users
where name_user='&USERNAME';

insert into Hobbies 
   (
    id_hobbies,
    type_hobbies,
    title_hobbies,
    id_user
   ) values
   (
    seq_hob.nextval,
    '&type_hobbies',
    '&title_hobbies',
     v_id_user
   );
exception
  when no_data_found then
  DBMS_OUTPUT.PUT_LINE('this user not exist');
end ;
/