PROMPT********************VOUS ETES SUR OPENCV*****************
PROMPT********************MODIFIEZ VOTRE CV*****************
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
        when '1' then '@Procedures/procedures/Add_Profil'
        when '2' then '@ '
        when '3' then '@ '
        when '4' then '@ '
        when '5' then '@ '
        when '6' then '@Procedures/voir_plus '
        else 'Accueil'
        end as script
from dual;
set term on
@&v_script.