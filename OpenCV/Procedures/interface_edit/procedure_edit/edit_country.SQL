declare

v_profile_id country.id_profil%type;

begin
  
 select id_profil
    into v_profile_id
    from country
    where country_name = '&nom';

  update country set 
   country_name='&new_country',
   city='&new_city'
   where id_profil = v_profile_id;
   

DBMS_OUTPUT.PUT_LINE(' Vos données sont à  jour');

end ;
/