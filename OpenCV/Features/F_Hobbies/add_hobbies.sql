Select * from users;

PROMPT*********************INSERTION HOBBIES**************
INSERT INTO Hobbies(id_hobbies,
	type_hobbies,
	title_hobbies,
	id_user)
VALUES (seq_hob.nextval,
	'&type_hobbies',
	'&title_hobbies',
	 &id_user);

select * from hobbies;