PROMPT********************VOUS ETES SUR OPENCV*****************
PROMPT***************Que voules-vous modifier?*****************
PROMPT
PROMPT'                           *****************************'
PROMPT'                           |                           |'
PROMPT'                           |   1-Social_Network        |'
PROMPT'                           |   2-Formation             |'
PROMPT'                           |   3-Expérience_Pro        |'
PROMPT'                           |   4-Hobbie                |'
PROMPT'                           |   5-Projet                |'
PROMPT'                           |   6-Back                  |'
PROMPT'                           |   7-Voir plus             |'
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
        when '6' then '@ '
        when '7' then '@ '
        else 'Accueil'
        end as script
from dual;
set term on
@&v_script.