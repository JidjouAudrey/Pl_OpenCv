PROMPT********************VOUS ETES SUR OPENCV*****************
PROMPT********************Que voules-vous modifier?*****************
PROMPT
PROMPT'                           *****************************'
PROMPT'                           |                           |'
PROMPT'                           |   1-Profil                |'
PROMPT'                           |   2-Language              |'
PROMPT'                           |   3-Country               |'
PROMPT'                           |   4-Phone                 |'
PROMPT'                           |   5-Back                  |'
PROMPT'                           |   6-Voir plus             |'
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
        else 'Accueil'
        end as script
from dual;
set term on
@&v_script.