declare

   
  v_profile_id  socialnetwork.id_profil%type;
    

begin

    select s.id_profil
    into v_profile_id 
    from socialnetwork s
    join Profil p
    on p.id_profil = s.id_profil
    JOIN Users u
    ON p.id_user=u.id_user
    WHERE name_user= '&Username';

 
    insert into socialnetwork 
    (
        id_social,
         title_social,
          image_social,
          id_profil
   
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