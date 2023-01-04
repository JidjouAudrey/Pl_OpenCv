select * from Users; 
PROMPT*********************INSERTION FORMATION**************
INSERT INTO Formation (id_formation,
	school,
	fieldOfStudy,
	diploma,
	startDate,
	endDate,
	obtainedResult,
	id_exp,
	id_user,
	id_cv)
VALUES(seq_form.nextval,
	'&school',
	'&fieldOfStudy',
	'&diploma',
	'&startDate',
	'&endDate',
	'&obtainedResult', 
	 &id_exp,
	 &id_user,
	 &id_cv);

select * from formation;