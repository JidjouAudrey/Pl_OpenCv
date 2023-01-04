select * from Users;
PROMPT*********************INSERTION COUNTRY**************

INSERT INTO Country (id_country,
	 country_name,
	 city,id_profil)
VALUES(
   seq_count.nextval,
   '&country_name',
   '&city', 
    &id_profil);

select * from Country;