PROMPT
PROMPT
PROMPT********************CREATION DE CV********************
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
        when '1' then '@Procedures/interface_add/procedures/Add_Profile '
        when '2' then '@Procedures/interface_add/procedures/add_langue '
        when '3' then '@Procedures/interface_add/procedures/Add_country '
        when '4' then '@Procedures/menu '
        when '5' then '@Procedures/interface_add/voir_plus '
        else 'Accueil'
        end as script
from dual;
set term on
@&v_script.