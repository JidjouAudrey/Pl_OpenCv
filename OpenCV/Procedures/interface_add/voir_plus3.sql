PROMPT
PROMPT
PROMPT********************CREATION DE CV********************
PROMPT
PROMPT'                           *****************************'
PROMPT'                           |                           |'
PROMPT'                           |   1-Expérience_Pro        |'
PROMPT'                           |   2-hobbie                |'
PROMPT'                           |   3-Projet                |'
PROMPT'                           |   4-Recommandations       |'
PROMPT'                           |   5-Competence            |'
PROMPT'                           |   6-Back                  |'
PROMPT'                           |                           |'
PROMPT'                           *****************************'

accept selection prompt "Choisissez une option: "
set term off
column script new_value v_script
select case '&selection'
        when '1' then '@Procedures/interface_add/procedures_add/add_experiencePro '
        when '2' then '@Procedures/interface_add/procedures_add/Add Phones '
        when '3' then '@Procedures/interface_add/procedures_add/add_project '
        when '4' then '@Procedures/interface_add/procedures_add/add_recommandation '
        when '5' then '@Procedures/interface_add/procedures_add/add_competence '
        when '6' then '@Procedures/menu'
        else 'Accueil'
        end as script
from dual;
set term on
@&v_script.