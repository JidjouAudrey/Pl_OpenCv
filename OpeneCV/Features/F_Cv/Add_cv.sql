select * from Users;
PROMPT*********************ID UTILISATEUR**************

INSERT INTO Cv(id_cv,
	id_user )
VALUES(seq_cv.nextval, 
 	&id_user );

select * from Cv;