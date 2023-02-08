PROMPT
PROMPT
PROMPT********************MODIFIEZ CV********************
PROMPT
PROMPT'                           *****************************'
PROMPT'                           |                           |'
PROMPT'                           |   1-Expérience_Pro        |'
PROMPT'                           |   2-Hobbie                |'
PROMPT'                           |   3-Projet                |'
PROMPT'                           |   4-Back                  |'
PROMPT'                           |   5-Voir plus             |'
PROMPT'                           |                           |'
PROMPT'                           *****************************'

accept selection prompt "Choisissez une option: "
set term off
column script new_value v_script
select case '&selection'
        when '1' then '@Procedures/interface_edit/procedure_edit/edit_experiencepro '
        when '2' then '@'
        when '3' then '@Procedures/interface_edit/procedure_edit/edit_project'
        when '4' then '@Procedures/interface_edit/voir_plus '
        when '5' then '@Procedures/interface_edit/voir_plus3 '
        else 'Accueil'
        end as script
from dual;
set term on
@&v_script.