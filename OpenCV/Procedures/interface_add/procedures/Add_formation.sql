declare
v_formation_id  Formation.id_formation%type;
v_user_id       Users.id_user%type;
v_exp_id        Experience.id_exp%type;
v_cv_id         Cv.id_cv%type;


begin


select id_user
into v_user_id
from Users
where name_user='&&name_user';



IF SQL%found THEN

select id_exp
into v_exp_id
from Experience xp
join Users us 
on xp.id_user = us.id_user
where name_user='&name_user';


select id_cv
into v_cv_id
from Cv c
join Users us
on us.id_user = c.id_user
where name_user='&name_user';

insert into Formation
(
    id_formation,
    school,
    fieldOfstudy,
    diploma,
    startDate,
    endDate,
    obtainedResult,
    id_exp,
    id_user,
    id_cv
)

values 
(
    seq_form.nextval,
    '&school',
    '&fieldOfstudy',
    '&diploma',
    '&startDate',
    '&endDate',
    '&obtainedResult',
    v_exp_id,
    v_user_id,
    v_cv_id
);
end if;
exception
when no_data_found then
DBMS_OUTPUT.PUT_LINE('aucune valeur trouvé');
end;
/

   --BY YVAN NJOPMO---