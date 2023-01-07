PROMPT********************VOUS ETES SUR OPENCV*****************
PROMPT********************SUPPPRIMER UN ELEMENT DE VOTRE CV*****************
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
        when '1' then '@Procedures/interface_supp/procedure_delete/delete_profile'
        when '2' then '@ '
        when '3' then '@Procedures/interface_supp/procedure_delete/delete_country '
        when '4' then '@Procedures/interface_supp/procedure_delete/delete_phone '
        when '5' then '@procedures/menu '
        when '6' then '@Procedures/interface_supp/voir_plus '
        else 'Accueil'
        end as script
from dual;
set term on
@&v_script.