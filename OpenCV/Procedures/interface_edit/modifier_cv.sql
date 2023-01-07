PROMPT********************VOUS ETES SUR OPENCV*****************
PROMPT********************MODIFIEZ VOTRE CV*****************
PROMPT
PROMPT'                           *****************************'
PROMPT'                           |                           |'
PROMPT'                           |   1-Profil                |'
PROMPT'                           |   2-Language              |'
PROMPT'                           |   3-Country               |'           
PROMPT'                           |   4-Back                  |'
PROMPT'                           |   5-Voir plus             |'
PROMPT'                           |                           |'
PROMPT'                           *****************************'

accept selection prompt "Choisissez une option: "
set term off
column script new_value v_script
select case '&selection'
        when '1' then '@Procedures/interface_edit/procedure_edit/edit_profile'
        when '2' then '@'
        when '3' then '@Procedures/interface_edit/procedure_edit/edit_country'
        when '4' then '@procedures/menu'
        when '5' then '@Procedures/interface_edit/voir_plus'
        else 'Accueil'
        end as script
from dual;
set term on
@&v_script.