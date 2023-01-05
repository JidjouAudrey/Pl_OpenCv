declare
v_id_Competence         Competence.id_Competence%type;
v_name_competence       Competence.name_competence%type;
v_level_competence      Competence.level_competence%type;
v_id_recommandation     Recommandation.id_recommandation%type;
v_id_hobbies            Hobbies.id_hobbies%type;
v_id_formation          Formation.id_formation%type;
v_id_cv                 Cv.id_cv%type;
v_option varchar(50);
choix char ;

procedure add_competence as
begin

Competence

select id_exp
into v_exp_id
from Experience xp
join User us 
on xp.id_user = us.id_user
where title_exp='&title_exp';


select id_cv
into v_cv_id
from Cv c
join User us
on us.id_user = c.id_user
where name_utilisateur='&name_utilisateur';

IF SQL%found THEN

select id_Competence
into v_id_Competence
from Competence
where name_competence='&name_competence';

select name_competence
into v_name_competence
from Competence
where id_Competence='&&id_Competence';

select id_user
into v_level_competence
from Competence
where id_Competence='&&id_Competence';

insert into Competence
(
    id_Competence,
    name_competence,
    level_competence,
    id_recommandation,
    id_hobbies,
    id_formation,
    id_cv
)

values 
(
    id_Competence_seq.nextval,
    '&name_competence',
    '&level_competence',
    id_recommandation,
    id_hobbies,
    id_formation,
    id_cv,
);

    v_option := case '&choix'
        when '1' then 'action_respo'
        when '2' then 'quitter'
    end ;

exception
when no_data_found then
    DBMS_OUTPUT.PUT_LINE('**********************************************'); 
         DBMS_OUTPUT.PUT_LINE('*     aucune valeur trouvé   *') ;
    DBMS_OUTPUT.PUT_LINE('**********************************************') ;

end;

begin
add_formation;
end;