PROMPT********************VOUS ETES SUR OPENCV*****************
PROMPT
PROMPT'                           *****************************'
PROMPT'                           |                            |'
PROMPT'                           |   1-Profil                 |'
PROMPT'                           |   2-Language               |'
PROMPT'                           |   3-Country                |'
PROMPT'                           |   4-Back                   |'
PROMPT'                           |   5-Voir Plus              |'
PROMPT'                           |                            |'
PROMPT'                           ******************************'

accept selection prompt "Choisissez une option: "
set term off
column script new_value v_script
select case '&selection'
        when '1' then '@ '
        when '2' then '@ '
        when '3' then '@ '
        when '4' then '@ '
        else 'Accueil'
        end as script
from dual;
set term on
@&v_script.