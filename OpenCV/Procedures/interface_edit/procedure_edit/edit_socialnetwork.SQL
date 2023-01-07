SET SERVEROUTPUT ON;
declare

v_id_social socialnetwork.id_social%type;

begin
  
 select s.id_profil
    into v_id_social 
    from socialnetwork s
    join Profil p
    on p.id_profil = s.id_profil
    JOIN Users u
    ON p.id_user=u.id_user
    WHERE name_user= '&Username';

  update socialnetwork set 
   title_social='&nouveau_nom',
   image_social='&nouvelle_image'
   where id_social = v_id_social;
DBMS_OUTPUT.PUT_LINE(' Vos données sont à  jour');
exception
  when no_data_found then
  DBMS_OUTPUT.PUT_LINE('this user not exist');
end ;
/