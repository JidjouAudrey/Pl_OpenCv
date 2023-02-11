PROMPT
PROMPT
PROMPT********************MODIFIEZ CV********************
PROMPT
PROMPT'                           *****************************'
PROMPT'                           |                           |'
PROMPT'                           |   1-Firstname             |'
PROMPT'                           |   2-Lastname              |'
PROMPT'                           |   3-borndate              |'
PROMPT'                           |   4-Birth place           |'
PROMPT'                           |   5-Marital Status        |'
PROMPT'                           |   6-Number of children    |'
PROMPT'                           |   7-driving Licence       |'
PROMPT'                           |   8-Back                  |'
PROMPT'                           |                           |'
PROMPT'                           *****************************'

accept selection prompt "Choisissez une option: "
set term off
column script new_value v_script
select case '&selection'
        when '1' then '@Procedures/interface_edit/edit_elt/profil/firstname'
        when '2' then '@Procedures/interface_edit/edit_elt/profil/lastname'
        when '3' then '@Procedures/interface_edit/edit_elt/profil/borndate'
	when '4' then '@Procedures/interface_edit/edit_elt/profil/born_place'
        when '5' then '@Procedures/interface_edit/edit_elt/profil/marital_status'
        when '6' then '@Procedures/interface_edit/edit_elt/profil/number_child'
	when '7' then '@Procedures/interface_edit/edit_elt/profil/drivingLicence'
        when '8' then '@procedures/interface_edit/edit_cv'
        else '@Accueil'
        end as script
from dual;
set term on
@&v_script.