declare

v_id_social socialnetwork.id_social%type;

begin
  
 select id_social
    into v_id_social 
    from socialnetwork 
    where title_social = '&nom';

  update socialnetwork set 
   title_social='&nouveau_nom',
   image_social='&nouvelle_image'
   where id_social = v_id_social;
   

DBMS_OUTPUT.PUT_LINE(' Vos données sont à  jour');

end ;
/