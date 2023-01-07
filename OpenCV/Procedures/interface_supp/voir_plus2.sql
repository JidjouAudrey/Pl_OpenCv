PROMPT********************VOUS ETES SUR OPENCV*****************
PROMPT***************SUPPPRIMER UN ELEMENT DE VOTRE CV*****************
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
        when '1' then '@Procedures/interface_supp/procedure_delete/delete_socialnetwork '
        when '2' then '@Procedures/interface_supp/procedure_delete/delete_formation '
        when '3' then '@Procedures/interface_supp/procedure_delete/delete_experiencepro '
        when '4' then '@ '
        when '5' then '@ '
        when '6' then '@procedures/menu '
        when '7' then '@Procedures/interface_supp/voir_plus3 '
        else 'Accueil'
        end as script
from dual;
set term on
@&v_script.