SET SERVEROUTPUT ON;
declare
v_profile_id country.id_profil%type;

begin
 SELECT p.id_profil
    INTO v_profile_id 
    FROM country c
    JOIN profil p
    ON p.id_profil=c.id_profil
    JOIN Users u
    ON p.id_user=u.id_user
    WHERE name_user= '&Username';

  update country set 
   country_name='&new_country',
   city='&new_city'
   where id_profil = v_profile_id;
DBMS_OUTPUT.PUT_LINE(' Vos données sont à  jour');
exception
  when no_data_found then
  DBMS_OUTPUT.PUT_LINE('this user not exist');
end ;
/