declare

   
    v_profile_id country.id_profil%type;
    

begin

    select id_profil
    into 
    
    v_profile_id 
    from country
    where country_name = '&nom';

 
    insert into country 
    (
        id_country,country_name,city,id_profil
   
    )
    values
    (
        seq_count.nextval,'&country_name','&city',
       
    v_profile_id
      
    );
    end;
/ 