declare

   v_id_exp  Professional_exp.id_exp%type;               
    
begin
select id_expro
into   v_id_exp
from   Professional_exp
WHERE status_expro= '&status_de_lexperience';
UPDATE Professional_exp
SET 
status_expro='&new_status_expro',
startDate ='&new_startDate',
endDate='&new_endDate',
organisation='&new_organisation',
function_exp= '&new_function_exp'


WHERE id_expro =v_id_exp;
DBMS_OUTPUT.PUT_LINE('VOS donnees sont a jour');

end ;
/