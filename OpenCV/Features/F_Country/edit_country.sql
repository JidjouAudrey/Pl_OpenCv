UPDATE Country 
SET
country_name= '&new_country_name',
city='&new_city',
id_profil =&new_id_profil
WHERE id_country= &id_country;