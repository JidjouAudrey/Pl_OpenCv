select * from Users;
PROMPT*********************INSERTION EXPERIENCES**************

INSERT INTO Experience(id_exp,
		title_exp,
		id_user,
		id_cv)
	VALUES(
	seq_exp.nextval,
	'&title_exp',
	&id_user,
	&id_cv);

select * from Experience;