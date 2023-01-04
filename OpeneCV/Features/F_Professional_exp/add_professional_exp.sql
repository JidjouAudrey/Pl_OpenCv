select * from Users;

PROMPT*********************INSERTION EXPERIENCE PRO**************
INSERT INTO Professional_exp(id_expro,
			status_expro,
			organisation,
			function_exp,
			startDate,
			endDate,
			id_exp)
		VALUES(
		seq_prof_exp.nextval,
		'&status_expro',
		'&organisation',
		'&function_exp',
		'&startDate',
		'&endDate',
		&id_exp);

select * from Professional_exp;