PROMPT**************************************************"BIENVENUE SUR Open_Cv"****************************************************
PROMPT
PROMPT       *******************************°°°°°°°°°*****************************       
PROMPT       °°                1:Creer un Utilisateur                           °°
PROMPT       °°                2:Creer son Profil                               °°
PROMPT       °°                3:Modifier son  Profil                           °°
PROMPT       °°                4:Suprimer un profil                             °°
PROMPT       °°                5:Le reste chacun ajoute a la suite              °°
PROMPT       °°                6:Effectuer une commande                         °°
PROMPT       °°                7:Consulter ses commandes                        °°
PROMPT       °°                8:Noter un restaurant                            °°
PROMPT       °°                9:Se deconnecter                                 °°
PROMPT       °°                10:Quitter                                       °°
PROMPT       *******************************°°°°°°°°°°****************************

accept selection PROMPT "choisissez une option : "
set term off
column script new_value v_script
select  case '&selection'
        when '1' then '@'
        when '2' then '@'
        when '3' then '@'
        when '4' then '@'
        when '5' then '@'
        when '6' then '@'
        when '7' then '@'
        when '8' then '@'
        when '9' then '@'
        when '10' then '@'
        else 'Procedure/Case'
        end as script
from dual;
set term on
@&v_script.