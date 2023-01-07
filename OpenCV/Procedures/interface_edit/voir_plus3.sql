PROMPT********************VOUS ETES SUR OPENCV*****************
PROMPT
PROMPT'                           *****************************'
PROMPT'                           |                           |'
PROMPT'                           |   1-Recommandations       |'
PROMPT'                           |   2-Competence            |'
PROMPT'                           |   3-Back                  |'
PROMPT'                           |                           |'
PROMPT'                           *****************************'

accept selection prompt "Choisissez une option: "
set term off
column script new_value v_script
select case '&selection'
        when '1' then '@Procedures/interface_edit/procedure_edit/edit_recommandation'
        when '2' then '@Procedures/interface_edit/procedure_edit/edit_competence'
        when '3' then '@Procedures/interface_edit/voir_plus2'
        else 'Accueil'
        end as script
from dual;
set term on
@&v_script.