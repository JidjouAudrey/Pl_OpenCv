PROMPT
PROMPT
PROMPT********************CREATION DE CV********************
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
        when '1' then '@Procedures/interface_supp/procedure_delete/delete_phone '
        when '2' then '@Procedures/interface_supp/procedure_delete/delete_socialnetwork '
        when '3' then '@Procedures/interface_supp/procedure_delete/delete_formation '
        when '4' then '@procedures/menu '
        when '5' then '@Procedures/interface_supp/voir_plus2 '
        else 'Accueil'
        end as script
from dual;
set term on
@&v_script.