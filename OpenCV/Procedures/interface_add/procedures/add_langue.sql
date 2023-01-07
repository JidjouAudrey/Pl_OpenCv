SET SERVEROUTPUT ON;
declare
v_id_profil Language.id_profil%type;

BEGIN 

select p.id_profil
into v_id_profil
from Language l
join Profil p
on p.id_profil = l.id_profil
JOIN Users u
ON p.id_user=u.id_user
WHERE name_user= '&Username';
insert into Language (
    id_lang,
     lang_title,
     lang_level,
     id_profil
)

values(
    seq_prof.nextval,
    '&lang_title',
    '&lang_level',

     v_id_profil
);
DBMS_OUTPUT.PUT_LINE('language created');
END;
/
@Procedures/interface_add/creer_cv