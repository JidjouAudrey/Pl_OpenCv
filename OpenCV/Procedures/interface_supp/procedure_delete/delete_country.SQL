declare

v_profile_id country.id_profil%type;

begin
  
select id_profil
    into v_profile_id
    from country
    where country_name = '&nom';
    
   delete country
   where id_profil = v_profile_id;
   

DBMS_OUTPUT.PUT_LINE(' Supprexion effectuer avec succes ');

end ;
/
