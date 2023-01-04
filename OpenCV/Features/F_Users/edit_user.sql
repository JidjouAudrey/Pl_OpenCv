UPDATE Users 
set name_user = '&new_name_user',
email = '&new_email',
WHERE id_user = &id_user;