PROMPT*********************CREATION DU COMPTE**************

INSERT INTO Users(id_user,
	name_user,
	email,
	user_password) 
VALUES (seq_users.nextval,
	'&name_user',
	'&email',
	'&user_password');

select * from users;


