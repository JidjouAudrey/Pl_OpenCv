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
        when '1' then '@ '
        when '2' then '@ '
        when '3' then '@ '
        when '4' then '@ '
        when '5' then '@ '
        when '6' then '@Procedures/menu'
        else 'Accueil'
        end as script
from dual;
set term on
@&v_script.