PROMPT********************VOUS ETES SUR OPENCV*****************
PROMPT
PROMPT'                           *****************************'
PROMPT'                           |                           |'
PROMPT'                           |   1-Phone                 |'
PROMPT'                           |   2-Social_Network        |'
PROMPT'                           |   3-Formation             |'
PROMPT'                           |   4-Back                  |'
PROMPT'                           |   5-Voir Plus             |'
PROMPT'                           |                           |'
PROMPT'                           *****************************'

accept selection prompt "Choisissez une option: "
set term off
column script new_value v_script
select case '&selection'
        when '1' then '@Procedures/interface_add/procedures/Add Phones '
        when '2' then '@Procedures/interface_add/procedures/add_socialnetwork '
        when '3' then '@Procedures/interface_add/procedures/Add_formation '
        when '4' then '@Procedures/menu '
        when '5' then '@Procedures/interface_add/voir_plus3'
        else 'Accueil'
        end as script
from dual;
set term on
@&v_script.