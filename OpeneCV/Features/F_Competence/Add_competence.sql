select * from Users;
PROMPT*********************INSERTION DES COMPETENCES**************

INSERT INTO Competence( 
  id_compet, 
  name_compet, 
  level_compet, 
  id_recom, 
  id_hobbies, 
  id_formation,
  id_cv)
VALUES(
 seq_compet.Nextval,
 '&name_compet', 
 '&level_compet', 
 '&id_recom', 
 '&id_hobbies', 
 '&id_formation',
  &id_cv);

select * from Competence;