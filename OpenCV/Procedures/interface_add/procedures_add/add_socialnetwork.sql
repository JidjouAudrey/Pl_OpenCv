declare

   
  v_profile_id  socialnetwork.id_profil%type;
    

begin

    select id_profil
    into v_profile_id 
    from socialnetwork 
    where title_social = '&nom';

 
    insert into socialnetwork 
    (
        id_social, title_social, image_social,id_profil
   
    )
    values
    (
  seq_soc_net.nextval,
	'&title_social',
	'&image_social',
       
    v_profile_id
      
    );

 
end ;
/