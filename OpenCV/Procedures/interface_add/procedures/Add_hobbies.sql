set serveroutput on 
declare

  v_id_user Hobbies.id_user%type;
begin

select h.id_user
     into v_id_user
     from Users u
     join Hobbies h
     on (u.id_user = h.id_user)
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

end ;
/