declare

v_id_social socialnetwork.id_social%type;

begin
  
 select id_social
    into v_id_social 
    from socialnetwork 
    where title_social = '&nom';
    
   delete socialnetwork 
   where id_social=v_id_social;
   

DBMS_OUTPUT.PUT_LINE(' Supprexion effectuer avec succes ');

end ;
/