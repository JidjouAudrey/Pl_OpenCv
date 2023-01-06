PROMPT********************VOUS ETES SUR OPENCV*****************
PROMPT****************Que voules-vous modifier?****************
PROMPT
PROMPT'                           *****************************'
PROMPT'                           |                            |'
PROMPT'                           |   1-Recommandation         |'
PROMPT'                           |   2-Competence             |'
PROMPT'                           |   3-Back                   |'
PROMPT'                           |                            |'
PROMPT'                           ******************************'

accept selection prompt "Choisissez une option: "
set term off
column script new_value v_script
select case '&selection'
        when '1' then '@ '
        when '2' then '@ '
        when '3' then '@ '
        else 'Accueil'
        end as script
from dual;
set term on
@&v_script.