SELECT * FROM users
WHERE name_user = '&&user_name' 
AND user_password = '&&user_password';

SET ECHO OFF
SET VERIFY OFF
SET MARKUP HTML ON
SPOOL ON 
SET NULL'_'
SET TAB OFF
SET LINESIZE 1000
SET NEWPAGE NONE
SET TRIMS OFF
SET NUHWIDTN 50
SILENT
SPOOL NEW_CV.html
PROMPT-------------------------------------------------------------------------CURICULUM VITAE--------------------------------------------------------------------------------


PROMPT ________________________________________________________________________PROFIL INFORMATION______________________________________________________________________________

SELECT firstname,lastname,borndate,bornAt,maritalStatus,drivingLicence
FROM profil
WHERE id_user=(SELECT id_user FROM Users WHERE name_user = '&user_name' AND user_password = '&user_password');

PROMPT _________________________________________________________________________LANGUAGE AND COUNTRY INFORMATION _____________________________________________________________

SELECT c.country_name "COUNTRY",c.city "CITY",l.lang_title "LANGUAGE",l.lang_level "LEVEL OF LANGUAGE"
FROM Language l
JOIN profil p
ON(l.id_profil=p.id_profil)
JOIN COUNTRY c
ON(p.id_profil=c.id_profil)
WHERE l.id_profil = (SELECT id_user FROM Users WHERE name_user = '&user_name' AND user_password = '&user_password');

PROMPT ________________________________________________________________________SOCIAL NETWORK AND PHONE INFORMATION___________________________________________________________

SELECT title_social "SOCIAL NETWORK NAME",countryCode,phoneNumber "PHONE NUMBER", isWhatsapp "WHATSAPP NUMBER",isTelegram "TELEGRAM NUMBER"
FROM Phones p
JOIN profil pr
ON(p.id_profil=pr.id_profil)
JOIN SocialNetwork s
ON(pr.id_profil=s.id_profil)
WHERE pr.id_profil = (SELECT id_user FROM Users WHERE name_user = '&user_name' AND user_password = '&user_password');

PROMPT ________________________________________________________________________FORMATION  AND HOBBIES INFORMATION___________________________________________________________

SELECT type_hobbies "TYPE OF HOBBIES", title_hobbies "HOBBIES TITLE",school,fieldOfStudy "FACULTY",startDate "START DATE",endDate "END DATE",obtainedResult "MENTION"
FROM HOBBIES h
JOIN Users u
ON(h.id_user=u.id_user)
JOIN Formation f
ON (u.id_user=f.id_user)
WHERE u.id_user = (SELECT id_user FROM Users WHERE name_user = '&user_name' AND user_password = '&user_password');

PROMPT ________________________________________________________________________EXPERIENCE INFORMATION___________________________________________________________
SELECT  title_exp "title of experience",status_expro "job", startDate "start date", endDate "end date", organisation "company",function_exp "function"
FROM Professional_exp p
JOIN experience ex
ON (p.id_exp= ex.id_exp)
WHERE ex.id_exp = (SELECT id_user FROM Users WHERE name_user = '&user_name' AND user_password = '&user_password' );

PROMPT ________________________________________________________________________COMPETENCE AND PROJET  INFORMATION___________________________________________________________

SELECT c.name_compet "competence name",c.level_compet "level competence",p.name_project "name of project",p.status_user "STATUS ON PROJECT",
p.startDate "start date",p.endDate "end date", partner, p.urlProject "link project", p.descriptionProject "description of project"
FROM Project p
JOIN Formation f
ON(p.id_formation=f.id_formation)
JOIN Competence c
ON(f.id_formation=c.id_formation)
WHERE p.id_project = (SELECT id_user FROM Users WHERE name_user = '&user_name' AND user_password = '&user_password');

PROMPT ________________________________________________________________________RECOMMANATION  INFORMATION___________________________________________________________

SELECT personName "NAME OF RECOMMANDER", relationShipLevel "RELATION", postAtTheTime "post resquest",message "message of recommandation"
FROM recommandation
WHERE id_user = (SELECT id_user FROM Users WHERE name_user = '&user_name' AND user_password = '&user_password');

SET MARKUP HTML OFF
SPOOL OFF