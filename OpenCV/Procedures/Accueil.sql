PROMPT******************************BIENVENUE SUR OPEN CV****************************
PROMPT              *************************************************

PROMPT
PROMPT'      **********************BIENVENUE SUR OPEN CV**********************'
PROMPT'      **                                                             **'
PROMPT'      ********                 1- Inscription                  ********'
PROMPT'      **********               2- Connexion                  **********'
PROMPT'      *************            3- Quitter                 *************'
PROMPT'      **********                                             **********'
PROMPT'      ********                                                 ********'
PROMPT'      **                                                             **'
PROMPT'      *****************************************************************'

accept selection prompt "Choisissez une option: "
set term off
column script new_value v_script
select case '&selection'
        when '1' then '@procedures/interface_add/procedures/Add_user'
        when '2' then '@connection'
        when '3' then '@exit'
        else '@Accueil'
        end as script
from dual;
set term on
@&v_script.