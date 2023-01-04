select * from Users;
PROMPT*********************INSERTION PROJECT**************
INSERT INTO Project(
		 id_project,
		 name_project,
		 status_user,
		 startDate, 
		 endDate,
		 partner,
		 urlProject,
		 descriptionProject,
		 id_formation,
		 id_exp,
		 id_expro)
	VALUES(
		seq_proj.nextval, 
		 '&name_project',
		 '&status_user',
		 '&startDate',
		 '&endDate',
		 '&partner',
		 '&urlProject',
		 '&descriptionProject', 
		 &id_formation,
		 &id_exp,
		 &id_expro);

select * from Project;