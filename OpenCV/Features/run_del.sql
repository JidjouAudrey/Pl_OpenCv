select * from users WHERE id_user='&&id_user';

DELETE FROM Project
WHERE id_project =&id_user ;

DELETE FROM Professional_exp
WHERE id_expro=&id_user;

DELETE FROM Competence
WHERE id_compet=&id_user;

DELETE FROM SocialNetwork
WHERE id_social=&id_user;

DELETE FROM Phones
WHERE id_phone=&id_user;

DELETE FROM Language
WHERE id_lang=&id_user;

DELETE FROM Country
WHERE id_country=&id_user;

DELETE FROM Formation
WHERE id_formation = &id_user;

DELETE FROM Experience
WHERE id_exp=&id_user;

DELETE FROM Cv
WHERE id_cv= &id_user;

DELETE FROM Recommandation
WHERE id_recom=&id_user;

DELETE FROM Hobbies
WHERE id_hobbies= &id_user;

DELETE FROM Profil
WHERE id_profil =&id_user;

DELETE FROM Users
WHERE id_user=&id_user;





