PROMPT************************************************** BIENVENUE SUR Open_Cv ****************************************************
PROMPT
PROMPT'      *********************************************************'       
PROMPT'      **                1:Creer un CV                        **'
PROMPT'      **                2:Modifier un CV                     **'
PROMPT'      **                3:Supprimer un element du CV         **'
PROMPT'      **                4:Consulter un CV                    **'
PROMPT'      **                5:AIDE ET A PROPOS                   **'
PROMPT'      **                6:Se deconnecte                      **'
PROMPT'      **                7:Quitter                            **'
PROMPT'      *********************************************************'

accept selection PROMPT "choisissez une option : "
set term off
column script new_value v_script
select  case '&selection'
        when '1' then '@Procedures/interface_add/creer_cv'
        when '2' then '@Procedures/interface_add/modifier_cv'
        when '3' then '@@Procedures/interface_supp/modifier_cv'
        when '4' then '@features/view1'
        when '5' then '@'
        when '6' then '@'
        when '7' then '@procedures/exit'
        else 'Procedure/Case'
        end as script
from dual;
set term on
@&v_script.